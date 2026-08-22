--// LocalScript - Roblox Studio
--// Colocar en StarterPlayer > StarterPlayerScripts

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
local Lighting = game:GetService("Lighting")
local TeleportService = game:GetService("TeleportService")
local UserInputService = game:GetService("UserInputService")

local LocalPlayer = Players.LocalPlayer

--==================================================
-- CONFIG
--==================================================

local DEFAULT_WALK_SPEED = 16
local DEFAULT_SIZE = 1

local walkSpeed = DEFAULT_WALK_SPEED
local currentSize = DEFAULT_SIZE

local lockConnection = nil
local antiFlingConnection = nil
local walkOnWaterPart = nil

--==================================================
-- CHARACTER HELPERS
--==================================================

local function getCharacter()
	return LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
end

local function getHumanoid()
	local character = LocalPlayer.Character
	if not character then
		return nil
	end

	return character:FindFirstChildOfClass("Humanoid")
end

local function getRootPart()
	local character = LocalPlayer.Character
	if not character then
		return nil
	end

	return character:FindFirstChild("HumanoidRootPart")
end

local function applyWalkSpeed()
	local humanoid = getHumanoid()

	if humanoid then
		humanoid.WalkSpeed = walkSpeed
	end
end

LocalPlayer.CharacterAdded:Connect(function(character)
	character:WaitForChild("Humanoid")
	character:WaitForChild("HumanoidRootPart")

	task.wait(0.2)

	applyWalkSpeed()

	if currentSize ~= DEFAULT_SIZE then
		-- Escala del personaje únicamente si el rig lo permite.
		local humanoid = character:FindFirstChildOfClass("Humanoid")

		if humanoid then
			local bodyDepth = humanoid:FindFirstChild("BodyDepthScale")
			local bodyHeight = humanoid:FindFirstChild("BodyHeightScale")
			local bodyWidth = humanoid:FindFirstChild("BodyWidthScale")
			local headScale = humanoid:FindFirstChild("HeadScale")

			if bodyDepth then
				bodyDepth.Value = currentSize
			end

			if bodyHeight then
				bodyHeight.Value = currentSize
			end

			if bodyWidth then
				bodyWidth.Value = currentSize
			end

			if headScale then
				headScale.Value = currentSize
			end
		end
	end
end)

--==================================================
-- GUI
--==================================================

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "RealGanstaMenu"
ScreenGui.ResetOnSpawn = false
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")

local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.Size = UDim2.fromOffset(620, 600)
MainFrame.Position = UDim2.new(0.5, -310, 0.5, -300)
MainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
MainFrame.BorderSizePixel = 0
MainFrame.Parent = ScreenGui

local MainCorner = Instance.new("UICorner")
MainCorner.CornerRadius = UDim.new(0, 8)
MainCorner.Parent = MainFrame

local Title = Instance.new("TextLabel")
Title.Name = "Title"
Title.Size = UDim2.new(1, 0, 0, 50)
Title.BackgroundColor3 = Color3.fromRGB(5, 5, 5)
Title.BorderSizePixel = 0
Title.Text = "Real Gansta Menu | Farming | New UPD"
Title.TextColor3 = Color3.new(1, 1, 1)
Title.TextSize = 20
Title.Font = Enum.Font.GothamBold
Title.Parent = MainFrame

local TitleCorner = Instance.new("UICorner")
TitleCorner.CornerRadius = UDim.new(0, 8)
TitleCorner.Parent = Title

--==================================================
-- DRAG
--==================================================

local dragging = false
local dragStart
local startPosition

Title.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		dragging = true
		dragStart = input.Position
		startPosition = MainFrame.Position

		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
			end
		end)
	end
end)

UserInputService.InputChanged:Connect(function(input)
	if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
		local delta = input.Position - dragStart

		MainFrame.Position = UDim2.new(
			startPosition.X.Scale,
			startPosition.X.Offset + delta.X,
			startPosition.Y.Scale,
			startPosition.Y.Offset + delta.Y
		)
	end
end)

--==================================================
-- TAB SYSTEM
--==================================================

local TabBar = Instance.new("Frame")
TabBar.Size = UDim2.new(1, -20, 0, 40)
TabBar.Position = UDim2.fromOffset(10, 60)
TabBar.BackgroundTransparency = 1
TabBar.Parent = MainFrame

