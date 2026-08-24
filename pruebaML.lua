local parts = {}
local partSize = 2048
local totalDistance = 50000
local startPosition = Vector3.new(-2, -9.5, -2)

local function createAllParts()
    local numberOfParts = math.ceil(totalDistance / partSize)
    
    for x = 0, numberOfParts - 1 do
        for z = 0, numberOfParts - 1 do
            local function createPart(pos, name)
                local part = Instance.new("Part")
                part.Size = Vector3.new(partSize, 1, partSize)
                part.Position = pos
                part.Anchored = true
                part.Transparency = 1
                part.CanCollide = true
                part.Name = name
                part.Parent = workspace
                return part
            end
            
            table.insert(parts, createPart(startPosition + Vector3.new(x*partSize,0,z*partSize), "Part_Side_"..x.."_"..z))
            table.insert(parts, createPart(startPosition + Vector3.new(-x*partSize,0,z*partSize), "Part_LeftRight_"..x.."_"..z))
            table.insert(parts, createPart(startPosition + Vector3.new(-x*partSize,0,-z*partSize), "Part_UpLeft_"..x.."_"..z))
            table.insert(parts, createPart(startPosition + Vector3.new(x*partSize,0,-z*partSize), "Part_UpRight_"..x.."_"..z))
        end
    end
end
task.spawn(createAllParts)

--// =========================
--// ANTI-AFK
--// =========================

local Players = game:GetService("Players")
local VirtualUser = game:GetService("VirtualUser")
local RunService = game:GetService("RunService")

local LocalPlayer = Players.LocalPlayer

local AntiAFKConnection = nil
local AFKTimerThread = nil
local RainbowThread = nil
local AntiAFKEnabled = false
local AntiAFKStartTime = 0

-- GUI independiente para Anti-AFK
local AntiAFKGui = Instance.new("ScreenGui")
AntiAFKGui.Name = "AntiAFKGui"
AntiAFKGui.ResetOnSpawn = false
AntiAFKGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
AntiAFKGui.Enabled = false
AntiAFKGui.Parent = LocalPlayer:WaitForChild("PlayerGui")

local AntiAFKLabel = Instance.new("TextLabel")
AntiAFKLabel.Name = "Timer"
AntiAFKLabel.Size = UDim2.new(0, 300, 0, 40)
AntiAFKLabel.Position = UDim2.new(0.5, -150, 0, 10)
AntiAFKLabel.BackgroundTransparency = 1
AntiAFKLabel.Text = "ANTI AFK: 00:00:00"
AntiAFKLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
AntiAFKLabel.Font = Enum.Font.GothamBold
AntiAFKLabel.TextSize = 25
AntiAFKLabel.TextXAlignment = Enum.TextXAlignment.Center
AntiAFKLabel.TextYAlignment = Enum.TextYAlignment.Center
AntiAFKLabel.Parent = AntiAFKGui


local function stopAntiAFK()
    AntiAFKEnabled = false

    -- Desconectar evento Idled
    if AntiAFKConnection then
        AntiAFKConnection:Disconnect()
        AntiAFKConnection = nil
    end

    -- Cancelar contador
    if AFKTimerThread then
        task.cancel(AFKTimerThread)
        AFKTimerThread = nil
    end

    -- Cancelar rainbow
    if RainbowThread then
        task.cancel(RainbowThread)
        RainbowThread = nil
    end

    -- Ocultar GUI
    AntiAFKGui.Enabled = false
end


local function startAntiAFK()
    -- Evitar duplicados
    stopAntiAFK()

    AntiAFKEnabled = true
    AntiAFKStartTime = os.clock()

    AntiAFKGui.Enabled = true

    --// Anti-AFK real
    AntiAFKConnection = LocalPlayer.Idled:Connect(function()
        if not AntiAFKEnabled then
            return
        end

        pcall(function()
            VirtualUser:CaptureController()
            VirtualUser:ClickButton2(Vector2.new(0, 0))
        end)
    end)

    --// Contador
    AFKTimerThread = task.spawn(function()
        while AntiAFKEnabled do
            local elapsed = math.floor(os.clock() - AntiAFKStartTime)

            local hours = math.floor(elapsed / 3600)
            local minutes = math.floor((elapsed % 3600) / 60)
            local seconds = elapsed % 60

            AntiAFKLabel.Text = string.format(
                "ANTI AFK: %02d:%02d:%02d",
                hours,
                minutes,
                seconds
            )

            task.wait(1)
        end
    end)

    --// Rainbow
    RainbowThread = task.spawn(function()
        local hue = 0

        while AntiAFKEnabled do
            AntiAFKLabel.TextColor3 = Color3.fromHSV(hue, 1, 1)

            hue += 0.01

            if hue >= 1 then
                hue = 0
            end

            task.wait(0.03)
        end
    end)
end


local AntiAFKSwitch = MainTab:AddSwitch("Anti-AFK", function(state)
    if state then
        startAntiAFK()
    else
        stopAntiAFK()
    end
end)

AntiAFKSwitch:Set(false)

walkonwaterSwicth:Set(false)

local running = false

local running = false

local running = false

local running = false
local thread

local running = false
local thread

local antiKnockbackSwitch = MainTab:AddSwitch("Anti Fling", function(bool)
    if bool then
        local playerName = game.Players.LocalPlayer.Name
        local character = game.Workspace:FindFirstChild(playerName)
        if character then
            local rootPart = character:FindFirstChild("HumanoidRootPart")
            if rootPart then
                local bodyVelocity = Instance.new("BodyVelocity")
                bodyVelocity.MaxForce = Vector3.new(100000, 0, 100000)
                bodyVelocity.Velocity = Vector3.new(0, 0, 0)
                bodyVelocity.P = 1250
                bodyVelocity.Parent = rootPart
            end
        end
    else
        local playerName = game.Players.LocalPlayer.Name
        local character = game.Workspace:FindFirstChild(playerName)
        if character then
            local rootPart = character:FindFirstChild("HumanoidRootPart")
            if rootPart then
                local existingVelocity = rootPart:FindFirstChild("BodyVelocity")
                if existingVelocity and existingVelocity.MaxForce == Vector3.new(100000, 0, 100000) then
                    existingVelocity:Destroy()
                end
            end
        end
    end
end)
antiKnockbackSwitch:Set(false)

local switch = MainTab:AddSwitch("Lock Position", function(Value)
    if Value then
        -- Lock Position
        local currentPos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        getgenv().posLock = game:GetService("RunService").Heartbeat:Connect(function()
            if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = currentPos
            end
        end)
    else
        -- Unlock Position
        if getgenv().posLock then
            getgenv().posLock:Disconnect()
            getgenv().posLock = nil
        end
    end
end)

local godModeToggle = false
MainTab:AddSwitch("God mode", function(State)
    godModeToggle = State
    if State then
        task.spawn(function()
            while godModeToggle do
                game:GetService("ReplicatedStorage").rEvents.brawlEvent:FireServer("joinBrawl")
                task.wait()
            end
        end)
    end
end)

MainTab:AddButton("Rejoin", function()
    local TeleportService = game:GetService("TeleportService")
    local Players = game:GetService("Players")
    local LocalPlayer = Players.LocalPlayer

    TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer)
