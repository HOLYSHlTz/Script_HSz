--updatefix
local version = "1.0.0"

---// Loading Section \\---
repeat  task.wait() until game:IsLoaded()
if game.PlaceId == 8304191830 then
    repeat task.wait() until game.Workspace:FindFirstChild(game.Players.LocalPlayer.Name)
    repeat task.wait() until game.Players.LocalPlayer.PlayerGui:FindFirstChild("Main")
end

------------------------------
local a = 'HSz_Anime_Warriors_Simulator_2' -- ชื่อโฟเดอร์
local b = game:GetService('Players').LocalPlayer.Name .. '_AnimeWarriorsSimulator2.json' 
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

if game.CoreGui:FindFirstChild("FinityUI") then
    game.CoreGui["FinityUI"]:Destroy()
end

local HumanoidRootPart = game.Workspace:FindFirstChild(game.Players.LocalPlayer.Name):WaitForChild("HumanoidRootPart")

local dir = "Anime_Warriors_2/"..game.Players.LocalPlayer.Name
local Uilib, Rayfield, Click, comma, Notify, CreateWindow  = loadstring(game:HttpGet("https://raw.githubusercontent.com/siradaniy/HSz/main/finitylib.lua"))()
local exec = tostring(identifyexecutor())
local Window = Uilib.new(true, "[HSz_AWS2_v1] Anime Warriors Simulator 2 UPD "..version.." - "..exec)
Window.ChangeToggleKey(Enum.KeyCode.RightControl)
--Main
local Home = Window:Category(" 🏠 Main")
local AutoFarm = Home:Sector("Auto Farm")
local AutoEgg = Home:Sector("Open Egg")

--local workspace = workspace
local workspace = game.Workspace
local huge = math.huge

local RemoteEvent = game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvent")
local Services = game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild("sleitnick_knit@1.4.7"):WaitForChild("knit"):WaitForChild("Services")

RemoteEvent:FireServer({{"!", "EnemyRender", 500}})

--local HumanoidRootPart = Player.Character:WaitForChild("HumanoidRootPart")

local Enemies = {"Closest Enemy"}
local Eggs = {}

local function EnemyTable(v)
	local HealthBar = v:FindFirstChild("EnemyHealthBar", true)
	if HealthBar then
		local EnemyName = HealthBar.Title.Text
		if not table.find(Enemies, EnemyName) then
			table.insert(Enemies, EnemyName)
			return EnemyName
		end
	end
end

for i,v in pairs(workspace.Maps:GetChildren()) do
	for i,v in pairs(v.Eggs:GetChildren()) do
		if not table.find(Eggs, v.Name) then
			table.insert(Eggs, v.Name)
		end
	end
end

--Secelt_Enemy
local EnemyDropdown = AutoFarm:Cheat("Dropdown", "👾 เลือก Enemy",function(Enemies)
	Settings.SelectedEnemy = Enemies
	saveSettings()
end, {options = { }, default = Settings.SelectedEnemy})

task.spawn(function()
	while task.wait() do
		for i,v in pairs(workspace.ClientEnemies:GetChildren()) do
			local EnemyName = EnemyTable(v)
			if EnemyName then
				EnemyDropdown:AddOption(EnemyName)
			end
		end
	end
end)

--Toggle_Auto_Attack
AutoFarm:Cheat("Checkbox"," 🗡 Auto Attack ตีออโต้ ", function(bool)
	print(bool)
	Settings.AutoAttack = bool
	saveSettings()
end,{enabled = Settings.AutoAttack})

