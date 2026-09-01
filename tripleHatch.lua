
local Players=game:GetService("Players")
local ReplicatedStorage=game:GetService("ReplicatedStorage")
local LocalPlayer=Players.LocalPlayer
local rEvents=ReplicatedStorage:WaitForChild("rEvents",3)

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/ALPHAneegy/library-script/refs/heads/main/README4.md", true))()

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local VirtualInputManager = game:GetService("VirtualInputManager")
local Stats = game:GetService("Stats")
local Lighting = game:GetService("Lighting")
local UserInputService = game:GetService("UserInputService")

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local windowTitle = "VRoy muscle legends VOID | Welcome " .. LocalPlayer.DisplayName

local window = library:AddWindow(windowTitle, {
    main_color = Color3.fromRGB(150, 150, 150),
    min_size = Vector2.new(550, 580),
    can_resize = false
})

task.spawn(function()
    local CoreGui = game:GetService("CoreGui")
    local UserInputService = game:GetService("UserInputService")

    local imgui = CoreGui:WaitForChild("imgui", 10)
    if not imgui then
        warn("VRoy: imgui no encontrado")
        return
    end

    --====================================================--
    -- BUSCAR EL FRAME PRINCIPAL DE LA VENTANA
    --====================================================--

    local MainContainer = nil

    -- Primero intentamos encontrar el Frame que contiene
    -- nuestra ventana por su título.
    for _, obj in ipairs(imgui:GetDescendants()) do
        if obj:IsA("TextLabel") and obj.Text == windowTitle then
            local parent = obj.Parent

            while parent and parent ~= imgui do
                if parent:IsA("Frame") then
                    MainContainer = parent
                end
                parent = parent.Parent
            end

            if MainContainer then
                break
            end
        end
    end

    -- Si no se encontró por el título, buscamos un Frame grande.
    if not MainContainer then
        for _, obj in ipairs(imgui:GetChildren()) do
            if obj:IsA("Frame") then
                local size = obj.AbsoluteSize

                if size.X >= 500 and size.Y >= 400 then
                    MainContainer = obj
                    break
                end
            end
        end
    end

    if not MainContainer then
        warn("VRoy: no se pudo encontrar el contenedor principal")
        return
    end

    print("VRoy MainContainer:", MainContainer:GetFullName())

    --====================================================--
    -- CREAR BOTÓN FLOTANTE
    --====================================================--

    local MinimizeGui = Instance.new("ScreenGui")
    MinimizeGui.Name = "VRoy_MinimizeGui"
    MinimizeGui.ResetOnSpawn = false
    MinimizeGui.ZIndexBehavior = Enum.ZIndexBehavior.Global

    pcall(function()
        if syn and syn.protect_gui then
            syn.protect_gui(MinimizeGui)
        elseif gethui then
            MinimizeGui.Parent = gethui()
        end
    end)

    if not MinimizeGui.Parent then
        MinimizeGui.Parent = CoreGui
    end

    local Button = Instance.new("ImageButton")
    Button.Name = "MinimizeButton"
    Button.Size = UDim2.new(0, 55, 0, 55)
    Button.Position = UDim2.new(0, 15, 0.5, -27)
    Button.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    Button.BackgroundTransparency = 0
    Button.BorderSizePixel = 0

-- ID DE TU IMAGEN
    Button.Image = "rbxassetid://6473004853"

    Button.ImageTransparency = 0
    Button.ScaleType = Enum.ScaleType.Crop
    Button.ZIndex = 999999
    Button.Parent = MinimizeGui

    local Corner = Instance.new("UICorner")
    Corner.CornerRadius = UDim.new(1, 0)
    Corner.Parent = Button

    local Stroke = Instance.new("UIStroke")
    Stroke.Thickness = 2
    Stroke.Color = Color3.fromRGB(150, 150, 150)
    Stroke.Parent = Button

    --====================================================--
    -- MINIMIZAR / RESTAURAR
    --====================================================--

    local minimized = false

    Button.MouseButton1Click:Connect(function()
        minimized = not minimized

        -- SOLO ocultamos el contenedor principal.
        -- No tocamos dropdowns, sliders, color pickers, etc.
        MainContainer.Visible = not minimized
    end)

    --====================================================--
    -- ARRASTRAR BOTÓN
    --====================================================--

    local dragging = false
    local dragStart
    local startPos

    Button.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1
        or input.UserInputType == Enum.UserInputType.Touch then

            dragging = true
            dragStart = input.Position
            startPos = Button.Position

            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)

    UserInputService.InputChanged:Connect(function(input)
        if dragging and (
            input.UserInputType == Enum.UserInputType.MouseMovement
            or input.UserInputType == Enum.UserInputType.Touch
        ) then

            local delta = input.Position - dragStart

            Button.Position = UDim2.new(
                startPos.X.Scale,
                startPos.X.Offset + delta.X,
                startPos.Y.Scale,
                startPos.Y.Offset + delta.Y
            )
        end
    end)
end)

task.spawn(function()
    local imgui = game:GetService("CoreGui"):WaitForChild("imgui", 10)
    if not imgui then return end

    local WINDOW_COLOR = Color3.fromRGB(200, 200, 200)
    local FIRE_ORANGE = Color3.fromRGB(80, 80, 80)
    local DARK_EMBER = Color3.fromRGB(80, 80, 80)
    local BLACK = Color3.fromRGB(10, 10, 12)
    
    local DROPDOWN_BOX_COLOR = Color3.fromRGB(20, 20, 25)

    local function forceFireTheme(element)
        if not element or not element:IsA("GuiObject") then return end
        if element:GetAttribute("UI_ForcedFire") then return end

        local nameLower = element.Name:lower()
        local parent = element.Parent
        local parentName = parent and parent.Name:lower() or ""

        if nameLower:match("indicator") or nameLower:match("checkmark") or nameLower:match("toggle") then
            return 
        end

        local isDropdownBox = (nameLower == "box") and (parentName:match("dropdown") or parentName == "d" or parentName:match("adddropdown"))

        if element:IsA("ImageLabel") or element:IsA("ImageButton") then
            if isDropdownBox then
                element.ImageColor3 = DROPDOWN_BOX_COLOR
                element:SetAttribute("UI_ForcedFire", true)
                return
            elseif nameLower:match("window") or nameLower:match("main") then
                element.ImageColor3 = WINDOW_COLOR
            elseif nameLower:match("folder") then
                element.ImageColor3 = BLACK
            elseif nameLower:match("tab") then
                element.ImageColor3 = DARK_EMBER
            else
                element.ImageColor3 = FIRE_ORANGE
            end
        end

        if element:IsA("Frame") or element:IsA("TextButton") or element:IsA("TextBox") then
            if isDropdownBox then
                element.BackgroundColor3 = DROPDOWN_BOX_COLOR
                element:SetAttribute("UI_ForcedFire", true)
                return
            elseif nameLower:match("window") or nameLower:match("main") then
                element.BackgroundColor3 = WINDOW_COLOR
            elseif nameLower:match("folder") then
                element.BackgroundColor3 = BLACK
            elseif nameLower:match("tab") then
                element.BackgroundColor3 = DARK_EMBER
            elseif nameLower:match("addswitch") 
                or nameLower:match("addbutton") 
                or nameLower:match("addslider") 
                or nameLower:match("addtextbox")
                or nameLower:match("bar") then
                
                element.BackgroundColor3 = FIRE_ORANGE
            end
        end

        element:SetAttribute("UI_ForcedFire", true)
    end

    for _, element in ipairs(imgui:GetDescendants()) do
        task.defer(forceFireTheme, element)
    end

    imgui.DescendantAdded:Connect(function(element)
        task.defer(forceFireTheme, element)
    end)
end)

local mainTab = window:AddTab("Primordial")

local Players = game:GetService("Players")
local VirtualUser = game:GetService("VirtualUser")
local CoreGui = game:GetService("CoreGui")
local RunService = game:GetService("RunService")

local player = Players.LocalPlayer
local AntiAFKConnection = nil
local AFKTimerThread = nil
local RainbowThread = nil

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "Elerium_AFKOverlay"
ScreenGui.ResetOnSpawn = false
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

pcall(function()
    if syn and syn.protect_gui then
        syn.protect_gui(ScreenGui)
    elseif gethui then
        ScreenGui.Parent = gethui()
    end
end)

if not ScreenGui.Parent then
    ScreenGui.Parent = CoreGui
end

local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.Size = UDim2.new(0, 500, 0, 80)
MainFrame.Position = UDim2.new(0.5, -250, 0.00, 0)
MainFrame.BackgroundTransparency = 1
MainFrame.BorderSizePixel = 0
MainFrame.Active = false 
MainFrame.Draggable = false 
MainFrame.Visible = false 
MainFrame.Parent = ScreenGui

mainTab:AddLabel("Usefull stuff:").TextSize = 22

