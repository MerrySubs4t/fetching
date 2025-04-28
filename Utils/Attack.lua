local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local LocalPlayer = Players.LocalPlayer

local Net = ReplicatedStorage:WaitForChild("Modules"):WaitForChild("Net")
local RegisterHit = Net:WaitForChild("RE/RegisterHit")
local RegisterAttack = Net:WaitForChild("RE/RegisterAttack")

local PlayerScripts = LocalPlayer:WaitForChild("PlayerScripts")
local LocalScript = PlayerScripts:FindFirstChildOfClass("LocalScript")
while not LocalScript do
	LocalPlayer.PlayerScripts.ChildAdded:Wait()
	LocalScript = PlayerScripts:FindFirstChildOfClass("LocalScript")
end

local HIT_FUNCTION
if getsenv then
	pcall(function()
		local Success, ScriptEnv = pcall(getsenv, LocalScript)
		if Success and ScriptEnv then
			HIT_FUNCTION = ScriptEnv._G.SendHitsToServer
		end
	end)
end

return function()
	pcall(function()
		local Character = LocalPlayer.Character
		if not Character or not Character:FindFirstChild("HumanoidRootPart") then return end

		local Enemies = workspace.Enemies:GetChildren()
		for _, enemy in ipairs(Enemies) do
			local hum = enemy:FindFirstChild("Humanoid")
			local root = enemy:FindFirstChild("HumanoidRootPart")
			if hum and root and hum.Health > 0 and (root.Position - Character.HumanoidRootPart.Position).Magnitude <= tonumber(100)  then
				local targets = {}
				for _, e in ipairs(Enemies) do
					local eh = e:FindFirstChild("Humanoid")
					local eroot = e:FindFirstChild("HumanoidRootPart") or e:FindFirstChildOfClass("BasePart")
					if eh and eroot and eh.Health > 0 then
						table.insert(targets, {e, eroot})
					end
				end

				if HIT_FUNCTION then
					HIT_FUNCTION(root, targets)
				else
					RegisterHit:FireServer(root, targets)
				end
				RegisterAttack:FireServer(0)
			end
		end
	end)
end
