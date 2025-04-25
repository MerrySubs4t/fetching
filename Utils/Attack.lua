local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local LocalPlayer = Players.LocalPlayer

local Net = ReplicatedStorage:WaitForChild("Modules"):WaitForChild("Net")
local RegisterHit = Net:WaitForChild("RE/RegisterHit")
local RegisterAttack = Net:WaitForChild("RE/RegisterAttack")

local PlayerScripts = game.Players.LocalPlayer:WaitForChild("PlayerScripts")
local LocalScript = PlayerScripts:FindFirstChildOfClass("LocalScript")

task.defer(function()

	while not LocalScript do
		game.Players.LocalPlayer.PlayerScripts.ChildAdded:Wait()
		LocalScript = PlayerScripts:FindFirstChildOfClass("LocalScript")
	end

	if getsenv then
		local Success, ScriptEnv = pcall(getsenv, LocalScript)

		if Success and ScriptEnv then
			HIT_FUNCTION = ScriptEnv._G.SendHitsToServer
		end
	end
end)

return function()
	pcall(function()
		for _, enemy in ipairs(workspace.Enemies:GetChildren()) do
			local hum = enemy:FindFirstChild("Humanoid")
			local root = enemy:FindFirstChild("HumanoidRootPart")
			if hum and hum.Health > 0 and root and (root.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 60 then
				local args = {
					[1] = root,
					[2] = {}
				}
				for _, e in ipairs(workspace.Enemies:GetChildren()) do
					if e:FindFirstChild("Humanoid") and e.Humanoid.Health > 0 then
						table.insert(args[2], {
							[1] = e,
							[2] = e:FindFirstChild("HumanoidRootPart") or e:FindFirstChildOfClass("BasePart")
						})
					end
				end
				if HIT_FUNCTION then
					HIT_FUNCTION(root, args[2])
				else
					RegisterHit:FireServer(unpack(args))
				end
				RegisterAttack:FireServer(0)
			end
		end
	end)
end