local TextLabel = Instance.new("TextLabel")
TextLabel.Size = UDim2.new(1, 0, 1, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.Text = "ANTI AFK: 00:00:00"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Font = Enum.Font.GothamBold
TextLabel.TextSize = 25 
TextLabel.TextXAlignment = Enum.TextXAlignment.Center
TextLabel.TextYAlignment = Enum.TextYAlignment.Center
TextLabel.Parent = MainFrame

local AntiAFKSwitch = mainTab:AddSwitch("Anti-AFK", function(bool)
    if bool then
        MainFrame.Visible = true
        
        if not AntiAFKConnection then
            AntiAFKConnection = player.Idled:Connect(function()
                VirtualUser:CaptureController()
                VirtualUser:ClickButton2(Vector2.new())
            end)
        end
        
        if not AFKTimerThread then
            AFKTimerThread = task.spawn(function()
                local startTime = os.time()
                while true do
                    local elapsed = os.time() - startTime
                    local hours = math.floor(elapsed / 3600)
                    local minutes = math.floor((elapsed % 3600) / 60)
                    local seconds = elapsed % 60
                    
                    TextLabel.Text = string.format("ANTI AFK: %02d:%02d:%02d", hours, minutes, seconds)
                    task.wait(1)
                end
            end)
        end

        if not RainbowThread then
            RainbowThread = task.spawn(function()
                local hue = 0
                while true do
                    TextLabel.TextColor3 = Color3.fromHSV(hue, 1, 1)
                    hue = hue + 0.01
                    if hue >= 1 then
                        hue = 0
                    end
                    task.wait(0.03)
                end
            end)
        end
    else

        MainFrame.Visible = false
        
        if typeof(AntiAFKConnection) == "RBXScriptConnection" then
            AntiAFKConnection:Disconnect()
            AntiAFKConnection = nil
        elseif typeof(AntiAFKConnection) == "thread" then
            task.cancel(AntiAFKConnection)
            AntiAFKConnection = nil
        end
        
        if AFKTimerThread then
            task.cancel(AFKTimerThread)
            AFKTimerThread = nil
        end

        if RainbowThread then
            task.cancel(RainbowThread)
            RainbowThread = nil
        end
    end
end)

AntiAFKSwitch:Set(false)

local _G = getgenv and getgenv() or _G
_G.HideGainedPopups = false
local originalStates = {}

local function isFrameUi(element)
    return element:IsA("Frame") or element:IsA("ScrollingFrame") or element:IsA("CanvasGroup")
end

local function hideElement(element)
    if not isFrameUi(element) then return end
    
    if not originalStates[element] then
        originalStates[element] = {
            Visible = element.Visible,
            Position = element.Position
        }
    end
    
    element.Visible = false
    element.Position = UDim2.new(5, 0, 5, 0) -- Teleport far off-screen to bypass forced visibility scripts
end

local function restoreElements()
    for element, state in pairs(originalStates) do
        if element and element.Parent then
            element.Visible = state.Visible
            element.Position = state.Position
        end
    end
    table.clear(originalStates)
end

local playerGui = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")

-- Listen for any new frames being added dynamically while the switch is ON
playerGui.DescendantAdded:Connect(function(descendant)
    if _G.HideGainedPopups then
        task.wait(0.05) -- Tiny delay to let the game engine set up the new frame first
        if _G.HideGainedPopups then
            hideElement(descendant)
        end
    end
end)

-- Hooked directly into your Elerium v2 switch
mainTab:AddSwitch("Hide All UI Frames", function(state)
    _G.HideGainedPopups = state
    if state then
        for _, desc in ipairs(playerGui:GetDescendants()) do
            hideElement(desc)
        end
    else
        restoreElements()
    end
end)

local isLocked = false
local savedCFrame = nil -- Dito itatabi ang eksaktong lokasyon mo
local player = game:GetService("Players").LocalPlayer

-- Function na awtomatikong magbabalik at magla-lock sa iyo pagka-respawn
local function applyLock(character)
    if isLocked and savedCFrame then
        local rootPart = character:WaitForChild("HumanoidRootPart", 5)
        if rootPart then
            task.wait(0.2) -- Safe delay para hindi mag-glitch ang loading ng laro
            rootPart.CFrame = savedCFrame -- Ite-teleport ka pabalik sa tinagong pwesto
            task.wait(0.05)
            rootPart.Anchored = true -- Ika-lock ka ulit sa pwestong iyon
        end
    end
end

-- Taga-bantay tuwing namamatay at nabubuhay ka ulit
player.CharacterAdded:Connect(applyLock)

-- Ang tamang Elerium V2 Switch Element
mainTab:AddSwitch("Lock Position", function(state)
    isLocked = state
    
    if player.Character then
        local rootPart = player.Character:FindFirstChild("HumanoidRootPart")
        if rootPart then
            if state then
                -- Pagka-on ng switch, ise-save ang kasalukuyang pwesto mo ngayon
                savedCFrame = rootPart.CFrame
                rootPart.Anchored = true
            else
                -- Pagka-off, pakakawalan ang character mo at buburahin ang saved spot
                rootPart.Anchored = false
                savedCFrame = nil
            end
        end
    end
end)

-- SWITCH 3: LoopSpeed 500
mainTab:AddSwitch("LoopSpeed 500", function(state)
    speedActive = state
    
    if speedActive then
        task.spawn(function()
            while speedActive do
                local character = player.Character
                if character then
                    local humanoid = character:FindFirstChildOfClass("Humanoid")
                    if humanoid and humanoid.WalkSpeed ~= 500 then
                        humanoid.WalkSpeed = 500
                    end
                end
                task.wait(0.05) -- Fast check rate to override anti-cheat adjustments or resets
            end
        end)
    else
        -- Safely revert WalkSpeed to normal when turned off
        local character = player.Character
        if character then
            local humanoid = character:FindFirstChildOfClass("Humanoid")
            if humanoid then
                humanoid.WalkSpeed = 16
            end
        end
    end
end)



mainTab:AddButton("Auto spin", function()
local function SpinFortuneWheel()
    local Event = game:GetService("ReplicatedStorage").rEvents.openFortuneWheelRemote
    local Wheel = game:GetService("ReplicatedStorage").fortuneWheelChances["Fortune Wheel"]

    local StartTime = os.clock()
    local Duration = 4 * 60 + 20 -- 4:20 minutos

    while os.clock() - StartTime < Duration do
        local Result = table.pack(Event:InvokeServer(
            "openFortuneWheel",
            Wheel
        ))

        task.wait()
    end

    print("Loop terminado después de 4:20.")
end

SpinFortuneWheel()
end)

mainTab:AddLabel("Farm:").TextSize = 22

-- Global State Flags for the Switches
local farmActive = false
local rebirthActive3 = false
local speedActive = false
local rebirthActive2 = false

-- References
local player = game:GetService("Players").LocalPlayer
local replicatedStorage = game:GetService("ReplicatedStorage")

-- Helper function to handle auto-equipping tools
local function autoEquipWeight()
    local character = player.Character
    if not character then return end
    
    for _, item in pairs(character:GetChildren()) do
        if item:IsA("Tool") and string.find(string.lower(item.Name), "weight") then
            return 
        end
    end
    
    local backpack = player:FindFirstChild("Backpack")
    if backpack then
        for _, tool in pairs(backpack:GetChildren()) do
            if tool:IsA("Tool") and string.find(string.lower(tool.Name), "weight") then
                local humanoid = character:FindFirstChildOfClass("Humanoid")
                if humanoid then
                    humanoid:EquipTool(tool)
                    break
                end
            end
        end
    end
end

-- SWITCH 1: Auto Reps + Auto Equip
mainTab:AddSwitch("Fast Reps Weight", function(state)
    farmActive = state

    if farmActive then
        task.spawn(function()
            while farmActive do
                autoEquipWeight()

                local character = player and player.Character
                local muscleEvent = player and player:FindFirstChild("muscleEvent")
                local weight = character and character:FindFirstChild("Weight")

                if muscleEvent and weight then
                    muscleEvent:FireServer("rep", weight)
                end

                task.wait(0.1)
            end
        end)
    end
end)


-- Push Ups -- References
local player = game:GetService("Players").LocalPlayer
local replicatedStorage = game:GetService("ReplicatedStorage")

-- Helper function to handle auto-equipping push up tools
local function autoEquipPushUps()
    local character = player.Character
    if not character then return end
    
    -- Check if already equipped
    for _, item in pairs(character:GetChildren()) do
        if item:IsA("Tool") and string.find(string.lower(item.Name), "push") then
            return 
        end
    end
    
    -- Look in backpack and equip
    local backpack = player:FindFirstChild("Backpack")
    if backpack then
        for _, tool in pairs(backpack:GetChildren()) do
            if tool:IsA("Tool") and string.find(string.lower(tool.Name), "push") then
                local humanoid = character:FindFirstChildOfClass("Humanoid")
                if humanoid then
                    humanoid:EquipTool(tool)
                    break
                end
            end
        end
    end
end

-- SWITCH 1: Auto Reps + Auto Equip
mainTab:AddSwitch("Fast Reps Push Ups", function(state)
    farmActive = state

    if farmActive then
        task.spawn(function()
            while farmActive do
                autoEquipPushUps()

                local character = player and player.Character
                local muscleEvent = player and player:FindFirstChild("muscleEvent")
                local pushups = character and character:FindFirstChild("Pushups")

                if muscleEvent and pushups then
                    muscleEvent:FireServer("rep", pushups)
                end

                task.wait(0.1)
            end
        end)
    end
end)

mainTab:AddSwitch("Fast Rebirth 10000", function(state)
    rebirthActive2 = state
    
    if rebirthActive2 then
        task.spawn(function()
            while rebirthActive2 do
                local rEvents = replicatedStorage:FindFirstChild("rEvents")
                if rEvents and rEvents:FindFirstChild("rebirthRemote") then
                    
                    local args = {
                        [1] = "rebirthRequest",
                        [2] = 10000
                    }
                    
                    rEvents.rebirthRemote:InvokeServer(unpack(args))
                end
                task.wait(0.1) 
            end
        end)
    end
end)

local crystalsTab = window:AddTab("Crystals")

crystalsTab:AddLabel("You need to be enough close to fast open the selected crystal.")

local autoOpenActive = false
local selectedCrystal = "Secret Void Crystal"

local crystalDropdown = crystalsTab:AddDropdown("Select Crystal", function(choice)
    selectedCrystal = choice
end)

crystalDropdown:Add("Eltrax Crystal")
crystalDropdown:Add("Weakness Crystal")
crystalDropdown:Add("True Space Crystal")
crystalDropdown:Add("Sunken Crystal")
crystalDropdown:Add("Insufficient Masters Crystal")
crystalDropdown:Add("Great Dime Crystal")
crystalDropdown:Add("Space Crystal")
crystalDropdown:Add("Godly Crystal")
crystalDropdown:Add("Infernal Crystal")
crystalDropdown:Add("Dark Nebula Crystal")
crystalDropdown:Add("Galaxy Oracle Crystal")
crystalDropdown:Add("Battle Legends Crystal")
crystalDropdown:Add("Chaos Crystal")
crystalDropdown:Add("Jungle Crystal")
crystalDropdown:Add("Muscle Elite Crystal")
crystalDropdown:Add("Legends Crystal")
crystalDropdown:Add("Inferno Crystal")
crystalDropdown:Add("Mythical Crystal")
crystalDropdown:Add("Frost Crystal")
crystalDropdown:Add("Green Crystal")
crystalDropdown:Add("Blue Crystal")

crystalsTab:AddSwitch("Auto Open Selected", function(state)
    autoOpenActive = state

    if not state then
        return
    end

    task.spawn(function()
        while autoOpenActive do
            local replicatedStorage = game:GetService("ReplicatedStorage")
            local rEvents = replicatedStorage:FindFirstChild("rEvents")
            local remote = rEvents and rEvents:FindFirstChild("openCrystalRemote")

            if remote then
                local success, err = pcall(function()
                    remote:InvokeServer(
                        "openCrystal",
                        selectedCrystal,
                        3
                    )
                end)

                if not success then
                    warn("openCrystalRemote error:", err)
                end
            else
                warn("openCrystalRemote no encontrado; esperando...")
            end

            task.wait(0.01)
        end
    end)
end)

crystalsTab:AddLabel("")
crystalsTab:AddLabel("Auto Sell by raritys, soon.")
crystalsTab:AddLabel("")

crystalsTab:AddLabel("Auto Evolved")

local autoEvolveEnabled = false

crystalsTab:AddSwitch("Auto Evolve All Pets", function(state)
    autoEvolveEnabled = state

    if autoEvolveEnabled then
        print("Auto-Evolve enabled.")

        task.spawn(function()
            local Event = game:GetService("ReplicatedStorage")
                .rEvents
                .petEvolveEvent

            while autoEvolveEnabled do
                local success, err = pcall(function()
                    Event:FireServer("evolveAll")
                end)

                if not success then
                    warn("Evolve error: " .. tostring(err))
                end

                task.wait(0.1)
            end

            print("Auto-Evolve thread terminated.")
        end)
    else
        print("Auto-Evolve disabled.")
    end
end)

local glitching = window:AddTab("Rock")

glitching:AddLabel("Glitching:").TextSize = 24

local FastPunchConnection = nil
local FastPunchEnabled = false

local function startFastPunch()
    FastPunchEnabled = true

    if FastPunchConnection then
        FastPunchConnection:Disconnect()
        FastPunchConnection = nil
    end

    FastPunchConnection = RunService.Heartbeat:Connect(function()
        if not FastPunchEnabled then
            return
        end

        local character = LocalPlayer.Character
        if not character then
            return
        end

        local humanoid = character:FindFirstChildOfClass("Humanoid")
        local backpack = LocalPlayer:FindFirstChild("Backpack")

        if not humanoid or not backpack then
            return
        end

        local punchTool =
            character:FindFirstChild("Punch")
            or backpack:FindFirstChild("Punch")

        if not punchTool then
            return
        end

        local attackTime = punchTool:FindFirstChild("attackTime")
        if attackTime then
            attackTime.Value = 0
        end

        if punchTool.Parent ~= character then
            pcall(function()
                humanoid:EquipTool(punchTool)
            end)
        end

        pcall(function()
            punchTool:Activate()
        end)
    end)
end

local function stopFastPunch()
    FastPunchEnabled = false

    if FastPunchConnection then
        FastPunchConnection:Disconnect()
        FastPunchConnection = nil
    end

    local backpack = LocalPlayer:FindFirstChild("Backpack")
    local character = LocalPlayer.Character

    local punchTool =
        (backpack and backpack:FindFirstChild("Punch"))
        or (character and character:FindFirstChild("Punch"))

    if punchTool then
        local attackTime = punchTool:FindFirstChild("attackTime")

        if attackTime then
            attackTime.Value = 0.35
        end
    end
end


-- =========================================================
-- FAST PUNCH SWITCH
-- =========================================================

mainTab:AddSwitch("Fast Punch", function(state)
    if state then
        startFastPunch()
    else
        stopFastPunch()
    end
end):Set(false)


local function equipAndPunch()
    if not LocalPlayer.Character then
        return
    end

    local backpack = LocalPlayer:FindFirstChild("Backpack")
    local character = LocalPlayer.Character
    local humanoid = character:FindFirstChildOfClass("Humanoid")

    if backpack and humanoid then
        local tool =
            character:FindFirstChild("Punch")
            or backpack:FindFirstChild("Punch")

        if tool then
            if tool.Parent ~= character then
                pcall(function()
                    humanoid:EquipTool(tool)
                end)
            end

            local attackTime = tool:FindFirstChild("attackTime")
            if attackTime and FastPunchEnabled then
                attackTime.Value = 0
            end

            pcall(function()
                tool:Activate()
            end)
        end
    end

    local muscleEvent = LocalPlayer:FindFirstChild("muscleEvent")

    if muscleEvent then
        pcall(function()
            muscleEvent:FireServer("punch", "leftHand")
            muscleEvent:FireServer("punch", "rightHand")
        end)
    end
end


-- =========================================================
-- GLITCHING ROCK POSITION
-- =========================================================

local rockPosition = Vector3.new(
    -315.92763606152344,
    5.66650427460938,
    -1482.9724720703125
)

local function teleportToRock()
    local character = LocalPlayer.Character
    if not character then
        return false
    end

    local hrp = character:FindFirstChild("HumanoidRootPart")
    if not hrp then
        return false
    end

    hrp.CFrame = CFrame.new(rockPosition)

    return true
end


local savedCFrame = nil

local function setLockPosition(state)
    local character = LocalPlayer.Character
    if not character then
        return
    end

    local rootPart = character:FindFirstChild("HumanoidRootPart")
    if not rootPart then
        return
    end

    if state then
        -- Guardar posición actual y bloquearla
        savedCFrame = rootPart.CFrame
        rootPart.Anchored = true
    else
        -- Desbloquear
        rootPart.Anchored = false
        savedCFrame = nil
    end
end

-- =========================================================
-- ROCK TOGGLE
-- =========================================================

local function createRockToggle(toggleName, requiredDurability)
    local key = "rockPunch" .. toggleName:gsub("%s", "")

    local rockStartedFastPunch = false

    glitching:AddSwitch(toggleName, function(state)
        getgenv()[key] = state

        if state then

            -- 1. Teletransportarse al rock
            local teleported = teleportToRock()

            if not teleported then
                getgenv()[key] = false
                return
            end

            -- 2. Esperar a que el personaje llegue
            task.wait(0.15)

            -- 3. Activar Fast Punch si no estaba activo
            if not FastPunchEnabled then
                rockStartedFastPunch = true
                startFastPunch()
            end

            -- 4. Empezar el farm del rock
            task.spawn(function()
                farmRockByDurability(requiredDurability, key)
            end)

        else

            -- Detener Fast Punch solamente si lo inició Rock Farm
            if rockStartedFastPunch then
                rockStartedFastPunch = false
                stopFastPunch()
            end
        end
    end)
end


-- =========================================================
-- GLITCHING ROCK
-- =========================================================

createRockToggle("Glitching Rock", 5000000)

glitching:AddSwitch("Lock Position", function(state)
    isLocked = state
    
    if player.Character then
        local rootPart = player.Character:FindFirstChild("HumanoidRootPart")
        if rootPart then
            if state then
                -- Pagka-on ng switch, ise-save ang kasalukuyang pwesto mo ngayon
                savedCFrame = rootPart.CFrame
                rootPart.Anchored = true
            else
                -- Pagka-off, pakakawalan ang character mo at buburahin ang saved spot
                rootPart.Anchored = false
                savedCFrame = nil
            end
        end
    end
end)

local function v37(p4, p5)
    pcall(function()
        local rEvents = game:GetService("ReplicatedStorage"):FindFirstChild("rEvents")
        local equipPetEvent = rEvents and rEvents:FindFirstChild("equipPetEvent")
        local petsFolder = LocalPlayer:FindFirstChild("petsFolder")

        if not equipPetEvent or not petsFolder then
            warn("No se encontro rEvents/equipPetEvent o petsFolder")
            return
        end

        local petTier = petsFolder:FindFirstChild(p4)

        if not petTier then
            warn("No se encontro la carpeta de pets: " .. p4)
            return
        end

        local action = p5 and "equipPet" or "unequipPet"

        for _, pet in ipairs(petTier:GetChildren()) do
            equipPetEvent:FireServer(action, pet)
            task.wait(0.05)
        end
    end)
end


local equiper = window:AddTab("Pets")

equiper:AddLabel("Mass Equip / Unequip Toggles  (Not working on this game.)")

equiper:AddSwitch("Equip / Unequip All OmegaTitanX Pets", function(state)
    getgenv().equipOmegaTitanX = state
    v37("Omega Titan X", state)
end)

equiper:AddSwitch("Equip / Unequip All Infinite Pets", function(state)
    getgenv().equipInfinite = state
    v37("Infinite", state)
end)

equiper:AddSwitch("Equip / Unequip All Mythical Pets", function(state) 
    getgenv().equipMythical = state 
    v37("Mythical", state) 
end)

equiper:AddSwitch("Equip / Unequip All Cosmic Pets", function(state) 
    getgenv().equipCosmic = state 
    v37("Cosmic", state) 
end)

equiper:AddSwitch("Equip / Unequip All Divine Pets", function(state) 
    getgenv().equipDivine = state 
    v37("Divine", state) 
end)

equiper:AddSwitch("Equip / Unequip All Legendary Pets", function(state) 
    getgenv().equipLegendary = state 
    v37("Legendary", state) 
end)

local teleport = window:AddTab('Teleport')

teleport:AddLabel("Good Portals:").TextSize = 24

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

local teleportLocations = {
    { name = "Divine",  pos = Vector3.new(-946.92, 21.87, -3061.76), text = "Teleportando a Divine Area" },
    { name = "Cosmic",  pos = Vector3.new(-690.7637329101562, 52541.56640625, -77.1877212524414), text = "Teleportando a Cosmic Area" },
    { name = "Sea",  pos = Vector3.new(4228.06, 84955.63, 21736.32), text = "Teleportando a Sea Area" },
    { name = "Infernal",  pos = Vector3.new(1939.77, 16.81, -4597.62), text = "Teleportando a Infernal Area" },
    { name = "Warrior",  pos = Vector3.new(-4142.89, 2.79, 1610.94), text = "Teleportando a Warrior Area" },
    { name = "Caos",  pos = Vector3.new(-6608.91, 9.75, 5676.11), text = "Teleportando a Caos Area" },
}

for _, loc in ipairs(teleportLocations) do
    local cachedPos = loc.pos
    local cachedText = loc.text
    teleport:AddButton(loc.name, function()
        teleportToLocation(cachedPos, cachedText)
    end)
end

teleport:AddLabel("Secret areas:").TextSize = 24

local function tlpToLocation(position, notificationText)
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

local tlpLocations = {
    { name = "1m Crystal (BEST)",  pos = Vector3.new(-211.34507751464844, 3.665822744369507, -657.6630859375), text = "Teleportando to Area" },
    { name = "25qi Crystal",  pos = Vector3.new(-34, 7, 1903), text = "Teleportando to Area" },
    { name = "2.5qi Crystal",  pos = Vector3.new(-877.523681640625, 3.0662667751312256, -132.58999633789062), text = "Teleportando to Area" },
    { name = "250qa Crystal",  pos = Vector3.new(2712.938232421875, 15.066256523132324, 326.9356689453125), text = "Teleportando to Area" },
    { name = "AntiKill area",  pos = Vector3.new(1947, 2, 6191), text = "Teleportando to Area" },
    { name = "Spawn",  pos = Vector3.new(2, 8, 115), text = "Teleportando to Area" },
}

for _, loc in ipairs(tlpLocations) do
    local cachedPos = loc.pos
    local cachedText = loc.text
    teleport:AddButton(loc.name, function()
        teleportToLocation(cachedPos, cachedText)
    end)
end
---------------------------------------------------------
-- [SECTION 1: LOCAL PLAYER STATS TAB]
---------------------------------------------------------
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

if not LocalPlayer then
    pcall(function() Players:GetPropertyChangedSignal("LocalPlayer"):Wait() end)
    LocalPlayer = Players.LocalPlayer or Players.PlayerAdded:Wait()
end

if _G.LocalTracker then _G.LocalTracker = nil end
_G.LocalTracker = {
    Config = {
        Stats = {"Strength", "Durability", "Rebirths", "Agility", "Kills", "Brawls", "Good Karma", "Evil Karma", "Gems"},
        Suffixes = {"K", "M", "B", "T", "Qa", "Qi", "Sx", "Sp", "Oc", "No", "Dc", "UDc", "DDc", "TDc", "QaDc", "QiDc", "SxDc", "SpDc", "ODc", "NDc", "Vg"}
    },
    Labels = {},
    StartStats = {},
    CachedObjects = {},
    Connections = {},
    TotalGained = {},
    LastValues = {},
    Rates = {},
    LastUpdates = {},
    StartTime = os.time(),
    Utils = {}
}

_G.LocalTracker.Utils.updateLabelText = function(name, content)
    local label = _G.LocalTracker.Labels[name]
    if not label then return end
    local ok = pcall(function() label.Text = content end)
    if not ok then ok = pcall(function() label:SetText(content) end) end
    if not ok then pcall(function() label:UpdateLabel(content) end) end
end

_G.LocalTracker.Utils.formatNumber = function(value)
    if not value or typeof(value) ~= "number" then return "0" end
    local absVal = math.abs(value)
    if absVal < 1000 then 
        return tostring(value < 0 and -math.floor(absVal) or math.floor(absVal)) 
    end
    local index = math.floor(math.log10(absVal) / 3)
    if index > #_G.LocalTracker.Config.Suffixes then index = #_G.LocalTracker.Config.Suffixes end
    return string.format("%.1f", value / (10 ^ (index * 3))):gsub("%.0$", "") .. (_G.LocalTracker.Config.Suffixes[index] or "")
end

_G.LocalTracker.Utils.scanForStatFast = function(statName)
    if not LocalPlayer then return nil end
    local lowerTarget = string.lower(statName)
    local cleanTarget = lowerTarget:gsub("%s+", ""):gsub("_+", "")
    
    local function matches(name)
        local lName = string.lower(name)
        local cName = lName:gsub("%s+", ""):gsub("_+", "")
        return string.find(lName, lowerTarget) or cName == cleanTarget or string.find(cName, cleanTarget)
    end
    
    local classicHubs = {"leaderstats", "leaderstats2", "Stats", "PlayerData", "Data", "Currency"}
    for i = 1, #classicHubs do
        local folder = LocalPlayer:FindFirstChild(classicHubs[i])
        if folder then
            local children = folder:GetChildren()
            for j = 1, #children do
                local child = children[j]
                if matches(child.Name) and string.find(child.ClassName, "Value") then
                    return child
                end
            end
        end
    end

    local rootChildren = LocalPlayer:GetChildren()
    for i = 1, #rootChildren do
        local child = rootChildren[i]
        if matches(child.Name) and string.find(child.ClassName, "Value") then
            return child
        elseif child:IsA("Folder") or child:IsA("Configuration") then
            local subChildren = child:GetChildren()
            for j = 1, #subChildren do
                local subChild = subChildren[j]
                if matches(subChild.Name) and string.find(subChild.ClassName, "Value") then
                    return subChild
                end
            end
        end
    end
    
    return nil
end

_G.LocalTracker.Utils.computeAndRenderStat = function(name, currentVal)
    local currentTime = os.time()
    local startVal = _G.LocalTracker.StartStats[name]
    
    if not startVal then
        _G.LocalTracker.StartStats[name] = currentVal
        startVal = currentVal
        _G.LocalTracker.TotalGained[name] = 0
        _G.LocalTracker.LastValues[name] = currentVal
        _G.LocalTracker.LastUpdates[name] = currentTime
        _G.LocalTracker.Rates[name] = 0
    end
    
    _G.LocalTracker.TotalGained[name] = _G.LocalTracker.TotalGained[name] or 0
    _G.LocalTracker.LastValues[name] = _G.LocalTracker.LastValues[name] or currentVal
    _G.LocalTracker.LastUpdates[name] = _G.LocalTracker.LastUpdates[name] or currentTime
    _G.LocalTracker.Rates[name] = _G.LocalTracker.Rates[name] or 0

    if currentVal < _G.LocalTracker.LastValues[name] then
        local progressBeforeReset = math.max(_G.LocalTracker.LastValues[name] - startVal, 0)
        _G.LocalTracker.TotalGained[name] = _G.LocalTracker.TotalGained[name] + progressBeforeReset
        _G.LocalTracker.StartStats[name] = currentVal
        startVal = currentVal
    end

    local diff = currentVal - _G.LocalTracker.LastValues[name]
    if diff > 0 then
        local timePassed = math.max(currentTime - _G.LocalTracker.LastUpdates[name], 1)
        _G.LocalTracker.Rates[name] = diff / timePassed
        _G.LocalTracker.LastUpdates[name] = currentTime
    end
    
    _G.LocalTracker.LastValues[name] = currentVal

    local currentGain = math.max(currentVal - startVal, 0)
    local gained = _G.LocalTracker.TotalGained[name] + currentGain
    local formattedCurrent = _G.LocalTracker.Utils.formatNumber(currentVal)
    local activeRate = _G.LocalTracker.Rates[name] or 0
    
    if gained > 0 and activeRate > 0 then
        _G.LocalTracker.Utils.updateLabelText(name, string.format(
            "%s: %s (+%s) | M: %s | H: %s | D: %s | W: %s | MO: %s",
            name, formattedCurrent, _G.LocalTracker.Utils.formatNumber(gained),
            _G.LocalTracker.Utils.formatNumber(activeRate * 60), 
            _G.LocalTracker.Utils.formatNumber(activeRate * 3600), 
            _G.LocalTracker.Utils.formatNumber(activeRate * 86400), 
            _G.LocalTracker.Utils.formatNumber(activeRate * 604800),
            _G.LocalTracker.Utils.formatNumber(activeRate * 2592000)
        ))
    else
        _G.LocalTracker.Utils.updateLabelText(name, string.format("%s: %s (+0) | M: 0 | H: 0 | D: 0 | W: 0 | MO: 0", name, formattedCurrent))
    end
end

_G.LocalTracker.Utils.bindObjectSignals = function(name, obj)
    _G.LocalTracker.CachedObjects[name] = obj
    _G.LocalTracker.StartStats[name] = tonumber(obj.Value) or 0
    _G.LocalTracker.LastValues[name] = tonumber(obj.Value) or 0
    _G.LocalTracker.TotalGained[name] = _G.LocalTracker.TotalGained[name] or 0
    _G.LocalTracker.LastUpdates[name] = os.time()
    _G.LocalTracker.Rates[name] = 0
    
    if _G.LocalTracker.Connections[name] then
        pcall(function() _G.LocalTracker.Connections[name]:Disconnect() end)
    end
    
    _G.LocalTracker.Connections[name] = obj.Changed:Connect(function(newVal)
        _G.LocalTracker.Utils.computeAndRenderStat(name, tonumber(newVal) or 0)
    end)
    
    _G.LocalTracker.Utils.computeAndRenderStat(name, _G.LocalTracker.StartStats[name])
end

_G.LocalTracker.TrackerTab = nil
pcall(function() _G.LocalTracker.TrackerTab = window:AddTab("Stats") end)

_G.LocalTracker.ClockLabel = _G.LocalTracker.TrackerTab and _G.LocalTracker.TrackerTab:AddLabel("Session Time: 00:00:00") or nil

for i = 1, #_G.LocalTracker.Config.Stats do
    local name = _G.LocalTracker.Config.Stats[i]
    _G.LocalTracker.StartStats[name] = 0
    
    local foundObj = _G.LocalTracker.Utils.scanForStatFast(name)
    local currentText = name .. ": 0 (+0) | M: 0 | H: 0 | D: 0 | W: 0 | MO: 0"
    
    if foundObj then
        local initialVal = tonumber(foundObj.Value) or 0
        _G.LocalTracker.StartStats[name] = initialVal
        _G.LocalTracker.LastValues[name] = initialVal
        currentText = string.format("%s: %s (+0) | M: 0 | H: 0 | D: 0 | W: 0 | MO: 0", name, _G.LocalTracker.Utils.formatNumber(initialVal))
    end
    
    if _G.LocalTracker.TrackerTab then
        pcall(function() _G.LocalTracker.Labels[name] = _G.LocalTracker.TrackerTab:AddLabel(currentText) end)
    end
    
    if foundObj then
        _G.LocalTracker.Utils.bindObjectSignals(name, foundObj)
    end
end

task.spawn(function()
    while task.wait(1) do
        local elapsedSeconds = math.max(os.time() - _G.LocalTracker.StartTime, 1)
        local currentTime = os.time()
        
        local hours = math.floor(elapsedSeconds / 3600)
        local minutes = math.floor((elapsedSeconds % 3600) / 60)
        local seconds = elapsedSeconds % 60
        if _G.LocalTracker.ClockLabel then
            pcall(function() _G.LocalTracker.ClockLabel.Text = string.format("Session Time: %02d:%02d:%02d", hours, minutes, seconds) end)
        end
        
        for i = 1, #_G.LocalTracker.Config.Stats do
            local name = _G.LocalTracker.Config.Stats[i]
            local obj = _G.LocalTracker.CachedObjects[name]
            if obj then
                local lastActive = _G.LocalTracker.LastUpdates[name] or currentTime
                if currentTime - lastActive > 60 then
                    _G.LocalTracker.Rates[name] = math.max((_G.LocalTracker.Rates[name] or 0) * 0.99, 0)
                    if _G.LocalTracker.Rates[name] < 0.001 then _G.LocalTracker.Rates[name] = 0 end
                    _G.LocalTracker.Utils.computeAndRenderStat(name, tonumber(obj.Value) or 0)
                end
            end
        end
    end
end)

local rebirthActive3 = false

mainTab:AddSwitch("Fast Max rebirths (First enable the 10k and then this and wait)", function(state)
    rebirthActive3 = state

    if not state then
        return
    end

    task.spawn(function()
        while rebirthActive3 do
            local rEvents = replicatedStorage:FindFirstChild("rEvents")
            local rebirthRemote = rEvents and rEvents:FindFirstChild("rebirthRemote")

            if rebirthRemote then
                local rebirthsObj =
                    _G.TrackerCore
                    and _G.TrackerCore.Utils
                    and _G.TrackerCore.Utils.locatePlayerStatObject
                    and _G.TrackerCore.Utils.locatePlayerStatObject(
                        player,
                        "Rebirths"
                    )

                if rebirthsObj then
                    local rebirths = tonumber(rebirthsObj.Value) or 0

                    local success, result = pcall(function()
                        return rebirthRemote:InvokeServer(
                            "rebirthRequest",
                            rebirths
                        )
                    end)

                    if not success then
                        warn("Fast Max rebirths error:", result)
                    end
                else
                    warn("No se encontró Rebirths")
                end
            else
                warn("No se encontró rebirthRemote")
            end

            task.wait(0.1)
        end
    end)
end):Set(false)

mainTab:AddLabel("")

mainTab:AddLabel("Ascensions:")

local ascensionActive = false

mainTab:AddSwitch("Fast Ascension", function(state)
    ascensionActive = state

    if ascensionActive then
        task.spawn(function()
            while ascensionActive do
                local rEvents = replicatedStorage:FindFirstChild("rEvents")
                local ascensionRemote = rEvents and rEvents:FindFirstChild("ascensionRemote")

                if ascensionRemote then
                    local ascensionsObj = _G.TrackerCore.Utils.locatePlayerStatObject(
                        game.Players.LocalPlayer,
                        "Ascensions"
                    )

                    local currentAscension = ascensionsObj
                        and tonumber(ascensionsObj.Value)
                        or 0

                    local result = table.pack(
                        ascensionRemote:InvokeServer("ascensionRequest")
                    )

                    local success, message, returnedAscension = table.unpack(result)

                    print(
                        "Ascension:",
                        currentAscension,
                        "->",
                        returnedAscension,
                        "|",
                        success,
                        message
                    )
                end

                task.wait(0.1)
            end
        end)
    end
end)

mainTab:AddLabel("")

mainTab:AddLabel("OP machines").TextSize = 20

mainTab:AddButton("Divine Bench (Best)",function()
    local player = game.Players.LocalPlayer
    local char = player.Character or Player.CharacterAdded:wait()
    local hrp = char:WaitForChild("HumanoidRootPart")
    hrp.CFrame = CFrame.new(-1100.52783203125, 26.000192642211914, -3003.70263671875)
    task.wait(0.2)
    VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.E, false, game)
    task.wait(0.05)
    VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.E, false, game)