local MainTabButton = Instance.new("TextButton")
MainTabButton.Size = UDim2.fromOffset(120, 35)
MainTabButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
MainTabButton.Text = "Main"
MainTabButton.TextColor3 = Color3.new(1, 1, 1)
MainTabButton.TextSize = 15
MainTabButton.Font = Enum.Font.GothamBold
MainTabButton.Parent = TabBar

local Content = Instance.new("ScrollingFrame")
Content.Name = "Content"
Content.Size = UDim2.new(1, -20, 1, -115)
Content.Position = UDim2.fromOffset(10, 105)
Content.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Content.BorderSizePixel = 0
Content.ScrollBarThickness = 5
Content.CanvasSize = UDim2.new()
Content.AutomaticCanvasSize = Enum.AutomaticSize.Y
Content.Parent = MainFrame

local ContentPadding = Instance.new("UIPadding")
ContentPadding.PaddingTop = UDim.new(0, 10)
ContentPadding.PaddingBottom = UDim.new(0, 10)
ContentPadding.PaddingLeft = UDim.new(0, 10)
ContentPadding.PaddingRight = UDim.new(0, 10)
ContentPadding.Parent = Content

local ContentLayout = Instance.new("UIListLayout")
ContentLayout.Padding = UDim.new(0, 8)
ContentLayout.SortOrder = Enum.SortOrder.LayoutOrder
ContentLayout.Parent = Content

--==================================================
-- GUI HELPERS
--==================================================

local function createSection(text)
	local label = Instance.new("TextLabel")

	label.Size = UDim2.new(1, -5, 0, 35)
	label.BackgroundTransparency = 1
	label.Text = text
	label.TextColor3 = Color3.new(1, 1, 1)
	label.TextSize = 22
	label.Font = Enum.Font.GothamBold
	label.TextXAlignment = Enum.TextXAlignment.Left
	label.Parent = Content

	return label
end

local function createButton(text, callback)
	local button = Instance.new("TextButton")

	button.Size = UDim2.new(1, -5, 0, 40)
	button.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	button.BorderSizePixel = 0
	button.Text = text
	button.TextColor3 = Color3.new(1, 1, 1)
	button.TextSize = 15
	button.Font = Enum.Font.Gotham
	button.AutoButtonColor = true
	button.Parent = Content

	local corner = Instance.new("UICorner")
	corner.CornerRadius = UDim.new(0, 5)
	corner.Parent = button

	button.MouseButton1Click:Connect(function()
		local success, err = pcall(callback)

		if not success then
			warn("[RealGanstaMenu] Error:", err)
		end
	end)

	return button
end

local function createSwitch(text, callback)
	local button = Instance.new("TextButton")

	button.Size = UDim2.new(1, -5, 0, 40)
	button.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	button.BorderSizePixel = 0
	button.TextColor3 = Color3.new(1, 1, 1)
	button.TextSize = 15
	button.Font = Enum.Font.Gotham
	button.TextXAlignment = Enum.TextXAlignment.Left
	button.Parent = Content

	local corner = Instance.new("UICorner")
	corner.CornerRadius = UDim.new(0, 5)
	corner.Parent = button

	local enabled = false

	local function update()
		if enabled then
			button.Text = "  " .. text .. "    [ON]"
			button.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
		else
			button.Text = "  " .. text .. "    [OFF]"
			button.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
		end
	end

	button.MouseButton1Click:Connect(function()
		enabled = not enabled
		update()

		local success, err = pcall(function()
			callback(enabled)
		end)

		if not success then
			warn("[RealGanstaMenu] Switch error:", err)
		end
	end)

	update()

	return button
end