end)

MainTab:AddButton("Server Hop", function()
    local TeleportService = game:GetService("TeleportService")
    local Players = game:GetService("Players")
    local HttpService = game:GetService("HttpService")

    local LocalPlayer = Players.LocalPlayer
    local PlaceId = game.PlaceId
    local CurrentJobId = game.JobId

    local success, result = pcall(function()
        return game:HttpGet(
            "https://games.roblox.com/v1/games/" ..
            PlaceId ..
            "/servers/Public?sortOrder=Asc&limit=100"
        )
    end)

    if not success then
        warn("No se pudieron obtener los servidores.")
        return
    end

    local data = HttpService:JSONDecode(result)

    for _, server in ipairs(data.data) do
        if server.id ~= CurrentJobId and server.playing < server.maxPlayers then
            TeleportService:TeleportToPlaceInstance(
                PlaceId,
                server.id,
                LocalPlayer
            )
            break
        end
    end
end)

MainTab:AddButton("Optimizator", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ALPHAneegy/temp/refs/heads/main/optimizador.lua"))()
    end)

local Players = game:GetService("Players")
local HttpService = game:GetService("HttpService")

local localPlayer = Players.LocalPlayer
local username = localPlayer.Name
local userId = localPlayer.UserId

local Player = Players.LocalPlayer
local player = game.Players.LocalPlayer
local VirtualInputManager = game:GetService("VirtualInputManager")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local muscleEvent = player:WaitForChild("muscleEvent")
local leaderstats = player:WaitForChild("leaderstats")
local rebirthsStat = leaderstats:WaitForChild("Rebirths")

local replicatedStorage = game:GetService("ReplicatedStorage")
local blockedFrames = {
    "strengthFrame",
    "durabilityFrame",
    "agilityFrame",
}

for _, name in ipairs(blockedFrames) do
    local frame = replicatedStorage:FindFirstChild(name)
    if frame and frame:IsA("GuiObject") then
        frame.Visible = false
    end
end

replicatedStorage.ChildAdded:Connect(function(child)
    if table.find(blockedFrames, child.Name) and child:IsA("GuiObject") then
        child.Visible = false
    end
end)

local petShop = window:AddTab("Buyer")
petShop:AddLabel("Buy unique pets:").TextSize = 25

petShop:AddButton("Buy overlord", function()
    local Event = game:GetService("ReplicatedStorage").rEvents.cPetShopRemote
    Event:InvokeServer(
        game:GetService("ReplicatedStorage").shared.runtime.cPetShopFolder["Apex Overlord"]
    )
end)

petShop:AddButton("Buy Titan reactor", function()
    local Event = game:GetService("ReplicatedStorage").rEvents.cPetShopRemote
    Event:InvokeServer(
        game:GetService("ReplicatedStorage").shared.runtime.cPetShopFolder["Titan Reactor"]
    )
end)

petShop:AddButton("Buy Plasma ravager", function()
    local Event = game:GetService("ReplicatedStorage").rEvents.cPetShopRemote
    Event:InvokeServer(
        game:GetService("ReplicatedStorage").shared.runtime.cPetShopFolder["Plasma Ravager"]
    )
end)

petShop:AddButton("Buy Reactor Beao (not working)", function()
    local Event = game:GetService("ReplicatedStorage").rEvents.cPetShopRemote
    Event:InvokeServer(
        game:GetService("ReplicatedStorage").shared.runtime.cPetShopFolder["Beao Reactor"]
    )
end)

petShop:AddButton("Buy neon", function()
    local Event = game:GetService("ReplicatedStorage").rEvents.cPetShopRemote
    Event:InvokeServer(
        game:GetService("ReplicatedStorage").shared.runtime.cPetShopFolder["Neon Guardian"]
    )
end)

petShop:AddButton("Buy darkstar", function()
    local Event = game:GetService("ReplicatedStorage").rEvents.cPetShopRemote
    Event:InvokeServer(
        game:GetService("ReplicatedStorage").shared.runtime.cPetShopFolder["Darkstar Hunter"]
    )
end)

petShop:AddButton("Buy cybernetic dragon", function()
    local Event = game:GetService("ReplicatedStorage").rEvents.cPetShopRemote
    Event:InvokeServer(
        game:GetService("ReplicatedStorage").shared.runtime.cPetShopFolder["Cybernetic Showdown Dragon"]
    )
end)

petShop:AddLabel("Buy unique auras")

petShop:AddButton("Buy muscle king aura", function()
    local Event = game:GetService("ReplicatedStorage").rEvents.cPetShopRemote
    Event:InvokeServer(
        game:GetService("ReplicatedStorage").shared.runtime.cPetShopFolder["Muscle King"]
    )
end)

petShop:AddButton("Buy entropic blast aura", function()
    local Event = game:GetService("ReplicatedStorage").rEvents.cPetShopRemote
    Event:InvokeServer(
    game:GetService("ReplicatedStorage").shared.runtime.cPetShopFolder["Entropic Blast"]
    )
end)

MainTab:AddButton("Rejoin", function()
    local TeleportService = game:GetService("TeleportService")
    local Players = game:GetService("Players")
    local LocalPlayer = Players.LocalPlayer

    TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer)
end)

local teleeport = window:AddTab("Teleport")

teleeport:AddLabel("Zones:").TextSize = 25

teleeport:AddButton("Spawn", function()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
    humanoidRootPart.CFrame = CFrame.new(2, 8, 115)
    
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Teletransporte",
        Text = "Teleported to Spawn",
        Duration = 0
    })
end)

teleeport:AddButton("Secret Area", function()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
    humanoidRootPart.CFrame = CFrame.new(1947, 2, 6191)
    
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Teletransporte",
        Text = "Teleported to Secret Area",
        Duration = 0
    })
end)

teleeport:AddButton("Tiny Island", function()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
    humanoidRootPart.CFrame = CFrame.new(-34, 7, 1903)
    
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Teletransporte",
        Text = "Teleported to Tiny Island",
        Duration = 0
    })
end)

local function teleportToLocation(position, notificationText)
    local char = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
    if char then
        char:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(position)
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Teleporte",
            Text = notificationText,
            Duration = 3,
        })
    end
end

Vector3.new(-4666.6787109375, 60.48521041870117, 4961.8017578125)

local teleportLocations = {
    { name = "Teleport Frozen",  pos = Vector3.new(-2600.00244, 3.67686558, -403.884369), text = "Teleportando a Área Congelada" },
    { name = "Mythical",         pos = Vector3.new(2255, 7, 1071),                   text = "Teleportando a Área Mística" },
    { name = "Inferno",          pos = Vector3.new(-6768, 7, -1287),                 text = "Teleportando a Área Inferno" },
    { name = "Legend",           pos = Vector3.new(4604, 991, -3887),                text = "Teleportando a Área das Lendas" },
    { name = "Industrial Gym",         pos = Vector3.new(-4666.6787109375, 60.48521041870117, 4961.8017578125),                   text = "Teleportando a Industria" },
    { name = "Muscle King Gym",  pos = Vector3.new(-8646, 17, -5738),                text = "Teleportando ao Rei do Musculo" },
    { name = "Jungle",           pos = Vector3.new(-8659, 6, 2384),                  text = "Teleportando a Selva" },
    { name = "Brawl Lava",       pos = Vector3.new(4471, 119, -8836),                text = "Teleportando a Ilha de Lava" },
    { name = "Brawl Desert",     pos = Vector3.new(960, 17, -7398),                  text = "Teleportando a Ilha de Deserto" },
    { name = "Brawl Regular",    pos = Vector3.new(-1849, 20, -6335),                text = "Teleportando a Combate de Praia" },
}

