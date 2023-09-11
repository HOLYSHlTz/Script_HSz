--if game.PlaceId == 13775256536 or game.PlaceId == 14082129854 then
if game:GetService('Players').LocalPlayer.Name == "oOHOLYSHzOo" then
--updatefix
local version = "1.0.0"

---// Loading Section \\---
repeat  task.wait() until game:IsLoaded()

------------------------------
local a = 'HSz_AAHSz_Macro' -- ชื่อโฟเดอร์
local b = game:GetService('Players').LocalPlayer.Name .. '_AAHSz_Macro.json' 
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

if isfolder and makefolder and isfile and writefile and readfile then
    function Makefile()
        if not isfolder("HSz_Macro") then
            makefolder("HSz_Macro")
        end 
        if not isfolder("HSz_Macro/Anime Adventures") then
            makefolder("HSz_Macro/Anime Adventures")
        end
        if not isfolder("HSz_Macro/Anime Adventures/HSz_Macro Profile") then
            makefolder("HSz_Macro/Anime Adventures/HSz_Macro Profile")
        end
    end
    Makefile()
    function Save(json)
        if not isfolder("HSz_Macro") or not isfolder("HSz_Macro/Anime Adventures") or not isfile("HSz_Macro/Anime Adventures/HSz_Macro Profile") or not isfile("HSz_Macro/Anime Adventures/".. (game.Players.LocalPlayer.Name .. "_" .. game.Players.LocalPlayer.UserId) ..".json") then
            Makefile()
        end
    end
    function Load()
        if not isfolder("HSz_Macro") or not isfolder("HSz_Macro/Anime Adventures") or not isfile("HSz_Macro/Anime Adventures/HSz_Macro Profile") or not isfile("HSz_Macro/Anime Adventures/".. (game.Players.LocalPlayer.Name .. "_" .. game.Players.LocalPlayer.UserId) ..".json") then
            Makefile()
        end
    end
end
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
local Window = Uilib.new(true, "[HSz_TTD_v1] Anime Adventures HSz_Macro UPD "..version.." - "..exec)
Window.ChangeToggleKey(Enum.KeyCode.P)

local Home = Window:Category("🏠 HOME")
local MainMC = Home:Sector("Anime Adventures HSz_Macro")
local MainMC2 = Home:Sector("Macro")


-----------------------------------------
--UI

MainMC:Cheat("Checkbox"," Auto join Story ", function(bool)
    print(bool)
    Settings.Auto_join_Story = bool
    saveSettings()
end,{enabled = Settings.Auto_join_Story})

MainMC:Cheat("Checkbox"," Auto Vote Start  ", function(bool)
    print(bool)
    Settings.AutoVoteStart = bool
    saveSettings()
end,{enabled = Settings.AutoVoteStart})

MainMC:Cheat("Checkbox"," Auto Vote Skip   ", function(bool)
    print(bool)
    Settings.AutoVoteSkip = bool
    saveSettings()
end,{enabled = Settings.AutoVoteSkip})

MainMC:Cheat("Checkbox"," Auto Vote Replay   ", function(bool)
    print(bool)
    Settings.AutoVoteReplay = bool
    saveSettings()
end,{enabled = Settings.AutoVoteReplay})

--Ui2
local MacroFileL = {}
    for i,v in pairs(listfiles("HSz_Macro/Anime Adventures/HSz_Macro Profile")) do
        table.insert(MacroFileL, tostring(v:split([[\]])[2]:gsub(".json", "")))
    end

MainMC2:Cheat("Dropdown", "Macro Profile",function(value)
    warn("Change to : "..value)
    Settings.Select_Macro_Profile = value
    saveSettings()
end, { options = MacroFileL, default =Settings.Select_Macro_Profile})

--[[MainMC2:Cheat("Dropdown", "Macro Profile 2",function(value)
    warn("Change to : "..value)
    Settings.Select_Macro_Profile2 = value
    saveSettings()
end, { options = listfiles("HSz_Macro/Anime Adventures/HSz_Macro Profile"), default =Settings.Select_Macro_Profile})]]

MainMC2:Cheat("Textbox", " New Profile Name ", function(Value)
    Settings.Profile_Name = Value
end, {placeholder = Settings.Profile_Name})

