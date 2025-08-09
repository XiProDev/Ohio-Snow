-- ===================================
-- AlienX Script for Ninja Legends
-- ===================================

local AutoSettings = {
    AutoSwing = false,
    AutoSell = false,
    AutoR = false,
    AutoS = false,
    AutoB = false,
    AutoC = false,
    AutoE = false,
    AutoCr = false,
    AutoTa = false,
    AutoBo = false,
    AutoBo1 = false,
    AutoBo2 = false
}

for k, v in pairs(AutoSettings) do
    getgenv()[k] = v
end

local function teleportTo(placeCFrame)
    local plyr = game.Players.LocalPlayer
    if plyr.Character then
        plyr.Character.HumanoidRootPart.CFrame = placeCFrame
    end
end

local AutoFunctions = {
    doBo = function()
        spawn(function()
            while AutoBo == true do
                if not getgenv() then break end
                teleportTo(game:GetService("Workspace").bossFolder.RobotBoss.UpperTorso.CFrame)
                local args = {[1] = "swingKatana"}
                game.Players.LocalPlayer:WaitForChild("ninjaEvent"):FireServer(unpack(args))
                wait()
            end
        end)
    end,

    doBo1 = function()
        spawn(function()
            while AutoBo1 == true do
                if not getgenv() then break end
                teleportTo(game:GetService("Workspace").bossFolder.EternalBoss.UpperTorso.CFrame)
                local args = {[1] = "swingKatana"}
                game.Players.LocalPlayer:WaitForChild("ninjaEvent"):FireServer(unpack(args))
                wait()
            end
        end)
    end,

    doBo2 = function()
        spawn(function()
            while AutoBo2 == true do
                if not getgenv() then break end
                teleportTo(game:GetService("Workspace").bossFolder.AncientMagmaBoss.UpperTorso.CFrame)
                local args = {[1] = "swingKatana"}
                game.Players.LocalPlayer:WaitForChild("ninjaEvent"):FireServer(unpack(args))
                wait()
            end
        end)
    end,

    doE = function()
        spawn(function()
            while AutoE == true do
                if not getgenv() then break end
                local elements = {
                    "Inferno", "Frost", "Lightning", "Electral Chaos",
                    "Shadow Charge", "Masterful Wrath", "Shadowfire",
                    "Eternity Storm", "Blazing Entity"
                }
                
                for _, element in ipairs(elements) do
                    local args = {[1] = element}
                    game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("elementMasteryEvent"):FireServer(unpack(args))
                    wait()
                end
            end
        end)
    end,

    doSwing = function()
        spawn(function()
            while AutoSwing == true do
                if not getgenv() then break end
                local args = {[1] = "swingKatana"}
                game.Players.LocalPlayer:WaitForChild("ninjaEvent"):FireServer(unpack(args))    
                wait()
            end
        end)
    end,

    doS = function()
        spawn(function()
            while AutoS == true do
                if not getgenv() then break end
                local args = {[1] = "buyAllSwords", [2] = "Blazing Vortex Island"}
                game.Players.LocalPlayer:WaitForChild("ninjaEvent"):FireServer(unpack(args))        
                wait(0.5)
            end
        end)
    end,

    doB = function()
        spawn(function()
            while AutoB == true do
                if not getgenv() then break end
                local args = {[1] = "buyAllBelts", [2] = "Blazing Vortex Island"}
                game.Players.LocalPlayer:WaitForChild("ninjaEvent"):FireServer(unpack(args))        
                wait(0.5)
            end
        end)
    end,

    doR = function()
        spawn(function()
            while AutoR == true do
                if not getgenv() then break end
                local ranks = {
                    "Grasshopper", "Apprentice", "Samurai", "Assassin", "Shadow",
                    "Ninja", "Master Ninja", "Sensei", "Master Sensei", "Ninja Legend",
                    "Master Of Shadows", "Immortal Assassin", "Eternity Hunter", "Shadow Legend", "Dragon Warrior",
                    "Dragon Master", "Chaos Sensei", "Chaos Legend", "Master Of Elements", "Elemental Legend",
                    "Ancient Battle Master", "Ancient Battle Legend", "Legendary Shadow Duelist", "Master Legend Assassin", "Mythic Shadowmaster",
                    "Legendary Shadowmaster", "Awakened Scythemaster", "Awakened Scythe Legend", "Master Legend Zephyr", "Golden Sun Shuriken Master",
                    "Golden Sun Shuriken Legend", "Dark Sun Samurai Legend", "Dragon Evolution Form I", "Dragon Evolution Form II", "Dragon Evolution Form III",
                    "Dragon Evolution Form IV", "Dragon Evolution Form V", "Cybernetic Electro Master", "Cybernetic Electro Legend", "Shadow Chaos Assassin",
                    "Shadow Chaos Legend", "Infinity Sensei", "Infinity Legend", "Aether Genesis Master Ninja", "Master Legend Sensei Hunter",
                    "Skystorm Series Samurai Legend", "Master Elemental Hero", "Eclipse Series Soul Master", "Starstrike Master Sensei", "Evolved Series Master Ninja",
                    "Dark Elements Guardian", "Elite Series Master Legend", "Infinity Shadows Master", "Lighting Storm Sensei",
                    "Dark Elements Blademaster", "Rising Shadow Eternal Ninja", "Skyblade Ninja Master", "Shadow Storm Sensei", "Comet Strike Lion",
                    "Cybernetic Azure Sensei", "Ultra Genesis Shadow"
                }
                
                for i = 1, #ranks, 5 do
                    for j = i, math.min(i+4, #ranks) do
                        local args = {[1] = "buyRank", [2] = ranks[j]}
                        game.Players.LocalPlayer:WaitForChild("ninjaEvent"):FireServer(unpack(args))
                    end
                    wait()
                end
            end
        end)
    end,

    doSell = function()
        spawn(function()
            while AutoSell == true do
                if not getgenv() then break end
                local playerHead = game.Players.LocalPlayer.Character.Head
                for _, v in pairs(game:GetService("Workspace").sellAreaCircles.sellAreaCircle16.circleInner:GetDescendants()) do
                    if v.Name == "TouchInterest" and v.Parent then
                        firetouchinterest(playerHead, v.Parent, 0)
                        wait(0.1)
                        firetouchinterest(playerHead, v.Parent, 1)
                        break
                    end
                end
            end
        end)
    end,

    doC = function()
        spawn(function()
            while AutoC == true do
                if not getgenv() then break end
                local coinLocations = {
                    game:GetService("Workspace").spawnedCoins.Valley["Pink Chi Crate"].CFrame,
                    game:GetService("Workspace").spawnedCoins.Valley["Blue Chi Crate"].CFrame,
                    game:GetService("Workspace").spawnedCoins.Valley["Chi Crate"].CFrame
                }
                
                for _, location in ipairs(coinLocations) do
                    teleportTo(location)
                    wait(0.1)
                end
                wait()
            end
        end)
    end
}

getgenv().Plr = game:GetService("Players")
getgenv().LP = Plr.LocalPlayer
getgenv().C_NPlayers = {}
getgenv().KillPlayers = {}
getgenv().KillEnabled = false
getgenv().MassKillEnabled = false

local PlayerList = {}
for a, b in next, Plr:GetPlayers() do
    table.insert(PlayerList, b.Name)
end

Plr.PlayerAdded:Connect(function(a)
    if not table.find(PlayerList, a.Name) then
        table.insert(PlayerList, a.Name)
    end
end)

Plr.PlayerRemoving:Connect(function(a)
    if table.find(PlayerList, a.Name) then
        table.remove(PlayerList, table.find(PlayerList, a.Name))
    end
end)      


local HttpService = game:GetService("HttpService")
local Plr = game:GetService("Players")
local LP = Plr.LocalPlayer

   local WindUI = loadstring(game:HttpGet("https://pastefy.app/3nbAifj0/raw"))()
WindUI:Notify({
    Title = "AlienX",
    Content = "✅启动成功✅",
    Duration = 5,
})
        
local Window = WindUI:CreateWindow({
    Title = "AlienX / 忍者传奇||XI团队出品",
    Icon = "rbxassetid://4483362748",
    IconThemed = true,
    Author = "AlienX",
    Folder = "CloudHub",
    Size = UDim2.fromOffset(300, 270),
    Transparent = true,
    Theme = "Dark",
    User = {Enabled = true, Callback = function() print("clicked") end, Anonymous = false},
    SideBarWidth = 200,
    ScrollBarEnabled = true,
})

Window:EditOpenButton({
    Title = "打开脚本",
    Icon = "monitor",
    CornerRadius = UDim.new(0,16),
    StrokeThickness = 4,
    Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0, Color3.fromHex("FF0000")),
        ColorSequenceKeypoint.new(0.16, Color3.fromHex("FF7F00")),
        ColorSequenceKeypoint.new(0.33, Color3.fromHex("FFFF00")),
        ColorSequenceKeypoint.new(0.5, Color3.fromHex("00FF00")),
        ColorSequenceKeypoint.new(0.66, Color3.fromHex("0000FF")),
        ColorSequenceKeypoint.new(0.83, Color3.fromHex("4B0082")),
        ColorSequenceKeypoint.new(1, Color3.fromHex("9400D3"))
    }),
    Draggable = true,
})