end)

mainTab:AddButton("Divine Squat (Second best)",function()
    local player = game.Players.LocalPlayer
    local char = player.Character or Player.CharacterAdded:wait()
    local hrp = char:WaitForChild("HumanoidRootPart")
    hrp.CFrame = CFrame.new(-959.8375244140625, 26.2074031829834, -3427.2763671875)
    task.wait(0.2)
    VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.E, false, game)
    task.wait(0.05)
    VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.E, false, game)
end)

mainTab:AddButton("Divine Lift",function()
    local player = game.Players.LocalPlayer
    local char = player.Character or Player.CharacterAdded:wait()
    local hrp = char:WaitForChild("HumanoidRootPart")
    hrp.CFrame = CFrame.new(-1343.4893798828125, 26.2074031829834, -3019.782470703125)
    task.wait(0.2)
    VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.E, false, game)
    task.wait(0.05)
    VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.E, false, game)
end)

---------------------------------------------------------
-- [SECTION 2: SHARED UTILITIES & CENTRAL CORES]
---------------------------------------------------------
do
    local PlayersRef = game:GetService("Players")
    local LocalPlayerRef = PlayersRef.LocalPlayer

    if not LocalPlayerRef then
        pcall(function() PlayersRef:GetPropertyChangedSignal("LocalPlayer"):Wait() end)
        LocalPlayerRef = PlayersRef.LocalPlayer or PlayersRef.PlayerAdded:Wait()
    end

    if _G.TrackerCore then _G.TrackerCore = nil end
    _G.TrackerCore = {
        Config = {
            Stats = {"Strength", "Durability", "Rebirths", "Agility", "Kills", "Brawls", "Good Karma", "Evil Karma", "Gems"},
            Suffixes = {"K", "M", "B", "T", "Qa", "Qi", "Sx", "Sp", "Oc", "No", "Dc", "UDc", "DDc", "TDc", "QaDc", "QiDc", "SxDc", "SpDc", "ODc", "NDc", "Vg"}
        },
        SpyState = { target = nil, startTime = os.time(), labels = {}, start = {}, total = {}, last = {}, rate = {}, ticks = {} },
        Utils = {}
    }

    _G.TrackerCore.Utils.updateLabelText = function(label, content)
        if not label then return end
        local ok = pcall(function() label.Text = content end)
        if not ok then ok = pcall(function() label:SetText(content) end) end
        if not ok then pcall(function() label:UpdateLabel(content) end) end
    end

    _G.TrackerCore.Utils.formatNumber = function(value)
        if not value or typeof(value) ~= "number" then return "0" end
        local absVal = math.abs(value)
        if absVal < 1000 then 
            return tostring(value < 0 and -math.floor(absVal) or math.floor(absVal)) 
        end
        local index = math.floor(math.log10(absVal) / 3)
        if index > #_G.TrackerCore.Config.Suffixes then index = #_G.TrackerCore.Config.Suffixes end
        return string.format("%.1f", value / (10 ^ (index * 3))):gsub("%.0$", "") .. (_G.TrackerCore.Config.Suffixes[index] or "")
    end

    _G.TrackerCore.Utils.locatePlayerStatObject = function(playerInstance, statName)
        if not playerInstance then return nil end
        local lowerTarget = string.lower(statName)
        local cleanTarget = lowerTarget:gsub("%s+", ""):gsub("_+", "")
        
        local function matches(name)
            local lName = string.lower(name)
            local cName = lName:gsub("%s+", ""):gsub("_+", "")
            return string.find(lName, lowerTarget) or cName == cleanTarget or string.find(cName, cleanTarget)
        end
        
        local classicHubs = {"leaderstats", "leaderstats2", "Stats", "PlayerData", "Data", "Currency"}
        
        for i = 1, #classicHubs do
            local folder = playerInstance:FindFirstChild(classicHubs[i])
            if folder then
                local children = folder:GetChildren()
                for j = 1, #children do
                    local child = children[j]
                    if matches(child.Name) and string.find(child.ClassName, "Value") then
                        return child
                    end
                end
            end
        end

        local rootChildren = playerInstance:GetChildren()
        for i = 1, #rootChildren do
            local child = rootChildren[i]
            if matches(child.Name) and string.find(child.ClassName, "Value") then
                return child
            elseif child:IsA("Folder") or child:IsA("Configuration") then
                local subChildren = child:GetChildren()
                for j = 1, #subChildren do
                    local subChild = subChildren[j]
                    if matches(subChild.Name) and string.find(subChild.ClassName, "Value") then
                        return subChild
                    end
                end
            end
        end
        return nil
    end

    ---------------------------------------------------------
    -- [SECTION 3: SPY PLAYER INTERFACE FIELDS]
    ---------------------------------------------------------
    _G.TrackerCore.SpyTab = nil
    pcall(function() _G.TrackerCore.SpyTab = window:AddTab("Spy Stats") end)

    _G.TrackerCore.PlayerDropdown = _G.TrackerCore.SpyTab and _G.TrackerCore.SpyTab:AddDropdown("Select Player...", function(selectedDisplayName)
        local S = _G.TrackerCore.SpyState
        if selectedDisplayName == "None" or selectedDisplayName == "" then
            S.target, S.start, S.total, S.last, S.rate, S.ticks = nil, {}, {}, {}, {}, {}
            return
        end
        
        local found = nil
        for _, p in ipairs(PlayersRef:GetPlayers()) do
            if p.DisplayName == selectedDisplayName then
                found = p
                break
            end
        end

        if found then
            S.target, S.startTime, S.start, S.total, S.last, S.rate, S.ticks = found, os.time(), {}, {}, {}, {}, {}
            local curT = os.time()
            for _, name in ipairs(_G.TrackerCore.Config.Stats) do
                local obj = _G.TrackerCore.Utils.locatePlayerStatObject(found, name)
                local val = obj and tonumber(obj.Value) or 0
                S.start[name], S.last[name], S.total[name], S.ticks[name], S.rate[name] = val, val, 0, curT, 0
            end
        else
            S.target = nil
        end
    end) or nil

    local function refreshDropdownOptions()
        if not _G.TrackerCore.PlayerDropdown then return end
        pcall(function() _G.TrackerCore.PlayerDropdown:Clear() end) 
        pcall(function() _G.TrackerCore.PlayerDropdown:Add("None") end)
        for _, p in ipairs(PlayersRef:GetPlayers()) do
            if p ~= LocalPlayerRef then 
                pcall(function() _G.TrackerCore.PlayerDropdown:Add(p.DisplayName) end) 
            end
        end
    end

    refreshDropdownOptions()
    PlayersRef.PlayerAdded:Connect(refreshDropdownOptions)
    PlayersRef.PlayerRemoving:Connect(function(p)
        if _G.TrackerCore.SpyState.target == p then
            _G.TrackerCore.SpyState.target, _G.TrackerCore.SpyState.start, _G.TrackerCore.SpyState.total, _G.TrackerCore.SpyState.last, _G.TrackerCore.SpyState.rate, _G.TrackerCore.SpyState.ticks = nil, {}, {}, {}, {}, {}
        end
        refreshDropdownOptions()
    end)

    if _G.TrackerCore.SpyTab then
        for _, name in ipairs(_G.TrackerCore.Config.Stats) do
            pcall(function() _G.TrackerCore.SpyState.labels[name] = _G.TrackerCore.SpyTab:AddLabel(name .. ": N/A (+0) | M: 0 | H: 0 | D: 0 | W: 0 | MO: 0") end)
        end
    end

    ---------------------------------------------------------
    -- [SECTION 4: UNIFIED POLLED CALCULATION LOOP ENGINE]
    ---------------------------------------------------------
    task.spawn(function()
        while task.wait(0.5) do
            local currentTime = os.time()
            local S = _G.TrackerCore.SpyState
            
            if S.target and S.target.Parent == PlayersRef then
                for _, name in ipairs(_G.TrackerCore.Config.Stats) do
                    local statObj = _G.TrackerCore.Utils.locatePlayerStatObject(S.target, name)
                    if statObj and S.labels[name] then
                        local currentVal = tonumber(statObj.Value) or 0
                        if not S.start[name] then
                            S.start[name], S.last[name], S.total[name], S.ticks[name], S.rate[name] = currentVal, currentVal, 0, currentTime, 0
                        end

                        if currentVal < S.last[name] then
                            S.total[name] = S.total[name] + math.max(S.last[name] - S.start[name], 0)
                            S.start[name] = currentVal
                        end

                        local diff = currentVal - S.last[name]
                        if diff > 0 then
                            S.rate[name] = diff / math.max(currentTime - S.ticks[name], 1)
                            S.ticks[name] = currentTime
                        else
                            if currentTime - (S.ticks[name] or currentTime) > 60 then
                                S.rate[name] = math.max((S.rate[name] or 0) * 0.99, 0)
                                if S.rate[name] < 0.001 then S.rate[name] = 0 end
                            end
                        end
                        S.last[name] = currentVal

                        local gained = S.total[name] + math.max(currentVal - S.start[name], 0)
                        local r = S.rate[name] or 0
                        
                        if gained > 0 then
                            if r <= 0 then r = gained / math.max(currentTime - S.startTime, 1) end
                            _G.TrackerCore.Utils.updateLabelText(S.labels[name], string.format(
                                "%s: %s (+%s) | M: %s | H: %s | D: %s | W: %s | MO: %s",
                                name, _G.TrackerCore.Utils.formatNumber(currentVal), _G.TrackerCore.Utils.formatNumber(gained),
                                _G.TrackerCore.Utils.formatNumber(r * 60), 
                                _G.TrackerCore.Utils.formatNumber(r * 3600), 
                                _G.TrackerCore.Utils.formatNumber(r * 86400), 
                                _G.TrackerCore.Utils.formatNumber(r * 604800), 
                                _G.TrackerCore.Utils.formatNumber(r * 2592000)
                            ))
                        else
                            _G.TrackerCore.Utils.updateLabelText(S.labels[name], string.format("%s: %s (+0) | M: 0 | H: 0 | D: 0 | W: 0 | MO: 0", name, _G.TrackerCore.Utils.formatNumber(currentVal)))
                        end
                    end
                end
            else
                for _, name in ipairs(_G.TrackerCore.Config.Stats) do
                    if S.labels[name] then
                        _G.TrackerCore.Utils.updateLabelText(S.labels[name], name .. ": N/A (+0) | M: 0 | H: 0 | D: 0 | W: 0 | MO: 0")
                    end
                end
            end
        end
    end)