for _, loc in ipairs(teleportLocations) do
    local cachedPos = loc.pos
    local cachedText = loc.text
    teleeport:AddButton(loc.name, function()
        teleportToLocation(cachedPos, cachedText)
    end)
end


local FastRebTab = window:AddTab("Fast Rebirth")

local function formatNumber(num)
    if num >= 1e15 then return string.format("%.2fQ", num/1e15) end
    if num >= 1e12 then return string.format("%.2fT", num/1e12) end
    if num >= 1e9 then return string.format("%.2fB", num/1e9) end
    if num >= 1e6 then return string.format("%.2fM", num/1e6) end
    if num >= 1e3 then return string.format("%.2fK", num/1e3) end
    return string.format("%.0f", num)
end

local isRunning = false
local startTime = 0
local totalElapsed = 0
local initialRebirths = rebirthsStat.Value
local lastPaceUpdate = 0

local serverLabel = FastRebTab:AddLabel("Time:")
serverLabel.TextSize = 20
local timeLabel = FastRebTab:AddLabel("0d 0h 0m 0s - Inactive")
local paceLabel = FastRebTab:AddLabel("Pace: 0 / Hour | 0 / Day | 0 / Week")
local averagePaceLabel = FastRebTab:AddLabel("Average Pace: 0 / Hour | 0 / Day | 0 / Week")

paceLabel.TextSize = 17
averagePaceLabel.TextSize = 17


timeLabel.TextSize = 17
timeLabel.TextColor3 = Color3.fromRGB(255, 50, 50)
paceLabel.TextSize = 17

local rebirthsStatsLabel = FastRebTab:AddLabel("Rebirths: "..formatNumber(rebirthsStat.Value).." | Gained: 0")
rebirthsStatsLabel.TextSize = 17


local lastRebirthTime = tick()
local lastRebirthValue = rebirthsStat.Value

local function updateRebirthsLabel()
    local gained = rebirthsStat.Value - initialRebirths
    rebirthsStatsLabel.Text = string.format("Rebirths: %s | Gained: %s", 
                                           formatNumber(rebirthsStat.Value), 
                                           formatNumber(gained))
end

local function updateUI(forceUpdate)
    local currentTime = tick()
    local elapsed = isRunning and (currentTime - startTime + totalElapsed) or totalElapsed
    
    local days = math.floor(elapsed / 86400)
    local hours = math.floor((elapsed % 86400) / 3600)
    local minutes = math.floor((elapsed % 3600) / 60)
    local seconds = math.floor(elapsed % 60)
    
    timeLabel.Text = string.format("%dd %dh %dm %ds - %s", days, hours, minutes, seconds,
                                 isRunning and "Rebirthing" or "Paused")
    timeLabel.TextColor3 = isRunning and Color3.fromRGB(50, 255, 50) or Color3.fromRGB(255, 50, 50)
end

local lastRebirthTime = tick()
local lastRebirthValue = rebirthsStat.Value

local paceHistoryHour = {}
local paceHistoryDay = {}
local paceHistoryWeek = {}

local maxHistoryLength = 20

local rebirthCount = 0

local function calculatePaceOnRebirth()
    rebirthCount = rebirthCount + 1
    
    -- Erst ab dem 2. Rebirth berechnen
    if rebirthCount < 2 then
        lastRebirthTime = tick()
        lastRebirthValue = rebirthsStat.Value
        return
    end

    local now = tick()
    local gained = rebirthsStat.Value - lastRebirthValue

    if gained > 0 then
        local avgTimePerRebirth = (now - lastRebirthTime) / gained
        local paceHour = 3600 / avgTimePerRebirth
        local paceDay = 24000 / avgTimePerRebirth
        local paceWeek = 604800 / avgTimePerRebirth

        paceLabel.Text = string.format("Pace: %s / Hour | %s / Day | %s / Week",
            formatNumber(paceHour), formatNumber(paceDay), formatNumber(paceWeek))

        table.insert(paceHistoryHour, paceHour)
        table.insert(paceHistoryDay, paceDay)
        table.insert(paceHistoryWeek, paceWeek)

        if #paceHistoryHour > maxHistoryLength then
            table.remove(paceHistoryHour, 1)
            table.remove(paceHistoryDay, 1)
            table.remove(paceHistoryWeek, 1)
        end

        local function average(tbl)
            local sum = 0
            for _, v in ipairs(tbl) do
                sum = sum + v
            end
            return #tbl > 0 and (sum / #tbl) or 0
        end

        local avgHour = average(paceHistoryHour)
        local avgDay = average(paceHistoryDay)
        local avgWeek = average(paceHistoryWeek)

        averagePaceLabel.Text = string.format("Average Pace: %s / Hour | %s / Day | %s / Week",
            formatNumber(avgHour), formatNumber(avgDay), formatNumber(avgWeek))

        lastRebirthTime = now
        lastRebirthValue = rebirthsStat.Value
    end
end




rebirthsStat:GetPropertyChangedSignal("Value"):Connect(function()
    calculatePaceOnRebirth()
    updateRebirthsLabel()
end)

local currentPetName = "Swift Samurai"

local function equipPet(petName)
    for _, pet in pairs(player.petsFolder.Unique:GetChildren()) do
        if pet.Name == petName then
            replicatedStorage.rEvents.equipPetEvent:FireServer("equipPet", pet)
            task.wait(0.1)
            return true
        end
    end

    return false
end

local function doRebirth()
    local rebirths = rebirthsStat.Value
    local strengthTarget = 5000 + (rebirths * 2550)

    while isRunning and player.leaderstats.Strength.Value < strengthTarget do
        local reps = player.MembershipType == Enum.MembershipType.Premium and 8 or 14

        for _ = 1, reps do
            muscleEvent:FireServer("rep")
        end

        task.wait(0.01)
    end

    if isRunning and player.leaderstats.Strength.Value >= strengthTarget then
        local before = rebirthsStat.Value

        repeat
            replicatedStorage.rEvents.rebirthRemote:InvokeServer("rebirthRequest")
            task.wait(0.05)
        until rebirthsStat.Value > before or not isRunning

        -- Volver a equipar la pet después del rebirth
        if isRunning then
            task.wait(0.2)
            equipPet(currentPetName)
        end
    end
end

local function fastRebirthLoop()
    -- Equipar una sola vez al comenzar
    equipPet(currentPetName)

    while isRunning do
        doRebirth()
        task.wait(0.05)
    end
end

FastRebTab:AddLabel("")

local RebirthLabel = FastRebTab:AddLabel("Rebirthing:")
RebirthLabel.TextSize = 20

