local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character
local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
local Humanoid = Character:WaitForChild("Humanoid")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Enemies = workspace:WaitForChild("Enemies")

LocalPlayer.CharacterAdded:Connect(function(new)
	Character = new
	HumanoidRootPart = new:WaitForChild("HumanoidRootPart")
	Humanoid = new:WaitForChild("Humanoid")
end)

if game.PlaceId == 2753915549 then
	w1 = true
elseif game.PlaceId == 4442272183 then
	w2 = true
elseif game.PlaceId == 7449423635 then
	w3 = true
end

VerifyEnemie = function(v)
	if type(v) == 'string' then
		return (Enemies:FindFirstChild(v) and Enemies:FindFirstChild(v).Humanoid.Health >= 0) or (ReplicatedStorage:FindFirstChild(v) and ReplicatedStorage:FindFirstChild(v).Humanoid.Health >= 0)
	end
end

return function()
	local Level = game:GetService("Players").LocalPlayer.Data.Level.Value

	if w1 then
		if (Level <= 9) then
			if tostring(game:GetService("Players").LocalPlayer.Team) == "Pirates" then
				return {
					[1] = "Bandit",
					[2] = "BanditQuest1",
					[3] = 1,
					[4] = CFrame.new(1060, 16, 1547),
					[5] = CFrame.new(1036, 41, 1594)
				}
			else
				return {
					[1] = "Trainee",
					[2] = "MarineQuest",
					[3] = 1,
					[4] = CFrame.new(-2709, 24, 2103),
					[5] = CFrame.new(-2872, 24, 2217)
				}
			end
		elseif (Level == 10) or (Level <= 14) then
			return {
				[1] = "Monkey",
				[2] = "JungleQuest",
				[3] = 1,
				[4] = CFrame.new(-1601, 36, 153),
				[5] = CFrame.new(-1611, 20, 149)
			}
		elseif (Level == 15 or Level <= 29) then
			if VerifyEnemie("The Gorilla King") and (Level >= 25) then
				return {
					[1] = "The Gorilla King",
					[2] = "JungleQuest",
					[3] = 3,
					[4] = CFrame.new(-1601, 36, 153),
					[5] = CFrame.new(-1129, 6, -514)
				}
			else
				return {
					[1] = "Gorilla",
					[2] = "JungleQuest",
					[3] = 2,
					[4] = CFrame.new(-1601, 36, 153),
					[5] = CFrame.new(-1197, 6, -561)
				}
			end
		elseif (Level == 30) or (Level <= 39) then
			return {
				[1] = "Pirate",
				[2] = "BuggyQuest1",
				[3] = 1,
				[4] = CFrame.new(-1140, 4, 3837),
				[5] = CFrame.new(-1148, 23, 3982)
			}
		elseif Level == 40 or Level <= 59 then
			if VerifyEnemie("Bobby") and Level >= 55 then
				return {
					[1] = "Bobby",
					[2] = "BuggyQuest1",
					[3] = 3,
					[4] = CFrame.new(-1140, 4, 3827),
					[5] = CFrame.new(-1153, 58, 4172)
				}
			else
				return {
					[1] = "Brute",
					[2] = "BuggyQuest1",
					[3] = 2,
					[4] = CFrame.new(-1140, 4, 3827),
					[5] = CFrame.new(-1153, 58, 4172)
				}
			end
		elseif (Level == 60 or Level <= 74) then
			return {
				[1] = "Desert Bandit",
				[2] = "DesertQuest",
				[3] = 1,
				[4] = CFrame.new(896, 6, 4390),
				[5] = CFrame.new(1048, 6, 4490)
			}
		elseif (Level == 75 or Level <= 89) then
			return {
				[1] = "Desert Officer",
				[2] = "DesertQuest",
				[3] = 2,
				[4] = CFrame.new(896, 6, 4390),
				[5] = CFrame.new(1656, 1, 4323)
			}
		elseif (Level == 90 or Level <= 99) then
			return {
				[1] = "Snow Bandit",
				[2] = "SnowQuest",
				[3] = 1,
				[4] = CFrame.new(1386, 87, -1298),
				[5] = CFrame.new(1279, 87, -1437)
			}
		elseif (Level == 100 or Level <= 119) then
			if VerifyEnemie("Yeti") and (Level >= 110) then
				return {
					[1] = "Yeti",
					[2] = "SnowQuest",
					[3] = 3,
					[4] = CFrame.new(1386, 87, -1298),
					[5] = CFrame.new(1279, 87, -1437)
				}
			else
				return {
					[1] = "Snowman",
					[2] = "SnowQuest",
					[3] = 2,
					[4] = CFrame.new(1386, 87, -1298),
					[5] = CFrame.new(1279, 87, -1437)
				}
			end
		elseif (Level == 120 or Level <= 149) then
			if VerifyEnemie("Vice Admiral") and Level > 129 then
				return {
					[1] = "Vice Admiral",
					[2] = "MarineQuest2",
					[3] = 2,
					[4] = CFrame.new(-5035, 28, 4324),
					[5] = CFrame.new(-4861, 51, 4543)
				}
			else
				return {
					[1] = "Chief Petty Officer",
					[2] = "MarineQuest2",
					[3] = 1,
					[4] = CFrame.new(-5035, 28, 4324),
					[5] = CFrame.new(-4861, 51, 4543)
				}
			end
		elseif (Level == 150 or Level <= 174) then
			return {
				[1] = "Sky Bandit",
				[2] = "SkyQuest",
				[3] = 1,
				[4] = CFrame.new(-4842, 717, -2623),
				[5] = CFrame.new(-4965, 278, -2937)
			}
		elseif (Level == 175 or Level <= 189) then
			return {
				[1] = "Dark Master",
				[2] = "SkyQuest",
				[3] = 2,
				[4] = CFrame.new(-4842, 717, -2623),
				[5] = CFrame.new(-5225, 412, -2279)
			}
		elseif (Level == 190 or Level <= 209) then
			return {
				[1] = "Prisoner",
				[2] = "PrisonerQuest",
				[3] = 1,
				[4] = CFrame.new(5310, 0, 474),
				[5] = CFrame.new(5148, 88, 511)
			}
		elseif (Level == 210 or Level <= 249) then
			return {
				[1] = "Dangerous Prisoner",
				[2] = "PrisonerQuest",
				[3] = 2,
				[4] = CFrame.new(5310, 0, 474),
				[5] = CFrame.new(5538, 1, 851)
			}
		elseif (Level == 250 or Level <= 274) then
			return {
				[1] = "Toga Warrior",
				[2] = "ColosseumQuest",
				[3] = 1,
				[4] = CFrame.new(-1577, 7, -2984),
				[5] = CFrame.new(-2056, 7, -2914)
			}
		elseif (Level == 275 or Level <= 299) then
			return {
				[1] = "Gladiator",
				[2] = "ColosseumQuest",
				[3] = 2,
				[4] = CFrame.new(-1577, 7, -2984),
				[5] = CFrame.new(-1328, 35, -3233)
			}
		elseif (Level == 300 or Level <= 324) then
			return {
				[1] = "Military Soldier",
				[2] = "MagmaQuest",
				[3] = 1,
				[4] = CFrame.new(-5316, 12, 8517),
				[5] = CFrame.new(-5396, 9, 8522)
			}
		elseif (Level == 325 or Level <= 374) then
			if VerifyEnemie("Magma Admiral") and Level > 349 then
				return {
					[1] = "Magma Admiral",
					[2] = "MagmaQuest",
					[3] = 3,
					[4] = CFrame.new(-5316, 12, 8517),
					[5] = CFrame.new(-5542, 17, 8717)
				}
			else
				return {
					[1] = "Military Spy",
					[2] = "MagmaQuest",
					[3] = 2,
					[4] = CFrame.new(-5316, 12, 8517),
					[5] = CFrame.new(-5793, 34, 8813)
				}
			end
		elseif (Level == 375 or Level <= 399) then
			if (Vector3.new(61122.65234375, 18.497442245483, 1569.3997802734) - HumanoidRootPart.Position).Magnitude > 10000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
			end
			return {
				[1] = "Fishman Warrior",
				[2] = "FishmanQuest",
				[3] = 1,
				[4] = CFrame.new(61122, 18, 1569),
				[5] = CFrame.new(61007, 27, 1314)
			}
		elseif (Level == 400 or Level <= 449) then
			if (Vector3.new(61122.65234375, 18.497442245483, 1569.3997802734) - HumanoidRootPart.Position).Magnitude > 10000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
			end
			if VerifyEnemie("Fishman Lord") and Level > 424 then
				return {
					[1] = "Fishman Lord",
					[2] = "FishmanQuest",
					[3] = 3,
					[4] = CFrame.new(61122, 18, 1569),
					[5] = CFrame.new(61371, 18, 1111)
				}
			else
				return {
					[1] = "Fishman Commando",
					[2] = "FishmanQuest",
					[3] = 2,
					[4] = CFrame.new(61122, 18, 1569),
					[5] = CFrame.new(61947, 18, 1562)
				}
			end
		elseif (Level == 450 or Level <= 474) then
			if (Vector3.new(-7859.09814, 5544.19043, -381.476196) - HumanoidRootPart.Position).Magnitude > 20000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
			end
			return {
				[1] = "God's Guard",
				[2] = "SkyExp1Quest",
				[3] = 1,
				[4] = CFrame.new(-4721, 845, -1953),
				[5] = CFrame.new(-4812, 844, -1912)
			}
		elseif (Level == 475 or Level <= 524) then
			if (Vector3.new(-7863, 5545, -378) - HumanoidRootPart.Position).Magnitude > 20000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
			end
			if VerifyEnemie("Wysper") and Level > 499 then
				return {
					[1] = "Wysper",
					[2] = "SkyExp1Quest",
					[3] = 3,
					[4] = CFrame.new(-7863, 5545, -378),
					[5] = CFrame.new(-7803, 5545, -594)
				}
			else
				return {
					[1] = "Shanda",
					[2] = "SkyExp1Quest",
					[3] = 2,
					[4] = CFrame.new(-7863, 5545, -378),
					[5] = CFrame.new(-7803, 5545, -594)
				}
			end
		elseif (Level == 525 or Level <= 549) then
			if (Vector3.new(-7906.81592, 5634.6626, -1411.99194) - HumanoidRootPart.Position).Magnitude > 20000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
			end
			return {
				[1] = "Royal Squad",
				[2] = "SkyExp2Quest",
				[3] = 1,
				[4] = CFrame.new(-7903, 5635, -1410),
				[5] = CFrame.new(-7741, 5606, -1551)
			}
		elseif (Level == 550 or Level <= 624) then
			if (Vector3.new(-7906.81592, 5634.6626, -1411.99194) - HumanoidRootPart.Position).Magnitude > 20000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
			end
			if VerifyEnemie("Thunder God") and Level > 574 then
				return {
					[1] = "Thunder God",
					[2] = "SkyExp2Quest",
					[3] = 3,
					[4] = CFrame.new(-7903, 5635, -1410),
					[5] = CFrame.new(-7809, 5606, -2435)
				}
			else
				return {
					[1] = "Royal Soldier",
					[2] = "SkyExp2Quest",
					[3] = 2,
					[4] = CFrame.new(-7903, 5635, -1410),
					[5] = CFrame.new(-7811, 5606, -1782)
				}
			end
		elseif (Level == 625 or Level <= 649) then
			return {
				[1] = "Galley Pirate",
				[2] = "FountainQuest",
				[3] = 1,
				[4] = CFrame.new(5258, 38, 4050),
				[5] = CFrame.new(5497, 38, 4059)
			}
		elseif (Level >= 650) then
			if VerifyEnemie("Cyborg") and Level > 674 then
				return {
					[1] = "Cyborg",
					[2] = "FountainQuest",
					[3] = 3,
					[4] = CFrame.new(5258, 38, 4050),
					[5] = CFrame.new(6268, 24, 3997)
				}
			else
				return {
					[1] = "Galley Captain",
					[2] = "FountainQuest",
					[3] = 2,
					[4] = CFrame.new(5258, 38, 4050),
					[5] = CFrame.new(5872, 38, 4744)
				}
			end
		end
	elseif w2 then
		if (Level == 700) or (Level <= 724) then
			return {
				[1] = "Raider",
				[2] = "Area1Quest",
				[3] = 1,
				[4] = CFrame.new(-427, 72, 1835),
				[5] = CFrame.new(-712, 38, 2014)
			}
		elseif (Level == 725) or (Level <= 774) then
			if VerifyEnemie("Diamond") and (Level > 749) then
				return {
					[1] = "Diamond",
					[2] = "Area1Quest",
					[3] = 3,
					[4] = CFrame.new(-427, 72, 1835),
					[5] = CFrame.new(-1760, 198, -65)
				}
			else
				return {
					[1] = "Mercenary",
					[2] = "Area1Quest",
					[3] = 2,
					[4] = CFrame.new(-427, 72, 1835),
					[5] = CFrame.new(-1164, 72, 1273)
				}
			end
		elseif (Level == 775) or (Level <= 799) then
			return {
				[1] = "Swan Pirate",
				[2] = "Area2Quest",
				[3] = 1,
				[4] = CFrame.new(635, 73, 917),
				[5] = CFrame.new(848, 75, 1268)
			}
		elseif (Level == 800) or (Level <= 874) then
			if VerifyEnemie("Jeremy") and (Level > 849) then
				return {
					[1] = "Jeremy",
					[2] = "Area2Quest",
					[3] = 3,
					[4] = CFrame.new(635, 73, 917),
					[5] = CFrame.new(2292, 448, 757)
				}
			else
				return {
					[1] = "Factory Staff",
					[2] = "Area2Quest",
					[3] = 2,
					[4] = CFrame.new(635, 73, 917),
					[5] = CFrame.new(962, 74, 1306)
				}
			end
		elseif (Level == 875) or (Level <= 899) then
			return {
				[1] = "Marine Lieutenant",
				[2] = "MarineQuest3",
				[3] = 1,
				[4] = CFrame.new(-2440, 73, -3217),
				[5] = CFrame.new(-2824, 72, -3183)
			}
		elseif (Level == 900) or (Level <= 949) then
			if VerifyEnemie("Fajita") and (Level > 924) then
				return {
					[1] = "Fajita",
					[2] = "MarineQuest3",
					[3] = 3,
					[4] = CFrame.new(-2440, 73, -3217),
					[5] = CFrame.new(-2006, 72, -4459)
				}
			else
				return {
					[1] = "Marine Captain",
					[2] = "MarineQuest3",
					[3] = 2,
					[4] = CFrame.new(-2440, 73, -3217),
					[5] = CFrame.new(-1797, 72, -3198)
				}
			end
		elseif (Level == 950) or (Level <= 974) then
			return {
				[1] = "Zombie",
				[2] = "ZombieQuest",
				[3] = 1,
				[4] = CFrame.new(-5494, 48, -794),
				[5] = CFrame.new(-5631, 48, -773)
			}
		elseif (Level == 975) or (Level <= 999) then
			return {
				[1] = "Vampire",
				[2] = "ZombieQuest",
				[3] = 2,
				[4] = CFrame.new(-5494, 48, -794),
				[5] = CFrame.new(-6103, 227, -1290)
			}
		elseif (Level == 1000) or (Level <= 1049) then
			return {
				[1] = "Snow Trooper",
				[2] = "SnowMountainQuest",
				[3] = 1,
				[4] = CFrame.new(607, 401, -5370),
				[5] = CFrame.new(531, 425, -5489)
			}
		elseif (Level == 1050) or (Level <= 1099) then
			return {
				[1] = "Winter Warrior",
				[2] = "SnowMountainQuest",
				[3] = 2,
				[4] = CFrame.new(607, 401, -5370),
				[5] = CFrame.new(1267, 430, -5180)
			}
		elseif (Level == 1100) or (Level <= 1124) then
			return {
				[1] = "Lab Subordinate",
				[2] = "IceSideQuest",
				[3] = 1,
				[4] = CFrame.new(-6061, 15, -4902),
				[5] = CFrame.new(-5782, 15, -4483)
			}
		elseif (Level == 1125) or (Level <= 1174) then
			if VerifyEnemie("Smoke Admiral") and (Level > 1149) then
				return {
					[1] = "Smoke Admiral",
					[2] = "IceSideQuest",
					[3] = 3,
					[4] = CFrame.new(-6061, 15, -4902),
					[5] = CFrame.new(-5006, 23, -5363)
				}
			else
				return {
					[1] = "Horned Warrior",
					[2] = "IceSideQuest",
					[3] = 2,
					[4] = CFrame.new(-6061, 15, -4902),
					[5] = CFrame.new(-6377, 15, -5993)
				}
			end
		elseif (Level == 1175) or (Level <= 1199) then
			return {
				[1] = "Magma Ninja",
				[2] = "FireSideQuest",
				[3] = 1,
				[4] = CFrame.new(-5429, 15, -5297),
				[5] = CFrame.new(-5509, 15, -5948)
			}
		elseif (Level == 1200) or (Level <= 1249) then
			return {
				[1] = "Lava Pirate",
				[2] = "FireSideQuest",
				[3] = 2,
				[4] = CFrame.new(-5429, 15, -5297),
				[5] = CFrame.new(-5224, 15, -4728)
			}
		elseif (Level == 1250) or (Level <= 1274) then
			if (Vector3.new(1037.80127, 125.092171, 32911.6016) - HumanoidRootPart.Position).Magnitude > 10000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
			end
			return {
				[1] = "Ship Deckhand",
				[2] = "ShipQuest1",
				[3] = 1,
				[4] = CFrame.new(1040, 125, 32911),
				[5] = CFrame.new(680, 125, 33059)
			}
		elseif (Level == 1275) or (Level <= 1299) then
			if (Vector3.new(1037.80127, 125.092171, 32911.6016) - HumanoidRootPart.Position).Magnitude > 10000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
			end
			return {
				[1] = "Ship Engineer",
				[2] = "ShipQuest1",
				[3] = 2,
				[4] = CFrame.new(1040, 125, 32911),
				[5] = CFrame.new(908, 40, 32878)
			}
		elseif (Level == 1300) or (Level <= 1324) then
			if (Vector3.new(968.80957, 125.092171, 33244.125) - HumanoidRootPart.Position).Magnitude > 10000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
			end
			return {
				[1] = "Ship Steward",
				[2] = "ShipQuest2",
				[3] = 1,
				[4] = CFrame.new(971, 125, 33245),
				[5] = CFrame.new(897, 125, 33538)
			}
		elseif (Level == 1325) or (Level <= 1349) then
			if (Vector3.new(968.80957, 125.092171, 33244.125) - HumanoidRootPart.Position).Magnitude > 10000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
			end
			return {
				[1] = "Ship Officer",
				[2] = "ShipQuest2",
				[3] = 2,
				[4] = CFrame.new(971, 125, 33245),
				[5] = CFrame.new(719, 181, 33312)
			}
		elseif (Level == 1350) or (Level <= 1374) then
			return {
				[1] = "Arctic Warrior",
				[2] = "FrostQuest",
				[3] = 1,
				[4] = CFrame.new(5668, 28, -6484),
				[5] = CFrame.new(5990, 28, -6172)
			}
		elseif (Level == 1375) or (Level <= 1424) then
			if VerifyEnemie("Awakened Ice Admiral") and (Level > 1399) then
				return {
					[1] = "Awakened Ice Admiral",
					[2] = "FrostQuest",
					[3] = 3,
					[4] = CFrame.new(5668, 28, -6484),
					[5] = CFrame.new(6541, 296, -6997)
				}
			else
				return {
					[1] = "Snow Lurker",
					[2] = "FrostQuest",
					[3] = 2,
					[4] = CFrame.new(5668, 28, -6484),
					[5] = CFrame.new(5568, 28, -6835)
				}
			end
		elseif (Level == 1425) or (Level <= 1449) then
			return {
				[1] = "Sea Soldier",
				[2] = "ForgottenQuest",
				[3] = 1,
				[4] = CFrame.new(-3054, 236, -10147),
				[5] = CFrame.new(-3259, 14, -9770)
			}
		elseif (Level >= 1450) then
			if VerifyEnemie("Tide Keeper") and (Level > 1474) then
				return {
					[1] = "Tide Keeper",
					[2] = "ForgottenQuest",
					[3] = 3,
					[4] = CFrame.new(-3054, 236, -10147),
					[5] = CFrame.new(-3684, 77, -11407)
				}
			else
				return {
					[1] = "Water Fighter",
					[2] = "ForgottenQuest",
					[3] = 2,
					[4] = CFrame.new(-3054, 236, -10147),
					[5] = CFrame.new(-3220, 238, -10589)
				}
			end
		end
	elseif w3 then
		if (Level == 1500) or (Level <= 1524) then
			return {
				[1] = "Pirate Millionaire",
				[2] = "PiratePortQuest",
				[3] = 1,
				[4] = CFrame.new(-450, 107, 5950),
				[5] = CFrame.new(-733, 59, 5717)
			}
		elseif (Level == 1525) or (Level <= 1574) then
			if VerifyEnemie("Stone") and (Level > 1549) then
				return {
					[1] = "Stone",
					[2] = "PiratePortQuest",
					[3] = 3,
					[4] = CFrame.new(-450, 107, 5950),
					[5] = CFrame.new(-1064, 52, 6789)
				}
			else
				return {
					[1] = "Pistol Billionaire",
					[2] = "PiratePortQuest",
					[3] = 2,
					[4] = CFrame.new(-450, 107, 5950),
					[5] = CFrame.new(-58, 118, 6071)
				}
			end
		elseif (Level == 1575) or (Level <= 1599) then
			return {
				[1] = "Dragon Crew Warrior",
				[2] = "DragonCrewQuest",
				[3] = 1,
				[4] = CFrame.new(6735, 126, -711),
				[5] = CFrame.new(6694, 55, -774)
			}
		elseif (Level == 1600) or (Level <= 1624) then
			return {
				[1] = "Dragon Crew Archer",
				[2] = "DragonCrewQuest",
				[3] = 2,
				[4] = CFrame.new(6735, 126, -711),
				[5] = CFrame.new(6791, 535, 457)
			}
		elseif (Level == 1625) or (Level <= 1649) then
			return {
				[1] = "Hydra Enforcer",
				[2] = "VenomCrewQuest",
				[3] = 1,
				[4] = CFrame.new(5446, 601, 749),
				[5] = CFrame.new(4501, 1002, 384)
			}
		elseif (Level == 1650) or (Level <= 1699) then
			if VerifyEnemie("Hydra Leader") and (Level > 1674) then
				return {
					[1] = "Hydra Leader",
					[2] = "VenomCrewQuest",
					[3] = 3,
					[4] = CFrame.new(5446, 601, 749),
					[5] = CFrame.new(5857, 1075, -98)
				}
			else
				return {
					[1] = "Venomous Assailant",
					[2] = "VenomCrewQuest",
					[3] = 2,
					[4] = CFrame.new(5446, 601, 749),
					[5] = CFrame.new(4460, 1218, 432)
				}
			end
		elseif (Level == 1700) or (Level <= 1724) then
			return {
				[1] = "Marine Commodore",
				[2] = "MarineTreeIsland",
				[3] = 1,
				[4] = CFrame.new(2179, 28, -6740),
				[5] = CFrame.new(2553, 74, -7609)
			}
		elseif (Level == 1725) or (Level <= 1774) then
			if VerifyEnemie("Kilo Admiral") and (Level > 1749) then
				return {
					[1] = "Kilo Admiral",
					[2] = "MarineTreeIsland",
					[3] = 3,
					[4] = CFrame.new(2179, 28, -6740),
					[5] = CFrame.new(2952, 509, -7364)
				}
			else
				return {
					[1] = "Marine Rear Admiral",
					[2] = "MarineTreeIsland",
					[3] = 2,
					[4] = CFrame.new(2179, 28, -6740),
					[5] = CFrame.new(3723, 169, -7038)
				}
			end
		elseif (Level == 1775) or (Level <= 1799) then
			return {
				[1] = "Fishman Raider",
				[2] = "DeepForestIsland3",
				[3] = 1,
				[4] = CFrame.new(-10582, 331, -8757),
				[5] = CFrame.new(-10734, 334, -8324)
			}
		elseif (Level == 1800) or (Level <= 1824) then
			return {
				[1] = "Fishman Captain",
				[2] = "DeepForestIsland3",
				[3] = 2,
				[4] = CFrame.new(-10583, 331, -8759),
				[5] = CFrame.new(-11099, 331, -8977)
			}
		elseif (Level == 1825) or (Level <= 1849) then
			return {
				[1] = "Forest Pirate",
				[2] = "DeepForestIsland",
				[3] = 1,
				[4] = CFrame.new(-13232, 332, -7626),
				[5] = CFrame.new(-13287, 332, -7822)
			}
		elseif (Level == 1850) or (Level <= 1899) then
			if VerifyEnemie("Captain Elephant") and (Level > 1874) then
				return {
					[1] = "Captain Elephant",
					[2] = "DeepForestIsland",
					[3] = 3,
					[4] = CFrame.new(-13232, 332, -7626),
					[5] = CFrame.new(-13289, 319, -8625)
				}
			else
				return {
					[1] = "Mythological Pirate",
					[2] = "DeepForestIsland",
					[3] = 2,
					[4] = CFrame.new(-13232, 332, -7626),
					[5] = CFrame.new(-13413, 469, -6952)
				}
			end
		elseif (Level == 1900) or (Level <= 1924) then
			return {
				[1] = "Jungle Pirate",
				[2] = "DeepForestIsland2",
				[3] = 1,
				[4] = CFrame.new(-12682, 390, -9902),
				[5] = CFrame.new(-12042, 445, -10695)
			}
		elseif (Level == 1925) or (Level <= 1974) then
			if VerifyEnemie("Beautiful Pirate") and (Level > 1949) then
				return {
					[1] = "Beautiful Pirate",
					[2] = "DeepForestIsland2",
					[3] = 3,
					[4] = CFrame.new(-12682, 390, -9902),
					[5] = CFrame.new(5372, 22, -172)
				}
			else
				return {
					[1] = "Musketeer Pirate",
					[2] = "DeepForestIsland2",
					[3] = 2,
					[4] = CFrame.new(-12682, 390, -9902),
					[5] = CFrame.new(-13512, 403, -9863)
				}
			end
		elseif (Level == 1975) or (Level <= 1999) then
			return {
				[1] = "Reborn Skeleton",
				[2] = "HauntedQuest1",
				[3] = 1,
				[4] = CFrame.new(-9481, 142, 5566),
				[5] = CFrame.new(-8899, 141, 6121)
			}
		elseif (Level == 2000) or (Level <= 2024) then
			return {
				[1] = "Living Zombie",
				[2] = "HauntedQuest1",
				[3] = 2,
				[4] = CFrame.new(-9481, 142, 5566),
				[5] = CFrame.new(-10191, 138, 5885)
			}
		elseif (Level == 2025) or (Level <= 2049) then
			return {
				[1] = "Demonic Soul",
				[2] = "HauntedQuest2",
				[3] = 1,
				[4] = CFrame.new(-9517, 178, 6078),
				[5] = CFrame.new(-9553, 165, 6267)
			}
		elseif (Level == 2050) or (Level <= 2074) then
			return {
				[1] = "Posessed Mummy",
				[2] = "HauntedQuest2",
				[3] = 2,
				[4] = CFrame.new(-9517, 178, 6078),
				[5] = CFrame.new(-9524, 6, 6343)
			}
		elseif (Level == 2075) or (Level <= 2099) then
			return {
				[1] = "Peanut Scout",
				[2] = "NutsIslandQuest",
				[3] = 1,
				[4] = CFrame.new(-2105, 37, -10195),
				[5] = CFrame.new(-2103, 37, -10076)
			}
		elseif (Level == 2100) or (Level <= 2124) then
			return {
				[1] = "Peanut President",
				[2] = "NutsIslandQuest",
				[3] = 2,
				[4] = CFrame.new(-2105, 37, -10195),
				[5] = CFrame.new(-2197, 88, -10450)
			}
		elseif (Level == 2125) or (Level <= 2149) then
			return {
				[1] = "Ice Cream Chef",
				[2] = "IceCreamIslandQuest",
				[3] = 1,
				[4] = CFrame.new(-819, 64, -10967),
				[5] = CFrame.new(-797, 65, -10990)
			}
		elseif (Level == 2150) or (Level <= 2199) then
			if VerifyEnemie("Cake Queen") and (Level > 2174) then
				return {
					[1] = "Cake Queen",
					[2] = "IceCreamIslandQuest",
					[3] = 3,
					[4] = CFrame.new(-819, 64, -10967),
					[5] = CFrame.new(-725, 381, -11056)
				}
			else
				return {
					[1] = "Ice Cream Commander",
					[2] = "IceCreamIslandQuest",
					[3] = 2,
					[4] = CFrame.new(-819, 64, -10967),
					[5] = CFrame.new(-508, 65, -11213)
				}
			end
		elseif (Level == 2200) or (Level <= 2224) then
			return {
				[1] = "Cookie Crafter",
				[2] = "CakeQuest1",
				[3] = 1,
				[4] = CFrame.new(-2022, 36, -12030),
				[5] = CFrame.new(-2277, 37, -12220)
			}
		elseif (Level == 2225) or (Level <= 2249) then
			return {
				[1] = "Cake Guard",
				[2] = "CakeQuest1",
				[3] = 2,
				[4] = CFrame.new(-2022, 36, -12030),
				[5] = CFrame.new(-1572, 37, -12310)
			}
		elseif (Level == 2250) or (Level <= 2274) then
			return {
				[1] = "Baking Staff",
				[2] = "CakeQuest2",
				[3] = 1,
				[4] = CFrame.new(-1928, 37, -12840),
				[5] = CFrame.new(-1911, 37, -12703)
			}
		elseif (Level == 2275) or (Level <= 2299) then
			return {
				[1] = "Head Baker",
				[2] = "CakeQuest2",
				[3] = 2,
				[4] = CFrame.new(-1928, 37, -12840),
				[5] = CFrame.new(-2245, 53, -12950)
			}
		elseif (Level == 2300) or (Level <= 2324) then
			return {
				[1] = "Cocoa Warrior",
				[2] = "ChocQuest1",
				[3] = 1,
				[4] = CFrame.new(231, 23, -12200),
				[5] = CFrame.new(67, 24, -12332)
			}
		elseif (Level == 2325) or (Level <= 2349) then
			return {
				[1] = "Chocolate Bar Battler",
				[2] = "ChocQuest1",
				[3] = 2,
				[4] = CFrame.new(231, 23, -12200),
				[5] = CFrame.new(747, 24, -12740)
			}
		elseif (Level == 2350) or (Level <= 2374) then
			return {
				[1] = "Sweet Thief",
				[2] = "ChocQuest2",
				[3] = 1,
				[4] = CFrame.new(151, 23, -12774),
				[5] = CFrame.new(-194, 20, -12743)
			}
		elseif (Level == 2375) or (Level <= 2400) then
			return {
				[1] = "Candy Rebel",
				[2] = "ChocQuest2",
				[3] = 2,
				[4] = CFrame.new(151, 23, -12774),
				[5] = CFrame.new(11, 24, -13064)
			}
		elseif (Level == 2400) or (Level <= 2424) then
			return {
				[1] = "Candy Pirate",
				[2] = "CandyQuest1",
				[3] = 1,
				[4] = CFrame.new(-1149, 13, -14445),
				[5] = CFrame.new(-1181, 32, -14626)
			}
		elseif (Level == 2425) or (Level <= 2449) then
			return {
				[1] = "Snow Demon",
				[2] = "CandyQuest1",
				[3] = 2,
				[4] = CFrame.new(-1149, 13, -14445),
				[5] = CFrame.new(-978, 13, -14538)
			}
		elseif (Level == 2450) or (Level <= 2474) then
			return {
				[1] = "Isle Outlaw",
				[2] = "TikiQuest1",
				[3] = 1,
				[4] = CFrame.new(-16549, 55, -179),
				[5] = CFrame.new(-16233, 11, -208)
			}
		elseif (Level == 2475) or (Level <= 2499) then
			return {
				[1] = "Island Boy",
				[2] = "TikiQuest1",
				[3] = 2,
				[4] = CFrame.new(-16549, 55, -179),
				[5] = CFrame.new(-16873, 11, -151)
			}
		elseif (Level == 2500) or (Level <= 2524) then
			return {
				[1] = "Sun-kissed Warrior",
				[2] = "TikiQuest2",
				[3] = 1,
				[4] = CFrame.new(-16541, 54, 1051),
				[5] = CFrame.new(-16174, 11, 1071)
			}
		elseif (Level == 2525) or (Level <= 2549) then
			return {
				[1] = "Isle Champion",
				[2] = "TikiQuest2",
				[3] = 2,
				[4] = CFrame.new(-16541, 54, 1051),
				[5] = CFrame.new(-16670, 55, 1041)
			}
		elseif (Level == 2550) or (Level <= 2574) then
			return {
				[1] = "Serpent Hunter",
				[2] = "TikiQuest3",
				[3] = 1,
				[4] = CFrame.new(-16665, 104, 1579),
				[5] = CFrame.new(-16456, 71, 1602)
			}
		elseif (Level == 2575) or (Level <= 2599) or (Level == 2600) then
			return {
				[1] = "Skull Slayer",
				[2] = "TikiQuest3",
				[3] = 2,
				[4] = CFrame.new(-16665, 104, 1579),
				[5] = CFrame.new(-16922, 75, 1614)
			}
		end
	end
end
