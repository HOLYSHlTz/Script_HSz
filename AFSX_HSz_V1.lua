if game.PlaceId == 11545598432 then
--updatefix
local version = "1.0.0"

---// Loading Section \\---
repeat  task.wait() until game:IsLoaded()

------------------------------
local a = 'HSz_AnimeFightingSimulatorX' -- ชื่อโฟเดอร์
local b = game:GetService('Players').LocalPlayer.Name .. '_AnimeFightingSimulatorX.json' 
Settings = {}
function saveSettings()
    local HttpService = game:GetService('HttpService')
    if not isfolder(a) then
        makefolder(a)
    end
    writefile(a .. '/' .. b, HttpService:JSONEncode(Settings))
    Settings = ReadSetting()
    warn("Settings Saved!")
end
function ReadSetting()
    local s, e = pcall(function()
        local HttpService = game:GetService('HttpService')
        if not isfolder(a) then
            makefolder(a)
        end
        return HttpService:JSONDecode(readfile(a .. '/' .. b))
    end)
    if s then
        return e
    else
        saveSettings()
        return ReadSetting()
    end
end
Settings = ReadSetting()

------------------------------
local HttpService = game:GetService("HttpService")
local plr = game:GetService("Players").LocalPlayer
local RunService = game:GetService("RunService")
local mouse = game.Players.LocalPlayer:GetMouse()
local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")
local Client = Players.LocalPlayer
local TweenService = game:GetService("TweenService")
local Workspace = game:GetService("Workspace")
------------------------------

if game.CoreGui:FindFirstChild("FinityUI") then
    game.CoreGui["FinityUI"]:Destroy()
end

local dir = "AnimeFightingSimulatorX/"..game.Players.LocalPlayer.Name
local Uilib = loadstring(game:HttpGet("https://raw.githubusercontent.com/siradaniy/HSz/main/FinityUI_Main.lua"))()
--local Uilib = loadstring(game:HttpGet("https://raw.githubusercontent.com/siradaniy/HSz/main/FinityUI_TEST.lua"))()
local exec = tostring(identifyexecutor())
local Window = Uilib.new(true, "[HSz_AFSX_v1] Anime Fighting Simulator X UPD "..version.." - "..exec)
Window.ChangeToggleKey(Enum.KeyCode.P)

function GetRemote(name)
	for i,v in pairs(game:GetService("ReplicatedStorage").Events:GetChildren()) do
		local R_Name = string.upper(v.Name)
		if string.find(R_Name, string.upper(name)) then
			return game:GetService("ReplicatedStorage").Events[v.Name]
		end
	end
end

function SendKeyEvent(key)
	game:GetService("VirtualInputManager"):SendKeyEvent(true,key,false,game)
end

local Home = Window:Category("🏠 HOME")
local Developers = Home:Sector("Anime Fighting Simulator X")


local TabSection1 = Window:Category("Farming")
local Farms = TabSection1:Sector("Traning")
local Farm_Mob = TabSection1:Sector("Mob Farm")
local Exploits = TabSection1:Sector("Exploits")
local Chest_Farm = TabSection1:Sector("Chest Farming")
local Upgrades = TabSection1:Sector("Upgrades")
local Mix = TabSection1:Sector("Collect")
---------------

local QuestTab = Window:Category("Quests")
local Everyone = QuestTab:Sector("KillMobs Quests")

-------------

local Teleport = Window:Category("Teleport")
local Teleport2 = Teleport:Sector("Teleportation")

----------------------------

---Credit
Developers:Cheat("Label","📜 Scripted by: Negative & HOLYSHz ")       
--Developers:Cheat("Label","⚒️ กด \"RightControl\" หรือ \"Control ขวา\" เพื่อ เปิด - ปิด เมนู")   
Developers:Cheat("Label","⚒️ กด \"P\" เพื่อ เปิด - ปิด เมนู")   
Developers:Cheat("Button","🔥 Copy Discord Link   ", function()
    setclipboard("https://discord.gg/6V8nzm5ZYB")
end)    


--Traning UI
--Strength
Farms:Cheat("Checkbox","Train Strength", function(t)
	print(t)
	Train_Strength = t
	saveSettings()
end,{enabled = Train_Strength })
 
 task.spawn(function()
	while task.wait() do
		if Train_Strength then
			pcall(function()
				local MainStr = "Strength"
				GetRemote("Stats/RemoteFunction"):InvokeServer("TrainStat", MainStr)
			end)
		end
	end
 end)
 