local function createTextBox(text, defaultValue, callback)
	local frame = Instance.new("Frame")

	frame.Size = UDim2.new(1, -5, 0, 45)
	frame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	frame.BorderSizePixel = 0
	frame.Parent = Content

	local corner = Instance.new("UICorner")
	corner.CornerRadius = UDim.new(0, 5)
	corner.Parent = frame

	local label = Instance.new("TextLabel")
	label.Size = UDim2.new(0.45, 0, 1, 0)
	label.BackgroundTransparency = 1
	label.Text = text
	label.TextColor3 = Color3.new(1, 1, 1)
	label.TextSize = 15
	label.Font = Enum.Font.Gotham
	label.TextXAlignment = Enum.TextXAlignment.Left
	label.Parent = frame

	local padding = Instance.new("UIPadding")
	padding.PaddingLeft = UDim.new(0, 10)
	padding.Parent = label

	local box = Instance.new("TextBox")
	box.Size = UDim2.new(0.45, 0, 0, 30)
	box.Position = UDim2.new(0.5, 0, 0.5, -15)
	box.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
	box.BorderSizePixel = 0
	box.Text = tostring(defaultValue)
	box.TextColor3 = Color3.new(1, 1, 1)
	box.TextSize = 14
	box.Font = Enum.Font.Gotham
	box.ClearTextOnFocus = false
	box.Parent = frame

	local boxCorner = Instance.new("UICorner")
	boxCorner.CornerRadius = UDim.new(0, 4)
	boxCorner.Parent = box

	box.FocusLost:Connect(function()
		local value = tonumber(box.Text)

		if value then
			callback(value)
		else
			box.Text = tostring(defaultValue)
		end
	end)

	return box
end

local function notify(title, text)
	pcall(function()
		game:GetService("StarterGui"):SetCore("SendNotification", {
			Title = title,
			Text = text,
			Duration = 4
		})
	end)
end

--==================================================
-- SETTINGS
--==================================================

createSection("Settings")

createTextBox("Speed", DEFAULT_WALK_SPEED, function(value)
	walkSpeed = math.clamp(value, 0, 250)
	applyWalkSpeed()
end)

createTextBox("Size", DEFAULT_SIZE, function(value)
	currentSize = math.clamp(value, 0.1, 10)

	local character = LocalPlayer.Character
	if not character then
		return
	end

	local humanoid = character:FindFirstChildOfClass("Humanoid")

	if humanoid then
		local bodyDepth = humanoid:FindFirstChild("BodyDepthScale")
		local bodyHeight = humanoid:FindFirstChild("BodyHeightScale")
		local bodyWidth = humanoid:FindFirstChild("BodyWidthScale")
		local headScale = humanoid:FindFirstChild("HeadScale")

		if bodyDepth then
			bodyDepth.Value = currentSize
		end

		if bodyHeight then
			bodyHeight.Value = currentSize
		end

		if bodyWidth then
			bodyWidth.Value = currentSize
		end

		if headScale then
			headScale.Value = currentSize
		end
	end
end)

--==================================================
-- ESSENTIALS
--==================================================

createSection("Essentials")

--==================================================
-- REMOVE PORTALS
--==================================================

local function removePortals()
	for _, object in ipairs(workspace:GetDescendants()) do
		if object.Name == "RobloxForwardPortals" then
			object:Destroy()
		end
	end
end

removePortals()

workspace.DescendantAdded:Connect(function(object)
	if object.Name == "RobloxForwardPortals" then
		object:Destroy()
	end
end)

createButton("Remove Roblox Forward Portals", function()
	removePortals()
	notify("Essentials", "Portals removed.")
end)

--==================================================
-- WALK ON WATER
--==================================================

createSwitch("Walk on Water", function(enabled)
	if enabled then
		if walkOnWaterPart then
			walkOnWaterPart:Destroy()
		end

		walkOnWaterPart = Instance.new("Part")
		walkOnWaterPart.Name = "LocalWaterWalkPlatform"
		walkOnWaterPart.Size = Vector3.new(10000, 1, 10000)
		walkOnWaterPart.Position = Vector3.new(0, -9.5, 0)
		walkOnWaterPart.Transparency = 1
		walkOnWaterPart.Anchored = true
		walkOnWaterPart.CanCollide = true
		walkOnWaterPart.CanTouch = false
		walkOnWaterPart.CanQuery = false
		walkOnWaterPart.Parent = workspace
	else
		if walkOnWaterPart then
			walkOnWaterPart:Destroy()
			walkOnWaterPart = nil
		end
	end
end)

--==================================================
-- ANTI FLING
--==================================================