local MainSection = Window:Section({Title = "主要", Opened = true})
        
local function AddTab(a, b)
    return MainSection:Tab({Title = a, Icon = b})
end
        
local function Btn(a, b, c)
    return a:Button({Title = b, Callback = c})
end
        
local function Tg(a, b, c, d)
    return a:Toggle({Title = b, Image = "bird", Value = c, Callback = d})
end
        
local A = AddTab("金币篡改","rbxassetid://4400700509")
local B = AddTab("自动功能","rbxassetid://4450736564")
local C = AddTab("杀戮功能","rbxassetid://4384392464")
local D = AddTab("辅助功能","rbxassetid://4483362458")
local E = AddTab("宠物功能","rbxassetid://7734034513")
local F = AddTab("Boss","rbxassetid://3944669799")
        
Window:SelectTab(1)

Btn(A, "初始化第一步", function()
    game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("zenMasterEvent"):FireServer("convertGems", -9999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999)
end)
        
Btn(A, "初始化第二步", function()
    game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("elementMasteryEvent"):FireServer("Shadow Charge")
end)
        
local isLooping = false
local lastInputValue = 0

A:Input({
    Title = "输入数字上传数据",
    Value = "",
    Placeholder = "请输入数字",
    Callback = function(I)
        local num = tonumber(I)
        if num and num > 0 then
            lastInputValue = num
            game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("zenMasterEvent"):FireServer("convertGems", num)
        end
    end
})

