local hookmetamethod = (not Blacklist_Executor and hookmetamethod) or (function(...) return ... end)
local hookfunction = (not Blacklist_Executor and hookfunction) or (function(...) return ... end)
local islclosure = (not Blacklist_Executor and islclosure) or (function(...) return ... end)
local sethiddenproperty = sethiddenproperty or (function(...) return ... end)
local ReplicatedStorage = game:GetService("ReplicatedStorage")
task.delay(2, function()
	pcall(function()
		if Blacklist_Executor then
			--if not _G.UnlockXeno then
			--	LocalPlayer:Kick("Current Executor is Not Support: " .. tostring(identifyexecutor()))
			--end
		else
			if hookfunction and not islclosure(hookfunction) then
				hookfunction(require(ReplicatedStorage:WaitForChild("Effect").Container.Death), function()
					return
				end)
				hookfunction(require(ReplicatedStorage:WaitForChild("Effect").Container.Respawn), function()
					return
				end)
				hookfunction(require(ReplicatedStorage:WaitForChild("Effect").Container.RaceAwakenings.CyborgDrone), function()
					return
				end)
				hookfunction(require(ReplicatedStorage:WaitForChild("GuideModule")).ChangeDisplayedNPC, function()
					return
				end)
			end
			if require then
				pcall(function()
					local Camera = require(ReplicatedStorage:WaitForChild("Util").CameraShaker)
					Camera:Stop()
				end)
			end
		end
	end)
end)
