local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local whitelistURL = "https://raw.githubusercontent.com/ALPHAneegy/whitelist-szoo-paid/refs/heads/main/README.md"
local whitelist = {}

local function isPlayerValid()
    if type(LocalPlayer.Name) ~= "string" then
        return false
    end
    if LocalPlayer.UserId <= 0 then
        return false
    end
    return true
end

local function fetchWhitelist()
    local fetchResult = {
        pcall(function()
            return game:HttpGet(whitelistURL)
        end)
    }

    if not fetchResult[1] then
        return false, "WHITELIST_FETCH_FAILED"
    end

    local whitelistData = fetchResult[2]
    local loadResult = {
        pcall(function()
            return loadstring(whitelistData)()
        end)
    }

    if not loadResult[1] or type(loadResult[2]) ~= "table" then
        return false, "Not whitelisted, buy the script."
    end

    whitelist = loadResult[2]
    return true
end

local fetchSuccess, fetchError = fetchWhitelist()
if not fetchSuccess then
    LocalPlayer:Kick(fetchError or "Whitelist fetch failed")
    return
end

if not isPlayerValid() then
    LocalPlayer:Kick("Spoof detected.")
    return
end

local function isWhitelisted()
    local playerName = LocalPlayer.Name
    if whitelist[playerName] == true then
        return true
    end
    for _, name in ipairs(whitelist) do
        if name == playerName then
            return true
        end
    end
    return false
end

if not isWhitelisted() then
    LocalPlayer:Kick("Not whitelisted, buy the script.")
    return
end

task.spawn(function()
    while task.wait(3) do
        if not isPlayerValid() then
            LocalPlayer:Kick("Spoof detected (runtime).")
            break
        end
    end
end)

local VirtualUser = game:GetService("VirtualUser")
LocalPlayer.Idled:Connect(function()
    VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    task.wait(1)
    VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
end)

local players = game:GetService("Players")
local replicatedStorage = game:GetService("ReplicatedStorage")
local runService = game:GetService("RunService")
local tweenService = game:GetService("TweenService")
local userInputService = game:GetService("UserInputService")
local virtualInputManager = game:GetService("VirtualInputManager")
local virtualUser = game:GetService("VirtualUser")
local stats = game:GetService("Stats")
local lighting = game:GetService("Lighting")
local number = 3623096087
local backpackContainer = players.LocalPlayer
local parent = backpackContainer:WaitForChild("PlayerGui")
local option = getgenv and getgenv() or _G
if
	not ({
		[4473738491] = true,
		[2955289715] = true,
		[1620672820] = true,
		[2500188617] = true,
		[3845958096] = true,
		[10986230819] = true,
		[5486738320] = true,
		[9879123031] = true,
		[11395285875] = true,
		[10886140154] = true,
		[3039550957] = true,
		[1835330458] = true,
	})[backpackContainer.UserId]
then end
do
	local connectionData = option.Young0xPersistentAntiAfk
	if type(connectionData) ~= "table" then
		connectionData = {}
		option.Young0xPersistentAntiAfk = connectionData
	end
	if not connectionData.connection or not connectionData.connection.Connected then
		connectionData.connection = backpackContainer.Idled:Connect(function(...)
			pcall(function(...)
				virtualUser:CaptureController()
				local currentCamera = workspace.CurrentCamera
				local option = currentCamera and currentCamera.CFrame or CFrame.new()
				virtualUser:Button2Down(Vector2.new(0, 0), option)
				task.wait(0.05)
				virtualUser:Button2Up(Vector2.new(0, 0), option)
			end)
		end)
	end
end
local public = {
	["Title"] = "\226\154\161  \194\161Szoo Muscle Leyends!  \226\154\161",
	["Discord"] = "https://discord.gg/gyBX9jDmE4",
	["YouTube"] = "https://www.youtube.com/@23h25/",
	["Size"] = {
		["DesktopWidth"] = 520,
		["DesktopHeight"] = 338,
		["MobileWidthScale"] = 0.86,
		["MobileHeightScale"] = 0.5,
		["MinWidth"] = 276,
		["MinHeight"] = 232,
		["MaxMobileWidth"] = 455,
		["MaxMobileHeight"] = 305,
	},
	["Colors"] = {
		["base"] = Color3.fromRGB(0, 0, 0),
		["panel"] = Color3.fromRGB(0, 0, 0),
		["row"] = Color3.fromRGB(5, 34, 65),
		["rowHover"] = Color3.fromRGB(0, 0, 0),
		["tab"] = Color3.fromRGB(0, 0, 0),
		["tabOn"] = Color3.fromRGB(10, 103, 171),
		["cyan"] = Color3.fromRGB(42, 224, 255),
		["blue"] = Color3.fromRGB(26, 139, 255),
		["green"] = Color3.fromRGB(65, 239, 157),
		["orange"] = Color3.fromRGB(255, 185, 64),
		["red"] = Color3.fromRGB(255, 83, 111),
		["white"] = Color3.fromRGB(255, 255, 255),
		["soft"] = Color3.fromRGB(220, 247, 255),
		["dim"] = Color3.fromRGB(153, 207, 231),
		["black"] = Color3.fromRGB(0, 0, 0),
	},
	["Tabs"] = {
		{ "Info", 62 },
		{ "Main", 62 },
		{ "Fast Glitch 100%", 120 },
		{ "Glitch Timer", 92 },
		{ "Auto Farm", 88 },
		{ "Fast Farm", 84 },
		{ "Rebirths", 78 },
		{ "Kills", 62 },
		{ "Pet Shop", 86 },
		{ "Gifts", 60 },
		{ "Fast Trade", 88 },
		{ "Teleports", 84 },
		{ "Stats", 62 },
		{ "Misc", 60 },
	},
	["Rocks"] = {
		{ ["name"] = "Ancient Rock", ["durability"] = 10000000 },
		{ ["name"] = "Muscle King Rock", ["durability"] = 5000000 },
		{ ["name"] = "Legend Rock", ["durability"] = 1000000 },
		{ ["name"] = "Eternal Rock", ["durability"] = 750000 },
		{ ["name"] = "Mythical Rock", ["durability"] = 400000 },
		{ ["name"] = "Frost Rock", ["durability"] = 150000 },
		{ ["name"] = "Beach Rock", ["durability"] = 5000 },
		{ ["name"] = "Starter Rock", ["durability"] = 100 },
		{ ["name"] = "Tiny Rock", ["durability"] = 0 },
	},
	["Machines"] = {
		{ ["label"] = "Jungle Bench", ["object"] = "Jungle Bench", ["fallback"] = CFrame.new(-8173, 64, 1898) },
		{
			["label"] = "Jungle Lift",
			["object"] = "Jungle Bar Lift",
			["fallback"] = CFrame.new(-8652.8672, 29.2667, 2089.2617),
		},
		{ ["label"] = "Jungle Squat", ["object"] = "Jungle Squat", ["fallback"] = CFrame.new(-8352, 34, 2878) },
	},
	["Teleports"] = {
		{ "Jungle Gym", Vector3.new(-7894, 6, 2386) },
		{ "Muscle King", Vector3.new(-8799, 17, -5798) },
		{ "Legends Gym", Vector3.new(4429, 991, -3880) },
		{ "Eternal Gym", Vector3.new(-6768, 7, -1287) },
		{ "Mythical Gym", Vector3.new(2255, 7, 1071) },
		{ "Frost Gym", Vector3.new(-2650, 7, -393) },
		{ "Tiny Gym", Vector3.new(50, 7, 1918) },
		{ "Beach", Vector3.new(9, 7, 100) },
		{ "Secret Area", Vector3.new(1947, 2, 6191) },
		{ "Desert Brawl", Vector3.new(960, 17, -7398) },
		{ "Lava Brawl", Vector3.new(4471, 119, -8836) },
	},
	["UniqueAuras"] = { "Muscle King", "Entropic Blast" },
	["UniquePets"] = {
		"Neon Guardian",
		"Cybernetic Showdown Dragon",
		"Darkstar Hunter",
		"Muscle Sensei",
		"Infernal Dragon",
		"Aether Spirit Bunny",
		"Magic Butterfly",
		"Ultra Birdie",
	},
	["AutoEgg"] = { ["Interval"] = 1800, ["Names"] = { "ProteinEgg", "Protein Egg" } },
	["FastFarm"] = {
		["StrengthPet"] = "Swift Samurai",
		["RebirthPet"] = "Tribal Overlord",
		["MaxPets"] = 8,
		["RepsPerCycle"] = 70,
		["RepDelay"] = 0.005,
		["PingSoft"] = 180,
		["PingMedium"] = 300,
		["PingHigh"] = 450,
		["PingCritical"] = 600,
		["PingPause"] = 999,
		["PingResume"] = 400,
		["StrengthStartBatch"] = 14,
		["StrengthMaxBatch"] = 42,
		["StrengthRampPing"] = 140,
		["StrengthRampInterval"] = 4,
		["StrengthDelay"] = 0.02,
		["SizeInvokeInterval"] = 0.75,
		["SizeReleaseDuration"] = 5,
		["FramesReleaseDuration"] = 10,
		["RockName"] = "Rock5M",
		["RockInterval"] = 5,
		["RebirthCycleDelay"] = 0.2,
		["RebirthRequestWindow"] = 0.75,
	},
	["ServerHop"] = {
		["Interval"] = 120,
		["LoaderUrl"] = "https://raw.githubusercontent.com/Young0xHUB/Young0x-HUB/refs/heads/main/loader.lua",
		["ServerApi"] = "https://games.roblox.com/v1/games/%d/servers/Public?sortOrder=Desc&limit=100",
		["PreferredPlayers"] = 18,
		["MinimumPlayers"] = 16,
		["NoTargetsDelay"] = 10,
		["RetryDelay"] = 5,
		["HistoryLimit"] = 60,
	},
	["Kills"] = { ["ProtectedPrivateServerIds"] = {} },
}
local colors = public.Colors
do
	local flag = option.Young0xFG100
	if flag and type(flag.Shutdown) == "function" then
		pcall(flag.Shutdown, true)
	end
end
local pState = {
	["running"] = true,
	["resume"] = type(option.Young0xFG100Resume) == "table" and option.Young0xFG100Resume or nil,
	["fastPunch"] = false,
	["selectedRock"] = nil,
	["rockGeneration"] = 0,
	["rockSessionStartedAt"] = nil,
	["autoWeight"] = false,
	["autoHandstands"] = false,
	["autoLift"] = false,
	["autoSitups"] = false,
	["autoEgg"] = false,
	["exerciseMovement"] = {
		["active"] = {},
		["humanoid"] = nil,
		["walkSpeed"] = nil,
		["jumpValue"] = nil,
		["usesJumpPower"] = true,
	},
	["hideFrames"] = false,
	["hideDurability"] = false,
	["fastFarmMode"] = nil,
	["machine"] = nil,
	["autoPet"] = false,
	["autoAura"] = false,
	["antiLag"] = false,
	["antiLagGeneration"] = 0,
	["walkWater"] = false,
	["autoSpinWheel"] = false,
	["autoClaimChests"] = false,
	["mainAutoSize"] = false,
	["mainAutoSpeed"] = false,
	["mainSize"] = 2,
	["mainSpeed"] = 125,
	["infiniteJump"] = false,
	["removePortals"] = false,
	["fastSpeed"] = false,
	["fly"] = false,
	["flyLevel"] = 10,
	["antiKnockback"] = false,
	["noclip"] = false,
	["spin"] = false,
	["spy"] = false,
	["spyTarget"] = nil,
	["kill"] = {
		["auto"] = false,
		["karmaMode"] = nil,
		["protectFriends"] = false,
		["targetMode"] = false,
		["target"] = nil,
		["serverHop"] = false,
		["friendCache"] = {},
		["serverHistory"] = {},
		["serversVisited"] = 1,
		["hopNow"] = false,
		["noTargetsSince"] = nil,
		["lockCFrame"] = nil,
		["lockCharacter"] = nil,
	},
	["trade"] = { ["busy"] = false, ["requestGeneration"] = 0, ["delivered"] = 0, ["total"] = 0 },
	["rebirth"] = {
		["target"] = nil,
		["autoTarget"] = false,
		["infinite"] = false,
		["sizeOne"] = false,
		["fastWeight"] = false,
		["king"] = false,
		["lockPosition"] = false,
		["lockCFrame"] = nil,
		["ultimateRunning"] = false,
	},
}
if pState.resume and type(pState.resume.serverHistory) == "table" then
	pState.kill.serverHistory = pState.resume.serverHistory
end
if pState.resume then
	pState.kill.serversVisited = math.max(1, tonumber(pState.resume.serversVisited) or 1)