createSwitch("Anti Fling", function(enabled)
	if antiFlingConnection then
		antiFlingConnection:Disconnect()
		antiFlingConnection = nil
	end

	if enabled then
		antiFlingConnection = RunService.Heartbeat:Connect(function()
			local root = getRootPart()

			if root then
				local velocity = root.AssemblyLinearVelocity

				-- Evita velocidades horizontales extremadamente grandes.
				if math.abs(velocity.X) > 100 or math.abs(velocity.Z) > 100 then
					root.AssemblyLinearVelocity = Vector3.new(
						0,
						math.clamp(velocity.Y, -100, 100),
						0
					)
				end

				if math.abs(root.AssemblyAngularVelocity.X) > 50
					or math.abs(root.AssemblyAngularVelocity.Y) > 50
					or math.abs(root.AssemblyAngularVelocity.Z) > 50 then

					root.AssemblyAngularVelocity = Vector3.zero
				end
			end
		end)
	end
end)

--==================================================
-- LOCK POSITION
--==================================================

createSwitch("Lock Position", function(enabled)
	if lockConnection then
		lockConnection:Disconnect()
		lockConnection = nil
	end

	if enabled then
		local root = getRootPart()

		if not root then
			return
		end

		local lockedCFrame = root.CFrame

		lockConnection = RunService.Heartbeat:Connect(function()
			local currentRoot = getRootPart()

			if currentRoot then
				currentRoot.CFrame = lockedCFrame
				currentRoot.AssemblyLinearVelocity = Vector3.zero
				currentRoot.AssemblyAngularVelocity = Vector3.zero
			end
		end)
	end
end)

--==================================================
-- GOD MODE
--==================================================

-- IMPORTANTE:
-- Un LocalScript no puede garantizar God Mode contra un servidor.
-- Esto solamente protege al personaje local frente a cambios locales.

local godModeEnabled = false
local godModeConnection = nil

createSwitch("God Mode (Local)", function(enabled)
	godModeEnabled = enabled

	if godModeConnection then
		godModeConnection:Disconnect()
		godModeConnection = nil
	end

	if enabled then
		godModeConnection = RunService.Heartbeat:Connect(function()
			local humanoid = getHumanoid()

			if humanoid then
				humanoid.Health = humanoid.MaxHealth
			end
		end)
	end
end)

--==================================================
-- REJOIN
--==================================================

createButton("Rejoin", function()
	local success, err = pcall(function()
		TeleportService:TeleportToPlaceInstance(
			game.PlaceId,
			game.JobId,
			LocalPlayer
		)
	end)

	if not success then
		warn("Rejoin failed:", err)
		notify("Teleport", "No se pudo hacer Rejoin.")
	end
end)

--==================================================
-- SERVER HOP
--==================================================

-- Roblox no permite hacer la petición HTTP pública de servidores
-- directamente desde un LocalScript de forma equivalente a
-- game:HttpGet().
--
-- Por eso esta función no intenta usar APIs de executor.

createButton("Server Hop", function()
	notify(
		"Server Hop",
		"Para Server Hop real necesitas hacerlo desde el servidor con HttpService + TeleportService."
	)

	warn(
		"Server Hop: implementa la consulta de servidores en ServerScriptService."
	)
end)

--==================================================
-- PERFORMANCE
--==================================================

createSection("Performance")

--==================================================
-- REMOVE TEXTURES
--==================================================

createButton("Remove Textures", function()
	local count = 0

	for _, object in ipairs(game:GetDescendants()) do
		if object:IsA("Decal") or object:IsA("Texture") then
			object.Transparency = 1
			count += 1
		end
	end

	notify("Performance", "Textures removed: " .. count)
end)

--==================================================
-- REDUCE GRAPHICS
--==================================================

createButton("Reduce Graphics", function()
	local success = pcall(function()
		settings().Rendering.QualityLevel = Enum.QualityLevel.Level01
	end)

	if success then
		notify("Performance", "Graphics reduced.")
	else
		notify("Performance", "No se pudo cambiar QualityLevel.")
	end
end)

--==================================================
-- DISABLE SHADOWS
--==================================================

createButton("Disable Shadows", function()
	Lighting.GlobalShadows = false

	notify("Performance", "Shadows disabled.")
end)

--==================================================
-- DISABLE EFFECTS
--==================================================