end

-- [[ MOVE TO TOP: Core Logic Variables ]]
local player = game.Players.LocalPlayer
local whitelistFriendsActive = false 
local TargetInput = ""         
local WhitelistedPlayers = {}        -- Dictionary mapping UserId -> true
local MultiInputText = ""          -- Stores the raw comma-separated text string

-- Added Label Variable Support for Elerium V2 Whitelist Display
local WhitelistDisplayLabel = nil

-- Target Kill List Variables
local TargetKillListActive = false  -- Toggle state for Loop TP Kill Target List
local TargetKillPlayers = {}        -- Dictionary mapping UserId -> true for target kill list
local SpyTargetKillListActive = false -- Toggle state for spying on the target kill list

-- Added Label Variable Support for Elerium V2 Kill List Display
local KillListDisplayLabel = nil

local LoopKillAllActive = false
local FastLoopKillAllV2Active = false
local LoopKilling = false
local Spectating = false

-- [[ MOVE TO TOP: Helper Function: Find Player by Partial Username OR Nickname/Display Name ]]
local function GetPlayerByInput(input)
    if not input or input == "" then return nil end
    local cleanInput = input:lower():match("^%s*(.-)%s*$") -- Clean leading/trailing spaces
    if cleanInput == "" then return nil end
    
    for _, p in ipairs(game.Players:GetPlayers()) do
        if p.Name:lower():sub(1, #cleanInput) == cleanInput or p.DisplayName:lower():sub(1, #cleanInput) == cleanInput then
            return p
        end
    end
    return nil
end

-- [[ MOVE TO TOP: Helper Function: Update Whitelist List Label Text for Elerium V2 ]]
local function UpdateWhitelistLabel()
    if not WhitelistDisplayLabel then return end
    
    local displayNames = {}
    for userId, _ in pairs(WhitelistedPlayers) do
        local p = game.Players:GetPlayerByUserId(userId)
        if p then
            table.insert(displayNames, p.DisplayName)
        else
            table.insert(displayNames, tostring(userId))
        end
    end
    
    local finalString = "Whitelist: (Empty)"
    if #displayNames > 0 then
        finalString = "Whitelist: " .. table.concat(displayNames, ", ")
    end
    
    pcall(function()
        if type(WhitelistDisplayLabel) == "table" then
            if WhitelistDisplayLabel.Update then
                WhitelistDisplayLabel:Update(finalString)
            elseif WhitelistDisplayLabel.SetText then
                WhitelistDisplayLabel:SetText(finalString)
            elseif WhitelistDisplayLabel.Text then
                WhitelistDisplayLabel.Text = finalString
            end
        elseif typeof(WhitelistDisplayLabel) == "Instance" and WhitelistDisplayLabel:IsA("TextLabel") then
            WhitelistDisplayLabel.Text = finalString
        end
    end)
end

-- [[ MOVE TO TOP: Helper Function: Update Kill List Label Text for Elerium V2 ]]
local function UpdateKillListLabel()
    if not KillListDisplayLabel then return end
    
    local displayNames = {}
    for userId, _ in pairs(TargetKillPlayers) do
        local p = game.Players:GetPlayerByUserId(userId)
        if p then
            table.insert(displayNames, p.DisplayName)
        else
            table.insert(displayNames, tostring(userId))
        end
    end
    
    local finalString = "Kill List: (Empty)"
    if #displayNames > 0 then
        finalString = "Kill List: " .. table.concat(displayNames, ", ")
    end
    
    pcall(function()
        if type(KillListDisplayLabel) == "table" then
            if KillListDisplayLabel.Update then
                KillListDisplayLabel:Update(finalString)
            elseif KillListDisplayLabel.SetText then
                KillListDisplayLabel:SetText(finalString)
            elseif KillListDisplayLabel.Text then
                KillListDisplayLabel.Text = finalString
            end
        elseif typeof(KillListDisplayLabel) == "Instance" and KillListDisplayLabel:IsA("TextLabel") then
            KillListDisplayLabel.Text = finalString
        end
    end)
end

-- [[ MOVE TO TOP: Helper Function: Check Whitelist / Friend Status ]]
local function isWhitelisted(otherPlayer)
    if not otherPlayer then return false end
    
    if WhitelistedPlayers[otherPlayer.UserId] then
        return true
    end
    
    if whitelistFriendsActive then
        local success, result = pcall(function()
            return player:IsFriendsWith(otherPlayer.UserId)
        end)
        if success and result then return true end
    end
    
    return false
end

local Tab = window:AddTab("Misc") -- Name of tab

local misc = Tab:AddFolder("Misc")

-- 4. Server Hop Function Definition
local function serverHop()
    local HttpService = game:GetService("HttpService")
    local TeleportService = game:GetService("TeleportService")
    local Players = game:GetService("Players")
    local LocalPlayer = Players.LocalPlayer
    
    local placeId = game.PlaceId
    local serversUrl = "https://games.roblox.com/v1/games/" .. placeId .. "/servers/Public?sortOrder=Asc&limit=100"
    
    local success, result = pcall(function()
        return HttpService:JSONDecode(game:HttpGet(serversUrl))
    end)
    
    if success and result and result.data then
        for _, server in ipairs(result.data) do
            -- Ensure the server has room and isn't the one you are currently in
            if server.playing < server.maxPlayers and server.id ~= game.JobId then
                pcall(function()
                    TeleportService:TeleportToPlaceInstance(placeId, server.id, LocalPlayer)
                end)
                return -- Stop executing once teleport is initiated
            end
        end
        print("❌ No alternative public servers found.")
    else
        warn("⚠️ Failed to fetch server list. Retrying native teleport...")
        -- Fallback: basic teleport if API lookup is blocked or rate-limited
        pcall(function()
            TeleportService:Teleport(placeId, LocalPlayer)
        end)
    end
end

-- 5. Add the Server Hop Button to Elerium
misc:AddButton("Server Hop", function()
    print("🔄 Initializing Server Hop...")
    serverHop()
end)

-- 4. Rejoin Function Definition
local function rejoinServer()
    local TeleportService = game:GetService("TeleportService")
    local Players = game:GetService("Players")
    local LocalPlayer = Players.LocalPlayer
    
    local placeId = game.PlaceId
    local jobId = game.JobId

    -- If there's only 1 player in the server, a standard Teleport works best as a fallback
    if #Players:GetPlayers() <= 1 then
        pcall(function()
            TeleportService:Teleport(placeId, LocalPlayer)
        end)
    else
        -- Force a teleport directly back into the current active server instance
        pcall(function()
            TeleportService:TeleportToPlaceInstance(placeId, jobId, LocalPlayer)
        end)
    end
end

-- 5. Add the Rejoin Button to Elerium
misc:AddButton("Rejoin Server", function()
    print("🔄 Reconnecting to current server...")
    rejoinServer()
end)

misc:AddButton("Emotes", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/7yd7/Hub/refs/heads/Branch/GUIS/Emotes.lua"))()
end)

misc:AddButton("Jerk Tool (R15)", function()
    loadstring(game:HttpGet("https://pastefy.app/YZoglOyJ/raw"))()
end)

misc:AddButton("Fly GUI V3", function()
    -- This executes the external Fly GUI script when the button is clicked
    loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt"))()
end)

local ClickTPEnabled = false
local Mouse = game.Players.LocalPlayer:GetMouse()
-- Changed AddToggle to AddSwitch
misc:AddSwitch("Click Teleport", function(Value)
    ClickTPEnabled = Value
end)

Mouse.Button1Down:Connect(function()
    if ClickTPEnabled then
        local character = game.Players.LocalPlayer.Character
        local root = character and character:FindFirstChild("HumanoidRootPart")
        if root then
            root.CFrame = CFrame.new(Mouse.Hit.p + Vector3.new(0, 3, 0))
        end
    end
end)

misc:AddLabel("~~~~~~~~~~~~~")

-- Configuration variables
local JumpModEnabled = false
local TargetPower = 50
local TargetHeight = 7.2
local Player = game.Players.LocalPlayer

-- AddSwitch using proper structural framework
local SwitchInstance = misc:AddSwitch("Jump~Power", function(State)
    JumpModEnabled = State
    if not State then
        -- Restore base physics options instantly when disabled
        pcall(function()
            local Character = Player.Character
            if Character then
                local Humanoid = Character:FindFirstChildOfClass("Humanoid")
                if Humanoid then
                    Humanoid.UseJumpPower = true
                    Humanoid.JumpPower = 50
                    Humanoid.JumpHeight = 7.2
                end
            end
        end)
    end
end)

-- AddSlider utilizing proper Elerium data options
local SliderInstance = misc:AddSlider("Jump Power Value", function(Value)
    TargetPower = Value
    TargetHeight = (Value * 0.144) -- Convert ratio scaling safely
end, {
    min = 50,
    max = 1000
})

-- Continuous loop ensuring state remains applied
game:GetService("RunService").RenderStepped:Connect(function()
    if JumpModEnabled then
        pcall(function()
            local Character = Player.Character
            if Character then
                local Humanoid = Character:FindFirstChildOfClass("Humanoid")
                if Humanoid then
                    -- Forces both values to prevent anti-cheat reset overwrites
                    Humanoid.UseJumpPower = true
                    Humanoid.JumpPower = TargetPower
                    Humanoid.JumpHeight = TargetHeight
                end
            end
        end)
    end
end)

-- Global Logic Variables
local noclipEnabled = false
local runService = game:GetService("RunService")
local players = game:GetService("Players")
local localPlayer = players.LocalPlayer

-- ==========================================
-- 🛠️ MOVEMENT SECTION (Noclip Logic)
-- ==========================================
local noclipConnection
noclipConnection = runService.Stepped:Connect(function()
    if noclipEnabled and localPlayer.Character then
        for _, part in pairs(localPlayer.Character:GetDescendants()) do
            if part:IsA("BasePart") and part.CanCollide then
                part.CanCollide = false
            end
        end
    end
end)

misc:AddSwitch("Noclip", function(state)
    noclipEnabled = state
    
    if not noclipEnabled and localPlayer.Character then
        for _, part in pairs(localPlayer.Character:GetDescendants()) do
            if part:IsA("BasePart") then
                part.CanCollide = true
            end
        end
    end
end)

-- 1. Switch to Enable/Disable
misc:AddSwitch("Infinite Jump", function(Value)
    InfiniteJumpEnabled = Value
end)

-- 2. The Logic (Listen for Jump Request)
game:GetService("UserInputService").JumpRequest:Connect(function()
    if InfiniteJumpEnabled then
        local player = game.Players.LocalPlayer
        local character = player.Character
        local humanoid = character and character:FindFirstChildOfClass("Humanoid")
        
        if humanoid then
            -- Set state to Jumping to allow another jump in mid-air
            humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end)

-- Variables for control
getgenv().LoopSpeedEnabled = false
getgenv().WalkSpeedValue = 16

-- 1. The Switch (Toggle)
misc:AddSwitch("Loop WalkSpeed", function(bool)
    getgenv().LoopSpeedEnabled = bool
    print("Loop Speed is now: ", bool)
end)

-- 2. The Textbox (Speed Value)
misc:AddTextBox("Speed Amount", function(text)
    local num = tonumber(text)
    if num then
        getgenv().WalkSpeedValue = num
    end
end)

-- 3. The Background Loop
task.spawn(function()
    while task.wait() do
        if getgenv().LoopSpeedEnabled then
            pcall(function()
                local char = game.Players.LocalPlayer.Character
                if char and char:FindFirstChild("Humanoid") then
                    char.Humanoid.WalkSpeed = getgenv().WalkSpeedValue
                end
            end)
        end
    end
end)

local mainTab = Tab:AddFolder("Misc V2")

local function mk(n, c)
    local g = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer.PlayerGui)
    g.Name, g.ResetOnSpawn, g.DisplayOrder, g.IgnoreGuiInset = n, false, 9999999, true
    local f = Instance.new("Frame", g)
    f.Size, f.BackgroundColor3, f.BorderSizePixel, f.Visible = UDim2.new(1,0,1,0), c, 0, false
    return f