MainMC2:Cheat("Button"," Create New Profile ", function()
    if not isfolder("HSz_Macro") or not isfolder("HSz_Macro/Anime Adventures") or not isfile("HSz_Macro/Anime Adventures/HSz_Macro Profile") or not isfile("HSz_Macro/Anime Adventures/".. (game.Players.LocalPlayer.Name .. "_" .. game.Players.LocalPlayer.UserId) ..".json") then
        Makefile()
    end
    if not isfile("HSz_Macro/Anime Adventures/HSz_Macro Profile" .. "/" .. tostring(Settings.Profile_Name)..".json") then
        writefile("HSz_Macro/Anime Adventures/HSz_Macro Profile" .. "/" .. tostring(Settings.Profile_Name) .. ".json", game:GetService("HttpService"):JSONEncode({}))
    else
        local StarterGui = game:GetService("StarterGui")
                    StarterGui:SetCore("SendNotification", {
                        Title = "Create Profile",
                        Text = "You Already Have This Profile !!!",
                        Duration = 10
                    })
    end
    Settings.Select_Macro_Profile = {}
    for i,v in pairs(listfiles("HSz_Macro/Anime Adventures/HSz_Macro Profile")) do
        table.insert(Settings.Select_Macro_Profile, tostring(v:split([[\]])[2]:gsub(".json", "")))
        --Settings.Select_Macro_Profile:SetValues()
    end
end)
spawn(function()
    while wait(5) do
        pcall(function()
            Settings.Select_Macro_Profile = {}
            for i,v in pairs(listfiles("HSz_Macro/Anime Adventures/HSz_Macro Profile")) do
                table.insert(Settings.Select_Macro_Profile, tostring(v:split([[\]])[2]:gsub(".json", "")))
                --Settings.Select_Macro_Profile:SetValues()
            end
        end)
    end
end)
--for i,v in pairs(listfiles("HSz_Macro/Anime Adventures/HSz_Macro Profile")) do
    --table.insert(Settings.Select_Macro_Profile, tostring(v:split([[\]])[2]:gsub(".json", "")))
    --Settings.Select_Macro_Profile:SetValues()
--end

MainMC2:Cheat("Checkbox"," Record Macro on Map Join ", function(bool)
    print(bool)
    getgenv().recordMacroOnTeleport = bool
    saveSettings()
end,{enabled = getgenv().recordMacroOnTeleport})

MainMC2:Cheat("Checkbox"," Replay Macro on Map Join (TURN OFF RECORD MACRO) ", function(bool)
    print(bool)
    getgenv().replayMacroOnTeleport = bool
    saveSettings()
end,{enabled = getgenv().replayMacroOnTeleport})



----------------