local function disableEffects()
	local count = 0

	for _, object in ipairs(game:GetDescendants()) do
		if object:IsA("ParticleEmitter")
			or object:IsA("Trail")
			or object:IsA("Smoke")
			or object:IsA("Fire")
			or object:IsA("Sparkles") then

			object.Enabled = false
			count += 1
		end
	end

	for _, object in ipairs(Lighting:GetChildren()) do
		if object:IsA("BlurEffect")
			or object:IsA("SunRaysEffect")
			or object:IsA("ColorCorrectionEffect")
			or object:IsA("BloomEffect")
			or object:IsA("DepthOfFieldEffect") then

			object.Enabled = false
			count += 1
		end
	end

	notify("Performance", "Effects disabled: " .. count)
end

createButton("Disable Effects", disableEffects)

--==================================================
-- SIMPLIFY MATERIALS
--==================================================

createButton("Simplify Materials", function()
	local count = 0

	for _, object in ipairs(workspace:GetDescendants()) do
		if object:IsA("BasePart") and not object:IsA("MeshPart") then
			object.Material = Enum.Material.SmoothPlastic
			object.Reflectance = 0
			count += 1
		end
	end

	notify("Performance", "Materials simplified: " .. count)
end)

--==================================================
-- REMOVE FOG
--==================================================

createButton("Remove Fog", function()
	Lighting.FogEnd = 100000000

	notify("Performance", "Fog removed.")
end)

--==================================================
-- ANTI LAG ADVANCED
--==================================================

local function advancedOptimization()
	local textureCount = 0
	local effectCount = 0
	local lightCount = 0

	for _, object in ipairs(game:GetDescendants()) do

		if object:IsA("Decal") or object:IsA("Texture") then
			object.Transparency = 1
			textureCount += 1

		elseif object:IsA("ParticleEmitter")
			or object:IsA("Trail")
			or object:IsA("Smoke")
			or object:IsA("Fire")
			or object:IsA("Sparkles") then

			object.Enabled = false
			effectCount += 1

		elseif object:IsA("PointLight")
			or object:IsA("SurfaceLight")
			or object:IsA("SpotLight") then

			object.Enabled = false
			lightCount += 1
		end
	end

	local terrain = workspace:FindFirstChildOfClass("Terrain")

	if terrain then
		terrain.WaterWaveSize = 0
		terrain.WaterWaveSpeed = 0
		terrain.WaterReflectance = 0
	end

	Lighting.GlobalShadows = false
	Lighting.FogEnd = 100000000

	notify(
		"Anti Lag",
		"Textures: " .. textureCount ..
		" | Effects: " .. effectCount ..
		" | Lights: " .. lightCount
	)
end

createButton("Anti Lag (Advanced)", advancedOptimization)

--==================================================
-- ULTRA FPS BOOSTER
--==================================================

local function ultraFPS()
	pcall(function()
		settings().Rendering.QualityLevel = Enum.QualityLevel.Level01
	end)

	Lighting.GlobalShadows = false
	Lighting.FogEnd = 100000000
	Lighting.Brightness = 0
	Lighting.EnvironmentDiffuseScale = 0
	Lighting.EnvironmentSpecularScale = 0

	for _, object in ipairs(game:GetDescendants()) do

		if object:IsA("ParticleEmitter")
			or object:IsA("Trail")
			or object:IsA("Smoke")
			or object:IsA("Fire")
			or object:IsA("Sparkles") then

			object.Enabled = false

		elseif object:IsA("PointLight")
			or object:IsA("SpotLight")
			or object:IsA("SurfaceLight") then

			object.Enabled = false

		elseif object:IsA("Decal")
			or object:IsA("Texture") then

			object.Transparency = 1

		elseif object:IsA("Sound") then
			object.Volume = 0
			object:Stop()
		end
	end

	local terrain = workspace:FindFirstChildOfClass("Terrain")

	if terrain then
		terrain.WaterWaveSize = 0
		terrain.WaterWaveSpeed = 0
		terrain.WaterReflectance = 0
	end

	notify("Performance", "Ultra FPS Booster applied.")
end

createButton("Ultra FPS Booster", ultraFPS)

--==================================================
-- FULL OPTIMIZATION
--==================================================