task.spawn(function()
	while task.wait() do
		if Settings.AutoAttack then
			local Number = huge
			local Enemy
			
			if Settings.SelectedEnemy ~= "Closest Enemy" then
				for i,v in pairs(workspace.ClientEnemies:GetChildren()) do
					if v and v:FindFirstChild("HumanoidRootPart") and v.HumanoidRootPart:FindFirstChild("EnemyHealthBar") and v.HumanoidRootPart.EnemyHealthBar.Title.Text:match(Settings.SelectedEnemy) then
						local Magnitude = (HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude
						if Magnitude < Number then
							Number = Magnitude
							Enemy = v
						end
					end
				end
			end
			
			if not Enemy then
				for i,v in pairs(workspace.ClientEnemies:GetChildren()) do
					if v and v:FindFirstChild("HumanoidRootPart") then
						local Magnitude = (Player.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude
						if Magnitude < Number then
							Number = Magnitude
							Enemy = v
						end
					end
				end
			end
			
			if Enemy then
				RemoteEvent:FireServer({{"%", Enemy.Name, true}})
				
				repeat task.wait() until not Enemy or not Enemy.Parent or not Settings.AutoAttack
			end
		end
	end
end)

--Toggle_Teleport_to_Enemy
AutoFarm:Cheat("Checkbox"," 💨 Teleport to Enemy วาปไปที่มอน ", function(bool)
	print(bool)
	Settings.AutoTP = bool
	saveSettings()
end,{enabled = Settings.AutoTP})

task.spawn(function()
	while task.wait() do
		if Settings.AutoTP then
			local Number = huge
			local Enemy

			for i,v in pairs(workspace.ClientEnemies:GetChildren()) do
				if v and v:FindFirstChild("HumanoidRootPart") and (v.HumanoidRootPart:FindFirstChild("EnemyHealthBar") and v.HumanoidRootPart.EnemyHealthBar.Title.Text == Settings.SelectedEnemy) or Settings.SelectedEnemy == "Closest Enemy" then
					local Magnitude = (HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude
					if Magnitude < Number then
						Number = Magnitude
						Enemy = v
					end
				end
			end
			
			if Enemy then
				repeat
					HumanoidRootPart.CFrame = Enemy.HumanoidRootPart.CFrame
					task.wait()
				until not Enemy or not Enemy.Parent or not Settings.AutoTP
			end
		end
	end
end)

--Toggle_Auto_Collect
AutoFarm:Cheat("Checkbox"," 💴 Auto Collect เก็บเหรียญออโต้ ", function(bool)
	print(bool)
	Settings.AutoCollect = bool
	saveSettings()
end,{enabled = Settings.AutoCollect})

task.spawn(function()
	while task.wait() do
		if Settings.AutoCollect then
			for i,v in pairs(workspace.Drops:GetChildren()) do
				v.CFrame = HumanoidRootPart.CFrame
			end
		end
	end
end)

--Toggle_Auto_Quest
AutoFarm:Cheat("Checkbox"," 📜 Auto Quest [BETA]", function(bool)
	print(bool)
	Settings.AutoQuest = bool
	saveSettings()
end,{enabled = Settings.AutoQuest})

task.spawn(function()
	while task.wait() do
		if Settings.AutoQuest then
			for i,v in pairs(workspace.Maps:GetChildren()) do
				RemoteEvent:FireServer({{"7", v.Components:FindFirstChild("NPC", true).Parent.Name}})
			end
		end
	end
end)

-----------------------------------------------------------------
--Toggle_Auto_Quest
AutoEgg:Cheat("Checkbox"," 🐣 Auto Open Egg [Skip Animetion Open] ", function(bool)
	print(bool)
	Settings.AutoOpenEgg = bool
	saveSettings()
end,{enabled = Settings.AutoOpenEgg})

task.spawn(function()
	while task.wait() do
		if Settings.AutoOpenEgg then
			local Number = huge
			local Egg
			
			for i,v in pairs(workspace.Maps:GetChildren()) do
				for i,v in pairs(v.Eggs:GetChildren()) do
					if v.PrimaryPart and v.Egg:FindFirstChild("PriceBillboard") and v.Egg.PriceBillboard.Yen.Icon.Image ~= "rbxassetid://9126788621" then
						local Magnitude = (HumanoidRootPart.Position - v.PrimaryPart.Position).Magnitude
						if Magnitude < Number then
							Number = Magnitude
							Egg = v
						end
					end
				end
			end
			
			if Egg then
				local EggCFrame = Egg.PrimaryPart.CFrame
				
				if (HumanoidRootPart.Position - EggCFrame.Position).Magnitude > 4 then
					HumanoidRootPart.CFrame = EggCFrame + EggCFrame.LookVector * 3
				end
				
				Services.EggService.RF.Open:InvokeServer(Egg.Name, (Egg:FindFirstChild("Bottom") and 2 or false))
			end
		end
	end
end)


local VirtualUser = game:GetService("VirtualUser")

game:GetService("Players").LocalPlayer.Idled:Connect(function()
    VirtualUser:CaptureController()
    VirtualUser:ClickButton2(Vector2.new())
end)

warn("HSz Hider Name Loaded สำเร็จ!!!")
warn("HSz AWS2 v1 Loaded สำเร็จ!!!")