--wrtght Macro
local function writeMacroToFile(filename)
	getgenv().newMacroFile = {}
	getgenv().instructionIncrement = 1

	local function writeMacroToTable()
		local mt = getrawmetatable(game)
		local old = mt.__namecall
		getgenv().timeOfLastCommand = os.clock()
		getgenv().macroStartTime = os.clock()
		setreadonly(mt,false)

		mt.__namecall = newcclosure(function(remote,...)
			local arguments = {...}
			method = tostring(getnamecallmethod())
			
			if method == "InvokeServer" or method == "FireServer" then
				if tostring(remote) == "spawn_unit" then
					function getEquippedUnits()
						equippedUnits = {}
						local reg = getreg() --> returns Roblox's registry in a table
					
						for i,v in next, reg do
							if type(v) == 'function' then --> Checks if the current iteration is a function
								if getfenv(v).script then --> Checks if the function's environment is in a script
									--if getfenv(v).script:GetFullName() == "ReplicatedStorage.src.client.Services.DropService" or getfenv(v).script:GetFullName() == "ReplicatedStorage.src.client.Services.NPCServiceClient" then
										for _, v in pairs(debug.getupvalues(v)) do --> Basically a for loop that prints everything, but in one line
											if type(v) == 'table' then
												if v["session"] then
													for sus, bak in pairs(v["session"]["profile_data"]['collection']['equipped_units']) do
														table.insert(equippedUnits, {bak, v["session"]["profile_data"]['collection']['owned_units'][bak]['unit_id']})
													end
													return equippedUnits
												end
											end
										end
									--end
								end
							end
						end
					end

					function getUnitsData()
						local v1 = {};
						for x, y in pairs(require(game.ReplicatedStorage.src.Data.Units)) do
							v1[x] = y          
						end
						return v1;
					end

					function getUpgradeCost(unitID, upgradeTo)
						if upgradeTo ~= 0 then
							return getUnitsData()[unitID]["upgrade"][upgradeTo]['cost']
						else
							return getUnitsData()[unitID]["cost"]
						end               
					end
					
					local unitUUID = tostring(arguments[1])
					local unitPosition = arguments[2]
					local unitID

					for _, unitDetails in pairs(getEquippedUnits()) do
						if unitUUID == unitDetails[1] then
							unitID = unitDetails[2]
						end
					end

					getgenv().newMacroFile[tostring(instructionIncrement)] = {
						['type'] = 'spawn_unit',
						['unit'] = unitID,
						['money'] = getUpgradeCost(unitID, 0),
						['cframe'] = arguments[2].X .. ", " .. arguments[2].Y .. ", " .. arguments[2].Z .. ", 1, 0, -0, -0, 1, -0, 0, 0, 1"
					}
					instructionIncrement += 1
				end

				if tostring(remote) == "upgrade_unit_ingame" then
					function getEquippedUnits()
						equippedUnits = {}
						local reg = getreg() --> returns Roblox's registry in a table
					
						for i,v in next, reg do
							if type(v) == 'function' then --> Checks if the current iteration is a function
								if getfenv(v).script then --> Checks if the function's environment is in a script
									--if getfenv(v).script:GetFullName() == "ReplicatedStorage.src.client.Services.DropService" or getfenv(v).script:GetFullName() == "ReplicatedStorage.src.client.Services.NPCServiceClient" then
										for _, v in pairs(debug.getupvalues(v)) do --> Basically a for loop that prints everything, but in one line
											if type(v) == 'table' then
												if v["session"] then
													for sus, bak in pairs(v["session"]["profile_data"]['collection']['equipped_units']) do
														table.insert(equippedUnits, {bak, v["session"]["profile_data"]['collection']['owned_units'][bak]['unit_id']})
													end
													return equippedUnits
												end
											end
										end
									--end
								end
							end
						end
					end

					function getUnitsData()
						local v1 = {};
						for x, y in pairs(require(game.ReplicatedStorage.src.Data.Units)) do
							v1[x] = y          
						end
						return v1;
					end

					function getUpgradeCost(unitID, upgradeTo)
						print(unitID)
						if upgradeTo ~= 0 then
							return getUnitsData()[unitID]["upgrade"][upgradeTo]['cost']
						else
							return getUnitsData()[unitID]["cost"]
						end               
					end

					local hitboxPosition = arguments[1]._hitbox.CFrame
					
					local unitID

					for _, unitDetails in pairs(getEquippedUnits()) do
						print(unitDetails[1])
						print(arguments[1]['_stats']['uuid'].Value)
						if arguments[1]['_stats']['uuid'].Value == unitDetails[1] then
							unitID = unitDetails[2]
						end
					end

					if game.Players.LocalPlayer._stats.resource.Value >= getUpgradeCost(unitID, arguments[1]["_stats"]["upgrade"].Value + 1) then
						getgenv().newMacroFile[tostring(instructionIncrement)]  =  {
												['type'] = 'upgrade_unit_ingame',
												['money'] = getUpgradeCost(unitID, arguments[1]["_stats"]["upgrade"].Value + 1),
												['pos'] = hitboxPosition.X .. ", " .. hitboxPosition.Y .. ", " .. hitboxPosition.Z
											}
						instructionIncrement += 1
					end
				end

				if tostring(remote) == "sell_unit_ingame" then
					function getEquippedUnits()
						equippedUnits = {}
						local reg = getreg() --> returns Roblox's registry in a table
					
						for i,v in next, reg do
							if type(v) == 'function' then --> Checks if the current iteration is a function
								if getfenv(v).script then --> Checks if the function's environment is in a script
									--if getfenv(v).script:GetFullName() == "ReplicatedStorage.src.client.Services.DropService" or getfenv(v).script:GetFullName() == "ReplicatedStorage.src.client.Services.NPCServiceClient" then
										for _, v in pairs(debug.getupvalues(v)) do --> Basically a for loop that prints everything, but in one line
											if type(v) == 'table' then
												if v["session"] then
													for sus, bak in pairs(v["session"]["profile_data"]['collection']['equipped_units']) do
														table.insert(equippedUnits, {bak, v["session"]["profile_data"]['collection']['owned_units'][bak]['unit_id']})
													end
													return equippedUnits
												end
											end
										end
									--end
								end
							end
						end
					end

					function getUnitsData()
						local v1 = {};
						for x, y in pairs(require(game.ReplicatedStorage.src.Data.Units)) do
							v1[x] = y          
						end
						return v1;
					end

					function getUpgradeCost(unitId, upgradeTo)
						if upgradeTo ~= 0 then
							return getUnitsData()[unitId]["upgrade"][upgradeTo]['cost']
						else
							return getUnitsData()[unitId]["cost"]
						end               
					end

					local hitboxPosition = arguments[1]._hitbox.CFrame
					local unitID

					for _, unitDetails in pairs(getEquippedUnits()) do
						if unitUUID == unitDetails[1] then
							unitID = unitDetails[2]
						end
					end

					getgenv().newMacroFile[tostring(instructionIncrement)]  =  {
											['type'] = 'sell_unit_ingame',
											['money'] = 0,
											['pos'] = hitboxPosition.X .. ", " .. hitboxPosition.Y .. ", " .. hitboxPosition.Z .. ", 1, 0, -0, -0, 1, -0, 0, 0, 1"
										}
					instructionIncrement += 1
				end
			end

			local true_args = {...}
			return old(remote, unpack(true_args))
		end)

		setreadonly(mt,true)
	end

	writeMacroToTable()

	local GameFinished = game:GetService("Workspace"):WaitForChild("_DATA"):WaitForChild("GameFinished")
	GameFinished:GetPropertyChangedSignal("Value"):Connect(function()
		print("Changed", GameFinished.Value == true)
		if GameFinished.Value == true then
			--writefile("AAMacros" .. scriptVersion .. "\\" .. tostring(workspace._MAP_CONFIG.GetLevelData:InvokeServer()["id"]).."-"..tostring(os.date('%Y%m%d-%H%M%S')).."-"..game.Players.LocalPlayer.Name..".json", game:GetService("HttpService"):JSONEncode(getgenv().newMacroFile))
            writefile("Macro/Anime Adventures/HSz_Macro Profile" .. "/" .. tostring(workspace._MAP_CONFIG.GetLevelData:InvokeServer()["id"]).."-"..tostring(os.date('%Y%m%d-%H%M%S')).. ".json", game:GetService("HttpService"):JSONEncode(RecordMacro)) 
		end
	end)
