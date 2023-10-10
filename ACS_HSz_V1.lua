if game.PlaceId == 14433762945 then
    repeat wait() until game:IsLoaded()
    if not game:IsLoaded() then game.Loaded:Wait() end
    game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
    game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("MainGui")
    
    ------------------------------------------------------ [[ Save Function ]] ------------------------------------------------------
    local SaveSettings = {
        ["Auto Farm"] = {
            ["Select World"] = "Green Planet",
            ['Select Enemie'] = {},
            
            ['Auto Farm Select'] = false,
        },
        ["Raids"] = {
            ["Select Raids [World]"] = "Green Planet",
            ['Select Difficulty'] = 'Easy',
            ['Private Room'] = false,
            ['Auto Farm Raid'] = false,
            ['Collect Chest [After Finish]'] = false,
            ['Go On The Head [Mob]'] = false,
        },
        ["Item"] = {
            ['Select Rarity Skin'] = {},
            ['Auto Scrap Skin'] = false,
        },
        ['Tower'] = {
            ['Auto Farm Tower'] = false,
            ['Collect Chest [Tower]'] = false,
        },
        ['Misc'] = {
            ['Auto Click'] = false,
            ['Auto Ability'] = false,
            ['Instant Collect Coin'] = false,
            ['Instant Tp'] = false,
            ['Bypass Attack Range'] = false,
            ['Auto Collect Spirit'] = false,
            ['Auto Teleport TO Spirit World'] = false,
        },
        ['Egg'] = {
            ['Select World [Egg]'] = "Black Hole Orb",
            ['Select Amount'] = 1,
    
            ['Auto Open Egg'] = false,
        },
        ['Pet'] = {
            ['Select Pet'] = "",
            ['Select Rarity'] = {"Common"},
            ['Auto Feed'] = false,
    
            ['Select Pet [Quirk]'] = "",
            ['Select Rarity [Quirk]'] = {},
            ['Select Slot'] = 1,
            ['Premium Medal'] = false,
            ['Auto Reroll Quirk'] = false,
    
            ['Select Talent'] = {},
            ['Select Pet [Talent]'] = "",
            ['Auto Reroll Talent'] = false,
    
            ['Select Rarity [Essence]'] = {},
            ['Auto Essence'] = false,
            ['Ignore Godly (Not Del Godly)'] = false
        },
    }
    function Load()
        if readfile and writefile and isfile and isfolder then
            if not isfolder("HolyShz") then
                makefolder("HolyShz")
            end
            if not isfolder("/HolyShz/AnimeChampionsSimulator") then
                makefolder("/HolyShz/AnimeChampionsSimulator")
            end
            if not isfolder("/HolyShz/AnimeChampionsSimulator/data") then
                makefolder("/HolyShz/AnimeChampionsSimulator/data")
            end
            if not isfolder("/HolyShz/AnimeChampionsSimulator/Marco") then
                makefolder("/HolyShz/AnimeChampionsSimulator/Marco")
            end
            if not isfile("/HolyShz/AnimeChampionsSimulator/" .. tostring(game.Players.LocalPlayer.UserId) .. ".json") then
                writefile("/HolyShz/AnimeChampionsSimulator/" .. tostring(game.Players.LocalPlayer.UserId) .. ".json", game:GetService("HttpService"):JSONEncode(SaveSettings))
            else
                local Decode = game:GetService("HttpService"):JSONDecode(readfile("/HolyShz/AnimeChampionsSimulator/" .. tostring(game.Players.LocalPlayer.UserId) .. ".json"))
                for i,v in pairs(Decode) do
                    SaveSettings[i] = v
                end
            end
        else
            warn("Failed Load")
            return false
        end
    end
    function Save()
        if readfile and writefile and isfile then
            if isfile("/HolyShz/AnimeChampionsSimulator/" .. tostring(game.Players.LocalPlayer.UserId) .. ".json") == false then
                Load()
            else
                local Decode = game:GetService("HttpService"):JSONDecode(readfile("/HolyShz/AnimeChampionsSimulator/" .. tostring(game.Players.LocalPlayer.UserId) .. ".json"))
                local Array = {}
                for i,v in pairs(SaveSettings) do
                    Array[i] = v
                end
                writefile("/HolyShz/AnimeChampionsSimulator/" .. tostring(game.Players.LocalPlayer.UserId) .. ".json", game:GetService("HttpService"):JSONEncode(Array))
            end
        else
            warn("Failed Save")
            return false
        end
    end
    Load()
    Save()
    ------------------------------------------------------ [[ Values ]] ------------------------------------------------------
    local plr = game:GetService("Players").LocalPlayer
    local VirtualUser = game:GetService("VirtualUser")
    
    local Players = game:GetService("Players")
    local RunService = game:GetService("RunService")
    local UserInputService = game:GetService("UserInputService")
    local TweenService = game:GetService("TweenService")
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    
    local LocalPlayer = Players.LocalPlayer
    local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
    local Humanoid = Character:FindFirstChildWhichIsA("Humanoid")
    
    local ModuleScripts = ReplicatedStorage:WaitForChild("ModuleScripts")
    local RemoteFolder = ReplicatedStorage:WaitForChild("Remote")
    
    local LocalDairebStore2 = require(ModuleScripts.DairebStore2.LocalDairebStore2)
    local Config = require(ReplicatedStorage.ModuleScripts.Config.GameConfig)
    local EffectsHandler = require(ModuleScripts.Handlers.EffectsHandler)
    local TalentHandler = require(ModuleScripts.Handlers.TalentHandler)
    local PetStats = require(ModuleScripts.Config.PetStats)
    local PassiveStats = require(ModuleScripts.Config.PassiveStats)
    local PassivesHandler = require(ModuleScripts.Handlers.PassiveRenderHandler)
    local ItemStatsSkins = require(ModuleScripts.Config.ItemStats.Skins)
    
    local Bindable = ReplicatedStorage:WaitForChild("Bindable")
    local GetSpiritData = RemoteFolder.Spirit.GetSpiritData:InvokeServer()
    
    local MainData = LocalDairebStore2.GetDairebStoreAsync("MainData")
    local NowQuestName = MainData:GetData("CurrentTargetQuest", true)
    local Questlines = MainData:GetData("Questlines", true)
    ------------------------------------------------------ [[ Function Univers ]] ------------------------------------------------------
    function Comma_Value(p1)
        local v1 = p1;
        while true do
            local v2, v3 = string.gsub(v1, "^(-?%d+)(%d%d%d)", "%1,%2");
            v1 = v2;
            if v3 ~= 0 then else
                break;
            end;
        end;
        return v1;
    end;
    
    function Remove_rbx(str)
        return str:match("(%d+)")
    end
    
    function StringToCFrame(params)
        return CFrame.new(unpack(game:GetService("HttpService"):JSONDecode("["..params.."]")))
    end
    
    function ClickButton(Button,Mode)
        local ButtonClick = Button
        local events = { "MouseButton1Click", "MouseButton1Down", "Activated" }
        if Mode == "1" then
            for i, v in next, events do firesignal(ButtonClick[v]) end
        else
            for i,v in pairs(events) do
                for i,v in pairs(getconnections(ButtonClick[v])) do
                    v.Function()
                end
            end
        end
    end

    local AllIDs = {}
    local foundAnything = ""
    local actualHour = os.date("!*t").hour
    local Deleted = false
    local S_T = game:GetService("TeleportService")
    local S_H = game:GetService("HttpService")

    local File = pcall(function()
        AllIDs = S_H:JSONDecode(readfile("server-hop-temp.json"))
    end)
    if not File then
        table.insert(AllIDs, actualHour)
        pcall(function()
            writefile("server-hop-temp.json", S_H:JSONEncode(AllIDs))
        end)

    end
    local function TPReturner(placeId)
        local Site;
        if foundAnything == "" then
            Site = S_H:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. placeId .. '/servers/Public?sortOrder=Asc&limit=100'))
        else
            Site = S_H:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. placeId .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
        end
        local ID = ""
        if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
            foundAnything = Site.nextPageCursor
        end
        local num = 0;
        for i,v in pairs(Site.data) do
            local Possible = true
            ID = tostring(v.id)
            if tonumber(v.maxPlayers) > tonumber(v.playing) then
                for _,Existing in pairs(AllIDs) do
                    if num ~= 0 then
                        if ID == tostring(Existing) then
                            Possible = false
                        end
                    else
                        if tonumber(actualHour) ~= tonumber(Existing) then
                            local delFile = pcall(function()
                                delfile("server-hop-temp.json")
                                AllIDs = {}
                                table.insert(AllIDs, actualHour)
                            end)
                        end
                    end
                    num = num + 1
                end
                if Possible == true then
                    table.insert(AllIDs, ID)
                    wait()
                    pcall(function()
                        writefile("server-hop-temp.json", S_H:JSONEncode(AllIDs))
                        wait()
                        S_T:TeleportToPlaceInstance(placeId, ID, game.Players.LocalPlayer)
                    end)
                    wait(4)
                end
            end
        end
    end
    function Teleport(placeId)
        while wait() do
            pcall(function()
                TPReturner(placeId)
                if foundAnything ~= "" then
                    TPReturner(placeId)
                end
            end)
        end
    end
    ------------------------------------------------------ [[ Function In Games ]] ------------------------------------------------------
    function CheckPet(Mode)
        local TableOwnerPets = {}
        for i,v in pairs(game:GetService("Workspace").Pets:GetChildren()) do
            if v:FindFirstChild("Owner") and tostring(v.Owner.Value) == LocalPlayer.Name then   
                if Mode == "CheckTraget" and v.Target.Value == nil then
                    local Table_Check = {
                        Check = true,
                        Pet = v
                    }
                    return Table_Check
                elseif Mode == "CheckTraget" and v.Target.Value ~= nil then
                    local Table_Check = {
                        Check = false,
                        Pet = v
                    }
                    return Table_Check
                elseif Mode == "GetPet" then
                    table.insert(TableOwnerPets,v)
                end
            end
        end
        if Mode == "CheckTraget" then
            local Table_Check = {
                Check = true,
                Pet = "None"
            }
            return Table_Check
        elseif Mode == "GetPet" then
            return TableOwnerPets
        end
    end
    
    function SendPetTraget(Mobs)
        local TragetMonster = Mobs
        ReplicatedStorage.Bindable.Pets.SendAllPets:Fire(TragetMonster, false);
    end
    function SendPetOneTraget(PetTraget,Mobs)
        local TragetMonster = Mobs
        local PetTraget = PetTraget
        ReplicatedStorage.Bindable.Pets.SetPetTarget:Fire(PetTraget,TragetMonster);
    end
    
    function Clicker(Mobs)
        local TragetMonster = Mobs
        local args = {
            [1] = {
                [1] = {
                    ["Target"] = TragetMonster,
                    ["Damage"] = 1
                }
            }
        }
        ReplicatedStorage.Remote.Player.Clicker:FireServer(unpack(args))    
    end
    
    function CollectCoin()
        for i,v in pairs(game:GetService("Workspace").Effects:GetChildren()) do
            if v.Name == "CurrencyDrop" and v:FindFirstChild("Pickup") then
                if v:FindFirstChild("Pickup") then
                    v.Pickup:Fire()
                    v:FindFirstChild("Pickup"):Destroy()
                end
            end
        end
    end
    function CollectImageDrop()
        for i,v in pairs(game:GetService("Workspace").Effects:GetChildren()) do
            if v.Name == "ImageDrop" and v:FindFirstChild("Pickup") then
                if v:FindFirstChild("Pickup") then
                    v.Pickup:Fire()
                    v:FindFirstChild("Pickup"):Destroy()
                end
            end
        end
    end
    
    function AcceptCompleteQueset(Quest,Args)
        local Quest,Args = Quest,Args
        if Args == 'Accept' then
            local args = {
                [1] = Quest
            }
            ReplicatedStorage.Remote.Data.AcceptQuest:FireServer(unpack(args))    
        elseif Args == 'Complete' then
            local args = {
                [1] = Quest
            }
            ReplicatedStorage.Remote.Data.CompleteQuest:FireServer(unpack(args))
        end
    end
    
    function TeleportWorld(World)
        local World = World
        local args = {
            [1] = tostring(World)
        }
        ReplicatedStorage.Remote.Player.Teleport:FireServer(unpack(args))
    end
    
    function CheckWorld()
        for i,v in pairs(game:GetService("Workspace").Worlds:GetChildren()) do
            return v
        end
    end
    
    function OpenEgg(Eggs,Amount)
        local Eggs = Eggs
        local Amount = Amount
        local args = {
            [1] = Eggs,
            [2] = Amount
        }
        ReplicatedStorage.Remote.Orbs.OpenOrbs:FireServer(unpack(args))
    end
    
    function GetOpenEgg(EggsName)
        local EggsName = EggsName
        for i,v in pairs(game:GetService("ReplicatedStorage").UnloadedWorlds:GetChildren()) do
            for i1,v1 in pairs(v:GetChildren()) do
                if v1.Name == EggsName then
                    return v1
                end
            end
        end
        for i,v in pairs(game:GetService("Workspace").Worlds:GetChildren()) do
            for i1,v1 in pairs(v:GetChildren()) do
                if v1.Name == EggsName then
                    return v1
                end
            end
        end
        return "Not Found"
    end
    function UnlockEggAllMap()
        for i,v in pairs(MainData:GetData("DiscoveredWorlds", true)) do
            if not string.find(i,"Hub") then
                local args = { [1] = i }
                game:GetService("ReplicatedStorage").Remote.Player.Teleport:FireServer(unpack(args))
                repeat wait() until not LocalPlayer.PlayerGui:FindFirstChild('TeleportGui')
                wait(1)
            end
        end
    end
    
    ------------------------------------------------------ [[ Table ]] ------------------------------------------------------
    local WorldDate = require(ReplicatedStorage.ModuleScripts.Config.WorldData)
    local OrbStats = require(ReplicatedStorage.ModuleScripts.Config.OrbStats)
    local EnemyStats = require(ReplicatedStorage.ModuleScripts.Config.EnemyStats)
    
    local Table_World,World_Select = {},{}
    local Table_Enemie,Enemie_Select,DateEnemie = {},{},{}
    local Table_Egg,Egg_Select,DateEgg = {},{},{}
    
    local DateWorld = {}
    
    for i,v in pairs(WorldDate) do
        if v.WorldNum > -1 and i ~= "Test" then
            DateWorld[v.DisplayName] = {
                WorldName = i
            }
    
            Table_World[#Table_World + 1] = {
                Name = v.DisplayName,
                Num = v.WorldNum,
                InGameName = i,
            }
    
            local Enemie = require(ReplicatedStorage.ModuleScripts.Config.EnemyStats:FindFirstChild(i))
            for i,v_Eme in pairs(Enemie) do
                Table_Enemie[#Table_Enemie + 1] = {
                    Name = v_Eme.DisplayName,
                    Num_EnemyId = v_Eme.EnemyId,
                    Num_BossId = v_Eme.BossId,
                    World = v.DisplayName,
                    BaseName = i,
                }
            end
        end
    end
    for i,v in pairs(OrbStats) do
        if v.OrbNum > -1 then
            if v.DisplayName == "Black Hole Orb" then
                Num = 4
            else
                Num = v.OrbNum
            end
            Table_Egg[#Table_Egg + 1] = {
                Name = v.DisplayName,
                Num = Num,
                BaseName = i,
            }
        end
    end
    
    -- World
    table.sort(Table_World,function(a,b)
        return a['Num'] < b['Num']
    end)
    table.foreach(Table_World,function(a,b)
        table.insert(World_Select,b.Name)
    end)
    
    -- Enemie
    table.sort(Table_Enemie,function(a,b)
        if a['Num_EnemyId'] and b['Num_EnemyId'] then
            return a['Num_EnemyId'] < b['Num_EnemyId']
        elseif a['Num_BossId'] and b['Num_BossId'] then
            return a['Num_BossId'] < b['Num_BossId']
        end
    end)
    table.foreach(Table_Enemie,function(a,b)
        if not Enemie_Select[b.World] then
            Enemie_Select[b.World] = {}
        end
        if not DateEnemie[b.Name] then
            DateEnemie[b.BaseName] = b.Name
        end
        if not table.find(Enemie_Select[b.World],b.Name) then
            table.insert(Enemie_Select[b.World],b.Name)
        end
    end)
    
    -- Egg
    table.sort(Table_Egg,function(a,b)
        return a['Num'] < b['Num']
    end)
    table.foreach(Table_Egg,function(a,b)
        if not DateEgg[b.Name] then
            DateEgg[b.Name] = b.BaseName
        end
        table.insert(Egg_Select,b.Name)
    end)
    ------------------------------------------------------ [[ Lib Ui ]] ------------------------------------------------------
    local Venyx = loadstring(game:HttpGet("https://raw.githubusercontent.com/NoNiName/Library/main/UILibrary/HolyUiV3"))()
