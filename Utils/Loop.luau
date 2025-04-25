local Loops = {}
Loops.__index = Loops

function Loops.new(info: table)
	local self = setmetatable({}, Loops)
	self.value = info.value or true
	self.delay = info.delay or 0
	self.pcall = info.pcall or false
	self.callback = info.callback or function() end

	task.spawn(function()
		while self.value do
			task.wait(self.delay)
			if self.pcall then
				pcall(self.callback)
			else
				self.callback()
			end
		end
	end)

	return self
end

function Loops:value(value: boolean)
	self.value = value
end

function Loops:pcall(value: boolean)
	self.pcall = value
end

function Loops:delay(delay: number)
	if typeof(delay) == "number" then
		self.delay = delay
	end
end

function Loops:firecallback()
	if self.pcall then
		pcall(self.callback)
	else
		self.callback()
	end
end

function Loops:callback(newFunc)
	if typeof(newFunc) == "function" then
		self.callback = newFunc
	end
end

return Loops