--Durability
Farms:Cheat("Checkbox","Train Durability", function(t)
	print(t)
	Train_Durability = t
	saveSettings()
end,{enabled = Train_Durability })
 
 task.spawn(function()
	while task.wait() do
		if Train_Durability then
			pcall(function()
				local MainStr = "Durability"
				GetRemote("Stats/RemoteFunction"):InvokeServer("TrainStat", MainStr)
			end)
		end
	end
 end)

--Chakra
Farms:Cheat("Checkbox","Train Chakra", function(t)
	print(t)
	Train_Chakra = t
	saveSettings()
end,{enabled = Train_Chakra })

task.spawn(function()
   while task.wait() do
       if Train_Chakra then
           pcall(function()
               local MainStr = "Chakra"
               GetRemote("Stats/RemoteFunction"):InvokeServer("TrainStat", MainStr)
           end)
       end
   end
end)

--Train_Sword
Farms:Cheat("Checkbox","Train Sword", function(t)
	print(t)
	Train_Sword = t
	saveSettings()
end,{enabled = Train_Sword })
 
 task.spawn(function()
	while task.wait() do
		if Train_Sword then
			pcall(function()
				local MainStr = "Sword"
				GetRemote("Stats/RemoteFunction"):InvokeServer("TrainStat", MainStr)
			end)
		end
	end
end)

--Train_Speed
Farms:Cheat("Checkbox","Train Speed", function(t)
	print(t)
	Train_Speed = t
	saveSettings()
end,{enabled = Train_Speed })
 
task.spawn(function()
	while task.wait() do
		if Train_Speed then
			pcall(function()
				local MainStr = "Speed"
				GetRemote("Stats/RemoteFunction"):InvokeServer("TrainStat", MainStr)
			end)
		end
	end
end)

--End Train UI

for i,v in pairs(getconnections(game.Players.LocalPlayer.Idled)) do
	v:Disable()
 end

--Anti-AFK
local ANAFK = Farms:Cheat("Checkbox","Anti-Afk", function()
   for i,v in pairs(getconnections(game.Players.LocalPlayer.Idled)) do
       v:Disable()
   end
end)
--ANAFK:Set(true)

--Farm_Mob UI

local Mobs_Table = {}
for i,v in pairs(game:GetService("ReplicatedStorage").Assets.Mobs:GetChildren()) do
   if v.ClassName == "Folder" then
       for i,v in pairs(v:GetChildren()) do
           table.insert(Mobs_Table, v.Name)
       end
   end
   if v.ClassName == "Model" then
       table.insert(Mobs_Table, v.Name)
   end
end

--Select Mob
Farm_Mob:Cheat("Dropdown", "Select Mob",function(t)
    warn("Change to : "..t)
    Selected_Mob = t
    saveSettings()
end, {options = Mobs_Table, default = Selected_Mob})

--Auto Farm Mob
Farm_Mob:Cheat("Checkbox","Auto Farm Mob", function(t)
	print(t)
	Farm_Selected_Mob = t
	saveSettings()
end,{enabled = Farm_Selected_Mob })
 
task.spawn(function()
	while task.wait() do
		if Farm_Selected_Mob then
			pcall(function()
				for i,v in pairs(game:GetService("Workspace").Scriptable.Mobs:GetChildren()) do
					if string.find(string.lower(v.Name), string.lower(Selected_Mob)) and v:FindFirstChild("HumanoidRootPart") and v then
						repeat task.wait()
						Client.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, -5, 0) * CFrame.Angles(math.rad(90), 0,0)
						until not v:FindFirstChild("HumanoidRootPart") or not v.Parent or not v or Farm_Selected_Mob == false
					end
				end
			end)
		end
	end
end)

--Upgrade UI

--Strength
 Upgrades:Cheat("Checkbox","Upgrade Strength", function(t)
	print(t)
	Upgrade_Strength = t
	saveSettings()
end,{enabled = Upgrade_Strength })
 
task.spawn(function()
	while task.wait() do
		if Upgrade_Strength then
			pcall(function()
				local args = {
					[1] = "Upgrade",
					[2] = "Strength"
				}
				game:GetService("ReplicatedStorage").Events:FindFirstChild("Stats/RemoteEvent"):FireServer(unpack(args))
				local MainStr = "Strength"
				GetRemote("Stats/RemoteEvent"):InvokeServer("Upgrade", MainStr)
			end)
		end
	end
end)