--fixVersion
    local UI = Venyx.new({
        title = "Anime Champions Simulator",
        Version = "Versin 1.1"
    })

    local Themes = {
        Background = Color3.fromRGB(24, 24, 24),
        Glow = Color3.fromRGB(0, 0, 0),
        Accent = Color3.fromRGB(10, 10, 10),
        LightContrast = Color3.fromRGB(20, 20, 20),
        DarkContrast = Color3.fromRGB(14, 14, 14),  
        TextColor = Color3.fromRGB(255, 255, 255)
    }
    ------------------------------------------------------ [[ Create Tab ]] ------------------------------------------------------
    local MainCreateTap = UI:addPage({
        title = "Main",
        icon = 5012544693
    })
    local AutoFarm_Select = MainCreateTap:addSection({
        title = "Auto Farm Select"
    })
    local AutoFarm_Tower = MainCreateTap:addSection({
        title = "Auto Farm Tower"
    })
    local AutoFarm_Raids = MainCreateTap:addSection({
        title = "Auto Farm Raids"
    })
    local AutoFarm_Misc = MainCreateTap:addSection({
        title = "Misc"
    })
    -- Pet
    local PetCreateTap = UI:addPage({
        title = "Pet",
        icon = 5012544693
    })
    local PetSetting_Feed = PetCreateTap:addSection({
        title = "Pet Setting - Feed"
    })
    local PetSetting_Quirk = PetCreateTap:addSection({
        title = "Pet Setting - Quirk"
    })
    local PetSetting_Talent = PetCreateTap:addSection({
        title = "Pet Setting - Talent"
    })
    local PetSetting_Essence = PetCreateTap:addSection({
        title = "Pet Setting - Essence"
    })
    -- Egg
    local EggCreateTap = UI:addPage({
        title = "Egg & Items",
        icon = 5012544693
    })
    local EggItems_Eggs = EggCreateTap:addSection({
        title = "Egg & Items - Eggs"
    })
    local EggItems_Items = EggCreateTap:addSection({
        title = "Egg & Items - Items"
    })
    -- Teleport
    local TeleportCreateTap = UI:addPage({
        title = "Teleport",
        icon = 5012544693
    })
    local Teleport_Worlds = TeleportCreateTap:addSection({
        title = "Teleport - Worlds"
    })
    local Teleport_Etc = TeleportCreateTap:addSection({
        title = "Teleport - Etc"
    })
    -- Theme
    local Theme = UI:addPage({
        title = "Theme",
        icon = 5012544693
    })
    local Colors = Theme:addSection({
        title = "Colors"
    })
    local Setting = Theme:addSection({
        title = "Setting"
    })
    ------------------------------------------------------ [[ Auto Farm Select ]] ------------------------------------------------------
    FS = false
    AutoFarm_Select:addDropdown({
        title = "Select World",
        list = World_Select, 
        default = SaveSettings["Auto Farm"]["Select World"],
        callback = function(v)
            SaveSettings["Auto Farm"]["Select World"] = v
            Save()
            if FS then RefreshEnemie() end
        end;
    })

    TableBaseEmemie = SaveSettings["Auto Farm"]['Select Enemie'][SaveSettings["Auto Farm"]["Select World"]] or {}
    local RefreshEnemieDrop = AutoFarm_Select:addMulitDropdown({
        title = "Select Enemie",
        list = Enemie_Select[SaveSettings["Auto Farm"]["Select World"]], 
        default = TableBaseEmemie,
        callback = function(v)
            SaveSettings["Auto Farm"]['Select Enemie'][SaveSettings["Auto Farm"]["Select World"]] = v
            Save()
        end;
    })
    function RefreshEnemie() 
        RefreshEnemieDrop.Options:Refresh(Enemie_Select[SaveSettings["Auto Farm"]["Select World"]],SaveSettings["Auto Farm"]['Select Enemie'][SaveSettings["Auto Farm"]["Select World"]] or {}) 
    end
    FS = true

    AutoFarm_Select:addToggle({
        title = "Auto Farm Select",
        default = SaveSettings["Auto Farm"]['Auto Farm Select'],
        callback = function(v)
            SaveSettings["Auto Farm"]['Auto Farm Select'] = v
            Save()
        end ,
    })

    ------------------------------------------------------ [[ Auto Farm Raids ]] ------------------------------------------------------
    AutoFarm_Raids:addDropdown({
        title = "Select Raids [World]",
        list = World_Select, 
        default = SaveSettings["Raids"]["Select Raids [World]"],
        callback = function(v)
            SaveSettings["Raids"]["Select Raids [World]"] = v
            Save()
        end;
    })
    AutoFarm_Raids:addDropdown({
        title = "Select Difficulty",
        list = {"Easy","Medium","Hard"}, 
        default = SaveSettings["Raids"]['Select Difficulty'],
        callback = function(v)
            SaveSettings["Raids"]['Select Difficulty'] = v
            Save()
        end;
    })
    AutoFarm_Raids:addToggle({
        title = "Private Room",
        default  = SaveSettings["Raids"]['Private Room'] ,
        callback = function(v)
            SaveSettings["Raids"]['Private Room'] = v
            Save()
        end ,
    })
    AutoFarm_Raids:addToggle({
        title = "Collect Chest [After Finish]",
        default  = SaveSettings["Raids"]['Collect Chest [After Finish]'] ,
        callback = function(v)
            SaveSettings["Raids"]['Collect Chest [After Finish]'] = v
            Save()
        end ,
    })
    AutoFarm_Raids:addToggle({
        title = "Go On The Head [Mob]",
        default  = SaveSettings["Raids"]['Go On The Head [Mob]'] ,
        callback = function(v)
            SaveSettings["Raids"]['Go On The Head [Mob]'] = v
            Save()
        end ,
    })
    AutoFarm_Raids:addToggle({
        title = "Auto Farm Raid",
        default = SaveSettings["Raids"]['Auto Farm Raid'] ,
        callback = function(v)
            SaveSettings["Raids"]['Auto Farm Raid'] = v
            Save()
        end ,
    })
    ------------------------------------------------------ [[ Auto Scrap Skin ]] ------------------------------------------------------
    EggItems_Items:addMulitDropdown({
        title = "Select Rarity Skin",
        list = {"Common","Rare","Epic","Legendary","Mythical"}, 
        default = SaveSettings["Item"]['Select Rarity Skin'],
        callback = function(v)
            SaveSettings["Item"]['Select Rarity Skin'] = v
            Save()
        end;
    })
    EggItems_Items:addToggle({
        title = "Auto Scrap Skin",
        default  = SaveSettings["Item"]['Auto Scrap Skin'] ,
        callback = function(v)
            SaveSettings["Item"]['Auto Scrap Skin'] = v
            Save()
        end ,
    })
    ------------------------------------------------------ [[ Auto Farm Tower ]] ------------------------------------------------------
    AutoFarm_Tower:addToggle({
        title = "Auto Farm Tower",
        default = SaveSettings["Tower"]['Auto Farm Tower'],
        callback = function(v)
            SaveSettings["Tower"]['Auto Farm Tower'] = v
            Save()
        end ,
    })
    AutoFarm_Tower:addToggle({
        title = "Collect Chest [Tower]",
        default  = SaveSettings["Tower"]['Collect Chest [Tower]'] ,
        callback = function(v)
            SaveSettings["Tower"]['Collect Chest [Tower]'] = v
            Save()
        end ,
    })
    ------------------------------------------------------ [[ Misc Function ]] ------------------------------------------------------
    AutoFarm_Misc:addToggle({
        title = "Auto Click",
        default  = SaveSettings["Misc"]['Auto Click'] ,
        callback = function(v)
            SaveSettings["Misc"]['Auto Click'] = v
            Save()
        end ,
    })
    AutoFarm_Misc:addToggle({
        title = "Auto Ability",
        default  = SaveSettings["Misc"]['Auto Ability'] ,
        callback = function(v)
            SaveSettings["Misc"]['Auto Ability'] = v
            Save()
        end ,
    })
    AutoFarm_Misc:addToggle({
        title = "Instant Collect Coin",
        default  = SaveSettings["Misc"]['Instant Collect Coin'] ,
        callback = function(v)
            SaveSettings["Misc"]['Instant Collect Coin'] = v
            Save()
        end ,
    })
    AutoFarm_Misc:addToggle({
        title = "Instant Tp",
        default  = SaveSettings["Misc"]['Instant Tp'] ,
        callback = function(v)
            SaveSettings["Misc"]['Instant Tp'] = v
            Save()
        end ,
    })
    AutoFarm_Misc:addToggle({
        title = "Bypass Attack Range",
        default  = SaveSettings["Misc"]['Bypass Attack Range'] ,
        callback = function(v)
            SaveSettings["Misc"]['Bypass Attack Range'] = v
            Save()
        end ,
    })
    AutoFarm_Misc:addToggle({
        title = "Auto Collect Spirit",
        default  = SaveSettings["Misc"]['Auto Collect Spirit'],
        callback = function(v)
            SaveSettings["Misc"]['Auto Collect Spirit'] = v
            Save()
        end ,
    })
    AutoFarm_Misc:addToggle({
        title = "Auto Teleport TO Spirit World",
        default  = SaveSettings["Misc"]['Auto Teleport TO Spirit World'] ,
        callback = function(v)
            SaveSettings["Misc"]['Auto Teleport TO Spirit World'] = v
            Save()
        end ,
    })
    ------------------------------------------------------ [[ Eggs Function ]] ------------------------------------------------------
    StatusEgg = EggItems_Eggs:addLabel({title ="Egg Status : Disabled\nIf you want to open anywhere,enter the world 1 time."})
    EggItems_Eggs:addDropdown({
        title = "Select World [Egg]",
        list = Egg_Select, 
        default = SaveSettings["Egg"]['Select World [Egg]'],
        callback = function(v)
            SaveSettings["Egg"]['Select World [Egg]'] = v
            Save()
        end;
    })
    EggItems_Eggs:addDropdown({
        title = "Select Amount",
        list = {1,2,3,4,5,6,7,8,9,10}, 
        default = SaveSettings["Egg"]['Select Amount'],
        callback = function(v)
            SaveSettings["Egg"]['Select Amount'] = v
            Save()
        end;
    })
    EggItems_Eggs:addToggle({
        title = "Auto Open Egg",
        default  = SaveSettings["Egg"]['Auto Open Egg'] ,
        callback = function(v)
            SaveSettings["Egg"]['Auto Open Egg'] = v
            Save()
        end ,
    })
    ------------------------------------------------------ [[ Auto Quest ]] ------------------------------------------------------
    --[[
    MainQuest:AddDropdown("Select Quest",{
        Values = {"SpiritQuest"}, 
        Default = "None",
        callback = function(v)
    
        end;
    })
    MainQuest:AddToggle("Auto Quest",{
        Default = false ,
        callback = function(v)
    
        end ,
    })
    if MainData:GetData("CurrentTargetQuest", true) == "SpiritQuest" and not Questlines[NowQuestName].Finished then
        if game:GetService("Workspace").Effects:FindFirstChild("SpecialSpirit") then
            ReplicatedStorage.Remote.Drops.CaughtSpirit:FireServer()
        end
        AcceptCompleteQueset("Complete",MainData:GetData("CurrentTargetQuest", true))
    end
    ]]
    ------------------------------------------------------ [[ Pet Auto Feed ]] ------------------------------------------------------
    PetSetting_Feed:addLabel({title = 'Pet Only Show After Lock'})
    local Table_PetBaseData,Table_SelePet = {},{}
    table.foreach(MainData:GetData("Pets", true),function(i,v)
        PetName = v.CustomName or v.PetId
        Table_PetBaseData[tostring(PetName) .. " | Lvl: " .. tostring(v.Lvl) .. " | Talents: " .. tostring(TalentHandler.GetOverallRank(v['Talents']))] = {
            ID = v.GUID,
            Name = v.PetId,
            Level = v.Lvl,
            Talent = v['Talents'],
            Quirk = v['Passives']
        }
        
        if v.Locked == true then
            table.insert(Table_SelePet,tostring(PetName) .. " | Lvl: " .. tostring(v.Lvl) .. " | Talents: " .. tostring(TalentHandler.GetOverallRank(v['Talents'])))
        end
    end)
    
    local Table_StatsCheck = {}
    local Table_TalentData = {}
    table.foreach(TalentHandler['TalentData'],function(i,v)
        Table_TalentData[v.Id] = v.DisplayName
    end)
    SelectPetDropFeed = PetSetting_Feed:addDropdown({
        title = "Select Pet",
        list = Table_SelePet, 
        default = SaveSettings["Pet"]['Select Pet'],
        callback = function(v)
            SaveSettings["Pet"]['Select Pet'] = v
            Save()
        end;
    })
    PetSetting_Feed:addMulitDropdown({
        title = "Select Rarity",
        list = {"Common","Rare","Epic","Legendary","Mythical"}, 
        default = SaveSettings["Pet"]['Select Rarity'],
        callback = function(v)
            SaveSettings["Pet"]['Select Rarity'] = v
            Save()
        end;
    })
    PetSetting_Feed:addToggle({
        title = "Auto Feed",
        default  = SaveSettings["Pet"]['Auto Feed'] ,
        callback = function(v)
            SaveSettings["Pet"]['Auto Feed'] = v
            Save()
        end ,
    })
    PetSetting_Feed:addButton({
        title = "Refresh Pet",
        callback = function()
            local Table_SelePet = {}
            table.foreach(MainData:GetData("Pets", true),function(i,v)
                PetName = v.CustomName or v.PetId
                Table_PetBaseData[tostring(PetName) .. " | Lvl: " .. tostring(v.Lvl) .. " | Talents: " .. tostring(TalentHandler.GetOverallRank(v['Talents']))] = {
                    ID = v.GUID,
                    Name = v.PetId,
                    Level = v.Lvl,
                    Talent = v['Talents'],
                    Quirk = v['Passives']
                }
                
                if v.Locked == true then
                    table.insert(Table_SelePet,tostring(PetName) .. " | Lvl: " .. tostring(v.Lvl) .. " | Talents: " .. tostring(TalentHandler.GetOverallRank(v['Talents'])))
                end
            end)
            SelectPetDropFeed.Options:Refresh(Table_SelePet,SaveSettings["Pet"]['Select Pet'])
        end
    })
    ------------------------------------------------------ [[ Pet Auto Quirk ]] ------------------------------------------------------
    local Table_Quirk_Base = {}
    table.foreach(PassiveStats,function(i,v)
        table.foreach(v['Rarities'],function(i1,v1)
            table.insert(Table_Quirk_Base,PassivesHandler.GetDisplayName(i,i1))
        end)
    end)
    PetSetting_Quirk:addLabel({title = 'Pet Only Show After Lock'})
    StatusPetsQuirk = PetSetting_Quirk:addLabel({title = 'Quirk : N/s'})
    SelectPetDropQuirk = PetSetting_Quirk:addDropdown({
        title = "Select Pet [Quirk]",
        list = Table_SelePet, 
        default = SaveSettings["Pet"]['Select Pet [Quirk]'],
        callback = function(v)
            SaveSettings["Pet"]['Select Pet [Quirk]'] = v
            Save()
        end;
    })
    PetSetting_Quirk:addMulitDropdown({
        title = "Select Quirk",
        list = Table_Quirk_Base, 
        default = SaveSettings["Pet"]['Select Rarity [Quirk]'],
        callback = function(v)
            SaveSettings["Pet"]['Select Rarity [Quirk]'] = v
            Save()
        end;
    })
    PetSetting_Quirk:addDropdown({
        title = "Select Slot",
        list = {1,2}, 
        default = SaveSettings["Pet"]['Select Slot'],
        callback = function(v)
            SaveSettings["Pet"]['Select Slot'] = v
            Save()
        end;
    })
    PetSetting_Quirk:addToggle({
        title = "Premium Medal",
        default  = SaveSettings["Pet"]['Premium Medal'] ,
        callback = function(v)
            SaveSettings["Pet"]['Premium Medal'] = v
            Save()
        end ,
    })
    PetSetting_Quirk:addToggle({
        title = "Auto Reroll Quirk",
        default  = SaveSettings["Pet"]['Auto Reroll Quirk'] ,
        callback = function(v)
            SaveSettings["Pet"]['Auto Reroll Quirk'] = v
            Save()
        end ,
    })
    PetSetting_Quirk:addButton({
        title = "Refresh Pet",
        callback = function()
            local Table_SelePet = {}
            table.foreach(MainData:GetData("Pets", true),function(i,v)
                PetName = v.CustomName or v.PetId
                Table_PetBaseData[tostring(PetName) .. " | Lvl: " .. tostring(v.Lvl) .. " | Talents: " .. tostring(TalentHandler.GetOverallRank(v['Talents']))] = {
                    ID = v.GUID,
                    Name = v.PetId,
                    Level = v.Lvl,
                    Talent = v['Talents'],
                    Quirk = v['Passives']
                }
                
                if v.Locked == true then
                    table.insert(Table_SelePet,tostring(PetName) .. " | Lvl: " .. tostring(v.Lvl) .. " | Talents: " .. tostring(TalentHandler.GetOverallRank(v['Talents'])))
                end
            end)
    
            SelectPetDropQuirk.Options:Refresh(Table_SelePet,SaveSettings["Pet"]['Select Pet [Quirk]'])
        end
    })
    ------------------------------------------------------ [[ Pet Auto Talent ]] ------------------------------------------------------
    PetSetting_Talent:addLabel({title = 'Pet Only Show After Lock'})
    StatusPets = PetSetting_Talent:addLabel({title = 'Talent \n[DMG] N/a,     [SPD] N/a,     [CRIT] N/a,     [ABT] N/a,'})
    SelectPetDropTalent = PetSetting_Talent:addDropdown({
        title = "Select Pet [Talent]",
        list = Table_SelePet, 
        default = SaveSettings["Pet"]['Select Pet [Talent]'],
        callback = function(v)
            SaveSettings["Pet"]['Select Pet [Talent]']= v
            Save()
        end;
    })
    PetSetting_Talent:addMulitDropdown({
        title = "Select Talent",
        list = {"F","D","C","B","A","S","SS","SSS"},
        default = SaveSettings["Pet"]['Select Talent'],
        callback = function(v)
            SaveSettings["Pet"]['Select Talent'] = v
            Save()
        end;
    })
    PetSetting_Talent:addToggle({
        title = "Auto Reroll Talent",
        default  = SaveSettings["Pet"]['Auto Reroll Talent'] ,
        callback = function(v)
            SaveSettings["Pet"]['Auto Reroll Talent'] = v
            Save()
        end ,
    })
    PetSetting_Talent:addButton({
        title = "Refresh Pet",
        callback = function()
            local Table_SelePet = {}
            table.foreach(MainData:GetData("Pets", true),function(i,v)
                PetName = v.CustomName or v.PetId
                Table_PetBaseData[tostring(PetName) .. " | Lvl: " .. tostring(v.Lvl) .. " | Talents: " .. tostring(TalentHandler.GetOverallRank(v['Talents']))] = {
                    ID = v.GUID,
                    Name = v.PetId,
                    Level = v.Lvl,
                    Talent = v['Talents'],
                    Quirk = v['Passives']
                }
                
                if v.Locked == true then
                    table.insert(Table_SelePet,tostring(PetName) .. " | Lvl: " .. tostring(v.Lvl) .. " | Talents: " .. tostring(TalentHandler.GetOverallRank(v['Talents'])))
                end
            end)
    
            SelectPetDropTalent.Options:Refresh(Table_SelePet,SaveSettings["Pet"]['Select Pet [Talent]'])
        end
    })
    ------------------------------------------------------ [[ Pet Auto Essence ]] ------------------------------------------------------
    PetSetting_Essence:addLabel({title = 'Auto Essence Not Delet Pet have Locked'})
    PetSetting_Essence:addMulitDropdown({
        title = "Select Rarity [Essence]",
        list = {"Common","Rare","Epic","Legendary","Mythical"}, 
        default = SaveSettings["Pet"]['Select Rarity [Essence]'],
        callback = function(v)
            SaveSettings["Pet"]['Select Rarity [Essence]'] = v
            Save()
        end;
    })
    PetSetting_Essence:addToggle({
        title = "Ignore Godly (Not Del Godly)",
        default  = SaveSettings["Pet"]['Ignore Godly (Not Del Godly)'] ,
        callback = function(v)
            SaveSettings["Pet"]['Ignore Godly (Not Del Godly)'] = v
            Save()
        end ,
    })
    PetSetting_Essence:addToggle({
        title = "Auto Essence [3 sec]",
        default  = SaveSettings["Pet"]['Auto Essence'] ,
        callback = function(v)
            SaveSettings["Pet"]['Auto Essence'] = v
            Save()
        end ,
    })
    ------------------------------------------------------ [[ Teleport ]] ------------------------------------------------------
    for i,v in pairs(Table_World) do
        Teleport_Worlds:addButton({
            title = "Teleport To " .. v.Name,
            callback = function()
                TeleportWorld(v.InGameName)
            end
        })
    end
    Table_ETC = {'MagicTree',"Tower","Raids","Secret","Lab"}
    for i,v in pairs(Table_ETC) do
        local Text = v
        if v == "Secret" then
            Text = "Cosmics"
        end
        if v == "Lab" then
            Text = "Machines"
        end
        Teleport_Etc:addButton({
            title = "Teleport To " .. Text,
            callback = function()
                local args = {
                    [1] = "Hub",
                    [2] = v
                }
                
                game:GetService("ReplicatedStorage").Remote.Player.Teleport:FireServer(unpack(args))
            end
        })
    end
    ------------------------------------------------------ [[ Color Theme ]] ------------------------------------------------------
    -- // Adding a color picker for each type of theme customisable
    for theme, color in pairs(Themes) do
        Colors:addColorPicker({
            title = theme,
            default = color,
            callback = function(color3)
                UI:setTheme({
                    theme = theme, 
                    color3 = color3
                })
            end
        })
    end
    -- Setting
    Setting:addButton({
        title = "Rejoin",
        callback = function()
            local tpservice= game:GetService("TeleportService")
            local plr = game.Players.LocalPlayer

            tpservice:Teleport(game.PlaceId, plr)
        end
    })
    Setting:addButton({
        title = "Hop Server",
        callback = function()
            Teleport(game.PlaceId)
        end
    })
    Setting:addKeybind({
        title = "Keybind Hide Ui",
        key = Enum.KeyCode.LeftControl,
        callback = function()
            UI:toggle()
        end,
    })
    
    --[[
    MainCheckSomeThing:AddLabel("Pet Id 28HNE0P-54")
    table.foreach(u15:GetData("Pets", true)["28HNE0P-54"]['Talents'],function(i,v)
        Table_StatsCheck[i] = MainCheckSomeThing:AddLabel(
            string.gsub(
                i,i,Table_TalentData[i]
            ),
            u9.GetStatRank(v)
        )
    end)
    ]]
    
    -- QuestFindScrool : game:GetService("Workspace").Worlds.Naruto.Map.QuestScroll.NarutoScroll 
    -- Hacked Bot = 2678.23901, 42.1532173, 4884.99756, -0.0013635864, -5.80582231e-08, 0.999999046, -2.57405069e-10, 1, 5.80579247e-08, -0.999999046, -1.78237841e-10, -0.0013635864
    ------------------------------------------------------ [[ Script Auto Farm ]] ------------------------------------------------------
    -- Instant TP Pet
    spawn(function()
        while wait() do
            if SaveSettings["Misc"]['Instant Tp'] then
                table.foreach(CheckPet('GetPet'),function(a,b)
                    if b:FindFirstChild("Target") and b.Target.Value ~= nil and (b:GetModelCFrame().Position - b.Target.Value:GetPivot().Position).Magnitude > 30 then
                        b:PivotTo(b.Target.Value:GetPivot())
                    end
                end)
            end
        end
    end)
    
    -- Auto Feed
    spawn(function()
        while wait() do
            if SaveSettings["Pet"]['Auto Feed'] then
                table.foreach(MainData:GetData("Pets", true),function(i,v)
                    if Table_PetBaseData[SaveSettings["Pet"]['Select Pet']].ID ~= v.GUID and table.find(SaveSettings["Pet"]['Select Rarity'],PetStats[v.PetId].Rarity) and not v.Locked then 
                        local args = {
                            [1] = Table_PetBaseData[SaveSettings["Pet"]['Select Pet']].ID,
                            [2] = { [1] = v.GUID }
                        }
                        game:GetService("ReplicatedStorage").Remote.Data.FusePets:FireServer(unpack(args))
                    end    
                end)
            end
            if SaveSettings["Pet"]['Auto Reroll Talent'] then 
                local PetDataTalent = Table_PetBaseData[SaveSettings["Pet"]['Select Pet [Talent]']]
                local OldPetStatsTalent = MainData:GetData("Pets", true)[PetDataTalent['ID']]['Talents']
                local args = {
                    [1] = PetDataTalent['ID'],
                    [2] = {
                        ["Dmg"] = table.find(SaveSettings["Pet"]['Select Talent'],TalentHandler.GetStatRank(OldPetStatsTalent['Dmg'])) and true or false,
                        ["Spd"] = table.find(SaveSettings["Pet"]['Select Talent'],TalentHandler.GetStatRank(OldPetStatsTalent['Spd'])) and true or false,
                        ["CDmg"] = table.find(SaveSettings["Pet"]['Select Talent'],TalentHandler.GetStatRank(OldPetStatsTalent['CDmg'])) and true or false,
                        ["ADmg"] = table.find(SaveSettings["Pet"]['Select Talent'],TalentHandler.GetStatRank(OldPetStatsTalent['ADmg'])) and true or false,
                    }
                }
                game:GetService("ReplicatedStorage").Remote.Machines.TalentMachine:FireServer(unpack(args))
                local PetStatsTalent = MainData:GetData("Pets", true)[PetDataTalent['ID']]['Talents']
                StatusPets.Options:ChangeText(
                    'Talent \n[DMG] '.. TalentHandler.GetStatRank(PetStatsTalent['Dmg']) ..
                    '     [SPD] '.. TalentHandler.GetStatRank(PetStatsTalent['Spd']) ..
                    '     [CRIT] '.. TalentHandler.GetStatRank(PetStatsTalent['CDmg']) ..
                    '     [ABT] '.. TalentHandler.GetStatRank(PetStatsTalent['ADmg']) ..''
                )
                wait(.1)
            end
            if SaveSettings["Pet"]['Auto Essence'] then
                for i,v in pairs(MainData:GetData("Pets", true)) do
                    if SaveSettings["Pet"]['Auto Essence'] and table.find(SaveSettings["Pet"]['Select Rarity [Essence]'],PetStats[v.PetId].Rarity) and not v.Locked then
                        if SaveSettings["Pet"]['Ignore Godly (Not Del Godly)'] and v.Godly == false then
                            local args = { [1] = v.GUID }
                            game:GetService("ReplicatedStorage").Remote.Machines.EssenceMachine:FireServer(unpack(args))
                        elseif not SaveSettings["Pet"]['Ignore Godly (Not Del Godly)'] then
                            local args = { [1] = v.GUID }
                            game:GetService("ReplicatedStorage").Remote.Machines.EssenceMachine:FireServer(unpack(args))
                        end
                    end
                end
                wait(3)
            end
        end
    end)
    
    -- Bypass Attack Range & Instant Collect Coin & Auto Click & Auto Open Egg
    spawn(function()
        while wait() do
            if SaveSettings["Misc"]['Bypass Attack Range'] then
                Config.MaxTargetDistance = SaveSettings["Misc"]['Bypass Attack Range'] and 9e9 or 150
                Config.MaxAttackDistance = SaveSettings["Misc"]['Bypass Attack Range'] and 9e9 or 160
            end
    
            if SaveSettings["Misc"]['Auto Click'] then
                ClickButton(LocalPlayer.PlayerGui.MainGui.HUD.BottomButtons.Clicker)
            end
    
            if SaveSettings["Misc"]['Auto Ability'] then
                ClickButton(LocalPlayer.PlayerGui.MainGui.HUD.BottomButtons.AbilityButton)
            end
    
            if SaveSettings["Misc"]['Instant Collect Coin'] then
                CollectCoin()
                CollectImageDrop()
            end
        end
    end)
    spawn(function()
        while wait() do
            if SaveSettings["Egg"]['Auto Open Egg'] then
                local EggPart = GetOpenEgg(tostring(DateEgg[SaveSettings["Egg"]['Select World [Egg]']]))
                if EggPart == "Not Found" then
                    StatusEgg.Options:ChangeText("Egg Status : Pls Join The World First\nIf you want to open anywhere,enter the world 1 time.")
                elseif EggPart ~= "Not Found" then
                    StatusEgg.Options:ChangeText("Egg Status : Auto Open Eggs\nIf you want to open anywhere,enter the world 1 time.")
                    OpenEgg(EggPart,tonumber(SaveSettings["Egg"]['Select Amount']))
                end
            end
        end
    end)
    
    -- Auto Reroll Quirk
    spawn(function()
        while wait() do
            if SaveSettings["Pet"]['Auto Reroll Quirk'] then
                local PetDataQuirk = Table_PetBaseData[SaveSettings["Pet"]['Select Pet [Quirk]']]
                local PetDataPassives = MainData:GetData("Pets", true)[PetDataQuirk['ID']]['Passives']
                local NowPassives = ""
                if PetDataPassives['1'] ~= nil and tonumber(SaveSettings["Pet"]['Select Slot']) == 1 then
                    NowPassives = PassivesHandler.GetDisplayName(PetDataPassives['1'][1],PetDataPassives['1'][2])
                elseif PetDataPassives['1'] == nil and tonumber(SaveSettings["Pet"]['Select Slot']) == 1 then
                    NowPassives = "Nil"
                end
                if PetDataPassives['2'] ~= nil and tonumber(SaveSettings["Pet"]['Select Slot']) == 2 then
                    NowPassives = PassivesHandler.GetDisplayName(PetDataPassives['2'][1],PetDataPassives['2'][2])
                elseif PetDataPassives['2'] == nil and tonumber(SaveSettings["Pet"]['Select Slot']) == 2 then
                    NowPassives = "Nil"
                end
                StatusPetsQuirk.Options:ChangeText('Quirk : ' .. NowPassives)
    
                if not table.find(SaveSettings["Pet"]['Select Rarity [Quirk]'],NowPassives) then
                    local args = {
                        [1] = MainData:GetData("Pets", true)[PetDataQuirk['ID']]['GUID'],
                        [2] = tonumber(SaveSettings["Pet"]['Select Slot']),
                        [3] = SaveSettings["Pet"]['Premium Medal'] and true or false
                    }
                    game:GetService("ReplicatedStorage").Remote.Machines.PassiveMachine:FireServer(unpack(args))
                    local PetDataPassives = MainData:GetData("Pets", true)[PetDataQuirk['ID']]['Passives']
                    local NowPassives = ""
                    if PetDataPassives['1'] ~= nil and tonumber(SaveSettings["Pet"]['Select Slot']) == 1 then
                        NowPassives = PassivesHandler.GetDisplayName(PetDataPassives['1'][1],PetDataPassives['1'][2])
                    elseif PetDataPassives['1'] == nil and tonumber(SaveSettings["Pet"]['Select Slot']) == 1 then
                        NowPassives = "Nil"
                    end
                    if PetDataPassives['2'] ~= nil and tonumber(SaveSettings["Pet"]['Select Slot']) == 2 then
                        NowPassives = PassivesHandler.GetDisplayName(PetDataPassives['2'][1],PetDataPassives['2'][2])
                    elseif PetDataPassives['2'] == nil and tonumber(SaveSettings["Pet"]['Select Slot']) == 2 then
                        NowPassives = "Nil"
                    end
                    StatusPetsQuirk.Options:ChangeText('Quirk : ' .. NowPassives)
                end 
                wait(.1)
            end
        end
    end)
    
    -- Auto Scrap Skin
    spawn(function()
        while wait() do
            if SaveSettings["Item"]['Auto Scrap Skin'] then
                local ItemsScrap = MainData:GetData("Items", true)
                table.foreach(ItemsScrap,function(index,value)
                    if value[1].GUID and SaveSettings["Item"]['Auto Scrap Skin'] then
                        if table.find(SaveSettings["Item"]['Select Rarity Skin'],ItemStatsSkins[index].Rarity) then
                            local args = { [1] = {} }
                            args[1][tostring(index)] = {[1] = 1}
                            game:GetService("ReplicatedStorage").Remote.Data.ScrapItems:FireServer(unpack(args))
                        end
                    end
                end)
            end
        end
    end)
    
    -- Collect Spirit
    spawn(function()
        while wait() do
            if SaveSettings["Misc"]['Auto Collect Spirit'] and ( game:GetService("Workspace").Effects:FindFirstChild("SpecialSpirit") or game:GetService("Workspace").Effects:FindFirstChild("Spirit") ) then
                RemoteFolder.Drops.CaughtSpirit:FireServer()
                Spirit = game:GetService("Workspace").Effects:FindFirstChild("SpecialSpirit") or game:GetService("Workspace").Effects:FindFirstChild("Spirit")
                EffectsHandler.PlayLocalEffect("SpiritDisappear", Spirit)
                local CreateItemsTalentToken = {{Type = "Item", ItemId = "TalentToken", Amount = 15}}
                local Position_Spirit = Spirit:GetPivot().Position
                Bindable.Items.DropLocally:Fire(CreateItemsTalentToken, Position_Spirit)
                wait(1.5)
            end
            if SaveSettings["Misc"]['Auto Teleport TO Spirit World'] then
                UnlockEggAllMap()
            end
        end
    end)
    
    -- Farm Select
    spawn(function()
        while wait() do
            if SaveSettings["Auto Farm"]['Auto Farm Select'] and game:GetService("Workspace").Worlds:FindFirstChild(CheckWorld().Name) then
                for i,v in pairs(game:GetService("Workspace").Worlds:FindFirstChild(CheckWorld().Name).Enemies:GetChildren()) do
                    if SaveSettings["Auto Farm"]['Select Enemie'][WorldDate[CheckWorld().Name].DisplayName] ~= nil then
                        if SaveSettings["Auto Farm"]['Auto Farm Select'] and v:GetAttribute("Health") > 0 and table.find(SaveSettings["Auto Farm"]['Select Enemie'][WorldDate[CheckWorld().Name].DisplayName],DateEnemie[v.Name]) then
                            repeat wait()
                                table.foreach(CheckPet('GetPet'),function(a,b)
                                    if b:FindFirstChild("Target") and b.Target.Value == nil then
                                        SendPetOneTraget(b,v)
                                    end
                                end)
                            until v:GetAttribute("Health") <= 0 or not SaveSettings["Auto Farm"]['Auto Farm Select']
                        end
                    end
                end
            end
        end
    end)
    
    -- Town
    function CheckTowerOwner(Target)
        if game:GetService("Workspace").Worlds:FindFirstChild("Tower") then
            local MAPINFO = {}
            for i,v in next , game:GetService("Workspace").Worlds.Tower:GetChildren() do
                if v:IsA("Model") and v.Name ~= "Enemies" then
                    MAPINFO[v] = {
                        Name = v.Name,
                        CFrame = v:GetModelCFrame(),
                        Size = v:GetExtentsSize(),
                        Position = v:GetModelCFrame().Position
                    }
                end
            end
    
            local DATA = {}
            local key , min
            for i,v in next,MAPINFO do 
                if key and min then
                    if (v.CFrame.Position - Target.Position).magnitude < min then
                        key , min = i , (v.CFrame.Position - Target.Position).magnitude
                    end
                else
                    key , min = i , (v.CFrame.Position - Target.Position).magnitude
                end
            end
            if key and min then
                if min <= MAPINFO[key].Position.magnitude then
                    return MAPINFO[key].Name
                else
                    return "Not Found IsLand!!" , MAPINFO[key].Name
                end
            else
                return "API ERROR"
            end
        end
    end
    spawn(function()
        while wait() do
            if SaveSettings['Tower']['Auto Farm Tower'] then
                if game:GetService("Workspace").Worlds:FindFirstChild("Tower") and game:GetService("Workspace").Worlds:FindFirstChild("Tower"):FindFirstChild("Enemies") then
                    if game:GetService("Workspace").Worlds.Tower:FindFirstChild(CheckTowerOwner(LocalPlayer.Character.HumanoidRootPart.CFrame)) then
                        if SaveSettings["Tower"]['Collect Chest [Tower]'] and game:GetService("Workspace").Worlds.Tower:FindFirstChild(CheckTowerOwner(LocalPlayer.Character.HumanoidRootPart.CFrame)):FindFirstChild("TowerChest") then
                            Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Worlds.Tower:FindFirstChild(CheckTowerOwner(LocalPlayer.Character.HumanoidRootPart.CFrame)).TowerChest.HumanoidRootPart.CFrame
                            if game:GetService("Workspace").Worlds.Tower:FindFirstChild(CheckTowerOwner(LocalPlayer.Character.HumanoidRootPart.CFrame)).TowerChest.HumanoidRootPart:FindFirstChild("ChestPrompt") then
                                fireproximityprompt(game:GetService("Workspace").Worlds.Tower:FindFirstChild(CheckTowerOwner(LocalPlayer.Character.HumanoidRootPart.CFrame)).TowerChest.HumanoidRootPart.ChestPrompt)
                                wait(5)
                            end
                        elseif SaveSettings["Tower"]['Collect Chest [Tower]'] and game:GetService("Workspace").Worlds.Tower:FindFirstChild(CheckTowerOwner(LocalPlayer.Character.HumanoidRootPart.CFrame)):FindFirstChild("TowerChest2") then
                            Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Worlds.Tower:FindFirstChild(CheckTowerOwner(LocalPlayer.Character.HumanoidRootPart.CFrame)).TowerChest2.HumanoidRootPart.CFrame
                            if game:GetService("Workspace").Worlds.Tower:FindFirstChild(CheckTowerOwner(LocalPlayer.Character.HumanoidRootPart.CFrame)).TowerChest2.HumanoidRootPart:FindFirstChild("ChestPrompt") then
                                fireproximityprompt(game:GetService("Workspace").Worlds.Tower:FindFirstChild(CheckTowerOwner(LocalPlayer.Character.HumanoidRootPart.CFrame)).TowerChest2.HumanoidRootPart.ChestPrompt)
                                wait(5)
                            end
                        else
                            for i,v in pairs(game:GetService("Workspace").Worlds.Tower.Enemies:GetChildren()) do
                                if SaveSettings['Tower']['Auto Farm Tower'] and v:FindFirstChild("HumanoidRootPart") and CheckTowerOwner(v.HumanoidRootPart.CFrame) == CheckTowerOwner(LocalPlayer.Character.HumanoidRootPart.CFrame) then
                                    repeat wait()
                                        table.foreach(CheckPet('GetPet'),function(a,b)
                                            if b:FindFirstChild("Target") and b.Target.Value == nil then
                                                SendPetOneTraget(b,v)
                                            end
                                        end)
                                    until v:GetAttribute("Health") <= 0 or not SaveSettings["Auto Farm"]['Auto Farm Tower']
                                end
                            end
                        end
                    end
                else
                    game:GetService("ReplicatedStorage").Remote.Tower.StartTower:FireServer()
                    wait(.5)
                    repeat wait() until not LocalPlayer.PlayerGui:FindFirstChild('TeleportGui')
                end
            end
        end
    end)
    
    -- Raid
    function FindRaids(Target)
        if game:GetService("Workspace").Worlds:FindFirstChild("Raids") then
            local MAPINFO = {}
            for i,v in next , game:GetService("Workspace").Worlds.Raids:GetChildren() do
                if v:IsA("Model") and v.Name ~= "Enemies" then
                    MAPINFO[v] = {
                        Name = v.Name,
                        CFrame = v:GetModelCFrame(),
                        Size = v:GetExtentsSize(),
                        Position = v:GetModelCFrame().Position
                    }
                end
            end
    
            local DATA = {}
            local key , min
            for i,v in next,MAPINFO do 
                if key and min then
                    if (v.CFrame.Position - Target.Position).magnitude < min then
                        key , min = i , (v.CFrame.Position - Target.Position).magnitude
                    end
                else
                    key , min = i , (v.CFrame.Position - Target.Position).magnitude
                end
            end
            if key and min then
                if min <= MAPINFO[key].Position.magnitude then
                    return MAPINFO[key].Name
                else
                    return "Not Found IsLand!!" , MAPINFO[key].Name
                end
            else
                return "API ERROR"
            end
        end 
    end
    function GetRaids(Mode)
        if game:GetService("Workspace").Worlds:FindFirstChild("Hub") or game:GetService("Workspace").Worlds:FindFirstChild("Raids") then
            local RaidRooms = game:GetService("CollectionService"):GetTagged("Raid Room")
            if Mode == "Owner" then
                for i,v in pairs(RaidRooms) do
                    if v:FindFirstChild("Owner") and tostring(v:FindFirstChild("Owner").Value) == LocalPlayer.Name then
                        return v
                    end
                end
                return "Not Found"
            elseif Mode == "FindRoom" then
                for i,v in pairs(RaidRooms) do
                    if v:FindFirstChild("Door") and v:FindFirstChild("Door").Part2.Transparency ~= -1 and v:FindFirstChild("Owner") and v:FindFirstChild("Owner").Value == nil then
                        return v
                    end
                end
                return "Not Found"
            elseif Mode == "GetChest" then
                for i,v in ipairs(game:GetService("Workspace").Worlds.Raids:GetDescendants()) do
                    if v.Name == "RaidChest" and FindRaids(v:GetModelCFrame()) == FindRaids(game.Players.LocalPlayer.Character.HumanoidRootPart) then
                        if v:FindFirstChild('HumanoidRootPart') and v:FindFirstChild('HumanoidRootPart'):FindFirstChild('ChestPrompt') then
                            return v
                        end
                    end
                end
                return "None"
            elseif Mode == "CheckJJKSomething"  then
                if game:GetService("Workspace").Worlds:FindFirstChild("Raids")[FindRaids(game.Players.LocalPlayer.Character.HumanoidRootPart)]:GetAttribute("RaidId") == 'JJKRaid' then
                    for i,v in pairs(game:GetService("Workspace").Worlds:FindFirstChild("Raids").Enemies:GetChildren()) do
                        if v:FindFirstChild("HumanoidRootPart") and v:GetAttribute("Health") > 0 and v:GetAttribute("Invulnerable") ~= true and FindRaids(v:GetModelCFrame()) == FindRaids(game.Players.LocalPlayer.Character.HumanoidRootPart) then
                            if table.find({'FlyCurse','FlyCurse2','BridgeCurse','BridgeCurse2','Finger','FingerRaid','Hanami'},v.Name) then
                                return v
                            end
                        end
                    end
                    for i,v in pairs(game:GetService("Workspace").Worlds:FindFirstChild("Raids").Enemies:GetChildren()) do
                        if v:FindFirstChild("HumanoidRootPart") and v:GetAttribute("Health") > 0 and v:GetAttribute("Invulnerable") ~= true and FindRaids(v:GetModelCFrame()) == FindRaids(game.Players.LocalPlayer.Character.HumanoidRootPart) then
                            if table.find({'Mahito'},v.Name) then
                                return v
                            end
                        end
                    end
                    return "None"
                end
            end
        end 
    end
    spawn(function()
        while wait() do
            if SaveSettings["Raids"]['Auto Farm Raid'] then
                if game:GetService("Workspace").Worlds:FindFirstChild("Hub") then
                    if GetRaids("Owner") ~= "Not Found" then
                        local OwnerRaidRooms = GetRaids("Owner")
                        local args = {
                            [1] = OwnerRaidRooms,
                            [2] = "Private",
                            [3] = SaveSettings["Raids"]['Private Room']
                        }
                        
                        game:GetService("ReplicatedStorage").Remote.Raid.SetRaidSetting:FireServer(unpack(args))
                        local args = {
                            [1] = OwnerRaidRooms,
                            [2] = "TargetWorld",
                            [3] = DateWorld[SaveSettings["Raids"]["Select Raids [World]"]].WorldName
                        }
                        
                        game:GetService("ReplicatedStorage").Remote.Raid.SetRaidSetting:FireServer(unpack(args))
                        local args = {
                            [1] = OwnerRaidRooms,
                            [2] = "Difficulty",
                            [3] = SaveSettings["Raids"]['Select Difficulty']
                        }
                        
                        game:GetService("ReplicatedStorage").Remote.Raid.SetRaidSetting:FireServer(unpack(args))
                        local args = {
                            [1] = OwnerRaidRooms
                        }
                        game:GetService("ReplicatedStorage").Remote.Raid.StartRaid:FireServer(unpack(args))
                        repeat wait() until LocalPlayer.PlayerGui:FindFirstChild('TeleportGui')
                        repeat wait() until not LocalPlayer.PlayerGui:FindFirstChild('TeleportGui')
                    elseif GetRaids("FindRoom") ~= "Not Found" then
                        Character.HumanoidRootPart:PivotTo(GetRaids("FindRoom").CFrame)
                    end
                elseif game:GetService("Workspace").Worlds:FindFirstChild("Raids") then
                    if LocalPlayer.PlayerGui.MainGui.HUD.RaidHUD.TimerDisplay.Timer:GetAttribute("EndTime") == 0 then
                        if SaveSettings["Raids"]['Collect Chest [After Finish]'] then
                            if GetRaids("GetChest") == "None" then
                                local args = { [1] = "Hub" }
                                game:GetService("ReplicatedStorage").Remote.Player.Teleport:FireServer(unpack(args))
                                wait(.5)
                                repeat wait() until not LocalPlayer.PlayerGui:FindFirstChild('TeleportGui')
                            elseif GetRaids("GetChest") ~= "None" and GetRaids("GetChest").HumanoidRootPart:FindFirstChild("ChestPrompt") then
                                Character.HumanoidRootPart:PivotTo(GetRaids("GetChest"):GetModelCFrame())
                                wait(.1)
                                fireproximityprompt(GetRaids("GetChest").HumanoidRootPart.ChestPrompt)
                                wait(5)
                            end
                        else
                            local args = { [1] = "Hub" }
                            game:GetService("ReplicatedStorage").Remote.Player.Teleport:FireServer(unpack(args))
                            wait(.5)
                            repeat wait() until not LocalPlayer.PlayerGui:FindFirstChild('TeleportGui')
                        end
                    elseif LocalPlayer.PlayerGui.MainGui.HUD.RaidHUD.TimerDisplay.Timer:GetAttribute("EndTime") ~= 0 then
                        if SaveSettings["Raids"]['Auto Farm Raid'] then
                            if game:GetService("Workspace").Worlds:FindFirstChild("Raids")[FindRaids(game.Players.LocalPlayer.Character.HumanoidRootPart)]:GetAttribute("RaidId") == 'JJKRaid' then
                                for i,v in pairs(game:GetService("Workspace").Worlds:FindFirstChild("Raids").Enemies:GetChildren()) do
                                    if v.Name == GetRaids('CheckJJKSomething').Name and SaveSettings["Raids"]['Auto Farm Raid'] and v:FindFirstChild("HumanoidRootPart") and v:GetAttribute("Health") > 0 and v:GetAttribute("Invulnerable") ~= true and FindRaids(v:GetModelCFrame()) == FindRaids(game.Players.LocalPlayer.Character.HumanoidRootPart) then
                                        repeat wait()
                                            if v ~= nil then
                                                if SaveSettings["Raids"]['Go On The Head [Mob]'] then
                                                    Character.HumanoidRootPart:PivotTo(v:GetModelCFrame() * CFrame.new(0,15,5))
                                                end
                                                table.foreach(CheckPet('GetPet'),function(a,b)
                                                    if b:FindFirstChild("Target") and (b.Target.Value == nil or b.Target.Value ~= v ) then
                                                        SendPetOneTraget(b,v)
                                                    end
                                                end)
                                            end
                                        until v:GetAttribute("Health") <= 0 or not SaveSettings["Raids"]['Auto Farm Raid'] or v:GetAttribute("Invulnerable") == true
                                    end
                                end
                            else
                                for i,v in pairs(game:GetService("Workspace").Worlds:FindFirstChild("Raids").Enemies:GetChildren()) do
                                    if SaveSettings["Raids"]['Auto Farm Raid'] and v:FindFirstChild("HumanoidRootPart") and v:GetAttribute("Health") > 0 and v:GetAttribute("Invulnerable") ~= true and FindRaids(v:GetModelCFrame()) == FindRaids(game.Players.LocalPlayer.Character.HumanoidRootPart) then
                                        repeat wait()
                                            if v ~= nil then
                                                if SaveSettings["Raids"]['Go On The Head [Mob]'] then
                                                    Character.HumanoidRootPart:PivotTo(v:GetModelCFrame() * CFrame.new(0,15,5))
                                                end
                                                table.foreach(CheckPet('GetPet'),function(a,b)
                                                    if b:FindFirstChild("Target") and (b.Target.Value == nil or b.Target.Value ~= v ) then
                                                        SendPetOneTraget(b,v)
                                                    end
                                                end)
                                            end
                                        until v:GetAttribute("Health") <= 0 or not SaveSettings["Raids"]['Auto Farm Raid'] or v:GetAttribute("Invulnerable") == true
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end)
    
    -- [[ No Clip ]]
    local function BodyVelocity()
        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("BodyVelocity") then
            local aC = Instance.new("BodyVelocity")
            aC.Velocity = Vector3.new(0, 0, 0)
            aC.MaxForce = Vector3.new(900000, 900000, 900000)
            aC.P = 9000
            aC.Parent = game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
        end
    end
    local function Disable_BodyVelocity()
        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("BodyVelocity") then
            for i, v in pairs(game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart"):GetChildren()) do
                if v:IsA("BodyVelocity") then
                    v:Destroy()
                end
            end
        end
    end
    
    coroutine.wrap(function()
        game:GetService("RunService").Heartbeat:Connect(function()
            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") then
                if SaveSettings["Raids"]['Auto Farm Raid'] and game:GetService("Workspace").Worlds:FindFirstChild("Raids") then
                    BodyVelocity()
                else
                    Disable_BodyVelocity()
                end 
            end
        end)
    end)()
    ------------------------------------------------------ [[ Fix Ui Lib ]] ------------------------------------------------------
    UI:SelectPage({
        page = UI.pages[1], 
        toggle = true
    })
    -- Anti Afk
    DalyKick = 0
    local VirtualUser = game:GetService("VirtualUser")
    spawn(function()
        while wait() do
            pcall(function() 
                VirtualUser:CaptureController()
                VirtualUser:SetKeyDown("w",key)
                wait()
                VirtualUser:CaptureController()
                VirtualUser:SetKeyUp("w",key)
                wait(1000)
            end)
        end
    end)

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

end