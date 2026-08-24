-- chunkname: @/var/folders/r9/xbxmw8n51957gv9ggzrytvf80000gp/T/com.ironhidegames.frontiers.windows.steam.ep3S4swo/all/platform_services_icloud.lua

require("klua.string")

local log = require("klua.log"):new("platform_services_icloud")
local PSU = require("platform_services_utils")
local signal = require("hump.signal")
local storage = require("storage")
local ic = {}

ic.can_be_paused = false
ic.update_interval = 2
ic.sync_times = {}
ic.last_sync = nil
ic.signal_handlers = {
	cloudsave = {
		["slot-saved"] = function(idx, should_sync)
			if should_sync then
				ic:push_slot(idx)
			end
		end,
		["slot-deleted"] = function(idx)
			ic:delete_slot(idx)
		end
	}
}

local ffi = require("ffi")

ffi.cdef("bool kcloud_initialize(void);\nvoid kcloud_shutdown(void);\nint kcloud_get_status(void);\nvoid kcloud_do_signin(void);\nvoid kcloud_do_signout(void);\nconst char* kcloud_get_cached_file(const char* name);\nint kcloud_create_request_delete_file(const char* name);\nint kcloud_create_request_push_slot(const char* name, int progress, const char* slot_data, bool overwrite);\nint kcloud_create_request_sync_slots(const char* names_list);\nint kcloud_get_request_status(int rid);\nvoid kcloud_delete_request(int rid);\ndouble kcloud_get_last_sync(void);\n")

function ic:init(name, params)
	if self.initied then
		log.debug("service %s already inited", name)
	else
		self.lib = PSU:load_library("kcloud", ffi)

		if not self.lib then
			log.error("Error loading kcloud library")

			return false
		end

		self.inited = self.lib.kcloud_initialize()

		if not self.inited then
			log.error("Error initializing kcloud")

			return false
		end

		self.prq = PSU:new_prq()
	end

	if self.signal_handlers and self.signal_handlers[name] then
		for sn, fn in pairs(self.signal_handlers[name]) do
			log.debug("registering signal %s", sn)
			signal.register(sn, fn)
		end
	end

	self.names = self.names or {}

	if not table.contains(self.names, name) then
		table.insert(self.names, name)
	end

	return true
end

function ic:shutdown(name)
	log.debug("Shutting down %s", name)

	if self.inited then
		if self.signal_handlers and self.signal_handlers[name] then
			for sn, fn in pairs(self.signal_handlers[name]) do
				log.debug("removing signal %s", sn)
				signal.remove(sn, fn)
			end
		end

		self.lib.kcloud_shutdown()
	end

	self.names = nil
	self.lib = nil
	self.inited = false
end

function ic:get_status()
	if not self.inited then
		return nil
	end

	local result = self.lib.kcloud_get_status()

	if result == 1 then
		return true
	else
		return nil
	end
end

function ic:get_pending_requests()
	return self.prq
end

function ic:get_request_status(rid)
	if not self.inited then
		return -1
	end

	local result = self.lib.kcloud_get_request_status(rid)

	log.paranoid("get_request_status result: %s", result)

	return result
end

function ic:cancel_request(rid)
	if not rid then
		return
	end

	self.prq:remove(rid)

	if self.inited then
		self.lib.kcloud_delete_request(rid)
	end
end

function ic:do_signin()
	return
end

function ic:do_signout()
	return
end

function ic:get_sync_status()
	if self.last_sync ~= self.lib.kcloud_get_last_sync() then
		self.sync_times.slots = false
	end

	return self.sync_times
end

function ic:sync_slots()
	local function cb_sync_slots(status, req)
		if not self.prq:contains(req.id) then
			return
		end

		local success

		if status == 0 then
			success = true
			self.last_sync = self.lib.kcloud_get_last_sync()
			self.sync_times.slots = os.time()

			for i = 1, 3 do
				local lslot = storage:load_slot(i)
				local rdata = ffi.string(ic.lib.kcloud_get_cached_file(storage:get_slot_name(i)))

				log.paranoid("  rdata for slot %s:%s", i, rdata)

				if rdata then
					local rslot = storage:deserialize_lua(rdata)

					log.paranoid("  rslot:%s", rslot)
					log.paranoid("  lslot:%s", lslot)

					if rslot and (not lslot or storage:get_slot_progress(lslot) < storage:get_slot_progress(rslot) or (lslot.gems or 0) < (rslot.gems or 0) or (lslot.crowns or 0) < (rslot.crowns or 0)) then
						log.debug("remote slot %s is further along", i)
						storage:save_slot(rslot, i)
					else
						log.debug("local slot %s is further along", i)
					end
				end
			end
		else
			success = false
			self.sync_times.slots = false
		end

		signal.emit(SGN_PS_SYNC_SLOTS_FINISHED, "cloudsave", success, req.id, status)
	end

	log.debug("synchronizing all slots")

	local names = table.concat({
		storage:get_slot_name(1),
		storage:get_slot_name(2),
		storage:get_slot_name(3)
	}, ",")
	local rid = self.lib.kcloud_create_request_sync_slots(names)

	if rid < 0 then
		log.error("error creating request to sync slots")

		return nil
	else
		self.prq:add(rid, "sync_slots", cb_sync_slots)

		return rid
	end
end

function ic:push_slot(idx, overwrite)
	local function cb_push_slot(status, req)
		if self.prq:contains(req.id) then
			local success = status == 0

			signal.emit(SGN_PS_PUSH_SLOT_FINISHED, "cloudsave", success, req.id, req.slot_idx)
		end
	end

	local slot = storage:load_slot(idx)

	if not slot then
		return nil
	end

	local progress = storage:get_slot_progress(slot)
	local slot_data = storage:serialize_lua(slot)

	log.debug("pushing slot:%s progress:%s", idx, progress)

	local rid = self.lib.kcloud_create_request_push_slot(storage:get_slot_name(idx), progress, slot_data, overwrite == true)

	if rid < 0 then
		log.error("error creating request to push slot %s", idx)

		return nil
	else
		local req = self.prq:add(rid, "push_slot", cb_push_slot)

		req.slot_idx = idx

		return rid
	end
end

function ic:delete_slot(idx)
	local function cb_delete_slot(status, req)
		if self.prq:contains(req.id) then
			local success = status == 0

			signal.emit(SGN_PS_DELETE_SLOT_FINISHED, "cloudsave", success, req.id, req.slot_idx)
		end
	end

	log.debug("deleting slot:%s", idx)

	local rid = self.lib.kcloud_create_request_delete_file(storage:get_slot_name(idx))

	if rid < 0 then
		log.error("error creating request to delete slot %s", idx)

		return nil
	else
		local req = self.prq:add(rid, "delete_slot", cb_delete_slot)

		req.slot_idx = idx

		return rid
	end
end

return ic