end

if getgenv().recordingMacro then
    getgenv().lockAutoFunctions = true
    saveSettings()
    writeMacroToFile(tostring(workspace._MAP_CONFIG.GetLevelData:InvokeServer()["id"]).."-"..tostring(os.date('%Y%m%d-%H%M%S')).."-"..game.Players.LocalPlayer.Name..".json")
    local StarterGui = game:GetService("StarterGui")
                    StarterGui:SetCore("SendNotification", {
                        Title = "Starting Recording",
                        Text = "Recording macro to file: " .. tostring(workspace._MAP_CONFIG.GetLevelData:InvokeServer()["id"]).."-"..tostring(os.date('%Y-%m-%d-%H:%M:%S'))..".json",
                        Duration = 6.5
                    })
    autoMacroTab:CreateLabel("Recording Macro to file: " .. tostring(workspace._MAP_CONFIG.GetLevelData:InvokeServer()["map"]).."-"..tostring(os.date('%Y-%m-%d %H:%M:%S'))..".json")
end


if getgenv().recordMacroOnTeleport then
    getgenv().lockAutoFunctions = true
    getgenv().recordMacroOnTeleport = false
    getgenv().recordingMacro = true
    saveSettings()
else
    --getgenv().recordingMacro = false
    saveSettings()
end