FastRebTab:AddSwitch("Fast Rebirth", function(state)
    isRunning = state
    
    if state then
        startTime = tick()
        task.spawn(fastRebirthLoop)
    else
        totalElapsed = totalElapsed + (tick() - startTime)
        updateUI(true)
    end
end)

rebirthsStat:GetPropertyChangedSignal("Value"):Connect(function()
    if isRunning then
        calculatePace()
    end
    updateRebirthsLabel() 
end)

task.spawn(function()
    while true do
        updateUI(false)
        task.wait(0.1)
    end
end)


local running = false
local thread = nil

local sizeSwitch = FastRebTab:AddSwitch("Set Size 1", function(bool)
    running = bool
    if running then
        thread = coroutine.create(function()
            while running do
                game:GetService("ReplicatedStorage").rEvents.changeSpeedSizeRemote:InvokeServer("changeSize", 1)
                wait(0.01)
            end
        end)
        coroutine.resume(thread)
    end
end)

FastRebTab:AddButton("Anti Lag", function()
    local player = game.Players.LocalPlayer
    local playerGui = player:WaitForChild("PlayerGui")
    local lighting = game:GetService("Lighting")

    for _, gui in pairs(playerGui:GetChildren()) do
        if gui:IsA("ScreenGui") then
            gui:Destroy()
        end
    end

    local function darkenSky()
        for _, v in pairs(lighting:GetChildren()) do
            if v:IsA("Sky") then
                v:Destroy()
            end
        end

        local darkSky = Instance.new("Sky")
        darkSky.Name = "DarkSky"
        darkSky.SkyboxBk = "rbxassetid://0"
        darkSky.SkyboxDn = "rbxassetid://0"
        darkSky.SkyboxFt = "rbxassetid://0"
        darkSky.SkyboxLf = "rbxassetid://0"
        darkSky.SkyboxRt = "rbxassetid://0"
        darkSky.SkyboxUp = "rbxassetid://0"
        darkSky.Parent = lighting

        lighting.Brightness = 0
        lighting.ClockTime = 0
        lighting.TimeOfDay = "00:00:00"
        lighting.OutdoorAmbient = Color3.new(0, 0, 0)
        lighting.Ambient = Color3.new(0, 0, 0)
        lighting.FogColor = Color3.new(0, 0, 0)
        lighting.FogEnd = 100

        task.spawn(function()
            while true do
                wait(5)
                if not lighting:FindFirstChild("DarkSky") then
                    darkSky:Clone().Parent = lighting
                end
                lighting.Brightness = 0
                lighting.ClockTime = 0
                lighting.OutdoorAmbient = Color3.new(0, 0, 0)
                lighting.Ambient = Color3.new(0, 0, 0)
                lighting.FogColor = Color3.new(0, 0, 0)
                lighting.FogEnd = 100
            end
        end)
    end

    local function removeParticleEffects()
        for _, obj in pairs(workspace:GetDescendants()) do
            if obj:IsA("ParticleEmitter") then
                obj:Destroy()
            end
        end
    end

    local function removeLightSources()
        for _, obj in pairs(workspace:GetDescendants()) do
            if obj:IsA("PointLight") or obj:IsA("SpotLight") or obj:IsA("SurfaceLight") then
                obj:Destroy()
            end
        end
    end

    removeParticleEffects()
    removeLightSources()
    darkenSky()
end)

FastRebTab:AddLabel("")

local miscLabel = FastRebTab:AddLabel("Misc:")
miscLabel.TextSize = 20

local lockRunning = false
local lockThread = nil

local lockSwitch = FastRebTab:AddSwitch("Lock Position", function(state)
    lockRunning = state
    if lockRunning then
        local player = game.Players.LocalPlayer
        local char = player.Character or player.CharacterAdded:Wait()
        local hrp = char:WaitForChild("HumanoidRootPart")
        local lockPosition = hrp.Position

        lockThread = coroutine.create(function()
            while lockRunning do
                hrp.Velocity = Vector3.new(0, 0, 0)
                hrp.RotVelocity = Vector3.new(0, 0, 0)
                hrp.CFrame = CFrame.new(lockPosition)
                wait(0.05) 
            end
        end)

        coroutine.resume(lockThread)
    end
end)

local function activateShake()
    local tool = player.Character:FindFirstChild("ultraShake") or player.Backpack:FindFirstChild("ultraShake")
    if tool then
        muscleEvent:FireServer("ultraShake", tool)
    end
end

local running = false

task.spawn(function()
    while true do
        if running then
            activateShake()
            task.wait(450)
        else
            task.wait(1)
        end
    end
end)

local autoshakeSwitch = FastRebTab:AddSwitch("Auto Shake", function(state)
    running = state
    if state then
        activateShake()
    end
end)
autoshakeSwitch:Set(false)

local spinwheelSwitch = FastRebTab:AddSwitch("Spin Fortune Wheel", function(bool)
    _G.AutoSpinWheel = bool
    
    if bool then
        spawn(function()
            while _G.AutoSpinWheel and wait(1) do
                game:GetService("ReplicatedStorage").rEvents.openFortuneWheelRemote:InvokeServer("openFortuneWheel", game:GetService("ReplicatedStorage").fortuneWheelChances["Fortune Wheel"])
            end
        end)
    end
end)

FastRebTab:AddSwitch("Unlock AutoLift Gamepass", false, "Unlock the AutoLift Game Pass for free", function(state)
    if not state then return end

    local fetchResult = pcall(function()
        return ReplicatedStorage:WaitForChild("gamepassIds", 2)
    end)

    local gamepassIds = ReplicatedStorage:FindFirstChild("gamepassIds")
    if not fetchResult or not gamepassIds then
        warn("gamepassIds not found in ReplicatedStorage")
        return
    end

    if not LocalPlayer then return end

    local ownedFolder = LocalPlayer:FindFirstChild("ownedGamepasses")
    if not ownedFolder then
        ownedFolder = Instance.new("Folder")
        ownedFolder.Name = "ownedGamepasses"
        ownedFolder.Parent = LocalPlayer
    end

    for _, gp in pairs(gamepassIds:GetChildren()) do
        local intVal = Instance.new("IntValue")
        intVal.Name = gp.Name
        intVal.Value = gp.Value or 1
        intVal.Parent = ownedFolder
    end
end)


FastRebTab:AddButton("Industrial Lift",function()
    local player = game.Players.LocalPlayer
    local char = player.Character or Player.CharacterAdded:wait()
    local hrp = char:WaitForChild("HumanoidRootPart")
    hrp.CFrame = CFrame.new(-5506.76318359375, 64.15147399902344, 4642.99169921875)
    task.wait(0.2)
    VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.E, false, game)
    task.wait(0.05)
    VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.E, false, game)
end)

FastRebTab:AddButton("Industrial Bench",function()
    local player = game.Players.LocalPlayer
    local char = player.Character or Player.CharacterAdded:wait()
    local hrp = char:WaitForChild("HumanoidRootPart")
    hrp.CFrame = CFrame.new(-5011.38671875, 64.15147399902344, 4467.22216796875)
    task.wait(0.2)
    VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.E, false, game)
    task.wait(0.05)
    VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.E, false, game)