A:Toggle({
    Title = "循环上传",
    Callback = function(Value)
        isLooping = Value
        if isLooping then
            spawn(function()
                while isLooping and lastInputValue > 0 do
                    game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("zenMasterEvent"):FireServer("convertGems", lastInputValue)
                    wait(0.5)
                end
            end)
        end
    end
})

Tg(B, "自动挥刀", false, function(AlineX)
    getgenv().AutoSwing = AlineX
    if AlineX then AutoFunctions.doSwing() end
end)
        
Tg(B, "自动售卖", false, function(AlineX)
    getgenv().AutoSell = AlineX
    if AlineX then AutoFunctions.doSell() end
end)
        
Tg(B, "自动升级", false, function(AlineX)
    getgenv().AutoR = AlineX
    if AlineX then AutoFunctions.doR() end
end)
        
Tg(B, "自动称号", false, function(AlineX)
    getgenv().AutoB = AlineX
    if AlineX then AutoFunctions.doB() end
end)
        
Tg(B, "自动买刀", false, function(AlineX)
    getgenv().AutoS = AlineX
    if AlineX then AutoFunctions.doS() end
end)
        
Tg(B, "自动吸气", false, function(AlineX)
    getgenv().AutoC = AlineX
    if AlineX then AutoFunctions.doC() end
end)
        