end

local bF, wF = mk("B", Color3.new(0,0,0)), mk("W", Color3.new(1,1,1))
mainTab:AddSwitch("Black Screen", function(s) bF.Visible = s end)
mainTab:AddSwitch("White Screen", function(s) wF.Visible = s end)

local fb, orig = false, {game:GetService("Lighting").Ambient, game:GetService("Lighting").OutdoorAmbient, game:GetService("Lighting").Brightness, game:GetService("Lighting").ClockTime, game:GetService("Lighting").GlobalShadows}
task.spawn(function()
    while task.wait(0.5) do
        if fb then game:GetService("Lighting").Ambient, game:GetService("Lighting").OutdoorAmbient, game:GetService("Lighting").Brightness, game:GetService("Lighting").ClockTime, game:GetService("Lighting").GlobalShadows = Color3.new(1,1,1), Color3.new(1,1,1), 2, 14, false end
    end
end)
mainTab:AddSwitch("Fullbright", function(s)
    fb = s
    if not s then game:GetService("Lighting").Ambient, game:GetService("Lighting").OutdoorAmbient, game:GetService("Lighting").Brightness, game:GetService("Lighting").ClockTime, game:GetService("Lighting").GlobalShadows = unpack(orig) end
end)

local be, ne, he, c = false, false, false, {}