end)




local FarmingTab = window:AddTab("Fast Farm")

local strengthStat = leaderstats:WaitForChild("Strength")
local durabilityStat = player:WaitForChild("Durability")

local function formatNumber(number)
    local isNegative = number < 0
    number = math.abs(number)
    if number >= 1e15 then
        return (isNegative and "-" or "") .. string.format("%.2fQa", number / 1e15)
    elseif number >= 1e12 then
        return (isNegative and "-" or "") .. string.format("%.2fT", number / 1e12)
    elseif number >= 1e9 then
        return (isNegative and "-" or "") .. string.format("%.2fB", number / 1e9)
    elseif number >= 1e6 then
        return (isNegative and "-" or "") .. string.format("%.2fM", number / 1e6)
    elseif number >= 1e3 then
        return (isNegative and "-" or "") .. string.format("%.2fK", number / 1e3)
    else
        return (isNegative and "-" or "") .. string.format("%.2f", number)
    end
end

local statsLabel = FarmingTab:AddLabel("Stats:")
statsLabel.TextSize = 25
local strengthLabel = FarmingTab:AddLabel("Strength: 0 | Gained: 0")
strengthLabel.TextSize = 15
local durabilityLabel = FarmingTab:AddLabel("Durability: 0 | Gained: 0")
durabilityLabel.TextSize = 15

local startTime = 0
local pausedElapsedTime = 0
local lastPauseTime = 0

local runFastRep = false
local trackingStarted = false

local autoRep = false

local strengthHistory = {}
local durabilityHistory = {}
local calculationInterval = 10

local initialStrength = strengthStat.Value
local initialDurability = durabilityStat.Value