--Durability
Upgrades:Cheat("Checkbox","Upgrade Durability", function(t)
	print(t)
	Upgrade_Durability = t
	saveSettings()
end,{enabled = Upgrade_Durability })
 
 task.spawn(function()
	while task.wait() do
		if Upgrade_Durability then
			pcall(function()
				local args = {
					[1] = "Upgrade",
					[2] = "Durability"
				}
				game:GetService("ReplicatedStorage").Events:FindFirstChild("Stats/RemoteEvent"):FireServer(unpack(args))
				local MainStr = "Durability"
				GetRemote("Stats/RemoteEvent"):InvokeServer("Upgrade", MainStr)
			end)
		end
	end
 end)
 
--Chakra
Upgrades:Cheat("Checkbox","Upgrade Chakra", function(t)
	print(t)
	Upgrade_Chakra = t
	saveSettings()
end,{enabled = Upgrade_Chakra })

task.spawn(function()
   while task.wait() do
       if Upgrade_Chakra then
           pcall(function()
			local args = {
				[1] = "Upgrade",
				[2] = "Chakra"
			}
			game:GetService("ReplicatedStorage").Events:FindFirstChild("Stats/RemoteEvent"):FireServer(unpack(args))
               local MainStr = "Chakra"
               GetRemote("Stats/RemoteEvent"):InvokeServer("Upgrade", MainStr)
           end)
       end
   end
end)

--Sword
Upgrades:Cheat("Checkbox","Upgrade Sword", function(t)
	print(t)
	Upgrade_Sword = t
	saveSettings()
end,{enabled = Upgrade_Sword })

 task.spawn(function()
	while task.wait() do
		if Upgrade_Sword then
			pcall(function()
				local args = {
					[1] = "Upgrade",
					[2] = "Sword"
				}
				game:GetService("ReplicatedStorage").Events:FindFirstChild("Stats/RemoteEvent"):FireServer(unpack(args))
				local MainStr = "Sword"
				GetRemote("Stats/RemoteEvent"):InvokeServer("Upgrade", MainStr)
			end)
		end
	end
 end)

--Speed
Upgrades:Cheat("Checkbox","Upgrade Speed", function(t)
	print(t)
	Upgrade_Speed = t
	saveSettings()
end,{enabled = Upgrade_Speed })

task.spawn(function()
   while task.wait() do
       if Upgrade_Speed then
           pcall(function()
			local args = {
				[1] = "Speed",
				[2] = "Sword"
			}
			game:GetService("ReplicatedStorage").Events:FindFirstChild("Stats/RemoteEvent"):FireServer(unpack(args))
               local MainStr = "Speed"
               GetRemote("Stats/RemoteEvent"):InvokeServer("Upgrade", MainStr)
           end)
       end
   end
end)

--Collect

--Auto_Daily
Upgrades:Cheat("Checkbox","Auto Claim Daily", function(t)
	print(t)
	Auto_Daily = t
	saveSettings()
end,{enabled = Auto_Daily })

task.spawn(function()
   while task.wait() do
       if Auto_Daily then
           pcall(function()
               GetRemote("Rewards/RemoteEvent"):FireServer('ClaimDaily')
           end)
       end
   end
end)

--Auto_Claim_Achievement
Upgrades:Cheat("Checkbox","Auto Claim Achievement", function(t)
	print(t)
	Auto_Claim_Achievement = t
	saveSettings()
end,{enabled = Auto_Claim_Achievement })

task.spawn(function()
   while task.wait(1) do
       if Auto_Claim_Achievement then
           pcall(function()
               for i,v in pairs(Client.PlayerGui.Menu.PagesContainer.Achievements.container.Content:GetChildren()) do
                   if v:IsA("ScrollingFrame") then
                       for i,v in pairs(v:GetChildren()) do
                           if v:FindFirstChildOfClass("Frame") then
                               local modifiedString = v.Name:gsub("(%a)(%d)", "%1_%2")
                               GetRemote("Achievements/RemoteEvent"):FireServer('ClaimAchievement', modifiedString)
                           end
                       end
                   end
               end
           end)
       end
   end
end)
 
--Exploits

--INF_Stamina
Exploits:Cheat("Checkbox","Inf Stamina", function(t)
	print(t)
	INF_Stamina = t
	saveSettings()
end,{enabled = INF_Stamina })

