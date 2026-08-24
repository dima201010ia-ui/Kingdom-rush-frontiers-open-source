-- chunkname: @/var/folders/r9/xbxmw8n51957gv9ggzrytvf80000gp/T/com.ironhidegames.frontiers.windows.steam.ep3S4swo/kr2-desktop/map_decos_functions.lua

local km = require("klua.macros")
local V = require("klua.vector")
local v = V.v
local deco_fn = {}

deco_fn.m1 = {}

function deco_fn.m1.unlock(this, wait)
	if wait then
		this.ctx.timer:tween(1, this, {
			alpha = 0
		}, "out-quad")
		wait(1)
	else
		this.alpha = 0
	end
end

deco_fn.m2 = {}

function deco_fn.m2.unlock(this, wait)
	if wait then
		this.ctx.timer:tween(1, this, {
			alpha = 0
		}, "out-quad")
		wait(1)
	else
		this.alpha = 0
	end
end

deco_fn.gate = {}

function deco_fn.gate.unlock(this, wait)
	if wait then
		this.animation = {
			to = 128,
			prefix = "ma_gate",
			from = 1
		}
		this.ts = 0

		wait(4.266666666666667)
	else
		this.animation = nil

		this:set_image("ma_gate_0128")
	end
end

deco_fn.ship = {}

function deco_fn.ship.prepare(this)
	local point = this.ctx.screen_map.map_points.points[6][1]

	this.pos.x, this.pos.y = point.pos.x, point.pos.y
	this.animation = this.animations.down_stopped
	this.ts = 0
	this.anchor = v(this.size.x / 2, 2 * this.size.y / 3)
	this.speed = 50
end

function deco_fn.ship.unlock(this, wait)
	if wait then
		this.last_idx = 1
		this.move_ship = true
	else
		this.animation = this.animations.side_stopped

		local points = this.ctx.screen_map.map_points.points[6]
		local point

		for _, p in pairs(points) do
			if p.water then
				point = p
			end
		end

		this.pos = V.vclone(point.pos)
	end
end

function deco_fn.ship:update(dt)
	KView.update(self, dt)

	if self.move_ship then
		local points = self.ctx.screen_map.map_points.points[6]
		local last_point = points[self.last_idx]
		local next_point = points[self.last_idx + 1]

		if not next_point or not next_point.water then
			self.move_ship = false
			self.animation = self.animations.side_stopped

			return
		end

		local next_pos = next_point.pos
		local last_pos = last_point.pos
		local vel = v(0, 0)

		vel.x, vel.y = V.mul(self.speed, V.normalize(next_pos.x - last_pos.x, next_pos.y - last_pos.y))
		self.pos.x, self.pos.y = self.pos.x + vel.x * dt, self.pos.y + vel.y * dt

		if V.dist(self.pos.x, self.pos.y, next_pos.x, next_pos.y) < self.speed * dt then
			self.last_idx = self.last_idx + 1
		end

		local angle = km.unroll(V.angleTo(V.sub(next_pos.x, next_pos.y, last_pos.x, last_pos.y)))
		local pi_8 = math.pi / 8

		if angle > 1 * pi_8 and angle <= 3 * pi_8 then
			self.animation = self.animations.down_side
		elseif angle > 3 * pi_8 and angle <= 5 * pi_8 then
			self.animation = self.animations.down
		else
			self.animation = self.animations.side
		end
	end
end

return deco_fn
