if game.CoreGui:FindFirstChild("HolyScript") then game.CoreGui:FindFirstChild("HolyScript"):Destroy() end
if game.CoreGui:FindFirstChild("KeySystemGui") then game.CoreGui:FindFirstChild("KeySystemGui"):Destroy() end

local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local LocalPlayer = game:GetService("Players").LocalPlayer
local Mouse = LocalPlayer:GetMouse()

local KeySystemGui = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local UIGradient = Instance.new("UIGradient")
local UIGradient_2 = Instance.new("UIGradient")
local TextButton_2 = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local UIGradient_3 = Instance.new("UIGradient")
local lock = Instance.new("ImageButton")
local TextBox = Instance.new("TextBox")
local UICorner_4 = Instance.new("UICorner")
local ImageButton = Instance.new("ImageButton")
local UICorner_5 = Instance.new("UICorner")

KeySystemGui.Name = "KeySystemGui"
KeySystemGui.Parent = game.CoreGui
KeySystemGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = KeySystemGui
Main.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.5, -175, 0.5, -62)
Main.Size = UDim2.new(0, 350, 0, 125)

UICorner.CornerRadius = UDim.new(0, 6)
UICorner.Parent = Main

TextLabel.Parent = Main
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.121428572, 0, 0, 4)
TextLabel.Size = UDim2.new(0, 115, 0, 36)
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.RichText = true
TextLabel.Text = 'Key System\n<font size="14">Discord : WjGEt7pGDM</font>'
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 18.000
TextLabel.TextXAlignment = Enum.TextXAlignment.Left

TextButton.Parent = Main
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.0289999992, 0, 0.751999974, 0)
TextButton.Size = UDim2.new(0, 160, 0, 25)
TextButton.ClipsDescendants = true
TextButton.Font = Enum.Font.SourceSansBold
TextButton.Text = "Copy Key Link"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextSize = 16.000
TextButton.TextWrapped = true

UICorner_2.CornerRadius = UDim.new(0, 6)
UICorner_2.Parent = TextButton

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 97, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(96, 239, 255))}
UIGradient.Parent = TextButton

UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 97, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(96, 239, 255))}
UIGradient_2.Parent = TextButton

TextButton_2.Parent = Main
TextButton_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.BorderSizePixel = 0
TextButton_2.Position = UDim2.new(0.514285743, 0, 0.751999974, 0)
TextButton_2.Size = UDim2.new(0, 160, 0, 25)
TextButton_2.Font = Enum.Font.SourceSansBold
TextButton_2.Text = "Copy Link Discord"
TextButton_2.ClipsDescendants = true
TextButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.TextSize = 16.000

UICorner_3.CornerRadius = UDim.new(0, 6)
UICorner_3.Parent = TextButton_2

UIGradient_3.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 97, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(96, 239, 255))}
UIGradient_3.Parent = TextButton_2

lock.Name = "lock"
lock.Parent = Main
lock.BackgroundTransparency = 1.000
lock.Position = UDim2.new(0.0285714287, 0, 0.115999997, 0)
lock.Size = UDim2.new(0, 25, 0, 25)
lock.ZIndex = 2
lock.Image = "rbxassetid://3926305904"
lock.ImageRectOffset = Vector2.new(4, 684)
lock.ImageRectSize = Vector2.new(36, 36)

TextBox.Parent = Main
TextBox.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextBox.BorderSizePixel = 0
TextBox.Position = UDim2.new(0.0285714287, 0, 0.416000009, 0)
TextBox.Size = UDim2.new(0, 295, 0, 35)
TextBox.Font = Enum.Font.SourceSans
TextBox.PlaceholderText = "insert key (if you can't copy just join discord)"
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(255,255,255)
TextBox.TextSize = 16.000

UICorner_4.CornerRadius = UDim.new(0, 6)
UICorner_4.Parent = TextBox

ImageButton.Parent = Main
ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageButton.BackgroundTransparency = 0.750
ImageButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageButton.BorderSizePixel = 0
ImageButton.Position = UDim2.new(0.885714293, 0, 0.432000011, 0)
ImageButton.Size = UDim2.new(0, 32, 0, 32)
ImageButton.Image = "rbxassetid://3926305904"
ImageButton.ImageRectOffset = Vector2.new(84, 204)
ImageButton.ImageRectSize = Vector2.new(40, 40)

UICorner_5.CornerRadius = UDim.new(0, 6)
UICorner_5.Parent = ImageButton