local function esp(p)
    if c[p] or p == game:GetService("Players").LocalPlayer then return end
    local hl = Instance.new("Highlight")
    hl.FillColor, hl.FillTransparency, hl.OutlineColor = Color3.new(1,0,0), 0.5, Color3.new(1,1,1)
    
    local nt = Instance.new("BillboardGui")
    nt.Size, nt.AlwaysOnTop, nt.ExtentsOffset = UDim2.new(0,200,0,50), true, Vector3.new(0,3,0)
    local tx = Instance.new("TextLabel", nt)
    tx.Size, tx.BackgroundTransparency, tx.Text, tx.TextColor3, tx.TextSize, tx.Font, tx.TextStrokeTransparency = UDim2.new(1,0,1,0), 1, p.Name, Color3.new(1,1,1), 14, Enum.Font.SourceSansBold, 0

    local hb = Instance.new("BillboardGui")
    hb.Size, hb.AlwaysOnTop, hb.ExtentsOffset = UDim2.new(0,5,0,45), true, Vector3.new(-2.2,0.5,0)
    local bg = Instance.new("Frame", hb)
    bg.Size, bg.BackgroundColor3, bg.BorderSizePixel = UDim2.new(1,0,1,0), Color3.fromRGB(40,40,40), 0
    local hm = Instance.new("Frame", bg)
    hm.Size, hm.Position, hm.AnchorPoint, hm.BackgroundColor3, hm.BorderSizePixel = UDim2.new(1,0,1,0), UDim2.new(0,0,1,0), Vector2.new(0,1), Color3.fromRGB(0,255,0), 0

    c[p] = {H = hl, N = nt, B = hb, M = hm}

    local function up()
        local ch = p.Character
        local hd, hu = ch and ch:WaitForChild("Head", 5), ch and ch:WaitForChild("Humanoid", 5)
        if ch and hd and hu then
            hl.Parent, hl.Enabled = ch, be
            nt.Adornee, nt.Parent, nt.Enabled = hd, hd, ne
            hb.Adornee, hb.Parent, hb.Enabled = hd, hd, he
            if c[p].Cn then c[p].Cn:Disconnect() end
            c[p].Cn = hu:GetPropertyChangedSignal("Health"):Connect(function()
                local pct = math.clamp(hu.Health / hu.MaxHealth, 0, 1)
                hm.Size = UDim2.new(1, 0, pct, 0)
                hm.BackgroundColor3 = Color3.fromHSV(pct * 0.35, 1, 1)
            end)
        end
    end
    p.CharacterAdded:Connect(function() task.wait(0.5) up() end)
    up()