end
if game.JobId ~= "" and not table.find(pState.kill.serverHistory, game.JobId) then
	pState.kill.serverHistory[#pState.kill.serverHistory + 1] = game.JobId
end
option.Young0xFG100Resume = nil
local frameData = {}
local valueData = {}
local data = {}
local tabsData = {}
local modeData = {}
local function handleFrame(frameArgument, ...)
	frameData[#frameData + 1] = frameArgument
	return frameArgument
end
local function handler(argument, ...)
	data[#data + 1] = argument
end
local function handleValue(valueText, ...)
	local valueCondition = valueData[valueText]
	if valueCondition then
		pcall(task.cancel, valueCondition)
		valueData[valueText] = nil
	end
end
local function handleSendGiftRemote(valueText, secondaryArgument, ...)
	handleValue(valueText)
	valueData[valueText] = task.spawn(function(...)
		pcall(secondaryArgument)
		valueData[valueText] = nil
	end)
	return valueData[valueText]
end
local function secondaryHandler(...)
	for index, item in ipairs(frameData) do
		pcall(function(...)
			item:Disconnect()
		end)
	end
	table.clear(frameData)
	for key in pairs(valueData) do
		handleValue(key)
	end
end
local function getValueCharacter(...)
	return backpackContainer.Character
end
local function isUseToolValid(...)
	local isUpdateValidFlag = getValueCharacter()
	return isUpdateValidFlag and isUpdateValidFlag:FindFirstChildWhichIsA("Humanoid")
end
local function isSendHitEventValid(...)
	local humanoidRootPartContainer = getValueCharacter()
	return humanoidRootPartContainer and humanoidRootPartContainer:FindFirstChild("HumanoidRootPart")
end
local function alternateHandler(searchableText, ...)
	searchableText = (tostring(searchableText or "")):lower()
	if searchableText == "" then
		return nil
	end
	for index, item in ipairs(players:GetPlayers()) do
		if item.Name:lower() == searchableText or item.DisplayName:lower() == searchableText then
			return item
		end
	end
	for index, item in ipairs(players:GetPlayers()) do
		if
			(item.Name:lower()):find(searchableText, 1, true)
			or (item.DisplayName:lower()):find(searchableText, 1, true)
		then
			return item
		end
	end
	return nil
end
local function handleIsValid(isValidFlag, data, ...)
	if not isValidFlag then
		return nil
	end
	local isValidData = {}
	for index, item in ipairs(data) do
		isValidData[(item:lower()):gsub("%s+", "")] = true
	end
	for index, item in ipairs(isValidFlag:GetChildren()) do
		local gsub = (item.Name:lower()):gsub("%s+", "")
		if isValidData[gsub] and item:IsA("ValueBase") then
			return item
		end
	end
	return nil
end
local function isUpdateInstancePropertiesValid(leaderstatsContainer, isValidData, ...)
	local option = leaderstatsContainer and leaderstatsContainer:FindFirstChild("leaderstats")
	return handleIsValid(option, isValidData) or handleIsValid(leaderstatsContainer, isValidData)
end
local function handleValueLabelText(numberText, ...)
	local number = tonumber(numberText) or 0
	local flag = number < 0
	local formatResult = string.format("%.0f", math.abs(number))
	local text = (((formatResult:reverse()):gsub("(%d%d%d)", "%1.")):reverse()):gsub("^%.", "")
	return (flag and "-" or "") .. text
end
local function secondaryHandleValueLabelText(number, ...)
	local numberText = tonumber(number) or 0
	return (numberText >= 0 and "+" or "") .. handleValueLabelText(numberText)
end
local function isSendGiftRemoteCachedPingValid(...)
	local success, result = pcall(function(...)
		return stats.Network.ServerStatsItem["Data Ping"]:GetValue()
	end)
	return success and math.floor((tonumber(result) or 0) + 0.5) or 0
end
local function clock(...)
	local success, result = pcall(workspace.GetServerTimeNow, workspace)
	if success and type(result) == "number" then
		return result
	end
	return os.clock()
end
local function additionalHandler(displayValue, ...)
	local option = getgenv and getgenv() or _G
	local secondaryOption = option.setclipboard or option.toclipboard or option.writeclipboard
	if type(secondaryOption) == "function" then
		pcall(secondaryOption, tostring(displayValue))
		return true
	end
	return false
end
local function useTool(useToolData, ...)
	local useToolFlag = getValueCharacter()
	local flag = isUseToolValid()
	if not useToolFlag or not flag then
		return nil
	end
	local lowerData = {}
	for index, item in ipairs(useToolData) do
		lowerData[item:lower()] = true
	end
	for index, item in ipairs({ useToolFlag, backpackContainer:FindFirstChild("Backpack") }) do
		if item then
			for index, item in ipairs(item:GetChildren()) do
				if item:IsA("Tool") and lowerData[item.Name:lower()] then
					if item.Parent ~= useToolFlag then
						flag:EquipTool(item)
					end
					return item
				end
			end
		end
	end
	return nil
end
local function secondaryUseTool(...)
	return useTool({ "Punch" })
end
local options = {}
local updateCFrameData = {}
local capturedRockGuiContainer = nil
local function secondaryHandleInstanceProperties(touchPartContainer, ...)
	if not touchPartContainer or updateCFrameData[touchPartContainer] then
		return
	end
	local touchPart = touchPartContainer:FindFirstChild("TouchPart")
	updateCFrameData[touchPartContainer] = {
		["rockCFrame"] = touchPartContainer.CFrame,
		["touchCFrame"] = touchPart and (touchPart:IsA("BasePart") and touchPart.CFrame) or nil,
	}
end
local function updateCFrame(touchPartContainer, ...)
	if not touchPartContainer or not touchPartContainer.Parent then
		return
	end
	local leftHandContainer = getValueCharacter()
	local updateCFrameCondition = leftHandContainer and leftHandContainer:FindFirstChild("LeftHand")
	local updateCFrameOption = leftHandContainer and leftHandContainer:FindFirstChild("RightHand")
	if type(firetouchinterest) == "function" then
		if updateCFrameOption then
			pcall(firetouchinterest, touchPartContainer, updateCFrameOption, 1)
		end
		if updateCFrameCondition then
			pcall(firetouchinterest, touchPartContainer, updateCFrameCondition, 1)
		end
	end
	local cFrameCondition = updateCFrameData[touchPartContainer]
	if cFrameCondition then
		pcall(function(...)
			touchPartContainer.CFrame = cFrameCondition.rockCFrame
			local touchPart = touchPartContainer:FindFirstChild("TouchPart")
			if touchPart and cFrameCondition.touchCFrame then
				touchPart.CFrame = cFrameCondition.touchCFrame
			end
		end)
	end
end
local function alternateHandleInstanceProperties(...)
	local capturedTouchPartContainer = capturedRockGuiContainer
	capturedRockGuiContainer = nil
	if capturedTouchPartContainer then
		updateCFrame(capturedTouchPartContainer)
	end
end
local function updateInstanceProperties(...)
	pState.rockGeneration = pState.rockGeneration + 1
	pState.selectedRock = nil
	pState.rockSessionStartedAt = nil
	alternateHandleInstanceProperties()
end
local function secondaryUpdateInstanceProperties(rockGuiContainer, updateInstancePropertiesFlag, ...)
	if not rockGuiContainer or not updateInstancePropertiesFlag then
		return
	end
	secondaryHandleInstanceProperties(rockGuiContainer)
	pcall(function(...)
		rockGuiContainer.Size = Vector3.new(2, 1, 1)
		rockGuiContainer.Transparency = 1
		rockGuiContainer.CanCollide = false
		if rockGuiContainer:FindFirstChild("rockGui") then
			for key, item in pairs(rockGuiContainer.rockGui:GetChildren()) do
				item.Visible = false
			end
		end
		for index, item in ipairs({ "rockEmitter", "hoopParticle", "lavaParticle" }) do
			if rockGuiContainer:FindFirstChild(item) then
				rockGuiContainer[item]:Destroy()
			end
		end
		rockGuiContainer.CFrame = updateInstancePropertiesFlag.CFrame
		local touchPart = rockGuiContainer:FindFirstChild("TouchPart")
		if touchPart then
			touchPart.CFrame = updateInstancePropertiesFlag.CFrame
		end
	end)
end
local function additionalHandleInstanceProperties(instancePropertiesArgument, ...)
	local instancePropertiesFlag = options[instancePropertiesArgument]
	if instancePropertiesFlag and instancePropertiesFlag.Parent then
		return instancePropertiesFlag
	end
	local machinesFolder = workspace:FindFirstChild("machinesFolder")
	if not machinesFolder then
		return nil
	end
	for key, item in pairs(machinesFolder:GetDescendants()) do
		if
			item.Name == "neededDurability"
			and (item:IsA("ValueBase") and tonumber(item.Value) == instancePropertiesArgument)
		then
			local touchPartContainer = item.Parent and item.Parent:FindFirstChild("Rock")
			if touchPartContainer and touchPartContainer:IsA("BasePart") then
				secondaryHandleInstanceProperties(touchPartContainer)
				options[instancePropertiesArgument] = touchPartContainer
				return touchPartContainer
			end
		end
	end
	return nil
end
local function fallbackHandleInstanceProperties(...)
	local selectedRock = pState.selectedRock
	local rockGeneration = pState.rockGeneration
	if not selectedRock then
		return
	end
	local durability = backpackContainer:FindFirstChild("Durability")
	if durability and tonumber(durability.Value) < selectedRock.durability then
		return
	end
	local leftHandContainer = getValueCharacter()
	local instancePropertiesOption = leftHandContainer and leftHandContainer:FindFirstChild("LeftHand")
	local instancePropertiesFlag = leftHandContainer and leftHandContainer:FindFirstChild("RightHand")
	if not instancePropertiesOption or not instancePropertiesFlag then
		return
	end
	local rockGuiContainer = additionalHandleInstanceProperties(selectedRock.durability)
	if not rockGuiContainer then
		return
	end
	if pState.rockGeneration ~= rockGeneration or pState.selectedRock ~= selectedRock then
		return
	end
	if capturedRockGuiContainer ~= rockGuiContainer then
		alternateHandleInstanceProperties()
		if pState.rockGeneration ~= rockGeneration or pState.selectedRock ~= selectedRock then
			return
		end
		capturedRockGuiContainer = rockGuiContainer
	end
	secondaryUpdateInstanceProperties(rockGuiContainer, instancePropertiesOption)
	if pState.rockGeneration ~= rockGeneration or pState.selectedRock ~= selectedRock then
		return
	end
	if type(firetouchinterest) == "function" then
		pcall(firetouchinterest, rockGuiContainer, instancePropertiesFlag, 0)
		if
			pState.rockGeneration ~= rockGeneration
			or pState.selectedRock ~= selectedRock
			or capturedRockGuiContainer ~= rockGuiContainer
		then
			pcall(firetouchinterest, rockGuiContainer, instancePropertiesFlag, 1)
			return
		end
		pcall(firetouchinterest, rockGuiContainer, instancePropertiesFlag, 1)
		if
			pState.rockGeneration ~= rockGeneration
			or pState.selectedRock ~= selectedRock
			or capturedRockGuiContainer ~= rockGuiContainer
		then
			return
		end
		pcall(firetouchinterest, rockGuiContainer, instancePropertiesOption, 0)
		if
			pState.rockGeneration ~= rockGeneration
			or pState.selectedRock ~= selectedRock
			or capturedRockGuiContainer ~= rockGuiContainer
		then
			pcall(firetouchinterest, rockGuiContainer, instancePropertiesOption, 1)
			return
		end
		pcall(firetouchinterest, rockGuiContainer, instancePropertiesOption, 1)
	end
	secondaryUseTool()
end
local function alternateUpdateInstanceProperties(updateInstancePropertiesFlag, ...)
	pState.fastPunch = updateInstancePropertiesFlag == true
	if not pState.fastPunch then
		updateInstanceProperties()
		handleValue("fastPunchEquip")
		handleValue("fastPunchHit")
		handleValue("fastPunchRock")
		pcall(function(...)
			local attackTimeContainer = getValueCharacter() and (getValueCharacter()):FindFirstChild("Punch")
			local updateInstancePropertiesCondition = attackTimeContainer
				and attackTimeContainer:FindFirstChild("attackTime")
			if updateInstancePropertiesCondition then
				updateInstancePropertiesCondition.Value = 0.3
			end
		end)
		return
	end
	handleSendGiftRemote("fastPunchEquip", function(...)
		while pState.running and pState.fastPunch do
			pcall(function(...)
				local attackTimeContainer = secondaryUseTool()
				if attackTimeContainer then
					local attackTime = attackTimeContainer:FindFirstChild("attackTime")
					if attackTime then
						attackTime.Value = 0
					end
				end
			end)
			task.wait(0.05)
		end
	end)
	handleSendGiftRemote("fastPunchHit", function(...)
		while pState.running and pState.fastPunch do
			local muscleEvent = backpackContainer:FindFirstChild("muscleEvent")
			local punchContainer = getValueCharacter()
			local updateInstancePropertiesCondition = punchContainer and punchContainer:FindFirstChild("Punch")
			if muscleEvent then
				pcall(muscleEvent.FireServer, muscleEvent, "punch", "rightHand")
				pcall(muscleEvent.FireServer, muscleEvent, "punch", "leftHand")
			end
			if updateInstancePropertiesCondition then
				pcall(updateInstancePropertiesCondition.Activate, updateInstancePropertiesCondition)
			end
			task.wait(0.01)
		end
	end)
	handleSendGiftRemote("fastPunchRock", function(...)
		while pState.running and pState.fastPunch do
			if pState.selectedRock then
				pcall(fallbackHandleInstanceProperties)
				local muscleEvent = backpackContainer:FindFirstChild("muscleEvent")
				if muscleEvent then
					pcall(muscleEvent.FireServer, muscleEvent, "punch", "rightHand")
					pcall(muscleEvent.FireServer, muscleEvent, "punch", "leftHand")
				end
			end
			task.wait()
		end
	end)
end
local updateValueData = {}
local function updateSendMuscleEvent(sendMuscleEventText, repTimeContainer, ...)
	if not repTimeContainer then
		return
	end
	local repTime = repTimeContainer:FindFirstChild("repTime")
	if not repTime or not repTime:IsA("ValueBase") then
		return
	end
	updateValueData[sendMuscleEventText] = updateValueData[sendMuscleEventText] or {}
	if updateValueData[sendMuscleEventText][repTime] == nil then
		updateValueData[sendMuscleEventText][repTime] = repTime.Value
	end
	repTime.Value = 0
end
local function updateValue(sendMuscleEventText, ...)
	local data = updateValueData[sendMuscleEventText]
	if not data then
		return
	end
	for key, value in pairs(data) do
		if key and key.Parent then
			pcall(function(...)
				key.Value = value
			end)
		end
	end
	updateValueData[sendMuscleEventText] = nil
end
local function handleSendMuscleEvent(data, ...)
	local flag = getValueCharacter()
	local parent = backpackContainer:FindFirstChild("Backpack")
	if not flag or not parent or not data then
		return
	end
	local lowerData = {}
	for index, item in ipairs(data) do
		lowerData[item:lower()] = true
	end
	for index, item in ipairs(flag:GetChildren()) do
		if item:IsA("Tool") and lowerData[item.Name:lower()] then
			pcall(function(...)
				item.Parent = parent
			end)
		end
	end
end
local function sendMuscleEvent(text, sendMuscleEventCondition, useToolData, sendMuscleEventFlag, ...)
	pState[text] = sendMuscleEventCondition == true
	local exerciseMovement = pState.exerciseMovement
	exerciseMovement.active[text] = pState[text] or nil
	local sendMuscleEventText = "rep_" .. text
	if not pState[text] then
		handleValue(sendMuscleEventText)
		updateValue(text)
		handleSendMuscleEvent(useToolData)
		local sendMuscleEventFlag = false
		for key in pairs(exerciseMovement.active) do
			sendMuscleEventFlag = true
			break
		end
		if not sendMuscleEventFlag then
			handleValue("exerciseMovement")
			local humanoid = exerciseMovement.humanoid
			if humanoid and humanoid.Parent then
				pcall(function(...)
					if not pState.fastSpeed and exerciseMovement.walkSpeed then
						humanoid.WalkSpeed = exerciseMovement.walkSpeed
					end
					if exerciseMovement.jumpValue then
						if exerciseMovement.usesJumpPower then
							humanoid.JumpPower = exerciseMovement.jumpValue
						else
							humanoid.JumpHeight = exerciseMovement.jumpValue
						end
					end
				end)
			end
			exerciseMovement.humanoid = nil
			exerciseMovement.walkSpeed = nil
			exerciseMovement.jumpValue = nil
		end
		return
	end
	local humanoid = isUseToolValid()
	if humanoid and exerciseMovement.humanoid ~= humanoid then
		exerciseMovement.humanoid = humanoid
		exerciseMovement.walkSpeed = humanoid.WalkSpeed > 0 and humanoid.WalkSpeed or 16
		exerciseMovement.usesJumpPower = humanoid.UseJumpPower
		exerciseMovement.jumpValue = exerciseMovement.usesJumpPower and humanoid.JumpPower or humanoid.JumpHeight
	end
	handleSendGiftRemote("exerciseMovement", function(...)
		while pState.running and next(exerciseMovement.active) do
			local humanoid = isUseToolValid()
			local anchoredCondition = isSendHitEventValid()
			if humanoid then
				if exerciseMovement.humanoid ~= humanoid then
					exerciseMovement.humanoid = humanoid
					exerciseMovement.walkSpeed = humanoid.WalkSpeed > 0 and humanoid.WalkSpeed or 16
					exerciseMovement.usesJumpPower = humanoid.UseJumpPower
					exerciseMovement.jumpValue = exerciseMovement.usesJumpPower and humanoid.JumpPower
						or humanoid.JumpHeight
				end
				if not pState.machine and not pState.fly then
					if anchoredCondition then
						anchoredCondition.Anchored = false
					end
					humanoid.PlatformStand = false
					humanoid.Sit = false
					local walkSpeed = pState.fastSpeed and 1000 or exerciseMovement.walkSpeed
					if walkSpeed and humanoid.WalkSpeed < walkSpeed then
						humanoid.WalkSpeed = walkSpeed
					end
					if exerciseMovement.jumpValue then
						if exerciseMovement.usesJumpPower and humanoid.JumpPower < exerciseMovement.jumpValue then
							humanoid.JumpPower = exerciseMovement.jumpValue
						elseif
							not exerciseMovement.usesJumpPower and humanoid.JumpHeight < exerciseMovement.jumpValue
						then
							humanoid.JumpHeight = exerciseMovement.jumpValue
						end
					end
				end
			end
			runService.Heartbeat:Wait()
		end
	end)
	handleSendGiftRemote(sendMuscleEventText, function(...)
		while pState.running and pState[text] do
			pcall(function(...)
				local repTimeContainer
				if useToolData and #useToolData > 0 then
					repTimeContainer = useTool(useToolData)
					updateSendMuscleEvent(text, repTimeContainer)
				end
				local muscleEvent = backpackContainer:FindFirstChild("muscleEvent")
				if muscleEvent then
					muscleEvent:FireServer("rep")
				end
				if repTimeContainer then
					repTimeContainer:Activate()
				end
			end)
			task.wait(sendMuscleEventFlag or 0.01)
		end
	end)
end
pState.eatProteinEgg = function(...)
	local parent = getValueCharacter()
	local backpack = backpackContainer:FindFirstChild("Backpack")
	local rEvents = replicatedStorage:FindFirstChild("rEvents")
	for index, item in ipairs({ backpack, parent, backpackContainer:FindFirstChild("consumablesFolder") }) do
		if item then
			for index, secondaryItem in ipairs(public.AutoEgg.Names) do
				local firstChild = item:FindFirstChild(secondaryItem)
				if firstChild then
					pcall(function(...)
						local remoteEvent = rEvents and rEvents:FindFirstChild("eatEvent")
						if remoteEvent then
							remoteEvent:FireServer("eat", firstChild)
						end
					end)
					pcall(function(...)
						if backpack and (parent and firstChild.Parent == backpack) then
							firstChild.Parent = parent
							task.wait(0.05)
						end
						if firstChild.Activate then
							firstChild:Activate()
						end
					end)
					return true
				end
			end
		end
	end
	return false
end
do
	local function isValid(isValidText, ...)
		isValidText = tostring(isValidText or "")
		local isValidNumber = tonumber(isValidText:match("(%d+)%s*[hH]")) or 0
		local number = tonumber(isValidText:match("(%d+)%s*[mM]")) or 0
		local isValidOption = tonumber(isValidText:match("(%d+)%s*[sS]")) or 0
		local sum = (isValidNumber * 3600 + number * 60) + isValidOption
		return sum > 0 and sum or nil
	end
	local function handler(...)
		for index, item in ipairs(parent:GetDescendants()) do
			if item:IsA("TextLabel") or item:IsA("TextButton") then
				local text = tostring(item.Text or "")
				local lower = text:lower()
				local condition = (lower:find("fuerza", 1, true) or lower:find("strength", 1, true))
					and (lower:find("x2", 1, true) or lower:find("2x", 1, true))
				if condition then
					local parent = item.Parent
					for index = 1, 4, 1 do
						if not parent then
							break
						end
						for index, item in ipairs(parent:GetDescendants()) do
							if item:IsA("TextLabel") or item:IsA("TextButton") then
								local condition = isValid(item.Text)
								if condition then
									return condition
								end
							end
						end
						parent = parent.Parent
					end
				end
			end
		end
		for index, item in ipairs(backpackContainer:GetDescendants()) do
			if item:IsA("ValueBase") then
				local lower = item.Name:lower()
				if
					lower:find("strength", 1, true) and (lower:find("boost", 1, true) or lower:find("timer", 1, true))
				then
					local number = tonumber(item.Value)
					if number and (number > 0 and number <= public.AutoEgg.Interval) then
						return number
					end
				end
			end
		end
		return 0
	end
	pState.autoEggSources = { ["manual"] = false, ["fastFarm"] = false, ["rebirth"] = false }
	pState.autoEggNextAt = 0
	pState.setAutoEgg = function(argument, option, ...)
		option = option or "manual"
		pState.autoEggSources[option] = argument == true
		local autoEgg = false
		for key, item in pairs(pState.autoEggSources) do
			if item then
				autoEgg = true
				break
			end
		end
		if pState.autoEgg == autoEgg then
			return
		end
		pState.autoEgg = autoEgg
		if not autoEgg then
			handleValue("autoEgg")
			return
		end
		handleSendGiftRemote("autoEgg", function(...)
			while pState.running and pState.autoEgg do
				local autoEggNextAtNumber = time()
				local number = handler()
				if number > 0 then
					pState.autoEggNextAt = math.max(pState.autoEggNextAt, autoEggNextAtNumber + number)
				end
				if autoEggNextAtNumber >= pState.autoEggNextAt then
					if pState.eatProteinEgg() then
						pState.autoEggNextAt = autoEggNextAtNumber + public.AutoEgg.Interval
					else
						pState.autoEggNextAt = autoEggNextAtNumber + 10
					end
				end
				task.wait(1)
			end
		end)
	end
end
local createNameFlag = false
local function createName(...)
	local parent = backpackContainer:FindFirstChild("ownedGamepasses")
	local gamepassIds = replicatedStorage:FindFirstChild("gamepassIds")
	if not parent or not gamepassIds then
		return false
	end
	for index, item in ipairs(gamepassIds:GetChildren()) do
		if item:IsA("ValueBase") and not parent:FindFirstChild(item.Name) then
			local intValue = Instance.new("IntValue")
			intValue.Name = item.Name
			intValue.Value = tonumber(item.Value) or 0
			intValue.Parent = parent
		end
	end
	createNameFlag = true
	return true
end
local updateVisibleData = {}
local connection = nil
local secondaryUpdateVisibleData = {}
local secondaryData = {}
local function updateVisible(updateVisibleFlag, ...)
	if
		updateVisibleFlag
		and (
			updateVisibleFlag:IsA("GuiObject")
			and (updateVisibleFlag.Name == "durabilityFrame" and secondaryUpdateVisibleData[updateVisibleFlag] == nil)
		)
	then
		secondaryUpdateVisibleData[updateVisibleFlag] = updateVisibleFlag.Visible
		updateVisibleFlag.Visible = false
	end
end
local function updateChildAddedConnection(argument, ...)
	pState.hideDurability = argument == true
	for index, item in ipairs(secondaryData) do
		item:Disconnect()
	end
	table.clear(secondaryData)
	if pState.hideDurability then
		for index, item in ipairs(replicatedStorage:GetChildren()) do
			pcall(updateVisible, item)
		end
		for index, item in ipairs(parent:GetDescendants()) do
			pcall(updateVisible, item)
		end
		secondaryData[#secondaryData + 1] = replicatedStorage.ChildAdded:Connect(function(argument, ...)
			if pState.hideDurability then
				task.defer(updateVisible, argument)
			end
		end)
		secondaryData[#secondaryData + 1] = parent.DescendantAdded:Connect(function(argument, ...)
			if pState.hideDurability then
				task.defer(updateVisible, argument)
			end
		end)
	else
		for key, visible in pairs(secondaryUpdateVisibleData) do
			if key and key.Parent then
				pcall(function(...)
					key.Visible = visible
				end)
			end
		end
		table.clear(secondaryUpdateVisibleData)
	end
end
local function taskCallback(instance, ...)
	if
		instance.Parent == replicatedStorage
		and (
			instance:IsA("GuiObject")
			and ((instance.Name:lower()):match("frame$") and updateVisibleData[instance] == nil)
		)
	then
		updateVisibleData[instance] = instance.Visible
		instance.Visible = false
	end
end
local function secondaryUpdateChildAddedConnection(argument, ...)
	pState.hideFrames = argument == true
	if connection then
		connection:Disconnect()
		connection = nil
	end
	if pState.hideFrames then
		for index, item in ipairs(replicatedStorage:GetChildren()) do
			pcall(taskCallback, item)
		end
		connection = replicatedStorage.ChildAdded:Connect(function(argument, ...)
			if pState.hideFrames then
				task.defer(taskCallback, argument)
			end
		end)
	else
		for key, visible in pairs(updateVisibleData) do
			if key and key.Parent then
				pcall(function(...)
					key.Visible = visible
				end)
			end
		end
		table.clear(updateVisibleData)
	end
end
local updateInstancePropertiesNumber = 0
local function fallbackHandler(...)
	pcall(function(...)
		virtualInputManager:SendKeyEvent(true, Enum.KeyCode.E, false, game)
		task.wait(0.045)
		virtualInputManager:SendKeyEvent(false, Enum.KeyCode.E, false, game)
	end)
end
local function sendMachineInteractRemote(machine, ...)
	local instance = isSendHitEventValid()
	local flag = isUseToolValid()
	if not instance or not flag then
		return false
	end
	local machinesFolder = workspace:FindFirstChild("machinesFolder")
	local interactSeatContainer = machinesFolder and machinesFolder:FindFirstChild(machine.object)
	local cFrameOption = interactSeatContainer and interactSeatContainer:FindFirstChild("interactSeat", true)
	if machine.object == "Jungle Squat" and (cFrameOption and cFrameOption:IsA("BasePart")) then
		instance.CFrame = cFrameOption.CFrame * CFrame.new(0, 2.25, 0)
	else
		instance.CFrame = machine.fallback
	end
	task.wait(0.22)
	fallbackHandler()
	task.wait(0.45)
	if cFrameOption and not flag.SeatPart then
		pcall(function(...)
			replicatedStorage.rEvents.machineInteractRemote:InvokeServer("useMachine", cFrameOption)
		end)
	end
	return true
end
local function additionalUpdateInstanceProperties(secondaryMachine, updateInstancePropertiesFlag, ...)
	local machine = pState.machine
	updateInstancePropertiesNumber = updateInstancePropertiesNumber + 1
	local capturedSum = updateInstancePropertiesNumber
	handleValue("machine")
	if not updateInstancePropertiesFlag then
		pState.machine = nil
		local updateInstancePropertiesFlag = isUseToolValid()
		if updateInstancePropertiesFlag and updateInstancePropertiesFlag.SeatPart then
			updateInstancePropertiesFlag.Sit = false
			updateInstancePropertiesFlag:ChangeState(Enum.HumanoidStateType.Jumping)
		end
		return
	end
	pState.machine = secondaryMachine
	handleSendGiftRemote("machine", function(...)
		if machine and machine ~= secondaryMachine then
			local updateInstancePropertiesCondition = isUseToolValid()
			if updateInstancePropertiesCondition then
				updateInstancePropertiesCondition.Sit = false
				updateInstancePropertiesCondition:ChangeState(Enum.HumanoidStateType.Jumping)
			end
			for index = 1, 30, 1 do
				if
					not pState.running
					or pState.machine ~= secondaryMachine
					or updateInstancePropertiesNumber ~= capturedSum
				then
					return
				end
				task.wait(0.1)
			end
		end
		sendMachineInteractRemote(secondaryMachine)
		while
			pState.running and (pState.machine == secondaryMachine and updateInstancePropertiesNumber == capturedSum)
		do
			local updateInstancePropertiesFlag = isUseToolValid()
			local input = isSendHitEventValid()
			local machinesFolder = workspace:FindFirstChild("machinesFolder")
			local interactSeatContainer = machinesFolder and machinesFolder:FindFirstChild(secondaryMachine.object)
			local updateInstancePropertiesOption = interactSeatContainer
				and interactSeatContainer:FindFirstChild("interactSeat", true)
			local flag = not updateInstancePropertiesFlag or not updateInstancePropertiesFlag.SeatPart
			if
				updateInstancePropertiesOption
				and (input and (input.Position - updateInstancePropertiesOption.Position).Magnitude > 14)
			then
				flag = true
			end
			if flag then
				sendMachineInteractRemote(secondaryMachine)
			end
			task.wait(3.1)
		end
	end)
end
do
	modeData.generation = 0
	modeData.warningAccepted = false
	modeData.mode = nil
	modeData.startedAt = nil
	modeData.startStats = nil
	modeData.lockCFrame = nil
	modeData.lockCharacter = nil
	modeData.hideFramesOwned = false
	modeData.packCount = 0
	modeData.cachedPing = 0
	modeData.pingCheckedAt = 0
	modeData.pingPaused = false
	modeData.resumeSamples = 0
	modeData.strengthBatch = public.FastFarm.StrengthStartBatch
	modeData.lastBatchAdjust = 0
	modeData.sizeInvokeBusy = false
	modeData.lastSizeInvoke = 0
	modeData.sizeReleaseGeneration = 0
	modeData.frameReleaseGeneration = 0
	local function handleStartStats(isStartStatsValidData, ...)
		local startStatsFlag = isUpdateInstancePropertiesValid(backpackContainer, isStartStatsValidData)
		return startStatsFlag and tonumber(startStatsFlag.Value) or 0, startStatsFlag
	end
	local function handler(...)
		local startStatsResult = handleStartStats({ "Rebirths", "Rebirth" })
		local secondaryStartStatsResult = handleStartStats({ "Strength", "Fuerza" })
		local alternateStartStatsResult = handleStartStats({ "Durability", "Resistencia" })
		return {
			["rebirths"] = startStatsResult,
			["strength"] = secondaryStartStatsResult,
			["durability"] = alternateStartStatsResult,
		}
	end
	local function findFirstChild(...)
		return replicatedStorage:FindFirstChild("rEvents")
	end
	local function secondaryHandler(...)
		local equipPetEventContainer = findFirstChild()
		local option = equipPetEventContainer and equipPetEventContainer:FindFirstChild("equipPetEvent")
		local petsFolder = backpackContainer:FindFirstChild("petsFolder")
		if not option or not petsFolder then
			return
		end
		for index, item in ipairs(petsFolder:GetChildren()) do
			if item:IsA("Folder") then
				for index, item in ipairs(item:GetChildren()) do
					pcall(option.FireServer, option, "unequipPet", item)
				end
			end
		end
		task.wait(0.035)
	end
	local function handlePackCount(packCountArgument, ...)
		local equipPetEventContainer = findFirstChild()
		local packCountOption = equipPetEventContainer and equipPetEventContainer:FindFirstChild("equipPetEvent")
		local petsFolder = backpackContainer:FindFirstChild("petsFolder")
		if not packCountOption or not petsFolder then
			return 0
		end
		local packCountNumber = 0
		for index, item in ipairs(petsFolder:GetChildren()) do
			if item:IsA("Folder") then
				for index, item in ipairs(item:GetChildren()) do
					if item.Name == packCountArgument then
						pcall(packCountOption.FireServer, packCountOption, "equipPet", item)
						packCountNumber = packCountNumber + 1
						if packCountNumber >= public.FastFarm.MaxPets then
							return packCountNumber
						end
					end
				end
			end
		end
		return packCountNumber
	end
	local function handleInstanceProperties(instancePropertiesFlag, ...)
		local muscleEvent = backpackContainer:FindFirstChild("muscleEvent")
		if not muscleEvent then
			return false
		end
		for index = 1, instancePropertiesFlag or public.FastFarm.RepsPerCycle, 1 do
			pcall(muscleEvent.FireServer, muscleEvent, "rep")
		end
		return true
	end
	local function updateInstanceProperties(updateInstancePropertiesArgument, ...)
		local pingCheckedAt = time()
		local updateInstancePropertiesFlag = false
		if pingCheckedAt - modeData.pingCheckedAt >= 0.25 then
			modeData.cachedPing = isSendGiftRemoteCachedPingValid()
			modeData.pingCheckedAt = pingCheckedAt
			updateInstancePropertiesFlag = true
		end
		local cachedPing = modeData.cachedPing
		if not modeData.pingPaused and cachedPing >= public.FastFarm.PingPause then
			modeData.pingPaused = true
			modeData.resumeSamples = 0
			modeData.strengthBatch = public.FastFarm.StrengthStartBatch
			modeData.lastBatchAdjust = pingCheckedAt
		end
		if modeData.pingPaused then
			if updateInstancePropertiesFlag then
				if cachedPing <= public.FastFarm.PingResume then
					modeData.resumeSamples = modeData.resumeSamples + 1
				else
					modeData.resumeSamples = 0
				end
				if modeData.resumeSamples >= 4 then
					modeData.pingPaused = false
					modeData.resumeSamples = 0
				end
			end
			if modeData.pingPaused then
				return 0.25, false
			end
		end
		if updateInstancePropertiesArgument == "strength" then
			if updateInstancePropertiesFlag then
				if cachedPing >= public.FastFarm.PingSoft and pingCheckedAt - modeData.lastBatchAdjust >= 0.75 then
					modeData.strengthBatch = math.max(public.FastFarm.StrengthStartBatch, modeData.strengthBatch - 4)
					modeData.lastBatchAdjust = pingCheckedAt
				elseif
					cachedPing <= public.FastFarm.StrengthRampPing
					and pingCheckedAt - modeData.lastBatchAdjust >= public.FastFarm.StrengthRampInterval
				then
					modeData.strengthBatch = math.min(public.FastFarm.StrengthMaxBatch, modeData.strengthBatch + 2)
					modeData.lastBatchAdjust = pingCheckedAt
				end
			end
			if cachedPing >= public.FastFarm.PingCritical then
				handleInstanceProperties(2)
				return 0.2, true
			elseif cachedPing >= public.FastFarm.PingHigh then
				handleInstanceProperties(3)
				return 0.13, true
			elseif cachedPing >= public.FastFarm.PingMedium then
				handleInstanceProperties(math.max(4, math.floor(modeData.strengthBatch * 0.3)))
				return 0.07, true
			elseif cachedPing >= public.FastFarm.PingSoft then
				handleInstanceProperties(math.max(6, math.floor(modeData.strengthBatch * 0.5)))
				return 0.04, true
			end
			handleInstanceProperties(modeData.strengthBatch)
			return public.FastFarm.StrengthDelay, true
		end
		if cachedPing >= public.FastFarm.PingCritical then
			return 0.7, true
		elseif cachedPing >= public.FastFarm.PingHigh then
			handleInstanceProperties(10)
			return 0.18, true
		elseif cachedPing >= public.FastFarm.PingMedium then
			handleInstanceProperties(24)
			return 0.075, true
		elseif cachedPing >= public.FastFarm.PingSoft then
			handleInstanceProperties(45)
			return 0.025, true
		end
		handleInstanceProperties(public.FastFarm.RepsPerCycle)
		return public.FastFarm.RepDelay, true
	end
	local function isFloorValid(...)
		local ultimatesFolder = backpackContainer:FindFirstChild("ultimatesFolder")
		local isFloorValidOption = ultimatesFolder and ultimatesFolder:FindFirstChild("Golden Rebirth")
		return isFloorValidOption and tonumber(isFloorValidOption.Value) or 0
	end
	local function floor(numberText, ...)
		local sum = 10000 + 5000 * (tonumber(numberText) or 0)
		local floorNumber = isFloorValid()
		if floorNumber >= 1 and floorNumber <= 5 then
			sum = sum * (1 - floorNumber * 0.1)
		end
		return math.floor(sum)
	end
	local function alternateHandler(...)
		local rebirthRemoteContainer = findFirstChild()
		local condition = rebirthRemoteContainer and rebirthRemoteContainer:FindFirstChild("rebirthRemote")
		if condition then
			pcall(condition.InvokeServer, condition, "rebirthRequest")
		end
	end
	local function updateSizeOne(...)
		local updateSizeOneFlag = isUseToolValid()
		if not updateSizeOneFlag then
			return
		end
		for index, item in ipairs({ "BodyDepthScale", "BodyHeightScale", "BodyWidthScale", "HeadScale" }) do
			local firstChild = updateSizeOneFlag:FindFirstChild(item)
			if firstChild and firstChild:IsA("NumberValue") then
				pcall(function(...)
					firstChild.Value = 1
				end)
			end
		end
	end
	local function setSizeOne(...)
		updateSizeOne()
		local lastSizeInvoke = time()
		if modeData.sizeInvokeBusy or lastSizeInvoke - modeData.lastSizeInvoke < public.FastFarm.SizeInvokeInterval then
			return
		end
		local changeSpeedSizeRemoteContainer = findFirstChild()
		local setSizeOneCondition = changeSpeedSizeRemoteContainer
			and changeSpeedSizeRemoteContainer:FindFirstChild("changeSpeedSizeRemote")
		if setSizeOneCondition then
			modeData.sizeInvokeBusy = true
			modeData.lastSizeInvoke = lastSizeInvoke
			task.spawn(function(...)
				pcall(setSizeOneCondition.InvokeServer, setSizeOneCondition, "changeSize", 1)
				modeData.sizeInvokeBusy = false
			end)
		end
	end
	modeData.SetSizeOne = setSizeOne
	local function updateSizeReleaseGeneration(flag, ...)
		modeData.sizeReleaseGeneration = modeData.sizeReleaseGeneration + 1
		local sizeReleaseGeneration = modeData.sizeReleaseGeneration
		task.spawn(function(...)
			local sum = time() + (flag or public.FastFarm.SizeReleaseDuration)
			while
				pState.running
				and (
					modeData.mode == nil and (modeData.sizeReleaseGeneration == sizeReleaseGeneration and time() < sum)
				)
			do
				setSizeOne()
				task.wait(0.1)
			end
		end)
	end
	local function secondaryHandleInstanceProperties(instancePropertiesArgument, ...)
		for index, item in ipairs(public.Machines) do
			if item.object == instancePropertiesArgument then
				return item
			end
		end
		return nil
	end
	local function secondaryUpdateInstanceProperties(generation, ...)
		local updateInstancePropertiesFlag = secondaryHandleInstanceProperties("Jungle Bar Lift")
		if not updateInstancePropertiesFlag then
			return false
		end
		for index = 1, 3, 1 do
			if modeData.generation ~= generation or modeData.mode ~= "rebirth" then
				return false
			end
			sendMachineInteractRemote(updateInstancePropertiesFlag)
			local updateInstancePropertiesNumber = time() + 1.4
			repeat
				local updateInstancePropertiesFlag = isUseToolValid()
				if updateInstancePropertiesFlag and updateInstancePropertiesFlag.SeatPart then
					local updateInstancePropertiesCondition = isSendHitEventValid()
					if updateInstancePropertiesCondition then
						modeData.lockCharacter = getValueCharacter()
						modeData.lockCFrame = updateInstancePropertiesCondition.CFrame
						return true
					end
				end
				task.wait(0.08)
			until time() >= updateInstancePropertiesNumber
		end
		local input = isSendHitEventValid()
		if input and (input.Position - updateInstancePropertiesFlag.fallback.Position).Magnitude <= 20 then
			modeData.lockCharacter = getValueCharacter()
			modeData.lockCFrame = input.CFrame
			return true
		end
		return false
	end
	local function sendHitEvent(...)
		setSizeOne()
		local firstChild = workspace:FindFirstChild(public.FastFarm.RockName)
		local sendHitEventFlag = isSendHitEventValid()
		local hitEventContainer = findFirstChild()
		local remoteEvent = hitEventContainer and hitEventContainer:FindFirstChild("hitEvent")
		if firstChild and (sendHitEventFlag and remoteEvent) then
			pcall(function(...)
				sendHitEventFlag.CFrame = firstChild.CFrame * CFrame.new(0, 0, -5)
				remoteEvent:FireServer("hit", firstChild)
			end)
			task.delay(0.08, setSizeOne)
		end
	end
	local function additionalHandler(argument, ...)
		if modeData.HideFramesToggle then
			modeData.HideFramesToggle:Set(argument)
		else
			secondaryUpdateChildAddedConnection(argument)
		end
	end
	local function fallbackHandler(...)
		for index, item in ipairs(modeData.RepToggles or {}) do
			item:Set(false)
		end
		for index, item in ipairs(modeData.MachineToggles or {}) do
			item:Set(false)
		end
	end
	function modeData.ReadStats(argument, ...)
		return handler()
	end
	function modeData.FormatCompact(argument, numberText, ...)
		local number = tonumber(numberText) or 0
		local expectedMembership = math.abs(number)
		local data = {
			{ 1e+18, "Qi" },
			{ 1e+15, "Qa" },
			{ 1000000000000, "T" },
			{ 1000000000, "B" },
			{ 1000000, "M" },
			{ 1000, "K" },
		}
		for index, item in ipairs(data) do
			if expectedMembership >= item[1] then
				return string.format("%.2f%s", number / item[1], item[2])
			end
		end
		return handleValueLabelText(number)
	end
	function modeData.Stop(self, flag, ...)
		local isMode = self.mode ~= nil
		self.generation = self.generation + 1
		self.mode = nil
		pState.fastFarmMode = nil
		self.lockCFrame = nil
		self.lockCharacter = nil
		self.startedAt = nil
		self.startStats = nil
		for index, item in ipairs({
			"fastFarmSize",
			"fastFarmLock",
			"fastFarmMachine",
			"fastFarmRebirth",
			"fastFarmStrength",
		}) do
			handleValue(item)
		end
		local sitFlag = isUseToolValid()
		if sitFlag and sitFlag.SeatPart then
			sitFlag.Sit = false
			sitFlag:ChangeState(Enum.HumanoidStateType.Jumping)
		end
		if isMode then
			updateSizeReleaseGeneration(public.FastFarm.SizeReleaseDuration)
			pState.setAutoEgg(false, "fastFarm")
		end
		if flag and self.hideFramesOwned then
			self.frameReleaseGeneration = self.frameReleaseGeneration + 1
			local frameReleaseGeneration = self.frameReleaseGeneration
			task.delay(public.FastFarm.FramesReleaseDuration, function(...)
				if
					pState.running
					and (
						self.mode == nil
						and (self.frameReleaseGeneration == frameReleaseGeneration and self.hideFramesOwned)
					)
				then
					additionalHandler(false)
					self.hideFramesOwned = false
				end
			end)
		end
	end
	function modeData.Start(self, mode, ...)
		if mode ~= "rebirth" and mode ~= "strength" then
			return false
		end
		if self.mode == mode then
			return true
		end
		self:Stop(false)
		self.frameReleaseGeneration = self.frameReleaseGeneration + 1
		self.sizeReleaseGeneration = self.sizeReleaseGeneration + 1
		fallbackHandler()
		self.mode = mode
		pState.fastFarmMode = mode
		self.generation = self.generation + 1
		local generation = self.generation
		self.startedAt = mode == "rebirth" and clock() or nil
		self.startStats = mode == "rebirth" and handler() or nil
		self.packCount = 0
		self.cachedPing = isSendGiftRemoteCachedPingValid()
		self.pingCheckedAt = time()
		self.pingPaused = false
		self.resumeSamples = 0
		self.strengthBatch = public.FastFarm.StrengthStartBatch
		self.lastBatchAdjust = time()
		if not pState.hideFrames then
			self.hideFramesOwned = true
		end
		additionalHandler(true)
		pState.setAutoEgg(true, "fastFarm")
		setSizeOne()
		handleSendGiftRemote("fastFarmSize", function(...)
			while pState.running and (self.mode == mode and self.generation == generation) do
				setSizeOne()
				task.wait(0.1)
			end
		end)
		if mode == "rebirth" then
			handleSendGiftRemote("fastFarmLock", function(...)
				while pState.running and (self.mode == mode and self.generation == generation) do
					local instance = isSendHitEventValid()
					if instance and (self.lockCFrame and self.lockCharacter == getValueCharacter()) then
						instance.CFrame = self.lockCFrame
						instance.AssemblyLinearVelocity = Vector3.zero
						instance.AssemblyAngularVelocity = Vector3.zero
					end
					runService.Heartbeat:Wait()
				end
			end)
			handleSendGiftRemote("fastFarmMachine", function(...)
				while pState.running and (self.mode == mode and self.generation == generation) do
					if not self.lockCFrame or self.lockCharacter ~= getValueCharacter() then
						self.lockCFrame = nil
						secondaryUpdateInstanceProperties(generation)
					end
					task.wait(0.8)
				end
			end)
			handleSendGiftRemote("fastFarmRebirth", function(...)
				while self.mode == mode and (self.generation == generation and not self.lockCFrame) do
					task.wait(0.1)
				end
				while pState.running and (self.mode == mode and self.generation == generation) do
					while self.mode == mode and (self.generation == generation and not self.lockCFrame) do
						task.wait(0.1)
					end
					if self.mode ~= mode or self.generation ~= generation then
						break
					end
					local number = time()
					local numberText, flag = handleStartStats({ "Rebirths", "Rebirth" })
					local result, valueFlag = handleStartStats({ "Strength", "Fuerza" })
					local secondaryResult = floor(numberText)
					secondaryHandler()
					self.packCount = handlePackCount(public.FastFarm.StrengthPet)
					while
						pState.running
						and (
							self.mode == mode
							and (
								self.generation == generation
								and (valueFlag and tonumber(valueFlag.Value) < secondaryResult)
							)
						)
					do
						local result = updateInstanceProperties("rebirth")
						task.wait(result)
					end
					if self.mode == mode and self.generation == generation then
						secondaryHandler()
						self.packCount = handlePackCount(public.FastFarm.RebirthPet)
						local option = flag and tonumber(flag.Value) or numberText
						local number = time()
						repeat
							alternateHandler()
							task.wait(0.025)
						until self.mode ~= mode
							or self.generation ~= generation
							or flag and tonumber(flag.Value) > option
							or time() - number >= public.FastFarm.RebirthRequestWindow
					end
					local difference = public.FastFarm.RebirthCycleDelay - (time() - number)
					task.wait(math.max(difference, 0))
				end
			end)
		else
			handleSendGiftRemote("fastFarmStrength", function(...)
				setSizeOne()
				task.wait(0.3)
				secondaryHandler()
				self.packCount = handlePackCount(public.FastFarm.StrengthPet)
				local startStats = handler()
				local condition = secondaryHandleInstanceProperties("Jungle Bench")
				if condition then
					sendMachineInteractRemote(condition)
					setSizeOne()
				end
				local number = 0
				local secondaryNumber = 0
				local timeResult = time()
				local result = getValueCharacter()
				while pState.running and (self.mode == mode and self.generation == generation) do
					if result ~= getValueCharacter() then
						result = getValueCharacter()
						self.startedAt = nil
						self.startStats = nil
						setSizeOne()
						task.wait(0.3)
						secondaryHandler()
						self.packCount = handlePackCount(public.FastFarm.StrengthPet)
						startStats = handler()
						if condition then
							sendMachineInteractRemote(condition)
							setSizeOne()
							timeResult = time()
						end
					end
					if not self.startedAt and (condition and time() - timeResult >= 3.2) then
						setSizeOne()
						sendMachineInteractRemote(condition)
						setSizeOne()
						timeResult = time()
					end
					local secondaryResult, flag = updateInstanceProperties("strength")
					if flag and time() - number >= public.FastFarm.RockInterval then
						sendHitEvent()
						number = time()
					end
					if not self.startedAt and time() - secondaryNumber >= 0.15 then
						secondaryNumber = time()
						local strengthResult = handler()
						if strengthResult.strength > startStats.strength then
							self.startedAt = clock()
							self.startStats = startStats
						end
					end
					task.wait(secondaryResult)
				end
			end)
		end
		return true
	end
end
local updateInstancePropertiesData = {}
local secondaryConnection = nil
local handleInstanceProperties = function(...) end
local effectSettings = nil
local qualityLevel = nil
local function nestedHandler(data, secondaryArgument, ...)
	updateInstancePropertiesData[data] = updateInstancePropertiesData[data] or {}
	if updateInstancePropertiesData[data][secondaryArgument] == nil then
		local success, result = pcall(function(...)
			return data[secondaryArgument]
		end)
		if success then
			updateInstancePropertiesData[data][secondaryArgument] = result
		end
	end
end
local function innerHandler(terrain, secondaryArgument, tertiaryArgument, ...)
	nestedHandler(terrain, secondaryArgument)
	pcall(function(...)
		terrain[secondaryArgument] = tertiaryArgument
	end)
end
local function outerHandler(terrain, ...)
	if terrain:IsA("BasePart") then
		innerHandler(terrain, "Material", Enum.Material.SmoothPlastic)
		innerHandler(terrain, "Reflectance", 0)
		innerHandler(terrain, "CastShadow", false)
		if terrain:IsA("MeshPart") then
			innerHandler(terrain, "TextureID", "")
		end
	elseif terrain:IsA("Decal") or terrain:IsA("Texture") then
		innerHandler(terrain, "Transparency", 1)
	elseif
		terrain:IsA("ParticleEmitter")
		or terrain:IsA("Trail")
		or terrain:IsA("Beam")
		or terrain:IsA("Smoke")
		or terrain:IsA("Fire")
		or terrain:IsA("Sparkles")
	then
		innerHandler(terrain, "Enabled", false)
	elseif terrain:IsA("PointLight") or terrain:IsA("SpotLight") or terrain:IsA("SurfaceLight") then
		innerHandler(terrain, "Enabled", false)
	elseif
		terrain:IsA("BloomEffect")
		or terrain:IsA("BlurEffect")
		or terrain:IsA("ColorCorrectionEffect")
		or terrain:IsA("DepthOfFieldEffect")
		or terrain:IsA("SunRaysEffect")
	then
		innerHandler(terrain, "Enabled", false)
	elseif terrain:IsA("Explosion") then
		innerHandler(terrain, "BlastPressure", 0)
		innerHandler(terrain, "BlastRadius", 0)
	end
end
local function fallbackUpdateInstanceProperties(antiLagGeneration, updateInstancePropertiesFlag, ...)
	local updateInstancePropertiesNumber = 0
	for key, item in pairs(updateInstancePropertiesData) do
		if pState.antiLagGeneration ~= antiLagGeneration then
			return false
		end
		if key and key.Parent then
			for secondaryKey, item in pairs(item) do
				pcall(function(...)
					key[secondaryKey] = item
				end)
			end
		end
		updateInstancePropertiesNumber = updateInstancePropertiesNumber + 1
		if updateInstancePropertiesFlag and updateInstancePropertiesNumber % 260 == 0 then
			runService.Heartbeat:Wait()
		end
	end
	updateInstancePropertiesData = {}
	if effectSettings then
		lighting.GlobalShadows = effectSettings.GlobalShadows
		lighting.FogEnd = effectSettings.FogEnd
		lighting.Brightness = effectSettings.Brightness
	end
	pcall(function(...)
		if qualityLevel then
			(settings()).Rendering.QualityLevel = qualityLevel
		end
	end)
	handleInstanceProperties("Desactivado")
	return true
end
local function updateDescendantAddedConnection(argument, condition, ...)
	pState.antiLag = argument == true
	pState.antiLagGeneration = pState.antiLagGeneration + 1
	local antiLagGeneration = pState.antiLagGeneration
	handleValue("antiLag")
	if secondaryConnection then
		secondaryConnection:Disconnect()
		secondaryConnection = nil
	end
	if pState.antiLag then
		handleInstanceProperties("Optimizando...")
		effectSettings = effectSettings
			or {
				["GlobalShadows"] = lighting.GlobalShadows,
				["FogEnd"] = lighting.FogEnd,
				["Brightness"] = lighting.Brightness,
			}
		lighting.GlobalShadows = false
		lighting.FogEnd = 1000000000
		lighting.Brightness = 0
		pcall(function(...)
			qualityLevel = qualityLevel or (settings()).Rendering.QualityLevel;
			(settings()).Rendering.QualityLevel = Enum.QualityLevel.Level01
		end)
		local terrain = workspace:FindFirstChildOfClass("Terrain")
		if terrain then
			innerHandler(terrain, "WaterWaveSize", 0)
			innerHandler(terrain, "WaterWaveSpeed", 0)
			innerHandler(terrain, "WaterReflectance", 0)
			innerHandler(terrain, "WaterTransparency", 1)
		end
		secondaryConnection = workspace.DescendantAdded:Connect(function(argument, ...)
			if pState.antiLag then
				task.defer(function(...)
					pcall(outerHandler, argument)
				end)
			end
		end)
		handleSendGiftRemote("antiLag", function(...)
			local data = { workspace, lighting }
			local sum = 1
			local number = 0
			while
				sum <= #data and (pState.running and (pState.antiLag and pState.antiLagGeneration == antiLagGeneration))
			do
				local container = data[sum]
				sum = sum + 1
				local success, result = pcall(function(...)
					return container:GetChildren()
				end)
				if success then
					for index, item in ipairs(result) do
						data[#data + 1] = item
						pcall(outerHandler, item)
						number = number + 1
						if number % 260 == 0 then
							runService.Heartbeat:Wait()
						end
					end
				end
			end
			if pState.antiLag and pState.antiLagGeneration == antiLagGeneration then
				handleInstanceProperties("100% Optimizado")
			end
		end)
	else
		handleInstanceProperties("Restaurando...")
		if condition then
			fallbackUpdateInstanceProperties(antiLagGeneration, true)
		else
			handleSendGiftRemote("antiLag", function(...)
				fallbackUpdateInstanceProperties(antiLagGeneration, true)
			end)
		end
	end
end
local createPartData = {}
local function createPart(createPartArgument, ...)
	pState.walkWater = createPartArgument == true
	for index, item in ipairs(createPartData) do
		if item and item.Parent then
			item:Destroy()
		end
	end
	table.clear(createPartData)
	if not pState.walkWater then
		return
	end
	local createPartNumber = Vector3.new(-3072, -9.5, -3072)
	for index = -4, 4, 1 do
		for secondaryIndex = -4, 4, 1 do
			local part = Instance.new("Part")
			part.Name = "Young0xWaterFloor"
			part.Size = Vector3.new(2048, 1, 2048)
			part.Position = createPartNumber + Vector3.new(index * 2048, 0, secondaryIndex * 2048)
			part.Anchored = true
			part.CanCollide = true
			part.Transparency = 1
			part.CastShadow = false
			part.Parent = workspace
			createPartData[#createPartData + 1] = part
		end
		runService.Heartbeat:Wait()
	end
end
local function sendOpenFortuneWheelRemote(argument, ...)
	pState.autoSpinWheel = argument == true
	if not pState.autoSpinWheel then
		handleValue("fortuneWheel")
		return
	end
	handleSendGiftRemote("fortuneWheel", function(...)
		while pState.running and pState.autoSpinWheel do
			pcall(function(...)
				local rEvents = replicatedStorage:FindFirstChild("rEvents")
				local remoteFunction = rEvents and rEvents:FindFirstChild("openFortuneWheelRemote")
				local fortuneWheelChances = replicatedStorage:FindFirstChild("fortuneWheelChances")
				local option = fortuneWheelChances and fortuneWheelChances:FindFirstChild("Fortune Wheel")
				if remoteFunction and option then
					remoteFunction:InvokeServer("openFortuneWheel", option)
				end
			end)
			task.wait(1)
		end
	end)
end
local alternateData = { "Magma Chest", "Mythical Chest", "Golden Chest", "Enchanted Chest", "Legends Chest" }
local function updateAutoClaimChests(argument, ...)
	pState.autoClaimChests = argument == true
	if not pState.autoClaimChests then
		handleValue("autoClaimChests")
		return
	end
	handleSendGiftRemote("autoClaimChests", function(...)
		while pState.running and pState.autoClaimChests do
			local rEvents = replicatedStorage:FindFirstChild("rEvents")
			local condition = rEvents and rEvents:FindFirstChild("checkChestRemote")
			if condition then
				for index, item in ipairs(alternateData) do
					if not pState.running or not pState.autoClaimChests then
						break
					end
					pcall(condition.InvokeServer, condition, item)
					task.wait(0.15)
				end
			end
			task.wait(15)
		end
	end)
end
local alternateConnection = nil
local additionalData = {}
local function onDescendantAdded(item, ...)
	if item and (item.Name == "RobloxForwardPortals" and item.Parent) then
		additionalData[#additionalData + 1] = { ["object"] = item, ["parent"] = item.Parent }
		item.Parent = nil
	end
end
local function updateRemovePortals(argument, ...)
	pState.removePortals = argument == true
	handleValue("removePortals")
	if alternateConnection then
		alternateConnection:Disconnect()
		alternateConnection = nil
	end
	if not pState.removePortals then
		for index, item in ipairs(additionalData) do
			if item.object and not item.object.Parent then
				pcall(function(...)
					item.object.Parent = item.parent and (item.parent.Parent and item.parent) or workspace
				end)
			end
		end
		table.clear(additionalData)
		return
	end
	if pState.removePortals then
		alternateConnection = game.DescendantAdded:Connect(onDescendantAdded)
		handleSendGiftRemote("removePortals", function(...)
			local data = { workspace }
			local sum = 1
			local number = 0
			while sum <= #data and (pState.running and pState.removePortals) do
				local container = data[sum]
				sum = sum + 1
				local success, result = pcall(function(...)
					return container:GetChildren()
				end)
				if success then
					for index, item in ipairs(result) do
						data[#data + 1] = item
						onDescendantAdded(item)
						number = number + 1
						if number % 300 == 0 then
							runService.Heartbeat:Wait()
						end
					end
				end
			end
		end)
	end
end
local walkSpeed = nil
local function updateWalkSpeed(...)
	local updateWalkSpeedCondition = isUseToolValid()
	if updateWalkSpeedCondition then
		if pState.fastSpeed then
			updateWalkSpeedCondition.WalkSpeed = 1000
		elseif walkSpeed ~= nil then
			updateWalkSpeedCondition.WalkSpeed = walkSpeed
		end
	end
end
local function updateFastSpeed(fastSpeedFlag, ...)
	local updateFastSpeedFlag = isUseToolValid()
	if fastSpeedFlag and (updateFastSpeedFlag and not pState.fastSpeed) then
		walkSpeed = updateFastSpeedFlag.WalkSpeed
	end
	local fastSpeed = pState.fastSpeed
	pState.fastSpeed = fastSpeedFlag == true
	if pState.fastSpeed or fastSpeed then
		updateWalkSpeed()
	end
	if fastSpeed and not pState.fastSpeed then
		walkSpeed = nil
	end
end
local bodyGyro = nil
local bodyVelocity = nil
local flag = false
local secondaryFlag = false
local frame = nil
pState.clearAntiKnockback = function(...)
	if pState.antiKnockbackVelocity then
		pState.antiKnockbackVelocity:Destroy()
		pState.antiKnockbackVelocity = nil
	end
end
pState.setAntiKnockback = function(argument, ...)
	pState.antiKnockback = argument == true
	if not pState.antiKnockback then
		pState.clearAntiKnockback()
	end
end
local function updatePlatformStand(...)
	if bodyGyro then
		bodyGyro:Destroy()
		bodyGyro = nil
	end
	if bodyVelocity then
		bodyVelocity:Destroy()
		bodyVelocity = nil
	end
	local updatePlatformStandCondition = isUseToolValid()
	if updatePlatformStandCondition then
		updatePlatformStandCondition.PlatformStand = false
	end
end
local function nestedUpdateInstanceProperties(updateInstancePropertiesArgument, ...)
	pState.fly = updateInstancePropertiesArgument == true
	if frame then
		frame.Visible = pState.fly and userInputService.TouchEnabled
	end
	if not pState.fly then
		updatePlatformStand()
	end
end
local updateCanCollideData = {}
local additionalConnection = nil
local function updateCanCollide(...)
	for key, canCollide in pairs(updateCanCollideData) do
		if key and key.Parent then
			pcall(function(...)
				key.CanCollide = canCollide
			end)
		end
	end
	table.clear(updateCanCollideData)
end
local function updateSteppedConnection(updateSteppedConnectionArgument, ...)
	pState.noclip = updateSteppedConnectionArgument == true
	if additionalConnection then
		additionalConnection:Disconnect()
		additionalConnection = nil
	end
	if pState.noclip then
		additionalConnection = runService.Stepped:Connect(function(...)
			if not pState.running or not pState.noclip then
				return
			end
			local updateSteppedConnectionCondition = getValueCharacter()
			if updateSteppedConnectionCondition then
				for index, item in ipairs(updateSteppedConnectionCondition:GetDescendants()) do
					if item:IsA("BasePart") then
						if updateCanCollideData[item] == nil then
							updateCanCollideData[item] = item.CanCollide
						end
						item.CanCollide = false
					end
				end
			end
		end)
	end
	if not pState.noclip then
		updateCanCollide()
	end
end
local bodyAngularVelocity = nil
local capturedInstanceFlag = nil
local autoRotate = true
local function updateSpin(...)
	if bodyAngularVelocity then
		local parent = bodyAngularVelocity.Parent
		if parent and parent:IsA("BasePart") then
			parent.AssemblyAngularVelocity = Vector3.zero
		end
		bodyAngularVelocity:Destroy()
		bodyAngularVelocity = nil
	end
	if capturedInstanceFlag and capturedInstanceFlag.Parent then
		capturedInstanceFlag.AutoRotate = autoRotate
	end
	capturedInstanceFlag = nil
end
local function secondaryUpdateSpin(updateSpinArgument, ...)
	pState.spin = updateSpinArgument == true
	if not pState.spin then
		updateSpin()
	end
end
local function updateCameraSubject(...)
	local cameraSubject = isUseToolValid()
	if workspace.CurrentCamera and cameraSubject then
		workspace.CurrentCamera.CameraSubject = cameraSubject
	end
end
local function updateSpy(updateSpyFlag, ...)
	pState.spy = updateSpyFlag == true
	if not pState.spy then
		updateCameraSubject()
	end
end
do
	local function handleInstanceProperties(...)
		pcall(function(...)
			local punchContainer = getValueCharacter()
			local parent = backpackContainer:FindFirstChild("Backpack")
			local parentOption = punchContainer and punchContainer:FindFirstChild("Punch")
			if parentOption and parent then
				parentOption.Parent = parent
			end
		end)
	end
	local function usePunch(...)
		local punchContainer = getValueCharacter()
		local usePunchFlag = isUseToolValid()
		local backpack = backpackContainer:FindFirstChild("Backpack")
		if not punchContainer or not usePunchFlag then
			return nil
		end
		local usePunchOption = punchContainer:FindFirstChild("Punch") or backpack and backpack:FindFirstChild("Punch")
		if usePunchOption and usePunchOption.Parent == backpack then
			usePunchFlag:EquipTool(usePunchOption)
		end
		local muscleEvent = backpackContainer:FindFirstChild("muscleEvent")
		if muscleEvent then
			pcall(muscleEvent.FireServer, muscleEvent, "punch", "leftHand")
			pcall(muscleEvent.FireServer, muscleEvent, "punch", "rightHand")
		end
		return punchContainer
	end
	local function isValid(...)
		if #public.Kills.ProtectedPrivateServerIds == 0 then
			return false
		end
		local isValidOption = getgenv and getgenv() or _G
		local option = isValidOption.gethiddenproperty or isValidOption.gethiddenprop
		if type(option) ~= "function" then
			return false
		end
		local success, result = pcall(option, game, "PrivateServerId")
		local searchQuery = success and tostring(result or "") or ""
		return searchQuery ~= "" and table.find(public.Kills.ProtectedPrivateServerIds, searchQuery) ~= nil
	end
	local function getUserId(player, ...)
		local lower = (tostring(player and player.DisplayName or "")):lower()
		if lower:find("0x", 1, true) then
			return true
		end
		if not pState.kill.protectFriends then
			return false
		end
		local userId = pState.kill.friendCache[player.UserId]
		if userId ~= nil then
			return userId
		end
		local success, result = pcall(backpackContainer.IsFriendsWith, backpackContainer, player.UserId)
		if success then
			pState.kill.friendCache[player.UserId] = result == true
		else
			pState.kill.friendCache[player.UserId] = true
		end
		return pState.kill.friendCache[player.UserId]
	end
	local function updateInstanceProperties(player, ...)
		if not player or player == backpackContainer or getUserId(player) then
			return false
		end
		local humanoidRootPartContainer = player.Character
		local updateInstancePropertiesOption = humanoidRootPartContainer
			and humanoidRootPartContainer:FindFirstChildWhichIsA("Humanoid")
		local cFrameOption = humanoidRootPartContainer and humanoidRootPartContainer:FindFirstChild("HumanoidRootPart")
		if not updateInstancePropertiesOption or updateInstancePropertiesOption.Health <= 0 or not cFrameOption then
			return false
		end
		local leftArmContainer = usePunch()
		if not leftArmContainer or type(firetouchinterest) ~= "function" then
			return false
		end
		local updateInstancePropertiesFlag = leftArmContainer:FindFirstChild("LeftHand")
			or leftArmContainer:FindFirstChild("Left Arm")
			or leftArmContainer:FindFirstChild("RightHand")
			or leftArmContainer:FindFirstChild("Right Arm")
		if not updateInstancePropertiesFlag then
			return false
		end
		local cFrame = cFrameOption.CFrame
		local assemblyLinearVelocity = cFrameOption.AssemblyLinearVelocity
		local assemblyAngularVelocity = cFrameOption.AssemblyAngularVelocity
		local function updateInstanceProperties(...)
			if cFrameOption and cFrameOption.Parent then
				cFrameOption.CFrame = cFrame
				cFrameOption.AssemblyLinearVelocity = assemblyLinearVelocity
				cFrameOption.AssemblyAngularVelocity = assemblyAngularVelocity
			end
		end
		pcall(firetouchinterest, cFrameOption, updateInstancePropertiesFlag, 0)
		pcall(updateInstanceProperties)
		pcall(firetouchinterest, cFrameOption, updateInstancePropertiesFlag, 1)
		pcall(updateInstanceProperties)
		return true
	end
	local function secondaryUpdateInstancePropertiesValid(leaderstatsContainer, secondaryFlag, ...)
		if not secondaryFlag then
			return true
		end
		local flag = isUpdateInstancePropertiesValid(leaderstatsContainer, { "goodKarma", "Good Karma" })
		local valueFlag = isUpdateInstancePropertiesValid(leaderstatsContainer, { "evilKarma", "Evil Karma" })
		local option = tonumber(flag and flag.Value) or 0
		local secondaryOption = tonumber(valueFlag and valueFlag.Value) or 0
		if secondaryFlag == "evil" then
			return option > secondaryOption
		elseif secondaryFlag == "good" then
			return secondaryOption > option
		end
		return false
	end
	local function alternateUpdateInstancePropertiesValid(...)
		return pState.kill.auto or pState.kill.karmaMode ~= nil
	end
	local function secondaryUpdateInstanceProperties(...)
		handleValue("killFarm")
		if not alternateUpdateInstancePropertiesValid() and not pState.kill.targetMode then
			handleInstanceProperties()
			return
		end
		handleSendGiftRemote("killFarm", function(...)
			while pState.running and (alternateUpdateInstancePropertiesValid() or pState.kill.targetMode) do
				if pState.kill.targetMode then
					updateInstanceProperties(pState.kill.target and players:FindFirstChild(pState.kill.target))
				else
					local updateInstancePropertiesNumber = 0
					for index, item in ipairs(players:GetPlayers()) do
						if not pState.running or not alternateUpdateInstancePropertiesValid() then
							break
						end
						if
							secondaryUpdateInstancePropertiesValid(item, pState.kill.karmaMode)
							and updateInstanceProperties(item)
						then
							updateInstancePropertiesNumber = updateInstancePropertiesNumber + 1
						end
					end
					if pState.kill.serverHop then
						if updateInstancePropertiesNumber == 0 then
							pState.kill.noTargetsSince = pState.kill.noTargetsSince or time()
							if time() - pState.kill.noTargetsSince >= public.ServerHop.NoTargetsDelay then
								pState.kill.hopNow = true
							end
						else
							pState.kill.noTargetsSince = nil
						end
					end
				end
				task.wait(0.05)
			end
			handleInstanceProperties()
		end)
	end
	local function getQueueOnTeleport(...)
		local option = getgenv and getgenv() or _G
		local secondaryOption = option.queue_on_teleport
			or option.queueonteleport
			or queue_on_teleport
			or queueonteleport
		if type(secondaryOption) == "function" then
			return secondaryOption
		end
		local syn = option.syn
		if type(syn) == "table" and type(syn.queue_on_teleport) == "function" then
			return syn.queue_on_teleport
		end
		local fluxus = option.fluxus
		if type(fluxus) == "table" and type(fluxus.queue_on_teleport) == "function" then
			return fluxus.queue_on_teleport
		end
		return nil
	end
	local function isGetIdValid(searchQuery, ...)
		return table.find(pState.kill.serverHistory, searchQuery) ~= nil
	end
	local function handler(searchQuery, ...)
		if not isGetIdValid(searchQuery) then
			pState.kill.serverHistory[#pState.kill.serverHistory + 1] = searchQuery
		end
		while #pState.kill.serverHistory > public.ServerHop.HistoryLimit do
			table.remove(pState.kill.serverHistory, 1)
		end
	end
	local function getId(secondaryGetIdFlag, getIdFlag, flag, ...)
		local httpService = game:GetService("HttpService")
		local getIdData = {}
		local data = {}
		local secondaryGetIdData = {}
		local nextPageCursor = nil
		for index = 1, 6, 1 do
			local url = string.format(public.ServerHop.ServerApi, game.PlaceId)
			if nextPageCursor then
				url = url .. ("&cursor=" .. httpService:UrlEncode(nextPageCursor))
			end
			local success, result = pcall(game.HttpGet, game, url, true)
			if not success or type(result) ~= "string" then
				break
			end
			local secondarySuccess, dataResult = pcall(httpService.JSONDecode, httpService, result)
			if not secondarySuccess or type(dataResult) ~= "table" then
				break
			end
			for index, item in ipairs(dataResult.data or {}) do
				if
					type(item) == "table"
					and (
						type(item.id) == "string"
						and (
							item.id ~= game.JobId
							and (
								(flag or not isGetIdValid(item.id))
								and (
									tonumber(item.playing)
									and (
										tonumber(item.maxPlayers)
										and (
											(not secondaryGetIdFlag or tonumber(item.playing) <= secondaryGetIdFlag)
											and tonumber(item.playing) < tonumber(item.maxPlayers)
										)
									)
								)
							)
						)
					)
				then
					local getIdNumber = tonumber(item.playing)
					secondaryGetIdData[#secondaryGetIdData + 1] = item
					if getIdNumber >= public.ServerHop.PreferredPlayers then
						getIdData[#getIdData + 1] = item
					elseif getIdNumber >= public.ServerHop.MinimumPlayers then
						data[#data + 1] = item
					end
				end
			end
			nextPageCursor = dataResult.nextPageCursor
			if not nextPageCursor or #getIdData >= (getIdFlag and 1 or 12) then
				break
			end
		end
		local getIdOption = #getIdData > 0 and getIdData or data
		if #getIdOption == 0 and getIdFlag then
			getIdOption = secondaryGetIdData
		end
		if #getIdOption == 0 then
			return nil
		end
		table.sort(getIdOption, function(getIdArgument, secondaryArgument, ...)
			return tonumber(getIdArgument.playing) > tonumber(secondaryArgument.playing)
		end)
		local getIdNumber = math.min(#getIdOption, 8)
		return getIdOption[math.random(1, getIdNumber)].id
	end
	local function alternateUpdateInstanceProperties(
		updateInstancePropertiesFlag,
		searchQuery,
		updateInstancePropertiesOption,
		...
	)
		local httpService = game:GetService("HttpService")
		handler(searchQuery)
		updateInstancePropertiesOption = updateInstancePropertiesOption or {}
		updateInstancePropertiesOption.script = "fg100.lua"
		updateInstancePropertiesOption.serverHistory = pState.kill.serverHistory
		updateInstancePropertiesOption.serversVisited = pState.kill.serversVisited + 1
		local encodedData = httpService:JSONEncode(updateInstancePropertiesOption)
		local concatResult = table.concat(
			{
				"repeat task.wait() until game:IsLoaded()",
				"local env = getgenv and getgenv() or _G",
				"env.Young0xFG100Resume = game:GetService('HttpService'):JSONDecode("
					.. (string.format("%q", encodedData) .. ")"),
				"loadstring(game:HttpGet(" .. (string.format("%q", public.ServerHop.LoaderUrl) .. ", true))()"),
			},
			"\n"
		)
		return pcall(updateInstancePropertiesFlag, concatResult)
	end
	local function additionalUpdateInstanceProperties(updateInstancePropertiesFlag, searchQuery, ...)
		return alternateUpdateInstanceProperties(
			updateInstancePropertiesFlag,
			searchQuery,
			{
				["tab"] = "Kills",
				["autoKill"] = pState.kill.auto,
				["karmaMode"] = pState.kill.karmaMode,
				["protectFriends"] = pState.kill.protectFriends,
				["serverHop"] = true,
			}
		)
	end
	local function secondaryHandler(...)
		local flag = getQueueOnTeleport()
		if not flag then
			return false
		end
		local searchQuery = getId()
		if not searchQuery or not additionalUpdateInstanceProperties(flag, searchQuery) then
			return false
		end
		local success = pcall(function(...)
			(game:GetService("TeleportService")):TeleportToPlaceInstance(game.PlaceId, searchQuery, backpackContainer)
		end)
		return success
	end
	local function alternateHandler(number, secondaryArgument, ...)
		if type(pState.kill.updateHopStatus) == "function" then
			pcall(pState.kill.updateHopStatus, number, secondaryArgument)
		end
	end
	pState.setServerHop = function(serverHopFlag, ...)
		if serverHopFlag and (pState.kill.targetMode or isValid() or not getQueueOnTeleport()) then
			return false
		end
		pState.kill.serverHop = serverHopFlag == true
		pState.kill.hopNow = false
		pState.kill.noTargetsSince = nil
		handleValue("killServerHop")
		if pState.kill.serverHop then
			handleSendGiftRemote("killServerHop", function(...)
				while pState.running and pState.kill.serverHop do
					local interval = public.ServerHop.Interval
					while interval > 0 and not pState.kill.hopNow do
						if not pState.running or not pState.kill.serverHop then
							return
						end
						alternateHandler(interval)
						task.wait(1)
						interval = interval - 1
					end
					pState.kill.hopNow = false
					if not pState.running or not pState.kill.serverHop then
						return
					end
					alternateHandler(0, "Buscando servidor...")
					if secondaryHandler() then
						alternateHandler(0, "Conectando...")
						task.wait(12)
						if pState.running and pState.kill.serverHop then
							alternateHandler(0, "Reintentando...")
							task.wait(public.ServerHop.RetryDelay)
							pState.kill.hopNow = true
						end
					else
						alternateHandler(0, "Reintentando...")
						task.wait(public.ServerHop.RetryDelay)
						pState.kill.hopNow = true
					end
				end
			end)
		else
			alternateHandler(nil)
		end
		return true
	end
	local function fallbackUpdateInstanceProperties(...)
		handleValue("killPositionLock")
		pState.kill.lockCFrame = nil
		pState.kill.lockCharacter = nil
	end
	local function updateValue(...)
		handleValue("killPunchAnimation")
		if pState.fastPunch then
			return
		end
		pcall(function(...)
			local punchContainer = getValueCharacter()
			local backpack = backpackContainer:FindFirstChild("Backpack")
			local attackTimeContainer = punchContainer and punchContainer:FindFirstChild("Punch")
				or backpack and backpack:FindFirstChild("Punch")
			local updateValueCondition = attackTimeContainer and attackTimeContainer:FindFirstChild("attackTime")
			if updateValueCondition then
				updateValueCondition.Value = 0.3
			end
		end)
	end
	local function secondaryUpdateValue(...)
		updateValue()
		handleSendGiftRemote("killPunchAnimation", function(...)
			while pState.running and pState.kill.auto do
				if not pState.fastPunch then
					pcall(function(...)
						local attackTimeContainer = secondaryUseTool()
						if attackTimeContainer then
							local attackTime = attackTimeContainer:FindFirstChild("attackTime")
							if attackTime then
								attackTime.Value = 0
							end
							attackTimeContainer:Activate()
						end
					end)
				end
				task.wait(0.01)
			end
		end)
	end
	local function nestedUpdateInstanceProperties(...)
		fallbackUpdateInstanceProperties()
		local lockCharacter = getValueCharacter()
		local updateInstancePropertiesFlag = isSendHitEventValid()
		if lockCharacter and updateInstancePropertiesFlag then
			pState.kill.lockCharacter = lockCharacter
			pState.kill.lockCFrame = updateInstancePropertiesFlag.CFrame
		end
		handleSendGiftRemote("killPositionLock", function(...)
			while pState.running and alternateUpdateInstancePropertiesValid() do
				local lockCharacter = getValueCharacter()
				local updateInstancePropertiesFlag = isSendHitEventValid()
				if lockCharacter and updateInstancePropertiesFlag then
					if pState.kill.lockCharacter ~= lockCharacter or not pState.kill.lockCFrame then
						pState.kill.lockCharacter = lockCharacter
						pState.kill.lockCFrame = updateInstancePropertiesFlag.CFrame
					end
					updateInstancePropertiesFlag.CFrame = pState.kill.lockCFrame
					updateInstancePropertiesFlag.AssemblyLinearVelocity = Vector3.zero
					updateInstancePropertiesFlag.AssemblyAngularVelocity = Vector3.zero
				end
				runService.Heartbeat:Wait()
			end
		end)
	end
	pState.setAutoKill = function(autoFlag, ...)
		if autoFlag and (isValid() or type(firetouchinterest) ~= "function") then
			return false
		end
		pState.kill.auto = autoFlag == true
		if pState.kill.auto then
			pState.kill.targetMode = false
			pState.kill.karmaMode = nil
			nestedUpdateInstanceProperties()
			secondaryUpdateValue()
			if type(modeData.SetSizeOne) == "function" then
				modeData.SetSizeOne()
			end
			handleSendGiftRemote("killSizeOne", function(...)
				while pState.running and pState.kill.auto do
					if type(modeData.SetSizeOne) == "function" then
						modeData.SetSizeOne()
					end
					task.wait(0.5)
				end
			end)
		else
			handleValue("killSizeOne")
			fallbackUpdateInstanceProperties()
			updateValue()
		end
		secondaryUpdateInstanceProperties()
		return true
	end
	pState.setTargetKill = function(targetModeFlag, ...)
		if targetModeFlag and (isValid() or type(firetouchinterest) ~= "function" or not pState.kill.target) then
			return false
		end
		pState.kill.targetMode = targetModeFlag == true
		if pState.kill.targetMode then
			pState.kill.auto = false
			pState.kill.karmaMode = nil
			fallbackUpdateInstanceProperties()
			updateValue()
			pState.setServerHop(false)
			handleValue("killSizeOne")
		end
		secondaryUpdateInstanceProperties()
		return true
	end
	pState.setKarmaKill = function(karmaMode, condition, ...)
		if karmaMode ~= "evil" and karmaMode ~= "good" then
			return false
		end
		if condition and (isValid() or type(firetouchinterest) ~= "function") then
			return false
		end
		if condition then
			pState.kill.karmaMode = karmaMode
		elseif pState.kill.karmaMode == karmaMode then
			pState.kill.karmaMode = nil
		end
		if pState.kill.karmaMode then
			pState.kill.auto = false
			updateValue()
			pState.kill.targetMode = false
			nestedUpdateInstanceProperties()
			if type(modeData.SetSizeOne) == "function" then
				modeData.SetSizeOne()
			end
			handleSendGiftRemote("killSizeOne", function(...)
				while pState.running and pState.kill.karmaMode do
					if type(modeData.SetSizeOne) == "function" then
						modeData.SetSizeOne()
					end
					task.wait(0.5)
				end
			end)
		else
			handleValue("killSizeOne")
			fallbackUpdateInstanceProperties()
			updateValue()
		end
		secondaryUpdateInstanceProperties()
		return true
	end
	pState.setProtectFriends = function(argument, ...)
		pState.kill.protectFriends = argument == true
		if not pState.kill.protectFriends then
			table.clear(pState.kill.friendCache)
		end
		return true
	end
	pState.clearKillFriend = function(player, ...)
		if player then
			pState.kill.friendCache[player.UserId] = nil
		end
	end
	pState.stopKills = function(...)
		pState.kill.auto = false
		pState.kill.karmaMode = nil
		pState.kill.targetMode = false
		pState.kill.serverHop = false
		handleValue("killFarm")
		handleValue("killSizeOne")
		fallbackUpdateInstanceProperties()
		updateValue()
		handleValue("killServerHop")
		alternateHandler(nil)
		handleInstanceProperties()
	end
end
handler(function(...)
	modeData:Stop(true)
	alternateUpdateInstanceProperties(false)
	sendMuscleEvent("autoWeight", false)
	sendMuscleEvent("autoHandstands", false)
	sendMuscleEvent("autoLift", false)
	sendMuscleEvent("autoSitups", false)
	pState.setAutoEgg(false)
	updateChildAddedConnection(false)
	secondaryUpdateChildAddedConnection(false)
	additionalUpdateInstanceProperties(nil, false)
	updateDescendantAddedConnection(false, true)
	createPart(false)
	sendOpenFortuneWheelRemote(false)
	updateAutoClaimChests(false)
	updateRemovePortals(false)
	updateFastSpeed(false)
	nestedUpdateInstanceProperties(false)
	pState.setAntiKnockback(false)
	updateSteppedConnection(false)
	secondaryUpdateSpin(false)
	updateSpy(false)
	pState.stopKills()
	pState.autoPet = false
	pState.autoAura = false
	handleValue("autoPet")
	handleValue("autoAura")
end)
do
	local condition = parent:FindFirstChild("Young0xFG100Hub")
	if condition then
		condition:Destroy()
	end
end
local function isNumberValid(...)
	local currentCamera = workspace.CurrentCamera
	return currentCamera and currentCamera.ViewportSize or Vector2.new(1280, 720)
end
local function handleNumber(...)
	local vector = isNumberValid()
	local numberCondition = vector.X < 760 or userInputService.TouchEnabled and vector.X < 1100
	if numberCondition then
		return math.floor(
			math.clamp(vector.X * public.Size.MobileWidthScale, public.Size.MinWidth, public.Size.MaxMobileWidth)
		),
			math.floor(
				math.clamp(vector.Y * public.Size.MobileHeightScale, public.Size.MinHeight, public.Size.MaxMobileHeight)
			)
	end
	return public.Size.DesktopWidth, public.Size.DesktopHeight
end
local setMinimizedNumber, sizeNumber = handleNumber()
local positionNumber = 46
local createScrollingFrameNumber = 38
local capturedSizeNumber = positionNumber
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "Young0xFG100Hub"
screenGui.ResetOnSpawn = false
screenGui.IgnoreGuiInset = true
screenGui.DisplayOrder = 1000
screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
pcall(function(...)
	screenGui.AutoLocalize = false
end)
screenGui.Parent = parent
local canvasGroup = Instance.new("CanvasGroup")
canvasGroup.Name = "AnimationRoot"
canvasGroup.AnchorPoint = Vector2.new(0.5, 0.5)
canvasGroup.Size = UDim2.fromOffset(setMinimizedNumber, sizeNumber)
canvasGroup.Position = UDim2.fromScale(0.5, 0.5)
canvasGroup.BackgroundTransparency = 1
canvasGroup.BorderSizePixel = 0
canvasGroup.GroupTransparency = 1
canvasGroup.Parent = screenGui
local secondaryParent = Instance.new("Frame")
secondaryParent.AnchorPoint = Vector2.new(0.5, 0.5)
secondaryParent.Size = UDim2.fromOffset(setMinimizedNumber, sizeNumber)
secondaryParent.Position = UDim2.fromScale(0.5, 0.5)
secondaryParent.BackgroundColor3 = colors.panel
secondaryParent.BackgroundTransparency = 1
secondaryParent.BorderSizePixel = 0
secondaryParent.ZIndex = 1
secondaryParent.Parent = canvasGroup;
(Instance.new("UICorner", secondaryParent)).CornerRadius = UDim.new(0, 15)
local alternateParent = Instance.new("CanvasGroup")
alternateParent.AnchorPoint = Vector2.new(0.5, 0.5)
alternateParent.Size = UDim2.fromOffset(setMinimizedNumber, sizeNumber)
alternateParent.Position = UDim2.fromScale(0.5, 0.5)
alternateParent.BackgroundColor3 = colors.base
alternateParent.BackgroundTransparency = 0.42
alternateParent.BorderSizePixel = 0
alternateParent.ClipsDescendants = true
alternateParent.ZIndex = 2
alternateParent.Parent = canvasGroup;
(Instance.new("UICorner", alternateParent)).CornerRadius = UDim.new(0, 13)
do
	local frame = Instance.new("Frame")
	frame.Size = UDim2.fromScale(1, 1)
	frame.BackgroundColor3 = colors.panel
	frame.BackgroundTransparency = 0.64
	frame.BorderSizePixel = 0
	frame.ZIndex = 4
	frame.Parent = alternateParent
end
local additionalParent = Instance.new("Frame")
additionalParent.AnchorPoint = Vector2.new(0.5, 0.5)
additionalParent.Size = UDim2.fromOffset(setMinimizedNumber, sizeNumber)
additionalParent.Position = UDim2.fromScale(0.5, 0.5)
additionalParent.BackgroundTransparency = 1
additionalParent.BorderSizePixel = 0
additionalParent.ZIndex = 80
additionalParent.Parent = canvasGroup;
(Instance.new("UICorner", additionalParent)).CornerRadius = UDim.new(0, 13)
do
	local parent = Instance.new("UIStroke", additionalParent)
	parent.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	parent.Color = colors.cyan
	parent.Thickness = 2
	parent.Transparency = 0.03
	parent.LineJoinMode = Enum.LineJoinMode.Round
	local uiGradient = Instance.new("UIGradient")
	uiGradient.Color = ColorSequence.new({
		ColorSequenceKeypoint.new(0, colors.cyan),
		ColorSequenceKeypoint.new(0.5, colors.blue),
		ColorSequenceKeypoint.new(1, colors.cyan),
	})
	uiGradient.Parent = parent
end
local textButton
do
	local parent = Instance.new("Frame")
	parent.Size = UDim2.new(1, 0, 0, positionNumber)
	parent.BackgroundColor3 = Color3.fromRGB(10, 73, 94)
	parent.BackgroundTransparency = 0.48
	parent.BorderSizePixel = 0
	parent.ZIndex = 10
	parent.Parent = alternateParent
	local uiGradient = Instance.new("UIGradient")
	uiGradient.Color = ColorSequence.new({
		ColorSequenceKeypoint.new(0, Color3.fromRGB(13, 88, 109)),
		ColorSequenceKeypoint.new(0.5, Color3.fromRGB(8, 60, 82)),
		ColorSequenceKeypoint.new(1, Color3.fromRGB(13, 88, 109)),
	})
	uiGradient.Parent = parent
	local textLabel = Instance.new("TextLabel")
	textLabel.Size = UDim2.new(1, -18, 1, 0)
	textLabel.Position = UDim2.fromOffset(10, 1)
	textLabel.BackgroundTransparency = 1
	textLabel.Text = public.Title
	textLabel.TextColor3 = colors.blue
	textLabel.TextTransparency = 0.58
	textLabel.Font = Enum.Font.FredokaOne
	textLabel.TextSize = 16
	textLabel.TextWrapped = true
	textLabel.ZIndex = 11
	textLabel.Parent = parent
	local secondaryTextLabel = Instance.new("TextLabel")
	secondaryTextLabel.Size = UDim2.new(1, -18, 1, 0)
	secondaryTextLabel.Position = UDim2.fromOffset(9, 0)
	secondaryTextLabel.BackgroundTransparency = 1
	secondaryTextLabel.Text = public.Title
	secondaryTextLabel.TextColor3 = colors.cyan
	secondaryTextLabel.TextStrokeColor3 = colors.panel
	secondaryTextLabel.TextStrokeTransparency = 0.42
	secondaryTextLabel.Font = Enum.Font.FredokaOne
	secondaryTextLabel.TextSize = 16
	secondaryTextLabel.TextWrapped = true
	secondaryTextLabel.ZIndex = 12
	secondaryTextLabel.Parent = parent
	textButton = Instance.new("TextButton")
	textButton.Size = UDim2.fromScale(1, 1)
	textButton.BackgroundTransparency = 1
	textButton.Text = ""
	textButton.AutoButtonColor = false
	textButton.ZIndex = 60
	textButton.Parent = parent
end
local scrollingFrame = Instance.new("ScrollingFrame")
scrollingFrame.Size = UDim2.new(1, 0, 0, createScrollingFrameNumber)
scrollingFrame.Position = UDim2.new(0, 0, 0, positionNumber)
scrollingFrame.BackgroundColor3 = colors.panel
scrollingFrame.BackgroundTransparency = 0.18
scrollingFrame.BorderSizePixel = 0
scrollingFrame.ScrollBarThickness = 0
scrollingFrame.ScrollingDirection = Enum.ScrollingDirection.X
scrollingFrame.CanvasSize = UDim2.new()
scrollingFrame.ZIndex = 10
scrollingFrame.Parent = alternateParent
local uiListLayout = Instance.new("UIListLayout", scrollingFrame)
uiListLayout.FillDirection = Enum.FillDirection.Horizontal
uiListLayout.SortOrder = Enum.SortOrder.LayoutOrder
uiListLayout.Padding = UDim.new(0, 4)
do
	local uiPadding = Instance.new("UIPadding", scrollingFrame)
	uiPadding.PaddingLeft = UDim.new(0, 6)
	uiPadding.PaddingRight = UDim.new(0, 6)
	uiPadding.PaddingTop = UDim.new(0, 4)
	uiPadding.PaddingBottom = UDim.new(0, 4)
end
local fallbackParent = Instance.new("Frame")
fallbackParent.Size = UDim2.new(1, 0, 1, -(positionNumber + createScrollingFrameNumber))
fallbackParent.Position = UDim2.new(0, 0, 0, positionNumber + createScrollingFrameNumber)
fallbackParent.BackgroundTransparency = 1
fallbackParent.ClipsDescendants = true
fallbackParent.ZIndex = 8
fallbackParent.Parent = alternateParent
local pages = {}
local tabs = {}
local layoutOrderData = {}
local function handleLayoutOrder(parent, ...)
	layoutOrderData[parent] = (layoutOrderData[parent] or 0) + 1
	return layoutOrderData[parent]
end
local function updateScrollingFrame(updateScrollingFrameText, ...)
	for key, activeLineContainer in pairs(tabs) do
		local updateScrollingFrameFlag = key == updateScrollingFrameText
		activeLineContainer:SetAttribute("Selected", updateScrollingFrameFlag);
		(tweenService:Create(
			activeLineContainer,
			TweenInfo.new(0.14, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
			{
				["BackgroundTransparency"] = updateScrollingFrameFlag and 0.02 or 0.34,
				["BackgroundColor3"] = updateScrollingFrameFlag and colors.tabOn or colors.tab,
				["TextColor3"] = updateScrollingFrameFlag and colors.white or colors.dim,
			}
		)):Play()
		local uiStroke = activeLineContainer:FindFirstChildOfClass("UIStroke")
		if uiStroke then
			(tweenService:Create(
				uiStroke,
				TweenInfo.new(0.14),
				{
					["Color"] = updateScrollingFrameFlag and colors.cyan or colors.blue,
					["Transparency"] = updateScrollingFrameFlag and 0.05 or 0.52,
				}
			)):Play()
		end
		local activeLine = activeLineContainer:FindFirstChild("ActiveLine")
		if activeLine then
			(tweenService:Create(
				activeLine,
				TweenInfo.new(0.16, Enum.EasingStyle.Quad),
				{
					["Size"] = updateScrollingFrameFlag and UDim2.new(1, -14, 0, 2) or UDim2.fromOffset(0, 2),
					["BackgroundTransparency"] = updateScrollingFrameFlag and 0 or 1,
				}
			)):Play()
		end
	end
	for key, item in pairs(pages) do
		if key == updateScrollingFrameText then
			item.Position = UDim2.fromOffset(7, 0)
			item.Visible = true
			(tweenService:Create(
				item,
				TweenInfo.new(0.16, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
				{ ["Position"] = UDim2.fromOffset(0, 0) }
			)):Play()
		else
			item.Visible = false
		end
	end
end
local function createScrollingFrame(name, secondaryArgument, layoutOrder, ...)
	local parent = Instance.new("ScrollingFrame")
	parent.Name = name
	parent.Size = UDim2.fromScale(1, 1)
	parent.BackgroundTransparency = 1
	parent.BorderSizePixel = 0
	parent.ScrollBarThickness = 3
	parent.ScrollBarImageColor3 = colors.cyan
	parent.ScrollBarImageTransparency = 0.08
	parent.CanvasSize = UDim2.new()
	parent.Visible = false
	parent.ZIndex = 9
	parent.Parent = fallbackParent
	pages[name] = parent
	local uiListLayout = Instance.new("UIListLayout", parent)
	uiListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	uiListLayout.Padding = UDim.new(0, 3)
	local uiPadding = Instance.new("UIPadding", parent)
	uiPadding.PaddingLeft = UDim.new(0, 8)
	uiPadding.PaddingRight = UDim.new(0, 8)
	uiPadding.PaddingTop = UDim.new(0, 7)
	uiPadding.PaddingBottom = UDim.new(0, 8)
	handleFrame((uiListLayout:GetPropertyChangedSignal("AbsoluteContentSize")):Connect(function(...)
		parent.CanvasSize =
			UDim2.fromOffset(0, uiListLayout.AbsoluteContentSize.Y + (parent:GetAttribute("TightCanvas") and 4 or 15))
	end))
	local textButton = Instance.new("TextButton")
	textButton.Name = name
	textButton.Size = UDim2.fromOffset(secondaryArgument, createScrollingFrameNumber - 8)
	textButton.BackgroundColor3 = colors.tab
	textButton.BackgroundTransparency = 0.28
	textButton.BorderSizePixel = 0
	textButton.Text = name
	textButton.TextColor3 = colors.soft
	textButton.Font = Enum.Font.FredokaOne
	textButton.TextSize = 11
	textButton.TextWrapped = true
	textButton.AutoButtonColor = false
	textButton.LayoutOrder = layoutOrder
	textButton.ZIndex = 12
	textButton.Parent = scrollingFrame;
	(Instance.new("UICorner", textButton)).CornerRadius = UDim.new(0, 7)
	local uiStroke = Instance.new("UIStroke", textButton)
	uiStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	uiStroke.Color = colors.blue
	uiStroke.Thickness = 1
	uiStroke.Transparency = 0.52
	local frame = Instance.new("Frame")
	frame.Name = "ActiveLine"
	frame.AnchorPoint = Vector2.new(0.5, 1)
	frame.Size = UDim2.fromOffset(0, 2)
	frame.Position = UDim2.new(0.5, 0, 1, -2)
	frame.BackgroundColor3 = colors.cyan
	frame.BackgroundTransparency = 1
	frame.BorderSizePixel = 0
	frame.ZIndex = 13
	frame.Parent = textButton;
	(Instance.new("UICorner", frame)).CornerRadius = UDim.new(1, 0)
	handleFrame(textButton.Activated:Connect(function(...)
		updateScrollingFrame(name)
	end))
	handleFrame(textButton.MouseEnter:Connect(function(...)
		if not textButton:GetAttribute("Selected") then
			(tweenService:Create(
				textButton,
				TweenInfo.new(0.1),
				{ ["BackgroundColor3"] = colors.rowHover, ["BackgroundTransparency"] = 0.18 }
			)):Play()
		end
	end))
	handleFrame(textButton.MouseLeave:Connect(function(...)
		if not textButton:GetAttribute("Selected") then
			(tweenService:Create(
				textButton,
				TweenInfo.new(0.1),
				{ ["BackgroundColor3"] = colors.tab, ["BackgroundTransparency"] = 0.34 }
			)):Play()
		end
	end))
	tabs[name] = textButton
	return parent
end
for layoutOrder, item in ipairs(public.Tabs) do
	createScrollingFrame(item[1], item[2], layoutOrder)
end
handleFrame((uiListLayout:GetPropertyChangedSignal("AbsoluteContentSize")):Connect(function(...)
	scrollingFrame.CanvasSize = UDim2.fromOffset(uiListLayout.AbsoluteContentSize.X + 14, 0)
end))
do
	local parent = Instance.new("Frame")
	parent.Size = UDim2.fromOffset(34, createScrollingFrameNumber)
	parent.Position = UDim2.new(1, -34, 0, positionNumber)
	parent.BackgroundColor3 = colors.panel
	parent.BackgroundTransparency = 0.04
	parent.BorderSizePixel = 0
	parent.Active = false
	parent.Selectable = false
	parent.ZIndex = 24
	parent.Visible = false
	parent.Parent = alternateParent
	local uiGradient = Instance.new("UIGradient")
	uiGradient.Transparency = NumberSequence.new({
		NumberSequenceKeypoint.new(0, 1),
		NumberSequenceKeypoint.new(0.46, 0.24),
		NumberSequenceKeypoint.new(1, 0),
	})
	uiGradient.Parent = parent
	local textLabel = Instance.new("TextLabel")
	textLabel.Size = UDim2.new(0, 18, 1, 0)
	textLabel.Position = UDim2.new(1, -20, 0, 0)
	textLabel.BackgroundTransparency = 1
	textLabel.Text = "\226\128\186"
	textLabel.TextColor3 = colors.cyan
	textLabel.TextStrokeColor3 = colors.panel
	textLabel.TextStrokeTransparency = 0.35
	textLabel.Font = Enum.Font.FredokaOne
	textLabel.TextSize = 22
	textLabel.Active = false
	textLabel.Selectable = false
	textLabel.ZIndex = 25
	textLabel.Parent = parent
	local function updateVisible(...)
		local updateVisibleNumber =
			math.max(0, (uiListLayout.AbsoluteContentSize.X + 14) - scrollingFrame.AbsoluteSize.X)
		parent.Visible = updateVisibleNumber > 5 and scrollingFrame.CanvasPosition.X < updateVisibleNumber - 4
	end
	handleFrame((scrollingFrame:GetPropertyChangedSignal("CanvasPosition")):Connect(updateVisible))
	handleFrame((scrollingFrame:GetPropertyChangedSignal("AbsoluteSize")):Connect(updateVisible))
	handleFrame((uiListLayout:GetPropertyChangedSignal("AbsoluteContentSize")):Connect(function(...)
		task.defer(updateVisible)
	end))
	task.defer(updateVisible)
end
local function createFrame(secondaryParent, createFrameText, ...)
	local parent = Instance.new("Frame")
	parent.Size = UDim2.new(1, 0, 0, 22)
	parent.BackgroundTransparency = 1
	parent.BorderSizePixel = 0
	parent.LayoutOrder = handleLayoutOrder(secondaryParent)
	parent.ZIndex = 11
	parent.Parent = secondaryParent
	local textLabel = Instance.new("TextLabel")
	textLabel.AutomaticSize = Enum.AutomaticSize.X
	textLabel.Size = UDim2.fromOffset(0, 22)
	textLabel.BackgroundTransparency = 1
	textLabel.Text = createFrameText
	textLabel.TextColor3 = colors.cyan
	textLabel.Font = Enum.Font.FredokaOne
	textLabel.TextSize = 13
	textLabel.TextXAlignment = Enum.TextXAlignment.Left
	textLabel.ZIndex = 11
	textLabel.Parent = parent
	local frame = Instance.new("Frame")
	frame.AnchorPoint = Vector2.new(0, 0.5)
	frame.BackgroundColor3 = colors.cyan
	frame.BackgroundTransparency = 0.46
	frame.BorderSizePixel = 0
	frame.ZIndex = 11
	frame.Parent = parent
	local uiGradient = Instance.new("UIGradient")
	uiGradient.Transparency =
		NumberSequence.new({ NumberSequenceKeypoint.new(0, 0.12), NumberSequenceKeypoint.new(1, 1) })
	uiGradient.Parent = frame
	task.defer(function(...)
		if parent.Parent and textLabel.Parent then
			local createFrameNumber = math.ceil(textLabel.TextBounds.X) + 10
			frame.Position = UDim2.fromOffset(createFrameNumber, 11)
			frame.Size = UDim2.new(1, -createFrameNumber - 2, 0, 1)
		end
	end)
	return textLabel
end
local function createUiCorner(parent, createUiCornerFlag, ...)
	parent.Size = UDim2.new(1, 0, 0, createUiCornerFlag or 38)
	parent.BackgroundColor3 = colors.row
	parent.BackgroundTransparency = 0.1
	parent.BorderSizePixel = 0
	parent.ZIndex = 11
	(Instance.new("UICorner", parent)).CornerRadius = UDim.new(0, 8)
	local uiStroke = Instance.new("UIStroke", parent)
	uiStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	uiStroke.Color = colors.blue
	uiStroke.Thickness = 1
	uiStroke.Transparency = 0.4
	return uiStroke
end
local function createStatusDot(
	secondaryParent,
	createStatusDotText,
	flag,
	createStatusDotFlag,
	condition,
	createStatusDotCondition,
	...
)
	local parent = Instance.new("Frame")
	parent.LayoutOrder = handleLayoutOrder(secondaryParent)
	parent.Parent = secondaryParent
	createUiCorner(parent, 34)
	if createStatusDotCondition then
		local frame = Instance.new("Frame")
		frame.Size = UDim2.fromOffset(3, 20)
		frame.Position = UDim2.new(0, 8, 0.5, -10)
		frame.BackgroundColor3 = colors.cyan
		frame.BackgroundTransparency = 0.1
		frame.BorderSizePixel = 0
		frame.ZIndex = 12
		frame.Parent = parent;
		(Instance.new("UICorner", frame)).CornerRadius = UDim.new(1, 0)
	end
	local textLabel = Instance.new("TextLabel")
	textLabel.Size = UDim2.new(0.42, -10, 1, 0)
	textLabel.Position = UDim2.fromOffset(createStatusDotCondition and 20 or 11, 0)
	textLabel.BackgroundTransparency = 1
	textLabel.Text = createStatusDotText
	textLabel.TextColor3 = colors.dim
	textLabel.Font = Enum.Font.FredokaOne
	textLabel.TextSize = 11
	textLabel.TextXAlignment = Enum.TextXAlignment.Left
	textLabel.ZIndex = 12
	textLabel.Parent = parent
	local secondaryTextLabel = Instance.new("TextLabel")
	secondaryTextLabel.Size = UDim2.new(0.58, -12, 1, 0)
	secondaryTextLabel.Position = UDim2.new(0.42, 0, 0, 0)
	if condition then
		secondaryTextLabel.Size = UDim2.new(0.58, -30, 1, 0)
	end
	secondaryTextLabel.BackgroundTransparency = 1
	secondaryTextLabel.Text = tostring(flag or "-")
	secondaryTextLabel.TextColor3 = createStatusDotFlag or colors.white
	secondaryTextLabel.Font = Enum.Font.FredokaOne
	secondaryTextLabel.TextSize = 11
	secondaryTextLabel.TextWrapped = true
	secondaryTextLabel.TextXAlignment = Enum.TextXAlignment.Right
	secondaryTextLabel.ZIndex = 12
	secondaryTextLabel.Parent = parent
	local frame
	if condition then
		frame = Instance.new("Frame")
		frame.Name = "StatusDot"
		frame.AnchorPoint = Vector2.new(0.5, 0.5)
		frame.Size = UDim2.fromOffset(7, 7)
		frame.Position = UDim2.new(1, -13, 0.5, 0)
		frame.BackgroundColor3 = createStatusDotFlag or colors.green
		frame.BorderSizePixel = 0
		frame.ZIndex = 13
		frame.Parent = parent;
		(Instance.new("UICorner", frame)).CornerRadius = UDim.new(1, 0)
		local uiStroke = Instance.new("UIStroke", frame)
		uiStroke.Color = createStatusDotFlag or colors.green
		uiStroke.Thickness = 2
		uiStroke.Transparency = 0.58
	end
	return secondaryTextLabel, parent, textLabel, frame
end
local function handleInstance(parent, createStatusDotFlag, ...)
	local instanceResult = createStatusDot(parent, "Estado", createStatusDotFlag, colors.green)
	return instanceResult
end
local function createTextButton(
	secondaryParent,
	createTextButton,
	tertiaryArgument,
	createTextButtonFlag,
	backgroundColor3,
	...
)
	local parent = Instance.new("TextButton")
	parent.LayoutOrder = handleLayoutOrder(secondaryParent)
	parent.Text = createTextButton
	parent.TextColor3 = colors.white
	parent.Font = Enum.Font.FredokaOne
	parent.TextSize = 12
	parent.AutoButtonColor = false
	parent.Parent = secondaryParent
	local createTextButtonResult = createUiCorner(parent, 38)
	parent.BackgroundColor3 = createTextButtonFlag or colors.row
	handleFrame(parent.Activated:Connect(function(...)
		if backgroundColor3 then
			parent.BackgroundColor3 = backgroundColor3
		end
		pcall(tertiaryArgument, parent)
	end))
	handleFrame(parent.MouseEnter:Connect(function(...)
		(
			tweenService:Create(
				parent,
				TweenInfo.new(0.1),
				{ ["BackgroundColor3"] = backgroundColor3 or colors.rowHover }
			)
		):Play();
		(tweenService:Create(
			createTextButtonResult,
			TweenInfo.new(0.1),
			{ ["Transparency"] = 0.18, ["Color"] = colors.cyan }
		)):Play()
	end))
	handleFrame(parent.MouseLeave:Connect(function(...)
		(tweenService:Create(parent, TweenInfo.new(0.1), { ["BackgroundColor3"] = createTextButtonFlag or colors.row })):Play();
		(tweenService:Create(
			createTextButtonResult,
			TweenInfo.new(0.1),
			{ ["Transparency"] = 0.4, ["Color"] = colors.blue }
		)):Play()
	end))
	return parent
end
local function secondaryCreateTextButton(additionalParent, createTextButton, tertiaryArgument, ...)
	local parent = Instance.new("TextButton")
	parent.LayoutOrder = handleLayoutOrder(additionalParent)
	parent.Text = ""
	parent.AutoButtonColor = false
	parent.Parent = additionalParent
	local createTextButtonResult = createUiCorner(parent, 40)
	local frame = Instance.new("Frame")
	frame.Size = UDim2.fromOffset(3, 24)
	frame.Position = UDim2.new(0, 8, 0.5, -12)
	frame.BackgroundColor3 = colors.cyan
	frame.BackgroundTransparency = 0.1
	frame.BorderSizePixel = 0
	frame.ZIndex = 12
	frame.Parent = parent;
	(Instance.new("UICorner", frame)).CornerRadius = UDim.new(1, 0)
	local textLabel = Instance.new("TextLabel")
	textLabel.Size = UDim2.new(1, -72, 1, 0)
	textLabel.Position = UDim2.fromOffset(20, 0)
	textLabel.BackgroundTransparency = 1
	textLabel.Text = createTextButton
	textLabel.TextColor3 = colors.white
	textLabel.Font = Enum.Font.FredokaOne
	textLabel.TextSize = 12
	textLabel.TextWrapped = true
	textLabel.TextXAlignment = Enum.TextXAlignment.Left
	textLabel.ZIndex = 12
	textLabel.Parent = parent
	local secondaryParent = Instance.new("Frame")
	secondaryParent.Size = UDim2.fromOffset(40, 20)
	secondaryParent.Position = UDim2.new(1, -50, 0.5, -10)
	secondaryParent.BackgroundColor3 = Color3.fromRGB(14, 51, 78)
	secondaryParent.BackgroundTransparency = 0.12
	secondaryParent.BorderSizePixel = 0
	secondaryParent.ZIndex = 12
	secondaryParent.Parent = parent;
	(Instance.new("UICorner", secondaryParent)).CornerRadius = UDim.new(1, 0)
	local alternateParent = Instance.new("Frame")
	alternateParent.Size = UDim2.fromOffset(14, 14)
	alternateParent.Position = UDim2.fromOffset(3, 3)
	alternateParent.BackgroundColor3 = colors.soft
	alternateParent.BorderSizePixel = 0
	alternateParent.ZIndex = 13
	alternateParent.Parent = secondaryParent;
	(Instance.new("UICorner", alternateParent)).CornerRadius = UDim.new(1, 0)
	local createTextButtonFlag = false
	local textButtonFlag = false
	local createTextButtonData = {}
	createTextButtonData.Button = parent
	local function handleTextButton(...)
		(tweenService:Create(
			secondaryParent,
			TweenInfo.new(0.14, Enum.EasingStyle.Quad),
			{
				["BackgroundColor3"] = textButtonFlag and Color3.fromRGB(28, 42, 55)
					or createTextButtonFlag and colors.blue
					or Color3.fromRGB(14, 51, 78),
			}
		)):Play();
		(tweenService:Create(
			alternateParent,
			TweenInfo.new(0.14, Enum.EasingStyle.Quad),
			{
				["Position"] = createTextButtonFlag and UDim2.fromOffset(23, 3) or UDim2.fromOffset(3, 3),
				["BackgroundColor3"] = createTextButtonFlag and colors.white or colors.soft,
				["BackgroundTransparency"] = textButtonFlag and 0.48 or 0,
			}
		)):Play();
		(tweenService:Create(
			createTextButtonResult,
			TweenInfo.new(0.14),
			{
				["Color"] = textButtonFlag and colors.dim or createTextButtonFlag and colors.cyan or colors.blue,
				["Transparency"] = textButtonFlag and 0.82 or createTextButtonFlag and 0.08 or 0.4,
			}
		)):Play();
		(tweenService:Create(
			textLabel,
			TweenInfo.new(0.14),
			{
				["TextColor3"] = textButtonFlag and colors.dim or colors.white,
				["TextTransparency"] = textButtonFlag and 0.42 or 0,
			}
		)):Play();
		(tweenService:Create(
			frame,
			TweenInfo.new(0.14),
			{ ["BackgroundTransparency"] = textButtonFlag and 0.72 or 0.1 }
		)):Play();
		(tweenService:Create(
			parent,
			TweenInfo.new(0.14),
			{ ["BackgroundTransparency"] = textButtonFlag and 0.48 or 0.1 }
		)):Play()
	end
	function createTextButtonData.Set(createTextButtonArgument, flag, secondaryCreateTextButtonFlag, ...)
		flag = flag == true
		if textButtonFlag and flag then
			return false
		end
		if createTextButtonFlag == flag then
			return createTextButtonFlag
		end
		createTextButtonFlag = flag
		if not secondaryCreateTextButtonFlag then
			local success, result = pcall(tertiaryArgument, createTextButtonFlag)
			if not success or result == false then
				createTextButtonFlag = not createTextButtonFlag
			end
		end
		handleTextButton()
		return createTextButtonFlag
	end
	function createTextButtonData.Get(createTextButtonArgument, ...)
		return createTextButtonFlag
	end
	function createTextButtonData.SetLocked(createTextButtonArgument, secondaryArgument, ...)
		textButtonFlag = secondaryArgument == true
		if textButtonFlag and createTextButtonFlag then
			createTextButtonFlag = false
			pcall(tertiaryArgument, false)
		end
		handleTextButton()
	end
	function createTextButtonData.IsLocked(createTextButtonArgument, ...)
		return textButtonFlag
	end
	handleFrame(parent.Activated:Connect(function(...)
		if not textButtonFlag then
			createTextButtonData:Set(not createTextButtonFlag)
		end
	end))
	handleFrame(parent.MouseEnter:Connect(function(...)
		if not textButtonFlag then
			(tweenService:Create(parent, TweenInfo.new(0.1), { ["BackgroundColor3"] = colors.rowHover })):Play()
		end
	end))
	handleFrame(parent.MouseLeave:Connect(function(...)
		(tweenService:Create(parent, TweenInfo.new(0.1), { ["BackgroundColor3"] = colors.row })):Play()
	end))
	handleTextButton()
	return createTextButtonData, parent
end
local function secondaryCreateFrame(
	secondaryParent,
	createFrameText,
	createFrameData,
	updateTextFlag,
	createFrameFlag,
	...
)
	local parent = Instance.new("Frame")
	parent.LayoutOrder = handleLayoutOrder(secondaryParent)
	parent.Parent = secondaryParent
	parent.ClipsDescendants = true
	createUiCorner(parent, 46)
	local textButton = Instance.new("TextButton")
	textButton.Size = UDim2.new(1, 0, 0, 46)
	textButton.BackgroundTransparency = 1
	textButton.BorderSizePixel = 0
	textButton.Text = ""
	textButton.AutoButtonColor = false
	textButton.ZIndex = 13
	textButton.Parent = parent
	local textLabel = Instance.new("TextLabel")
	textLabel.Size = UDim2.new(0.42, -12, 1, 0)
	textLabel.Position = UDim2.fromOffset(11, 0)
	textLabel.BackgroundTransparency = 1
	textLabel.Text = createFrameText
	textLabel.TextColor3 = colors.soft
	textLabel.Font = Enum.Font.FredokaOne
	textLabel.TextSize = 11
	textLabel.TextXAlignment = Enum.TextXAlignment.Left
	textLabel.ZIndex = 14
	textLabel.Parent = textButton
	local secondaryTextLabel = Instance.new("TextLabel")
	secondaryTextLabel.Size = UDim2.new(0.58, -34, 1, 0)
	secondaryTextLabel.Position = UDim2.new(0.42, 0, 0, 0)
	secondaryTextLabel.BackgroundTransparency = 1
	secondaryTextLabel.TextColor3 = colors.white
	secondaryTextLabel.Font = Enum.Font.FredokaOne
	secondaryTextLabel.TextSize = 11
	secondaryTextLabel.TextWrapped = true
	secondaryTextLabel.TextXAlignment = Enum.TextXAlignment.Right
	secondaryTextLabel.ZIndex = 14
	secondaryTextLabel.Parent = textButton
	local valueLabel = Instance.new("TextLabel")
	valueLabel.Size = UDim2.fromOffset(24, 46)
	valueLabel.Position = UDim2.new(1, -28, 0, 0)
	valueLabel.BackgroundTransparency = 1
	valueLabel.Text = "\226\140\132"
	valueLabel.TextColor3 = colors.cyan
	valueLabel.Font = Enum.Font.FredokaOne
	valueLabel.TextSize = 16
	valueLabel.ZIndex = 14
	valueLabel.Parent = textButton
	local scrollingFrame = Instance.new("ScrollingFrame")
	scrollingFrame.Size = UDim2.new(1, -12, 0, 0)
	scrollingFrame.Position = UDim2.fromOffset(6, 46)
	scrollingFrame.BackgroundColor3 = colors.base
	scrollingFrame.BackgroundTransparency = 0.12
	scrollingFrame.BorderSizePixel = 0
	scrollingFrame.ScrollBarThickness = 2
	scrollingFrame.ScrollBarImageColor3 = colors.cyan
	scrollingFrame.CanvasSize = UDim2.new()
	scrollingFrame.Visible = false
	scrollingFrame.ZIndex = 14
	scrollingFrame.Parent = parent;
	(Instance.new("UICorner", scrollingFrame)).CornerRadius = UDim.new(0, 6)
	local uiListLayout = Instance.new("UIListLayout", scrollingFrame)
	uiListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	uiListLayout.Padding = UDim.new(0, 2)
	local uiPadding = Instance.new("UIPadding", scrollingFrame)
	uiPadding.PaddingTop = UDim.new(0, 3)
	uiPadding.PaddingBottom = UDim.new(0, 3)
	uiPadding.PaddingLeft = UDim.new(0, 3)
	uiPadding.PaddingRight = UDim.new(0, 3)
	local openData = { ["values"] = createFrameData or {}, ["index"] = 1, ["open"] = false }
	local function isCreateFrameValid(item, ...)
		return item and tostring(type(item) == "table" and (item.label or item.name or item[1]) or item)
			or "Sin opciones"
	end
	local function getTextIndex(...)
		return openData.values[openData.index]
	end
	local function updateFrame(createFrameFlag, ...)
		local item = getTextIndex()
		secondaryTextLabel.Text = isCreateFrameValid(item)
		if createFrameFlag and updateTextFlag then
			pcall(updateTextFlag, item)
		end
	end
	local function updateTextButton(createFrameArgument, ...)
		openData.open = createFrameArgument == true and #openData.values > 0
		local createFrameNumber = math.min(#openData.values, 5) * 30 + 6
		scrollingFrame.Visible = openData.open
		scrollingFrame.Size = UDim2.new(1, -12, 0, openData.open and createFrameNumber or 0)
		parent.Size = UDim2.new(1, 0, 0, 46 + (openData.open and createFrameNumber or 0))
		if openData.open and createFrameFlag then
			task.defer(createFrameFlag, parent)
		end
		valueLabel.Text = openData.open and "\226\140\131" or "\226\140\132"
	end
	local function createTextButton(...)
		for index, item in ipairs(scrollingFrame:GetChildren()) do
			if item:IsA("TextButton") then
				item:Destroy()
			end
		end
		for index, item in ipairs(openData.values) do
			local parent = Instance.new("TextButton")
			parent.Size = UDim2.new(1, -6, 0, 28)
			parent.BackgroundColor3 = index == openData.index and colors.tabOn or colors.row
			parent.BackgroundTransparency = index == openData.index and 0.08 or 0.22
			parent.BorderSizePixel = 0
			parent.Text = isCreateFrameValid(item)
			parent.TextColor3 = colors.white
			parent.Font = Enum.Font.FredokaOne
			parent.TextSize = 11
			parent.TextWrapped = true
			parent.AutoButtonColor = false
			parent.LayoutOrder = index
			parent.ZIndex = 15
			parent.Parent = scrollingFrame;
			(Instance.new("UICorner", parent)).CornerRadius = UDim.new(0, 5)
			handleFrame(parent.Activated:Connect(function(...)
				openData.index = index
				updateFrame(true)
				updateTextButton(false)
				createTextButton()
			end))
			handleFrame(parent.MouseEnter:Connect(function(...)
				(tweenService:Create(
					parent,
					TweenInfo.new(0.08),
					{
						["BackgroundColor3"] = index == openData.index and colors.tabOn or colors.rowHover,
						["BackgroundTransparency"] = 0.06,
					}
				)):Play()
			end))
			handleFrame(parent.MouseLeave:Connect(function(...)
				(tweenService:Create(
					parent,
					TweenInfo.new(0.08),
					{
						["BackgroundColor3"] = index == openData.index and colors.tabOn or colors.row,
						["BackgroundTransparency"] = index == openData.index and 0.08 or 0.22,
					}
				)):Play()
			end))
		end
		scrollingFrame.CanvasSize = UDim2.fromOffset(0, #openData.values * 30 + 6)
	end
	function openData.Get(createFrameArgument, ...)
		return getTextIndex()
	end
	function openData.SetValues(createFrameArgument, valuesFlag, createFrameFlag, ...)
		local createFrameCondition = createFrameFlag and getTextIndex() or nil
		openData.values = valuesFlag or {}
		openData.index = 1
		if createFrameCondition then
			for index, item in ipairs(openData.values) do
				local createFrameFlag = item == createFrameCondition
				if type(item) == "table" and type(createFrameCondition) == "table" then
					createFrameFlag = item.userId and item.userId == createFrameCondition.userId
						or item.name and item.name == createFrameCondition.name
				end
				if createFrameFlag then
					openData.index = index
					break
				end
			end
		end
		createTextButton()
		updateTextButton(false)
		updateFrame(true)
	end
	function openData.SetIndex(createFrameArgument, createFrameNumber, ...)
		if #openData.values == 0 then
			openData.index = 1
		else
			openData.index = (createFrameNumber - 1) % #openData.values + 1
		end
		createTextButton()
		updateTextButton(false)
		updateFrame(true)
	end
	handleFrame(textButton.Activated:Connect(function(...)
		updateTextButton(not openData.open)
	end))
	handleFrame(textButton.MouseEnter:Connect(function(...)
		(tweenService:Create(parent, TweenInfo.new(0.1), { ["BackgroundColor3"] = colors.rowHover })):Play()
	end))
	handleFrame(textButton.MouseLeave:Connect(function(...)
		(tweenService:Create(parent, TweenInfo.new(0.1), { ["BackgroundColor3"] = colors.row })):Play()
	end))
	createTextButton()
	updateFrame(true)
	return openData, secondaryTextLabel
end
local function alternateCreateFrame(secondaryParent, createFrameText, placeholderText, quaternaryArgument, ...)
	local parent = Instance.new("Frame")
	parent.LayoutOrder = handleLayoutOrder(secondaryParent)
	parent.Parent = secondaryParent
	createUiCorner(parent, 48)
	local textLabel = Instance.new("TextLabel")
	textLabel.Size = UDim2.new(0.42, -12, 1, 0)
	textLabel.Position = UDim2.fromOffset(11, 0)
	textLabel.BackgroundTransparency = 1
	textLabel.Text = createFrameText
	textLabel.TextColor3 = colors.soft
	textLabel.Font = Enum.Font.FredokaOne
	textLabel.TextSize = 11
	textLabel.TextXAlignment = Enum.TextXAlignment.Left
	textLabel.ZIndex = 12
	textLabel.Parent = parent
	local textBox = Instance.new("TextBox")
	textBox.Size = UDim2.new(0.58, -12, 0, 30)
	textBox.Position = UDim2.new(0.42, 0, 0.5, -15)
	textBox.BackgroundColor3 = colors.panel
	textBox.BackgroundTransparency = 0.08
	textBox.BorderSizePixel = 0
	textBox.PlaceholderText = placeholderText
	textBox.PlaceholderColor3 = colors.dim
	textBox.Text = ""
	textBox.TextColor3 = colors.white
	textBox.Font = Enum.Font.FredokaOne
	textBox.TextSize = 11
	textBox.ClearTextOnFocus = false
	textBox.ZIndex = 12
	textBox.Parent = parent;
	(Instance.new("UICorner", textBox)).CornerRadius = UDim.new(0, 6)
	handleFrame(textBox.FocusLost:Connect(function(...)
		pcall(quaternaryArgument, textBox.Text)
	end))
	return textBox
end
local function updatePositionFromInput(
	secondaryParent,
	text,
	secondaryUpdateTextNumber,
	number,
	secondaryNumber,
	additionalArgument,
	...
)
	local parent = Instance.new("Frame")
	parent.LayoutOrder = handleLayoutOrder(secondaryParent)
	parent.Parent = secondaryParent
	createUiCorner(parent, 50)
	local textLabel = Instance.new("TextLabel")
	textLabel.Size = UDim2.new(1, -20, 0, 20)
	textLabel.Position = UDim2.fromOffset(10, 2)
	textLabel.BackgroundTransparency = 1
	textLabel.TextColor3 = colors.white
	textLabel.Font = Enum.Font.FredokaOne
	textLabel.TextSize = 11
	textLabel.TextXAlignment = Enum.TextXAlignment.Left
	textLabel.ZIndex = 12
	textLabel.Parent = parent
	local textButton = Instance.new("TextButton")
	textButton.Size = UDim2.new(1, -20, 0, 10)
	textButton.Position = UDim2.fromOffset(10, 31)
	textButton.BackgroundColor3 = Color3.fromRGB(8, 53, 84)
	textButton.BorderSizePixel = 0
	textButton.Text = ""
	textButton.AutoButtonColor = false
	textButton.ZIndex = 12
	textButton.Parent = parent;
	(Instance.new("UICorner", textButton)).CornerRadius = UDim.new(1, 0)
	local frame = Instance.new("Frame")
	frame.Size = UDim2.fromScale(0, 1)
	frame.BackgroundColor3 = colors.cyan
	frame.BorderSizePixel = 0
	frame.ZIndex = 13
	frame.Parent = textButton;
	(Instance.new("UICorner", frame)).CornerRadius = UDim.new(1, 0)
	local clampedValue = math.clamp(math.floor(secondaryNumber), secondaryUpdateTextNumber, number)
	local flag = false
	local function updateText(updateText, ...)
		clampedValue = math.clamp(math.floor(updateText + 0.5), secondaryUpdateTextNumber, number)
		local updateTextNumber = (clampedValue - secondaryUpdateTextNumber) / (number - secondaryUpdateTextNumber)
		textLabel.Text = text .. (": " .. (clampedValue .. ("/" .. number)));
		(tweenService:Create(frame, TweenInfo.new(0.08), { ["Size"] = UDim2.fromScale(updateTextNumber, 1) })):Play()
		pcall(additionalArgument, clampedValue)
	end
	local function handler(secondaryNumber, ...)
		local clampedValue =
			math.clamp((secondaryNumber - textButton.AbsolutePosition.X) / math.max(textButton.AbsoluteSize.X, 1), 0, 1)
		updateText(secondaryUpdateTextNumber + (number - secondaryUpdateTextNumber) * clampedValue)
	end
	handleFrame(textButton.InputBegan:Connect(function(input, ...)
		if
			input.UserInputType == Enum.UserInputType.MouseButton1
			or input.UserInputType == Enum.UserInputType.Touch
		then
			flag = true
			handler(input.Position.X)
		end
	end))
	handleFrame(userInputService.InputChanged:Connect(function(input, ...)
		if
			flag
			and (
				input.UserInputType == Enum.UserInputType.MouseMovement
				or input.UserInputType == Enum.UserInputType.Touch
			)
		then
			handler(input.Position.X)
		end
	end))
	handleFrame(userInputService.InputEnded:Connect(function(input, ...)
		if
			input.UserInputType == Enum.UserInputType.MouseButton1
			or input.UserInputType == Enum.UserInputType.Touch
		then
			flag = false
		end
	end))
	updateText(clampedValue)
	return {
		["Get"] = function(...)
			return clampedValue
		end,
		["Set"] = updateText,
	}
end
do
	local parent = pages.Info
	createFrame(parent, "\240\159\145\164 Info Player \240\159\145\164")
	createStatusDot(parent, "User:", backpackContainer.DisplayName, colors.white)
	local textResult, statusDotContainer = createStatusDot(parent, "FPS:", "0", colors.green, true)
	local statusDot = statusDotContainer:FindFirstChild("StatusDot")
	local displayValue = isSendGiftRemoteCachedPingValid()
	local option = displayValue <= 70 and colors.green or displayValue <= 160 and colors.orange or colors.red
	local secondaryTextResult, secondaryStatusDotContainer =
		createStatusDot(parent, "Ping:", tostring(displayValue) .. " ms", option, true)
	local secondaryStatusDot = secondaryStatusDotContainer:FindFirstChild("StatusDot")
	createFrame(parent, "\240\159\140\144 Info Server \240\159\140\144")
	createStatusDot(parent, "Game:", "Muscle Legends", colors.cyan)
	local alternateTextResult = createStatusDot(parent, "Server Players:", "0/0", colors.white)
	createFrame(parent, "\226\154\161 Info Szoo \226\154\161")
	createStatusDot(parent, "Script:", "Fast Glitch 100%", colors.cyan)
	createStatusDot(parent, "Autor:", "V.Roy", colors.white)
	createTextButton(parent, "Szoo's server!!", function(instance, ...)
		local text = instance.Text
		instance.Text = additionalHandler(public.Discord) and "Link copiado" or text
		task.delay(1.1, function(...)
			if instance and instance.Parent then
				instance.Text = text
			end
		end)
	end)
	createTextButton(parent, "YouTube", function(instance, ...)
		local text = instance.Text
		instance.Text = additionalHandler(public.YouTube) and "Link copiado" or text
		task.delay(1.1, function(...)
			if instance and instance.Parent then
				instance.Text = text
			end
		end)
	end)
	local sum = 0
	handleFrame(runService.RenderStepped:Connect(function(...)
		sum = sum + 1
	end))
	handleSendGiftRemote("infoUpdater", function(...)
		local number = tick()
		while pState.running do
			task.wait(1)
			local tickResult = tick()
			local secondarySum = sum
			sum = 0
			local secondaryNumber = math.floor(secondarySum / math.max(tickResult - number, 0.001) + 0.5)
			local backgroundColor3 = secondaryNumber >= 55 and colors.green
				or secondaryNumber >= 30 and colors.orange
				or colors.red
			textResult.Text = tostring(secondaryNumber)
			textResult.TextColor3 = backgroundColor3
			if statusDot then
				statusDot.BackgroundColor3 = backgroundColor3
				local uiStroke = statusDot:FindFirstChildOfClass("UIStroke")
				if uiStroke then
					uiStroke.Color = backgroundColor3
				end
			end
			number = tickResult
			local displayValue = isSendGiftRemoteCachedPingValid()
			local color = displayValue <= 70 and colors.green or displayValue <= 160 and colors.orange or colors.red
			secondaryTextResult.Text = tostring(displayValue) .. " ms"
			secondaryTextResult.TextColor3 = color
			if secondaryStatusDot then
				secondaryStatusDot.BackgroundColor3 = color
				local uiStroke = secondaryStatusDot:FindFirstChildOfClass("UIStroke")
				if uiStroke then
					uiStroke.Color = color
				end
			end
			alternateTextResult.Text = tostring(#players:GetPlayers()) .. ("/" .. tostring(players.MaxPlayers))
		end
	end)
end
do
	local parent = pages.Main
	createFrame(parent, "MAIN")
	local updateInstancePropertiesCondition
	local updateInstancePropertiesFlag
	local flag = false
	local sum = 0
	local function updateInstanceProperties(...)
		local numberText = (tostring(
			updateInstancePropertiesCondition and updateInstancePropertiesCondition.Text or pState.mainSize
		)):gsub(",", ".")
		local updateInstancePropertiesNumber = tonumber(numberText)
		local mainSize = math.clamp(math.floor((updateInstancePropertiesNumber or pState.mainSize or 1) + 0.5), 1, 100)
		pState.mainSize = mainSize
		if updateInstancePropertiesCondition then
			updateInstancePropertiesCondition.Text = tostring(mainSize)
		end
		return mainSize
	end
	local function secondaryHandler(...)
		local rEvents = replicatedStorage:FindFirstChild("rEvents")
		local option = rEvents and rEvents:FindFirstChild("changeSpeedSizeRemote")
		if not option or flag then
			return
		end
		local result = updateInstanceProperties()
		flag = true
		sum = sum + 1
		local capturedSum = sum
		task.spawn(function(...)
			if option:IsA("RemoteEvent") then
				pcall(option.FireServer, option, "changeSize", result)
			else
				pcall(option.InvokeServer, option, "changeSize", result)
			end
			if sum == capturedSum then
				flag = false
			end
		end)
		task.delay(0.8, function(...)
			if sum == capturedSum then
				flag = false
			end
		end)
	end
	updateInstancePropertiesCondition = alternateCreateFrame(
		parent,
		"Set Size (Maximum 100)",
		"Example: 2",
		function(...)
			updateInstanceProperties()
			if pState.mainAutoSize then
				secondaryHandler()
			end
		end
	)
	updateInstancePropertiesCondition.Text = "2"
	secondaryCreateTextButton(parent, "Auto Set Size", function(argument, ...)
		updateInstanceProperties()
		pState.mainAutoSize = argument == true
		handleValue("mainAutoSize")
		if pState.mainAutoSize then
			secondaryHandler()
			handleSendGiftRemote("mainAutoSize", function(...)
				while pState.running and pState.mainAutoSize do
					secondaryHandler()
					task.wait(0.1)
				end
			end)
		else
			sum = sum + 1
			flag = false
		end
		return true
	end)
	local updateWalkSpeedData = setmetatable({}, { ["__mode"] = "k" })
	local capturedInstance = nil
	local connection = nil
	local secondaryFlag = false
	local function secondaryUpdateInstanceProperties(...)
		local numberText = (tostring(
			updateInstancePropertiesFlag and updateInstancePropertiesFlag.Text or pState.mainSpeed
		)):gsub(",", ".")
		local updateInstancePropertiesNumber = tonumber(numberText)
		local mainSpeed = math.max(0, math.floor((updateInstancePropertiesNumber or pState.mainSpeed or 125) + 0.5))
		pState.mainSpeed = mainSpeed
		if updateInstancePropertiesFlag then
			updateInstancePropertiesFlag.Text = tostring(mainSpeed)
		end
		return mainSpeed
	end
	local function updateWalkSpeedConnection(...)
		local instance = isUseToolValid()
		if not instance then
			return
		end
		if updateWalkSpeedData[instance] == nil then
			updateWalkSpeedData[instance] = instance.WalkSpeed
		end
		if capturedInstance ~= instance then
			if connection then
				connection:Disconnect()
				connection = nil
			end
			capturedInstance = instance
			connection = (instance:GetPropertyChangedSignal("WalkSpeed")):Connect(function(...)
				if
					pState.mainAutoSpeed
					and (not secondaryFlag and (instance.Parent and instance.WalkSpeed ~= pState.mainSpeed))
				then
					secondaryFlag = true
					instance.WalkSpeed = pState.mainSpeed
					secondaryFlag = false
				end
			end)
		end
		if instance.WalkSpeed ~= pState.mainSpeed then
			secondaryFlag = true
			instance.WalkSpeed = pState.mainSpeed
			secondaryFlag = false
		end
	end
	local function updateWalkSpeed(...)
		if connection then
			connection:Disconnect()
			connection = nil
		end
		capturedInstance = nil
		for key, walkSpeed in pairs(updateWalkSpeedData) do
			if key and (key.Parent and not pState.fastSpeed) then
				key.WalkSpeed = walkSpeed
			end
		end
	end
	updateInstancePropertiesFlag = alternateCreateFrame(parent, "Set Speed", "Ejemplo: 125", function(...)
		secondaryUpdateInstanceProperties()
		if pState.mainAutoSpeed then
			updateWalkSpeedConnection()
		end
	end)
	updateInstancePropertiesFlag.Text = "125"
	secondaryCreateTextButton(parent, "Auto Set Speed", function(argument, ...)
		secondaryUpdateInstanceProperties()
		pState.mainAutoSpeed = argument == true
		handleValue("mainAutoSpeed")
		if pState.mainAutoSpeed then
			updateWalkSpeedConnection()
			handleSendGiftRemote("mainAutoSpeed", function(...)
				while pState.running and pState.mainAutoSpeed do
					updateWalkSpeedConnection()
					runService.Stepped:Wait()
					updateWalkSpeedConnection()
					runService.RenderStepped:Wait()
				end
			end)
		else
			updateWalkSpeed()
		end
		return true
	end)
	secondaryCreateFrame(parent, "Set Time", { "Day", "Night" }, function(argument, ...)
		lighting.ClockTime = argument == "Night" and 0 or 14
	end, function(instance, ...)
		runService.Heartbeat:Wait()
		runService.Heartbeat:Wait()
		local number = math.max(0, parent.AbsoluteCanvasSize.Y - parent.AbsoluteSize.Y)
		local difference = ((instance.AbsolutePosition.Y - parent.AbsolutePosition.Y) + parent.CanvasPosition.Y) - 3
		(tweenService:Create(
			parent,
			TweenInfo.new(0.18, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
			{ ["CanvasPosition"] = Vector2.new(0, math.clamp(difference, 0, number)) }
		)):Play()
	end)
	secondaryCreateTextButton(parent, "Infinite Jump", function(argument, ...)
		pState.infiniteJump = argument == true
		return true
	end)
	handleFrame(userInputService.JumpRequest:Connect(function(...)
		if pState.infiniteJump then
			local condition = isUseToolValid()
			if condition then
				condition:ChangeState(Enum.HumanoidStateType.Jumping)
			end
		end
	end))
	handler(function(...)
		pState.mainAutoSize = false
		pState.mainAutoSpeed = false
		pState.infiniteJump = false
		sum = sum + 1
		flag = false
		handleValue("mainAutoSize")
		handleValue("mainAutoSpeed")
		updateWalkSpeed()
	end)
end
do
	local parent = pages["Fast Glitch 100%"]
	createFrame(parent, "FAST GLITCH 100%")
	local data = {}
	local flag = false
	secondaryCreateTextButton(parent, "Fast Punch ", function(updateInstancePropertiesFlag, ...)
		alternateUpdateInstanceProperties(updateInstancePropertiesFlag)
		flag = true
		for index, item in ipairs(data) do
			if not updateInstancePropertiesFlag then
				item:Set(false, true)
			end
			item:SetLocked(not updateInstancePropertiesFlag)
		end
		flag = false
		if not updateInstancePropertiesFlag then
			updateInstanceProperties()
		end
	end)
	local textResult, result, textSizeResult = createStatusDot(parent, "Glitch Time:", "0d 0h 0m 0s", colors.cyan)
	textSizeResult.TextColor3 = colors.white
	textSizeResult.TextSize = 12
	textResult.TextSize = 12
	handleSendGiftRemote("rockSessionTimer", function(...)
		while pState.running do
			local rockSessionStartedAt = pState.rockSessionStartedAt
			local condition = pState.fastPunch and (pState.selectedRock ~= nil and rockSessionStartedAt ~= nil)
			if condition then
				local number = math.max(0, math.floor(clock() - rockSessionStartedAt))
				local secondaryNumber = math.floor(number / 86400)
				local alternateNumber = math.floor((number % 86400) / 3600)
				local additionalNumber = math.floor((number % 3600) / 60)
				local remainder = number % 60
				textResult.Text =
					string.format("%dd %dh %dm %ds", secondaryNumber, alternateNumber, additionalNumber, remainder)
			else
				textResult.Text = "0d 0h 0m 0s"
			end
			task.wait(0.2)
		end
	end)
	secondaryCreateTextButton(parent, "Hide Durability", function(argument, ...)
		updateChildAddedConnection(argument)
	end)
	createFrame(parent, "Rocks")
	for index, item in ipairs(public.Rocks) do
		local selectedRock = item
		local result
		result = secondaryCreateTextButton(parent, selectedRock.name, function(condition, ...)
			if flag then
				return
			end
			if condition and not pState.fastPunch then
				return false
			end
			if condition then
				updateInstanceProperties()
				flag = true
				for index, item in ipairs(data) do
					if item ~= result then
						item:Set(false, true)
					end
				end
				flag = false
				pState.selectedRock = selectedRock
				pState.rockSessionStartedAt = clock()
			elseif pState.selectedRock == selectedRock then
				updateInstanceProperties()
			end
		end)
		result:SetLocked(true)
		data[#data + 1] = result
	end
end
do
	local parent = pages["Auto Farm"]
	createFrame(parent, "AUTO FARM")
	createTextButton(
		parent,
		"\240\159\145\189 Enable Auto Lift Gamepass for Free \240\159\145\189",
		function(textArgument, ...)
			if createNameFlag then
				return
			end
			if createName() then
				textArgument.Text = "\226\156\133 AutoLift Gamepass ACTIVADO \226\156\133"
				textArgument.TextColor3 = colors.green
			end
		end
	)
	local repToggles = {}
	local function handler(createTextButton, sendMuscleEventText, useToolData, sendMuscleEventFlag, ...)
		local result
		result = secondaryCreateTextButton(parent, createTextButton, function(condition, ...)
			if condition then
				for index, item in ipairs(repToggles) do
					if item ~= result then
						item:Set(false)
					end
				end
			end
			sendMuscleEvent(sendMuscleEventText, condition, useToolData, sendMuscleEventFlag)
		end)
		repToggles[#repToggles + 1] = result
	end
	handler("\240\159\143\139\239\184\143 Auto Weight \240\159\143\139\239\184\143", "autoWeight", { "Weight" }, 0.01)
	handler("\240\159\164\184 Auto Handstands \240\159\164\184", "autoHandstands", { "Handstands", "Handstand" }, 0.01)
	handler("\226\154\161 Auto Lift \226\154\161", "autoLift", { "Pushup", "Pushups" }, 0.01)
	handler("\240\159\167\152 Auto Situps \240\159\167\152", "autoSitups", { "Situps", "Situp" }, 0.01)
	modeData.RepToggles = repToggles
	secondaryCreateTextButton(parent, "\240\159\165\154 Auto Egg (30mins) \240\159\165\154", function(argument, ...)
		pState.setAutoEgg(argument)
	end)
	modeData.HideFramesToggle = secondaryCreateTextButton(
		parent,
		"\240\159\153\136 Ocultar Frames \240\159\153\136",
		function(argument, ...)
			secondaryUpdateChildAddedConnection(argument)
		end
	)
	createFrame(parent, "Machines")
	local machineToggles = {}
	local flag = false
	for index, item in ipairs(public.Machines) do
		local machine = item
		local result
		result = secondaryCreateTextButton(parent, machine.label, function(condition, ...)
			if flag then
				return
			end
			if condition then
				flag = true
				for key, item in pairs(machineToggles) do
					if item ~= result then
						item:Set(false)
					end
				end
				flag = false
				additionalUpdateInstanceProperties(machine, true)
			elseif pState.machine == machine then
				additionalUpdateInstanceProperties(machine, false)
			end
		end)
		machineToggles[#machineToggles + 1] = result
	end
	modeData.MachineToggles = machineToggles
end
do
	local parent = pages["Fast Farm"]
	local instance = createFrame(parent, "FAST FARM")
	instance.Parent.Size = UDim2.new(1, 0, 0, 16)
	instance.Size = UDim2.fromOffset(0, 16)
	local frame = Instance.new("Frame")
	frame.Size = UDim2.fromScale(1, 1)
	frame.BackgroundColor3 = colors.black
	frame.BackgroundTransparency = 0.22
	frame.BorderSizePixel = 0
	frame.Visible = false
	frame.ZIndex = 120
	frame.Parent = alternateParent
	local secondaryParent = Instance.new("Frame")
	secondaryParent.AnchorPoint = Vector2.new(0.5, 0.5)
	secondaryParent.Size = UDim2.new(1, -54, 0, 188)
	secondaryParent.Position = UDim2.fromScale(0.5, 0.5)
	secondaryParent.BackgroundColor3 = colors.panel
	secondaryParent.BackgroundTransparency = 0.02
	secondaryParent.BorderSizePixel = 0
	secondaryParent.ZIndex = 121
	secondaryParent.Parent = frame;
	(Instance.new("UICorner", secondaryParent)).CornerRadius = UDim.new(0, 12)
	local uiSizeConstraint = Instance.new("UISizeConstraint", secondaryParent)
	uiSizeConstraint.MaxSize = Vector2.new(390, 188)
	local uiStroke = Instance.new("UIStroke", secondaryParent)
	uiStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	uiStroke.Color = colors.cyan
	uiStroke.Thickness = 2
	uiStroke.Transparency = 0.04
	local textLabel = Instance.new("TextLabel")
	textLabel.Size = UDim2.new(1, -24, 0, 42)
	textLabel.Position = UDim2.fromOffset(12, 10)
	textLabel.BackgroundTransparency = 1
	textLabel.Text = "FAST FARM"
	textLabel.TextColor3 = colors.cyan
	textLabel.Font = Enum.Font.FredokaOne
	textLabel.TextSize = 18
	textLabel.ZIndex = 122
	textLabel.Parent = secondaryParent
	local secondaryTextLabel = Instance.new("TextLabel")
	secondaryTextLabel.Size = UDim2.new(1, -34, 0, 70)
	secondaryTextLabel.Position = UDim2.fromOffset(17, 48)
	secondaryTextLabel.BackgroundTransparency = 1
	secondaryTextLabel.Text =	"You need 7 or 8 packs"
	secondaryTextLabel.TextColor3 = colors.white
	secondaryTextLabel.Font = Enum.Font.FredokaOne
	secondaryTextLabel.TextSize = 13
	secondaryTextLabel.TextWrapped = true
	secondaryTextLabel.ZIndex = 122
	secondaryTextLabel.Parent = secondaryParent
	local uiScale = Instance.new("UIScale", secondaryParent)
	uiScale.Scale = 0.94
	local continuarButton = Instance.new("TextButton")
	continuarButton.Size = UDim2.new(0.5, -20, 0, 42)
	continuarButton.Position = UDim2.new(0, 14, 1, -54)
	continuarButton.BackgroundColor3 = colors.tabOn
	continuarButton.BorderSizePixel = 0
	continuarButton.Text = "Continuar"
	continuarButton.TextColor3 = colors.white
	continuarButton.Font = Enum.Font.FredokaOne
	continuarButton.TextSize = 13
	continuarButton.AutoButtonColor = false
	continuarButton.ZIndex = 123
	continuarButton.Parent = secondaryParent;
	(Instance.new("UICorner", continuarButton)).CornerRadius = UDim.new(0, 8)
	local secondaryUiStroke = Instance.new("UIStroke", continuarButton)
	secondaryUiStroke.Color = colors.cyan
	secondaryUiStroke.Transparency = 0.15
	local salirButton = Instance.new("TextButton")
	salirButton.Size = UDim2.new(0.5, -20, 0, 42)
	salirButton.Position = UDim2.new(0.5, 6, 1, -54)
	salirButton.BackgroundColor3 = colors.row
	salirButton.BorderSizePixel = 0
	salirButton.Text = "Salir"
	salirButton.TextColor3 = colors.white
	salirButton.Font = Enum.Font.FredokaOne
	salirButton.TextSize = 13
	salirButton.AutoButtonColor = false
	salirButton.ZIndex = 123
	salirButton.Parent = secondaryParent;
	(Instance.new("UICorner", salirButton)).CornerRadius = UDim.new(0, 8)
	local alternateUiStroke = Instance.new("UIStroke", salirButton)
	alternateUiStroke.Color = colors.blue
	alternateUiStroke.Transparency = 0.35
	local updateInstancePropertiesFlag = nil
	local function onActivated(...)
		updateInstancePropertiesFlag = nil
		(tweenService:Create(
			uiScale,
			TweenInfo.new(0.12, Enum.EasingStyle.Quad, Enum.EasingDirection.In),
			{ ["Scale"] = 0.94 }
		)):Play()
		task.delay(0.12, function(...)
			if not updateInstancePropertiesFlag then
				frame.Visible = false
			end
		end)
	end
	local function updateStart(updateStartFlag, ...)
		updateInstancePropertiesFlag = updateStartFlag
		frame.Visible = true
		uiScale.Scale = 0.94
		(tweenService:Create(
			uiScale,
			TweenInfo.new(0.18, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
			{ ["Scale"] = 1 }
		)):Play()
	end
	handleFrame(continuarButton.Activated:Connect(function(...)
		local flag = updateInstancePropertiesFlag
		if not flag then
			return
		end
		modeData.warningAccepted = true
		onActivated()
		task.defer(flag)
	end))
	handleFrame(salirButton.Activated:Connect(onActivated))
	handleFrame(continuarButton.MouseEnter:Connect(function(...)
		(tweenService:Create(continuarButton, TweenInfo.new(0.1), { ["BackgroundColor3"] = colors.blue })):Play()
	end))
	handleFrame(continuarButton.MouseLeave:Connect(function(...)
		(tweenService:Create(continuarButton, TweenInfo.new(0.1), { ["BackgroundColor3"] = colors.tabOn })):Play()
	end))
	handleFrame(salirButton.MouseEnter:Connect(function(...)
		(tweenService:Create(salirButton, TweenInfo.new(0.1), { ["BackgroundColor3"] = colors.rowHover })):Play()
	end))
	handleFrame(salirButton.MouseLeave:Connect(function(...)
		(tweenService:Create(salirButton, TweenInfo.new(0.1), { ["BackgroundColor3"] = colors.row })):Play()
	end))
	local startCondition
	local condition
	local function start(startFlag, startCondition, tertiaryArgument, ...)
		if not modeData.warningAccepted then
			updateStart(function(...)
				if startFlag and startFlag:Get() == false then
					startFlag:Set(true)
				end
			end)
			return false
		end
		if startCondition then
			startCondition:Set(false)
		end
		return modeData:Start(tertiaryArgument)
	end
	startCondition = secondaryCreateTextButton(parent, "Fast Rebirth", function(secondaryCondition, ...)
		if secondaryCondition then
			return start(startCondition, condition, "rebirth")
		elseif modeData.mode == "rebirth" then
			modeData:Stop(true)
		end
	end)
	startCondition.Button.Size = UDim2.new(1, 0, 0, 40)
	condition = secondaryCreateTextButton(parent, "Fast Strenght", function(secondaryCondition, ...)
		if secondaryCondition then
			return start(condition, startCondition, "strength")
		elseif modeData.mode == "strength" then
			modeData:Stop(true)
		end
	end)
	condition.Button.Size = UDim2.new(1, 0, 0, 40)
	local textResult, secondaryInstance, textSizeResult =
		createStatusDot(parent, "Time:", "0d 0h 0m 0s", colors.white)
	secondaryInstance.Size = UDim2.new(1, 0, 0, 34)
	textSizeResult.TextColor3 = colors.white
	textSizeResult.TextSize = 12
	textResult.TextSize = 12
	local textStrokeTransparencyResult, alternateInstance, secondaryTextSizeResult =
		createStatusDot(parent, "Calculator:", "0/h  \226\128\162  0/d  \226\128\162  0/w", colors.white)
	alternateInstance.Size = UDim2.new(1, 0, 0, 34)
	alternateInstance.BackgroundTransparency = 0.02
	secondaryTextSizeResult.TextColor3 = colors.white
	secondaryTextSizeResult.TextSize = 13
	textStrokeTransparencyResult.TextSize = 13
	textStrokeTransparencyResult.TextColor3 = colors.white
	textStrokeTransparencyResult.TextStrokeColor3 = colors.panel
	textStrokeTransparencyResult.TextStrokeTransparency = 0.28
	local additionalUiStroke = alternateInstance:FindFirstChildOfClass("UIStroke")
	if additionalUiStroke then
		additionalUiStroke.Color = colors.cyan
		additionalUiStroke.Transparency = 0.28
	end
	local additionalParent = Instance.new("Frame")
	additionalParent.LayoutOrder = handleLayoutOrder(parent)
	additionalParent.Parent = parent
	createUiCorner(additionalParent, 70)
	local alternateTextLabel = Instance.new("TextLabel")
	alternateTextLabel.Size = UDim2.new(1, -20, 0, 22)
	alternateTextLabel.Position = UDim2.fromOffset(10, 3)
	alternateTextLabel.BackgroundTransparency = 1
	alternateTextLabel.Text = "Rebirths"
	alternateTextLabel.TextColor3 = colors.cyan
	alternateTextLabel.Font = Enum.Font.FredokaOne
	alternateTextLabel.TextSize = 12
	alternateTextLabel.ZIndex = 12
	alternateTextLabel.Parent = additionalParent
	local valueLabel = Instance.new("TextLabel")
	valueLabel.Size = UDim2.new(1, -20, 1, -25)
	valueLabel.Position = UDim2.fromOffset(10, 23)
	valueLabel.BackgroundTransparency = 1
	valueLabel.Text = "0  (+0)"
	valueLabel.TextColor3 = colors.white
	valueLabel.Font = Enum.Font.FredokaOne
	valueLabel.TextScaled = true
	valueLabel.TextWrapped = true
	valueLabel.ZIndex = 12
	valueLabel.Parent = additionalParent
	local uiTextSizeConstraint = Instance.new("UITextSizeConstraint", valueLabel)
	uiTextSizeConstraint.MinTextSize = 14
	uiTextSizeConstraint.MaxTextSize = 32
	local function format(formatNumber, ...)
		formatNumber = math.max(0, math.floor(formatNumber or 0))
		local number = math.floor(formatNumber / 86400)
		local secondaryFormatNumber = math.floor((formatNumber % 86400) / 3600)
		local alternateFormatNumber = math.floor((formatNumber % 3600) / 60)
		local remainder = formatNumber % 60
		return string.format("%dd %dh %dm %ds", number, secondaryFormatNumber, alternateFormatNumber, remainder)
	end
	handleSendGiftRemote("fastFarmStatsUI", function(...)
		while pState.running do
			local readStats = modeData:ReadStats()
			local option = modeData.startStats or readStats
			local number = math.max(0, readStats.rebirths - (option.rebirths or readStats.rebirths))
			valueLabel.Text = handleValueLabelText(readStats.rebirths)
				.. ("  (+" .. (handleValueLabelText(number) .. ")"))
			if modeData.mode == "strength" and not modeData.startedAt then
				textResult.Text = "0d 0h 0m 0s"
				textStrokeTransparencyResult.Text = "0/h  \226\128\162  0/d  \226\128\162  0/w"
			elseif modeData.mode and modeData.startedAt then
				local number = math.max(clock() - modeData.startedAt, 0)
				local text
				if modeData.pingPaused then
					text = " Pausado por ping"
				else
					text = modeData.mode == "rebirth" and "" or " Training"
				end
				textResult.Text = format(number) .. text
				local product
				if modeData.mode == "rebirth" then
					product = (math.clamp(tonumber(modeData.packCount) or 0, 0, 8) * 2) * 600
				else
					local secondaryNumber = math.max(0, readStats.strength - (option.strength or readStats.strength))
					product = number >= 0.5 and (secondaryNumber * 3600) / number or 0
				end
				textStrokeTransparencyResult.Text = modeData:FormatCompact(product)
					.. (
						"/h  \226\128\162  "
						.. (
							modeData:FormatCompact(product * 24)
							.. ("/d  \226\128\162  " .. (modeData:FormatCompact(product * 168) .. "/w"))
						)
					)
			else
				textResult.Text = "0d 0h 0m 0s"
				textStrokeTransparencyResult.Text = "0/h  \226\128\162  0/d  \226\128\162  0/w"
			end
			task.wait(0.25)
		end
	end)
end
do
	local parent = pages.Teleports
	createFrame(parent, "Teleports")
	for index, item in ipairs(public.Teleports) do
		local capturedItem = item
		createTextButton(parent, capturedItem[1], function(...)
			local cFrameCondition = isSendHitEventValid()
			if cFrameCondition then
				cFrameCondition.CFrame = CFrame.new(capturedItem[2])
			end
		end)
	end
end
local function previousHandler(...)
	local data = {}
	for index, item in ipairs(players:GetPlayers()) do
		if item ~= backpackContainer then
			data[#data + 1] = { ["label"] = item.DisplayName, ["name"] = item.Name, ["userId"] = item.UserId }
		end
	end
	table.sort(data, function(labelArgument, secondaryArgument, ...)
		return labelArgument.label:lower() < secondaryArgument.label:lower()
	end)
	return data
end
do
	local parent = pages.Rebirths
	local vector = Vector3.new(-8646, 13.25, -5738)
	local number = 42
	local data = {
		{ ["name"] = "+1 Daily Spin", ["max"] = 5 },
		{ ["name"] = "+1 Pet Slot", ["max"] = 3 },
		{ ["name"] = "+10 Item Capacity", ["max"] = 6 },
		{ ["name"] = "+5% Rep Speed", ["max"] = 10 },
		{ ["name"] = "Demon Damage", ["max"] = 5 },
		{ ["name"] = "Galaxy Gains", ["max"] = 5 },
		{ ["name"] = "Golden Rebirth", ["max"] = 5 },
		{ ["name"] = "Jungle Swift", ["max"] = 5 },
		{ ["name"] = "Muscle Mind", ["max"] = 5 },
		{ ["name"] = "Infernal Health", ["remote"] = "InfernalHealth", ["max"] = 5 },
		{ ["name"] = "x2 Chest Rewards", ["max"] = 5 },
		{ ["name"] = "x2 Quest Rewards", ["max"] = 3 },
	}
	local function isValid(...)
		local rEvents = replicatedStorage:FindFirstChild("rEvents")
		return rEvents and rEvents:FindFirstChild("rebirthRemote")
	end
	local function secondaryHandler(...)
		local rEvents = replicatedStorage:FindFirstChild("rEvents")
		local condition = rEvents and rEvents:FindFirstChild("changeSpeedSizeRemote")
		if condition then
			pcall(condition.InvokeServer, condition, "changeSize", 1)
		end
	end
	local function clamp(clampFlag, ...)
		local numberText = (tostring(clampFlag or "")):gsub("[^%d]", "")
		local clampNumber = tonumber(numberText)
		if not clampNumber then
			return nil
		end
		return math.clamp(math.floor(clampNumber), 0, 9.007199254741e+15)
	end
	local function format(formatNumber, ...)
		if not formatNumber or formatNumber ~= formatNumber or formatNumber == math.huge then
			return "Calculando..."
		end
		formatNumber = math.max(0, math.floor(formatNumber + 0.5))
		local number = math.floor(formatNumber / 86400)
		local secondaryFormatNumber = math.floor((formatNumber % 86400) / 3600)
		local alternateFormatNumber = math.floor((formatNumber % 3600) / 60)
		local remainder = formatNumber % 60
		if number > 0 then
			return string.format("%dd %02dh %02dm", number, secondaryFormatNumber, alternateFormatNumber)
		elseif secondaryFormatNumber > 0 then
			return string.format("%dh %02dm %02ds", secondaryFormatNumber, alternateFormatNumber, remainder)
		end
		return string.format("%dm %02ds", alternateFormatNumber, remainder)
	end
	local function alternateHandler(secondaryData, ...)
		if #secondaryData == 0 then
			return nil
		end
		local data = table.clone(secondaryData)
		table.sort(data)
		local number = math.floor((#data + 1) / 2)
		if #data % 2 == 1 then
			return data[number]
		end
		return (data[number] + data[number + 1]) / 2
	end
	createFrame(parent, "REBIRTHS")
	local frame = Instance.new("Frame")
	frame.LayoutOrder = handleLayoutOrder(parent)
	frame.Parent = parent
	createUiCorner(frame, 62)
	local textLabel = Instance.new("TextLabel")
	textLabel.Size = UDim2.new(1, -20, 0, 22)
	textLabel.Position = UDim2.fromOffset(10, 3)
	textLabel.BackgroundTransparency = 1
	textLabel.Text = "RENAS COUNTDOWN"
	textLabel.TextColor3 = colors.cyan
	textLabel.Font = Enum.Font.FredokaOne
	textLabel.TextSize = 12
	textLabel.ZIndex = 12
	textLabel.Parent = frame
	local valueLabel = Instance.new("TextLabel")
	valueLabel.Size = UDim2.new(0.5, -12, 0, 25)
	valueLabel.Position = UDim2.fromOffset(11, 27)
	valueLabel.BackgroundTransparency = 1
	valueLabel.Text = "Rebirths: 0"
	valueLabel.TextColor3 = colors.white
	valueLabel.Font = Enum.Font.FredokaOne
	valueLabel.TextSize = 14
	valueLabel.TextXAlignment = Enum.TextXAlignment.Left
	valueLabel.ZIndex = 12
	valueLabel.Parent = frame
	local clone = valueLabel:Clone()
	clone.Size = UDim2.new(0.5, -12, 0, 25)
	clone.Position = UDim2.new(0.5, 1, 0, 27)
	clone.Text = ""
	clone.TextXAlignment = Enum.TextXAlignment.Right
	clone.Visible = false
	clone.Parent = frame
	local input = valueLabel:Clone()
	input.Position = UDim2.fromOffset(11, 54)
	input.Text = ""
	input.Visible = false
	input.Parent = frame
	local secondaryClone = clone:Clone()
	secondaryClone.Position = UDim2.new(0.5, 1, 0, 54)
	secondaryClone.Text = ""
	secondaryClone.Visible = false
	secondaryClone.Parent = frame
	local secondaryValueLabel = Instance.new("TextLabel")
	secondaryValueLabel.Size = UDim2.new(1, -22, 0, 22)
	secondaryValueLabel.Position = UDim2.fromOffset(11, 79)
	secondaryValueLabel.BackgroundTransparency = 1
	secondaryValueLabel.Text = ""
	secondaryValueLabel.TextColor3 = colors.dim
	secondaryValueLabel.Font = Enum.Font.FredokaOne
	secondaryValueLabel.TextSize = 12
	secondaryValueLabel.TextXAlignment = Enum.TextXAlignment.Center
	secondaryValueLabel.Visible = false
	secondaryValueLabel.ZIndex = 12
	secondaryValueLabel.Parent = frame
	local samplesData = {
		["samples"] = {},
		["lastValue"] = nil,
		["burstGain"] = 0,
		["burstStartedAt"] = nil,
		["lastPositiveAt"] = nil,
		["previousBurstAt"] = nil,
		["smoothedEta"] = nil,
		["lastEtaUpdate"] = 0,
		["rebirthSpendSerial"] = 0,
	}
	local function updateInstanceProperties(lastValue, ...)
		table.clear(samplesData.samples)
		samplesData.lastValue = lastValue
		samplesData.burstGain = 0
		samplesData.burstStartedAt = nil
		samplesData.lastPositiveAt = nil
		samplesData.previousBurstAt = nil
		samplesData.smoothedEta = nil
		samplesData.lastEtaUpdate = 0
	end
	local function secondaryUpdateInstanceProperties(...)
		if samplesData.burstGain <= 0 or not samplesData.burstStartedAt then
			return
		end
		if samplesData.previousBurstAt then
			local updateInstancePropertiesNumber = samplesData.burstStartedAt - samplesData.previousBurstAt
			if updateInstancePropertiesNumber >= 0.08 and updateInstancePropertiesNumber <= 3600 then
				samplesData.samples[#samplesData.samples + 1] =
					{ ["interval"] = updateInstancePropertiesNumber, ["gain"] = samplesData.burstGain }
				while #samplesData.samples > 20 do
					table.remove(samplesData.samples, 1)
				end
			end
		end
		samplesData.previousBurstAt = samplesData.burstStartedAt
		samplesData.burstGain = 0
		samplesData.burstStartedAt = nil
		samplesData.lastPositiveAt = nil
	end
	local function alternateUpdateInstanceProperties(lastValue, burstStartedAt, ...)
		if samplesData.lastValue == nil then
			samplesData.lastValue = lastValue
			return
		end
		local updateInstancePropertiesNumber = lastValue - samplesData.lastValue
		samplesData.lastValue = lastValue
		if updateInstancePropertiesNumber > 0 then
			if samplesData.burstGain == 0 then
				samplesData.burstStartedAt = burstStartedAt
			end
			samplesData.burstGain = samplesData.burstGain + updateInstancePropertiesNumber
			samplesData.lastPositiveAt = burstStartedAt
		elseif updateInstancePropertiesNumber < 0 then
			samplesData.rebirthSpendSerial = samplesData.rebirthSpendSerial + 1
			samplesData.burstGain = 0
			samplesData.burstStartedAt = nil
			samplesData.lastPositiveAt = nil
			samplesData.previousBurstAt = nil
		end
		if samplesData.lastPositiveAt and burstStartedAt - samplesData.lastPositiveAt >= 0.85 then
			secondaryUpdateInstanceProperties()
		end
	end
	local function additionalHandler(...)
		if #samplesData.samples < 3 then
			return nil, nil, nil
		end
		local secondaryData, data = {}, {}
		for index, item in ipairs(samplesData.samples) do
			secondaryData[#secondaryData + 1] = item.interval
			data[#data + 1] = item.gain
		end
		local number = alternateHandler(secondaryData)
		local secondaryNumber = alternateHandler(data)
		local alternateSum, sum, secondarySum = 0, 0, 0
		for index, item in ipairs(samplesData.samples) do
			local option = item.interval >= number * 0.45 and item.interval <= number * 2.2
			local flag = item.gain >= secondaryNumber * 0.4 and item.gain <= secondaryNumber * 2.5
			if option and flag then
				local number = 0.45 + index / #samplesData.samples
				alternateSum = alternateSum + item.gain * number
				sum = sum + item.interval * number
				secondarySum = secondarySum + 1
			end
		end
		if secondarySum < 3 or sum <= 0 then
			return nil, number, secondaryNumber
		end
		return alternateSum / sum, number, secondaryNumber
	end
	local textResult
	local updateInstancePropertiesCondition
	local updateInstancePropertiesFlag
	createFrame(parent, "TOOLS")
	secondaryCreateTextButton(parent, "Set Size 1", function(argument, ...)
		pState.rebirth.sizeOne = argument == true
		handleValue("rebirthSizeOne")
		if pState.rebirth.sizeOne then
			secondaryHandler()
			handleSendGiftRemote("rebirthSizeOne", function(...)
				while pState.running and pState.rebirth.sizeOne do
					secondaryHandler()
					task.wait(0.75)
				end
			end)
		end
		return true
	end)
	secondaryCreateTextButton(parent, "Fast Weight", function(argument, ...)
		pState.rebirth.fastWeight = argument == true
		sendMuscleEvent("rebirthFastWeight", pState.rebirth.fastWeight, { "Weight", "Heavy Weight" }, 0.005)
		return true
	end)
	secondaryCreateTextButton(parent, "King", function(argument, ...)
		pState.rebirth.king = argument == true
		handleValue("rebirthKing")
		if pState.rebirth.king then
			handleSendGiftRemote("rebirthKing", function(...)
				while pState.running and pState.rebirth.king do
					local input = isSendHitEventValid()
					if input and (input.Position - vector).Magnitude > number then
						local raycastParams = RaycastParams.new()
						raycastParams.FilterType = Enum.RaycastFilterType.Exclude
						local filterDescendantsInstances = {}
						for index, item in ipairs(players:GetPlayers()) do
							if item.Character then
								filterDescendantsInstances[#filterDescendantsInstances + 1] = item.Character
							end
						end
						raycastParams.FilterDescendantsInstances = filterDescendantsInstances
						raycastParams.IgnoreWater = true
						local secondaryVector = vector
						local condition =
							workspace:Raycast(vector + Vector3.new(0, 35, 0), Vector3.new(0, -80, 0), raycastParams)
						if condition then
							secondaryVector = Vector3.new(vector.X, condition.Position.Y + 3.1, vector.Z)
						end
						local cFrame = CFrame.new(secondaryVector)
						if pState.rebirth.lockPosition then
							pState.rebirth.lockCFrame = cFrame
						end
						input.CFrame = cFrame
						input.AssemblyLinearVelocity = Vector3.zero
						input.AssemblyAngularVelocity = Vector3.zero
					end
					task.wait(0.25)
				end
			end)
		end
		return true
	end)
	secondaryCreateTextButton(parent, "Lock Position", function(argument, ...)
		pState.rebirth.lockPosition = argument == true
		local instance = isSendHitEventValid()
		pState.rebirth.lockCFrame = pState.rebirth.lockPosition and (instance and instance.CFrame) or nil
		handleValue("rebirthLock")
		if pState.rebirth.lockPosition and pState.rebirth.lockCFrame then
			handleSendGiftRemote("rebirthLock", function(...)
				while pState.running and pState.rebirth.lockPosition do
					local instance = isSendHitEventValid()
					if instance and pState.rebirth.lockCFrame then
						instance.CFrame = pState.rebirth.lockCFrame
						instance.AssemblyLinearVelocity = Vector3.zero
						instance.AssemblyAngularVelocity = Vector3.zero
					end
					runService.Heartbeat:Wait()
				end
			end)
		end
		return true
	end)
	secondaryCreateTextButton(parent, "Egg every 30 mins", function(argument, ...)
		pState.setAutoEgg(argument, "rebirth")
		return true
	end)
	textResult = alternateCreateFrame(parent, "Rebirths objective", "Example: 18,980", function(flag, ...)
		local target = clamp(flag)
		if target and target > 0 then
			pState.rebirth.target = target
			textResult.Text = (handleValueLabelText(target)):gsub("%.", ",")
		elseif (tostring(flag or "")):gsub("%s+", "") == "" then
			pState.rebirth.target = nil
			textResult.Text = ""
		else
			textResult.Text = pState.rebirth.target and (handleValueLabelText(pState.rebirth.target)):gsub("%.", ",")
				or ""
		end
	end)
	textResult.Text = ""
	local function additionalUpdateInstanceProperties(updateInstancePropertiesArgument, infiniteFlag, ...)
		if updateInstancePropertiesArgument == "target" then
			if infiniteFlag and not pState.rebirth.target then
				return false
			end
			pState.rebirth.autoTarget = infiniteFlag == true
			if pState.rebirth.autoTarget then
				pState.rebirth.infinite = false
				if updateInstancePropertiesFlag and updateInstancePropertiesFlag:Get() then
					updateInstancePropertiesFlag:Set(false, true)
				end
				local flag = isUpdateInstancePropertiesValid(backpackContainer, { "Rebirths", "Rebirth" })
				updateInstanceProperties(tonumber(flag and flag.Value) or 0)
				task.defer(function(...)
					runService.Heartbeat:Wait();
					(tweenService:Create(
						parent,
						TweenInfo.new(0.2, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
						{ ["CanvasPosition"] = Vector2.zero }
					)):Play()
				end)
			end
		elseif updateInstancePropertiesArgument == "infinite" then
			pState.rebirth.infinite = infiniteFlag == true
			if pState.rebirth.infinite then
				pState.rebirth.autoTarget = false
				if updateInstancePropertiesCondition and updateInstancePropertiesCondition:Get() then
					updateInstancePropertiesCondition:Set(false, true)
				end
			end
		end
		handleValue("rebirthLoop")
		if not pState.rebirth.autoTarget and not pState.rebirth.infinite then
			return true
		end
		handleSendGiftRemote("rebirthLoop", function(...)
			while pState.running and (pState.rebirth.autoTarget or pState.rebirth.infinite) do
				local updateInstancePropertiesFlag =
					isUpdateInstancePropertiesValid(backpackContainer, { "Rebirths", "Rebirth" })
				local updateInstancePropertiesOption = tonumber(
					updateInstancePropertiesFlag and updateInstancePropertiesFlag.Value
				) or 0
				if
					pState.rebirth.autoTarget
					and (pState.rebirth.target and updateInstancePropertiesOption >= pState.rebirth.target)
				then
					pState.rebirth.autoTarget = false
					if updateInstancePropertiesCondition then
						updateInstancePropertiesCondition:Set(false, true)
					end
					break
				end
				local condition = isValid()
				if condition then
					pcall(condition.InvokeServer, condition, "rebirthRequest")
				end
				task.wait(0.1)
			end
		end)
		return true
	end
	updateInstancePropertiesCondition = secondaryCreateTextButton(
		parent,
		"Rebirth until the objective",
		function(infiniteFlag, ...)
			return additionalUpdateInstanceProperties("target", infiniteFlag)
		end
	)
	updateInstancePropertiesFlag = secondaryCreateTextButton(
		parent,
		"Infinite Rebirts",
		function(infiniteFlag, ...)
			return additionalUpdateInstanceProperties("infinite", infiniteFlag)
		end
	)
	createFrame(parent, "ULTIMATES")
	local createFrameData = {}
	for index, item in ipairs(data) do
		createFrameData[#createFrameData + 1] = { ["label"] = item.name, ["name"] = item.name, ["data"] = item }
	end
	local isUpdateValidFlag
	local updateTextCondition
	local condition
	local updateTextFlag
	local result
	local capturedNumberText = nil
	local updateTextNumber = 0
	local function updateText(updateText, updateTextCondition, flag, ...)
		if not updateTextFlag then
			return
		end
		updateTextNumber = updateTextNumber + 1
		local capturedUpdateTextNumber = updateTextNumber
		if updateTextFlag then
			updateTextFlag.Text = updateText
		end
		if updateTextCondition then
			task.delay(updateTextCondition, function(...)
				if
					capturedUpdateTextNumber == updateTextNumber
					and (not pState.rebirth.ultimateRunning and (updateTextFlag and updateTextFlag.Parent))
				then
					updateTextFlag.Text = flag or "Esperando selecci\195\179n"
				end
			end)
		end
	end
	local function isUpdateValid(item, ...)
		local ultimatesFolder = backpackContainer:FindFirstChild("ultimatesFolder")
		local isUpdateValidOption = ultimatesFolder and (item and ultimatesFolder:FindFirstChild(item.name))
		return tonumber(isUpdateValidOption and isUpdateValidOption.Value) or 0
	end
	local function secondaryIsUpdateValid(...)
		local isUpdateValidOption = isUpdateValidFlag and isUpdateValidFlag:Get()
		return type(isUpdateValidOption) == "table" and isUpdateValidOption.data or nil
	end
	local function handleText(item, ...)
		local textNumber = math.max(0, (item and item.max or 0) - isUpdateValid(item))
		if textNumber <= 0 then
			return { { ["label"] = "M\195\161ximo", ["amount"] = 0 } }
		end
		local textData = {}
		for index = 1, textNumber, 1 do
			textData[#textData + 1] = index
		end
		return textData
	end
	local flag = false
	local function secondaryUpdateText(...)
		local item = secondaryIsUpdateValid()
		if not item then
			return
		end
		local updateTextNumber = isUpdateValid(item)
		if condition then
			condition.Text = handleValueLabelText(updateTextNumber) .. (" / " .. handleValueLabelText(item.max))
		end
		if updateTextCondition then
			flag = true
			updateTextCondition:SetValues(handleText(item), false)
			flag = false
		end
		capturedNumberText = updateTextNumber
	end
	isUpdateValidFlag = secondaryCreateFrame(parent, "Seleccionar Ultimate", createFrameData, function(...)
		if updateTextCondition then
			secondaryUpdateText()
			if not pState.rebirth.ultimateRunning then
				local item = secondaryIsUpdateValid()
				updateText(
					item and "Seleccionado: " .. item.name or "Esperando selecci\195\179n",
					5,
					"Esperando compra"
				)
			end
		end
	end, function(instance, ...)
		runService.Heartbeat:Wait()
		local canvasPositionNumber = math.max(0, parent.AbsoluteCanvasSize.Y - parent.AbsoluteSize.Y)
		local difference = ((instance.AbsolutePosition.Y - parent.AbsolutePosition.Y) + parent.CanvasPosition.Y) - 3
		parent.CanvasPosition = Vector2.new(0, math.clamp(difference, 0, canvasPositionNumber))
	end)
	updateTextCondition = secondaryCreateFrame(
		parent,
		"Cantidad a comprar",
		{ 1, 2, 3 },
		function(secondaryNumberText, ...)
			if flag then
				return
			end
			if not pState.rebirth.ultimateRunning then
				local numberText = type(secondaryNumberText) == "table" and secondaryNumberText.amount
					or tonumber(secondaryNumberText)
				if numberText and numberText > 0 then
					updateText("Cantidad seleccionada: " .. handleValueLabelText(numberText), 5, "Esperando compra")
				end
			end
		end
	)
	condition = createStatusDot(parent, "Nivel seleccionado", "0 / 0", colors.cyan)
	updateTextFlag = handleInstance(parent, "Esperando selecci\195\179n")
	secondaryUpdateText()
	result = createTextButton(parent, "Comprar Ultimate", function(instance, ...)
		if pState.rebirth.ultimateRunning then
			pState.rebirth.ultimateRunning = false
			handleValue("ultimateBuyer")
			instance.Text = "Comprar Ultimate"
			updateText("Compra cancelada", 7, "Esperando selecci\195\179n")
			return
		end
		local item = secondaryIsUpdateValid()
		local numberText = updateTextCondition:Get()
		local number = type(numberText) == "table" and numberText.amount or tonumber(numberText)
		if not item or not number or number <= 0 then
			updateText("Ultimate al m\195\161ximo", 7, "Esperando selecci\195\179n")
			return
		end
		number = math.min(number, math.max(0, item.max - isUpdateValid(item)))
		pState.rebirth.ultimateRunning = true
		instance.Text = "Cancelar compra"
		handleSendGiftRemote("ultimateBuyer", function(...)
			local sum = 0
			local text = nil
			while pState.running and (pState.rebirth.ultimateRunning and sum < number) do
				local rEvents = replicatedStorage:FindFirstChild("rEvents")
				local option = rEvents and rEvents:FindFirstChild("ultimatesRemote")
				if not option then
					text = "Remote de Ultimates no disponible"
					break
				end
				local result = isUpdateValid(item)
				if result >= item.max then
					text = "Ultimate al m\195\161ximo"
					break
				end
				local rebirthSpendSerial = samplesData.rebirthSpendSerial
				updateText("Comprando " .. (item.name .. (" (" .. (sum + 1 .. ("/" .. (number .. ")"))))))
				pcall(option.InvokeServer, option, "upgradeUltimate", item.remote or item.name)
				local secondarySum = clock() + 8
				local flag = false
				while pState.running and (pState.rebirth.ultimateRunning and clock() < secondarySum) do
					if isUpdateValid(item) > result or samplesData.rebirthSpendSerial > rebirthSpendSerial then
						flag = true
						break
					end
					task.wait(0.15)
				end
				if flag then
					sum = sum + 1
				else
					updateText("Waiting for Enough Rebirths")
					task.wait(0.8)
				end
			end
			pState.rebirth.ultimateRunning = false
			if instance and instance.Parent then
				instance.Text = "Comprar Ultimate"
			end
			secondaryUpdateText()
			local alternateUpdateText = text or sum > 0 and "Compra completada: " .. sum or "Sin cambios"
			updateText(alternateUpdateText, 7, "Esperando selecci\195\179n")
		end)
	end, colors.row, Color3.fromRGB(16, 78, 92))
	handleSendGiftRemote("rebirthCounter", function(...)
		while pState.running and frame.Parent do
			local lastEtaUpdate = clock()
			local flag = isUpdateInstancePropertiesValid(backpackContainer, { "Rebirths", "Rebirth" })
			local lastValue = tonumber(flag and flag.Value) or 0
			if pState.rebirth.autoTarget then
				alternateUpdateInstanceProperties(lastValue, lastEtaUpdate)
				if samplesData.lastPositiveAt and lastEtaUpdate - samplesData.lastPositiveAt >= 0.85 then
					secondaryUpdateInstanceProperties()
				end
			else
				if samplesData.lastValue and lastValue < samplesData.lastValue then
					samplesData.rebirthSpendSerial = samplesData.rebirthSpendSerial + 1
				end
				samplesData.lastValue = lastValue
				samplesData.burstGain = 0
				samplesData.burstStartedAt = nil
				samplesData.lastPositiveAt = nil
			end
			valueLabel.Text = "Rebirths: " .. handleValueLabelText(lastValue)
			local visible = pState.rebirth.autoTarget and pState.rebirth.target ~= nil
			local infinite = pState.rebirth.infinite
			clone.Visible = pState.rebirth.target ~= nil and not infinite
			clone.Text = pState.rebirth.target and "Objetivo: " .. handleValueLabelText(pState.rebirth.target) or ""
			input.Visible = visible
			secondaryClone.Visible = visible
			secondaryValueLabel.Visible = visible
			frame.Size = UDim2.new(1, 0, 0, visible and 106 or 62)
			if visible then
				local number = math.max(0, pState.rebirth.target - lastValue)
				local flag, secondaryFlag, secondaryNumber = additionalHandler()
				local text = number <= 0 and "Objetivo alcanzado" or "Calculando..."
				if flag and number > 0 then
					local smoothedEta = number / flag
					if not samplesData.smoothedEta then
						samplesData.smoothedEta = smoothedEta
						samplesData.lastEtaUpdate = lastEtaUpdate
					elseif lastEtaUpdate - samplesData.lastEtaUpdate >= 2 then
						local quotient = math.abs(smoothedEta - samplesData.smoothedEta)
							/ math.max(1, samplesData.smoothedEta)
						local smoothedEtaNumber = quotient > 0.3 and 0.35 or 0.18
						samplesData.smoothedEta = samplesData.smoothedEta * (1 - smoothedEtaNumber)
							+ smoothedEta * smoothedEtaNumber
						samplesData.lastEtaUpdate = lastEtaUpdate
					end
					text = format(samplesData.smoothedEta)
				end
				input.Text = "Faltan: " .. handleValueLabelText(number)
				secondaryClone.Text = "Time: " .. text
				if secondaryFlag and secondaryNumber then
					secondaryValueLabel.Text = "Ciclo: "
						.. (
							string.format("%.2fs", secondaryFlag)
							.. (
								"   \226\128\162   +"
								.. (
									handleValueLabelText(math.floor(secondaryNumber + 0.5))
									.. ("   \226\128\162   Muestras: " .. #samplesData.samples)
								)
							)
						)
				else
					secondaryValueLabel.Text = "Calculando ciclos: " .. (#samplesData.samples .. "/3")
				end
			else
				input.Text = ""
				secondaryClone.Text = ""
				secondaryValueLabel.Text = ""
			end
			local item = secondaryIsUpdateValid()
			if item then
				local result = isUpdateValid(item)
				if result ~= capturedNumberText then
					secondaryUpdateText()
				end
			end
			task.wait(0.25)
		end
	end)
	handler(function(...)
		pState.rebirth.autoTarget = false
		pState.rebirth.infinite = false
		pState.rebirth.sizeOne = false
		pState.rebirth.king = false
		pState.rebirth.lockPosition = false
		pState.rebirth.ultimateRunning = false
		sendMuscleEvent("rebirthFastWeight", false, { "Weight", "Heavy Weight" })
		pState.setAutoEgg(false, "rebirth")
		handleValue("rebirthLoop")
		handleValue("rebirthSizeOne")
		handleValue("rebirthKing")
		handleValue("rebirthLock")
		handleValue("ultimateBuyer")
	end)
end
do
	local parent = pages["Glitch Timer"]
	local number = 1.1
	local data = {
		{
			["label"] = "White Rock",
			["name"] = "white",
			["values"] = {
				[480] = 5,
				[1480] = 10,
				[2980] = 15,
				[4980] = 20,
				[7480] = 25,
				[10480] = 30,
				[13980] = 35,
				[17980] = 40,
				[22480] = 45,
				[27480] = 50,
				[32980] = 55,
				[38980] = 60,
				[45480] = 65,
				[52480] = 70,
				[59980] = 75,
				[67980] = 80,
				[76480] = 85,
				[85480] = 90,
				[94980] = 95,
			},
		},
		{
			["label"] = "Jungle Rock",
			["name"] = "jungle",
			["values"] = {
				[52] = 5,
				[208] = 10,
				[440] = 15,
				[748] = 20,
				[1132] = 25,
				[1592] = 30,
				[2132] = 35,
				[2748] = 40,
				[3440] = 45,
				[4208] = 50,
				[5056] = 55,
				[5980] = 60,
				[6980] = 65,
				[8056] = 70,
				[9208] = 75,
				[10440] = 80,
				[11748] = 85,
				[13132] = 90,
				[14592] = 95,
			},
		},
		{
			["label"] = "Green Rock",
			["name"] = "green",
			["values"] = {
				[80] = 5,
				[280] = 10,
				[580] = 15,
				[980] = 20,
				[1480] = 25,
				[2080] = 30,
				[2780] = 35,
				[3580] = 40,
				[4480] = 45,
				[5480] = 50,
				[6580] = 55,
				[7780] = 60,
				[9080] = 65,
				[10480] = 70,
				[11980] = 75,
				[13580] = 80,
				[15280] = 85,
				[17080] = 90,
				[18980] = 95,
			},
		},
	}
	local createFrameData = {}
	for index = 1, 20, 1 do
		createFrameData[#createFrameData + 1] = { ["label"] = index .. "M", ["value"] = index * 1000000 }
	end
	local function format(formatNumber, ...)
		formatNumber = math.max(0, math.floor(formatNumber + 0.5))
		local number = math.floor(formatNumber / 86400)
		local secondaryFormatNumber = math.floor((formatNumber % 86400) / 3600)
		local alternateFormatNumber = math.floor((formatNumber % 3600) / 60)
		local remainder = formatNumber % 60
		if number > 0 then
			return string.format(
				"%dd %02dh %02dm %02ds",
				number,
				secondaryFormatNumber,
				alternateFormatNumber,
				remainder
			)
		end
		return string.format("%dh %02dm %02ds", secondaryFormatNumber, alternateFormatNumber, remainder)
	end
	local function handler(get, secondaryNumber, ...)
		local key, huge = nil, math.huge
		for secondaryKey in pairs(get.values) do
			local number = math.abs(secondaryKey - secondaryNumber)
			if number < huge then
				key, huge = secondaryKey, number
			end
		end
		return key
	end
	createFrame(parent, "BUGS CALCULATOR")
	local result = secondaryCreateFrame(parent, "Choose Rock", data, function(...) end)
	local secondaryResult = secondaryCreateFrame(
		parent,
		"Pet's Objective",
		createFrameData,
		function(...) end,
		function(...)
			runService.Heartbeat:Wait()
			runService.Heartbeat:Wait()
			local number = math.max(0, parent.AbsoluteCanvasSize.Y - parent.AbsoluteSize.Y);
			(tweenService:Create(
				parent,
				TweenInfo.new(0.18, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
				{ ["CanvasPosition"] = Vector2.new(0, number) }
			)):Play()
		end
	)
	result:SetIndex(3)
	local textResult = createStatusDot(parent, "Time eta", "--", colors.green)
	handleSendGiftRemote("bugCalculator", function(...)
		while pState.running and parent.Parent do
			local flag = isUpdateInstancePropertiesValid(backpackContainer, { "Rebirths", "Rebirth" })
			local secondaryNumber = math.floor(tonumber(flag and flag.Value) or 0)
			local get = result:Get()
			local secondaryGet = secondaryResult:Get()
			local option = type(secondaryGet) == "table" and secondaryGet.value or 1000000
			local condition = type(get) == "table" and get.values[secondaryNumber] or nil
			if condition then
				local secondaryNumber = math.ceil(option / condition)
				local formatNumber = secondaryNumber * number
				textResult.Text = format(formatNumber)
				textResult.TextColor3 = colors.green
			else
				local numberText = type(get) == "table" and handler(get, secondaryNumber) or nil
				textResult.Text = numberText and "Valid Rena: " .. handleValueLabelText(numberText) or "--"
				textResult.TextColor3 = colors.orange
			end
			task.wait(0.5)
		end
	end)
end
do
	local parent = pages.Kills
	createFrame(parent, "KILLS")
	local instance = createStatusDot(parent, "Kills:", "0", colors.cyan)
	local killAutoToggle
	local killEvilToggle
	local killGoodToggle
	local killTargetToggle
	local killProtectToggle
	local killServerHopToggle
	local function handler(secondaryKillAutoToggle, ...)
		for index, item in ipairs({ killAutoToggle, killEvilToggle, killGoodToggle, killTargetToggle }) do
			if item and (item ~= secondaryKillAutoToggle and item:Get()) then
				item:Set(false)
			end
		end
	end
	killAutoToggle = secondaryCreateTextButton(parent, "Kill Everyone", function(condition, ...)
		if condition then
			handler(killAutoToggle)
		end
		return pState.setAutoKill(condition)
	end)
	killEvilToggle = secondaryCreateTextButton(parent, "Evil Karma", function(condition, ...)
		if condition then
			handler(killEvilToggle)
		end
		return pState.setKarmaKill("evil", condition)
	end)
	killGoodToggle = secondaryCreateTextButton(parent, "Good Karma", function(condition, ...)
		if condition then
			handler(killGoodToggle)
		end
		return pState.setKarmaKill("good", condition)
	end)
	killServerHopToggle = secondaryCreateTextButton(parent, "Server Hop (every 2 minutes)", function(flag, ...)
		if flag and (killTargetToggle and killTargetToggle:Get()) then
			return false
		end
		return pState.setServerHop(flag)
	end)
	local textResult, flag = createStatusDot(parent, "Pr\195\179ximo servidor:", "2m 00s", colors.cyan)
	flag.Visible = false
	pState.kill.updateHopStatus = function(numberText, condition, ...)
		if not flag or not flag.Parent then
			return
		end
		if numberText == nil then
			flag.Visible = false
			return
		end
		flag.Visible = true
		local serversVisited = pState.kill.serversVisited
		local text = "  \226\128\162  " .. (serversVisited .. (serversVisited == 1 and " servidor" or " servidores"))
		if condition then
			textResult.Text = condition .. text
		else
			local number = math.max(0, math.floor(tonumber(numberText) or 0))
			textResult.Text = string.format("%dm %02ds", math.floor(number / 60), number % 60) .. text
		end
	end
	killProtectToggle = secondaryCreateTextButton(parent, "Do not kill my friends", function(argument, ...)
		return pState.setProtectFriends(argument)
	end)
	local killSelector = secondaryCreateFrame(parent, "Choose Player", previousHandler(), function(item, ...)
		pState.kill.target = type(item) == "table" and item.name or item
	end, function(instance, ...)
		runService.Heartbeat:Wait()
		runService.Heartbeat:Wait()
		local number = math.max(0, parent.AbsoluteCanvasSize.Y - parent.AbsoluteSize.Y)
		local difference = ((instance.AbsolutePosition.Y - parent.AbsolutePosition.Y) + parent.CanvasPosition.Y) - 3
		(tweenService:Create(
			parent,
			TweenInfo.new(0.18, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
			{ ["CanvasPosition"] = Vector2.new(0, math.clamp(difference, 0, number)) }
		)):Play()
	end)
	killTargetToggle = secondaryCreateTextButton(parent, "Kill Selected Player", function(condition, ...)
		if condition then
			handler(killTargetToggle)
			if killServerHopToggle and killServerHopToggle:Get() then
				killServerHopToggle:Set(false)
			end
		end
		return pState.setTargetKill(condition)
	end)
	pState.killSelector = killSelector
	pState.killAutoToggle = killAutoToggle
	pState.killEvilToggle = killEvilToggle
	pState.killGoodToggle = killGoodToggle
	pState.killTargetToggle = killTargetToggle
	pState.killProtectToggle = killProtectToggle
	pState.killServerHopToggle = killServerHopToggle
	handleSendGiftRemote("killCounter", function(...)
		while pState.running and instance.Parent do
			local flag = isUpdateInstancePropertiesValid(backpackContainer, { "Kills" })
			instance.Text = handleValueLabelText(flag and flag.Value or 0)
			task.wait(0.5)
		end
	end)
end
if pState.resume and pState.resume.script == "fg100.lua" then
	updateScrollingFrame(
		type(pState.resume.tab) == "string" and (pages[pState.resume.tab] and pState.resume.tab) or "Info"
	)
	if pState.resume.protectFriends and pState.killProtectToggle then
		pState.killProtectToggle:Set(true)
	end
	if pState.resume.autoKill and pState.killAutoToggle then
		pState.killAutoToggle:Set(true)
	end
	if pState.resume.karmaMode == "evil" and pState.killEvilToggle then
		pState.killEvilToggle:Set(true)
	elseif pState.resume.karmaMode == "good" and pState.killGoodToggle then
		pState.killGoodToggle:Set(true)
	end
	if pState.resume.serverHop and pState.killServerHopToggle then
		pState.killServerHopToggle:Set(true)
	end
else
	updateScrollingFrame("Info")
end
do
	local secondaryParent = pages["Fast Trade"]
	secondaryParent:SetAttribute("TightCanvas", true)
	createFrame(secondaryParent, "FAST TRADE")
	local function createFrameFlag(instance, ...)
		runService.Heartbeat:Wait()
		local flagNumber = math.max(0, secondaryParent.AbsoluteCanvasSize.Y - secondaryParent.AbsoluteSize.Y)
		local difference = (
			(instance.AbsolutePosition.Y - secondaryParent.AbsolutePosition.Y) + secondaryParent.CanvasPosition.Y
		) - 3
		(tweenService:Create(
			secondaryParent,
			TweenInfo.new(0.18, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
			{ ["CanvasPosition"] = Vector2.new(0, math.clamp(difference, 0, flagNumber)) }
		)):Play()
	end
	local function secondaryHandler(...)
		local nameData = {}
		local petsFolder = backpackContainer:FindFirstChild("petsFolder")
		if petsFolder then
			for index, item in ipairs(petsFolder:GetChildren()) do
				if item:IsA("Folder") then
					for index, item in ipairs(item:GetChildren()) do
						nameData[item.Name] = (nameData[item.Name] or 0) + 1
					end
				end
			end
		end
		local data = {}
		for key in pairs(nameData) do
			data[#data + 1] = key
		end
		table.sort(data, function(argument, secondaryArgument, ...)
			return argument:lower() < secondaryArgument:lower()
		end)
		local secondaryData = {}
		for index, item in ipairs(data) do
			secondaryData[#secondaryData + 1] = {
				["label"] = item .. ("  x" .. handleValueLabelText(nameData[item])),
				["name"] = item,
				["count"] = nameData[item],
			}
		end
		return secondaryData
	end
	local function alternateHandler(activePet, secondaryArgument, ...)
		local data = {}
		local petsFolder = backpackContainer:FindFirstChild("petsFolder")
		if not petsFolder or type(activePet) ~= "string" then
			return data
		end
		for index, item in ipairs(petsFolder:GetChildren()) do
			if item:IsA("Folder") then
				for index, item in ipairs(item:GetChildren()) do
					if item.Name == activePet then
						data[#data + 1] = item
						if #data >= secondaryArgument then
							return data
						end
					end
				end
			end
		end
		return data
	end
	local function additionalHandler(activePet, ...)
		return #alternateHandler(activePet, math.huge)
	end
	local function isValid(alternateParent, ...)
		local secondaryParent = alternateParent
		while secondaryParent and secondaryParent ~= parent do
			if secondaryParent:IsA("GuiObject") and not secondaryParent.Visible then
				return false
			end
			secondaryParent = secondaryParent.Parent
		end
		return secondaryParent == parent
	end
	local function fallbackHandler(...)
		local item, number = nil, 0
		for index, secondaryItem in ipairs(parent:GetDescendants()) do
			if
				secondaryItem:IsA("GuiObject")
				and (not secondaryItem:IsDescendantOf(screenGui) and isValid(secondaryItem))
			then
				local lower = secondaryItem.Name:lower()
				if
					(lower:find("trade", 1, true) or lower:find("trading", 1, true))
					and (secondaryItem.AbsoluteSize.X >= 160 and secondaryItem.AbsoluteSize.Y >= 110)
				then
					local product = secondaryItem.AbsoluteSize.X * secondaryItem.AbsoluteSize.Y
					if product > number then
						item, number = secondaryItem, product
					end
				end
			end
		end
		return item
	end
	local function secondaryIsValid(isValidFlag, ...)
		local lower = (tostring(isValidFlag or "")):lower()
		return lower:find("accepted", 1, true)
			or lower:find("ready", 1, true)
			or lower:find("aceptado", 1, true)
			or lower:find("acept\195\179", 1, true)
			or lower:find("listo", 1, true)
			or lower:find("confirmado", 1, true)
	end
	local function nestedHandler(parent, instance, ...)
		local searchableText = instance.Name:lower()
		local secondarySearchableText = instance.DisplayName:lower()
		for index, item in ipairs(parent:GetDescendants()) do
			if item:IsA("TextLabel") or item:IsA("TextButton") then
				local lower = (tostring(item.Text or "")):lower()
				if lower:find(searchableText, 1, true) or lower:find(secondarySearchableText, 1, true) then
					return true
				end
			end
		end
		return false
	end
	local function innerHandler(parentFlag, instance, ...)
		local flag = false
		for index, item in ipairs(parentFlag:GetDescendants()) do
			if
				(item:IsA("TextLabel") or item:IsA("TextButton")) and (isValid(item) and secondaryIsValid(item.Text))
			then
				local parent = item.Parent
				for index = 1, 4, 1 do
					if not parent or parent == parentFlag.Parent then
						break
					end
					if nestedHandler(parent, instance) then
						return true
					end
					parent = parent.Parent
				end
				local lower = (item:GetFullName()):lower()
				if
					lower:find("other", 1, true)
					or lower:find("opponent", 1, true)
					or lower:find("player2", 1, true)
					or lower:find("recipient", 1, true)
				then
					return true
				end
				if item:IsA("TextLabel") then
					flag = true
				end
			end
		end
		return flag
	end
	local function alternateIsValid(...)
		local rEvents = replicatedStorage:FindFirstChild("rEvents")
		return rEvents and (rEvents:FindFirstChild("tradingEvent") or rEvents:FindFirstChild("tradeRemote"))
	end
	local function secondaryPcall(pcallFlag, secondaryArgument, item, ...)
		if not pcallFlag then
			return false
		end
		if pcallFlag:IsA("RemoteFunction") then
			return pcall(pcallFlag.InvokeServer, pcallFlag, secondaryArgument, item)
		end
		return pcall(pcallFlag.FireServer, pcallFlag, secondaryArgument, item)
	end
	local updateInstancePropertiesFlag
	local clampedValue = 6
	local updateInstancePropertiesNumber = 0
	local function updateInstanceProperties(displayValue, delivered, total, ...)
		if delivered ~= nil then
			pState.trade.delivered = delivered
		end
		if total ~= nil then
			pState.trade.total = total
		end
		if updateInstancePropertiesFlag and (updateInstancePropertiesFlag.Parent and displayValue) then
			updateInstancePropertiesNumber = updateInstancePropertiesNumber + 1
			local capturedSum = updateInstancePropertiesNumber
			updateInstancePropertiesFlag.Text = tostring(displayValue)
			if not pState.trade.busy then
				task.delay(1.4, function(...)
					if
						updateInstancePropertiesFlag
						and (
							updateInstancePropertiesFlag.Parent
							and (not pState.trade.busy and updateInstancePropertiesNumber == capturedSum)
						)
					then
						updateInstancePropertiesFlag.Text = "Iniciar Fast Trade"
					end
				end)
			end
		end
	end
	local function secondaryUpdateInstanceProperties(updateInstancePropertiesCondition, ...)
		pState.trade.requestGeneration = pState.trade.requestGeneration + 1
		pState.trade.busy = false
		pState.trade.activePlayer = nil
		pState.trade.activePet = nil
		handleValue("fastTrade")
		if updateInstancePropertiesFlag and updateInstancePropertiesFlag.Parent then
			updateInstancePropertiesFlag.Text = "Iniciar Fast Trade"
		end
		if updateInstancePropertiesCondition then
			updateInstanceProperties(updateInstancePropertiesCondition)
		end
	end
	local flag = false
	local result = secondaryCreateFrame(secondaryParent, "Choose Player", previousHandler(), function(item, ...)
		local option = type(item) == "table" and item.name or item
		if not flag and (pState.trade.busy and (pState.trade.activePlayer and option ~= pState.trade.activePlayer)) then
			secondaryUpdateInstanceProperties("Cancelling Change of user..")
		end
	end, createFrameFlag)
	local secondaryResult = secondaryCreateFrame(
		secondaryParent,
		"Choose Pet",
		secondaryHandler(),
		function(item, ...)
			local option = type(item) == "table" and item.name or item
			if not flag and (pState.trade.busy and (pState.trade.activePet and option ~= pState.trade.activePet)) then
				secondaryUpdateInstanceProperties("Cancelado: cambi\195\179 la pet")
			end
		end,
		createFrameFlag
	)
	local alternateResult = secondaryCreateFrame(
		secondaryParent,
		"Cantidad",
		{ 6, 5, 4, 3, 2, 1 },
		function(numberText, ...)
			clampedValue = math.clamp(math.floor(tonumber(numberText) or 6), 1, 6)
		end,
		createFrameFlag
	)
	local function additionalIsValid(item, ...)
		return type(item) == "table" and item.name or item
	end
	local function outerHandler(pcallFlag, item, requestGeneration, ...)
		local sum = 0
		while
			pState.running
			and (pState.trade.busy and (pState.trade.requestGeneration == requestGeneration and item.Parent))
		do
			local condition = fallbackHandler()
			if condition then
				return condition
			end
			if time() >= sum then
				secondaryPcall(pcallFlag, "sendTradeRequest", item)
				sum = time() + 1.25
				updateInstanceProperties("Enviando solicitud hasta que acepte...")
			end
			task.wait(0.1)
		end
		return nil
	end
	updateInstancePropertiesFlag = createTextButton(secondaryParent, "Iniciar Fast Trade", function(textArgument, ...)
		if pState.trade.busy then
			secondaryUpdateInstanceProperties("Cancelado por el usuario")
			return
		end
		if fallbackHandler() then
			updateInstanceProperties("Cerr\195\161 el trade actual antes de iniciar")
			return
		end
		local activePlayer = additionalIsValid(result:Get())
		local activePet = additionalIsValid(secondaryResult:Get())
		local option = activePlayer and players:FindFirstChild(activePlayer)
		local flag = alternateIsValid()
		local total = math.clamp(math.floor(tonumber(alternateResult:Get()) or clampedValue), 1, 6)
		if not option or option == backpackContainer then
			updateInstanceProperties("Choosing a Player v\195\161lido")
			return
		end
		if not activePet then
			updateInstanceProperties("Choose a Pet")
			return
		end
		if not flag then
			updateInstanceProperties("Trade Remote not found")
			return
		end
		if additionalHandler(activePet) < total then
			updateInstanceProperties("you dont have that amount of pets")
			return
		end
		pState.trade.requestGeneration = pState.trade.requestGeneration + 1
		local requestGeneration = pState.trade.requestGeneration
		pState.trade.busy = true
		pState.trade.activePlayer = activePlayer
		pState.trade.activePet = activePet
		pState.trade.delivered = 0
		pState.trade.total = total
		textArgument.Text = "Cancel Fast Trade"
		updateInstanceProperties("Preparing first shit...", 0, total)
		handleSendGiftRemote("fastTrade", function(...)
			while
				pState.running
				and (
					pState.trade.busy
					and (pState.trade.requestGeneration == requestGeneration and pState.trade.delivered < total)
				)
			do
				if not option.Parent then
					secondaryUpdateInstanceProperties("The player leaved the server.")
					return
				end
				local difference = total - pState.trade.delivered
				local data = alternateHandler(activePet, math.min(6, difference))
				if #data == 0 then
					secondaryUpdateInstanceProperties("no pets remaining..")
					return
				end
				local number = #data
				local secondaryNumber = additionalHandler(activePet)
				local instance = outerHandler(flag, option, requestGeneration)
				if not instance then
					return
				end
				updateInstanceProperties("Choosing amount: " .. (number .. " of pets..."))
				for index, item in ipairs(data) do
					if not pState.trade.busy or pState.trade.requestGeneration ~= requestGeneration then
						return
					end
					if item.Parent then
						secondaryPcall(flag, "offerItem", item)
						task.wait(0.08)
					end
				end
				updateInstanceProperties("Waiting for the other user to accept")
				local secondaryFlag = false
				while
					pState.running
					and (
						pState.trade.busy
						and (
							pState.trade.requestGeneration == requestGeneration and (
								option.Parent and not secondaryFlag
							)
						)
					)
				do
					instance = fallbackHandler()
					if not instance then
						break
					end
					secondaryFlag = innerHandler(instance, option)
					task.wait(0.12)
				end
				if not pState.trade.busy or pState.trade.requestGeneration ~= requestGeneration then
					return
				end
				if not option.Parent then
					secondaryUpdateInstanceProperties("The player leaved the server")
					return
				end
				if not secondaryFlag then
					updateInstanceProperties("Trade closed, retrying...")
					task.wait(0.8)
				else
					updateInstanceProperties("Accepting the trade")
					secondaryPcall(flag, "acceptTrade")
					local sum = time() + 30
					local clampedValue = 0
					while
						pState.running
						and (
							pState.trade.busy and (pState.trade.requestGeneration == requestGeneration and time() < sum)
						)
					do
						clampedValue = math.clamp(secondaryNumber - additionalHandler(activePet), 0, number)
						if clampedValue > 0 then
							break
						end
						task.wait(0.2)
					end
					if clampedValue > 0 then
						pState.trade.delivered = math.min(total, pState.trade.delivered + clampedValue)
						updateInstanceProperties(
							pState.trade.delivered >= total and "Completed"
								or "Completed, preparing the next one",
							pState.trade.delivered,
							total
						)
						task.wait(0.8)
					else
						updateInstanceProperties("Failed, retrying...")
						while
							pState.running
							and (
								pState.trade.busy
								and (pState.trade.requestGeneration == requestGeneration and fallbackHandler())
							)
						do
							task.wait(0.25)
						end
						task.wait(0.5)
					end
				end
			end
			if pState.trade.requestGeneration == requestGeneration and pState.trade.delivered >= total then
				pState.trade.busy = false
				pState.trade.activePlayer = nil
				pState.trade.activePet = nil
				textArgument.Text = "Start Fast Trade"
				updateInstanceProperties(
					"Completed: " .. (handleValueLabelText(total) .. " delivered pets"),
					total,
					total
				)
			end
		end)
	end, colors.row, Color3.fromRGB(16, 78, 92))
	local function onPlayerAdded(...)
		flag = true
		result:SetValues(previousHandler(), true)
		flag = false
	end
	local secondaryFlag = false
	local function currentHandler(...)
		if secondaryFlag then
			return
		end
		secondaryFlag = true
		task.delay(0.15, function(...)
			secondaryFlag = false
			if pState.running then
				flag = true
				secondaryResult:SetValues(secondaryHandler(), true)
				flag = false
			end
		end)
	end
	handleFrame(players.PlayerAdded:Connect(onPlayerAdded))
	handleFrame(players.PlayerRemoving:Connect(onPlayerAdded))
	handleFrame(backpackContainer.DescendantAdded:Connect(function(argument, ...)
		local petsFolder = backpackContainer:FindFirstChild("petsFolder")
		if petsFolder and argument:IsDescendantOf(petsFolder) then
			currentHandler()
		end
	end))
	handleFrame(backpackContainer.DescendantRemoving:Connect(function(argument, ...)
		local petsFolder = backpackContainer:FindFirstChild("petsFolder")
		if petsFolder and argument:IsDescendantOf(petsFolder) then
			currentHandler()
		end
	end))
	handler(function(...)
		secondaryUpdateInstanceProperties()
	end)
end
local gifts = pages.Gifts
createFrame(gifts, "Gifts")
local textResult = createStatusDot(gifts, "Eggs", "0", colors.cyan)
local sendGiftRemoteResult = createStatusDot(gifts, "Tropical Shakes", "0", colors.cyan)
createFrame(gifts, "Send Gifts")
local secondarySendGiftRemoteResult = secondaryCreateFrame(gifts, "Player", previousHandler(), function(...) end)
local count = 1
local clampedValue = 1
local condition = nil
local textCondition = nil
alternateCreateFrame(gifts, "Amount of  Eggs", "1", function(numberText, ...)
	count = math.clamp(math.floor(tonumber(numberText) or 1), 1, 9999)
	if condition then
		condition.Text = "\240\159\165\154 Send "
			.. (count .. (" Protein Egg" .. ((count == 1 and "" or "s") .. " \240\159\165\154")))
	end
end)
local function isValid(isValidFlag, ...)
	return type(isValidFlag) == "table" and isValidFlag or { isValidFlag }
end
local function secondaryHandleSendGiftRemote(consumablesFolder, isValidFlag, ...)
	if not consumablesFolder then
		return nil
	end
	for index, item in ipairs(isValid(isValidFlag)) do
		local firstChild = consumablesFolder:FindFirstChild(item)
		if firstChild then
			return firstChild
		end
	end
	return nil
end
local function alternateHandleSendGiftRemote(isValidFlag, ...)
	local consumablesFolder = backpackContainer:FindFirstChild("consumablesFolder")
	if not consumablesFolder then
		return 0
	end
	local data = {}
	for index, item in ipairs(isValid(isValidFlag)) do
		data[item] = true
	end
	local sum = 0
	for index, item in ipairs(consumablesFolder:GetChildren()) do
		if data[item.Name] then
			sum = sum + 1
		end
	end
	return sum
end
local function sendGiftRemote(
	isSendGiftRemoteValidFlag,
	text,
	count,
	instance,
	secondarySendGiftRemoteText,
	numberText,
	...
)
	local item = secondarySendGiftRemoteResult:Get()
	local sendGiftRemoteOption = type(item) == "table" and item.name or item
	local sendGiftRemoteFlag = sendGiftRemoteOption and players:FindFirstChild(sendGiftRemoteOption)
	local consumablesFolder = backpackContainer:FindFirstChild("consumablesFolder")
	local rEvents = replicatedStorage:FindFirstChild("rEvents")
	local remoteFunction = rEvents and rEvents:FindFirstChild("giftRemote")
	local sendGiftRemoteText = secondarySendGiftRemoteText
		.. (
			" Send "
			.. (count .. (" " .. (text .. ((count == 1 and "" or "s") .. (" " .. secondarySendGiftRemoteText)))))
		)
	if not sendGiftRemoteFlag or not consumablesFolder or not remoteFunction then
		instance.Text = "Choose a player"
		task.delay(0.9, function(...)
			if instance and instance.Parent then
				instance.Text = sendGiftRemoteText
			end
		end)
		return
	end
	handleSendGiftRemote("giftSender", function(...)
		local sendGiftRemoteNumber = 0
		local number = 0
		local secondarySendGiftRemoteNumber = math.max(tonumber(numberText) or 0.1, 0.08)
		for index = 1, count, 1 do
			if not pState.running then
				break
			end
			local flag = secondaryHandleSendGiftRemote(consumablesFolder, isSendGiftRemoteValidFlag)
			if not flag then
				break
			end
			local sendGiftRemoteResult = isSendGiftRemoteCachedPingValid()
			while pState.running and sendGiftRemoteResult >= 650 do
				task.wait(0.25)
				sendGiftRemoteResult = isSendGiftRemoteCachedPingValid()
			end
			if not pState.running then
				break
			end
			local success = pcall(function(...)
				remoteFunction:InvokeServer("giftRequest", sendGiftRemoteFlag, flag)
			end)
			if success then
				sendGiftRemoteNumber = sendGiftRemoteNumber + 1
			end
			if time() - number >= 0.25 then
				instance.Text = secondarySendGiftRemoteText
					.. (
						" Enviando "
						.. (sendGiftRemoteNumber .. ("/" .. (count .. (" " .. secondarySendGiftRemoteText))))
					)
				number = time()
			end
			local alternateSendGiftRemoteNumber = secondarySendGiftRemoteNumber
			if sendGiftRemoteResult >= 400 then
				alternateSendGiftRemoteNumber = math.max(alternateSendGiftRemoteNumber, 0.4)
			elseif sendGiftRemoteResult >= 250 then
				alternateSendGiftRemoteNumber = math.max(alternateSendGiftRemoteNumber, 0.28)
			elseif sendGiftRemoteResult >= 150 then
				alternateSendGiftRemoteNumber = math.max(alternateSendGiftRemoteNumber, 0.2)
			end
			task.wait(alternateSendGiftRemoteNumber)
		end
		if instance and instance.Parent then
			instance.Text = sendGiftRemoteText
		end
		textResult.Text = handleValueLabelText(alternateHandleSendGiftRemote(public.AutoEgg.Names))
		sendGiftRemoteResult.Text = handleValueLabelText(alternateHandleSendGiftRemote("Tropical Shake"))
	end)
end
condition = createTextButton(
	gifts,
	"\240\159\165\154 Send 1 Protein Egg \240\159\165\154",
	function(sendGiftRemoteFlag, ...)
		sendGiftRemote(public.AutoEgg.Names, "Protein Egg", count, sendGiftRemoteFlag, "\240\159\165\154", 0.16)
	end
)
alternateCreateFrame(gifts, "Cantidad de Shakes", "1", function(numberText, ...)
	clampedValue = math.clamp(math.floor(tonumber(numberText) or 1), 1, 9999)
	if textCondition then
		textCondition.Text = "\240\159\165\164 Send "
			.. (clampedValue .. (" Tropical Shake" .. ((clampedValue == 1 and "" or "s") .. " \240\159\165\164")))
	end
end)
textCondition = createTextButton(
	gifts,
	"\240\159\165\164 Send 1 Tropical Shake \240\159\165\164",
	function(sendGiftRemoteFlag, ...)
		sendGiftRemote("Tropical Shake", "Tropical Shake", clampedValue, sendGiftRemoteFlag, "\240\159\165\164", 0.16)
	end
)
handleSendGiftRemote("giftUpdater", function(...)
	while pState.running do
		if not valueData.giftSender then
			textResult.Text = handleValueLabelText(alternateHandleSendGiftRemote(public.AutoEgg.Names))
			sendGiftRemoteResult.Text = handleValueLabelText(alternateHandleSendGiftRemote("Tropical Shake"))
		end
		task.wait(2)
	end
end)
local function currentHandler(...)
	local data = {}
	local secondaryData = {}
	local cPetShopFolder = replicatedStorage:FindFirstChild("cPetShopFolder")
	if cPetShopFolder then
		for index, item in ipairs(public.UniquePets) do
			if cPetShopFolder:FindFirstChild(item) then
				data[#data + 1] = item
			end
		end
		for index, item in ipairs(public.UniqueAuras) do
			if cPetShopFolder:FindFirstChild(item) then
				secondaryData[#secondaryData + 1] = item
			end
		end
	else
		for index, item in ipairs(public.UniquePets) do
			data[#data + 1] = item
		end
		for index, item in ipairs(public.UniqueAuras) do
			secondaryData[#secondaryData + 1] = item
		end
	end
	return data, secondaryData
end
local createFrameFlag, createFrameData = currentHandler()
local nestedParent = pages["Pet Shop"]
createFrame(nestedParent, "\240\159\144\190 Pets \240\159\144\190")
local result = secondaryCreateFrame(nestedParent, "Choose Pet", createFrameFlag, function(...) end)
local function sendCPetShopRemote(flag, ...)
	local cPetShopFolder = replicatedStorage:FindFirstChild("cPetShopFolder")
	local cPetShopRemote = replicatedStorage:FindFirstChild("cPetShopRemote")
	local option = cPetShopFolder and (flag and cPetShopFolder:FindFirstChild(flag))
	if not option or not cPetShopRemote then
		return false
	end
	local success = pcall(function(...)
		cPetShopRemote:InvokeServer(option)
	end)
	return success
end
createTextButton(nestedParent, "\240\159\144\190 Buy Pets \240\159\144\190", function(...)
	sendCPetShopRemote(result:Get())
end)
secondaryCreateTextButton(nestedParent, "\240\159\148\129 Auto Buy Pet \240\159\148\129", function(autoPet, ...)
	pState.autoPet = autoPet
	if not autoPet then
		handleValue("autoPet")
		return
	end
	handleSendGiftRemote("autoPet", function(...)
		while pState.running and pState.autoPet do
			sendCPetShopRemote(result:Get())
			task.wait(0.18)
		end
	end)
end)
createFrame(nestedParent, "\240\159\140\140 Auras \240\159\140\140")
local secondaryResult = secondaryCreateFrame(nestedParent, "Choose Aura", createFrameData, function(...) end)
createTextButton(nestedParent, "\240\159\140\140 Buy Aura \240\159\140\140", function(...)
	sendCPetShopRemote(secondaryResult:Get())
end)
secondaryCreateTextButton(nestedParent, "\240\159\148\129 Auto Buy Aura \240\159\148\129", function(autoAura, ...)
	pState.autoAura = autoAura
	if not autoAura then
		handleValue("autoAura")
		return
	end
	handleSendGiftRemote("autoAura", function(...)
		while pState.running and pState.autoAura do
			sendCPetShopRemote(secondaryResult:Get())
			task.wait(0.18)
		end
	end)
end)
local function secondaryTaskCallback(...)
	local additionalResult, alternateResult = currentHandler()
	result:SetValues(additionalResult, true)
	secondaryResult:SetValues(alternateResult, true)
end
local cPetShopFolder = replicatedStorage:FindFirstChild("cPetShopFolder")
if cPetShopFolder then
	handleFrame(cPetShopFolder.ChildAdded:Connect(function(...)
		task.defer(secondaryTaskCallback)
	end))
	handleFrame(cPetShopFolder.ChildRemoved:Connect(function(...)
		task.defer(secondaryTaskCallback)
	end))
else
	handleFrame(replicatedStorage.ChildAdded:Connect(function(instance, ...)
		if instance.Name == "cPetShopFolder" then
			task.defer(secondaryTaskCallback)
		end
	end))
end
local innerParent = pages.Stats
createFrame(innerParent, "\226\143\177\239\184\143 Sesi\195\179n \226\143\177\239\184\143")
local secondaryTextResult = createStatusDot(innerParent, "Executed since:", "0d 0h 0m 0s", colors.cyan)
createFrame(innerParent, "\240\159\147\138 STATS \240\159\147\138")
local fallbackData = {
	{ ["label"] = "\240\159\146\170 Strenght \240\159\146\170", ["names"] = { "Strength", "Fuerza" } },
	{
		["label"] = "\240\159\155\161\239\184\143 Durability \240\159\155\161\239\184\143",
		["names"] = { "Durability", "Durabilidad" },
	},
	{ ["label"] = "\240\159\148\132 Rebirths \240\159\148\132", ["names"] = { "Rebirths", "Rebirths" } },
	{ ["label"] = "\226\154\148\239\184\143 Kills \226\154\148\239\184\143", ["names"] = { "Kills" } },
	{ ["label"] = "\240\159\152\136 Evil Karma \240\159\152\136", ["names"] = { "evilKarma", "Evil Karma" } },
	{ ["label"] = "\240\159\152\135 Good Karma \240\159\152\135", ["names"] = { "goodKarma", "Good Karma" } },
}
local nestedData = {}
for index, item in ipairs(fallbackData) do
	item.valueLabel = createStatusDot(innerParent, item.label, "0 (+0)", colors.white)
	local flag = isUpdateInstancePropertiesValid(backpackContainer, item.names)
	nestedData[item] = flag and tonumber(flag.Value) or 0
end
local timeResult = os.time()
handleSendGiftRemote("statsUpdater", function(...)
	while pState.running do
		local difference = os.time() - timeResult
		secondaryTextResult.Text = math.floor(difference / 86400)
			.. (
				"d "
				.. (
					math.floor((difference % 86400) / 3600)
					.. ("h " .. (math.floor((difference % 3600) / 60) .. ("m " .. (difference % 60 .. "s"))))
				)
			)
		for index, item in ipairs(fallbackData) do
			local flag = isUpdateInstancePropertiesValid(backpackContainer, item.names)
			local valueLabelTextNumber = flag and tonumber(flag.Value) or 0
			local difference = valueLabelTextNumber - (nestedData[item] or 0)
			item.valueLabel.Text = handleValueLabelText(valueLabelTextNumber)
				.. (" (" .. (secondaryHandleValueLabelText(difference) .. ")"))
		end
		task.wait(0.5)
	end
end)
local shutdown = nil
local misc = pages.Misc
createFrame(misc, "\240\159\150\165\239\184\143 Status \240\159\150\165\239\184\143")
secondaryCreateTextButton(misc, "Anti Lag 100%", function(argument, ...)
	updateDescendantAddedConnection(argument)
end)
local instance = handleInstance(misc, "Disabled")
handleInstanceProperties = function(text, ...)
	if instance and instance.Parent then
		instance.Text = text
	end
end
createFrame(misc, "\240\159\154\128 FLY \240\159\154\128")
secondaryCreateTextButton(misc, " Fly ", function(argument, ...)
	nestedUpdateInstanceProperties(argument)
end)
updatePositionFromInput(misc, "Fly Speed", 1, 30, pState.flyLevel, function(flyLevel, ...)
	pState.flyLevel = flyLevel
end)
createFrame(misc, "\226\154\153\239\184\143 MISC \226\154\153\239\184\143")
secondaryCreateTextButton(misc, "\240\159\140\128 Spin \240\159\140\128", function(argument, ...)
	secondaryUpdateSpin(argument)
end)
secondaryCreateTextButton(misc, "\226\154\161 Fast Speed \226\154\161", function(fastSpeedFlag, ...)
	updateFastSpeed(fastSpeedFlag)
end)
secondaryCreateTextButton(misc, "\240\159\140\138 Walk on Water \240\159\140\138", function(argument, ...)
	handleSendGiftRemote("walkWater", function(...)
		createPart(argument)
	end)
end)
secondaryCreateTextButton(misc, "\240\159\145\187 No Clip \240\159\145\187", function(argument, ...)
	updateSteppedConnection(argument)
end)
secondaryCreateTextButton(
	misc,
	"\240\159\155\161\239\184\143 Anti Knockback \240\159\155\161\239\184\143",
	function(argument, ...)
		pState.setAntiKnockback(argument)
	end
)
secondaryCreateTextButton(misc, "\240\159\142\161 Auto Spin Fortune Wheel \240\159\142\161", function(argument, ...)
	sendOpenFortuneWheelRemote(argument)
end)
secondaryCreateTextButton(misc, "\240\159\142\129 Auto Claim Chests \240\159\142\129", function(argument, ...)
	updateAutoClaimChests(argument)
end)
secondaryCreateTextButton(misc, "\240\159\154\171 Remove AD Portal \240\159\154\171", function(argument, ...)
	updateRemovePortals(argument)
end)
createFrame(misc, "\240\159\147\185 SPY \240\159\147\185")
local alternateResult = secondaryCreateFrame(misc, "Choose Player", previousHandler(), function(item, ...)
	pState.spyTarget = type(item) == "table" and item.name or item
end)
secondaryCreateTextButton(misc, "Spy", function(flag, ...)
	if flag and not pState.spyTarget then
		return false
	end
	updateSpy(flag)
end)
createTextButton(misc, "\226\157\140 Close Script \226\157\140", function(...)
	if shutdown then
		shutdown(false)
	end
end, colors.row, Color3.fromRGB(72, 34, 52))
local function alternateTaskCallback(...)
	local result = previousHandler()
	local target = pState.kill.target
	secondarySendGiftRemoteResult:SetValues(result, true)
	alternateResult:SetValues(result, true)
	if pState.killSelector then
		pState.killSelector:SetValues(result, true)
	end
	if pState.spy and (pState.spyTarget and not players:FindFirstChild(pState.spyTarget)) then
		updateSpy(false)
	end
	if pState.kill.targetMode and (target and not players:FindFirstChild(target)) then
		pState.setTargetKill(false)
		if pState.killTargetToggle then
			pState.killTargetToggle:Set(false, true)
		end
	end
end
handleFrame(players.PlayerAdded:Connect(function(argument, ...)
	pState.clearKillFriend(argument)
	alternateTaskCallback()
end))
handleFrame(players.PlayerRemoving:Connect(function(argument, ...)
	pState.clearKillFriend(argument)
	task.defer(alternateTaskCallback)
end))
frame = Instance.new("Frame")
frame.Name = "FlyControls"
frame.Size = UDim2.fromOffset(106, 48)
frame.Position = UDim2.new(1, -120, 1, -70)
frame.BackgroundTransparency = 1
frame.Visible = false
frame.ZIndex = 100
frame.Parent = screenGui
local function alternateCreateTextButton(createTextButton, secondaryArgument, ...)
	local parent = Instance.new("TextButton")
	parent.Size = UDim2.fromOffset(48, 48)
	parent.Position = UDim2.fromOffset(secondaryArgument, 0)
	parent.BackgroundColor3 = colors.tabOn
	parent.BackgroundTransparency = 0.18
	parent.BorderSizePixel = 0
	parent.Text = createTextButton
	parent.TextColor3 = colors.white
	parent.Font = Enum.Font.FredokaOne
	parent.TextSize = 20
	parent.AutoButtonColor = false
	parent.ZIndex = 101
	parent.Parent = frame;
	(Instance.new("UICorner", parent)).CornerRadius = UDim.new(0, 10)
	local uiStroke = Instance.new("UIStroke", parent)
	uiStroke.Color = colors.cyan
	uiStroke.Thickness = 1
	uiStroke.Transparency = 0.2
	return parent
end
local guiObject = alternateCreateTextButton("\226\150\178", 0)
local secondaryGuiObject = alternateCreateTextButton("\226\150\188", 58)
handleFrame(guiObject.InputBegan:Connect(function(input, ...)
	if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
		flag = true
	end
end))
handleFrame(guiObject.InputEnded:Connect(function(input, ...)
	if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
		flag = false
	end
end))
handleFrame(secondaryGuiObject.InputBegan:Connect(function(input, ...)
	if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
		secondaryFlag = true
	end
end))
handleFrame(secondaryGuiObject.InputEnded:Connect(function(input, ...)
	if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
		secondaryFlag = false
	end
end))
handleFrame(runService.Heartbeat:Connect(function(...)
	if not pState.running then
		return
	end
	local filterDescendantsInstancesFlag = getValueCharacter()
	local instanceFlag = isUseToolValid()
	local parent = isSendHitEventValid()
	if pState.fastSpeed and instanceFlag then
		instanceFlag.WalkSpeed = 1000
	end
	if pState.fly and (instanceFlag and (parent and workspace.CurrentCamera)) then
		if not bodyGyro or bodyGyro.Parent ~= parent then
			updatePlatformStand()
			bodyGyro = Instance.new("BodyGyro")
			bodyGyro.Name = "Young0xFlyGyro"
			bodyGyro.P = 12000
			bodyGyro.MaxTorque = Vector3.new(9000000000, 9000000000, 9000000000)
			bodyGyro.Parent = parent
			bodyVelocity = Instance.new("BodyVelocity")
			bodyVelocity.Name = "Young0xFlyVelocity"
			bodyVelocity.P = 15000
			bodyVelocity.MaxForce = Vector3.new(9000000000, 9000000000, 9000000000)
			bodyVelocity.Parent = parent
		end
		local currentCamera = workspace.CurrentCamera
		local sum = 160 + (math.clamp(pState.flyLevel, 1, 30) - 1) * 24
		local number = sum + (pState.fastSpeed and 1000 or 0)
		local unit = Vector3.zero
		if userInputService:IsKeyDown(Enum.KeyCode.W) then
			unit = unit + currentCamera.CFrame.LookVector
		end
		if userInputService:IsKeyDown(Enum.KeyCode.S) then
			unit = unit - currentCamera.CFrame.LookVector
		end
		if userInputService:IsKeyDown(Enum.KeyCode.D) then
			unit = unit + currentCamera.CFrame.RightVector
		end
		if userInputService:IsKeyDown(Enum.KeyCode.A) then
			unit = unit - currentCamera.CFrame.RightVector
		end
		if unit.Magnitude < 0.05 and instanceFlag.MoveDirection.Magnitude > 0.05 then
			unit = instanceFlag.MoveDirection
		end
		if unit.Magnitude > 0 then
			unit = unit.Unit
		end
		local secondaryNumber = 0
		if userInputService:IsKeyDown(Enum.KeyCode.Space) or instanceFlag.Jump or flag then
			secondaryNumber = 1
		elseif userInputService:IsKeyDown(Enum.KeyCode.LeftControl) or secondaryFlag then
			secondaryNumber = -1
		end
		instanceFlag.PlatformStand = true
		bodyGyro.MaxTorque = pState.spin and Vector3.new(9000000000, 0, 9000000000)
			or Vector3.new(9000000000, 9000000000, 9000000000)
		bodyGyro.CFrame = currentCamera.CFrame
		local product = secondaryNumber * number
		local velocity = unit * number + Vector3.new(0, product, 0)
		bodyVelocity.Velocity = velocity
	elseif not pState.fly and (bodyGyro or bodyVelocity) then
		updatePlatformStand()
	end
	if pState.antiKnockback and (parent and (instanceFlag and not pState.fly)) then
		if not pState.antiKnockbackVelocity or pState.antiKnockbackVelocity.Parent ~= parent then
			pState.clearAntiKnockback()
			pState.antiKnockbackVelocity = Instance.new("BodyVelocity")
			pState.antiKnockbackVelocity.Name = "Young0xAntiKnockback"
			pState.antiKnockbackVelocity.P = 25000
			pState.antiKnockbackVelocity.MaxForce = Vector3.new(1000000000, 0, 1000000000)
			pState.antiKnockbackVelocity.Parent = parent
		end
		local moveDirection = instanceFlag.MoveDirection
		local velocityNumber = pState.fastSpeed and 1000 or math.max(instanceFlag.WalkSpeed, 16)
		pState.antiKnockbackVelocity.Velocity =
			Vector3.new(moveDirection.X * velocityNumber, 0, moveDirection.Z * velocityNumber)
		parent.AssemblyLinearVelocity = Vector3.new(
			moveDirection.X * velocityNumber,
			math.clamp(parent.AssemblyLinearVelocity.Y, -90, 90),
			moveDirection.Z * velocityNumber
		)
		parent.AssemblyAngularVelocity = Vector3.zero
	elseif pState.antiKnockbackVelocity then
		pState.clearAntiKnockback()
	end
	if pState.noclip and (filterDescendantsInstancesFlag and parent) then
		if not pState.fly then
			local raycastParams = RaycastParams.new()
			raycastParams.FilterType = Enum.RaycastFilterType.Exclude
			raycastParams.FilterDescendantsInstances = { filterDescendantsInstancesFlag }
			pcall(function(...)
				raycastParams.RespectCanCollide = true
			end)
			local input = workspace:Raycast(parent.Position, Vector3.new(0, -18, 0), raycastParams)
			if input and input.Normal.Y >= 0.55 then
				local sum = (instanceFlag and instanceFlag.HipHeight or 2) + parent.Size.Y * 0.5
				local number = input.Position.Y + sum
				if parent.Position.Y < number + 0.08 then
					parent.CFrame = CFrame.new(parent.Position.X, number, parent.Position.Z) * parent.CFrame.Rotation
					parent.AssemblyLinearVelocity =
						Vector3.new(parent.AssemblyLinearVelocity.X, 0, parent.AssemblyLinearVelocity.Z)
				end
			end
		end
	end
	if pState.spin and (parent and instanceFlag) then
		if not bodyAngularVelocity or bodyAngularVelocity.Parent ~= parent then
			updateSpin()
			capturedInstanceFlag = instanceFlag
			autoRotate = instanceFlag.AutoRotate
			instanceFlag.AutoRotate = false
			bodyAngularVelocity = Instance.new("BodyAngularVelocity")
			bodyAngularVelocity.Name = "Young0xSpin"
			bodyAngularVelocity.AngularVelocity = Vector3.new(0, 7, 0)
			bodyAngularVelocity.MaxTorque = Vector3.new(0, 9000000000, 0)
			bodyAngularVelocity.P = 6000
			bodyAngularVelocity.Parent = parent
		end
	elseif bodyAngularVelocity then
		updateSpin()
	end
	if pState.spy and workspace.CurrentCamera then
		local player = pState.spyTarget and players:FindFirstChild(pState.spyTarget)
		local cameraSubject = player and (player.Character and player.Character:FindFirstChildWhichIsA("Humanoid"))
		if cameraSubject then
			workspace.CurrentCamera.CameraSubject = cameraSubject
		end
	end
end))
handleFrame(backpackContainer.CharacterAdded:Connect(function(...)
	task.wait(0.6)
	if pState.fastSpeed then
		updateWalkSpeed()
	end
	if pState.fastPunch then
		alternateUpdateInstanceProperties(true)
	end
	if not pState.spy then
		updateCameraSubject()
	end
end))
local draggingData = {
	["minimized"] = false,
	["dragging"] = false,
	["dragStart"] = nil,
	["startPosition"] = nil,
	["dragDistance"] = 0,
	["entranceRootTween"] = nil,
	["entranceFrameTweens"] = {},
	["minimizeTweens"] = {},
	["shuttingDown"] = false,
}
local function handleMinimized(minimizedData, ...)
	for index, item in ipairs(minimizedData) do
		pcall(item.Cancel, item)
		minimizedData[index] = nil
	end
end
local function updatePosition(position, ...)
	canvasGroup.Position = position
end
local function setMinimized(minimized, ...)
	if draggingData.minimized == minimized then
		return
	end
	draggingData.minimized = minimized
	if not minimized then
		scrollingFrame.Visible = true
		fallbackParent.Visible = true
	end
	handleMinimized(draggingData.entranceFrameTweens)
	handleMinimized(draggingData.minimizeTweens)
	local setMinimizedOption = minimized and capturedSizeNumber or sizeNumber
	local quotient = (sizeNumber - capturedSizeNumber) / 2
	local minimizeTweensOption = minimized and UDim2.new(0.5, 0, 0.5, -quotient) or UDim2.fromScale(0.5, 0.5)
	local tweenInfo = TweenInfo.new(0.22, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
	draggingData.minimizeTweens = {
		tweenService:Create(
			alternateParent,
			tweenInfo,
			{ ["Size"] = UDim2.fromOffset(setMinimizedNumber, setMinimizedOption), ["Position"] = minimizeTweensOption }
		),
		tweenService:Create(
			additionalParent,
			tweenInfo,
			{ ["Size"] = UDim2.fromOffset(setMinimizedNumber, setMinimizedOption), ["Position"] = minimizeTweensOption }
		),
		tweenService:Create(
			secondaryParent,
			tweenInfo,
			{
				["Size"] = UDim2.fromOffset(setMinimizedNumber, setMinimizedOption),
				["Position"] = minimizeTweensOption,
				["BackgroundTransparency"] = 0.1,
			}
		),
	}
	for index, item in ipairs(draggingData.minimizeTweens) do
		item:Play()
	end
	if minimized then
		task.delay(0.18, function(...)
			if draggingData.minimized then
				scrollingFrame.Visible = false
				fallbackParent.Visible = false
			end
		end)
	end
end
handleFrame(textButton.InputBegan:Connect(function(input, ...)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		draggingData.dragging = true
		draggingData.dragStart = input.Position
		draggingData.startPosition = canvasGroup.Position
		draggingData.dragDistance = 0
	end
end))
handleFrame(userInputService.InputChanged:Connect(function(input, ...)
	if not draggingData.dragging or not draggingData.dragStart or not draggingData.startPosition then
		return
	end
	if input.UserInputType ~= Enum.UserInputType.MouseMovement and input.UserInputType ~= Enum.UserInputType.Touch then
		return
	end
	local difference = input.Position - draggingData.dragStart
	draggingData.dragDistance = difference.Magnitude
	local vector = isNumberValid()
	local sum = (vector.X * draggingData.startPosition.X.Scale + draggingData.startPosition.X.Offset) + difference.X
	local number = (vector.Y * draggingData.startPosition.Y.Scale + draggingData.startPosition.Y.Offset) + difference.Y
	updatePosition(UDim2.fromOffset(sum, number))
end))
handleFrame(userInputService.InputEnded:Connect(function(input, ...)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		draggingData.dragging = false
	end
end))
handleFrame(textButton.Activated:Connect(function(...)
	if draggingData.dragDistance < 8 then
		setMinimized(not draggingData.minimized)
	end
end))
shutdown = function(condition, ...)
	if draggingData.shuttingDown then
		return
	end
	draggingData.shuttingDown = true
	if draggingData.entranceRootTween then
		pcall(draggingData.entranceRootTween.Cancel, draggingData.entranceRootTween)
		draggingData.entranceRootTween = nil
	end
	handleMinimized(draggingData.entranceFrameTweens)
	handleMinimized(draggingData.minimizeTweens)
	pState.running = false
	for index, item in ipairs(data) do
		pcall(item)
	end
	secondaryHandler()
	if option.Young0xFG100 == tabsData then
		option.Young0xFG100 = nil
	end
	if condition then
		if screenGui and screenGui.Parent then
			screenGui:Destroy()
		end
		return
	end
	local tweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.In)
	local x = alternateParent.AbsoluteSize.X
	local y = alternateParent.AbsoluteSize.Y
	local number = math.floor(x * 0.9)
	local secondaryNumber = math.floor(y * 0.9)
	local position = canvasGroup.Position
	local dimensions = UDim2.new(position.X.Scale, position.X.Offset, position.Y.Scale, position.Y.Offset + 14);
	(tweenService:Create(canvasGroup, tweenInfo, { ["Position"] = dimensions, ["GroupTransparency"] = 1 })):Play();
	(tweenService:Create(alternateParent, tweenInfo, { ["Size"] = UDim2.fromOffset(number, secondaryNumber) })):Play();
	(tweenService:Create(additionalParent, tweenInfo, { ["Size"] = UDim2.fromOffset(number, secondaryNumber) })):Play();
	(tweenService:Create(secondaryParent, tweenInfo, { ["Size"] = UDim2.fromOffset(number, secondaryNumber) })):Play()
	task.delay(0.32, function(...)
		if screenGui and screenGui.Parent then
			screenGui:Destroy()
		end
	end)
end
tabsData.Shutdown = shutdown
tabsData.State = pState
tabsData.Config = public
tabsData.Pages = pages
tabsData.Tabs = tabs
tabsData.SetMinimized = setMinimized
option.Young0xFG100 = tabsData
canvasGroup.Position = UDim2.new(0.5, 0, 0.5, 18)
alternateParent.Size = UDim2.fromOffset(math.floor(setMinimizedNumber * 0.9), math.floor(sizeNumber * 0.9))
additionalParent.Size = UDim2.fromOffset(math.floor(setMinimizedNumber * 0.9), math.floor(sizeNumber * 0.9))
secondaryParent.Size = UDim2.fromOffset(math.floor(setMinimizedNumber * 0.9), math.floor(sizeNumber * 0.9))
runService.Heartbeat:Wait()
scrollingFrame.CanvasSize = UDim2.fromOffset(uiListLayout.AbsoluteContentSize.X + 14, 0)
if pState.resume and pState.resume.script == "fg100.lua" then
	updateScrollingFrame(
		type(pState.resume.tab) == "string" and (pages[pState.resume.tab] and pState.resume.tab) or "Info"
	)
	if pState.resume.protectFriends and pState.killProtectToggle then
		pState.killProtectToggle:Set(true)
	end
	if pState.resume.autoKill and pState.killAutoToggle then
		pState.killAutoToggle:Set(true)
	end
	if pState.resume.karmaMode == "evil" and pState.killEvilToggle then
		pState.killEvilToggle:Set(true)
	elseif pState.resume.karmaMode == "good" and pState.killGoodToggle then
		pState.killGoodToggle:Set(true)
	end
	if pState.resume.serverHop and pState.killServerHopToggle then
		pState.killServerHopToggle:Set(true)
	end
else
	updateScrollingFrame("Info")
end
pState.resume = nil
draggingData.entranceRootTween = tweenService:Create(
	canvasGroup,
	TweenInfo.new(0.42, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
	{ ["Position"] = UDim2.fromScale(0.5, 0.5), ["GroupTransparency"] = 0 }
)
draggingData.entranceFrameTweens = {
	tweenService:Create(
		alternateParent,
		TweenInfo.new(0.42, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
		{ ["Size"] = UDim2.fromOffset(setMinimizedNumber, sizeNumber) }
	),
	tweenService:Create(
		additionalParent,
		TweenInfo.new(0.42, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
		{ ["Size"] = UDim2.fromOffset(setMinimizedNumber, sizeNumber) }
	),
	tweenService:Create(
		secondaryParent,
		TweenInfo.new(0.42, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
		{ ["Size"] = UDim2.fromOffset(setMinimizedNumber, sizeNumber) }
	),
}
draggingData.entranceRootTween:Play()
draggingData.entranceFrameTweens[1]:Play()
draggingData.entranceFrameTweens[2]:Play()
draggingData.entranceFrameTweens[3]:Play()