local function RippleEffect(object)
    spawn(function()
        local Ripple = Instance.new("ImageLabel")
        Ripple.Name = "Ripple"
        Ripple.Parent = object
        Ripple.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Ripple.BackgroundTransparency = 1.000
        Ripple.ZIndex = 8
        Ripple.Image = "rbxassetid://2708891598"
        Ripple.ImageTransparency = 0.5
        Ripple.ScaleType = Enum.ScaleType.Fit
        Ripple.Position = UDim2.new((Mouse.X - Ripple.AbsolutePosition.X) / object.AbsoluteSize.X, 0, (Mouse.Y - Ripple.AbsolutePosition.Y) / object.AbsoluteSize.Y, 0)
        TweenService:Create(Ripple, TweenInfo.new(1.25, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Position = UDim2.new(-5.5, 0, -15, 0), Size = UDim2.new(12, 0, 30, 0)}):Play()
        wait(0.75)
        TweenService:Create(Ripple, TweenInfo.new(1, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {ImageTransparency = 1}):Play()
        wait(.75)
        Ripple:Destroy()
    end)
end

TextButton.MouseButton1Down:Connect(function()
    RippleEffect(TextButton)
    TextButton.Text = "Copy Link Success"
    setclipboard('https://direct-link.net/972521/holyshz-hub-key-1')
    delay(.5,function()
        TextButton.Text = "Copy Key Link"
    end)
end)

TextButton_2.MouseButton1Down:Connect(function()
    RippleEffect(TextButton_2)
    TextButton_2.Text = "Copy Link Success"
    setclipboard('WjGEt7pGDM')
    delay(.5,function()
        TextButton_2.Text = "Copy Link Discord"
    end)
end)

KeySuccess = false

if not isfolder("HolyShz") then makefolder("HolyShz") end
if not isfile("/HolyShz/SaveKey.txt") then
    writefile("/HolyShz/SaveKey.txt", "")
else
    SaveKeyCheck = readfile("/HolyShz/SaveKey.txt")
end

if SaveKeyCheck == game:HttpGet('https://pastebin.com/raw/05m0bkNr') then
    KeySuccess = true
else
    ImageButton.MouseButton1Click:Connect(function()
        if TextBox.Text == game:HttpGet('https://pastebin.com/raw/05m0bkNr') then
            if not isfile("/HolyShz/SaveKey.txt") then
                writefile("/HolyShz/SaveKey.txt", TextBox.Text)
            else
                writefile("/HolyShz/SaveKey.txt", TextBox.Text)
            end
            TextBox.Text = "Correct key"
            wait(.75)
            KeySuccess = true
        else
            TextBox.Text = "Invalid key"
            wait(.75)
            TextBox.Text = ""
            KeySuccess = false
        end
    end)
end

if _G.NoClip then _G.NoClip:Disconnect() _G.NoClip = nil end
while wait() do if KeySuccess then break end end
if game.CoreGui:FindFirstChild("KeySystemGui") then game.CoreGui:FindFirstChild("KeySystemGui"):Destroy() end

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

            ["Auto Join World Select"] = false,
            ['Teleport [Farm in Range]'] = false,
            ["Range [ Farm in Range ]"] = 150,
        },
        ["Raids"] = {
            ["Select Raids [World]"] = "Green Planet",
            ['Select Difficulty'] = 'Easy',
            ['Private Room'] = false,
            ['Auto Farm Raid'] = false,
            ['Collect Chest [First Chest Leave]'] = false,
            ['Collect Chest [After Finish]'] = false,
            ['Go On The Head [Mob]'] = false,
        },
        ["MaxDamageChallenge"] = {
            ['Auto Farm'] = false,
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
            ['Auto Teleport To Spirit World'] = false,
        },
        ['Egg'] = {
            ['Select World [Egg]'] = "Black Hole Orb",
            ['Select Amount'] = 1,
    
            ['Auto Open Egg'] = false,
            ["Auto Teleport Egg Near"] = false,
        },
        ['Skin'] = {
            ['Select Rarity [Skin]'] = "Common",
            ['Select Skin Reforging'] = "",
            ['Select Skin Passive'] = {},
            ['Auto Skin Reforging'] = false,
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
        ["Event Halloween"] = {
            ['Select Farm Method'] = "Mon",
            ['Auto Farm HalloWeen'] = false,

            ['Select Amount Hatch'] = 1,
            ['Auto Open Orbs'] = false
        },
        ["SaveSetting"] = {
            ['FPS Value'] = 15,
            ['FPS Cap'] = false,
            ['Low CPU Mode'] = false,

            ['Hide Key'] = "Enum.KeyCode.LeftControl"
        }
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
    local Bindable = ReplicatedStorage:WaitForChild("Bindable")

    local LocalDairebStore2 = require(ModuleScripts.DairebStore2.LocalDairebStore2)

    local PassivesHandler = require(ModuleScripts.Handlers.PassiveRenderHandler)
    local MultiplierHandler = require(ModuleScripts.Handlers.MultiplierHandler)
    local ItemManipulator = require(ModuleScripts.Handlers.ItemManipulator)
    local PetStatHandler = require(ModuleScripts.Handlers.PetStatHandler)
    local EffectsHandler = require(ModuleScripts.Handlers.EffectsHandler)
    local TalentHandler = require(ModuleScripts.Handlers.TalentHandler)

    local NumToString = require(ModuleScripts.SharedFunctions.NumToString)

    local GameConfig = require(ReplicatedStorage.ModuleScripts.Config.GameConfig)
    local SkinPassiveStats = require(ModuleScripts.Config.SkinPassiveStats)
    local PassiveStats = require(ModuleScripts.Config.PassiveStats)
    local ItemStats = require(ModuleScripts.Config.ItemStats)
    local PetStats = require(ModuleScripts.Config.PetStats)
    local GameBalance = require(ModuleScripts.GameBalance)

    local GetSpiritData = RemoteFolder.Spirit.GetSpiritData:InvokeServer()

    local MainData = LocalDairebStore2.GetDairebStoreAsync("MainData")
    local NowQuestName = MainData:GetData("CurrentTargetQuest", true)
    local Questlines = MainData:GetData("Questlines", true)
    local TeamsData = MainData:GetData("Teams", true)

    for i,v in pairs(MainData:GetData("Pets", true)) do
        print(PetStatHandler.GetPassiveSlots(v))
    end
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
        local events = { "Activated" }
        for i,v in pairs(events) do
            for i,v in pairs(getconnections(ButtonClick[v])) do
                v.Function()
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
                    repeat wait() until not v:FindFirstChild("Pickup")
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
                    repeat wait() until not v:FindFirstChild("Pickup")
                end
            end
        end
    end

    function CollectCoin()
        for i,v in pairs(game:GetService("Workspace").Effects:GetChildren()) do
            if v.Name == "CurrencyDrop" and v:FindFirstChild("Pickup") then
                if v:FindFirstChild("Pickup") then
                    v.Pickup:Fire()
                    v:FindFirstChild("Pickup"):Destroy()
                    repeat wait() until not v:FindFirstChild("Pickup")
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
                    repeat wait() until not v:FindFirstChild("Pickup")
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
            [2] = MultiplierHandler.GetMultiplier("OpenAmount")
        }
        ReplicatedStorage.Remote.Orbs.OpenOrbs:FireServer(unpack(args))
    end
    
    function GetOpenEgg(EggsName)
        local MAPINFO = {}
        local EggsName = EggsName
        for i,v in pairs(game:GetService("Workspace").Worlds:GetChildren()) do
            for i1,v1 in pairs(v:GetChildren()) do
                if v1.Name == EggsName then
                    MAPINFO[#MAPINFO + 1] = {
                        Base = v1,
                        Name = v1.Name,
                        CFrame = v1:GetModelCFrame(),
                        Size = v1:GetExtentsSize(),
                        Position = v1:GetModelCFrame().Position
                    }
                end
                if v1.Name == "Orb" and v:IsA("Folder") then
                    for j,k in pairs(v1:GetChildren()) do
                        if k.Name == EggsName then
                            MAPINFO[#MAPINFO + 1] = {
                                Base = k,
                                Name = k.Name,
                                CFrame = k:GetModelCFrame(),
                                Size = k:GetExtentsSize(),
                                Position = k:GetModelCFrame().Position
                            }
                        end
                    end
                end
            end
        end

        local key , min
        for i,v in next,MAPINFO do 
            if key and min then
                if (v.CFrame.Position - Character:GetModelCFrame().Position).magnitude < min then
                    key , min = i , (v.CFrame.Position - Character:GetModelCFrame().Position).magnitude
                end
            else
                key , min = i , (v.CFrame.Position - Character:GetModelCFrame().Position).magnitude
            end
        end
        if key and min then
            if min <= MAPINFO[key].Position.magnitude then
                return MAPINFO[key].Base
            else
                return "Not Found IsLand!! " .. MAPINFO[key].Name
            end
        else
            return "API ERROR"
        end
    end
    function UnlockEggAllMap()
        for i,v in pairs(MainData:GetData("DiscoveredWorlds", true)) do
            if not string.find(i,"Hub") and SaveSettings["Misc"]['Auto Teleport TO Spirit World'] then
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
    
    local Table_DifficultiesRaid,Table_DifficultiesRaid_Select = {},{}
    for i,v in pairs(GameBalance.RaidTotalHP) do
        Table_DifficultiesRaid[#Table_DifficultiesRaid + 1] ={
            Difficulty = i,
            Cost = v
        }
    end

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
    
    -- Reforging Skin
    local Table_ListItemSkin,Base_ListItemSkin = {},{}
    local Base_SkinTable,List_SkinTable = {},{}
    local RaritySkin = {}
    RarityList = {}
    RarityList[1] = "Common"
    RarityList[2] = "Rare"
    RarityList[3] = "Epic"
    RarityList[4] = "Legendary"
    RarityList[5] = "Mythical"
    RarityList[6] = "Secret"
    local ItemsInventory = MainData:GetData("Items", true)
    for i,v_Rarity in pairs(RarityList) do
        TextRarity = v_Rarity == "Secret" and "Cosmic" or v_Rarity
        table.insert(RaritySkin,TextRarity)

        if List_SkinTable[TextRarity] == nil then
            List_SkinTable[TextRarity] = {}
        end

        table.foreach(SkinPassiveStats,function(index,value)
            if v_Rarity == value.Rarity then
                if Table_ListItemSkin[TextRarity] == nil then
                    Table_ListItemSkin[TextRarity] = {}
                end
                Description = value.Description:split("\n")
                DescriptionSkin = table.concat(Description, ", ")

                table.insert(Table_ListItemSkin[TextRarity],value.DisplayName.. ": " ..DescriptionSkin)
                Base_ListItemSkin[value.DisplayName.. ": " ..DescriptionSkin] = index
            end
        end)
    end
    table.foreach(ItemsInventory,function(index,value)
        if ItemStats[index].Skin then
            TextRarity = ItemStats[index].Rarity == "Secret" and "Cosmic" or ItemStats[index].Rarity
            table.foreach(value,function(i,v)
                if v.Pet then
                    TextRarity = ItemStats[index].Rarity == "Secret" and "Cosmic" or ItemStats[index].Rarity
                    local Pets = MainData:GetData({"Pets",v.Pet}, true)
                    local TitleName = string.format("Skin %s [%s] | Equipped on %s [%s]",ItemStats[index].DisplayName, index , Pets.CustomName or Pets.PetId, i)

                    table.insert(List_SkinTable[TextRarity],TitleName)
                    Base_SkinTable[TitleName] = {
                        Number = i,
                        SkinName = index,
                        ID = v.GUID
                    }

                end
            end)
        end
    end)

    -- World
    table.sort(Table_DifficultiesRaid,function(a,b)
        return a['Cost'] < b['Cost']
    end)
    table.foreach(Table_DifficultiesRaid,function(a,b)
        table.insert(Table_DifficultiesRaid_Select,b.Difficulty)
    end)

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
        if not string.find(b.Name,"Pumpkin") then
            table.insert(Egg_Select,b.Name)
        end
    end)
    ------------------------------------------------------ [[ Lib Ui ]] ------------------------------------------------------
    local Venyx = loadstring(game:HttpGet("https://raw.githubusercontent.com/NoNiName/Library/main/UILibrary/HolyUiV3"))()
    
    local UI = Venyx.new({
        title = "Anime Champions Simulator",
        Version = "Version 1.0.833.3"
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
        icon = 7539983773
    })
    local AutoFarm_Select = MainCreateTap:addSection({
        title = "Auto Farm Select"
    })
    local AutoFarm_Tower = MainCreateTap:addSection({
        title = "Auto Farm Tower"
    })
    local AutoFarm_MaxDamage = MainCreateTap:addSection({
        title = "Auto MaxDamage Challenge"
    })
    local AutoFarm_Raids = MainCreateTap:addSection({
        title = "Auto Farm Raids"
    })
    local AutoFarm_Misc = MainCreateTap:addSection({
        title = "Misc"
    })
    -- Event
    if MainData:GetData("HalloweenCoins", true) then
        local EventCreateTap = UI:addPage({
            title = "• Event",
            icon = 1
        })
        local AutoFarmHalloween_Event = EventCreateTap:addSection({
            title = "Auto Farm Halloween"
        })

        AutoFarmHalloween_Event:addDropdown({
            title = "Select Farm Method",
            list = {"Mon","Mini Boss", "Boss"}, 
            default = SaveSettings["Event Halloween"]['Select Farm Method'],
            callback = function(v)
                SaveSettings["Event Halloween"]['Select Farm Method'] = v
                Save()
            end;
        })
        AutoFarmHalloween_Event:addToggle({
            title = "Auto Farm HalloWeen",
            default = SaveSettings["Event Halloween"]['Auto Farm HalloWeen'],
            callback = function(v)
                SaveSettings["Event Halloween"]['Auto Farm HalloWeen'] = v
                Save()
            end ,
        })

        local AutoOpenOrbs_Event = EventCreateTap:addSection({
            title = "Auto Open Orbs - Halloween"
        })

        AutoOpenOrbs_Event:addDropdown({
            title = "Select Amount Hatch",
            list = {1,3,10}, 
            default = SaveSettings["Event Halloween"]['Select Amount Hatch'],
            callback = function(v)
                SaveSettings["Event Halloween"]['Select Amount Hatch'] = v
                Save()
            end;
        })
        AutoOpenOrbs_Event:addToggle({
            title = "Auto Open Orbs",
            default = SaveSettings["Event Halloween"]['Auto Open Orbs'],
            callback = function(v)
                SaveSettings["Event Halloween"]['Auto Open Orbs'] = v
                Save()
            end ,
        })
        spawn(function()
            while wait() do
                if SaveSettings["Event Halloween"]['Auto Open Orbs'] then
                    local args = {
                        [1] = "HalloweenOrb2",
                        [2] = tonumber(SaveSettings["Event Halloween"]['Select Amount Hatch'])
                    }
                    game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("Store"):WaitForChild("PurchaseOrb"):FireServer(unpack(args))
                end
            end
        end)
    end
    -- Pet
    local PetCreateTap = UI:addPage({
        title = "Pet",
        icon = 10885655986
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
        icon = 7939410236
    })
    local EggItems_Eggs = EggCreateTap:addSection({
        title = "Egg & Items - Eggs"
    })
    local EggItems_Items = EggCreateTap:addSection({
        title = "Egg & Items - Items"
    })
    -- Skin
    local SkinCreateTap = UI:addPage({
        title = "Skin",
        icon = 15067390895
    })
    local SkinSetting_Reforging = SkinCreateTap:addSection({
        title = "Skin Setting - Reforging"
    })
    local SkinSetting_SkinPassiveStats = SkinCreateTap:addSection({
        title = "Skin Setting - Skin Passive Stats"
    })
    -- Teleport
    local TeleportCreateTap = UI:addPage({
        title = "Teleport",
        icon = 6723742952
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
        icon = 11413045091
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
    AutoFarm_Select:addToggle({
        title = "Auto Join World Select",
        default = SaveSettings["Auto Farm"]["Auto Join World Select"],
        callback = function(v)
            SaveSettings["Auto Farm"]["Auto Join World Select"] = v
            Save()
        end ,
    })
    AutoFarm_Select:addToggle({
        title = "Teleport [Farm in Range]",
        default = SaveSettings["Auto Farm"]["Teleport [Farm in Range]"],
        callback = function(v)
            SaveSettings["Auto Farm"]["Teleport [Farm in Range]"] = v
            Save()
        end ,
    })
    AutoFarm_Select:addSlider({
        title = "Teleport in Range",
        default = SaveSettings["Auto Farm"]["Range [ Farm in Range ]"],
        min = 0,
        max = 10000,
        callback = function(value)
            SaveSettings["Auto Farm"]["Range [ Farm in Range ]"] = value
            Save()
        end
    })

    ------------------------------------------------------ [[ Auto Farm Raids ]] ------------------------------------------------------

    local CountTimeRaids = AutoFarm_Raids:addLabel({title = "pls. Enable 'Auto Farm Raid' !!!"})
    local TableRaids,Select_Raids = {},{}
    local WorldDate = require(game:GetService("ReplicatedStorage").ModuleScripts.Config.WorldData)
    for i,v in pairs(WorldDate) do
        if not v.NoRaid then
            if not v.Hidden then
                table.insert(TableRaids,v.DisplayName)
            end
        end
    end
    table.foreach(Table_World,function(a,b)
        if table.find(TableRaids,b.Name) then
            table.insert(Select_Raids,b.Name)
        end
    end)
    AutoFarm_Raids:addDropdown({
        title = "Select Raids [World]",
        list = Select_Raids, 
        default = SaveSettings["Raids"]["Select Raids [World]"],
        callback = function(v)
            SaveSettings["Raids"]["Select Raids [World]"] = v
            Save()
        end;
    })
    AutoFarm_Raids:addDropdown({
        title = "Select Difficulty",
        list = Table_DifficultiesRaid_Select, 
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
        title = "Collect Chest [First Chest Leave]",
        default  = SaveSettings["Raids"]['Collect Chest [First Chest Leave]'] ,
        callback = function(v)
            SaveSettings["Raids"]['Collect Chest [First Chest Leave]'] = v
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
    RaidKeySelectLabel = AutoFarm_Raids:addLabel({title = "Raid Chest Key Count : N/s"})
    ------------------------------------------------------ [[ Auto MaxDamageChallenge ]] ------------------------------------------------------
    AutoFarm_MaxDamage:addToggle({
        title = "Auto MaxDamage Challenge",
        default = SaveSettings["MaxDamageChallenge"]['Auto Farm'] ,
        callback = function(v)
            SaveSettings["MaxDamageChallenge"]['Auto Farm'] = v
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
    ------------------------------------------------------ [[ Auto Skin Reforging ]] ------------------------------------------------------
    SkinSelectLabel = SkinSetting_Reforging:addLabel({title = "Skin Select : N/s"})
    SkinStatusSelectLabel = SkinSetting_Reforging:addLabel({title = "Skin Status : N/s"})
    SkinScrapSelectLabel = SkinSetting_Reforging:addLabel({title = "Scrap : N/s"})
    SkinSetting_Reforging:addLabel({title = "#Warning : If your Change ' Rarity ' Pls. \nChoose ' Passive ' again"})
    SkinSetting_Reforging:addLabel({title = "Select Skin Show Only Equip On Champions [Pet]"})
    FSSKIN = false
    SkinSetting_Reforging:addDropdown({
        title = "Select Rarity",
        list = RaritySkin, 
        default = SaveSettings['Skin']['Select Rarity [Skin]'],
        callback = function(v)
            SaveSettings['Skin']['Select Rarity [Skin]'] = v
            Save()
            if FSSKIN then RefreshSelectSkin() RefreshSelectSkinPassive() end
        end;
    })
    SelectSkinReforging = SkinSetting_Reforging:addDropdown({
        title = "Select Skin",
        list = List_SkinTable[SaveSettings['Skin']['Select Rarity [Skin]']], 
        default = SaveSettings['Skin']['Select Skin Reforging'],
        callback = function(v)
            SaveSettings['Skin']['Select Skin Reforging'] = v
            Save()
        end;
    })
    SelectSkinPassive = SkinSetting_Reforging:addMulitDropdown({
        title = "Select Passive",
        list = Table_ListItemSkin[SaveSettings['Skin']['Select Rarity [Skin]']], 
        default = SaveSettings['Skin']['Select Skin Passive'],
        callback = function(v)
            SaveSettings['Skin']['Select Skin Passive'] = v
            Save()
        end;
    })
    SkinSetting_Reforging:addToggle({
        title = "Auto Skin Reforging",
        default  = SaveSettings['Skin']['Auto Skin Reforging'] ,
        callback = function(v)
            SaveSettings['Skin']['Auto Skin Reforging'] = v
            Save()
        end ,
    })

    SkinSetting_Reforging:addButton({
        title = "Refresh Pet",
        callback = function()
            Base_SkinTable = {}

            List_SkinTable = {}
            local ItemsInventory = MainData:GetData("Items", true)
            for i,v_Rarity in pairs(RarityList) do
                TextRarity = v_Rarity == "Secret" and "Cosmic" or v_Rarity

                if List_SkinTable[TextRarity] == nil then
                    List_SkinTable[TextRarity] = {}
                end
            end
            table.foreach(ItemsInventory,function(index,value)
                if ItemStats[index].Skin then
                    table.foreach(value,function(i,v)
                        if v.Pet then
                            TextRarity = ItemStats[index].Rarity == "Secret" and "Cosmic" or ItemStats[index].Rarity
                            local Pets = MainData:GetData({"Pets",v.Pet}, true)
                            local TitleName = string.format("Skin %s [%s] | Equipped on %s [%s]",ItemStats[index].DisplayName, index , Pets.CustomName or Pets.PetId, i)
        
                            table.insert(List_SkinTable[TextRarity],TitleName)
                            Base_SkinTable[TitleName] = {
                                Number = i,
                                SkinName = index,
                                ID = v.GUID
                            }
        
                        end
                    end)
                end
            end)
            SelectSkinReforging.Options:Refresh(List_SkinTable[SaveSettings['Skin']['Select Rarity [Skin]']],SaveSettings['Skin']['Select Skin Reforging'])
        end
    })
    function RefreshSelectSkin() 
        SelectSkinReforging.Options:Refresh(List_SkinTable[SaveSettings['Skin']['Select Rarity [Skin]']],SaveSettings['Skin']['Select Skin Reforging']) 
    end
    function RefreshSelectSkinPassive() 
        SelectSkinPassive.Options:Refresh(Table_ListItemSkin[SaveSettings['Skin']['Select Rarity [Skin]']],SaveSettings['Skin']['Select Skin Passive']) 
    end
    FSSKIN = true
    for i,v in pairs(RarityList) do
        SkinRarity = v == "Secret" and "Cosmic" or v
        SkinSetting_SkinPassiveStats:addLabel({title = "-----[[ Skin Rarity ".. SkinRarity .." Status ]]-----" })
        for i,v in pairs(Table_ListItemSkin[SkinRarity]) do
            SkinSetting_SkinPassiveStats:addLabel({title = v })
        end
    end
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
    StatusEgg = EggItems_Eggs:addLabel({title ="Egg Status : Disabled"})
    EggItems_Eggs:addDropdown({
        title = "Select World [Egg]",
        list = Egg_Select, 
        default = SaveSettings["Egg"]['Select World [Egg]'],
        callback = function(v)
            SaveSettings["Egg"]['Select World [Egg]'] = v
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
    EggItems_Eggs:addToggle({
        title = "Auto Teleport to the nearest egg",
        default  = SaveSettings["Egg"]["Auto Teleport Egg Near"] ,
        callback = function(v)
            SaveSettings["Egg"]["Auto Teleport Egg Near"] = v
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
        default  = SaveSettings["Pet"]['Premium Medal'],
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
    StatusPets = PetSetting_Talent:addLabel({title = '[DMG] N/a,     [SPD] N/a,     [CRIT] N/a,     [ABT] N/a,'})
    TalentSelectLabel = PetSetting_Talent:addLabel({title = "Talent : N/s"})
    SelectPetDropTalent = PetSetting_Talent:addDropdown({
        title = "Select Pet [Talent]",
        list = Table_SelePet, 
        default = SaveSettings["Pet"]['Select Pet [Talent]'],
        callback = function(v)
            SaveSettings["Pet"]['Select Pet [Talent]']= v
            Save()
        end;
    })

    local Table_TalentStats = {}
    for i = 1, 300 do
        if not table.find(Table_TalentStats,TalentHandler.GetStatRank(i)) then
            table.insert(Table_TalentStats,TalentHandler.GetStatRank(i))
        end
    end

    PetSetting_Talent:addMulitDropdown({
        title = "Select Talent",
        list = Table_TalentStats,
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
    --Start_FPS_Cap
    FPS_CAP = {}
    for i = 1,60 do
        table.insert(FPS_CAP,i)
    end
    Setting:addDropdown({
        title = "Select FPS Amount",
        list = FPS_CAP, 
        default = SaveSettings["SaveSetting"]['FPS Value'],
        callback = function(v)
            SaveSettings["SaveSetting"]['FPS Value'] = v
            Save()
        end;
    })
    Setting:addToggle({
        title = "Enable FPS Cap",
        default  = SaveSettings["SaveSetting"]['FPS Cap'] ,
        callback = function(v)
            SaveSettings["SaveSetting"]['FPS Cap'] = v
            Save()
        end ,
    })
    Setting:addToggle({
        title = "Enable Low CPU Mode",
        default  = SaveSettings["SaveSetting"]['Low CPU Mode'] ,
        callback = function(v)
            SaveSettings["SaveSetting"]['Low CPU Mode'] = v
            Save()
        end ,
    })
    Setting:addKeybind({
        title = "Keybind Hide Ui",
        key = Enum.KeyCode[string.gsub(SaveSettings["SaveSetting"]['Hide Key'],'Enum.KeyCode.',"")],
        callback = function()
            UI:toggle()
        end,
        changedCallback = function(key)
            SaveSettings["SaveSetting"]['Hide Key'] = tostring(key)
            Save()
        end
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
                    if b:FindFirstChild("Target") and b.Target.Value then
                        if string.find(tostring(b.Target.Value),"ColossalTitan") and game:GetService("Workspace").Worlds:FindFirstChild("Raids") then else
                            if string.find(tostring(b.Target.Value),"ArmourTitan") and (b:GetModelCFrame().Position - b.Target.Value:GetPivot().Position).Magnitude > 95 then
                                b:PivotTo(b.Target.Value:GetPivot())
                            elseif string.find(tostring(b.Target.Value),"ColossalTitan") and (b:GetModelCFrame().Position - b.Target.Value:GetPivot().Position).Magnitude > 125 then
                                b:PivotTo(b.Target.Value:GetPivot())
                            elseif string.find(tostring(b.Target.Value),"MaxDamageChallengeEnemy") and (b:GetModelCFrame().Position - b.Target.Value:GetPivot().Position).Magnitude > 210 then
                                b:PivotTo(b.Target.Value:GetPivot())
                            elseif (b:GetModelCFrame().Position - b.Target.Value:GetPivot().Position).Magnitude > 40 and not string.find(tostring(b.Target.Value),"ArmourTitan") 
                            and not string.find(tostring(b.Target.Value),"ColossalTitan") and not string.find(tostring(b.Target.Value),"MaxDamageChallengeEnemy") then
                                b:PivotTo(b.Target.Value:GetPivot())
                            end
                        end 
                    end
                end)
            end
        end
    end)
    
    -- Auto Feed
    spawn(function()
        while wait() do
            TalentCount = ItemManipulator.CountItems(MainData:GetData({"Items","TalentToken"}, true))
            TalentSelectLabel.Options:ChangeText('Talent Token : ' .. Comma_Value(TalentCount))

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
                if PetDataTalent then
                    local OldPetStatsTalent = MainData:GetData("Pets", true)[PetDataTalent['ID']]['Talents']
                    local TalentDmg = table.find(SaveSettings["Pet"]['Select Talent'],TalentHandler.GetStatRank(OldPetStatsTalent['Dmg'])) 
                    local TalentSpd = table.find(SaveSettings["Pet"]['Select Talent'],TalentHandler.GetStatRank(OldPetStatsTalent['Spd'])) 
                    local TalentCDmg = table.find(SaveSettings["Pet"]['Select Talent'],TalentHandler.GetStatRank(OldPetStatsTalent['CDmg'])) 
                    local TalentADmg = table.find(SaveSettings["Pet"]['Select Talent'],TalentHandler.GetStatRank(OldPetStatsTalent['ADmg'])) 
                    
                    if not TalentDmg or not TalentSpd or not TalentCDmg or not TalentADmg then
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
                    end
                    local PetStatsTalent = MainData:GetData("Pets", true)[PetDataTalent['ID']]['Talents']
                    StatusPets.Options:ChangeText(
                        '     [DMG] '.. TalentHandler.GetStatRank(PetStatsTalent['Dmg']) ..
                        '     [SPD] '.. TalentHandler.GetStatRank(PetStatsTalent['Spd']) ..
                        '     [CRIT] '.. TalentHandler.GetStatRank(PetStatsTalent['CDmg']) ..
                        '     [ABT] '.. TalentHandler.GetStatRank(PetStatsTalent['ADmg']) ..''
                    )
                    wait(.1)
                end
            end
        end
    end)
    spawn(function()
        while wait() do
            if SaveSettings["Pet"]['Auto Essence'] then
                for i,v in pairs(MainData:GetData("Pets", true)) do
                    if SaveSettings["Pet"]['Auto Essence'] and table.find(SaveSettings["Pet"]['Select Rarity [Essence]'],PetStats[v.PetId].Rarity) and not v.Locked then
                        if SaveSettings["Pet"]['Ignore Godly (Not Del Godly)'] and not v.Godly then
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
                GameConfig.MaxTargetDistance = SaveSettings["Misc"]['Bypass Attack Range'] and 9e9 or 150
                GameConfig.MaxAttackDistance = SaveSettings["Misc"]['Bypass Attack Range'] and 9e9 or 160
            end
    
            if SaveSettings["Misc"]['Auto Click'] then
                ClickButton(LocalPlayer.PlayerGui.MainGui.HUD.BottomButtons.Clicker)
            end
    
            if SaveSettings["Misc"]['Auto Ability'] then
                ClickButton(LocalPlayer.PlayerGui.MainGui.HUD.BottomButtons.AbilityButton)
            end
        end
    end)
    spawn(function()
        while wait() do
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
                if EggPart ~= "API ERROR" and not string.find(tostring(EggPart),"Not Found IsLand!!") and SaveSettings["Egg"]["Auto Teleport Egg Near"] and (Character:GetModelCFrame().Position - EggPart:GetPivot().Position).Magnitude > 10 then
                    Character:PivotTo(EggPart:GetPivot() * CFrame.new(0,0,5))
                elseif EggPart ~= "API ERROR" and not string.find(tostring(EggPart),"Not Found IsLand!!") and (Character:GetModelCFrame().Position - EggPart:GetPivot().Position).Magnitude <= 10 then
                    StatusEgg.Options:ChangeText("Egg Status : Auto Open Eggs")
                    OpenEgg(EggPart)
                end
            end
        end
    end)
    
    -- Auto Reroll Quirk
    spawn(function()
        while wait() do
            if SaveSettings["Pet"]['Auto Reroll Quirk'] then
                local PetDataQuirk = Table_PetBaseData[SaveSettings["Pet"]['Select Pet [Quirk]']]
                if PetDataQuirk and PetDataQuirk['ID'] then
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
                            [3] = SaveSettings["Pet"]['Premium Medal'] and true or false,
                            [4]= 1
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
                end
                wait(.1)
            end
        end
    end)

    -- Auto Skin Reroll
    spawn(function()
        while wait() do
            SkinScrapCount = ItemManipulator.CountItems(MainData:GetData({"Items","SkinScrap"}, true))
            SkinScrapSelectLabel.Options:ChangeText('Scrap : ' .. Comma_Value(SkinScrapCount))
            if SaveSettings['Skin']['Auto Skin Reforging'] then
                if Base_SkinTable[SaveSettings['Skin']['Select Skin Reforging']] then
                    local ItemsSkinName = MainData:GetData({"Items",Base_SkinTable[SaveSettings['Skin']['Select Skin Reforging']].SkinName,Base_SkinTable[SaveSettings['Skin']['Select Skin Reforging']].Number}, true)
                    Description = SkinPassiveStats[ItemsSkinName.Passive].Description:split("\n")
                    DescriptionSkin = table.concat(Description, ", ")
                    TextSkinPassive = SkinPassiveStats[ItemsSkinName.Passive].DisplayName.. ": " ..DescriptionSkin
                    SkinSelectLabel.Options:ChangeText("Skin Select \n" .. SaveSettings['Skin']['Select Skin Reforging'])
                    SkinStatusSelectLabel.Options:ChangeText("Skin Status\n" .. TextSkinPassive)

                    if not table.find(SaveSettings['Skin']['Select Skin Passive'],TextSkinPassive) then
                        local args = {
                            [1] = Base_SkinTable[SaveSettings['Skin']['Select Skin Reforging']].ID
                        }
                        game:GetService("ReplicatedStorage").Remote.Items.SkinReroll:FireServer(unpack(args))
                        wait(.2)

                        local ItemsSkinName = MainData:GetData({"Items",Base_SkinTable[SaveSettings['Skin']['Select Skin Reforging']].SkinName,Base_SkinTable[SaveSettings['Skin']['Select Skin Reforging']].Number}, true)
                        Description = SkinPassiveStats[ItemsSkinName.Passive].Description:split("\n")
                        DescriptionSkin = table.concat(Description, ", ")
                        TextSkinPassive = SkinPassiveStats[ItemsSkinName.Passive].DisplayName.. ": " ..DescriptionSkin
                        SkinSelectLabel.Options:ChangeText("Skin Select \n" .. SaveSettings['Skin']['Select Skin Reforging'])
                        SkinStatusSelectLabel.Options:ChangeText("Skin Status\n" .. TextSkinPassive)    
                    end
                end
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
                        if table.find(SaveSettings["Item"]['Select Rarity Skin'],ItemStats[index].Rarity) then
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
                                    until v:GetAttribute("Health") <= 0 or not v.Parent or not SaveSettings["Auto Farm"]['Auto Farm Tower']
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
    -- World MaxDamageChallenge Enemies MaxDamageChallengeEnemy
    function CheckMaxDamageChallenge(Target)
        if game:GetService("Workspace").Worlds:FindFirstChild("MaxDamageChallenge") then
            local MAPINFO = {}
            for i,v in next , game:GetService("Workspace").Worlds:FindFirstChild("MaxDamageChallenge"):GetChildren() do
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
            elseif Mode == "CheckJJKSomething" then
                if game:GetService("Workspace").Worlds:FindFirstChild("Raids")[FindRaids(game.Players.LocalPlayer.Character.HumanoidRootPart)]:GetAttribute("RaidId") == 'JJKRaid' then
                    for i,v in pairs(game:GetService("Workspace").Worlds:FindFirstChild("Raids").Enemies:GetChildren()) do
                        if v:FindFirstChild("HumanoidRootPart") and v:GetAttribute("Health") > 0 and v:GetAttribute("Invulnerable") ~= true and FindRaids(v:GetModelCFrame()) == FindRaids(game.Players.LocalPlayer.Character.HumanoidRootPart) then
                            if table.find({'FlyCurse','FlyCurse2','BridgeCurse','BridgeCurse2','Finger','FingerRaid','WoodBall','Hanami'},v.Name) then
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
            elseif Mode == "GetZone" then
                local RaidsOwner = game:GetService("Workspace").Worlds:FindFirstChild("Raids"):FindFirstChild(FindRaids(game.Players.LocalPlayer.Character.HumanoidRootPart))
                if RaidsOwner then
                    local ZoneTable = {
                        ZoneNow = nil, 
                        ZoneNext = nil
                    }
                    for i,v in pairs(RaidsOwner:GetChildren()) do
                        if string.find(v.Name,"Zone") and not string.find(v.Name,"ZoneSide") and v:FindFirstChild('Barriers') and v:FindFirstChild('Barriers'):FindFirstChild('Barrier') then
                            ZoneTable.ZoneNext = v.Name
                            break
                        end
                    end
                    for i,v in pairs(RaidsOwner:GetChildren()) do
                        if string.find(v.Name,"Zone") and not string.find(v.Name,"ZoneSide") and not v:FindFirstChild('Barriers') then
                            ZoneTable.ZoneNow = v.Name
                        end
                    end
                    return ZoneTable
                end
            elseif Mode == "GetCountMon" then
                local Count = 0
                for i,v in pairs(game:GetService("Workspace").Worlds:FindFirstChild("Raids").Enemies:GetChildren()) do
                    if v:FindFirstChild("HumanoidRootPart") and v:GetAttribute("Health") > 0 and FindRaids(v:GetModelCFrame()) == FindRaids(game.Players.LocalPlayer.Character.HumanoidRootPart) then
                        Count = Count + 1
                    end
                end
                return Count
            end
        end 
    end

    function getEpoch(epochTime)
        local date = os.date("%X", epochTime)
        return tostring(date)
    end

    function Event(Mode)
        if Mode == "GetBossType" then
            local Table_Mon_Event = {}
            for i,v in pairs(game:GetService("Workspace").Worlds:GetChildren()) do World = v.Name end
            if game:GetService("Workspace").Worlds:FindFirstChild(World):FindFirstChild('Enemies') then
                for i,v in pairs(game:GetService("Workspace").Worlds:FindFirstChild(World).Enemies:GetChildren()) do
                    if v:FindFirstChild("HumanoidRootPart") and v:GetAttribute("Health") > 0 then
                        local EnemyStatsMon = EnemyStats[v.Name]
                        if EnemyStatsMon and EnemyStatsMon.Boss then
                            if not Table_Mon_Event[v.Name] then
                                Table_Mon_Event[v.Name] = {
                                    BaseName = v.Name,
                                    DisplayName = EnemyStatsMon.DisplayName,
                                    Type = "Boss",
                                    Count = 1
                                }
                            elseif Table_Mon_Event[v.Name] then
                                Table_Mon_Event[v.Name]['Count'] = Table_Mon_Event[v.Name]['Count'] + 1
                                if Table_Mon_Event[v.Name]['Count'] > 1 then
                                    Table_Mon_Event[v.Name]['Type'] = "Mini Boss"
                                end
                            end
                        elseif EnemyStatsMon and not EnemyStatsMon.Boss then
                            if not Table_Mon_Event[v.Name] then
                                Table_Mon_Event[v.Name] = {
                                    BaseName = v.Name,
                                    DisplayName = EnemyStatsMon.DisplayName,
                                    Type = "Mon",
                                    Count = 1
                                }
                            end
                        end
                    end
                end
            end
            return Table_Mon_Event
        end
    end

    TimeCooldown = LocalDairebStore2.GetDairebStoreAsync("MainData"):GetData("LastRaidHosted") + GameConfig.RaidCooldownTime

    if TimeCooldown <= workspace:GetServerTimeNow() then
        WaitRaidCooldown = false
    else
        WaitRaidCooldown = true
    end

    spawn(function()
        while wait() do
            RaidKeyCount = ItemManipulator.CountItems(MainData:GetData({"Items","RaidKey"}, true))
            RaidKeySelectLabel.Options:ChangeText('Raid Chest Key Count : ' .. Comma_Value(RaidKeyCount))
            WorkspaceWorlds = game:GetService("Workspace").Worlds:FindFirstChild(SaveSettings["Auto Farm"]["Auto Join World Select"] and DateWorld[SaveSettings["Auto Farm"]["Select World"]].WorldName or CheckWorld().Name)
            wait(1.5)
            if SaveSettings["Event Halloween"]['Auto Farm HalloWeen'] and MainData:GetData("HalloweenCoins", true) and not game:GetService("Workspace").Worlds:FindFirstChild("ShadowWorld") then
                local ohString1 = "ShadowWorld"
                game:GetService("ReplicatedStorage").Remote.Player.Teleport:FireServer(ohString1)
            end
            if SaveSettings["MaxDamageChallenge"]['Auto Farm'] and not game:GetService("Workspace").Worlds:FindFirstChild("MaxDamageChallenge") then
                game:GetService("ReplicatedStorage").Remote.MaxDamageChallenge.StartMaxDamageChallenge:FireServer()
            end
            if SaveSettings["Event Halloween"]['Auto Farm HalloWeen'] and MainData:GetData("HalloweenCoins", true) and game:GetService("Workspace").Worlds:FindFirstChild("ShadowWorld") then
                repeat wait() until not LocalPlayer.PlayerGui:FindFirstChild('TeleportGui')
                if game:GetService("Workspace").Worlds:FindFirstChild("ShadowWorld") then
                    local EnemyStats = require(game:GetService("ReplicatedStorage"):WaitForChild("ModuleScripts").Config.EnemyStats)
                    for i,v in pairs(game:GetService("Workspace").Worlds:GetChildren()) do World = v.Name end
                    for i,v in pairs(game:GetService("Workspace").Worlds:FindFirstChild(World).Enemies:GetChildren()) do
                        if SaveSettings["Event Halloween"]['Auto Farm HalloWeen'] and v:FindFirstChild("HumanoidRootPart") and v:GetAttribute("Health") > 0 and Event('GetBossType')[v.Name]['Type'] == SaveSettings["Event Halloween"]['Select Farm Method'] then
                            repeat wait()
                                table.foreach(CheckPet('GetPet'),function(a,b)
                                    if SaveSettings["Event Halloween"]['Auto Farm HalloWeen'] and b:FindFirstChild("Target") and b.Target.Value == nil and (Character:GetModelCFrame().Position - v:GetPivot().Position).Magnitude <= 150 then
                                        SendPetOneTraget(b,v)
                                    elseif SaveSettings["Event Halloween"]['Auto Farm HalloWeen'] and b:FindFirstChild("Target") and b.Target.Value == nil and (Character:GetModelCFrame().Position - v:GetPivot().Position).Magnitude > 150 then
                                        Character:PivotTo(v:GetPivot() * CFrame.new(0,3,0))
                                    end
                                end)
                            until v:GetAttribute("Health") <= 0 or not v.Parent or not SaveSettings["Event Halloween"]['Auto Farm HalloWeen']
                        end
                    end
                end
            elseif SaveSettings["MaxDamageChallenge"]['Auto Farm'] and game:GetService("Workspace").Worlds:FindFirstChild("MaxDamageChallenge") then
                local MaxDamageChallenge = game:GetService("Workspace").Worlds:FindFirstChild("MaxDamageChallenge"):FindFirstChild(CheckMaxDamageChallenge(LocalPlayer.Character.HumanoidRootPart.CFrame))
                if MaxDamageChallenge and MaxDamageChallenge:FindFirstChild('MaxDamageChallengeChest') then
                    fireproximityprompt(MaxDamageChallenge:FindFirstChild('MaxDamageChallengeChest').HumanoidRootPart.ChestPrompt)
                    repeat wait() until LocalPlayer.PlayerGui:FindFirstChild('TeleportGui')
                    repeat wait() until not LocalPlayer.PlayerGui:FindFirstChild('TeleportGui')
                elseif MaxDamageChallenge and not MaxDamageChallenge:FindFirstChild('MaxDamageChallengeChest') then
                    for i,v in pairs(game:GetService("Workspace").Worlds:FindFirstChild("MaxDamageChallenge").Enemies:GetChildren()) do
                        if SaveSettings["MaxDamageChallenge"]['Auto Farm'] and v:FindFirstChild("HumanoidRootPart") and v:GetAttribute("Health") > 0 and v:GetAttribute("Invulnerable") ~= true and CheckMaxDamageChallenge(v:GetModelCFrame()) == CheckMaxDamageChallenge(game.Players.LocalPlayer.Character.HumanoidRootPart) then
                            repeat wait()
                                if v ~= nil then
                                    Character.HumanoidRootPart:PivotTo(v:GetModelCFrame() * CFrame.new(0,15,5))
                                    table.foreach(CheckPet('GetPet'),function(a,b)
                                        if b:FindFirstChild("Target") and (b.Target.Value == nil or b.Target.Value ~= v ) then
                                            SendPetOneTraget(b,v)
                                        end
                                    end)
                                end
                            until not SaveSettings["MaxDamageChallenge"]['Auto Farm'] or v:GetAttribute("Health") <= 0 or not v.Parent or v:GetAttribute("Invulnerable") == true
                        end
                    end
                end
            elseif SaveSettings["Raids"]['Auto Farm Raid'] and not WaitRaidCooldown and game:GetService("Workspace").Worlds:FindFirstChild("Hub") then
                if GetRaids("Owner") ~= "Not Found" then
                    local OwnerRaidRooms = GetRaids("Owner")
                    local args = { [1] = OwnerRaidRooms, [2] = "Private", [3] = SaveSettings["Raids"]['Private Room'] }   
                    game:GetService("ReplicatedStorage").Remote.Raid.SetRaidSetting:FireServer(unpack(args))
    
                    local args = { [1] = OwnerRaidRooms, [2] = "TargetWorld", [3] = DateWorld[SaveSettings["Raids"]["Select Raids [World]"]].WorldName }
                    game:GetService("ReplicatedStorage").Remote.Raid.SetRaidSetting:FireServer(unpack(args))

                    local args = { [1] = OwnerRaidRooms, [2] = "TargetWorld", [3] = DateWorld[SaveSettings["Raids"]["Select Raids [World]"]].WorldName .. "Raid" }
                    game:GetService("ReplicatedStorage").Remote.Raid.SetRaidSetting:FireServer(unpack(args))
    
                    local args = { [1] = OwnerRaidRooms, [2] = "Difficulty", [3] = SaveSettings["Raids"]['Select Difficulty'] }
                    game:GetService("ReplicatedStorage").Remote.Raid.SetRaidSetting:FireServer(unpack(args))
    
                    local args = { [1] = OwnerRaidRooms }
                    game:GetService("ReplicatedStorage").Remote.Raid.StartRaid:FireServer(unpack(args))
                elseif GetRaids("FindRoom") ~= "Not Found" then
                    Character.HumanoidRootPart:PivotTo(GetRaids("FindRoom").CFrame)
                end
            elseif SaveSettings["Raids"]['Auto Farm Raid'] and game:GetService("Workspace").Worlds:FindFirstChild("Raids") then
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
                                            if v:GetAttribute("Invulnerable") == true then break end
                                            if SaveSettings["Raids"]['Go On The Head [Mob]'] then
                                                Character.HumanoidRootPart:PivotTo(v:GetModelCFrame() * CFrame.new(0,15,5))
                                            end
                                            table.foreach(CheckPet('GetPet'),function(a,b)
                                                if b:FindFirstChild("Target") and (b.Target.Value == nil or b.Target.Value ~= v ) then
                                                    SendPetOneTraget(b,v)
                                                end
                                            end)
                                        end
                                    until v:GetAttribute("Health") <= 0 or not v.Parent or not SaveSettings["Raids"]['Auto Farm Raid'] or v:GetAttribute("Invulnerable") == true
                                end
                            end
                        elseif game:GetService("Workspace").Worlds:FindFirstChild("Raids")[FindRaids(game.Players.LocalPlayer.Character.HumanoidRootPart)]:GetAttribute("RaidId") == 'HxHRaid' then
                            if SaveSettings["Raids"]['Auto Farm Raid'] and GetRaids("GetZone").ZoneNow == "Zone8" and GetRaids("GetZone").ZoneNext == "Zone9" and GetRaids("GetCountMon") == 0 then
                                local ohString1 = "Raids"
                                local ohString2 = "Palace"
                                game:GetService("ReplicatedStorage").Remote.Player.Teleport:FireServer(ohString1, ohString2)
                                repeat wait() until not LocalPlayer.PlayerGui:FindFirstChild('TeleportGui')
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
                                        until v:GetAttribute("Health") <= 0 or not v.Parent or not SaveSettings["Raids"]['Auto Farm Raid'] or v:GetAttribute("Invulnerable") == true
                                    end
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
                                    until v:GetAttribute("Health") <= 0 or not v.Parent or not SaveSettings["Raids"]['Auto Farm Raid'] or v:GetAttribute("Invulnerable") == true
                                end
                            end
                        end
                    end
                end
            elseif SaveSettings["Raids"]['Collect Chest [First Chest Leave]'] then
                    if GetRaids("GetChest") ~= "None" and GetRaids("GetChest").HumanoidRootPart:FindFirstChild("ChestPrompt") then
                        Character.HumanoidRootPart:PivotTo(GetRaids("GetChest"):GetModelCFrame())
                        wait(.1)
                        fireproximityprompt(GetRaids("GetChest").HumanoidRootPart.ChestPrompt)
                        wait(5)
                        local args = { [1] = "Hub" }
                        game:GetService("ReplicatedStorage").Remote.Player.Teleport:FireServer(unpack(args))
                        wait(.5)
                        repeat wait() until not LocalPlayer.PlayerGui:FindFirstChild('TeleportGui')
                    end
                --end
            elseif not WaitRaidCooldown and SaveSettings["Raids"]['Auto Farm Raid'] and (not game:GetService("Workspace").Worlds:FindFirstChild("Hub") or not game:GetService("Workspace").Worlds:FindFirstChild("Raids")) then
                local args = { [1] = "Hub" }
                game:GetService("ReplicatedStorage").Remote.Player.Teleport:FireServer(unpack(args))
                repeat wait() until not LocalPlayer.PlayerGui:FindFirstChild('TeleportGui')
            elseif SaveSettings["Auto Farm"]['Auto Farm Select'] and WorkspaceWorlds and WorkspaceWorlds:FindFirstChild('Enemies') then
                repeat wait() until not LocalPlayer.PlayerGui:FindFirstChild('TeleportGui')
                if SaveSettings["Auto Farm"]['Select Enemie'][WorldDate[CheckWorld().Name].DisplayName] then
                    for i,v in pairs(game:GetService("Workspace").Worlds:FindFirstChild(CheckWorld().Name).Enemies:GetChildren()) do
                        if SaveSettings["Auto Farm"]['Select Enemie'][WorldDate[CheckWorld().Name].DisplayName] ~= nil and v:GetAttribute("Health") > 0 and table.find(SaveSettings["Auto Farm"]['Select Enemie'][WorldDate[CheckWorld().Name].DisplayName],DateEnemie[v.Name]) then
                            if not SaveSettings["Auto Farm"]["Teleport [Farm in Range]"] and (Character:GetModelCFrame().Position - v:GetPivot().Position).Magnitude <= 150 then 
                                repeat wait()
                                    table.foreach(CheckPet('GetPet'),function(a,b)
                                        if SaveSettings["Auto Farm"]['Auto Farm Select'] and b:FindFirstChild("Target") and b.Target.Value == nil then
                                            SendPetOneTraget(b,v)
                                        end
                                    end)
                                until v:GetAttribute("Health") <= 0 or not v.Parent or not SaveSettings["Auto Farm"]['Auto Farm Select'] or ( SaveSettings["Raids"]['Auto Farm Raid'] and not WaitRaidCooldown)
                            elseif SaveSettings["Auto Farm"]["Teleport [Farm in Range]"] and (Character:GetModelCFrame().Position - v:GetPivot().Position).Magnitude <= SaveSettings["Auto Farm"]["Range [ Farm in Range ]"] and SaveSettings["Auto Farm"]['Select Enemie'][WorldDate[CheckWorld().Name].DisplayName] ~= nil and v:GetAttribute("Health") > 0 and table.find(SaveSettings["Auto Farm"]['Select Enemie'][WorldDate[CheckWorld().Name].DisplayName],DateEnemie[v.Name]) then 
                                if SaveSettings["Auto Farm"]['Auto Farm Select'] and (Character:GetModelCFrame().Position - v:GetPivot().Position).Magnitude > 150 then
                                    repeat wait()
                                        table.foreach(CheckPet('GetPet'),function(a,b)
                                            if SaveSettings["Auto Farm"]['Auto Farm Select'] and b:FindFirstChild("Target") and b.Target.Value == nil and (Character:GetModelCFrame().Position - v:GetPivot().Position).Magnitude <= 150 then
                                                SendPetOneTraget(b,v)
                                            elseif SaveSettings["Auto Farm"]['Auto Farm Select'] and b:FindFirstChild("Target") and b.Target.Value == nil and (Character:GetModelCFrame().Position - v:GetPivot().Position).Magnitude > 150 then
                                                Character:PivotTo(v:GetPivot() * CFrame.new(0,10,5))
                                            end
                                        end)
                                    until v:GetAttribute("Health") <= 0 or not v.Parent or not SaveSettings["Auto Farm"]['Auto Farm Select'] or ( SaveSettings["Raids"]['Auto Farm Raid'] and not WaitRaidCooldown)
                                else
                                    repeat wait()
                                        table.foreach(CheckPet('GetPet'),function(a,b)
                                            if SaveSettings["Auto Farm"]['Auto Farm Select'] and b:FindFirstChild("Target") and b.Target.Value == nil and (Character:GetModelCFrame().Position - v:GetPivot().Position).Magnitude <= 150 then
                                                SendPetOneTraget(b,v)
                                            end
                                        end)
                                    until v:GetAttribute("Health") <= 0 or not v.Parent or not SaveSettings["Auto Farm"]['Auto Farm Select'] or ( SaveSettings["Raids"]['Auto Farm Raid'] and not WaitRaidCooldown)
                                end
                            end
                        end
                    end
                end
            elseif SaveSettings["Auto Farm"]["Auto Join World Select"] and not game:GetService("Workspace").Worlds:FindFirstChild(DateWorld[SaveSettings["Auto Farm"]["Select World"]].WorldName) then
                if WaitRaidCooldown and SaveSettings["Raids"]['Auto Farm Raid'] and not game:GetService("Workspace").Worlds:FindFirstChild("Raids") and not game:GetService("Workspace").Worlds:FindFirstChild("Tower") then
                    TeleportWorld(DateWorld[SaveSettings["Auto Farm"]["Select World"]].WorldName)
                elseif WaitRaidCooldown and not SaveSettings["Raids"]['Auto Farm Raid'] and not game:GetService("Workspace").Worlds:FindFirstChild("Raids") and not game:GetService("Workspace").Worlds:FindFirstChild("Tower") then
                    TeleportWorld(DateWorld[SaveSettings["Auto Farm"]["Select World"]].WorldName)
                elseif not WaitRaidCooldown and not SaveSettings["Raids"]['Auto Farm Raid'] and not game:GetService("Workspace").Worlds:FindFirstChild("Raids") and not game:GetService("Workspace").Worlds:FindFirstChild("Tower") then
                    TeleportWorld(DateWorld[SaveSettings["Auto Farm"]["Select World"]].WorldName)
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

    _G.NoClip = game:GetService("RunService").Heartbeat:Connect(function()

        TimeRaidMain = NumToString.AdaptiveTime((MainData:GetData("LastRaidHosted") - workspace:GetServerTimeNow()) + GameConfig.RaidCooldownTime)
        TimeCooldown = LocalDairebStore2.GetDairebStoreAsync("MainData"):GetData("LastRaidHosted") + GameConfig.RaidCooldownTime

        CoolDownRaidsTime = tostring(WaitRaidCooldown and tostring(TimeRaidMain) or "Raid Ready")

        RaidAvailable = " Raid are Available Now!!! \n ... Pls. Enable 'Auto Farm Raid' ..."
        RaidNotAvailable = " Raid not Available Now!!! \n ... Wait for " .. CoolDownRaidsTime .. "(s), then join Raid ..."
        RaidRoom = " Teleport To HUB \n ... Creating Raid Coom  : " .. tostring(SaveSettings["Raids"]["Select Raids [World]"]) .. " [ " .. tostring(SaveSettings["Raids"]['Select Difficulty']) .. " ] ..."
        RaidFarm = " Raid Room Cooldown : " .. CoolDownRaidsTime .. "\n ... Now Farming Raid : " .. tostring(SaveSettings["Raids"]["Select Raids [World]"]) .. " [ " .. tostring(SaveSettings["Raids"]['Select Difficulty']) .. " ] ..."

        if workspace:GetServerTimeNow() > TimeCooldown then
            WaitRaidCooldown = false
        else
            WaitRaidCooldown = true
        end

        if WaitRaidCooldown and SaveSettings["Raids"]['Auto Farm Raid'] and not game:GetService("Workspace").Worlds:FindFirstChild("Raids") and CountTimeRaids then
            CountTimeRaids.Options:ChangeText(RaidNotAvailable)
        elseif WaitRaidCooldown and not SaveSettings["Raids"]['Auto Farm Raid'] and not game:GetService("Workspace").Worlds:FindFirstChild("Raids") and CountTimeRaids then
            CountTimeRaids.Options:ChangeText(RaidNotAvailable)
        elseif not WaitRaidCooldown and not SaveSettings["Raids"]['Auto Farm Raid'] and not game:GetService("Workspace").Worlds:FindFirstChild("Raids") and CountTimeRaids then
            CountTimeRaids.Options:ChangeText(RaidAvailable)
        elseif WaitRaidCooldown and SaveSettings["Raids"]['Auto Farm Raid'] and game:GetService("Workspace").Worlds:FindFirstChild("Hub") and not game:GetService("Workspace").Worlds:FindFirstChild("Raids") and CountTimeRaids then
            CountTimeRaids.Options:ChangeText(RaidRoom)
        elseif not WaitRaidCooldown and SaveSettings["Raids"]['Auto Farm Raid'] and game:GetService("Workspace").Worlds:FindFirstChild("Hub") and not game:GetService("Workspace").Worlds:FindFirstChild("Raids") and CountTimeRaids then
            CountTimeRaids.Options:ChangeText(RaidRoom)
        elseif WaitRaidCooldown and SaveSettings["Raids"]['Auto Farm Raid'] and game:GetService("Workspace").Worlds:FindFirstChild("Raids") and CountTimeRaids then
            CountTimeRaids.Options:ChangeText(RaidFarm)
        elseif not WaitRaidCooldown and SaveSettings["Raids"]['Auto Farm Raid'] and game:GetService("Workspace").Worlds:FindFirstChild("Raids") and CountTimeRaids then
            CountTimeRaids.Options:ChangeText(RaidFarm)
        elseif WaitRaidCooldown and not SaveSettings["Raids"]['Auto Farm Raid'] and game:GetService("Workspace").Worlds:FindFirstChild("Raids") and CountTimeRaids then
            CountTimeRaids.Options:ChangeText(RaidFarm)
        elseif not WaitRaidCooldown and not SaveSettings["Raids"]['Auto Farm Raid'] and game:GetService("Workspace").Worlds:FindFirstChild("Raids") and CountTimeRaids then
            CountTimeRaids.Options:ChangeText(RaidFarm)
        end

        if LocalPlayer.PlayerGui.RaidCompleteGui.Enabled == true then
            LocalPlayer.PlayerGui.RaidCompleteGui.Enabled = false
        end

        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") then
            if SaveSettings["MaxDamageChallenge"]['Auto Farm'] and game:GetService("Workspace").Worlds:FindFirstChild("MaxDamageChallenge") then
                BodyVelocity()
            elseif SaveSettings["Raids"]['Auto Farm Raid'] and SaveSettings["Raids"]['Go On The Head [Mob]'] and game:GetService("Workspace").Worlds:FindFirstChild("Raids") then
                BodyVelocity()
            else
                Disable_BodyVelocity()
            end 
        end
    end)
    ------------------------------------------------------ [[ Fix Ui Lib ]] ------------------------------------------------------
    UI:SelectPage({
        page = UI.pages[1],
        toggle = true
    })
    --lowCPU
    local IS_ROBLOX_ACTIVE = false
    local UIS = game:GetService("UserInputService")
    UIS.WindowFocused:Connect(function()
        IS_ROBLOX_ACTIVE = true
    end)
    UIS.WindowFocusReleased:Connect(function()
        IS_ROBLOX_ACTIVE = false
    end)
    function isrbxactive()
        return IS_ROBLOX_ACTIVE
    end
    task.spawn(function()
        while task.wait() do
            getgenv().isrbxactive = newcclosure(isrbxactive)
            if IS_ROBLOX_ACTIVE ~= true and SaveSettings["SaveSetting"]['Low CPU Mode'] then
                setfpscap(tonumber(SaveSettings["SaveSetting"]['FPS Value']))
                game:GetService("RunService"):Set3dRenderingEnabled(false)
                isrbxactive(true)
            else
                setfpscap(240)
                game:GetService("RunService"):Set3dRenderingEnabled(true)
                isrbxactive(false)
            end
        end
    end)
    
    --FPS_Cap
    local IS_ROBLOX_ACTIVE2 = false
    local UIS = game:GetService("UserInputService")
    UIS.WindowFocused:Connect(function()
        IS_ROBLOX_ACTIVE2 = true
    end)
    UIS.WindowFocusReleased:Connect(function()
        IS_ROBLOX_ACTIVE2 = false
    end)
    function isrbxactive2()
        return IS_ROBLOX_ACTIVE2
    end
    task.spawn(function()
        while task.wait() do
            getgenv().isrbxactive2 = newcclosure(isrbxactive2)
            if SaveSettings["SaveSetting"]['FPS Cap'] then
                setfpscap(tonumber(SaveSettings["SaveSetting"]['FPS Value']))
                isrbxactive2(true)
            end
        end
    end)
                
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

    if game.CoreGui:FindFirstChild("HideUiHoly") then
        game.CoreGui:FindFirstChild("HideUiHoly"):Destroy()
    end
    local ScreenGui = Instance.new("ScreenGui")
    local Toggle = Instance.new("TextButton")

    ScreenGui.Name = "HideUiHoly"
    ScreenGui.Parent = game.CoreGui

    Toggle.Name = "Toggle"
    Toggle.Parent = ScreenGui
    Toggle.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
    Toggle.Position = UDim2.new(0.120833337, 0, 0.0952890813, 0)
    Toggle.Size = UDim2.new(0, 50, 0, 50)
    Toggle.Font = Enum.Font.Code
    Toggle.Text = "Hide Ui"
    Toggle.TextColor3 = Color3.fromRGB(255, 0, 0)
    Toggle.TextScaled = true
    Toggle.MouseButton1Down:connect(function()
        game:GetService("VirtualInputManager"):SendKeyEvent(true,Enum.KeyCode[string.gsub(SaveSettings["SaveSetting"]['Hide Key'],'Enum.KeyCode.',"")],false,game)
        game:GetService("VirtualInputManager"):SendKeyEvent(false,Enum.KeyCode[string.gsub(SaveSettings["SaveSetting"]['Hide Key'],'Enum.KeyCode.',"")],false,game)
    end)
end