task.spawn(function()
    local lastCalcTime = tick()
    while true do
        local currentTime = tick()
        local currentStrength = strengthStat.Value
        local currentDurability = durabilityStat.Value

        strengthLabel.Text = "Strength: " .. formatNumber(currentStrength) .. " | Gained: " .. formatNumber(currentStrength - initialStrength)
        durabilityLabel.Text = "Durability: " .. formatNumber(currentDurability) .. " | Gained: " .. formatNumber(currentDurability - initialDurability)

        if runFastRep then
            if not trackingStarted then
                trackingStarted = true
                startTime = currentTime
                strengthHistory = {}
                durabilityHistory = {}
            end
            local elapsedTime = pausedElapsedTime + (currentTime - startTime)
            local days = math.floor(elapsedTime / (24 * 3600))
            local hours = math.floor((elapsedTime % (24 * 3600)) / 3600)
            local minutes = math.floor((elapsedTime % 3600) / 60)
            local seconds = math.floor(elapsedTime % 60)
            stopwatchLabel.Text = string.format("%dd %dh %dm %ds - Fast Rep Running", days, hours, minutes, seconds)
            stopwatchLabel.TextColor3 = Color3.fromRGB(50, 255, 50)

            table.insert(strengthHistory, {time = currentTime, value = currentStrength})
            table.insert(durabilityHistory, {time = currentTime, value = currentDurability})

            while #strengthHistory > 0 and currentTime - strengthHistory[1].time > calculationInterval do
                table.remove(strengthHistory, 1)
            end
            while #durabilityHistory > 0 and currentTime - durabilityHistory[1].time > calculationInterval do
                table.remove(durabilityHistory, 1)
            end

            if currentTime - lastCalcTime >= calculationInterval then
                lastCalcTime = currentTime

                if #strengthHistory >= 2 then
                    local strengthDelta = strengthHistory[#strengthHistory].value - strengthHistory[1].value
                    local strengthPerSecond = strengthDelta / calculationInterval
                    local strengthPerHour = strengthPerSecond * 3600
                    local strengthPerDay = strengthPerSecond * 86400
                    local strengthPerWeek = strengthPerSecond * 604800
                    projectedStrengthLabel.Text = "Strength Pace: " .. formatNumber(strengthPerHour) .. "/Hour | " .. formatNumber(strengthPerDay) .. "/Day | " .. formatNumber(strengthPerWeek) .. "/Week"
                end

                if #durabilityHistory >= 2 then
                    local durabilityDelta = durabilityHistory[#durabilityHistory].value - durabilityHistory[1].value
                    local durabilityPerSecond = durabilityDelta / calculationInterval
                    local durabilityPerHour = durabilityPerSecond * 3600
                    local durabilityPerDay = durabilityPerSecond * 86400
                    local durabilityPerWeek = durabilityPerSecond * 604800
                    projectedDurabilityLabel.Text = "Durability Pace: " .. formatNumber(durabilityPerHour) .. "/Hour | " .. formatNumber(durabilityPerDay) .. "/Day | " .. formatNumber(durabilityPerWeek) .. "/Week"
                end

                local totalElapsed = pausedElapsedTime + (currentTime - startTime)
                if totalElapsed > 0 then
                    local avgStrengthPerSecond = (currentStrength - initialStrength) / totalElapsed
                    local avgStrengthPerHour = avgStrengthPerSecond * 3600
                    local avgStrengthPerDay = avgStrengthPerSecond * 86400
                    local avgStrengthPerWeek = avgStrengthPerSecond * 604800
                    averageStrengthLabel.Text = "Average Strength Pace: " .. formatNumber(avgStrengthPerHour) .. "/Hour | " .. formatNumber(avgStrengthPerDay) .. "/Day | " .. formatNumber(avgStrengthPerWeek) .. "/Week"

                    local avgDurabilityPerSecond = (currentDurability - initialDurability) / totalElapsed
                    local avgDurabilityPerHour = avgDurabilityPerSecond * 3600
                    local avgDurabilityPerDay = avgDurabilityPerSecond * 86400
                    local avgDurabilityPerWeek = avgDurabilityPerSecond * 604800
                    averageDurabilityLabel.Text = "Average Durability Pace: " .. formatNumber(avgDurabilityPerHour) .. "/Hour | " .. formatNumber(avgDurabilityPerDay) .. "/Day | " .. formatNumber(avgDurabilityPerWeek) .. "/Week"
                end
            end
        else
            if trackingStarted then
                trackingStarted = false
                pausedElapsedTime = pausedElapsedTime + (currentTime - startTime)
                stopwatchLabel.Text = string.format("%dd %dh %dm %ds - Fast Rep Stopped", math.floor(pausedElapsedTime / (24 * 3600)), math.floor((pausedElapsedTime % (24 * 3600)) / 3600), math.floor((pausedElapsedTime % 3600) / 60), math.floor(pausedElapsedTime % 60))
                stopwatchLabel.TextColor3 = Color3.fromRGB(255, 165, 0)

                projectedStrengthLabel.Text = "Strength Pace: 0 /Hour | 0 /Day | 0 /Week"
                projectedDurabilityLabel.Text = "Durability Pace: 0 /Hour | 0 /Day | 0 /Week"
                averageStrengthLabel.Text = "Average Strength Pace: 0 /Hour | 0 /Day | 0 /Week"
                averageDurabilityLabel.Text = "Average Durability Pace: 0 /Hour | 0 /Day | 0 /Week"

                strengthHistory = {}
                durabilityHistory = {}
            end
        end

        task.wait(0.05)
    end
end)

FarmingTab:AddLabel("") 

FarmingTab:AddLabel("Fast reps").TextSize = 20
local ultimateFastStrengthEnabled = false

FarmingTab:AddSwitch("Ultimate Fast Strength", function(state)
    ultimateFastStrengthEnabled = state
    getgenv().isGrinding = state

    if not state then
        return
    end

    task.spawn(function()
        while ultimateFastStrengthEnabled do
            for _ = 1, 5 do
                for _ = 1, 4000 do
                    if not ultimateFastStrengthEnabled then
                        break
                    end

                    pcall(function()
                        LocalPlayer.muscleEvent:FireServer("rep")
                    end)
                end

                if not ultimateFastStrengthEnabled then
                    break
                end

                task.wait(0.2)
            end
        end
    end)
end)

FarmingTab:AddSwitch("Fast Punch", function(state)
    getgenv().FastTools = state

    local toolSettings = {
        { "Punch", "attackTime", state and 0 or 0.35 },
    }

    task.spawn(function()
        if not LocalPlayer then return end
        local backpack = LocalPlayer:WaitForChild("Backpack")

        for _, settings in ipairs(toolSettings) do
            local toolName, attribute, value = settings[1], settings[2], settings[3]

            local toolInBackpack = backpack:FindFirstChild(toolName)
            if toolInBackpack and toolInBackpack:FindFirstChild(attribute) then
                pcall(function()
                    toolInBackpack[attribute].Value = value
                end)
            end

            if LocalPlayer.Character then
                local toolInChar = LocalPlayer.Character:FindFirstChild(toolName)
                if toolInChar and toolInChar:FindFirstChild(attribute) then
                    pcall(function()
                        toolInChar[attribute].Value = value
                    end)
                end
            end
        end
    end)
end)


FarmingTab:AddLabel("Auto Exercise")

local function createAutoExercise(exerciseName)
    FarmingTab:AddSwitch("Auto " .. exerciseName, function(state)
        local globalKey = "Auto" .. exerciseName:gsub("%s", "")
        getgenv()[globalKey] = state

        task.spawn(function()
            while getgenv()[globalKey] do
                local character = LocalPlayer.Character
                local backpack = LocalPlayer:FindFirstChild("Backpack")

                local tool = character and character:FindFirstChild(exerciseName)

                if not tool and backpack then
                    tool = backpack:FindFirstChild(exerciseName)
                end

                if tool and character then
                    local humanoid = character:FindFirstChildOfClass("Humanoid")

                    if humanoid and tool.Parent ~= character then
                        pcall(function()
                            humanoid:EquipTool(tool)
                        end)
                    end

                    pcall(function()
                        LocalPlayer.muscleEvent:FireServer("rep")
                    end)
                end

                task.wait(0.1)
            end
        end)
    end)
end

createAutoExercise("Weight")
createAutoExercise("Pushups")
createAutoExercise("Handstands")
createAutoExercise("Situps")
createAutoExercise("Punch")

FastRebTab:AddLabel("")

FarmingTab:AddLabel("Misc:").TextSize = 20

local function unequipPets()
    for _, folder in pairs(Player.petsFolder:GetChildren()) do
        if folder:IsA("Folder") then
            for _, pet in pairs(folder:GetChildren()) do
                ReplicatedStorage.rEvents.equipPetEvent:FireServer("unequipPet", pet)
            end
        end
    end
    task.wait(0.1)
end

local function equipPetsByName(name)
    unequipPets()
    task.wait(0.01)
    for _, pet in pairs(Player.petsFolder.Unique:GetChildren()) do
        if pet.Name == name then
            ReplicatedStorage.rEvents.equipPetEvent:FireServer("equipPet", pet)
        end
    end
end

local function activateProteinEgg()
    local tool = Player.Character:FindFirstChild("Protein Egg") or Player.Backpack:FindFirstChild("Protein Egg")
    if tool then
        muscleEvent:FireServer("proteinEgg", tool)
    end
end

local running = false

task.spawn(function()
    while true do
        if running then
            activateProteinEgg()
            task.wait(1800)
        else
            task.wait(1)
        end
    end
end)

local switch = FarmingTab:AddSwitch("Auto Egg", function(state)
    running = state
    if state then
        activateProteinEgg()
    end
end)
switch:Set(false)

local function activateShake()
    local tool = Player.Character:FindFirstChild("Tropical Shake") or Player.Backpack:FindFirstChild("Tropical Shake")
    if tool then
        muscleEvent:FireServer("tropicalShake", tool)
    end
end

local running = false

task.spawn(function()
    while true do
        if running then
            activateShake()
            task.wait(900)
        else
            task.wait(1)
        end
    end
end)

local switch = FarmingTab:AddSwitch("Auto Shake", function(state)
    running = state
    if state then
        activateShake()
    end
end)
switch:Set(false)

local spinwheelSwitch = FarmingTab:AddSwitch("Spin Fortune Wheel", function(bool)
    _G.AutoSpinWheel = bool
    
    if bool then
        spawn(function()
            while _G.AutoSpinWheel and wait(1) do
                game:GetService("ReplicatedStorage").rEvents.openFortuneWheelRemote:InvokeServer("openFortuneWheel", game:GetService("ReplicatedStorage").fortuneWheelChances["Fortune Wheel"])
            end
        end)
    end
end)

FarmingTab:AddButton("Industrial Squat",function()
    local player = game.Players.LocalPlayer
    local char = player.Character or Player.CharacterAdded:wait()
    local hrp = char:WaitForChild("HumanoidRootPart")
    hrp.CFrame = CFrame.new(-5208.15625, 64.15147399902344, 5426.25830078125)
    task.wait(0.2)
    VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.E, false, game)
    task.wait(0.05)
    VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.E, false, game)
end)

FarmingTab:AddButton("Anti Lag", function()
    local player = game.Players.LocalPlayer
    local playerGui = player:WaitForChild("PlayerGui")
    local lighting = game:GetService("Lighting")

    for _, gui in pairs(playerGui:GetChildren()) do
        if gui:IsA("ScreenGui") then
            gui:Destroy()
        end
    end

    local function darkenSky()
        for _, v in pairs(lighting:GetChildren()) do
            if v:IsA("Sky") then
                v:Destroy()
            end
        end

        local darkSky = Instance.new("Sky")
        darkSky.Name = "DarkSky"
        darkSky.SkyboxBk = "rbxassetid://0"
        darkSky.SkyboxDn = "rbxassetid://0"
        darkSky.SkyboxFt = "rbxassetid://0"
        darkSky.SkyboxLf = "rbxassetid://0"
        darkSky.SkyboxRt = "rbxassetid://0"
        darkSky.SkyboxUp = "rbxassetid://0"
        darkSky.Parent = lighting

        lighting.Brightness = 0
        lighting.ClockTime = 0
        lighting.TimeOfDay = "00:00:00"
        lighting.OutdoorAmbient = Color3.new(0, 0, 0)
        lighting.Ambient = Color3.new(0, 0, 0)
        lighting.FogColor = Color3.new(0, 0, 0)
        lighting.FogEnd = 100

        task.spawn(function()
            while true do
                wait(5)
                if not lighting:FindFirstChild("DarkSky") then
                    darkSky:Clone().Parent = lighting
                end
                lighting.Brightness = 0
                lighting.ClockTime = 0
                lighting.OutdoorAmbient = Color3.new(0, 0, 0)
                lighting.Ambient = Color3.new(0, 0, 0)
                lighting.FogColor = Color3.new(0, 0, 0)
                lighting.FogEnd = 100
            end
        end)
    end

    local function removeParticleEffects()
        for _, obj in pairs(workspace:GetDescendants()) do
            if obj:IsA("ParticleEmitter") then
                obj:Destroy()
            end
        end
    end

    local function removeLightSources()
        for _, obj in pairs(workspace:GetDescendants()) do
            if obj:IsA("PointLight") or obj:IsA("SpotLight") or obj:IsA("SurfaceLight") then
                obj:Destroy()
            end
        end
    end

    removeParticleEffects()
    removeLightSources()
    darkenSky()
end)