local excludeTargetsDropdown = C:Dropdown({
    Title = "排除杀戮的玩家(多选)", 
    Values = PlayerList, 
    Value = {}, 
    Multi = true, 
    AllowNone = true, 
    Callback = function(d) 
        getgenv().C_NPlayers = d or {} 
    end
})

local killTargetsDropdown = C:Dropdown({
    Title = "选择杀戮的玩家(多选)", 
    Values = PlayerList, 
    Value = {}, 
    Multi = true, 
    AllowNone = true, 
    Callback = function(d) 
        getgenv().KillPlayers = d or {} 
    end
})

local killTaskHandle
local killToggle = Tg(C, "开始杀戮", false, function(value)
    getgenv().KillEnabled = value
    if value then
        killTaskHandle = task.spawn(function()
            local SpinSpeed = 5
            local Height = 1
            local Radius = 4
            
            while getgenv().KillEnabled do
                for _, playerName in pairs(getgenv().KillPlayers) do
                    local player = Plr:FindFirstChild(playerName)
                    if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                        LP.Character.HumanoidRootPart.CFrame = CFrame.new(
                            player.Character.HumanoidRootPart.Position + 
                            Vector3.new(
                                math.sin(tick() * SpinSpeed * math.pi) * Radius, 
                                Height, 
                                math.cos(tick() * SpinSpeed * math.pi) * Radius
                            ),
                            player.Character.HumanoidRootPart.Position
                        )
                        
                        workspace.Gravity = 0
                        
                        task.wait()
                        if LP.Character:WaitForChild("HumanoidRootPart") then
                            if LP.Character:FindFirstChildOfClass("Tool") then
                                LP.ninjaEvent:FireServer("swingKatana")
                            else
                                for _, tool in pairs(LP.Backpack:GetChildren()) do
                                    if tool.ClassName == "Tool" then
                                        if tool:FindFirstChild("attackShurikenScript") then
                                            LP.Character.Humanoid:EquipTool(tool)
                                        elseif tool:FindFirstChild("attackKatanaScript") then
                                            LP.Character.Humanoid:EquipTool(tool)
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
                task.wait()
            end
            workspace.Gravity = 196.2
        end)
    else
        if killTaskHandle then
            task.cancel(killTaskHandle)
        end
        workspace.Gravity = 196.2
    end
end)

local massKillTaskHandle
local massKillToggle = Tg(C, "全体杀戮", false, function(value)
    getgenv().MassKillEnabled = value
    if value then
        massKillTaskHandle = task.spawn(function()
            local SpinSpeed = 5
            local Height = 1
            local Radius = 4
            
            while getgenv().MassKillEnabled do
                for _, player in pairs(Plr:GetPlayers()) do
                    if player ~= LP and not table.find(getgenv().C_NPlayers, player.Name) then
                        if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                            LP.Character.HumanoidRootPart.CFrame = CFrame.new(
                                player.Character.HumanoidRootPart.Position + 
                                Vector3.new(
                                    math.sin(tick() * SpinSpeed * math.pi) * Radius, 
                                    Height, 
                                    math.cos(tick() * SpinSpeed * math.pi) * Radius
                                ),
                                player.Character.HumanoidRootPart.Position
                            )
                            
                            workspace.Gravity = 0
                            
                            task.wait()
                            if LP.Character:WaitForChild("HumanoidRootPart") then
                                if LP.Character:FindFirstChildOfClass("Tool") then
                                    LP.ninjaEvent:FireServer("swingKatana")
                                else
                                    for _, tool in pairs(LP.Backpack:GetChildren()) do
                                        if tool.ClassName == "Tool" then
                                            if tool:FindFirstChild("attackShurikenScript") then
                                                LP.Character.Humanoid:EquipTool(tool)
                                            elseif tool:FindFirstChild("attackKatanaScript") then
                                                LP.Character.Humanoid:EquipTool(tool)
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
                task.wait()
            end
            workspace.Gravity = 196.2
        end)
    else
        if massKillTaskHandle then
            task.cancel(massKillTaskHandle)
        end
        workspace.Gravity = 196.2
    end
end)

C:Button({
    Title = "刷新玩家列表", 
    Callback = function()
        excludeTargetsDropdown:Refresh(PlayerList)
        killTargetsDropdown:Refresh(PlayerList)
    end
})
        