local function fullOptimization()
	local count = 0

	for _, object in ipairs(game:GetDescendants()) do

		if object:IsA("ParticleEmitter")
			or object:IsA("Trail")
			or object:IsA("Smoke")
			or object:IsA("Fire")
			or object:IsA("Sparkles") then

			object.Enabled = false
			count += 1

		elseif object:IsA("Decal")
			or object:IsA("Texture") then

			object.Transparency = 1
			count += 1

		elseif object:IsA("PointLight")
			or object:IsA("SpotLight")
			or object:IsA("SurfaceLight") then

			object.Enabled = false
			count += 1

		elseif object:IsA("BasePart") and not object:IsA("MeshPart") then

			object.Material = Enum.Material.SmoothPlastic
			object.Reflectance = 0
		end
	end

	for _, object in ipairs(Lighting:GetChildren()) do
		if object:IsA("BlurEffect")
			or object:IsA("SunRaysEffect")
			or object:IsA("ColorCorrectionEffect")
			or object:IsA("BloomEffect")
			or object:IsA("DepthOfFieldEffect") then

			object.Enabled = false
		end
	end

	Lighting.GlobalShadows = false
	Lighting.FogEnd = 100000000
	Lighting.Brightness = 0
	Lighting.EnvironmentDiffuseScale = 0
	Lighting.EnvironmentSpecularScale = 0

	pcall(function()
		settings().Rendering.QualityLevel = Enum.QualityLevel.Level01
	end)

	local terrain = workspace:FindFirstChildOfClass("Terrain")

	if terrain then
		terrain.WaterWaveSize = 0
		terrain.WaterWaveSpeed = 0
		terrain.WaterReflectance = 0
	end

	notify(
		"Optimization",
		"Full optimization applied. Objects modified: " .. count
	)
end

createButton("Full Optimization", fullOptimization)

--==================================================
-- RESET PERFORMANCE
--==================================================

createButton("Reset Graphics", function()
	Lighting.GlobalShadows = true
	Lighting.FogEnd = 100000

	pcall(function()
		settings().Rendering.QualityLevel = Enum.QualityLevel.Automatic
	end)

	for _, object in ipairs(game:GetDescendants()) do
		if object:IsA("ParticleEmitter")
			or object:IsA("Trail")
			or object:IsA("Smoke")
			or object:IsA("Fire")
			or object:IsA("Sparkles") then

			object.Enabled = true

		elseif object:IsA("PointLight")
			or object:IsA("SpotLight")
			or object:IsA("SurfaceLight") then

			object.Enabled = true

		elseif object:IsA("Decal")
			or object:IsA("Texture") then

			object.Transparency = 0
		end
	end

	for _, object in ipairs(Lighting:GetChildren()) do
		if object:IsA("BlurEffect")
			or object:IsA("SunRaysEffect")
			or object:IsA("ColorCorrectionEffect")
			or object:IsA("BloomEffect")
			or object:IsA("DepthOfFieldEffect") then

			object.Enabled = true
		end
	end

	notify("Performance", "Graphics reset.")
end)

--==================================================
-- CLOSE BUTTON
--==================================================

local CloseButton = Instance.new("TextButton")
CloseButton.Size = UDim2.fromOffset(35, 30)
CloseButton.Position = UDim2.new(1, -42, 0, 10)
CloseButton.BackgroundColor3 = Color3.fromRGB(100, 20, 20)
CloseButton.BorderSizePixel = 0
CloseButton.Text = "X"
CloseButton.TextColor3 = Color3.new(1, 1, 1)
CloseButton.TextSize = 16
CloseButton.Font = Enum.Font.GothamBold
CloseButton.Parent = MainFrame

local CloseCorner = Instance.new("UICorner")
CloseCorner.CornerRadius = UDim.new(0, 5)
CloseCorner.Parent = CloseButton

CloseButton.MouseButton1Click:Connect(function()
	ScreenGui.Enabled = false
end)

--==================================================
-- TOGGLE GUI WITH RIGHT SHIFT
--==================================================

UserInputService.InputBegan:Connect(function(input, processed)
	if processed then
		return
	end

	if input.KeyCode == Enum.KeyCode.RightShift then
		ScreenGui.Enabled = not ScreenGui.Enabled
	end
end)

--==================================================
-- INITIALIZE
--==================================================

task.defer(function()
	applyWalkSpeed()
end)

print("[RealGanstaMenu] LocalScript loaded successfully.")