if getgenv().replayMacroOnTeleport then
    print("MACRO STARTED AAAAAAMACRO STARTED AAAAAAMACRO STARTED AAAAAAMACRO")
    getgenv().lockAutoFunctions = true
    coroutine.resume(coroutine.create(function()
        getgenv().lockAutoFunctions = true
        if getgenv().levelMacros[tostring(workspace._MAP_CONFIG.GetLevelData:InvokeServer()["id"])] then
            decodedFile = game:GetService('HttpService'):JSONDecode(readfile(getgenv().levelMacros[tostring(workspace._MAP_CONFIG.GetLevelData:InvokeServer()["id"])]))
            getgenv().macroUnitPositions = {}
            instructionIncrement = 1
            
            local function updateUnitPositions()
                getgenv().macroUnitPositions = {}
                
                for i, v in ipairs(game.Workspace["_UNITS"]:GetChildren()) do
                    if v:FindFirstChild("_stats") then
                        if tostring(v["_stats"].player.Value) == game.Players.LocalPlayer.Name and v["_stats"].xp.Value >= 0  and v["_stats"].id.Value ~= "metal_knight_drone" and v["_stats"].id.Value ~= "metal_knight_drone:shiny" and v["_stats"].id.Value ~= "aot_generic" then
                            table.insert(getgenv().macroUnitPositions, {v, v._hitbox.CFrame.X, v._hitbox.CFrame.Z})
                        end
                    end
                end
            end
            
            local function getEquippedUnits()
                equippedUnits = {}
                local reg = getreg() --> returns Roblox's registry in a table
            
                for i,v in next, reg do
                    if type(v) == 'function' then --> Checks if the current iteration is a function
                        if getfenv(v).script then --> Checks if the function's environment is in a script
                            for _, v in pairs(debug.getupvalues(v)) do --> Basically a for loop that prints everything, but in one line
                                if type(v) == 'table' then
                                    if v["session"] then
                                        for sus, bak in pairs(v["session"]["profile_data"]['collection']['equipped_units']) do
                                            table.insert(equippedUnits, {bak, v["session"]["profile_data"]['collection']['owned_units'][bak]['unit_id']})
                                        end
                                        return equippedUnits
                                    end
                                end
                            end
                        end
                    end
                end
            end
            
            local function getCoordArgs(position)
                coordArgs = {}
                for coordArg in string.gmatch(position, "([^ ,]+)") do
                    table.insert(coordArgs, tonumber(coordArg))
                    --print(coordArg)
                end
                return coordArgs
            end
            
            repeat 
                task.wait(0.5)
            
                if decodedFile[tostring(instructionIncrement)]['type'] == 'spawn_unit' then
                    repeat task.wait() until game.Players.LocalPlayer._stats.resource.Value >= decodedFile[tostring(instructionIncrement)]['money']
                    updateUnitPositions()
                    for _, unitInfo in pairs(getEquippedUnits()) do
                        if unitInfo[2] == decodedFile[tostring(instructionIncrement)]['unit'] then
                            if unitInfo[2] == "metal_knight_evolved" or unitInfo[2] == "metal_knight_evolved:shiny" then
                                task.spawn(function()
                                    game:GetService("ReplicatedStorage").endpoints.client_to_server.spawn_unit:InvokeServer(unitInfo[1], CFrame.new(unpack(getCoordArgs(decodedFile[tostring(instructionIncrement)]['cframe']))))
                                    instructionIncrement += 1
                                    task.wait(2)
                                end)
                            else
                                game:GetService("ReplicatedStorage").endpoints.client_to_server.spawn_unit:InvokeServer(unitInfo[1], CFrame.new(unpack(getCoordArgs(decodedFile[tostring(instructionIncrement)]['cframe']))))
                                instructionIncrement += 1
                            end
                        end
                    end
                end
            
                if decodedFile[tostring(instructionIncrement)]['type'] == 'upgrade_unit_ingame' then
                    repeat task.wait() until game.Players.LocalPlayer._stats.resource.Value >= decodedFile[tostring(instructionIncrement)]['money']
                    updateUnitPositions()
                    
                    print(game.Players.LocalPlayer._stats.resource.Value)
                    print(decodedFile[tostring(instructionIncrement)]['money'])
                    for _, unitPosition in pairs(getgenv().macroUnitPositions) do
                        if getCoordArgs(decodedFile[tostring(instructionIncrement)]['pos'])[1] == unitPosition[2] and getCoordArgs(decodedFile[tostring(instructionIncrement)]['pos'])[3] == unitPosition[3] then
                            game:GetService("ReplicatedStorage").endpoints.client_to_server.upgrade_unit_ingame:InvokeServer(unitPosition[1], unpack(getCoordArgs(decodedFile[tostring(instructionIncrement)]['pos'])))
                        end
                    end
                    instructionIncrement += 1
                end
            
                if decodedFile[tostring(instructionIncrement)]['type'] == 'sell_unit_ingame' then
                    repeat task.wait() until game.Players.LocalPlayer._stats.resource.Value >= decodedFile[tostring(instructionIncrement)]['money']
            
                    for _, unitPosition in pairs(getgenv().macroUnitPositions) do
                        if getCoordArgs(decodedFile[tostring(instructionIncrement)]['pos'][1]) == unitPosition[2] and getCoordArgs(decodedFile[tostring(instructionIncrement)]['pos'][3]) == unitPosition[3] then
                            game:GetService("ReplicatedStorage").endpoints.client_to_server.sell_unit_ingame:InvokeServer(unitPosition[1], unpack(getCoordArgs(decodedFile[tostring(instructionIncrement)]['pos'])))
                        end
                    end
                    instructionIncrement += 1
                end
            until decodedFile[tostring(instructionIncrement)] == nil	
        end
    end))
end
end