FarmingTab:AddButton("Equip Swift Samurai", function()
    unequipPets()
    equipPetsByName("Swift Samurai")
end)

local GlitchingTab = window:AddTab("Rock Farming")

GlitchingTab:AddLabel("Rocks Farm:").TextSize = 25
local function equipAndPunch()
    if not LocalPlayer.Character then return end

    local backpack = LocalPlayer:FindFirstChild("Backpack")
    local character = LocalPlayer.Character
    local humanoid = character:FindFirstChildOfClass("Humanoid")

    if backpack and humanoid then
        local tool = character:FindFirstChild("Punch") or backpack:FindFirstChild("Punch")

        if tool and tool.Parent ~= character then
            pcall(function()
                humanoid:EquipTool(tool)
            end)
        end
    end

    pcall(function()
        LocalPlayer.muscleEvent:FireServer("punch", "leftHand")
        LocalPlayer.muscleEvent:FireServer("punch", "rightHand")
    end)
end

local function farmRockByDurability(requiredDurability, key)
    while getgenv()[key] do
        task.wait()

        local durability = LocalPlayer:FindFirstChild("Durability")
        if not durability then return end

        if durability.Value < requiredDurability then
            return
        end

        local machinesFolder = workspace:FindFirstChild("machinesFolder")
        if not machinesFolder then return end

        for _, obj in pairs(machinesFolder:GetDescendants()) do
            if not getgenv()[key] then
                return
            end

            if obj.Name == "neededDurability"
                and obj.Value == requiredDurability then

                local rock = obj.Parent:FindFirstChild("Rock")
                local char = LocalPlayer.Character

                if rock and char
                    and char:FindFirstChild("LeftHand")
                    and char:FindFirstChild("RightHand") then

                    firetouchinterest(rock, char.RightHand, 0)
                    firetouchinterest(rock, char.RightHand, 1)
                    firetouchinterest(rock, char.LeftHand, 0)
                    firetouchinterest(rock, char.LeftHand, 1)

                    equipAndPunch()
                end
            end
        end
    end
end

local function createRockToggle(toggleName, requiredDurability)
    local key = "RockFarm_" .. toggleName:gsub("%s", "")

    GlitchingTab:AddSwitch(toggleName, function(state)
        getgenv()[key] = state

        if state then
            task.spawn(function()
                farmRockByDurability(requiredDurability, key)
            end)
        end
    end)
end

createRockToggle("Tiny Rock", 0)
createRockToggle("Starter Rock", 100)
createRockToggle("Legend Beach Rock", 5000)
createRockToggle("Frozen Rock", 150000)
createRockToggle("Mythical Rock", 400000)
createRockToggle("Eternal Rock", 750000)
createRockToggle("Legend Rock", 1000000)
createRockToggle("Muscle King Rock", 5000000)
createRockToggle("Jungle Rock", 10000000)
createRockToggle("Industrial Jungle Rock", 25000000)

local SpecsTab = window:AddTab("Specs")

SpecsTab:AddLabel("Player Stats:").TextSize = 30

local playerToInspect = nil

local emojiMap = {
    ["Time"] = utf8.char(0x1F55B),
    ["Stats"] = utf8.char(0x1F4CA),
    ["Strength"] = utf8.char(0x1F4AA),
    ["Rebirths"] = utf8.char(0x1F504),
    ["Durability"] = utf8.char(0x1F6E1),
    ["Kills"] = utf8.char(0x1F480),
    ["Agility"] = utf8.char(0x1F3C3),
    ["Evil Karma"] = utf8.char(0x1F608),
    ["Good Karma"] = utf8.char(0x1F607),
    ["Brawls"] = utf8.char(0x1F94A)
}

local statDefinitions = {
    { name = "Strength", statName = "Strength" },
    { name = "Rebirths", statName = "Rebirths" },
    { name = "Durability", statName = "Durability" },
    { name = "Agility", statName = "Agility" },
    { name = "Kills", statName = "Kills" },
    { name = "Evil Karma", statName = "evilKarma" },
    { name = "Good Karma", statName = "goodKarma" },
    { name = "Brawls", statName = "Brawls" }
}

local function getCurrentPlayers()
    local playersList = {}
    for _, p in ipairs(Players:GetPlayers()) do
        table.insert(playersList, p)
    end
    return playersList
end

local specdropdown = SpecsTab:AddDropdown("Choose Player", function(text) 
    for _, player in ipairs(getCurrentPlayers()) do
        local optionText = player.DisplayName .. " | " .. player.Name
        if text == optionText then
            playerToInspect = player
            updateStatLabels(playerToInspect)
            break
        end
    end
end)

for _, player in ipairs(getCurrentPlayers()) do
    specdropdown:Add(player.DisplayName .. " | " .. player.Name)
end

Players.PlayerAdded:Connect(function(player)
    specdropdown:Add(player.DisplayName .. " | " .. player.Name)
end)

Players.PlayerRemoving:Connect(function(player)
    specdropdown:Clear()
    for _, p in ipairs(getCurrentPlayers()) do
        specdropdown:Add(p.DisplayName .. " | " .. p.Name)
    end
end)

local playerNameLabel = SpecsTab:AddLabel("Name: N/A")
playerNameLabel.TextSize = 20

local playerUsernameLabel = SpecsTab:AddLabel("Username: N/A")
playerUsernameLabel.TextSize = 20

local statLabels = {}
for _, info in ipairs(statDefinitions) do
    statLabels[info.name] = SpecsTab:AddLabel(emojiMap[info.name] .. " " .. info.name .. ": 0 (0)")
    statLabels[info.name].TextSize = 20
end

local function formatNumber(n)
    if n >= 1e15 then
        return string.format("%.1fqa", n/1e15)
    elseif n >= 1e12 then
        return string.format("%.1ft", n/1e12)
    elseif n >= 1e9 then
        return string.format("%.1fb", n/1e9)
    elseif n >= 1e6 then
        return string.format("%.1fm", n/1e6)
    elseif n >= 1e3 then
        return string.format("%.1fk", n/1e3)
    else
        return tostring(n)
    end
end