end

for _, p in ipairs(game:GetService("Players"):GetPlayers()) do esp(p) end
game:GetService("Players").PlayerAdded:Connect(esp)
game:GetService("Players").PlayerRemoving:Connect(function(p)
    if c[p] then
        for _, v in pairs(c[p]) do if typeof(v) == "Instance" then v:Destroy() elseif typeof(v) == "RBXScriptConnection" then v:Disconnect() end end
        c[p] = nil
    end
end)

mainTab:AddSwitch("Box ESP", function(s) be = s for _, d in pairs(c) do if d.H then d.H.Enabled = s end end end)
mainTab:AddSwitch("Player Name ESP", function(s) ne = s for _, d in pairs(c) do if d.N then d.N.Enabled = s end end end)
mainTab:AddSwitch("Health Bar ESP", function(s) he = s for _, d in pairs(c) do if d.B then d.B.Enabled = s end end end)
	
local fps1 = Tab:AddFolder("Misc V3")

	fps1:AddButton('Remove Textures', function()
		local v1194, v1195, v1196 = pairs(game:GetDescendants())
		while true do
			local v1197
			v1196, v1197 = v1194(v1195, v1196)
			if v1196 == nil then
				break
			end
			if v1197:IsA('Decal') or v1197:IsA('Texture') then
				v1197.Transparency = 1
			end
		end
		game:GetService('StarterGui'):SetCore('SendNotification', {
			Title = 'Performance',
			Text = 'Textures removed!',
			Duration = 5,
		})
	end)
	fps1:AddButton('Reduce Graphics', function()
		settings().Rendering.QualityLevel = Enum.QualityLevel.Level01
		game:GetService('StarterGui'):SetCore('SendNotification', {
			Title = 'Performance',
			Text = 'Graphics reduced!',
			Duration = 5,
		})
	end)
	fps1:AddButton('Disable Shadows', function()
		game:GetService('Lighting').GlobalShadows = false
		game:GetService('StarterGui'):SetCore('SendNotification', {
			Title = 'Performance',
			Text = 'Shadows disabled!',
			Duration = 5,
		})
	end)
	fps1:AddButton('Disable Effects', function()
		local v1198, v1199, v1200 = pairs(game:GetDescendants())
		while true do
			local v1201
			v1200, v1201 = v1198(v1199, v1200)
			if v1200 == nil then
				break
			end
			if v1201:IsA('ParticleEmitter') or (v1201:IsA('Smoke') or (v1201:IsA('Fire') or v1201:IsA('Sparkles'))) then
				v1201.Enabled = false
			end
		end
		local _Lighting2 = game:GetService('Lighting')
		local v1203, v1204, v1205 = pairs(_Lighting2:GetChildren())
		while true do
			local v1206
			v1205, v1206 = v1203(v1204, v1205)
			if v1205 == nil then
				break
			end
			if v1206:IsA('BlurEffect') or (v1206:IsA('SunRaysEffect') or (v1206:IsA('ColorCorrectionEffect') or (v1206:IsA('BloomEffect') or v1206:IsA('DepthOfFieldEffect')))) then
				v1206.Enabled = false
			end
		end
		game:GetService('StarterGui'):SetCore('SendNotification', {
			Title = 'Performance',
			Text = 'Effects disabled!',
			Duration = 5,
		})
	end)
	fps1:AddButton('Simplify Materials', function()
		local v1207, v1208, v1209 = pairs(game:GetDescendants())
		while true do
			local v1210
			v1209, v1210 = v1207(v1208, v1209)
			if v1209 == nil then
				break
			end
			if v1210:IsA('BasePart') and not v1210:IsA('MeshPart') then
				v1210.Material = Enum.Material.SmoothPlastic
				if not (v1210.Parent and (v1210.Parent:FindFirstChild('Humanoid') or v1210.Parent.Parent:FindFirstChild('Humanoid'))) then
					v1210.Reflectance = 0
				end
			end
		end
		game:GetService('StarterGui'):SetCore('SendNotification', {
			Title = 'Performance',
			Text = 'Materials simplified!',
			Duration = 5,
		})
	end)
