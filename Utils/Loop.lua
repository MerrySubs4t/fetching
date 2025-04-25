local LoopEnv_ = {}
LoopEnv_.__index = LoopEnv_

function LoopEnv_.new(body)
	local self = setmetatable({}, LoopEnv_)
	self.body = body
	task.spawn(function()
		while task.wait() do
			self.body()
		end
	end)
	return self
end

function LoopEnv_:callback(new)
	if typeof(new) == 'function' then
		self.body = new
	else
		return
	end
end

return LoopEnv_