task.spawn(function()
	while task.wait(.5) do
		if INF_Stamina then
			pcall(function()
				GetRemote("Stamina/RemoteEvent"):FireServer('Use', -9e9)
			end)
		end
	end
end)

--Chest Farming

--Chest_Main
Chest_Farm:Cheat("Checkbox","Main Chest Switch", function(t)
	print(t)
	Chest_Main = t
	saveSettings()
end,{enabled = Chest_Main })

--Farm_Common
Chest_Farm:Cheat("Checkbox","Farm Common", function(t)
	print(t)
	Farm_Common = t
	saveSettings()
end,{enabled = Farm_Common })

--Farm_Rare
Chest_Farm:Cheat("Checkbox","Farm Rare", function(t)
	print(t)
	Farm_Rare = t
	saveSettings()
end,{enabled = Farm_Rare })
 
--Farm_Epic
Chest_Farm:Cheat("Checkbox","Farm Epic", function(t)
	print(t)
	Farm_Epic = t
	saveSettings()
end,{enabled = Farm_Epic })

--Farm_Legendary
Chest_Farm:Cheat("Checkbox","Farm Legendary", function(t)
	print(t)
	Farm_Legendary = t
	saveSettings()
end,{enabled = Farm_Legendary })

--Chest_Farm:Cheat("Slider", "UwU", 0, 1, 0, function() end)

--Smart_Chest_Farm
Chest_Farm:Cheat("Checkbox","Smart Chest Farm", function(t)
	print(t)
	Smart_Chest_Farm = t
	saveSettings()
end,{enabled = Smart_Chest_Farm })
 
--Notify_Chest_Spawn
Chest_Farm:Cheat("Checkbox","Notify Chest Spawn", function(t)
	print(t)
	Notify_Chest_Spawn = t
	saveSettings()
end,{enabled = Notify_Chest_Spawn })

--function chest
function GetChestAllow()
	local ReturnTable = {}
	if Farm_Legendary then
		table.insert(ReturnTable, "legendary")
	end
	if Farm_Epic then
		table.insert(ReturnTable, "epic")
	end
	if Farm_Rare then
		table.insert(ReturnTable, "rare")
	end
	if Farm_Common then
		table.insert(ReturnTable, "common")
	end
	if Smart_Chest_Farm then
		ReturnTable = {
			'legendary',
			'epic',
			'rare',
			'common'
		}
		return ReturnTable
	end
	return ReturnTable
end

task.spawn(function()
	while task.wait(.5) do
		if Chest_Main then
			pcall(function()
				local chests = game:GetService("Workspace").Scriptable.Crates:GetChildren()
				local allowedChests = GetChestAllow()
 
				local highestPriorityChest = nil
				local BetterTeleport = nil
				local highestPriority = -1
 
				for i, v in pairs(chests) do
					if table.find(allowedChests, v.Name) then
						local priority = 0
						if v.Name == "legendary" then
							priority = 3
						elseif v.Name == "epic" then
							priority = 2
						elseif v.Name == "rare" then
							priority = 1
						end
 
						if priority > highestPriority then
							highestPriority = priority
							highestPriorityChest = v
						end
						if v:FindFirstChild("PP") then
							BetterTeleport = true
						else
							BetterTeleport = false
						end
					end
				end
 
				if highestPriorityChest then
					if BetterTeleport then
						Client.Character.HumanoidRootPart.CFrame = highestPriorityChest.PP.CFrame
					else
						Client.Character.HumanoidRootPart.CFrame = highestPriorityChest:GetModelCFrame()
					end
					task.wait(.5)
				end
			end)
		end
	end
 end)
 
 task.spawn(function()
	while task.wait() do
		if Chest_Main or Smart_Chest_Farm then
			pcall(function()
				SendKeyEvent("E")
			end)
		end
	end
 end)

 game:GetService("Workspace").Scriptable.Crates.ChildAdded:Connect(function(v)
	if Notify_Chest_Spawn then
		local StarterGui = game:GetService("StarterGui")
		StarterGui:SetCore("SendNotification", {
			Title = "Chests",
			Text = "New: "..tostring(v.Name),
			Duration = 5
		})
	end
end)

--Teleport
local TPVar = {}