local function formatWithCommas(n)
    local formatted = tostring(math.floor(n))
    while true do
        formatted, k = formatted:gsub("^(-?%d+)(%d%d%d)", '%1,%2')
        if k == 0 then break end
    end
    return formatted
end


local function updateStatLabels(targetPlayer)
    if not targetPlayer then return end

    playerNameLabel.Text = "Name: " .. targetPlayer.DisplayName
    playerUsernameLabel.Text = "Username: " .. targetPlayer.Name

    local leaderstats = targetPlayer:FindFirstChild("leaderstats")
    if not leaderstats then return end

    for _, info in ipairs(statDefinitions) do
        local statObject

        if leaderstats:FindFirstChild(info.statName) then
            statObject = leaderstats:FindFirstChild(info.statName)
        elseif targetPlayer:FindFirstChild(info.statName) then
            statObject = targetPlayer:FindFirstChild(info.statName)
        end

        if statObject then
            local value = statObject.Value
            local emoji = emojiMap[info.name] or ""
            statLabels[info.name].Text = string.format(
                "%s %s: %s (%s)",
                emoji,
                info.name,
                formatNumber(value),
                formatWithCommas(value)
            )
        else
            statLabels[info.name].Text = emojiMap[info.name] .. " " .. info.name .. ": 0 (0)"
        end
    end
end

task.spawn(function()
    while true do
        if playerToInspect then
            updateStatLabels(playerToInspect)
        end
        task.wait(0.2)
    end
end)

SpecsTab:AddLabel("————————————————————————————")

SpecsTab:AddLabel("Advanced Stats:").TextSize = 24

local enemyHealthLabel = SpecsTab:AddLabel("Enemy Health: N/A")
enemyHealthLabel.TextSize = 20
enemyHealthLabel.TextColor3 = Color3.fromRGB(0, 140, 255)

local playerDamageLabel = SpecsTab:AddLabel("Your Damage: N/A")
playerDamageLabel.TextSize = 20
playerDamageLabel.TextColor3 = Color3.fromRGB(255, 0, 0)

local hitsToKillLabel = SpecsTab:AddLabel("Hits to Kill: N/A")
hitsToKillLabel.TextSize = 20
hitsToKillLabel.TextColor3 = Color3.fromRGB(255, 0, 0)



local function calculateEnemyHealth(targetPlayer)
    if not targetPlayer then return 0 end

    local baseDura = 0
    local durabilityStat = targetPlayer:FindFirstChild("Durability") 
        or (targetPlayer:FindFirstChild("leaderstats") and targetPlayer.leaderstats:FindFirstChild("Durability"))
    if durabilityStat then
        baseDura = durabilityStat.Value
    end

    local totalMultiplier = 1

    local ultFolder = targetPlayer:FindFirstChild("ultimatesFolder")
    if ultFolder then
        local infernalHealth = ultFolder:FindFirstChild("Infernal Health")
        if infernalHealth then
            local upgrades = infernalHealth.Value or 0
            totalMultiplier = totalMultiplier + 0.15 * upgrades
        end
    end

    local equippedPetsFolder = targetPlayer:FindFirstChild("equippedPets")
    if equippedPetsFolder then
        local petBonus = 0
        for _, petValue in ipairs(equippedPetsFolder:GetChildren()) do
            if petValue:IsA("ObjectValue") and petValue.Value then
                local petNameLower = string.lower(petValue.Value.Name)
                if petNameLower:match("mighty") and petNameLower:match("monster") then
                    petBonus = petBonus + 0.5
                end
            end
        end
        totalMultiplier = totalMultiplier + petBonus
    end

    local totalHealth = baseDura * totalMultiplier
    return totalHealth
end

local function calculateLocalPlayerDamage()
    local strengthStat = nil
    local leaderstats = Player:FindFirstChild("leaderstats")
    if leaderstats then
        strengthStat = leaderstats:FindFirstChild("Strength")
    end
    if not strengthStat then return 0 end

    local baseDamage = strengthStat.Value * 0.0667
    local totalMultiplier = 1

    local ultFolder = Player:FindFirstChild("ultimatesFolder")
    if ultFolder then
        local demonDamage = ultFolder:FindFirstChild("Demon Damage")
        if demonDamage then
            local upgrades = demonDamage.Value or 0
            totalMultiplier = totalMultiplier + 0.1 * upgrades
        end
    end

    local equippedPetsFolder = Player:FindFirstChild("equippedPets")
    if equippedPetsFolder then
        local petBonus = 0
        for _, petValue in ipairs(equippedPetsFolder:GetChildren()) do
            if petValue:IsA("ObjectValue") and petValue.Value then
                local petNameLower = string.lower(petValue.Value.Name)
                if petNameLower:match("wild") and petNameLower:match("wizard") then
                    petBonus = petBonus + 0.5
                end
            end
        end
        totalMultiplier = totalMultiplier + petBonus
    end

    baseDamage = baseDamage * totalMultiplier
    return baseDamage
end



local function calculateHitsToKill(health, damage)
    if damage <= 0 then return "∞" end
    local hits = math.ceil(health / damage)
    if hits > 100 then
        return "∞"
    elseif hits < 1 then
        return 1
    else
        return hits
    end
end

local function updateAdvancedStats(targetPlayer)
    if not targetPlayer then
        enemyHealthLabel.Text = "Enemy Health: N/A"
        playerDamageLabel.Text = "Your Damage: N/A"
        hitsToKillLabel.Text = "Hits to Kill: N/A"
        return
    end
    local enemyHealth = calculateEnemyHealth(targetPlayer)
    local playerDamage = calculateLocalPlayerDamage()
    local hitsToKill = calculateHitsToKill(enemyHealth, playerDamage)
    enemyHealthLabel.Text = string.format("Enemy Health: %s (%s)", formatNumber(enemyHealth), formatWithCommas(enemyHealth))
    playerDamageLabel.Text = string.format("Your Damage: %s (%s)", formatNumber(playerDamage), formatWithCommas(playerDamage))
    hitsToKillLabel.Text = string.format("Hits to Kill: %s", tostring(hitsToKill))
end

task.spawn(function()
    while true do
        if playerToInspect then
            updateAdvancedStats(playerToInspect)
        else
            updateAdvancedStats(nil)
        end
        task.wait(0.1)
    end
end)

local infoTab = window:AddTab("Info")
infoTab:Show()
infoTab:AddLabel("Made by V Roy").TextSize = 20
infoTab:AddLabel("discord.gg/Szoo").TextSize = 20
infoTab:AddButton("Copy Invite", function()
    local link = "https://discord.gg/gyBX9jDmE4"
    if setclipboard then
        setclipboard(link)
        game.StarterGui:SetCore("SendNotification", {
            Title = "Link Copied!";
            Text = "You can continue to Discord now.";
            Duration = 3;
        })
    else
        game.StarterGui:SetCore("SendNotification", {
            Title = "Error!";
            Text = "Not Supported.";
            Duration = 3;
        })
    end
end)
infoTab:AddLabel("")
local wLabel = infoTab:AddLabel("Version: 2.1")
wLabel.TextSize = 30
wLabel.Font = Enum.Font.Arcade