D:Input({
    Title = "修改连跳",
    Placeholder = "输入连跳次数",
    Callback = function(Value)
        game.Players.LocalPlayer.multiJumpCount.Value = tonumber(Value)
    end
})
        
D:Divider()

Btn(D, "解锁所有岛屿", function()
    local positions = {
        CFrame.new(26, 766, -114),
        CFrame.new(247, 2013, 347),
        CFrame.new(162, 4047, 13),
        CFrame.new(200, 5656, 13),
        CFrame.new(200, 9284, 13),
        CFrame.new(200, 13679, 13),
        CFrame.new(200, 17686, 13),
        CFrame.new(200, 24069, 13),
        CFrame.new(197, 28256, 7),
        CFrame.new(197, 33206, 7),
        CFrame.new(197, 39317, 7),
        CFrame.new(197, 46010, 7),
        CFrame.new(197, 52607, 7),
        CFrame.new(197, 59594, 7),
        CFrame.new(197, 66668, 7),
        CFrame.new(197, 70270, 7),
        CFrame.new(197, 74442, 7),
        CFrame.new(197, 79746, 7),
        CFrame.new(197, 83198, 7),
        CFrame.new(197, 91245, 7)
    }
            
    for _, pos in ipairs(positions) do
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
        wait(0.1)
    end
end)

Btn(D, "获取所有宝箱", function()
    local playerHead = game.Players.LocalPlayer.Character.Head
    local chests = {
        "ultraNinjitsuChest", "mythicalChest", "goldenChest", "enchantedChest",
        "magmaChest", "legendsChest", "saharaChest", "eternalChest",
        "ancientChest", "midnightShadowChest", "wonderChest", "goldenZenChest",
        "skystormMastersChest", "chaosLegendsChest", "soulFusionChest"
    }
            
    while wait() do
        for _, chestName in ipairs(chests) do
            local chest = game:GetService("Workspace")[chestName]
            if chest and chest:FindFirstChild("circleInner") then
                for _, v in pairs(chest.circleInner:GetDescendants()) do
                    if v.Name == "TouchInterest" and v.Parent then
                        firetouchinterest(playerHead, v.Parent, 0)
                        wait()
                        firetouchinterest(playerHead, v.Parent, 1)
                    end
                end
            end
        end
    end
end)
        
local isRunning = false

Tg(D, "吸星大法", false, function(AlienX)
    if AlienX and not isRunning then
        isRunning = true
        spawn(function()
            while isRunning do
                local playerCFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                local children = workspace.Hoops:GetChildren()
                for i, child in ipairs(children) do
                    if child.Name == "Hoop" then
                        child.CFrame = playerCFrame
                    end
                end
                wait()
            end
        end)
    else
        isRunning = false
    end
end)
        
local eggs = {}
for i, v in pairs(game.Workspace.mapCrystalsFolder:GetChildren()) do
    table.insert(eggs, v.Name)
end

E:Dropdown({
    Title = "选择抽奖机", 
    Values = eggs,
    Value = "",
    Callback = function(selectedEgg)
        selectegg = selectedEgg
    end
})

E:Toggle({
    Title = "自动购买", 
    Value = false,
    Callback = function(open)
        getgenv().openegg = open
        while getgenv().openegg do
            wait()
            local A_1 = "openCrystal"
            local A_2 = selectegg
            local Event = game:GetService("ReplicatedStorage").rEvents.openCrystalRemote
            Event:InvokeServer(A_1, A_2)
        end
    end
})
        
Tg(F, "普通Boss", false, function(AlineX)
    getgenv().AutoBo = AlineX
    if AlineX then
        AutoFunctions.doBo()
    end
end)
      
Tg(F, "永恒Boss", false, function(AlineX)
    getgenv().AutoBo1 = AlineX
    if AlineX then
        AutoFunctions.doBo1()
    end
end)
      
Tg(F, "岩浆Boss", false, function(AlineX)
    getgenv().AutoBo2 = AlineX
    if AlineX then
        AutoFunctions.doBo2()
    end
end)