fps1:AddButton('Remove Fog', function()
		game:GetService('Lighting').FogEnd = 10000000000
		game:GetService('StarterGui'):SetCore('SendNotification', {
			Title = 'Performance',
			Text = 'Fog removed!',
			Duration = 5,
		})
	end)
	fps1:AddButton('Anti Lag (Advanced)', function()
		local v1211, v1212, v1213 = pairs(game:GetDescendants())
		while true do
			local v1214
			v1213, v1214 = v1211(v1212, v1213)
			if v1213 == nil then
				break
			end
			if v1214:IsA('Decal') or v1214:IsA('Texture') then
				v1214:Destroy()
			end
		end
		local _Terrain = workspace:FindFirstChildOfClass('Terrain')
		if _Terrain then
			_Terrain.WaterWaveSize = 0
			_Terrain.WaterWaveSpeed = 0
			_Terrain.WaterReflectance = 0
			_Terrain.WaterTransparency = 1
			_Terrain.Decorations = false
		end
		local v1216, v1217, v1218 = pairs(workspace:GetDescendants())
		while true do
			local v1219
			v1218, v1219 = v1216(v1217, v1218)
			if v1218 == nil then
				break
			end
			if v1219:IsA('Explosion') or v1219:IsA('Debris') then
				v1219:Destroy()
			elseif v1219:IsA('BasePart') and v1219.Name:lower():find('debris') then
				v1219:Destroy()
			end
		end
		local v1220, v1221, v1222 = pairs(game:GetDescendants())
		while true do
			local v1223
			v1222, v1223 = v1220(v1221, v1222)
			if v1222 == nil then
				break
			end
			if v1223:IsA('PointLight') or (v1223:IsA('SurfaceLight') or v1223:IsA('SpotLight')) then
				v1223.Enabled = false
			end
		end
		local v1224, v1225, v1226 = pairs(workspace:GetDescendants())
		while true do
			local v1227
			v1226, v1227 = v1224(v1225, v1226)
			if v1226 == nil then
				break
			end
			if v1227:IsA('Sound') then
				v1227:Stop()
			end
		end
		print('Anti-Lag Activated: Textures, lighting, sounds, and effects removed.')
	end)
	fps1:AddButton('Ultra FPS Booster', function()
		settings().Rendering.QualityLevel = Enum.QualityLevel.Level01
		settings().Rendering.MeshPartDetailLevel = Enum.MeshPartDetailLevel.Level01
		settings().Rendering.EagerBulkExecution = true
		settings().Rendering.ReloadAssets = false
		local _Lighting3 = game:GetService('Lighting')
		_Lighting3.GlobalShadows = false
		_Lighting3.FogEnd = 10000000000
		_Lighting3.Brightness = 0
		_Lighting3.EnvironmentDiffuseScale = 0
		_Lighting3.EnvironmentSpecularScale = 0
		local v1229, v1230, v1231 = ipairs(game:GetDescendants())
		while true do
			local v1232
			v1231, v1232 = v1229(v1230, v1231)
			if v1231 == nil then
				break
			end
			if v1232:IsA('ParticleEmitter') or (v1232:IsA('Trail') or (v1232:IsA('Smoke') or (v1232:IsA('Fire') or v1232:IsA('Sparkles')))) then
				v1232:Destroy()
			elseif v1232:IsA('PointLight') or (v1232:IsA('SpotLight') or v1232:IsA('SurfaceLight')) then
				v1232.Enabled = false
			end
		end
		local v1233, v1234, v1235 = pairs(game:GetDescendants())
		while true do
			local v1236
			v1235, v1236 = v1233(v1234, v1235)
			if v1235 == nil then
				break
			end
			if v1236:IsA('Sound') then
				v1236:Stop()
				v1236.Volume = 0
			end
		end
		local v1237, v1238, v1239 = ipairs(game:GetDescendants())
		while true do
			local v1240
			v1239, v1240 = v1237(v1238, v1239)
			if v1239 == nil then
				break
			end
			if v1240:IsA('Decal') or v1240:IsA('Texture') then
				v1240:Destroy()
			end
		end
		local _Terrain2 = workspace:FindFirstChildOfClass('Terrain')
		if _Terrain2 then
			_Terrain2.WaterWaveSize = 0
			_Terrain2.WaterWaveSpeed = 0
			_Terrain2.WaterReflectance = 0
			_Terrain2.WaterTransparency = 1
			_Terrain2.Decorations = false
		end
		local _LocalPlayer60 = game.Players.LocalPlayer
		local _PlayerGui3 = _LocalPlayer60:FindFirstChild('PlayerGui')
		if _PlayerGui3 then
			local v1244, v1245, v1246 = ipairs(_PlayerGui3:GetDescendants())
			while true do
				local v1247
				v1246, v1247 = v1244(v1245, v1246)
				if v1246 == nil then
					break
				end
				if v1247:IsA('TextLabel') or (v1247:IsA('ImageLabel') or v1247:IsA('ImageButton')) then
					v1247.Visible = false
				end
			end
		end
		local v1248, v1249, v1250 = ipairs(_LocalPlayer60.Character:GetChildren())
		while true do
			local v1251
			v1250, v1251 = v1248(v1249, v1250)
			if v1250 == nil then
				break
			end
			if v1251:IsA('Accessory') or v1251:IsA('Clothing') then
				v1251:Destroy()
			end
		end
		local _Humanoid8 = _LocalPlayer60.Character:FindFirstChildWhichIsA('Humanoid')
		if _Humanoid8 then
			local v1253, v1254, v1255 = pairs(_Humanoid8:GetPlayingAnimationTracks())
			while true do
				local v1256
				v1255, v1256 = v1253(v1254, v1255)
				if v1255 == nil then
					break
				end
				v1256:Stop()
			end
		end
		print('Ultra FPS Boost applied. Maximum rendering and resource optimization complete.')
	end)
	fps1:AddButton('Full Optimization', function()
		local v1257, v1258, v1259 = pairs(game:GetDescendants())
		while true do
			local v1260
			v1259, v1260 = v1257(v1258, v1259)
			if v1259 == nil then
				break
			end
			if v1260:IsA('ParticleEmitter') or (v1260:IsA('Smoke') or (v1260:IsA('Fire') or v1260:IsA('Sparkles'))) then
				v1260.Enabled = false
			end
		end
		local _Lighting4 = game:GetService('Lighting')
		_Lighting4.GlobalShadows = false
		_Lighting4.FogEnd = 9000000000
		_Lighting4.Brightness = 0
		settings().Rendering.QualityLevel = 1
		local v1262, v1263, v1264 = pairs(game:GetDescendants())
		while true do
			local v1265
			v1264, v1265 = v1262(v1263, v1264)
			if v1264 == nil then
				break
			end
			if v1265:IsA('Decal') or v1265:IsA('Texture') then
				v1265.Transparency = 1
			elseif v1265:IsA('BasePart') and not v1265:IsA('MeshPart') then
				v1265.Material = Enum.Material.SmoothPlastic
				if not (v1265.Parent and (v1265.Parent:FindFirstChild('Humanoid') or v1265.Parent.Parent:FindFirstChild('Humanoid'))) then
					v1265.Reflectance = 0
				end
			end
		end
		local v1266, v1267, v1268 = pairs(_Lighting4:GetChildren())
		while true do
			local v1269
			v1268, v1269 = v1266(v1267, v1268)
			if v1268 == nil then
				break
			end
			if v1269:IsA('BlurEffect') or (v1269:IsA('SunRaysEffect') or (v1269:IsA('ColorCorrectionEffect') or (v1269:IsA('BloomEffect') or v1269:IsA('DepthOfFieldEffect')))) then
				v1269.Enabled = false
			end
		end
		game:GetService('StarterGui'):SetCore('SendNotification', {
			Title = 'Optimization',
			Text = 'Full optimization applied!',
			Duration = 5,
		})
	end)

    local infoTab = window:AddTab("Info")
infoTab:Show()
infoTab:AddLabel("Made by VRoy").TextSize = 20
infoTab:AddLabel("https://github.com/ALPHAneegy").TextSize = 20
infoTab:AddButton("Copy my github link", function()
    local link = "https://github.com/ALPHAneegy"
    if setclipboard then
        setclipboard(link)
        game.StarterGui:SetCore("SendNotification", {
            Title = "Link Copied!";
            Text = "You can continue to know me now.";
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
local wLabel = infoTab:AddLabel("Version: 4")
wLabel.TextSize = 30
wLabel.Font = Enum.Font.Arcade