for i,v in pairs(game:GetService("Workspace").Scriptable.TrainingsAreas:GetChildren()) do
	TPVar[v.Name] = Teleport2:Cheat("Checkbox",v.Name, function(t)
	--TPVar[v.Name] = Teleport2:Cheat("Button",v.Name, function(t)
		if t then
			Client.Character.HumanoidRootPart.CFrame = v.CFrame
			local StarterGui = game:GetService("StarterGui")
			StarterGui:SetCore("SendNotification", {
				Title = "Game",
				Text = "Teleported to: "..v.Name,
				Duration = 5
			})
		end
		HasTP = t
	end)
end

--Quest
local Testsom = require(game:GetService("ReplicatedStorage").util.Quests.Main.BanditQuest)
local Table_Quests = {}

for i,v in pairs(game:GetService("ReplicatedStorage").util.Quests.Main:GetChildren()) do
   if v.Name ~= "FirstQuest" then
       table.insert(Table_Quests, v.Name)
   end
end

function GetAllQuests()
local ReturnTable = {
	["KillMob"] = {},
	["Stat"] = {}
	}
		for i,v1 in pairs(game:GetService("ReplicatedStorage").util.Quests.Main:GetChildren()) do
			local MainReq = require(v1)
				for i,v in pairs(MainReq.Quests) do
					if v.Type == "KillMob" then
						ReturnTable["KillMob"][v.Name] = {
						["Mob"] = v.Objectives[1].Mob,
						["Goal"] = v.Objectives[1].Goal,
						["QuestName"] = v.Name,
										["QuestIndex"] = i,
						["Reward"] = v.Rewards["Yen"]["Amount"]
						}
					table.insert(ReturnTable["KillMob"], MainReq.Quests)
				end
			end
		end
	return ReturnTable
end

--Quest_Selected Mob
Everyone:Cheat("Dropdown", "Select Quest",function(t)
    warn("Change to : "..t)
    Quest_Selected = t
    saveSettings()
end, {options = Table_Quests, default = Quest_Selected})

--Start_Everyone_Farming
Everyone:Cheat("Checkbox","Farm Quest & Mob", function(t)
	print(t)
	Start_Everyone_Farming = t
	saveSettings()
end,{enabled = Start_Everyone_Farming })

Selected_Quest_Index = Selected_Quest_Index or 1
local QIndex = Everyone:Cheat("Slider", "Quest Index", function(t)
	print("Change to : ", t)
	Selected_Quest_Index = t
	saveSettings()
end, {min = 1, max = 3, suffix = "", default = Selected_Quest_Index })

function AcceptQuest(QuestName)
	GetRemote("Quests/RemoteEvent"):FireServer("StartQuest", QuestName, Selected_Quest_Index)
end

task.spawn(function()
   while task.wait() do
       if Start_Everyone_Farming then
           pcall(function()
               AcceptQuest(Quest_Selected)
               for i,v in pairs(game:GetService("Workspace").Scriptable.Mobs:GetChildren()) do
                   if string.find(string.lower(v.Name), string.lower(Testsom.Quests[Selected_Quest_Index].Objectives[1].Mob)) and v:FindFirstChild("HumanoidRootPart") and v then
                       repeat task.wait()
                       Client.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, -5, 0) * CFrame.Angles(math.rad(90), 0,0)
                       until not v:FindFirstChild("HumanoidRootPart") or not v.Parent or not v or Start_Everyone_Farming == false
                   end
               end
           end)
       end
   end
end)

--Auto_Quest_Boom
Everyone:Cheat("Checkbox","First Quest [Boom]", function(t)
	print(t)
	Auto_Quest_Boom = t
	saveSettings()
end,{enabled = Auto_Quest_Boom })

task.spawn(function()
	while task.wait() do
		if Auto_Quest_Boom then
			pcall(function()
				GetRemote("Quests/RemoteEvent"):FireServer("StartQuest", 'FirstQuest')
			end)
		end
	end
 end)

--AntiAFK
pcall(function()
    local vu = game:GetService("VirtualUser")
    game:GetService("Players").LocalPlayer.Idled:connect(function()
        vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
        wait(0.5)
        vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
        wait(0.5)
        vu:CaptureController()vu:ClickButton2(Vector2.new())
    end)
end)

warn("Anti-AFK Loaded!!!")
wait(5)
warn("Check 1 !!!")
wait(4)
warn("Check 2 !!!")
wait(3)
warn("Check 3 !!!")
wait(2)
warn("All Check !!!")
wait(1)
warn("HSz_Anime Fighting Simulator X Loaded !!!")


end
