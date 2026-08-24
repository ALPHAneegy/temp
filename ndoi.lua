do
    pcall(function()
        (game:GetService("StarterGui")):SetCore("SendNotification", {
            ["Title"] = "FG100",
            ["Text"] = "Cracked by 2zvh again :3",
            ["Duration"] = 6
        })
    end)
end
local I111lI11Il = game:GetService("Players")
local ll11lI11Il = game:GetService("ReplicatedStorage")
local Il11lI11Il = game:GetService("RunService")
local lIl1lI11Il = game:GetService("TweenService")
local IIl1lI11Il = game:GetService("UserInputService")
local l1l1lI11Il = game:GetService("VirtualUser")
local I1l1lI11Il = game:GetService("Stats")
local lll1lI11Il = game:GetService("Lighting")
local Ill1lI11Il = game:GetService("GuiService")
local IIIllI11Il = I111lI11Il["LocalPlayer"]
local parent = IIIllI11Il:WaitForChild("PlayerGui")
local i111L11IlData = getgenv and getgenv() or _G
local llIllI11Il = ll11lI11Il:FindFirstChild("shared")
local IlIllI11Il = {}
local lI1llI11Il
do
    local I111lI11Il = llIllI11Il and llIllI11Il:FindFirstChild("config")
    local ll11lI11Il = I111lI11Il and I111lI11Il:FindFirstChild("UltimateAttributes")
    if ll11lI11Il and ll11lI11Il:IsA("ModuleScript") then
        local I111lI11Il, Il11lI11Il = pcall(require, ll11lI11Il)
        if I111lI11Il and type(Il11lI11Il) == "table" then
            IlIllI11Il = Il11lI11Il
        end
    end
    local Il11lI11Il = llIllI11Il and llIllI11Il:FindFirstChild("catalogs")
    lI1llI11Il = Il11lI11Il and Il11lI11Il:FindFirstChild("gameUltimatesFolder")
end
do
    local I111lI11Il = i111L11IlData["Young0xPersistentAntiAfk"]
    if type(I111lI11Il) ~= "table" then
        I111lI11Il = {}
        i111L11IlData["Young0xPersistentAntiAfk"] = I111lI11Il
    end
    if not I111lI11Il["connection"] or not I111lI11Il["connection"]["Connected"] then
        I111lI11Il["connection"] = IIIllI11Il["Idled"]:Connect(function()
            pcall(function()
                l1l1lI11Il:CaptureController()
                local I111lI11Il = workspace["CurrentCamera"]
                local ll11lI11Il = I111lI11Il and I111lI11Il["CFrame"] or CFrame["new"]()
                l1l1lI11Il:Button2Down(Vector2["new"](0, 0), ll11lI11Il)
                task["wait"](0.05)
                l1l1lI11Il:Button2Up(Vector2["new"](0, 0), ll11lI11Il)
            end)
        end)
    end
end
local II1llI11Il = {
    ["Title"] = "Fast Glitch 100% | Crack by 2zvh",
    ["Discord"] = "https://discord.gg/NxZNRGJfQc",
    ["YouTube"] = "https://www.youtube.com/@Real_Young0x",
    ["Reverse Engineer: 2zvh"] = "https://2zvh.xyz/",
    ["Size"] = {
        ["DesktopWidth"] = 548,
        ["DesktopHeight"] = 360,
        ["MobileWidthScale"] = 0.9,
        ["MobileHeightScale"] = 0.58,
        ["MinWidth"] = 276,
        ["MinHeight"] = 220,
        ["MaxMobileWidth"] = 470,
        ["MaxMobileHeight"] = 310
    },
    ["Colors"] = {
        ["base"] = Color3["fromRGB"](7, 7, 9),
        ["panel"] = Color3["fromRGB"](15, 12, 16),
        ["row"] = Color3["fromRGB"](31, 22, 27),
        ["rowHover"] = Color3["fromRGB"](50, 24, 32),
        ["tab"] = Color3["fromRGB"](24, 18, 22),
        ["tabOn"] = Color3["fromRGB"](185, 24, 48),
        ["cyan"] = Color3["fromRGB"](255, 65, 88),
        ["blue"] = Color3["fromRGB"](205, 24, 50),
        ["green"] = Color3["fromRGB"](117, 241, 167),
        ["yellow"] = Color3["fromRGB"](255, 211, 72),
        ["orange"] = Color3["fromRGB"](255, 119, 59),
        ["red"] = Color3["fromRGB"](255, 55, 82),
        ["white"] = Color3["fromRGB"](255, 255, 255),
        ["soft"] = Color3["fromRGB"](245, 240, 242),
        ["dim"] = Color3["fromRGB"](201, 185, 191),
        ["black"] = Color3["fromRGB"](0, 0, 0)
    },
    ["Tabs"] = {
        {
            "Info",
            62
        },
        {
            "Main",
            62
        },
        {
            "Full Train",
            92
        },
        {
            "Auto Farm",
            88
        },
        {
            "Fast Farm",
            84
        },
        {
            "Rebirths",
            78
        },
        {
            "Kills",
            62
        },
        {
            "Pet Shop",
            86
        },
        {
            "Fuse Machine",
            100
        },
        {
            "Gifts",
            60
        },
        {
            "Fast Trade",
            88
        },
        {
            "Fast Glitch 100%",
            120
        },
        {
            "Teleports",
            84
        },
        {
            "Stats",
            62
        },
        {
            "Misc",
            60
        }
    },
    ["Rocks"] = {
        {
            ["name"] = "Industrial Jungle Rock",
            ["durability"] = 25000000
        },
        {
            ["name"] = "Ancient Rock",
            ["durability"] = 10000000
        },
        {
            ["name"] = "Muscle King Rock",
            ["durability"] = 5000000
        },
        {
            ["name"] = "Legend Rock",
            ["durability"] = 1000000
        },
        {
            ["name"] = "Eternal Rock",
            ["durability"] = 750000
        },
        {
            ["name"] = "Mythical Rock",
            ["durability"] = 400000
        },
        {
            ["name"] = "Frost Rock",
            ["durability"] = 150000
        },
        {
            ["name"] = "Beach Rock",
            ["durability"] = 5000
        },
        {
            ["name"] = "Starter Rock",
            ["durability"] = 100
        },
        {
            ["name"] = "Tiny Rock",
            ["durability"] = 0
        }
    },
    ["Machines"] = {
        {
            ["section"] = "Industrial Machines",
            ["label"] = "Industrial Bar Lift",
            ["object"] = "Industrial Bar Lift",
            ["fallback"] = CFrame["new"](-5492.70510000000013, 82.9405, 4643.642100000000028)
        },
        {
            ["section"] = "Industrial Machines",
            ["label"] = "Industrial Bench",
            ["object"] = "Industrial Bench",
            ["fallback"] = CFrame["new"](-5014.719699999999648, 101.401600000000002, 4467.347200000000157)
        },
        {
            ["section"] = "Industrial Machines",
            ["label"] = "Industrial Boulder",
            ["object"] = "Industrial Boulder",
            ["fallback"] = CFrame["new"](-5456.429699999999684, 85.480199999999996, 5231.535200000000259)
        },
        {
            ["section"] = "Industrial Machines",
            ["label"] = "Industrial Squat",
            ["object"] = "Industrial Squat",
            ["fallback"] = CFrame["new"](-5422.115200000000186, 76.969099999999997, 5443.077100000000428)
        },
        {
            ["section"] = "Jungle Gym Machines",
            ["label"] = "Jungle Bar Lift",
            ["object"] = "Jungle Bar Lift",
            ["fallback"] = CFrame["new"](-8652.867200000000594, 29.2667, 2089.261700000000019)
        },
        {
            ["section"] = "Jungle Gym Machines",
            ["label"] = "Jungle Bench",
            ["object"] = "Jungle Bench",
            ["fallback"] = CFrame["new"](-8174.881800000000112, 47.727899999999998, 1912.966699999999946)
        },
        {
            ["section"] = "Jungle Gym Machines",
            ["label"] = "Jungle Boulder",
            ["object"] = "Jungle Boulder",
            ["fallback"] = CFrame["new"](-8616.591800000000148, 31.8064, 2677.154799999999796)
        },
        {
            ["section"] = "Jungle Gym Machines",
            ["label"] = "Jungle Squat",
            ["object"] = "Jungle Squat",
            ["fallback"] = CFrame["new"](-8377.277299999999741, 34.856299999999997, 2863.696500000000015)
        },
        {
            ["section"] = "Legends Gym Machines",
            ["label"] = "Legends Lift",
            ["object"] = "Legends Lift",
            ["fallback"] = CFrame["new"](4532.217800000000352, 1012.490999999999985, -4002.712199999999939)
        },
        {
            ["section"] = "Legends Gym Machines",
            ["label"] = "Legends Press",
            ["object"] = "Legends Press",
            ["fallback"] = CFrame["new"](4109.913099999999758, 1012.20939999999996, -3802.153299999999945)
        },
        {
            ["section"] = "Legends Gym Machines",
            ["label"] = "Legends Pullup",
            ["object"] = "Legends Pullup",
            ["fallback"] = CFrame["new"](4510.207500000000437, 999.814300000000003, -3636.7175000000002)
        },
        {
            ["section"] = "Legends Gym Machines",
            ["label"] = "Legends Squat",
            ["object"] = "Legends Squat",
            ["fallback"] = CFrame["new"](4439.773400000000038, 1008.066199999999981, -4058.48680000000013)
        },
        {
            ["section"] = "Legends Gym Machines",
            ["label"] = "Legends Throw",
            ["object"] = "Legends Throw",
            ["fallback"] = CFrame["new"](4189.96140000000014, 1004.378500000000031, -3903.016599999999926)
        },
        {
            ["section"] = "Muscle King Machines",
            ["label"] = "Muscle King Lift",
            ["object"] = "Muscle King Lift",
            ["fallback"] = CFrame["new"](-8772.970699999999852, 39.191000000000003, -5663.5625)
        },
        {
            ["section"] = "Muscle King Machines",
            ["label"] = "Muscle King Bench",
            ["object"] = "Muscle King Bench",
            ["fallback"] = CFrame["new"](-8590.235399999999572, 37.7592, -6044.59519999999975)
        },
        {
            ["section"] = "Muscle King Machines",
            ["label"] = "King Boulder",
            ["object"] = "King Boulder",
            ["fallback"] = CFrame["new"](-8942.128899999999703, 43.778500000000001, -5691.636199999999917)
        },
        {
            ["section"] = "Muscle King Machines",
            ["label"] = "Muscle King Squat",
            ["object"] = "Muscle King Squat",
            ["fallback"] = CFrame["new"](-8758.442399999999907, 32.866199999999999, -6043.069300000000112)
        }
    },
    ["FullTrainAreas"] = {
        {
            ["section"] = "Eternal Gym",
            ["center"] = Vector3["new"](-6768, 0, -1287)
        },
        {
            ["section"] = "Mythical Gym",
            ["center"] = Vector3["new"](2255, 0, 1071)
        },
        {
            ["section"] = "Frost Gym",
            ["center"] = Vector3["new"](-2650, 0, -393)
        },
        {
            ["section"] = "Playa",
            ["center"] = Vector3["new"](9, 0, 100)
        },
        {
            ["section"] = "Magma Ring",
            ["center"] = Vector3["new"](4400, 0, -8400)
        },
        {
            ["section"] = "Desert Ring",
            ["center"] = Vector3["new"](900, 0, -7000)
        },
        {
            ["section"] = "Boxing Ring",
            ["center"] = Vector3["new"](-1900, 0, -5820)
        },
        {
            ["section"] = "Tiny Island",
            ["center"] = Vector3["new"](50, 0, 1918)
        }
    },
    ["FullTrainMachines"] = {},
    ["Teleports"] = {
        {
            "Rip Glitch Pets",
            Vector3["new"](-499.300000000000011, 3.15, -204.610000000000014),
            ["lookAt"] = Vector3["new"](-507.069999999999993, 3.15, -204.610000000000014),
            ["utility"] = true
        },
        {
            "Industrial Gym",
            Vector3["new"](-5165, 57, 4945)
        },
        {
            "Jungle Gym",
            Vector3["new"](-7894, 6, 2386)
        },
        {
            "Muscle King",
            Vector3["new"](-8799, 17, -5798)
        },
        {
            "Legends Gym",
            Vector3["new"](4429, 991, -3880)
        },
        {
            "Eternal Gym",
            Vector3["new"](-6768, 7, -1287)
        },
        {
            "Mythical Gym",
            Vector3["new"](2255, 7, 1071)
        },
        {
            "Frost Gym",
            Vector3["new"](-2650, 7, -393)
        },
        {
            "Tiny Gym",
            Vector3["new"](50, 7, 1918)
        },
        {
            "Beach",
            Vector3["new"](9, 7, 100)
        },
        {
            "Secret Area",
            Vector3["new"](1947, 2, 6191)
        },
        {
            "Desert Brawl",
            Vector3["new"](960, 17, -7398)
        },
        {
            "Lava Brawl",
            Vector3["new"](4471, 119, -8836)
        }
    },
    ["UniqueAuras"] = {
        "Muscle King",
        "Entropic Blast"
    },
    ["UniquePets"] = {
        "Core Pup",
        "Volt Talon",
        "Reactor Beast",
        "Plasma Ravager",
        "Titan Reactor",
        "Apex Overlord",
        "Neon Guardian",
        "Cybernetic Showdown Dragon",
        "Darkstar Hunter",
        "Muscle Sensei",
        "Infernal Dragon",
        "Aether Spirit Bunny",
        "Magic Butterfly",
        "Ultra Birdie"
    },
    ["AutoEgg"] = {
        ["Interval"] = 1800,
        ["Names"] = {
            "ProteinEgg",
            "Protein Egg"
        }
    },
    ["FastFarm"] = {
        ["StrengthPet"] = "Swift Samurai",
        ["RebirthPet"] = "Tribal Overlord",
        ["StrengthMachine"] = "Industrial Bench",
        ["RebirthMachine"] = "Industrial Bar Lift",
        ["MaxPets"] = 7,
        ["RepsPerCycle"] = 48,
        ["RepDelay"] = 0.008,
        ["PingSoft"] = 180,
        ["PingMedium"] = 300,
        ["PingHigh"] = 600,
        ["PingCritical"] = 700,
        ["PingPause"] = 880,
        ["PingResume"] = 450,
        ["PingReducerPause"] = 860,
        ["PingReducerResume"] = 480,
        ["PingSampleInterval"] = 0.12,
        ["StrengthPingSoft"] = 400,
        ["StrengthPingMedium"] = 560,
        ["StrengthPingHigh"] = 720,
        ["StrengthPingCritical"] = 840,
        ["StrengthMinBatch"] = 26,
        ["StrengthStartBatch"] = 42,
        ["StrengthMaxBatch"] = 42,
        ["StrengthBackoffPing"] = 700,
        ["StrengthBackoffInterval"] = 0.35,
        ["StrengthRampPing"] = 450,
        ["StrengthRampInterval"] = 0.9,
        ["StrengthDelay"] = 0.05,
        ["SizeInvokeInterval"] = 0.75,
        ["SizeReleaseDuration"] = 5,
        ["FramesReleaseDuration"] = 10,
        ["RebirthCycleDelay"] = 0.2,
        ["RebirthRequestWindow"] = 0.75
    },
    ["ServerHop"] = {
        ["Interval"] = 30,
        ["LoaderUrl"] = "https://raw.githubusercontent.com/Young0xHUB/Young0x-HUB/refs/heads/main/loader.lua",
        ["ServerApi"] = "https://games.roblox.com/v1/games/%d/servers/Public?sortOrder=Desc&limit=100",
        ["PreferredPlayers"] = 18,
        ["MinimumPlayers"] = 12,
        ["NoTargetsDelay"] = 10,
        ["RetryDelay"] = 5,
        ["HistoryLimit"] = 60
    },
    ["Kills"] = {
        ["ProtectedPrivateServerIds"] = {}
    }
}
local l11llI11Il = II1llI11Il["Colors"]
local I11llI11Il = Enum["Font"]["BuilderSansBold"]
l11llI11Il["fontBold"] = Enum["Font"]["BuilderSansExtraBold"]
do
    local I111lI11Il = i111L11IlData["Young0xFG100"]
    if I111lI11Il and type(I111lI11Il["Shutdown"]) == "function" then
        pcall(I111lI11Il["Shutdown"], true)
    end
end
i111L11IlData["__Young0xFG100StateTypeBridge"] = nil
local ll1llI11Il = i111L11IlData["__Young0xFG100StateTypeBridge"] or {
    ["running"] = true,
    ["shuttingDown"] = false,
    ["resume"] = type(i111L11IlData["Young0xFG100Resume"]) == "table" and i111L11IlData["Young0xFG100Resume"] or nil,
    ["fastPunch"] = false,
    ["fastPunchGeneration"] = 0,
    ["selectedRock"] = nil,
    ["rockGeneration"] = 0,
    ["rockSessionStartedAt"] = nil,
    ["rockVisualReadyAt"] = math["huge"],
    ["autoWeight"] = false,
    ["autoHandstands"] = false,
    ["autoLift"] = false,
    ["autoSitups"] = false,
    ["autoLiftUnlocked"] = false,
    ["autoLiftNative"] = {
        ["button"] = nil,
        ["connection"] = nil,
        ["disabledConnections"] = {},
        ["fallbackMarker"] = nil
    },
    ["autoEgg"] = false,
    ["exerciseMovement"] = {
        ["active"] = {},
        ["humanoid"] = nil,
        ["walkSpeed"] = nil,
        ["jumpValue"] = nil,
        ["usesJumpPower"] = true
    },
    ["hideFrames"] = false,
    ["originalShowPopups"] = IIIllI11Il:GetAttribute("ShowPopups"),
    ["autoFarmMode"] = "Chill Rep",
    ["fullTrainMode"] = "Chill Rep",
    ["hideDurability"] = false,
    ["fastFarmMode"] = nil,
    ["machine"] = nil,
    ["autoPet"] = false,
    ["autoAura"] = false,
    ["antiLag"] = false,
    ["antiLagGeneration"] = 0,
    ["antiCrash"] = false,
    ["walkWater"] = false,
    ["autoSpinWheel"] = false,
    ["autoClaimChests"] = false,
    ["mainAutoSize"] = false,
    ["mainAutoSpeed"] = false,
    ["mainSize"] = 2,
    ["mainSpeed"] = 800,
    ["infiniteJump"] = false,
    ["removePortals"] = false,
    ["fastSpeed"] = false,
    ["fly"] = false,
    ["flyLevel"] = 10,
    ["antiKnockback"] = false,
    ["noclip"] = false,
    ["noclipBeachSurfaceY"] = nil,
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
        ["serverHopInterval"] = II1llI11Il["ServerHop"]["Interval"],
        ["friendCache"] = {},
        ["serverHistory"] = {},
        ["serversVisited"] = 1,
        ["hopNow"] = false,
        ["noTargetsSince"] = nil,
        ["lockCFrame"] = nil,
        ["lockCharacter"] = nil,
        ["killSessionActive"] = false,
        ["sessionKills"] = 0,
        ["sessionStartKills"] = nil,
        ["sessionLastTotal"] = nil,
        ["friendProtectionReady"] = false,
        ["hopRetrying"] = false
    },
    ["trade"] = {
        ["busy"] = false,
        ["requestGeneration"] = 0,
        ["delivered"] = 0,
        ["total"] = 0
    },
    ["rebirth"] = {
        ["target"] = nil,
        ["autoTarget"] = false,
        ["infinite"] = false,
        ["sizeOne"] = false,
        ["fastWeight"] = false,
        ["autoLift"] = false,
        ["autoLiftStartedWeight"] = false,
        ["king"] = false,
        ["lockPosition"] = false,
        ["lockCFrame"] = nil,
        ["ultimateRunning"] = false
    }
}
ll1llI11Il["allToggleControllers"] = {}
ll1llI11Il["profileImage"] = "rbxthumb://type=AvatarHeadShot&id=" .. (tostring(IIIllI11Il["UserId"]) .. "&w=150&h=150")
task["spawn"](function()
    for ll11lI11Il = 1, 4, 1 do
        local Il11lI11Il, lIl1lI11Il, IIl1lI11Il = pcall(I111lI11Il["GetUserThumbnailAsync"], I111lI11Il, IIIllI11Il["UserId"], Enum["ThumbnailType"]["HeadShot"], Enum["ThumbnailSize"]["Size150x150"])
        if Il11lI11Il and (type(lIl1lI11Il) == "string" and lIl1lI11Il ~= "") then
            ll1llI11Il["profileImage"] = lIl1lI11Il
            if IIl1lI11Il then
                pcall(function()
                    (game:GetService("ContentProvider")):PreloadAsync({
                        lIl1lI11Il
                    })
                end)
            end
            if ll1llI11Il["profileAvatar"] and ll1llI11Il["profileAvatar"]["Parent"] then
                ll1llI11Il["profileAvatar"]["Image"] = lIl1lI11Il
            end
            if IIl1lI11Il then
                break
            end
        end
        task["wait"](0.15)
    end
end)
if ll1llI11Il["resume"] and ll1llI11Il["resume"]["script"] == "fg100.lua" then
    ll1llI11Il["kill"]["killSessionActive"] = ll1llI11Il["resume"]["killSessionActive"] == true
    ll1llI11Il["kill"]["sessionKills"] = math["max"](0, math["floor"](tonumber(ll1llI11Il["resume"]["sessionKills"]) or 0))
    ll1llI11Il["kill"]["sessionStartKills"] = tonumber(ll1llI11Il["resume"]["sessionStartKills"])
end
if ll1llI11Il["resume"] and type(ll1llI11Il["resume"]["serverHistory"]) == "table" then
    ll1llI11Il["kill"]["serverHistory"] = ll1llI11Il["resume"]["serverHistory"]
end
if ll1llI11Il["resume"] then
    ll1llI11Il["kill"]["serversVisited"] = math["max"](1, tonumber(ll1llI11Il["resume"]["serversVisited"]) or 1)
    local I111lI11Il = tonumber(ll1llI11Il["resume"]["serverHopInterval"])
    if I111lI11Il and table["find"]({
        30,
        60,
        120
    }, I111lI11Il) then
        ll1llI11Il["kill"]["serverHopInterval"] = I111lI11Il
    end
end
if game["JobId"] ~= "" and not table["find"](ll1llI11Il["kill"]["serverHistory"], game["JobId"]) then
    ll1llI11Il["kill"]["serverHistory"][#ll1llI11Il["kill"]["serverHistory"] + 1] = game["JobId"]
end
i111L11IlData["Young0xFG100Resume"] = nil
local Il1llI11Il = {}
local lIlllI11Il = {}
local IIlllI11Il = {}
local l1lllI11Il = {}
local I1lllI11Il = {}
i111L11IlData["__Young0xFG100FarmTypeBridge"] = nil
local lllllI11Il = i111L11IlData["__Young0xFG100FarmTypeBridge"] or {
    ["MachineToggleByDefinition"] = {}
}
lllllI11Il.BuildFullTrainMachines = function()
    local I111lI11Il = workspace:FindFirstChild("machinesFolder")
    local ll11lI11Il = {}
    local Il11lI11Il = {}
    if not I111lI11Il then
        II1llI11Il["FullTrainMachines"] = ll11lI11Il
        return ll11lI11Il
    end
    for lIl1lI11Il, IIl1lI11Il in ipairs(II1llI11Il["FullTrainAreas"]) do
        for I111lI11Il, l1l1lI11Il in ipairs(I111lI11Il:GetChildren()) do
            if l1l1lI11Il:IsA("Model") and l1l1lI11Il:FindFirstChild("machineType") then
                local I111lI11Il = l1l1lI11Il["PrimaryPart"]
                if not (I111lI11Il and I111lI11Il:IsA("Seat")) then
                    I111lI11Il = l1l1lI11Il:FindFirstChild("interactSeat", true)
                end
                local I1l1lI11Il = l1l1lI11Il:FindFirstChild("strengthGain")
                local lll1lI11Il = tonumber(I1l1lI11Il and I1l1lI11Il["Value"])
                local Ill1lI11Il = I111lI11Il and (Vector3["new"](I111lI11Il["Position"]["X"], 0, I111lI11Il["Position"]["Z"]) - IIl1lI11Il["center"])["Magnitude"]
                if I111lI11Il and (I111lI11Il:IsA("Seat") and (lll1lI11Il and Ill1lI11Il <= 1400)) then
                    local I1l1lI11Il = IIl1lI11Il["section"] .. ("\239\191\189" .. l1l1lI11Il["Name"])
                    local Ill1lI11Il = Il11lI11Il[I1l1lI11Il]
                    if Ill1lI11Il then
                        Ill1lI11Il["copies"] = Ill1lI11Il["copies"] + 1
                        if lll1lI11Il > Ill1lI11Il["bestGain"] then
                            Ill1lI11Il["bestGain"] = lll1lI11Il
                            Ill1lI11Il["fallback"] = I111lI11Il["CFrame"]
                        end
                    else
                        Ill1lI11Il = {
                            ["section"] = IIl1lI11Il["section"],
                            ["sectionOrder"] = lIl1lI11Il,
                            ["label"] = l1l1lI11Il["Name"],
                            ["object"] = l1l1lI11Il["Name"],
                            ["bestGain"] = lll1lI11Il,
                            ["fallback"] = I111lI11Il["CFrame"],
                            ["copies"] = 1
                        }
                        Il11lI11Il[I1l1lI11Il] = Ill1lI11Il
                        ll11lI11Il[#ll11lI11Il + 1] = Ill1lI11Il
                    end
                end
            end
        end
    end
    table["sort"](ll11lI11Il, function(I111lI11Il, ll11lI11Il)
        if I111lI11Il["sectionOrder"] ~= ll11lI11Il["sectionOrder"] then
            return I111lI11Il["sectionOrder"] < ll11lI11Il["sectionOrder"]
        end
        if I111lI11Il["bestGain"] ~= ll11lI11Il["bestGain"] then
            return I111lI11Il["bestGain"] > ll11lI11Il["bestGain"]
        end
        return I111lI11Il["label"] < ll11lI11Il["label"]
    end)
    II1llI11Il["FullTrainMachines"] = ll11lI11Il
    return ll11lI11Il
end
local function IllllI11Il(I111lI11Il)
    Il1llI11Il[#Il1llI11Il + 1] = I111lI11Il
    return I111lI11Il
end
local function lIIII111Il(I111lI11Il)
    l1lllI11Il[#l1lllI11Il + 1] = I111lI11Il
end
local function IIIII111Il(I111lI11Il)
    IIlllI11Il[I111lI11Il] = (IIlllI11Il[I111lI11Il] or 0) + 1
    local ll11lI11Il = lIlllI11Il[I111lI11Il]
    if ll11lI11Il then
        pcall(task["cancel"], ll11lI11Il)
        lIlllI11Il[I111lI11Il] = nil
    end
end
local function getSendMuscleEventI111L11Il(I111lI11Il, ll11lI11Il)
    IIIII111Il(I111lI11Il)
    local Il11lI11Il = IIlllI11Il[I111lI11Il]
    local lIl1lI11Il
    lIl1lI11Il = task["defer"](function()
        pcall(ll11lI11Il)
        if IIlllI11Il[I111lI11Il] == Il11lI11Il and lIlllI11Il[I111lI11Il] == lIl1lI11Il then
            lIlllI11Il[I111lI11Il] = nil
        end
    end)
    lIlllI11Il[I111lI11Il] = lIl1lI11Il
    return lIlllI11Il[I111lI11Il]
end
local function handler()
    for I111lI11Il, ll11lI11Il in ipairs(Il1llI11Il) do
        pcall(function()
            ll11lI11Il:Disconnect()
        end)
    end
    table["clear"](Il1llI11Il)
    for I111lI11Il in pairs(lIlllI11Il) do
        IIIII111Il(I111lI11Il)
    end
end
local function llIII111Il()
    return IIIllI11Il["Character"]
end
local function IlIII111Il()
    local I111lI11Il = llIII111Il()
    return I111lI11Il and I111lI11Il:FindFirstChildWhichIsA("Humanoid")
end
local function isI111L11IlValid()
    local I111lI11Il = llIII111Il()
    return I111lI11Il and I111lI11Il:FindFirstChild("HumanoidRootPart")
end
local function secondaryHandler(I111lI11Il, ll11lI11Il)
    if not I111lI11Il then
        return nil
    end
    local Il11lI11Il = {}
    for I111lI11Il, ll11lI11Il in ipairs(ll11lI11Il) do
        Il11lI11Il[(ll11lI11Il:lower()):gsub("%s+", "")] = true
    end
    for I111lI11Il, ll11lI11Il in ipairs(I111lI11Il:GetChildren()) do
        local lIl1lI11Il = (ll11lI11Il["Name"]:lower()):gsub("%s+", "")
        if Il11lI11Il[lIl1lI11Il] and ll11lI11Il:IsA("ValueBase") then
            return ll11lI11Il
        end
    end
    return nil
end
local function l11II111Il(I111lI11Il, ll11lI11Il)
    local Il11lI11Il = I111lI11Il and I111lI11Il:FindFirstChild("leaderstats")
    return secondaryHandler(Il11lI11Il, ll11lI11Il) or secondaryHandler(I111lI11Il, ll11lI11Il)
end
local function I11II111Il(I111lI11Il)
    local ll11lI11Il = tonumber(I111lI11Il) or 0
    local Il11lI11Il = ll11lI11Il < 0
    local lIl1lI11Il = string["format"]("%.0f", math["abs"](ll11lI11Il))
    local IIl1lI11Il = (((lIl1lI11Il:reverse()):gsub("(%d%d%d)", "%1.")):reverse()):gsub("^%.", "")
    return (Il11lI11Il and "-" or "") .. IIl1lI11Il
end
ll1llI11Il["formatExactWithUnit"] = function(I111lI11Il)
    local ll11lI11Il = tonumber(I111lI11Il) or 0
    local Il11lI11Il = math["abs"](ll11lI11Il)
    local lIl1lI11Il = Il11lI11Il >= 1000000000000000000 and "QI" or Il11lI11Il >= 1000000000000000 and "QA" or Il11lI11Il >= 1000000000000 and "T" or Il11lI11Il >= 1000000000 and "B" or Il11lI11Il >= 1000000 and "M" or Il11lI11Il >= 1000 and "K" or ""
    return I11II111Il(ll11lI11Il) .. lIl1lI11Il
end
local function isCachedPingValid()
    local I111lI11Il, ll11lI11Il = pcall(function()
        return I1l1lI11Il["Network"]["ServerStatsItem"]["Data Ping"]:GetValue()
    end)
    return I111lI11Il and math["floor"]((tonumber(ll11lI11Il) or 0) + 0.5) or 0
end
ll1llI11Il["pingStatusColor"] = function(I111lI11Il)
    I111lI11Il = tonumber(I111lI11Il) or 0
    if I111lI11Il <= 250 then
        return l11llI11Il["green"]
    end
    if I111lI11Il < 800 then
        return l11llI11Il["yellow"]
    end
    return l11llI11Il["red"]
end
local function clock()
    local I111lI11Il, ll11lI11Il = pcall(workspace["GetServerTimeNow"], workspace)
    if I111lI11Il and type(ll11lI11Il) == "number" then
        return ll11lI11Il
    end
    return os["clock"]()
end
local function lIlII111Il(I111lI11Il)
    local ll11lI11Il = getgenv and getgenv() or _G
    local Il11lI11Il = ll11lI11Il["setclipboard"] or ll11lI11Il["toclipboard"] or ll11lI11Il["writeclipboard"]
    if type(Il11lI11Il) == "function" then
        pcall(Il11lI11Il, tostring(I111lI11Il))
        return true
    end
    return false
end
local function IIlII111Il(I111lI11Il)
    local ll11lI11Il = llIII111Il()
    local Il11lI11Il = IlIII111Il()
    if not ll11lI11Il or not Il11lI11Il then
        return nil
    end
    local lIl1lI11Il = {}
    for I111lI11Il, ll11lI11Il in ipairs(I111lI11Il) do
        lIl1lI11Il[ll11lI11Il:lower()] = true
    end
    for I111lI11Il, IIl1lI11Il in ipairs({
        ll11lI11Il,
        IIIllI11Il:FindFirstChild("Backpack")
    }) do
        if IIl1lI11Il then
            for I111lI11Il, IIl1lI11Il in ipairs(IIl1lI11Il:GetChildren()) do
                if IIl1lI11Il:IsA("Tool") and lIl1lI11Il[IIl1lI11Il["Name"]:lower()] then
                    if IIl1lI11Il["Parent"] ~= ll11lI11Il then
                        Il11lI11Il:EquipTool(IIl1lI11Il)
                    end
                    return IIl1lI11Il
                end
            end
        end
    end
    return nil
end
local function l1lII111Il()
    return IIlII111Il({
        "Punch"
    })
end
local I1lII111Il = {}
local lllII111Il = nil
local function IllII111Il(I111lI11Il)
    if not I111lI11Il or not I111lI11Il["Parent"] or type(firetouchinterest) ~= "function" then
        return
    end
    local ll11lI11Il = llIII111Il()
    local Il11lI11Il = ll11lI11Il and ll11lI11Il:FindFirstChild("LeftHand")
    local lIl1lI11Il = ll11lI11Il and ll11lI11Il:FindFirstChild("RightHand")
    if lIl1lI11Il then
        pcall(firetouchinterest, I111lI11Il, lIl1lI11Il, 1)
    end
    if Il11lI11Il then
        pcall(firetouchinterest, I111lI11Il, Il11lI11Il, 1)
    end
end
local function alternateHandler()
    local I111lI11Il = lllII111Il
    lllII111Il = nil
    if I111lI11Il then
        IllII111Il(I111lI11Il)
    end
end
local capturedIl11LI = nil
local function additionalHandler()
    local I111lI11Il = capturedIl11LI
    capturedIl11LI = nil
    if I111lI11Il then
        I111lI11Il["enabled"] = false
        if I111lI11Il["thread"] then
            task["cancel"](I111lI11Il["thread"])
            I111lI11Il["thread"] = nil
        end
        IllII111Il(I111lI11Il["lastRock"])
    end
    alternateHandler()
end
local function fallbackHandler()
    ll1llI11Il["rockGeneration"] = ll1llI11Il["rockGeneration"] + 1
    ll1llI11Il["selectedRock"] = nil
    ll1llI11Il["rockSessionStartedAt"] = nil
    ll1llI11Il["rockVisualReadyAt"] = math["huge"]
    additionalHandler()
end
local function nestedHandler(I111lI11Il, ll11lI11Il)
    if not I111lI11Il or not I111lI11Il["Parent"] or not ll11lI11Il then
        return false
    end
    pcall(function()
        I111lI11Il["Size"] = Vector3["new"](2, 1, 1)
        I111lI11Il["Transparency"] = 1
        I111lI11Il["CanCollide"] = false
        I111lI11Il["CFrame"] = ll11lI11Il["CFrame"]
        local Il11lI11Il = I111lI11Il:FindFirstChild("TouchPart")
        if Il11lI11Il and Il11lI11Il:IsA("BasePart") then
            Il11lI11Il["CFrame"] = ll11lI11Il["CFrame"]
            Il11lI11Il["Transparency"] = 1
            Il11lI11Il["CanCollide"] = false
        end
    end)
    return true
end
local function innerHandler(I111lI11Il)
    if type(I111lI11Il) ~= "table" then
        return nil
    end
    local ll11lI11Il = I111lI11Il["name"]
    local Il11lI11Il = I1lII111Il[ll11lI11Il]
    if Il11lI11Il and (Il11lI11Il["rock"] and (Il11lI11Il["marker"] and (Il11lI11Il["rock"]["Parent"] and (Il11lI11Il["marker"]["Parent"] == Il11lI11Il["rock"]["Parent"] and tonumber(Il11lI11Il["marker"]["Value"]) == I111lI11Il["durability"])))) then
        return Il11lI11Il["rock"]
    end
    I1lII111Il[ll11lI11Il] = nil
    local lIl1lI11Il = workspace:FindFirstChild("machinesFolder")
    if not lIl1lI11Il then
        return nil
    end
    for Il11lI11Il, lIl1lI11Il in ipairs(lIl1lI11Il:GetDescendants()) do
        if lIl1lI11Il["Name"] == "neededDurability" and (lIl1lI11Il:IsA("ValueBase") and tonumber(lIl1lI11Il["Value"]) == I111lI11Il["durability"]) then
            local I111lI11Il = lIl1lI11Il["Parent"] and lIl1lI11Il["Parent"]:FindFirstChild("Rock")
            if I111lI11Il and I111lI11Il:IsA("BasePart") then
                I1lII111Il[ll11lI11Il] = {
                    ["rock"] = I111lI11Il,
                    ["marker"] = lIl1lI11Il
                }
                return I111lI11Il
            end
        end
    end
    return nil
end
local function lI11I111Il(I111lI11Il)
    return I111lI11Il and (I111lI11Il["enabled"] and (capturedIl11LI == I111lI11Il and (ll1llI11Il["running"] and (ll1llI11Il["fastPunch"] and (ll1llI11Il["rockGeneration"] == I111lI11Il["generation"] and ll1llI11Il["selectedRock"] == I111lI11Il["definition"])))))
end
local function II11I111Il(I111lI11Il)
    while lI11I111Il(I111lI11Il) do
        task["wait"](0.001)
        if not lI11I111Il(I111lI11Il) then
            break
        end
        pcall(function()
            if not lI11I111Il(I111lI11Il) then
                return
            end
            local ll11lI11Il = I111lI11Il["definition"]
            local Il11lI11Il = IIIllI11Il:FindFirstChild("Durability")
            if Il11lI11Il and tonumber(Il11lI11Il["Value"]) < ll11lI11Il["durability"] then
                return
            end
            local lIl1lI11Il = llIII111Il()
            local IIl1lI11Il = lIl1lI11Il and lIl1lI11Il:FindFirstChild("LeftHand")
            local l1l1lI11Il = lIl1lI11Il and lIl1lI11Il:FindFirstChild("RightHand")
            if not IIl1lI11Il or not l1l1lI11Il then
                return
            end
            local I1l1lI11Il = innerHandler(ll11lI11Il)
            if not I1l1lI11Il or not lI11I111Il(I111lI11Il) then
                return
            end
            I111lI11Il["lastRock"] = I1l1lI11Il
            if lllII111Il ~= I1l1lI11Il then
                alternateHandler()
                if not lI11I111Il(I111lI11Il) then
                    return
                end
                lllII111Il = I1l1lI11Il
            end
            if not nestedHandler(I1l1lI11Il, IIl1lI11Il) or not lI11I111Il(I111lI11Il) then
                return
            end
            if type(firetouchinterest) ~= "function" then
                return
            end
            pcall(firetouchinterest, I1l1lI11Il, l1l1lI11Il, 0)
            if not lI11I111Il(I111lI11Il) then
                pcall(firetouchinterest, I1l1lI11Il, l1l1lI11Il, 1)
                return
            end
            pcall(firetouchinterest, I1l1lI11Il, l1l1lI11Il, 1)
            if not lI11I111Il(I111lI11Il) then
                return
            end
            pcall(firetouchinterest, I1l1lI11Il, IIl1lI11Il, 0)
            if not lI11I111Il(I111lI11Il) then
                pcall(firetouchinterest, I1l1lI11Il, IIl1lI11Il, 1)
                return
            end
            pcall(firetouchinterest, I1l1lI11Il, IIl1lI11Il, 1)
            if not lI11I111Il(I111lI11Il) then
                return
            end
            l1lII111Il()
            local lll1lI11Il = IIIllI11Il:FindFirstChild("muscleEvent")
            if lll1lI11Il and lI11I111Il(I111lI11Il) then
                pcall(lll1lI11Il["FireServer"], lll1lI11Il, "punch", "leftHand")
                pcall(lll1lI11Il["FireServer"], lll1lI11Il, "punch", "rightHand")
            end
        end)
    end
end
local function l111I111Il(I111lI11Il, ll11lI11Il)
    if not ll11lI11Il then
        fallbackHandler()
    end
    ll1llI11Il["selectedRock"] = I111lI11Il
    ll1llI11Il["rockSessionStartedAt"] = clock()
    ll1llI11Il["rockVisualReadyAt"] = ll1llI11Il["rockSessionStartedAt"] + 0.2
    local Il11lI11Il = {
        ["enabled"] = true,
        ["definition"] = I111lI11Il,
        ["generation"] = ll1llI11Il["rockGeneration"],
        ["thread"] = nil,
        ["lastRock"] = nil
    }
    capturedIl11LI = Il11lI11Il
    Il11lI11Il["thread"] = task["spawn"](II11I111Il, Il11lI11Il)
end
ll1llI11Il["fastPunchVisual"] = {
    ["character"] = nil,
    ["tracks"] = {},
    ["index"] = 0
}
ll1llI11Il["clearFastPunchVisual"] = function()
    local I111lI11Il = ll1llI11Il["fastPunchVisual"]
    for I111lI11Il, ll11lI11Il in ipairs(I111lI11Il["tracks"]) do
        pcall(ll11lI11Il["Stop"], ll11lI11Il, 0.05)
        pcall(ll11lI11Il["Destroy"], ll11lI11Il)
    end
    I111lI11Il["character"] = nil
    I111lI11Il["tracks"] = {}
    I111lI11Il["index"] = 0
end
ll1llI11Il["playFastPunchVisual"] = function()
    local I111lI11Il = ll1llI11Il["fastPunchVisual"]
    local Il11lI11Il = llIII111Il()
    local lIl1lI11Il = IlIII111Il()
    local IIl1lI11Il = lIl1lI11Il and (lIl1lI11Il:FindFirstChildOfClass("Animator") or lIl1lI11Il:FindFirstChild("Animator"))
    if not Il11lI11Il or not IIl1lI11Il then
        return
    end
    if I111lI11Il["character"] ~= Il11lI11Il or #I111lI11Il["tracks"] == 0 then
        ll1llI11Il["clearFastPunchVisual"]()
        I111lI11Il["character"] = Il11lI11Il
        local lIl1lI11Il = ll11lI11Il:FindFirstChild("shared")
        local l1l1lI11Il = lIl1lI11Il and lIl1lI11Il:FindFirstChild("assets")
        local I1l1lI11Il = l1l1lI11Il and l1l1lI11Il:FindFirstChild("animations")
        local lll1lI11Il = I1l1lI11Il and I1l1lI11Il:FindFirstChild("gameAnims")
        local Ill1lI11Il = lll1lI11Il and lll1lI11Il:FindFirstChild("Tools")
        local lIIllI11Il = Ill1lI11Il and Ill1lI11Il:FindFirstChild("Punch")
        local IIIllI11Il = lIIllI11Il and lIIllI11Il:FindFirstChild("attacks")
        if IIIllI11Il then
            for ll11lI11Il, Il11lI11Il in ipairs(IIIllI11Il:GetChildren()) do
                if Il11lI11Il:IsA("Animation") then
                    local ll11lI11Il, lIl1lI11Il = pcall(IIl1lI11Il["LoadAnimation"], IIl1lI11Il, Il11lI11Il)
                    if ll11lI11Il and lIl1lI11Il then
                        lIl1lI11Il["Priority"] = Enum["AnimationPriority"]["Action"]
                        I111lI11Il["tracks"][#I111lI11Il["tracks"] + 1] = lIl1lI11Il
                    end
                end
            end
        end
    end
    if #I111lI11Il["tracks"] == 0 then
        return
    end
    I111lI11Il["index"] = I111lI11Il["index"] % #I111lI11Il["tracks"] + 1
    for ll11lI11Il, Il11lI11Il in ipairs(I111lI11Il["tracks"]) do
        if ll11lI11Il ~= I111lI11Il["index"] and Il11lI11Il["IsPlaying"] then
            pcall(Il11lI11Il["Stop"], Il11lI11Il, 0.02)
        end
    end
    pcall(I111lI11Il["tracks"][I111lI11Il["index"]]["Play"], I111lI11Il["tracks"][I111lI11Il["index"]], 0.02, 1, 1.8)
end
local function I111I111Il(I111lI11Il)
    ll1llI11Il["fastPunchGeneration"] = ll1llI11Il["fastPunchGeneration"] + 1
    local ll11lI11Il = ll1llI11Il["fastPunchGeneration"]
    ll1llI11Il["fastPunch"] = I111lI11Il == true
    if not ll1llI11Il["fastPunch"] then
        fallbackHandler()
        IIIII111Il("fastPunchEquip")
        IIIII111Il("fastPunchHit")
        ll1llI11Il["clearFastPunchVisual"]()
        pcall(function()
            local I111lI11Il = llIII111Il()
            local ll11lI11Il = I111lI11Il and I111lI11Il:FindFirstChild("Punch")
            local Il11lI11Il = ll11lI11Il and ll11lI11Il:FindFirstChild("attackTime")
            if Il11lI11Il then
                Il11lI11Il["Value"] = 0.3
            end
            local lIl1lI11Il = IIIllI11Il:FindFirstChild("Backpack")
            if ll11lI11Il and lIl1lI11Il then
                ll11lI11Il["Parent"] = lIl1lI11Il
            end
        end)
        return
    end
    getSendMuscleEventI111L11Il("fastPunchEquip", function()
        while ll1llI11Il["running"] and (ll1llI11Il["fastPunch"] and ll1llI11Il["fastPunchGeneration"] == ll11lI11Il) do
            pcall(function()
                local I111lI11Il = l1lII111Il()
                local ll11lI11Il = I111lI11Il and I111lI11Il:FindFirstChild("attackTime")
                if ll11lI11Il then
                    ll11lI11Il["Value"] = 0
                end
            end)
            task["wait"](0.05)
        end
    end)
    getSendMuscleEventI111L11Il("fastPunchHit", function()
        local I111lI11Il = 0
        while ll1llI11Il["running"] and (ll1llI11Il["fastPunch"] and ll1llI11Il["fastPunchGeneration"] == ll11lI11Il) do
            local ll11lI11Il = IIIllI11Il:FindFirstChild("muscleEvent")
            local Il11lI11Il = l1lII111Il()
            if ll11lI11Il and ll11lI11Il:IsA("RemoteEvent") then
                pcall(ll11lI11Il["FireServer"], ll11lI11Il, "punch", "rightHand")
                pcall(ll11lI11Il["FireServer"], ll11lI11Il, "punch", "leftHand")
            end
            if Il11lI11Il then
                if time() - I111lI11Il >= 0.12 then
                    I111lI11Il = time()
                    pcall(Il11lI11Il["Activate"], Il11lI11Il)
                    ll1llI11Il["playFastPunchVisual"]()
                end
            end
            task["wait"](0.01)
        end
    end)
end
local ll11I111Il = {}
local function Il11I111Il(I111lI11Il, ll11lI11Il)
    if not ll11lI11Il then
        return
    end
    local Il11lI11Il = ll11lI11Il:FindFirstChild("repTime")
    if not Il11lI11Il or not Il11lI11Il:IsA("ValueBase") then
        return
    end
    ll11I111Il[I111lI11Il] = ll11I111Il[I111lI11Il] or setmetatable({}, {
        ["__mode"] = "k"
    })
    if ll11I111Il[I111lI11Il][Il11lI11Il] == nil then
        ll11I111Il[I111lI11Il][Il11lI11Il] = Il11lI11Il["Value"]
    end
    Il11lI11Il["Value"] = 0
end
local function handleSendMuscleEvent(I111lI11Il)
    local ll11lI11Il = ll11I111Il[I111lI11Il]
    if not ll11lI11Il then
        return
    end
    for I111lI11Il, ll11lI11Il in pairs(ll11lI11Il) do
        if I111lI11Il and I111lI11Il["Parent"] then
            pcall(function()
                I111lI11Il["Value"] = ll11lI11Il
            end)
        end
    end
    ll11I111Il[I111lI11Il] = nil
end
local function secondaryHandleSendMuscleEvent(I111lI11Il)
    local ll11lI11Il = llIII111Il()
    local Il11lI11Il = IIIllI11Il:FindFirstChild("Backpack")
    if not ll11lI11Il or not Il11lI11Il or not I111lI11Il then
        return
    end
    local lIl1lI11Il = {}
    for I111lI11Il, ll11lI11Il in ipairs(I111lI11Il) do
        lIl1lI11Il[ll11lI11Il:lower()] = true
    end
    for I111lI11Il, ll11lI11Il in ipairs(ll11lI11Il:GetChildren()) do
        if ll11lI11Il:IsA("Tool") and lIl1lI11Il[ll11lI11Il["Name"]:lower()] then
            pcall(function()
                ll11lI11Il["Parent"] = Il11lI11Il
            end)
        end
    end
end
local function sendMuscleEvent(I111lI11Il, ll11lI11Il, lIl1lI11Il, IIl1lI11Il)
    ll1llI11Il[I111lI11Il] = ll11lI11Il == true
    local l1l1lI11Il = ll1llI11Il["exerciseMovement"]
    l1l1lI11Il["active"][I111lI11Il] = ll1llI11Il[I111lI11Il] or nil
    local I1l1lI11Il = "rep_" .. I111lI11Il
    if not ll1llI11Il[I111lI11Il] then
        IIIII111Il(I1l1lI11Il)
        handleSendMuscleEvent(I111lI11Il)
        secondaryHandleSendMuscleEvent(lIl1lI11Il)
        local ll11lI11Il = false
        for I111lI11Il in pairs(l1l1lI11Il["active"]) do
            ll11lI11Il = true
            break
        end
        if not ll11lI11Il then
            IIIII111Il("exerciseMovement")
            local I111lI11Il = l1l1lI11Il["humanoid"]
            if I111lI11Il and I111lI11Il["Parent"] then
                pcall(function()
                    if not ll1llI11Il["fastSpeed"] and l1l1lI11Il["walkSpeed"] then
                        I111lI11Il["WalkSpeed"] = l1l1lI11Il["walkSpeed"]
                    end
                    if l1l1lI11Il["jumpValue"] then
                        if l1l1lI11Il["usesJumpPower"] then
                            I111lI11Il["JumpPower"] = l1l1lI11Il["jumpValue"]
                        else
                            I111lI11Il["JumpHeight"] = l1l1lI11Il["jumpValue"]
                        end
                    end
                end)
            end
            l1l1lI11Il["humanoid"] = nil
            l1l1lI11Il["walkSpeed"] = nil
            l1l1lI11Il["jumpValue"] = nil
        end
        return
    end
    local lll1lI11Il = IlIII111Il()
    if lll1lI11Il and l1l1lI11Il["humanoid"] ~= lll1lI11Il then
        l1l1lI11Il["humanoid"] = lll1lI11Il
        l1l1lI11Il["walkSpeed"] = lll1lI11Il["WalkSpeed"] > 0 and lll1lI11Il["WalkSpeed"] or 16
        l1l1lI11Il["usesJumpPower"] = lll1lI11Il["UseJumpPower"]
        l1l1lI11Il["jumpValue"] = l1l1lI11Il["usesJumpPower"] and lll1lI11Il["JumpPower"] or lll1lI11Il["JumpHeight"]
    end
    getSendMuscleEventI111L11Il("exerciseMovement", function()
        while ll1llI11Il["running"] and next(l1l1lI11Il["active"]) do
            local I111lI11Il = IlIII111Il()
            local ll11lI11Il = isI111L11IlValid()
            if I111lI11Il then
                if l1l1lI11Il["humanoid"] ~= I111lI11Il then
                    l1l1lI11Il["humanoid"] = I111lI11Il
                    l1l1lI11Il["walkSpeed"] = I111lI11Il["WalkSpeed"] > 0 and I111lI11Il["WalkSpeed"] or 16
                    l1l1lI11Il["usesJumpPower"] = I111lI11Il["UseJumpPower"]
                    l1l1lI11Il["jumpValue"] = l1l1lI11Il["usesJumpPower"] and I111lI11Il["JumpPower"] or I111lI11Il["JumpHeight"]
                end
                if not ll1llI11Il["machine"] and not ll1llI11Il["fly"] then
                    if ll11lI11Il then
                        ll11lI11Il["Anchored"] = false
                    end
                    I111lI11Il["PlatformStand"] = false
                    I111lI11Il["Sit"] = false
                    local Il11lI11Il = ll1llI11Il["fastSpeed"] and 1000 or l1l1lI11Il["walkSpeed"]
                    if Il11lI11Il and I111lI11Il["WalkSpeed"] < Il11lI11Il then
                        I111lI11Il["WalkSpeed"] = Il11lI11Il
                    end
                    if l1l1lI11Il["jumpValue"] then
                        if l1l1lI11Il["usesJumpPower"] and I111lI11Il["JumpPower"] < l1l1lI11Il["jumpValue"] then
                            I111lI11Il["JumpPower"] = l1l1lI11Il["jumpValue"]
                        elseif not l1l1lI11Il["usesJumpPower"] and I111lI11Il["JumpHeight"] < l1l1lI11Il["jumpValue"] then
                            I111lI11Il["JumpHeight"] = l1l1lI11Il["jumpValue"]
                        end
                    end
                end
            end
            Il11lI11Il["Heartbeat"]:Wait()
        end
    end)
    getSendMuscleEventI111L11Il(I1l1lI11Il, function()
        while ll1llI11Il["running"] and ll1llI11Il[I111lI11Il] do
            local ll11lI11Il = IIl1lI11Il or 0.01
            pcall(function()
                local Il11lI11Il
                if lIl1lI11Il and #lIl1lI11Il > 0 then
                    Il11lI11Il = IIlII111Il(lIl1lI11Il)
                    if ll1llI11Il["autoFarmMode"] == "Fast Rep" then
                        Il11I111Il(I111lI11Il, Il11lI11Il)
                    else
                        handleSendMuscleEvent(I111lI11Il)
                        local lIl1lI11Il = Il11lI11Il and Il11lI11Il:FindFirstChild("repTime", true)
                        ll11lI11Il = math["max"](0.15, tonumber(lIl1lI11Il and lIl1lI11Il["Value"]) or 1)
                        local IIl1lI11Il = IIIllI11Il:FindFirstChild("ownedGamepasses")
                        if IIl1lI11Il and IIl1lI11Il:FindFirstChild("x2 Rep Time") then
                            ll11lI11Il = ll11lI11Il * 0.5
                        end
                    end
                end
                local IIl1lI11Il = IIIllI11Il:FindFirstChild("muscleEvent")
                if IIl1lI11Il then
                    IIl1lI11Il:FireServer("rep")
                end
                if Il11lI11Il then
                    Il11lI11Il:Activate()
                end
            end)
            task["wait"](ll11lI11Il)
        end
    end)
end
local function handleLl11LIIl()
    for I111lI11Il, ll11lI11Il in ipairs({
        llIII111Il(),
        IIIllI11Il:FindFirstChild("Backpack"),
        IIIllI11Il:FindFirstChild("consumablesFolder")
    }) do
        if ll11lI11Il then
            for I111lI11Il, Il11lI11Il in ipairs(II1llI11Il["AutoEgg"]["Names"]) do
                local lIl1lI11Il = ll11lI11Il:FindFirstChild(Il11lI11Il)
                if lIl1lI11Il and lIl1lI11Il:IsA("Tool") then
                    return lIl1lI11Il
                end
            end
        end
    end
    return nil
end
local function handleI111L11Il()
    local I111lI11Il = IIIllI11Il:FindFirstChild("boostTimersFolder")
    if not I111lI11Il then
        return false
    end
    for ll11lI11Il, Il11lI11Il in ipairs(II1llI11Il["AutoEgg"]["Names"]) do
        local lIl1lI11Il = I111lI11Il:FindFirstChild(Il11lI11Il)
        if lIl1lI11Il and (lIl1lI11Il:IsA("ValueBase") and (tonumber(lIl1lI11Il["Value"]) and lIl1lI11Il["Value"] > 0)) then
            return true
        end
    end
    return false
end
local function outerHandler()
    local I111lI11Il = 0
    for ll11lI11Il, Il11lI11Il in ipairs({
        llIII111Il(),
        IIIllI11Il:FindFirstChild("Backpack"),
        IIIllI11Il:FindFirstChild("consumablesFolder")
    }) do
        if Il11lI11Il then
            for ll11lI11Il, Il11lI11Il in ipairs(Il11lI11Il:GetChildren()) do
                if (Il11lI11Il:IsA("Tool") or Il11lI11Il:IsA("StringValue")) and table["find"](II1llI11Il["AutoEgg"]["Names"], Il11lI11Il["Name"]) then
                    I111lI11Il = I111lI11Il + 1
                end
            end
        end
    end
    return I111lI11Il
end
local lIIlI111Il = nil
local IIIlI111Il = nil
local function previousHandler(I111lI11Il)
    if I111lI11Il then
        if IIIlI111Il then
            return
        end
        local I111lI11Il = ll11lI11Il:FindFirstChild("client")
        local Il11lI11Il = I111lI11Il and I111lI11Il:FindFirstChild("controllers")
        local lIl1lI11Il = Il11lI11Il and Il11lI11Il:FindFirstChild("ChoiceController")
        if not lIl1lI11Il or not lIl1lI11Il:IsA("ModuleScript") then
            return
        end
        local IIl1lI11Il, l1l1lI11Il = pcall(require, lIl1lI11Il)
        if not IIl1lI11Il or type(l1l1lI11Il) ~= "table" or type(l1l1lI11Il["Ask"]) ~= "function" then
            return
        end
        lIIlI111Il = l1l1lI11Il
        IIIlI111Il = l1l1lI11Il["Ask"]
        l1l1lI11Il["Ask"] = function(I111lI11Il, ll11lI11Il)
            local Il11lI11Il = type(ll11lI11Il) == "table" and (tostring(ll11lI11Il["Question"] or "")):lower() or ""
            local lIl1lI11Il = Il11lI11Il:find("protein egg", 1, true) ~= nil
            if ll1llI11Il["autoEgg"] and lIl1lI11Il then
                local I111lI11Il = handleI111L11Il()
                local Il11lI11Il = I111lI11Il and ll11lI11Il["OnCancel"] or ll11lI11Il["OnConfirm"]
                if type(Il11lI11Il) == "function" then
                    task["defer"](Il11lI11Il)
                end
                return not I111lI11Il
            end
            return IIIlI111Il(I111lI11Il, ll11lI11Il)
        end
        return
    end
    if lIIlI111Il and (IIIlI111Il and lIIlI111Il["Ask"] ~= IIIlI111Il) then
        lIIlI111Il["Ask"] = IIIlI111Il
    end
    if IIIlI111Il then
        lIIlI111Il = nil
        IIIlI111Il = nil
    end
end
ll1llI11Il["autoEggConsumeBusy"] = false
ll1llI11Il["eatProteinEgg"] = function(I111lI11Il)
    if not I111lI11Il and handleI111L11Il() then
        return true
    end
    if ll1llI11Il["autoEggConsumeBusy"] then
        return false
    end
    local ll11lI11Il = handleLl11LIIl()
    local Il11lI11Il = llIII111Il()
    local lIl1lI11Il = IIIllI11Il:FindFirstChild("muscleEvent")
    if not ll11lI11Il or not Il11lI11Il or not lIl1lI11Il or not lIl1lI11Il:IsA("RemoteEvent") then
        return false
    end
    ll1llI11Il["autoEggConsumeBusy"] = true
    local IIl1lI11Il, l1l1lI11Il = pcall(function()
        local I111lI11Il = ll11lI11Il["Parent"]
        local IIl1lI11Il = outerHandler()
        local l1l1lI11Il = handleI111L11Il()
        if ll11lI11Il["Parent"] ~= Il11lI11Il then
            ll11lI11Il["Parent"] = Il11lI11Il
            task["wait"](0.4)
        end
        if not ll11lI11Il["Parent"] or outerHandler() < IIl1lI11Il or not l1l1lI11Il and handleI111L11Il() then
            return true
        end
        lIl1lI11Il:FireServer("proteinEgg", ll11lI11Il)
        local I1l1lI11Il = time() + 3
        while time() < I1l1lI11Il do
            if not ll11lI11Il["Parent"] or outerHandler() < IIl1lI11Il or not l1l1lI11Il and handleI111L11Il() then
                return true
            end
            task["wait"](0.1)
        end
        if ll11lI11Il["Parent"] == Il11lI11Il and (I111lI11Il and I111lI11Il["Parent"]) then
            ll11lI11Il["Parent"] = I111lI11Il
        end
        return false
    end)
    ll1llI11Il["autoEggConsumeBusy"] = false
    return IIl1lI11Il and l1l1lI11Il == true
end
do
    local function I111lI11Il(I111lI11Il)
        I111lI11Il = tostring(I111lI11Il or "")
        local ll11lI11Il = tonumber(I111lI11Il:match("(%d+)%s*[hH]")) or 0
        local Il11lI11Il = tonumber(I111lI11Il:match("(%d+)%s*[mM]")) or 0
        local lIl1lI11Il = tonumber(I111lI11Il:match("(%d+)%s*[sS]")) or 0
        local IIl1lI11Il = (ll11lI11Il * 3600 + Il11lI11Il * 60) + lIl1lI11Il
        return IIl1lI11Il > 0 and IIl1lI11Il or nil
    end
    local function ll11lI11Il()
        local ll11lI11Il = IIIllI11Il:FindFirstChild("boostTimersFolder")
        if ll11lI11Il then
            for I111lI11Il, Il11lI11Il in ipairs(II1llI11Il["AutoEgg"]["Names"]) do
                local lIl1lI11Il = ll11lI11Il:FindFirstChild(Il11lI11Il)
                local IIl1lI11Il = lIl1lI11Il and tonumber(lIl1lI11Il["Value"])
                if IIl1lI11Il and IIl1lI11Il > 0 then
                    return IIl1lI11Il
                end
            end
        end
        for ll11lI11Il, Il11lI11Il in ipairs(parent:GetDescendants()) do
            if Il11lI11Il:IsA("TextLabel") or Il11lI11Il:IsA("TextButton") then
                local ll11lI11Il = tostring(Il11lI11Il["Text"] or "")
                local lIl1lI11Il = ll11lI11Il:lower()
                local IIl1lI11Il = (lIl1lI11Il:find("fuerza", 1, true) or lIl1lI11Il:find("strength", 1, true)) and (lIl1lI11Il:find("x2", 1, true) or lIl1lI11Il:find("2x", 1, true))
                if IIl1lI11Il then
                    local ll11lI11Il = Il11lI11Il["Parent"]
                    for Il11lI11Il = 1, 4, 1 do
                        if not ll11lI11Il then
                            break
                        end
                        for ll11lI11Il, Il11lI11Il in ipairs(ll11lI11Il:GetDescendants()) do
                            if Il11lI11Il:IsA("TextLabel") or Il11lI11Il:IsA("TextButton") then
                                local ll11lI11Il = I111lI11Il(Il11lI11Il["Text"])
                                if ll11lI11Il then
                                    return ll11lI11Il
                                end
                            end
                        end
                        ll11lI11Il = ll11lI11Il["Parent"]
                    end
                end
            end
        end
        for I111lI11Il, ll11lI11Il in ipairs(IIIllI11Il:GetDescendants()) do
            if ll11lI11Il:IsA("ValueBase") then
                local I111lI11Il = ll11lI11Il["Name"]:lower()
                if I111lI11Il:find("strength", 1, true) and (I111lI11Il:find("boost", 1, true) or I111lI11Il:find("timer", 1, true)) then
                    local I111lI11Il = tonumber(ll11lI11Il["Value"])
                    if I111lI11Il and (I111lI11Il > 0 and I111lI11Il <= II1llI11Il["AutoEgg"]["Interval"]) then
                        return I111lI11Il
                    end
                end
            end
        end
        return 0
    end
    ll1llI11Il["autoEggSources"] = {
        ["manual"] = false,
        ["fastFarm"] = false,
        ["rebirth"] = false
    }
    ll1llI11Il["autoEggNextAt"] = 0
    ll1llI11Il["autoEggImmediateRequested"] = false
    ll1llI11Il["setAutoEgg"] = function(I111lI11Il, Il11lI11Il)
        Il11lI11Il = Il11lI11Il or "manual"
        local lIl1lI11Il = ll1llI11Il["autoEggSources"][Il11lI11Il] == true
        ll1llI11Il["autoEggSources"][Il11lI11Il] = I111lI11Il == true
        if I111lI11Il == true and not lIl1lI11Il then
            ll1llI11Il["autoEggImmediateRequested"] = true
        end
        local IIl1lI11Il = false
        for I111lI11Il, ll11lI11Il in pairs(ll1llI11Il["autoEggSources"]) do
            if ll11lI11Il then
                IIl1lI11Il = true
                break
            end
        end
        if ll1llI11Il["autoEgg"] == IIl1lI11Il then
            return
        end
        ll1llI11Il["autoEgg"] = IIl1lI11Il
        if not IIl1lI11Il then
            ll1llI11Il["autoEggImmediateRequested"] = false
            IIIII111Il("autoEgg")
            previousHandler(false)
            return
        end
        previousHandler(true)
        getSendMuscleEventI111L11Il("autoEgg", function()
            while ll1llI11Il["running"] and ll1llI11Il["autoEgg"] do
                local I111lI11Il = time()
                if ll1llI11Il["autoEggImmediateRequested"] then
                    ll1llI11Il["autoEggImmediateRequested"] = false
                    if ll1llI11Il["eatProteinEgg"](false) then
                        ll1llI11Il["autoEggNextAt"] = I111lI11Il + II1llI11Il["AutoEgg"]["Interval"]
                    else
                        ll1llI11Il["autoEggNextAt"] = I111lI11Il + 10
                    end
                else
                    local Il11lI11Il = ll11lI11Il()
                    if Il11lI11Il > 0 then
                        ll1llI11Il["autoEggNextAt"] = math["max"](ll1llI11Il["autoEggNextAt"], I111lI11Il + Il11lI11Il)
                    end
                    if I111lI11Il >= ll1llI11Il["autoEggNextAt"] then
                        if ll1llI11Il["eatProteinEgg"](false) then
                            ll1llI11Il["autoEggNextAt"] = I111lI11Il + II1llI11Il["AutoEgg"]["Interval"]
                        else
                            ll1llI11Il["autoEggNextAt"] = I111lI11Il + 10
                        end
                    end
                end
                task["wait"](1)
            end
        end)
    end
end
local function secondaryHandleI111L11Il()
    local I111lI11Il = parent:FindFirstChild("autoLiftFrame", true)
    local ll11lI11Il = I111lI11Il and I111lI11Il:FindFirstChild("autoLiftButton", true)
    if ll11lI11Il and ll11lI11Il:IsA("GuiButton") then
        return ll11lI11Il
    end
    return nil
end
local function llIlI111Il()
    local I111lI11Il = ll1llI11Il["autoLiftNative"]
    if I111lI11Il["connection"] then
        pcall(function()
            I111lI11Il["connection"]:Disconnect()
        end)
        I111lI11Il["connection"] = nil
    end
    for I111lI11Il, ll11lI11Il in ipairs(I111lI11Il["disabledConnections"]) do
        pcall(function()
            ll11lI11Il:Enable()
        end)
    end
    table["clear"](I111lI11Il["disabledConnections"])
    if I111lI11Il["fallbackMarker"] then
        pcall(function()
            I111lI11Il["fallbackMarker"]:Destroy()
        end)
        I111lI11Il["fallbackMarker"] = nil
    end
    I111lI11Il["button"] = nil
end
local function IlIlI111Il()
    local I111lI11Il = secondaryHandleI111L11Il()
    if not I111lI11Il then
        return false
    end
    local ll11lI11Il = ll1llI11Il["autoLiftNative"]
    if ll11lI11Il["button"] == I111lI11Il and (ll11lI11Il["connection"] and ll11lI11Il["connection"]["Connected"]) then
        return true
    end
    llIlI111Il()
    ll11lI11Il["button"] = I111lI11Il
    I111lI11Il["Active"] = true
    I111lI11Il["Selectable"] = true
    local Il11lI11Il = false
    if type(getconnections) == "function" then
        local lIl1lI11Il, IIl1lI11Il = pcall(getconnections, I111lI11Il["Activated"])
        if lIl1lI11Il and type(IIl1lI11Il) == "table" then
            for I111lI11Il, lIl1lI11Il in ipairs(IIl1lI11Il) do
                local IIl1lI11Il = pcall(function()
                    lIl1lI11Il:Disable()
                end)
                if IIl1lI11Il then
                    table["insert"](ll11lI11Il["disabledConnections"], lIl1lI11Il)
                    Il11lI11Il = true
                end
            end
        end
    end
    if not Il11lI11Il then
        local I111lI11Il = IIIllI11Il:FindFirstChild("ownedGamepasses")
        if I111lI11Il and not I111lI11Il:FindFirstChild("Auto Lift") then
            local Il11lI11Il = Instance["new"]("BoolValue")
            Il11lI11Il["Name"] = "Auto Lift"
            Il11lI11Il["Value"] = true
            Il11lI11Il["Parent"] = I111lI11Il
            ll11lI11Il["fallbackMarker"] = Il11lI11Il
        end
    end
    ll11lI11Il["connection"] = I111lI11Il["Activated"]:Connect(function()
        if not ll1llI11Il["running"] or not ll1llI11Il["autoLiftUnlocked"] then
            return
        end
        IIIllI11Il:SetAttribute("AutoLiftEnabled", IIIllI11Il:GetAttribute("AutoLiftEnabled") ~= true)
    end)
    return true
end
local function lI1lI111Il()
    if ll1llI11Il["autoLiftUnlocked"] then
        return IlIlI111Il()
    end
    if not IlIlI111Il() then
        return false
    end
    ll1llI11Il["autoLiftUnlocked"] = true
    return true
end
local II1lI111Il = setmetatable({}, {
    ["__mode"] = "k"
})
local l11lI111Il = {}
local I11lI111Il = setmetatable({}, {
    ["__mode"] = "k"
})
local ll1lI111Il = {}
local Il1lI111Il = {
    ["strengthframe"] = true,
    ["durabilityframe"] = true,
    ["agilityframe"] = true,
    ["fuerzaframe"] = true
}
local function lIllI111Il(I111lI11Il)
    for I111lI11Il, ll11lI11Il in pairs(I111lI11Il) do
        if ll11lI11Il["visibleConnection"] then
            ll11lI11Il["visibleConnection"]:Disconnect()
        end
        if ll11lI11Il["ancestryConnection"] then
            ll11lI11Il["ancestryConnection"]:Disconnect()
        end
        if I111lI11Il and I111lI11Il["Parent"] then
            pcall(function()
                I111lI11Il["Visible"] = ll11lI11Il["visible"]
            end)
        end
    end
    table["clear"](I111lI11Il)
end
local function IIllI111Il(I111lI11Il, ll11lI11Il, Il11lI11Il)
    if I111lI11Il[ll11lI11Il] ~= nil then
        return
    end
    local lIl1lI11Il = {
        ["visible"] = ll11lI11Il["Visible"]
    }
    I111lI11Il[ll11lI11Il] = lIl1lI11Il
    lIl1lI11Il["visibleConnection"] = (ll11lI11Il:GetPropertyChangedSignal("Visible")):Connect(function()
        if Il11lI11Il() and (ll11lI11Il["Parent"] and ll11lI11Il["Visible"]) then
            ll11lI11Il["Visible"] = false
        end
    end)
    lIl1lI11Il["ancestryConnection"] = ll11lI11Il["AncestryChanged"]:Connect(function(Il11lI11Il, IIl1lI11Il)
        if IIl1lI11Il == nil then
            if lIl1lI11Il["visibleConnection"] then
                lIl1lI11Il["visibleConnection"]:Disconnect()
            end
            if lIl1lI11Il["ancestryConnection"] then
                lIl1lI11Il["ancestryConnection"]:Disconnect()
            end
            I111lI11Il[ll11lI11Il] = nil
        end
    end)
    ll11lI11Il["Visible"] = false
end
local function l1llI111Il(I111lI11Il)
    if I111lI11Il and (I111lI11Il:IsA("GuiObject") and (I111lI11Il["Name"] == "durabilityFrame" and I11lI111Il[I111lI11Il] == nil)) then
        IIllI111Il(I11lI111Il, I111lI11Il, function()
            return ll1llI11Il["running"] and ll1llI11Il["hideDurability"]
        end)
    end
end
local function I1llI111Il(I111lI11Il)
    ll1llI11Il["hideDurability"] = I111lI11Il == true
    for I111lI11Il, ll11lI11Il in ipairs(ll1lI111Il) do
        ll11lI11Il:Disconnect()
    end
    table["clear"](ll1lI111Il)
    if ll1llI11Il["hideDurability"] then
        for I111lI11Il, ll11lI11Il in ipairs(ll11lI11Il:GetChildren()) do
            pcall(l1llI111Il, ll11lI11Il)
        end
        for I111lI11Il, ll11lI11Il in ipairs(parent:GetDescendants()) do
            pcall(l1llI111Il, ll11lI11Il)
        end
        ll1lI111Il[#ll1lI111Il + 1] = ll11lI11Il["ChildAdded"]:Connect(function(I111lI11Il)
            if ll1llI11Il["hideDurability"] then
                task["defer"](l1llI111Il, I111lI11Il)
            end
        end)
        ll1lI111Il[#ll1lI111Il + 1] = parent["DescendantAdded"]:Connect(function(I111lI11Il)
            if ll1llI11Il["hideDurability"] then
                task["defer"](l1llI111Il, I111lI11Il)
            end
        end)
    else
        lIllI111Il(I11lI111Il)
    end
end
do
    local I111lI11Il = nil
    local ll11lI11Il = 0
    local Il11lI11Il = 0
    local lIl1lI11Il = false
    local function IIl1lI11Il()
        ll11lI11Il = ll11lI11Il + 1
        if I111lI11Il then
            I111lI11Il:Disconnect()
            I111lI11Il = nil
        end
    end
    local function l1l1lI11Il()
        IIl1lI11Il()
        if type(firesignal) ~= "function" then
            return
        end
        local l1l1lI11Il = IIIllI11Il:FindFirstChild("muscleEvent")
        if not l1l1lI11Il or not l1l1lI11Il:IsA("RemoteEvent") then
            return
        end
        local I1l1lI11Il = ll11lI11Il
        I111lI11Il = l1l1lI11Il["OnClientEvent"]:Connect(function(I111lI11Il, IIl1lI11Il)
            local lll1lI11Il = capturedIl11LI
            local Ill1lI11Il = ll1llI11Il["selectedRock"]
            local lIIllI11Il = ll1llI11Il["rockGeneration"]
            if lIl1lI11Il or I111lI11Il ~= "showDurability" or IIl1lI11Il == nil or not ll1llI11Il["running"] or not ll1llI11Il["fastPunch"] or not Ill1lI11Il or not lll1lI11Il or not lll1lI11Il["enabled"] or lll1lI11Il["definition"] ~= Ill1lI11Il or not lll1lI11Il["lastRock"] or clock() < (ll1llI11Il["rockVisualReadyAt"] or math["huge"]) then
                return
            end
            if ll1llI11Il["hideDurability"] then
                return
            end
            local IIIllI11Il = time()
            if IIIllI11Il - Il11lI11Il < 0.28 then
                return
            end
            Il11lI11Il = IIIllI11Il
            for I111lI11Il, Il11lI11Il in ipairs({
                0.1,
                0.24
            }) do
                task["delay"](Il11lI11Il, function()
                    if I1l1lI11Il ~= ll11lI11Il or not ll1llI11Il["running"] or not ll1llI11Il["fastPunch"] or ll1llI11Il["rockGeneration"] ~= lIIllI11Il or ll1llI11Il["selectedRock"] ~= Ill1lI11Il or capturedIl11LI ~= lll1lI11Il or not lll1lI11Il["enabled"] or ll1llI11Il["hideDurability"] then
                        return
                    end
                    lIl1lI11Il = true
                    pcall(firesignal, l1l1lI11Il["OnClientEvent"], "showDurability", IIl1lI11Il)
                    lIl1lI11Il = false
                end)
            end
        end)
    end
    ll1llI11Il["stopDurabilityBurst"] = IIl1lI11Il
    l1l1lI11Il()
end
local function llllI111Il()
    local I111lI11Il = ll11lI11Il:FindFirstChild("shared")
    local Il11lI11Il = I111lI11Il and I111lI11Il:FindFirstChild("assets")
    return Il11lI11Il and Il11lI11Il:FindFirstChild("ui") or nil
end
local function IlllI111Il(I111lI11Il, ll11lI11Il)
    if ll1llI11Il["hideFrames"] and (I111lI11Il and (I111lI11Il["Parent"] == ll11lI11Il and (I111lI11Il:IsA("GuiObject") and (Il1lI111Il[(tostring(I111lI11Il["Name"] or "")):lower()] and II1lI111Il[I111lI11Il] == nil)))) then
        IIllI111Il(II1lI111Il, I111lI11Il, function()
            return ll1llI11Il["running"] and ll1llI11Il["hideFrames"]
        end)
    end
end
local function lIII1111Il(I111lI11Il)
    ll1llI11Il["hideFrames"] = I111lI11Il == true
    pcall(IIIllI11Il["SetAttribute"], IIIllI11Il, "ShowPopups", not ll1llI11Il["hideFrames"])
    for I111lI11Il, ll11lI11Il in ipairs(l11lI111Il) do
        ll11lI11Il:Disconnect()
    end
    table["clear"](l11lI111Il)
    if ll1llI11Il["hideFrames"] then
        local I111lI11Il = {}
        local function ll11lI11Il(ll11lI11Il)
            if not ll11lI11Il or I111lI11Il[ll11lI11Il] then
                return
            end
            I111lI11Il[ll11lI11Il] = true
            for I111lI11Il, Il11lI11Il in ipairs(ll11lI11Il:GetChildren()) do
                pcall(IlllI111Il, Il11lI11Il, ll11lI11Il)
            end
            l11lI111Il[#l11lI111Il + 1] = ll11lI11Il["ChildAdded"]:Connect(function(I111lI11Il)
                if ll1llI11Il["running"] and ll1llI11Il["hideFrames"] then
                    task["defer"](IlllI111Il, I111lI11Il, ll11lI11Il)
                end
            end)
        end
        ll11lI11Il(llllI111Il())
        ll11lI11Il(parent:FindFirstChild("statEffectsGui"))
        l11lI111Il[#l11lI111Il + 1] = parent["ChildAdded"]:Connect(function(I111lI11Il)
            if ll1llI11Il["running"] and (ll1llI11Il["hideFrames"] and I111lI11Il["Name"] == "statEffectsGui") then
                task["defer"](ll11lI11Il, I111lI11Il)
            end
        end)
    else
        lIllI111Il(II1lI111Il)
    end
end
local IIII1111Il = 0
local il11LICondition = nil
lllllI11Il["MachineVisuals"] = {
    ["humanoid"] = nil,
    ["tracks"] = {},
    ["activeType"] = nil,
    ["activeMachine"] = nil
}
do
    local I111lI11Il = lllllI11Il["MachineVisuals"]
    local function Il11lI11Il(ll11lI11Il)
        for I111lI11Il, Il11lI11Il in pairs(I111lI11Il["tracks"]) do
            for I111lI11Il, Il11lI11Il in pairs(Il11lI11Il) do
                if Il11lI11Il and Il11lI11Il["IsPlaying"] then
                    pcall(Il11lI11Il["Stop"], Il11lI11Il, ll11lI11Il or 0.1)
                end
            end
        end
        I111lI11Il["activeType"] = nil
        I111lI11Il["activeMachine"] = nil
    end
    local function lIl1lI11Il()
        Il11lI11Il(0)
        for I111lI11Il, ll11lI11Il in pairs(I111lI11Il["tracks"]) do
            for I111lI11Il, ll11lI11Il in pairs(ll11lI11Il) do
                if ll11lI11Il then
                    pcall(ll11lI11Il["Destroy"], ll11lI11Il)
                end
            end
        end
        I111lI11Il["tracks"] = {}
        I111lI11Il["humanoid"] = nil
    end
    local function IIl1lI11Il(Il11lI11Il)
        local IIl1lI11Il = IlIII111Il()
        if not IIl1lI11Il then
            return nil, nil
        end
        if I111lI11Il["humanoid"] ~= IIl1lI11Il then
            lIl1lI11Il()
            I111lI11Il["humanoid"] = IIl1lI11Il
        end
        local l1l1lI11Il = Il11lI11Il and Il11lI11Il:FindFirstChild("machineType")
        local I1l1lI11Il = l1l1lI11Il and tostring(l1l1lI11Il["Value"]) or nil
        if not I1l1lI11Il then
            return nil, nil
        end
        local lll1lI11Il = I111lI11Il["tracks"][I1l1lI11Il]
        if lll1lI11Il then
            return lll1lI11Il, I1l1lI11Il
        end
        local Ill1lI11Il = ll11lI11Il["shared"]["assets"]["animations"]["gameAnims"]["Machines"]
        local lIIllI11Il = Ill1lI11Il:FindFirstChild(I1l1lI11Il)
        local IIIllI11Il = IIl1lI11Il:FindFirstChildOfClass("Animator")
        if not lIIllI11Il or not IIIllI11Il then
            return nil, I1l1lI11Il
        end
        lll1lI11Il = {
            ["idle"] = IIIllI11Il:LoadAnimation(lIIllI11Il["idle"]),
            ["rep"] = IIIllI11Il:LoadAnimation(lIIllI11Il["rep"])
        }
        lll1lI11Il["idle"]["Looped"] = true
        lll1lI11Il["rep"]["Looped"] = false
        I111lI11Il["tracks"][I1l1lI11Il] = lll1lI11Il
        return lll1lI11Il, I1l1lI11Il
    end
    local function l1l1lI11Il(ll11lI11Il)
        local lIl1lI11Il, l1l1lI11Il = IIl1lI11Il(ll11lI11Il)
        if not lIl1lI11Il or not lIl1lI11Il["idle"] then
            return false
        end
        if I111lI11Il["activeType"] ~= l1l1lI11Il then
            Il11lI11Il(0.08)
        end
        I111lI11Il["activeType"] = l1l1lI11Il
        I111lI11Il["activeMachine"] = ll11lI11Il
        if not lIl1lI11Il["idle"]["IsPlaying"] then
            pcall(lIl1lI11Il["idle"]["Play"], lIl1lI11Il["idle"], 0.1, 1, 1)
        end
        return lIl1lI11Il["idle"]["IsPlaying"]
    end
    local function I1l1lI11Il(I111lI11Il, ll11lI11Il)
        local Il11lI11Il = IIl1lI11Il(I111lI11Il)
        if not Il11lI11Il or not Il11lI11Il["rep"] then
            return false
        end
        local lIl1lI11Il = tonumber(ll11lI11Il)
        if not lIl1lI11Il then
            lIl1lI11Il = 1
            local I111lI11Il = IIIllI11Il:FindFirstChild("ownedGamepasses")
            if I111lI11Il and I111lI11Il:FindFirstChild("x2 Rep Time") then
                lIl1lI11Il = 2
            end
        end
        lIl1lI11Il = math["clamp"](lIl1lI11Il, 0.25, 8)
        pcall(Il11lI11Il["rep"]["Play"], Il11lI11Il["rep"], 0.04, 1, lIl1lI11Il)
        pcall(Il11lI11Il["rep"]["AdjustSpeed"], Il11lI11Il["rep"], lIl1lI11Il)
        return Il11lI11Il["rep"]["IsPlaying"]
    end
    I111lI11Il["stopAnimations"] = Il11lI11Il
    I111lI11Il["destroyTracks"] = lIl1lI11Il
    I111lI11Il["playIdle"] = l1l1lI11Il
    I111lI11Il["playRep"] = I1l1lI11Il
end
lIIII111Il(function()
    lllllI11Il["MachineVisuals"]["destroyTracks"]()
end)
local function isI111L11IlLlLiValid(I111lI11Il, ll11lI11Il, Il11lI11Il)
    if not I111lI11Il or not ll11lI11Il then
        return false
    end
    if Il11lI11Il and Il11lI11Il["SeatPart"] == ll11lI11Il then
        return true
    end
    local lIl1lI11Il = IIIllI11Il:FindFirstChild("machineInUse")
    if lIl1lI11Il and lIl1lI11Il["Value"] == ll11lI11Il then
        return true
    end
    if tonumber(I111lI11Il:GetAttribute("InUseUserId")) == IIIllI11Il["UserId"] then
        return true
    end
    local IIl1lI11Il = llIII111Il()
    local l1l1lI11Il = IIl1lI11Il and IIl1lI11Il:GetAttribute("MachineStandingMount") == true
    local I1l1lI11Il = IIl1lI11Il and IIl1lI11Il:GetAttribute("MachineScaleFrozen") == true
    return (l1l1lI11Il or I1l1lI11Il) and (lllllI11Il["acceptedMachine"] == I111lI11Il and lllllI11Il["acceptedMachineSeat"] == ll11lI11Il)
end
local function llII1111Il(I111lI11Il)
    local ll11lI11Il = workspace:FindFirstChild("machinesFolder")
    if not ll11lI11Il or type(I111lI11Il) ~= "table" then
        return nil, nil
    end
    local Il11lI11Il, lIl1lI11Il, IIl1lI11Il, l1l1lI11Il, I1l1lI11Il = nil, nil, -math["huge"], -1, math["huge"]
    local lll1lI11Il = IlIII111Il()
    local Ill1lI11Il = isI111L11IlValid()
    local lIIllI11Il = Ill1lI11Il and Ill1lI11Il["Position"] or I111lI11Il["fallback"] and I111lI11Il["fallback"]["Position"]
    local data = I111lI11Il["fallback"] and I111lI11Il["fallback"]["Position"]
    local option = I111lI11Il["instance"] and {
        I111lI11Il["instance"]
    } or ll11lI11Il:GetChildren()
    for ll11lI11Il, Ill1lI11Il in ipairs(option) do
        if Ill1lI11Il:IsA("Model") and Ill1lI11Il["Name"] == I111lI11Il["object"] then
            local ll11lI11Il = Ill1lI11Il["PrimaryPart"]
            if not (ll11lI11Il and ll11lI11Il:IsA("Seat")) then
                ll11lI11Il = Ill1lI11Il:FindFirstChild("interactSeat", true)
            end
            local option = ll11lI11Il and (data and (Vector3["new"](ll11lI11Il["Position"]["X"], 0, ll11lI11Il["Position"]["Z"]) - Vector3["new"](data["X"], 0, data["Z"]))["Magnitude"]) or 0
            local llIllI11Il = Ill1lI11Il:FindFirstChild("strengthGain")
            local IlIllI11Il = I111lI11Il["strengthGain"] == nil or llIllI11Il and tonumber(llIllI11Il["Value"]) == tonumber(I111lI11Il["strengthGain"])
            if ll11lI11Il and (ll11lI11Il:IsA("Seat") and (option <= 1400 and IlIllI11Il)) then
                if isI111L11IlLlLiValid(Ill1lI11Il, ll11lI11Il, lll1lI11Il) then
                    return Ill1lI11Il, ll11lI11Il
                end
                local I111lI11Il = tonumber(Ill1lI11Il:GetAttribute("InUseUserId"))
                local flag = (ll11lI11Il["Occupant"] == nil or ll11lI11Il["Occupant"] == lll1lI11Il) and (I111lI11Il == nil or I111lI11Il == IIIllI11Il["UserId"])
                local number = 0
                local IlIllI11Il = Ill1lI11Il:FindFirstChild("requirements")
                if flag and IlIllI11Il then
                    for I111lI11Il, ll11lI11Il in ipairs(IlIllI11Il:GetChildren()) do
                        if ll11lI11Il:IsA("ValueBase") then
                            local I111lI11Il = l11II111Il(IIIllI11Il, {
                                ll11lI11Il["Name"]
                            })
                            local Il11lI11Il = tonumber(ll11lI11Il["Value"]) or 0
                            if not I111lI11Il or (tonumber(I111lI11Il["Value"]) or 0) < Il11lI11Il then
                                flag = false
                                break
                            end
                            number = math["max"](number, Il11lI11Il)
                        end
                    end
                end
                if flag then
                    local I111lI11Il = tonumber(llIllI11Il and llIllI11Il["Value"]) or 0
                    local lll1lI11Il = lIIllI11Il and (ll11lI11Il["Position"] - lIIllI11Il)["Magnitude"] or 0
                    if I111lI11Il > IIl1lI11Il or I111lI11Il == IIl1lI11Il and number > l1l1lI11Il or I111lI11Il == IIl1lI11Il and (number == l1l1lI11Il and lll1lI11Il < I1l1lI11Il) then
                        Il11lI11Il, lIl1lI11Il = Ill1lI11Il, ll11lI11Il
                        IIl1lI11Il, l1l1lI11Il, I1l1lI11Il = I111lI11Il, number, lll1lI11Il
                    end
                end
            end
        end
    end
    return Il11lI11Il, lIl1lI11Il
end
local function IlII1111Il(I111lI11Il, ll11lI11Il, Il11lI11Il, lIl1lI11Il, IIl1lI11Il)
    if ll11lI11Il and ll11lI11Il:IsA("BasePart") then
        local I111lI11Il = IIl1lI11Il and IIl1lI11Il["Size"]["Y"] * 0.5 or 1
        local Il11lI11Il = ll11lI11Il["Size"]["Y"] * 0.5
        local l1l1lI11Il = lIl1lI11Il and math["max"](0.15, lIl1lI11Il["HipHeight"] * 0.12) or 0.25
        local I1l1lI11Il = math["clamp"]((I111lI11Il + Il11lI11Il) + l1l1lI11Il, 1.8, 3.3)
        return ll11lI11Il["CFrame"] * CFrame["new"](0, I1l1lI11Il, 0)
    end
    if I111lI11Il then
        local ll11lI11Il, Il11lI11Il = pcall(I111lI11Il["GetPivot"], I111lI11Il)
        if ll11lI11Il then
            return Il11lI11Il
        end
    end
    return Il11lI11Il
end
local function max(I111lI11Il)
    local Il11lI11Il = I111lI11Il and I111lI11Il:FindFirstChild("repTime", true)
    local lIl1lI11Il = I111lI11Il and I111lI11Il:GetAttribute("repTime")
    local IIl1lI11Il = math["max"](0.15, tonumber(lIl1lI11Il) or tonumber(Il11lI11Il and Il11lI11Il["Value"]) or 1)
    local l1l1lI11Il = IIIllI11Il:FindFirstChild("ownedGamepasses")
    if l1l1lI11Il and l1l1lI11Il:FindFirstChild("x2 Rep Time") then
        IIl1lI11Il = IIl1lI11Il * 0.5
    end
    if not il11LICondition then
        pcall(function()
            local I111lI11Il = ll11lI11Il:FindFirstChild("shared")
            local Il11lI11Il = I111lI11Il and I111lI11Il:FindFirstChild("modules")
            local lIl1lI11Il = Il11lI11Il and Il11lI11Il:FindFirstChild("GlobalFunctions") or ll11lI11Il:FindFirstChild("globalFunctions")
            if lIl1lI11Il and lIl1lI11Il:IsA("ModuleScript") then
                il11LICondition = require(lIl1lI11Il)
            end
        end)
    end
    if il11LICondition then
        local I111lI11Il, ll11lI11Il = pcall(il11LICondition["calculateUltimateRepTime"], IIIllI11Il)
        if I111lI11Il then
            IIl1lI11Il = IIl1lI11Il * (1 - math["clamp"](tonumber(ll11lI11Il) or 0, 0, 0.9))
        end
        local Il11lI11Il, lIl1lI11Il = pcall(il11LICondition["calculatePetRepTimeBoost"], IIIllI11Il)
        if Il11lI11Il then
            IIl1lI11Il = IIl1lI11Il * (1 - math["clamp"](tonumber(lIl1lI11Il) or 0, 0, 0.9))
        end
    end
    return math["max"](0.12, IIl1lI11Il + 0.025)
end
local function alternateHandleI111L11Il(I111lI11Il, lIl1lI11Il)
    local IIl1lI11Il = isI111L11IlValid()
    local l1l1lI11Il = IlIII111Il()
    if not IIl1lI11Il or not l1l1lI11Il then
        return false
    end
    local I1l1lI11Il, lll1lI11Il = llII1111Il(I111lI11Il)
    if not I1l1lI11Il or not lll1lI11Il or not lll1lI11Il:IsA("Seat") then
        return false
    end
    if isI111L11IlLlLiValid(I1l1lI11Il, lll1lI11Il, l1l1lI11Il) then
        return true, I1l1lI11Il, lll1lI11Il
    end
    local Ill1lI11Il = ll11lI11Il:FindFirstChild("rEvents") and ll11lI11Il["rEvents"]:FindFirstChild("machineInteractRemote")
    if not Ill1lI11Il or not Ill1lI11Il:IsA("RemoteFunction") then
        return false
    end
    for ll11lI11Il = 1, math["max"](1, tonumber(lIl1lI11Il) or 4), 1 do
        if isI111L11IlLlLiValid(I1l1lI11Il, lll1lI11Il, l1l1lI11Il) then
            return true, I1l1lI11Il, lll1lI11Il
        end
        local lIl1lI11Il = IlII1111Il(I1l1lI11Il, lll1lI11Il, I111lI11Il["fallback"], l1l1lI11Il, IIl1lI11Il)
        if not lIl1lI11Il then
            return false
        end
        IIl1lI11Il["Anchored"] = false
        local lIIllI11Il = IIIllI11Il["Character"]
        if lIIllI11Il then
            pcall(lIIllI11Il["PivotTo"], lIIllI11Il, lIl1lI11Il)
        end
        IIl1lI11Il["CFrame"] = lIl1lI11Il
        IIl1lI11Il["AssemblyLinearVelocity"] = Vector3["zero"]
        IIl1lI11Il["AssemblyAngularVelocity"] = Vector3["zero"]
        Il11lI11Il["Heartbeat"]:Wait()
        task["wait"](ll11lI11Il == 1 and 0.1 or 0.06)
        local success, result, llIllI11Il = pcall(Ill1lI11Il["InvokeServer"], Ill1lI11Il, "useMachine", lll1lI11Il)
        if success and result == true then
            lllllI11Il["acceptedMachine"] = I1l1lI11Il
            lllllI11Il["acceptedMachineSeat"] = lll1lI11Il
        elseif success and result == false then
            return false, I1l1lI11Il, lll1lI11Il, llIllI11Il
        elseif not success then
            return false, I1l1lI11Il, lll1lI11Il, "invokeFailed"
        end
        local IlIllI11Il = time() + 0.75
        repeat
            if isI111L11IlLlLiValid(I1l1lI11Il, lll1lI11Il, l1l1lI11Il) then
                return true, I1l1lI11Il, lll1lI11Il
            end
            Il11lI11Il["Heartbeat"]:Wait()
        until time() >= IlIllI11Il
        I1l1lI11Il, lll1lI11Il = llII1111Il(I111lI11Il)
        if not I1l1lI11Il or not lll1lI11Il then
            return false
        end
    end
    return isI111L11IlLlLiValid(I1l1lI11Il, lll1lI11Il, l1l1lI11Il), I1l1lI11Il, lll1lI11Il
end
local function l11I1111Il()
    lllllI11Il["MachineVisuals"]["stopAnimations"](0.1)
    lllllI11Il["acceptedMachine"] = nil
    lllllI11Il["acceptedMachineSeat"] = nil
    local I111lI11Il = ll11lI11Il:FindFirstChild("rEvents") and ll11lI11Il["rEvents"]:FindFirstChild("machineInteractRemote")
    if I111lI11Il and I111lI11Il:IsA("RemoteFunction") then
        if ll1llI11Il["shuttingDown"] then
            task["spawn"](function()
                pcall(I111lI11Il["InvokeServer"], I111lI11Il, "leaveMachine")
            end)
        else
            pcall(I111lI11Il["InvokeServer"], I111lI11Il, "leaveMachine")
        end
    end
    local Il11lI11Il = IlIII111Il()
    if Il11lI11Il and Il11lI11Il["SeatPart"] then
        Il11lI11Il["Sit"] = false
    end
end
lIII1111Il(false)
lllllI11Il.RegisterMachineToggle = function(I111lI11Il, ll11lI11Il)
    lllllI11Il["MachineToggleByDefinition"][I111lI11Il] = ll11lI11Il
end
lllllI11Il.SelectMachineToggle = function(I111lI11Il)
    if lllllI11Il["machineToggleSync"] then
        return
    end
    if lllllI11Il["StopFastModesForManualFarm"] then
        lllllI11Il["StopFastModesForManualFarm"]()
    end
    for I111lI11Il, ll11lI11Il in ipairs(lllllI11Il["RepToggles"] or {}) do
        pcall(function()
            if ll11lI11Il:Get() then
                ll11lI11Il:Set(false)
            end
        end)
    end
    lllllI11Il["machineToggleSync"] = true
    for ll11lI11Il, Il11lI11Il in pairs(lllllI11Il["MachineToggleByDefinition"]) do
        if Il11lI11Il ~= I111lI11Il and (Il11lI11Il["Get"] and Il11lI11Il["Set"]) then
            pcall(function()
                if Il11lI11Il:Get() then
                    Il11lI11Il:Set(false)
                end
            end)
        end
    end
    lllllI11Il["machineToggleSync"] = false
end
lllllI11Il.SwitchOffMachineToggle = function(I111lI11Il)
    local ll11lI11Il = lllllI11Il["MachineToggleByDefinition"][I111lI11Il]
    if ll11lI11Il and (ll11lI11Il["Get"] and ll11lI11Il:Get()) then
        ll11lI11Il:Set(false, true)
    end
end
local function I11I1111Il(I111lI11Il, Il11lI11Il)
    local lIl1lI11Il = ll1llI11Il["machine"]
    IIII1111Il = IIII1111Il + 1
    local IIl1lI11Il = IIII1111Il
    IIIII111Il("machine")
    if not Il11lI11Il then
        ll1llI11Il["machine"] = nil
        local I111lI11Il = IlIII111Il()
        local ll11lI11Il = IIIllI11Il:FindFirstChild("machineInUse")
        local Il11lI11Il = lIl1lI11Il ~= nil or lllllI11Il["acceptedMachine"] ~= nil or ll11lI11Il and ll11lI11Il["Value"] ~= nil or I111lI11Il and I111lI11Il["SeatPart"] ~= nil
        if Il11lI11Il then
            l11I1111Il()
        else
            lllllI11Il["MachineVisuals"]["stopAnimations"](0.1)
        end
        return
    end
    ll1llI11Il["machine"] = I111lI11Il
    lllllI11Il["lastMachineError"] = nil
    getSendMuscleEventI111L11Il("machine", function()
        local Il11lI11Il = 0
        local l1l1lI11Il = 0
        if lIl1lI11Il and lIl1lI11Il ~= I111lI11Il then
            l11I1111Il()
            task["wait"](0.15)
        end
        local I1l1lI11Il, lll1lI11Il, Ill1lI11Il, lIIllI11Il = alternateHandleI111L11Il(I111lI11Il)
        if lIIllI11Il == "isKingMachine" then
            lllllI11Il["MachineVisuals"]["stopAnimations"](0.1)
            lllllI11Il["lastMachineError"] = lIIllI11Il
            ll1llI11Il["machine"] = nil
            lllllI11Il["SwitchOffMachineToggle"](I111lI11Il)
            return
        end
        Il11lI11Il = time()
        while ll1llI11Il["running"] and (ll1llI11Il["machine"] == I111lI11Il and IIII1111Il == IIl1lI11Il) do
            local lIl1lI11Il = IlIII111Il()
            if not I1l1lI11Il or not isI111L11IlLlLiValid(lll1lI11Il, Ill1lI11Il, lIl1lI11Il) then
                if lllllI11Il["MachineVisuals"]["activeMachine"] == lll1lI11Il then
                    lllllI11Il["MachineVisuals"]["stopAnimations"](0.1)
                end
                if time() - Il11lI11Il >= 0.25 then
                    Il11lI11Il = time()
                    I1l1lI11Il, lll1lI11Il, Ill1lI11Il, lIIllI11Il = alternateHandleI111L11Il(I111lI11Il)
                    if lIIllI11Il == "isKingMachine" then
                        lllllI11Il["MachineVisuals"]["stopAnimations"](0.1)
                        lllllI11Il["lastMachineError"] = lIIllI11Il
                        ll1llI11Il["machine"] = nil
                        lllllI11Il["SwitchOffMachineToggle"](I111lI11Il)
                        return
                    end
                end
                task["wait"](0.03)
            else
                lllllI11Il["MachineVisuals"]["playIdle"](lll1lI11Il, Ill1lI11Il)
                local Il11lI11Il = I111lI11Il["fullTrain"] and ll1llI11Il["fullTrainMode"] == "Fast Rep" or I111lI11Il["autoFarm"] and ll1llI11Il["autoFarmMode"] == "Fast Rep"
                local IIl1lI11Il = Il11lI11Il and math["max"](0.02, tonumber(I111lI11Il["repInterval"]) or 0.025) or max(lll1lI11Il)
                if time() - l1l1lI11Il >= IIl1lI11Il then
                    local I111lI11Il = IIIllI11Il:FindFirstChild("muscleEvent") or ll11lI11Il:FindFirstChild("muscleEvent")
                    if I111lI11Il and (I111lI11Il:IsA("RemoteEvent") and isI111L11IlLlLiValid(lll1lI11Il, Ill1lI11Il, lIl1lI11Il)) then
                        local ll11lI11Il = pcall(I111lI11Il["FireServer"], I111lI11Il, "rep", Ill1lI11Il)
                        if ll11lI11Il then
                            l1l1lI11Il = time()
                            lllllI11Il["MachineVisuals"]["playRep"](lll1lI11Il, Il11lI11Il and 8 or nil)
                        end
                    end
                end
                task["wait"](Il11lI11Il and 0.02 or 0.035)
            end
        end
    end)
end
lllllI11Il.StopFastModesForManualFarm = function()
    local I111lI11Il = false
    for ll11lI11Il, Il11lI11Il in ipairs({
        lllllI11Il["StrengthToggle"],
        lllllI11Il["RebirthToggle"]
    }) do
        if Il11lI11Il and (Il11lI11Il["Get"] and (Il11lI11Il["Set"] and Il11lI11Il:Get())) then
            I111lI11Il = true
            Il11lI11Il:Set(false)
        end
    end
    if not I111lI11Il and (lllllI11Il["mode"] and lllllI11Il["Stop"]) then
        lllllI11Il:Stop(true)
    end
end
lllllI11Il.StopMachineForExercise = function()
    if lllllI11Il["machineToggleSync"] then
        return
    end
    local I111lI11Il = ll1llI11Il["machine"]
    lllllI11Il["machineToggleSync"] = true
    for I111lI11Il, ll11lI11Il in pairs(lllllI11Il["MachineToggleByDefinition"]) do
        if ll11lI11Il["Get"] and ll11lI11Il["Set"] then
            pcall(function()
                if ll11lI11Il:Get() then
                    ll11lI11Il:Set(false)
                end
            end)
        end
    end
    lllllI11Il["machineToggleSync"] = false
    if I111lI11Il then
        I11I1111Il(I111lI11Il, false)
    end
end
do
    lllllI11Il["generation"] = 0
    lllllI11Il["warningAccepted"] = false
    lllllI11Il["mode"] = nil
    lllllI11Il["startedAt"] = nil
    lllllI11Il["startStats"] = nil
    lllllI11Il["lockCFrame"] = nil
    lllllI11Il["lockCharacter"] = nil
    lllllI11Il["machine"] = nil
    lllllI11Il["machineSeat"] = nil
    lllllI11Il["machineDefinition"] = nil
    lllllI11Il["machineFailureCooldowns"] = {}
    lllllI11Il["lastMachineSelection"] = nil
    lllllI11Il["hideFramesOwned"] = false
    lllllI11Il["packCount"] = 0
    lllllI11Il["cachedPing"] = 0
    lllllI11Il["pingCheckedAt"] = 0
    lllllI11Il["pingPaused"] = false
    lllllI11Il["resumeSamples"] = 0
    lllllI11Il["strengthBatch"] = II1llI11Il["FastFarm"]["StrengthStartBatch"]
    lllllI11Il["lastBatchAdjust"] = 0
    lllllI11Il["pingReducer"] = false
    lllllI11Il["sizeInvokeBusy"] = false
    lllllI11Il["lastSizeInvoke"] = 0
    lllllI11Il["sizeReleaseGeneration"] = 0
    lllllI11Il["frameReleaseGeneration"] = 0
    lllllI11Il.SetPingReducer = function(ll11lI11Il, I111lI11Il)
        ll11lI11Il["pingReducer"] = I111lI11Il == true
        ll11lI11Il["resumeSamples"] = 0
        if ll11lI11Il["pingReducer"] then
            ll11lI11Il["strengthBatch"] = math["min"](ll11lI11Il["strengthBatch"] or II1llI11Il["FastFarm"]["StrengthStartBatch"], II1llI11Il["FastFarm"]["StrengthStartBatch"])
        end
        return ll11lI11Il["pingReducer"]
    end
    local function I111lI11Il(I111lI11Il)
        local ll11lI11Il = l11II111Il(IIIllI11Il, I111lI11Il)
        return ll11lI11Il and tonumber(ll11lI11Il["Value"]) or 0, ll11lI11Il
    end
    local function lIl1lI11Il()
        local ll11lI11Il = I111lI11Il({
            "Rebirths",
            "Rebirth"
        })
        local Il11lI11Il = I111lI11Il({
            "Strength",
            "Fuerza"
        })
        local lIl1lI11Il = I111lI11Il({
            "Durability",
            "Resistencia"
        })
        return {
            ["rebirths"] = ll11lI11Il,
            ["strength"] = Il11lI11Il,
            ["durability"] = lIl1lI11Il
        }
    end
    local function IIl1lI11Il()
        return ll11lI11Il:FindFirstChild("rEvents")
    end
    local function l1l1lI11Il()
        local I111lI11Il = IIl1lI11Il()
        local ll11lI11Il = I111lI11Il and I111lI11Il:FindFirstChild("equipPetEvent")
        local lIl1lI11Il = IIIllI11Il:FindFirstChild("equippedPets")
        if not ll11lI11Il or not lIl1lI11Il then
            return false
        end
        for I111lI11Il, Il11lI11Il in ipairs(lIl1lI11Il:GetChildren()) do
            local lIl1lI11Il = Il11lI11Il:FindFirstChild("petReference")
            local IIl1lI11Il = lIl1lI11Il and (lIl1lI11Il:IsA("ObjectValue") and lIl1lI11Il["Value"])
            if IIl1lI11Il then
                pcall(ll11lI11Il["FireServer"], ll11lI11Il, "unequipPet", IIl1lI11Il)
            end
        end
        Il11lI11Il["Heartbeat"]:Wait()
        local l1l1lI11Il = time() + 1.2
        repeat
            local I111lI11Il = 0
            for ll11lI11Il, Il11lI11Il in ipairs(lIl1lI11Il:GetChildren()) do
                local lIl1lI11Il = Il11lI11Il:FindFirstChild("petReference")
                if lIl1lI11Il and (lIl1lI11Il:IsA("ObjectValue") and lIl1lI11Il["Value"]) then
                    I111lI11Il = I111lI11Il + 1
                end
            end
            if I111lI11Il == 0 then
                return true
            end
            task["wait"](0.04)
        until time() >= l1l1lI11Il
        return false
    end
    local function I1l1lI11Il(I111lI11Il)
        local ll11lI11Il = IIl1lI11Il()
        local lIl1lI11Il = ll11lI11Il and ll11lI11Il:FindFirstChild("equipPetEvent")
        local l1l1lI11Il = IIIllI11Il:FindFirstChild("petsFolder")
        if not lIl1lI11Il or not l1l1lI11Il then
            return 0
        end
        local I1l1lI11Il = {}
        for ll11lI11Il, Il11lI11Il in ipairs(l1l1lI11Il:GetChildren()) do
            if Il11lI11Il:IsA("Folder") then
                for ll11lI11Il, Il11lI11Il in ipairs(Il11lI11Il:GetChildren()) do
                    if Il11lI11Il["Name"] == I111lI11Il then
                        I1l1lI11Il[#I1l1lI11Il + 1] = Il11lI11Il
                    end
                end
            end
        end
        local lll1lI11Il = math["min"](II1llI11Il["FastFarm"]["MaxPets"], #I1l1lI11Il)
        for I111lI11Il = 1, lll1lI11Il, 1 do
            pcall(lIl1lI11Il["FireServer"], lIl1lI11Il, "equipPet", I1l1lI11Il[I111lI11Il])
        end
        Il11lI11Il["Heartbeat"]:Wait()
        local Ill1lI11Il = IIIllI11Il:FindFirstChild("equippedPets")
        local lIIllI11Il = time() + 1.4
        repeat
            local ll11lI11Il = 0
            if Ill1lI11Il then
                for Il11lI11Il, lIl1lI11Il in ipairs(Ill1lI11Il:GetChildren()) do
                    local IIl1lI11Il = lIl1lI11Il:FindFirstChild("petReference")
                    local l1l1lI11Il = IIl1lI11Il and (IIl1lI11Il:IsA("ObjectValue") and IIl1lI11Il["Value"])
                    if l1l1lI11Il and l1l1lI11Il["Name"] == I111lI11Il then
                        ll11lI11Il = ll11lI11Il + 1
                    end
                end
            end
            if ll11lI11Il >= lll1lI11Il then
                return ll11lI11Il
            end
            task["wait"](0.04)
        until time() >= lIIllI11Il
        return 0
    end
    local function lll1lI11Il(I111lI11Il, ll11lI11Il, Il11lI11Il)
        local lIl1lI11Il = IIIllI11Il:FindFirstChild("muscleEvent")
        if not lIl1lI11Il then
            return false
        end
        local IIl1lI11Il = IlIII111Il()
        local l1l1lI11Il = ll11lI11Il and (IIl1lI11Il and isI111L11IlLlLiValid(lllllI11Il["machine"], ll11lI11Il, IIl1lI11Il))
        if not l1l1lI11Il and not Il11lI11Il then
            return false
        end
        for I111lI11Il = 1, I111lI11Il or II1llI11Il["FastFarm"]["RepsPerCycle"], 1 do
            if l1l1lI11Il then
                pcall(lIl1lI11Il["FireServer"], lIl1lI11Il, "rep", ll11lI11Il)
            else
                pcall(lIl1lI11Il["FireServer"], lIl1lI11Il, "rep")
            end
        end
        return true
    end
    local function Ill1lI11Il(I111lI11Il, ll11lI11Il)
        local Il11lI11Il = time()
        local lIl1lI11Il = false
        if Il11lI11Il - lllllI11Il["pingCheckedAt"] >= II1llI11Il["FastFarm"]["PingSampleInterval"] then
            lllllI11Il["cachedPing"] = isCachedPingValid()
            lllllI11Il["pingCheckedAt"] = Il11lI11Il
            lIl1lI11Il = true
        end
        local IIl1lI11Il = lllllI11Il["cachedPing"]
        local l1l1lI11Il = lllllI11Il["pingReducer"] == true
        local function I1l1lI11Il(Il11lI11Il)
            return lll1lI11Il(Il11lI11Il, ll11lI11Il, I111lI11Il == "rebirth")
        end
        local Ill1lI11Il = l1l1lI11Il and II1llI11Il["FastFarm"]["PingReducerPause"] or II1llI11Il["FastFarm"]["PingPause"]
        local lIIllI11Il = l1l1lI11Il and II1llI11Il["FastFarm"]["PingReducerResume"] or II1llI11Il["FastFarm"]["PingResume"]
        if I111lI11Il ~= "rebirth" and (not lllllI11Il["pingPaused"] and IIl1lI11Il >= Ill1lI11Il) then
            lllllI11Il["pingPaused"] = true
            lllllI11Il["resumeSamples"] = 0
            lllllI11Il["strengthBatch"] = II1llI11Il["FastFarm"]["StrengthMinBatch"]
            lllllI11Il["lastBatchAdjust"] = Il11lI11Il
        end
        if I111lI11Il ~= "rebirth" and lllllI11Il["pingPaused"] then
            if lIl1lI11Il then
                if IIl1lI11Il <= lIIllI11Il then
                    lllllI11Il["resumeSamples"] = lllllI11Il["resumeSamples"] + 1
                else
                    lllllI11Il["resumeSamples"] = 0
                end
                if lllllI11Il["resumeSamples"] >= 4 then
                    lllllI11Il["pingPaused"] = false
                    lllllI11Il["resumeSamples"] = 0
                    if I111lI11Il == "strength" then
                        lllllI11Il["strengthBatch"] = math["max"](lllllI11Il["strengthBatch"], math["floor"](II1llI11Il["FastFarm"]["StrengthStartBatch"] * 0.75))
                        lllllI11Il["lastBatchAdjust"] = Il11lI11Il
                    end
                end
            end
            if lllllI11Il["pingPaused"] then
                return 0.25, false
            end
        end
        if I111lI11Il == "rebirth" then
            lllllI11Il["pingPaused"] = false
            lllllI11Il["resumeSamples"] = 0
        end
        if I111lI11Il == "strength" then
            if lIl1lI11Il then
                if IIl1lI11Il >= II1llI11Il["FastFarm"]["StrengthBackoffPing"] and Il11lI11Il - lllllI11Il["lastBatchAdjust"] >= II1llI11Il["FastFarm"]["StrengthBackoffInterval"] then
                    lllllI11Il["strengthBatch"] = math["max"](II1llI11Il["FastFarm"]["StrengthMinBatch"], lllllI11Il["strengthBatch"] - (l1l1lI11Il and 6 or 4))
                    lllllI11Il["lastBatchAdjust"] = Il11lI11Il
                elseif IIl1lI11Il <= II1llI11Il["FastFarm"]["StrengthRampPing"] and Il11lI11Il - lllllI11Il["lastBatchAdjust"] >= II1llI11Il["FastFarm"]["StrengthRampInterval"] then
                    lllllI11Il["strengthBatch"] = math["min"](II1llI11Il["FastFarm"]["StrengthMaxBatch"], lllllI11Il["strengthBatch"] + 2)
                    lllllI11Il["lastBatchAdjust"] = Il11lI11Il
                end
            end
            local I111lI11Il = 1
            local ll11lI11Il = 1
            local lll1lI11Il = II1llI11Il["FastFarm"]["StrengthPingCritical"]
            local function Ill1lI11Il(ll11lI11Il, Il11lI11Il)
                return math["max"](Il11lI11Il or 1, math["floor"](ll11lI11Il * I111lI11Il))
            end
            if IIl1lI11Il >= lll1lI11Il then
                return 0.25, false
            elseif IIl1lI11Il >= II1llI11Il["FastFarm"]["StrengthPingHigh"] then
                I1l1lI11Il(Ill1lI11Il(2))
                return 0.18 * ll11lI11Il, true
            elseif IIl1lI11Il >= II1llI11Il["FastFarm"]["StrengthPingMedium"] then
                I1l1lI11Il(Ill1lI11Il(lllllI11Il["strengthBatch"] * 0.18, 3))
                return 0.09 * ll11lI11Il, true
            elseif IIl1lI11Il >= II1llI11Il["FastFarm"]["StrengthPingSoft"] then
                I1l1lI11Il(Ill1lI11Il(lllllI11Il["strengthBatch"] * 0.35, 6))
                return 0.05 * ll11lI11Il, true
            end
            I1l1lI11Il(Ill1lI11Il(lllllI11Il["strengthBatch"] * 0.6, 10))
            return II1llI11Il["FastFarm"]["StrengthDelay"] * ll11lI11Il, true
        end
        if IIl1lI11Il >= II1llI11Il["FastFarm"]["PingCritical"] then
            I1l1lI11Il(4)
            return 0.35, true
        elseif IIl1lI11Il >= II1llI11Il["FastFarm"]["PingHigh"] then
            I1l1lI11Il(10)
            return 0.18, true
        elseif IIl1lI11Il >= II1llI11Il["FastFarm"]["PingMedium"] then
            I1l1lI11Il(24)
            return 0.075, true
        elseif IIl1lI11Il >= II1llI11Il["FastFarm"]["PingSoft"] then
            I1l1lI11Il(36)
            return 0.025, true
        end
        I1l1lI11Il(II1llI11Il["FastFarm"]["RepsPerCycle"])
        return II1llI11Il["FastFarm"]["RepDelay"], true
    end
    local function lIIllI11Il()
        local I111lI11Il = IlIllI11Il["Golden Rebirth"]
        local ll11lI11Il = I111lI11Il and IIIllI11Il:GetAttribute(I111lI11Il)
        return typeof(ll11lI11Il) == "number" and math["max"](0, math["floor"](ll11lI11Il)) or 0
    end
    local function floor(I111lI11Il)
        if not il11LICondition then
            pcall(function()
                local I111lI11Il = ll11lI11Il:FindFirstChild("shared")
                local Il11lI11Il = I111lI11Il and I111lI11Il:FindFirstChild("modules")
                local lIl1lI11Il = Il11lI11Il and Il11lI11Il:FindFirstChild("GlobalFunctions")
                if lIl1lI11Il and lIl1lI11Il:IsA("ModuleScript") then
                    il11LICondition = require(lIl1lI11Il)
                end
            end)
        end
        if il11LICondition and type(il11LICondition["calculateRequiredRebirthStrength"]) == "function" then
            local ll11lI11Il, Il11lI11Il = pcall(il11LICondition["calculateRequiredRebirthStrength"], I111lI11Il, IIIllI11Il)
            if ll11lI11Il and type(Il11lI11Il) == "number" then
                return math["floor"](Il11lI11Il)
            end
        end
        local Il11lI11Il = 10000 + 2500 * (tonumber(I111lI11Il) or 0)
        local lIl1lI11Il = lIIllI11Il()
        if lIl1lI11Il > 0 then
            Il11lI11Il = Il11lI11Il * math["max"](0.1, 1 - lIl1lI11Il * 0.1)
        end
        return math["floor"](Il11lI11Il)
    end
    local function isValid()
        local I111lI11Il = IIl1lI11Il()
        local ll11lI11Il = I111lI11Il and I111lI11Il:FindFirstChild("rebirthRemote")
        if ll11lI11Il and ll11lI11Il:IsA("RemoteFunction") then
            local I111lI11Il, Il11lI11Il = pcall(ll11lI11Il["InvokeServer"], ll11lI11Il, "rebirthRequest")
            return I111lI11Il and Il11lI11Il == true
        elseif ll11lI11Il and ll11lI11Il:IsA("RemoteEvent") then
            return pcall(ll11lI11Il["FireServer"], ll11lI11Il, "rebirthRequest")
        end
        return false
    end
    local function llIllI11Il()
        local I111lI11Il = IlIII111Il()
        if not I111lI11Il then
            return
        end
        for ll11lI11Il, Il11lI11Il in ipairs({
            "BodyDepthScale",
            "BodyHeightScale",
            "BodyWidthScale",
            "HeadScale"
        }) do
            local lIl1lI11Il = I111lI11Il:FindFirstChild(Il11lI11Il)
            if lIl1lI11Il and lIl1lI11Il:IsA("NumberValue") then
                pcall(function()
                    lIl1lI11Il["Value"] = 1
                end)
            end
        end
    end
    local function lI1llI11Il()
        llIllI11Il()
        local I111lI11Il = time()
        if lllllI11Il["sizeInvokeBusy"] or I111lI11Il - lllllI11Il["lastSizeInvoke"] < II1llI11Il["FastFarm"]["SizeInvokeInterval"] then
            return
        end
        local ll11lI11Il = IIl1lI11Il()
        local Il11lI11Il = ll11lI11Il and ll11lI11Il:FindFirstChild("changeSpeedSizeRemote")
        if Il11lI11Il then
            lllllI11Il["sizeInvokeBusy"] = true
            lllllI11Il["lastSizeInvoke"] = I111lI11Il
            task["spawn"](function()
                pcall(Il11lI11Il["InvokeServer"], Il11lI11Il, "changeSize", 1)
                lllllI11Il["sizeInvokeBusy"] = false
            end)
        end
    end
    lllllI11Il["SetSizeOne"] = lI1llI11Il
    local function l11llI11Il(I111lI11Il)
        lllllI11Il["sizeReleaseGeneration"] = lllllI11Il["sizeReleaseGeneration"] + 1
        local ll11lI11Il = lllllI11Il["sizeReleaseGeneration"]
        task["spawn"](function()
            local Il11lI11Il = time() + (I111lI11Il or II1llI11Il["FastFarm"]["SizeReleaseDuration"])
            while ll1llI11Il["running"] and (lllllI11Il["mode"] == nil and (lllllI11Il["sizeReleaseGeneration"] == ll11lI11Il and time() < Il11lI11Il)) do
                lI1llI11Il()
                task["wait"](0.1)
            end
        end)
    end
    local function I11llI11Il(I111lI11Il)
        for ll11lI11Il, Il11lI11Il in ipairs(II1llI11Il["Machines"]) do
            if Il11lI11Il["object"] == I111lI11Il then
                return Il11lI11Il
            end
        end
        return nil
    end
    local function Il1llI11Il(I111lI11Il)
        local ll11lI11Il = {}
        local Il11lI11Il = {}
        local lIl1lI11Il = {}
        local function IIl1lI11Il(I111lI11Il, IIl1lI11Il)
            if not I111lI11Il or Il11lI11Il[I111lI11Il] then
                return
            end
            Il11lI11Il[I111lI11Il] = true
            if IIl1lI11Il then
                lIl1lI11Il[I111lI11Il["object"]] = true
            end
            ll11lI11Il[#ll11lI11Il + 1] = I111lI11Il
        end
        IIl1lI11Il(I11llI11Il(I111lI11Il), true)
        for I111lI11Il, ll11lI11Il in ipairs(II1llI11Il["Machines"]) do
            if ll11lI11Il["section"] == "Industrial Machines" then
                IIl1lI11Il(ll11lI11Il, true)
            end
        end
        for I111lI11Il, ll11lI11Il in ipairs(II1llI11Il["Machines"]) do
            IIl1lI11Il(ll11lI11Il, true)
        end
        local l1l1lI11Il = workspace:FindFirstChild("machinesFolder")
        if l1l1lI11Il then
            for I111lI11Il, ll11lI11Il in ipairs(l1l1lI11Il:GetChildren()) do
                if ll11lI11Il:IsA("Model") and not lIl1lI11Il[ll11lI11Il["Name"]] then
                    local I111lI11Il = ll11lI11Il["PrimaryPart"]
                    if not (I111lI11Il and I111lI11Il:IsA("Seat")) then
                        I111lI11Il = ll11lI11Il:FindFirstChild("interactSeat", true)
                    end
                    if I111lI11Il and I111lI11Il:IsA("Seat") then
                        IIl1lI11Il({
                            ["section"] = "Detected Machines",
                            ["label"] = ll11lI11Il["Name"],
                            ["object"] = ll11lI11Il["Name"],
                            ["fallback"] = I111lI11Il["CFrame"],
                            ["instance"] = ll11lI11Il
                        }, false)
                    end
                end
            end
        end
        return ll11lI11Il
    end
    local function lIlllI11Il(I111lI11Il, ll11lI11Il, Il11lI11Il)
        local lIl1lI11Il = time()
        for Il11lI11Il, IIl1lI11Il in ipairs(Il1llI11Il(Il11lI11Il)) do
            if lllllI11Il["generation"] ~= I111lI11Il or lllllI11Il["mode"] ~= ll11lI11Il then
                return false
            end
            local l1l1lI11Il = IIl1lI11Il["instance"] or IIl1lI11Il
            local I1l1lI11Il = lllllI11Il["machineFailureCooldowns"][l1l1lI11Il]
            if not I1l1lI11Il or lIl1lI11Il >= I1l1lI11Il then
                local I111lI11Il, Il11lI11Il, lIl1lI11Il, I1l1lI11Il = alternateHandleI111L11Il(IIl1lI11Il, 1)
                local lll1lI11Il = IlIII111Il()
                if I111lI11Il and (Il11lI11Il and (lIl1lI11Il and isI111L11IlLlLiValid(Il11lI11Il, lIl1lI11Il, lll1lI11Il))) then
                    lllllI11Il["machine"] = Il11lI11Il
                    lllllI11Il["machineSeat"] = lIl1lI11Il
                    lllllI11Il["machineDefinition"] = IIl1lI11Il
                    lllllI11Il["lastMachineSelection"] = IIl1lI11Il["label"] or IIl1lI11Il["object"]
                    lllllI11Il["machineFailureCooldowns"][l1l1lI11Il] = nil
                    if ll11lI11Il == "rebirth" then
                        local I111lI11Il = isI111L11IlValid()
                        lllllI11Il["lockCharacter"] = llIII111Il()
                        lllllI11Il["lockCFrame"] = I111lI11Il and I111lI11Il["CFrame"] or nil
                    end
                    return true
                end
                lllllI11Il["machineFailureCooldowns"][l1l1lI11Il] = time() + (I1l1lI11Il == "isKingMachine" and 30 or 6)
            end
        end
        lllllI11Il["machine"] = nil
        lllllI11Il["machineSeat"] = nil
        lllllI11Il["machineDefinition"] = nil
        lllllI11Il["lastMachineSelection"] = nil
        return false
    end
    lllllI11Il["AcquireStrengthMachine"] = function(I111lI11Il)
        return lIlllI11Il(I111lI11Il, "strength", II1llI11Il["FastFarm"]["StrengthMachine"])
    end
    local function IIlllI11Il(I111lI11Il)
        return lIlllI11Il(I111lI11Il, "rebirth", II1llI11Il["FastFarm"]["RebirthMachine"])
    end
    local function l1lllI11Il(I111lI11Il)
        if lllllI11Il["HideFramesToggle"] then
            lllllI11Il["HideFramesToggle"]:Set(I111lI11Il)
        else
            lIII1111Il(I111lI11Il)
        end
    end
    lllllI11Il["SetFarmFrames"] = l1lllI11Il
    local function I1lllI11Il()
        for I111lI11Il, ll11lI11Il in ipairs(lllllI11Il["RepToggles"] or {}) do
            ll11lI11Il:Set(false)
        end
        for I111lI11Il, ll11lI11Il in ipairs(lllllI11Il["MachineToggles"] or {}) do
            ll11lI11Il:Set(false)
        end
        for I111lI11Il, ll11lI11Il in ipairs(lllllI11Il["FullTrainToggles"] or {}) do
            ll11lI11Il:Set(false)
        end
    end
    lllllI11Il.ReadStats = function(I111lI11Il)
        return lIl1lI11Il()
    end
    lllllI11Il.FormatCompact = function(ll11lI11Il, I111lI11Il)
        local Il11lI11Il = tonumber(I111lI11Il) or 0
        local lIl1lI11Il = math["abs"](Il11lI11Il)
        local IIl1lI11Il = {
            {
                1000000000000000000,
                "QI"
            },
            {
                1000000000000000,
                "QA"
            },
            {
                1000000000000,
                "T"
            },
            {
                1000000000,
                "B"
            },
            {
                1000000,
                "M"
            },
            {
                1000,
                "K"
            }
        }
        for I111lI11Il, ll11lI11Il in ipairs(IIl1lI11Il) do
            if lIl1lI11Il >= ll11lI11Il[1] then
                local I111lI11Il = Il11lI11Il / ll11lI11Il[1]
                local lIl1lI11Il = math["abs"](I111lI11Il) >= 100 and 0 or math["abs"](I111lI11Il) >= 10 and 1 or 2
                local IIl1lI11Il = string["format"]("%." .. (lIl1lI11Il .. "f"), I111lI11Il)
                IIl1lI11Il = (IIl1lI11Il:gsub("(%..-)0+$", "%1")):gsub("%.$", "")
                return IIl1lI11Il .. ll11lI11Il[2]
            end
        end
        return I11II111Il(Il11lI11Il)
    end
    lllllI11Il.FormatExactWithUnit = function(ll11lI11Il, I111lI11Il)
        local Il11lI11Il = tonumber(I111lI11Il) or 0
        local lIl1lI11Il = math["abs"](Il11lI11Il)
        local IIl1lI11Il = lIl1lI11Il >= 1000000000000000000 and "QI" or lIl1lI11Il >= 1000000000000000 and "QA" or lIl1lI11Il >= 1000000000000 and "T" or lIl1lI11Il >= 1000000000 and "B" or lIl1lI11Il >= 1000000 and "M" or lIl1lI11Il >= 1000 and "K" or ""
        return I11II111Il(Il11lI11Il) .. IIl1lI11Il
    end
    lllllI11Il.Stop = function(ll11lI11Il, I111lI11Il)
        local Il11lI11Il = ll11lI11Il["mode"] ~= nil
        ll11lI11Il["generation"] = ll11lI11Il["generation"] + 1
        ll11lI11Il["mode"] = nil
        ll1llI11Il["fastFarmMode"] = nil
        ll11lI11Il["lockCFrame"] = nil
        ll11lI11Il["lockCharacter"] = nil
        ll11lI11Il["machine"] = nil
        ll11lI11Il["machineSeat"] = nil
        ll11lI11Il["machineDefinition"] = nil
        ll11lI11Il["lastMachineSelection"] = nil
        ll11lI11Il["startedAt"] = nil
        ll11lI11Il["startStats"] = nil
        if lllllI11Il["UpdateStrengthFramesControl"] then
            lllllI11Il["UpdateStrengthFramesControl"](false)
        end
        for I111lI11Il, ll11lI11Il in ipairs({
            "fastFarmSize",
            "fastFarmLock",
            "fastFarmMachine",
            "fastFarmRebirth",
            "fastFarmStrength",
            "fastFarmVisual"
        }) do
            IIIII111Il(ll11lI11Il)
        end
        if Il11lI11Il then
            l11I1111Il()
        end
        local lIl1lI11Il = IlIII111Il()
        if lIl1lI11Il and lIl1lI11Il["SeatPart"] then
            lIl1lI11Il["Sit"] = false
        end
        if Il11lI11Il then
            l11llI11Il(II1llI11Il["FastFarm"]["SizeReleaseDuration"])
            ll1llI11Il["setAutoEgg"](false, "fastFarm")
        end
        if I111lI11Il and ll11lI11Il["hideFramesOwned"] then
            ll11lI11Il["frameReleaseGeneration"] = ll11lI11Il["frameReleaseGeneration"] + 1
            local I111lI11Il = ll11lI11Il["frameReleaseGeneration"]
            task["delay"](II1llI11Il["FastFarm"]["FramesReleaseDuration"], function()
                if ll1llI11Il["running"] and (ll11lI11Il["mode"] == nil and (ll11lI11Il["frameReleaseGeneration"] == I111lI11Il and ll11lI11Il["hideFramesOwned"])) then
                    l1lllI11Il(false)
                    ll11lI11Il["hideFramesOwned"] = false
                end
            end)
        end
    end
    lllllI11Il.Start = function(IIl1lI11Il, ll11lI11Il)
        if ll11lI11Il ~= "rebirth" and ll11lI11Il ~= "strength" then
            return false
        end
        if IIl1lI11Il["mode"] == ll11lI11Il then
            return true
        end
        IIl1lI11Il:Stop(false)
        IIl1lI11Il["frameReleaseGeneration"] = IIl1lI11Il["frameReleaseGeneration"] + 1
        IIl1lI11Il["sizeReleaseGeneration"] = IIl1lI11Il["sizeReleaseGeneration"] + 1
        I1lllI11Il()
        IIl1lI11Il["mode"] = ll11lI11Il
        ll1llI11Il["fastFarmMode"] = ll11lI11Il
        IIl1lI11Il["generation"] = IIl1lI11Il["generation"] + 1
        local lll1lI11Il = IIl1lI11Il["generation"]
        IIl1lI11Il["startedAt"] = ll11lI11Il == "rebirth" and clock() or nil
        IIl1lI11Il["startStats"] = ll11lI11Il == "rebirth" and lIl1lI11Il() or nil
        IIl1lI11Il["packCount"] = 0
        IIl1lI11Il["cachedPing"] = isCachedPingValid()
        IIl1lI11Il["pingCheckedAt"] = time()
        IIl1lI11Il["pingPaused"] = false
        IIl1lI11Il["resumeSamples"] = 0
        IIl1lI11Il["strengthBatch"] = II1llI11Il["FastFarm"]["StrengthStartBatch"]
        IIl1lI11Il["lastBatchAdjust"] = time()
        IIl1lI11Il["machineFailureCooldowns"] = {}
        if not ll1llI11Il["hideFrames"] then
            IIl1lI11Il["hideFramesOwned"] = true
        end
        l1lllI11Il(true)
        if lllllI11Il["UpdateStrengthFramesControl"] then
            lllllI11Il["UpdateStrengthFramesControl"](ll11lI11Il == "strength")
        end
        ll1llI11Il["setAutoEgg"](ll11lI11Il == "strength", "fastFarm")
        lI1llI11Il()
        getSendMuscleEventI111L11Il("fastFarmSize", function()
            while ll1llI11Il["running"] and (IIl1lI11Il["mode"] == ll11lI11Il and IIl1lI11Il["generation"] == lll1lI11Il) do
                lI1llI11Il()
                task["wait"](0.1)
            end
        end)
        getSendMuscleEventI111L11Il("fastFarmVisual", function()
            local I111lI11Il = 0
            while ll1llI11Il["running"] and (IIl1lI11Il["mode"] == ll11lI11Il and IIl1lI11Il["generation"] == lll1lI11Il) do
                local ll11lI11Il = IIl1lI11Il["machine"]
                local Il11lI11Il = IIl1lI11Il["machineSeat"]
                local lIl1lI11Il = IlIII111Il()
                if ll11lI11Il and (Il11lI11Il and isI111L11IlLlLiValid(ll11lI11Il, Il11lI11Il, lIl1lI11Il)) then
                    lllllI11Il["MachineVisuals"]["playIdle"](ll11lI11Il)
                    local Il11lI11Il = max(ll11lI11Il)
                    if time() - I111lI11Il >= Il11lI11Il then
                        if lllllI11Il["MachineVisuals"]["playRep"](ll11lI11Il) then
                            I111lI11Il = time()
                        end
                    end
                else
                    if lllllI11Il["MachineVisuals"]["activeMachine"] then
                        lllllI11Il["MachineVisuals"]["stopAnimations"](0.1)
                    end
                    I111lI11Il = 0
                end
                task["wait"](0.05)
            end
            lllllI11Il["MachineVisuals"]["stopAnimations"](0.1)
        end)
        if ll11lI11Il == "rebirth" then
            getSendMuscleEventI111L11Il("fastFarmLock", function()
                while ll1llI11Il["running"] and (IIl1lI11Il["mode"] == ll11lI11Il and IIl1lI11Il["generation"] == lll1lI11Il) do
                    local I111lI11Il = isI111L11IlValid()
                    if I111lI11Il and (IIl1lI11Il["lockCFrame"] and IIl1lI11Il["lockCharacter"] == llIII111Il()) then
                        I111lI11Il["CFrame"] = IIl1lI11Il["lockCFrame"]
                        I111lI11Il["AssemblyLinearVelocity"] = Vector3["zero"]
                        I111lI11Il["AssemblyAngularVelocity"] = Vector3["zero"]
                    end
                    Il11lI11Il["Heartbeat"]:Wait()
                end
            end)
            getSendMuscleEventI111L11Il("fastFarmMachine", function()
                while ll1llI11Il["running"] and (IIl1lI11Il["mode"] == ll11lI11Il and IIl1lI11Il["generation"] == lll1lI11Il) do
                    local I111lI11Il = IlIII111Il()
                    local ll11lI11Il = IIl1lI11Il["machine"] and (IIl1lI11Il["machineSeat"] and isI111L11IlLlLiValid(IIl1lI11Il["machine"], IIl1lI11Il["machineSeat"], I111lI11Il))
                    if not IIl1lI11Il["lockCFrame"] or IIl1lI11Il["lockCharacter"] ~= llIII111Il() or not ll11lI11Il then
                        IIl1lI11Il["lockCFrame"] = nil
                        IIl1lI11Il["lockCharacter"] = nil
                        IIl1lI11Il["machine"] = nil
                        IIl1lI11Il["machineSeat"] = nil
                        IIlllI11Il(lll1lI11Il)
                    end
                    task["wait"](0.8)
                end
            end)
            getSendMuscleEventI111L11Il("fastFarmRebirth", function()
                while ll1llI11Il["running"] and (IIl1lI11Il["mode"] == ll11lI11Il and IIl1lI11Il["generation"] == lll1lI11Il) do
                    local Il11lI11Il = time()
                    local lIl1lI11Il, lIIllI11Il = I111lI11Il({
                        "Rebirths",
                        "Rebirth"
                    })
                    local IIIllI11Il, llIllI11Il = I111lI11Il({
                        "Strength",
                        "Fuerza"
                    })
                    local IlIllI11Il = floor(lIl1lI11Il)
                    l1l1lI11Il()
                    IIl1lI11Il["packCount"] = I1l1lI11Il(II1llI11Il["FastFarm"]["StrengthPet"])
                    if IIl1lI11Il["packCount"] >= II1llI11Il["FastFarm"]["MaxPets"] then
                        while ll1llI11Il["running"] and (IIl1lI11Il["mode"] == ll11lI11Il and (IIl1lI11Il["generation"] == lll1lI11Il and (llIllI11Il and tonumber(llIllI11Il["Value"]) < IlIllI11Il))) do
                            local I111lI11Il = Ill1lI11Il("rebirth", IIl1lI11Il["machineSeat"])
                            task["wait"](I111lI11Il)
                        end
                    end
                    if IIl1lI11Il["mode"] == ll11lI11Il and (IIl1lI11Il["generation"] == lll1lI11Il and (llIllI11Il and tonumber(llIllI11Il["Value"]) >= IlIllI11Il)) then
                        l1l1lI11Il()
                        IIl1lI11Il["packCount"] = I1l1lI11Il(II1llI11Il["FastFarm"]["RebirthPet"])
                        if IIl1lI11Il["packCount"] >= II1llI11Il["FastFarm"]["MaxPets"] then
                            local I111lI11Il = lIIllI11Il and tonumber(lIIllI11Il["Value"]) or lIl1lI11Il
                            local Il11lI11Il = time()
                            isValid()
                            while IIl1lI11Il["mode"] == ll11lI11Il and (IIl1lI11Il["generation"] == lll1lI11Il and (not (lIIllI11Il and tonumber(lIIllI11Il["Value"]) > I111lI11Il) and time() - Il11lI11Il < II1llI11Il["FastFarm"]["RebirthRequestWindow"])) do
                                task["wait"](0.025)
                            end
                        end
                    end
                    local lI1llI11Il = II1llI11Il["FastFarm"]["RebirthCycleDelay"] - (time() - Il11lI11Il)
                    task["wait"](math["max"](lI1llI11Il, 0))
                end
            end)
        else
            getSendMuscleEventI111L11Il("fastFarmStrength", function()
                lI1llI11Il()
                task["wait"](0.3)
                l1l1lI11Il()
                IIl1lI11Il["packCount"] = I1l1lI11Il(II1llI11Il["FastFarm"]["StrengthPet"])
                local I111lI11Il = lIl1lI11Il()
                lllllI11Il["AcquireStrengthMachine"](lll1lI11Il)
                lI1llI11Il()
                local Il11lI11Il = 0
                local lIIllI11Il = time()
                local IIIllI11Il = llIII111Il()
                local expectedMembership = I111lI11Il["strength"]
                local number = time()
                while ll1llI11Il["running"] and (IIl1lI11Il["mode"] == ll11lI11Il and IIl1lI11Il["generation"] == lll1lI11Il) do
                    if IIIllI11Il ~= llIII111Il() then
                        IIIllI11Il = llIII111Il()
                        IIl1lI11Il["startedAt"] = nil
                        IIl1lI11Il["startStats"] = nil
                        IIl1lI11Il["machine"] = nil
                        IIl1lI11Il["machineSeat"] = nil
                        IIl1lI11Il["machineDefinition"] = nil
                        lI1llI11Il()
                        task["wait"](0.3)
                        l1l1lI11Il()
                        IIl1lI11Il["packCount"] = I1l1lI11Il(II1llI11Il["FastFarm"]["StrengthPet"])
                        I111lI11Il = lIl1lI11Il()
                        expectedMembership = I111lI11Il["strength"]
                        number = time()
                        lllllI11Il["AcquireStrengthMachine"](lll1lI11Il)
                        lI1llI11Il()
                        lIIllI11Il = time()
                    end
                    local ll11lI11Il = IlIII111Il()
                    local llIllI11Il = IIl1lI11Il["machine"] and (IIl1lI11Il["machineSeat"] and isI111L11IlLlLiValid(IIl1lI11Il["machine"], IIl1lI11Il["machineSeat"], ll11lI11Il))
                    local IlIllI11Il = lIl1lI11Il()
                    if IlIllI11Il["strength"] > expectedMembership then
                        expectedMembership = IlIllI11Il["strength"]
                        number = time()
                    elseif llIllI11Il and time() - number >= 4.5 then
                        local I111lI11Il = IIl1lI11Il["machineDefinition"]
                        if I111lI11Il then
                            IIl1lI11Il["machineFailureCooldowns"][I111lI11Il["instance"] or I111lI11Il] = time() + 10
                        end
                        l11I1111Il()
                        IIl1lI11Il["machine"] = nil
                        IIl1lI11Il["machineSeat"] = nil
                        IIl1lI11Il["machineDefinition"] = nil
                        llIllI11Il = false
                        number = time()
                    end
                    if not llIllI11Il and time() - lIIllI11Il >= 1.2 then
                        if IIl1lI11Il["machine"] or IIl1lI11Il["machineSeat"] then
                            l11I1111Il()
                            IIl1lI11Il["machine"] = nil
                            IIl1lI11Il["machineSeat"] = nil
                            IIl1lI11Il["machineDefinition"] = nil
                        end
                        lI1llI11Il()
                        lllllI11Il["AcquireStrengthMachine"](lll1lI11Il)
                        lI1llI11Il()
                        lIIllI11Il = time()
                    end
                    local l11llI11Il = Ill1lI11Il("strength", IIl1lI11Il["machineSeat"])
                    if not IIl1lI11Il["startedAt"] and time() - Il11lI11Il >= 0.15 then
                        Il11lI11Il = time()
                        if IlIllI11Il["strength"] > I111lI11Il["strength"] then
                            IIl1lI11Il["startedAt"] = clock()
                            IIl1lI11Il["startStats"] = I111lI11Il
                        end
                    end
                    task["wait"](l11llI11Il)
                end
            end)
        end
        return true
    end
end
local ll11LIIlData = setmetatable({}, {
    ["__mode"] = "k"
})
local connection = nil
local lIlI1111Il = function()
    -- empty block
end
local IIlI1111Il = nil
local l1lI1111Il = nil
local function I1lI1111Il(I111lI11Il, ll11lI11Il)
    ll11LIIlData[I111lI11Il] = ll11LIIlData[I111lI11Il] or {}
    if ll11LIIlData[I111lI11Il][ll11lI11Il] == nil then
        local Il11lI11Il, lIl1lI11Il = pcall(function()
            return I111lI11Il[ll11lI11Il]
        end)
        if Il11lI11Il then
            ll11LIIlData[I111lI11Il][ll11lI11Il] = lIl1lI11Il
        end
    end
end
local function lllI1111Il(I111lI11Il, ll11lI11Il, Il11lI11Il)
    I1lI1111Il(I111lI11Il, ll11lI11Il)
    pcall(function()
        I111lI11Il[ll11lI11Il] = Il11lI11Il
    end)
end
local function IllI1111Il(I111lI11Il)
    if I111lI11Il:IsA("BasePart") then
        lllI1111Il(I111lI11Il, "Material", Enum["Material"]["SmoothPlastic"])
        lllI1111Il(I111lI11Il, "Reflectance", 0)
        lllI1111Il(I111lI11Il, "CastShadow", false)
        if I111lI11Il:IsA("MeshPart") then
            lllI1111Il(I111lI11Il, "TextureID", "")
        end
    elseif I111lI11Il:IsA("Decal") or I111lI11Il:IsA("Texture") then
        lllI1111Il(I111lI11Il, "Transparency", 1)
    elseif I111lI11Il:IsA("ParticleEmitter") or I111lI11Il:IsA("Trail") or I111lI11Il:IsA("Beam") or I111lI11Il:IsA("Smoke") or I111lI11Il:IsA("Fire") or I111lI11Il:IsA("Sparkles") then
        lllI1111Il(I111lI11Il, "Enabled", false)
    elseif I111lI11Il:IsA("PointLight") or I111lI11Il:IsA("SpotLight") or I111lI11Il:IsA("SurfaceLight") then
        lllI1111Il(I111lI11Il, "Enabled", false)
    elseif I111lI11Il:IsA("BloomEffect") or I111lI11Il:IsA("BlurEffect") or I111lI11Il:IsA("ColorCorrectionEffect") or I111lI11Il:IsA("DepthOfFieldEffect") or I111lI11Il:IsA("SunRaysEffect") then
        lllI1111Il(I111lI11Il, "Enabled", false)
    elseif I111lI11Il:IsA("Explosion") then
        lllI1111Il(I111lI11Il, "BlastPressure", 0)
        lllI1111Il(I111lI11Il, "BlastRadius", 0)
    end
end
local function lII11111Il(I111lI11Il, ll11lI11Il)
    local lIl1lI11Il = 0
    for IIl1lI11Il, l1l1lI11Il in pairs(ll11LIIlData) do
        if ll1llI11Il["antiLagGeneration"] ~= I111lI11Il then
            return false
        end
        if IIl1lI11Il and IIl1lI11Il["Parent"] then
            for I111lI11Il, ll11lI11Il in pairs(l1l1lI11Il) do
                pcall(function()
                    IIl1lI11Il[I111lI11Il] = ll11lI11Il
                end)
            end
        end
        lIl1lI11Il = lIl1lI11Il + 1
        if ll11lI11Il and lIl1lI11Il % 260 == 0 then
            Il11lI11Il["Heartbeat"]:Wait()
        end
    end
    ll11LIIlData = setmetatable({}, {
        ["__mode"] = "k"
    })
    if IIlI1111Il then
        lll1lI11Il["GlobalShadows"] = IIlI1111Il["GlobalShadows"]
        lll1lI11Il["FogEnd"] = IIlI1111Il["FogEnd"]
        lll1lI11Il["Brightness"] = IIlI1111Il["Brightness"]
    end
    pcall(function()
        if l1lI1111Il then
            (settings())["Rendering"]["QualityLevel"] = l1lI1111Il
        end
    end)
    lIlI1111Il("Desactivado")
    return true
end
local function III11111Il(I111lI11Il, ll11lI11Il)
    ll1llI11Il["antiLag"] = I111lI11Il == true
    ll1llI11Il["antiLagGeneration"] = ll1llI11Il["antiLagGeneration"] + 1
    local lIl1lI11Il = ll1llI11Il["antiLagGeneration"]
    IIIII111Il("antiLag")
    if connection then
        connection:Disconnect()
        connection = nil
    end
    if ll1llI11Il["antiLag"] then
        lIlI1111Il("Optimizando...")
        IIlI1111Il = IIlI1111Il or {
            ["GlobalShadows"] = lll1lI11Il["GlobalShadows"],
            ["FogEnd"] = lll1lI11Il["FogEnd"],
            ["Brightness"] = lll1lI11Il["Brightness"]
        }
        lll1lI11Il["GlobalShadows"] = false
        lll1lI11Il["FogEnd"] = 1000000000
        lll1lI11Il["Brightness"] = 0
        pcall(function()
            l1lI1111Il = l1lI1111Il or (settings())["Rendering"]["QualityLevel"]
            ;(settings())["Rendering"]["QualityLevel"] = Enum["QualityLevel"]["Level01"]
        end)
        local I111lI11Il = workspace:FindFirstChildOfClass("Terrain")
        if I111lI11Il then
            lllI1111Il(I111lI11Il, "WaterWaveSize", 0)
            lllI1111Il(I111lI11Il, "WaterWaveSpeed", 0)
            lllI1111Il(I111lI11Il, "WaterReflectance", 0)
            lllI1111Il(I111lI11Il, "WaterTransparency", 1)
        end
        connection = workspace["DescendantAdded"]:Connect(function(I111lI11Il)
            if ll1llI11Il["antiLag"] then
                task["defer"](function()
                    pcall(IllI1111Il, I111lI11Il)
                end)
            end
        end)
        getSendMuscleEventI111L11Il("antiLag", function()
            local I111lI11Il = {
                workspace,
                lll1lI11Il
            }
            local ll11lI11Il = 1
            local IIl1lI11Il = 0
            while ll11lI11Il <= #I111lI11Il and (ll1llI11Il["running"] and (ll1llI11Il["antiLag"] and ll1llI11Il["antiLagGeneration"] == lIl1lI11Il)) do
                local lIl1lI11Il = I111lI11Il[ll11lI11Il]
                ll11lI11Il = ll11lI11Il + 1
                local l1l1lI11Il, I1l1lI11Il = pcall(function()
                    return lIl1lI11Il:GetChildren()
                end)
                if l1l1lI11Il then
                    for ll11lI11Il, lIl1lI11Il in ipairs(I1l1lI11Il) do
                        I111lI11Il[#I111lI11Il + 1] = lIl1lI11Il
                        pcall(IllI1111Il, lIl1lI11Il)
                        IIl1lI11Il = IIl1lI11Il + 1
                        if IIl1lI11Il % 260 == 0 then
                            Il11lI11Il["Heartbeat"]:Wait()
                        end
                    end
                end
            end
            if ll1llI11Il["antiLag"] and ll1llI11Il["antiLagGeneration"] == lIl1lI11Il then
                lIlI1111Il("100% Optimizado")
            end
        end)
    else
        lIlI1111Il("Restaurando...")
        if ll11lI11Il then
            lII11111Il(lIl1lI11Il, true)
        else
            getSendMuscleEventI111L11Il("antiLag", function()
                lII11111Il(lIl1lI11Il, true)
            end)
        end
    end
end
local il11LIData = {
    ["original"] = setmetatable({}, {
        ["__mode"] = "k"
    }),
    ["addedConnection"] = nil,
    ["heartbeatConnection"] = nil,
    ["recentEffects"] = {},
    ["shieldUntil"] = 0,
    ["stalls"] = 0,
    ["lastPruneAt"] = 0
}
il11LIData.effectProperty = function(I111lI11Il)
    if I111lI11Il:IsA("ParticleEmitter") or I111lI11Il:IsA("Trail") or I111lI11Il:IsA("Beam") or I111lI11Il:IsA("Smoke") or I111lI11Il:IsA("Fire") or I111lI11Il:IsA("Sparkles") then
        return "Enabled"
    end
    if I111lI11Il:IsA("Explosion") then
        return "Visible"
    end
    return nil
end
il11LIData.suppressEffect = function(I111lI11Il)
    local ll11lI11Il = il11LIData["effectProperty"](I111lI11Il)
    if not ll11lI11Il or il11LIData["original"][I111lI11Il] then
        return
    end
    local Il11lI11Il, lIl1lI11Il = pcall(function()
        return I111lI11Il[ll11lI11Il]
    end)
    if not Il11lI11Il then
        return
    end
    il11LIData["original"][I111lI11Il] = {
        ["property"] = ll11lI11Il,
        ["value"] = lIl1lI11Il
    }
    pcall(function()
        I111lI11Il[ll11lI11Il] = false
    end)
end
il11LIData.pruneRecentEffects = function(I111lI11Il)
    local ll11lI11Il = il11LIData["recentEffects"]
    local Il11lI11Il = 1
    for lIl1lI11Il = 1, #ll11lI11Il, 1 do
        local IIl1lI11Il = ll11lI11Il[lIl1lI11Il]
        if IIl1lI11Il and I111lI11Il - IIl1lI11Il["time"] <= 0.75 then
            ll11lI11Il[Il11lI11Il] = IIl1lI11Il
            Il11lI11Il = Il11lI11Il + 1
        end
    end
    for I111lI11Il = #ll11lI11Il, Il11lI11Il, -1 do
        ll11lI11Il[I111lI11Il] = nil
    end
end
il11LIData.trackEffect = function(I111lI11Il, ll11lI11Il)
    local Il11lI11Il = il11LIData["recentEffects"]
    Il11lI11Il[#Il11lI11Il + 1] = {
        ["object"] = I111lI11Il,
        ["time"] = ll11lI11Il
    }
    il11LIData["pruneRecentEffects"](ll11lI11Il)
    if #Il11lI11Il > 96 then
        local I111lI11Il = #Il11lI11Il - 95
        local ll11lI11Il = 1
        for I111lI11Il = I111lI11Il, #Il11lI11Il, 1 do
            Il11lI11Il[ll11lI11Il] = Il11lI11Il[I111lI11Il]
            ll11lI11Il = ll11lI11Il + 1
        end
        for I111lI11Il = #Il11lI11Il, ll11lI11Il, -1 do
            Il11lI11Il[I111lI11Il] = nil
        end
    end
    return #Il11lI11Il
end
il11LIData.suppressRecentEffects = function()
    for I111lI11Il, ll11lI11Il in ipairs(il11LIData["recentEffects"]) do
        local Il11lI11Il = ll11lI11Il["object"]
        if Il11lI11Il and Il11lI11Il["Parent"] then
            task["defer"](il11LIData["suppressEffect"], Il11lI11Il)
        end
    end
end
il11LIData.restore = function()
    if il11LIData["addedConnection"] then
        il11LIData["addedConnection"]:Disconnect()
        il11LIData["addedConnection"] = nil
    end
    if il11LIData["heartbeatConnection"] then
        il11LIData["heartbeatConnection"]:Disconnect()
        il11LIData["heartbeatConnection"] = nil
    end
    for I111lI11Il, ll11lI11Il in pairs(il11LIData["original"]) do
        if I111lI11Il and I111lI11Il["Parent"] then
            pcall(function()
                I111lI11Il[ll11lI11Il["property"]] = ll11lI11Il["value"]
            end)
        end
    end
    il11LIData["original"] = setmetatable({}, {
        ["__mode"] = "k"
    })
    table["clear"](il11LIData["recentEffects"])
    il11LIData["shieldUntil"] = 0
    il11LIData["stalls"] = 0
    il11LIData["lastPruneAt"] = 0
end
il11LIData.set = function(I111lI11Il)
    ll1llI11Il["antiCrash"] = I111lI11Il == true
    il11LIData["restore"]()
    if not ll1llI11Il["antiCrash"] then
        return
    end
    il11LIData["addedConnection"] = workspace["DescendantAdded"]:Connect(function(I111lI11Il)
        if not ll1llI11Il["antiCrash"] or not il11LIData["effectProperty"](I111lI11Il) then
            return
        end
        local ll11lI11Il = clock()
        if ll11lI11Il <= il11LIData["shieldUntil"] then
            task["defer"](il11LIData["suppressEffect"], I111lI11Il)
            return
        end
        local Il11lI11Il = il11LIData["trackEffect"](I111lI11Il, ll11lI11Il)
        if Il11lI11Il >= 36 then
            il11LIData["shieldUntil"] = math["max"](il11LIData["shieldUntil"], ll11lI11Il + 4)
            il11LIData["suppressRecentEffects"]()
        end
        if ll11lI11Il <= il11LIData["shieldUntil"] then
            task["defer"](il11LIData["suppressEffect"], I111lI11Il)
        end
    end)
    il11LIData["heartbeatConnection"] = Il11lI11Il["Heartbeat"]:Connect(function(I111lI11Il)
        if not ll1llI11Il["antiCrash"] then
            return
        end
        local ll11lI11Il = clock()
        if ll11lI11Il - il11LIData["lastPruneAt"] >= 0.25 then
            il11LIData["lastPruneAt"] = ll11lI11Il
            il11LIData["pruneRecentEffects"](ll11lI11Il)
        end
        if I111lI11Il >= 0.35 then
            il11LIData["stalls"] = math["min"](il11LIData["stalls"] + 1, 4)
        elseif il11LIData["stalls"] > 0 then
            il11LIData["stalls"] = il11LIData["stalls"] - 1
        end
        if il11LIData["stalls"] >= 3 then
            il11LIData["shieldUntil"] = math["max"](il11LIData["shieldUntil"], ll11lI11Il + 4)
            il11LIData["suppressRecentEffects"]()
            il11LIData["stalls"] = 0
        end
    end)
end
local function setWalkWater(I111lI11Il)
    ll1llI11Il["walkWater"] = I111lI11Il == true
    if ll1llI11Il["waterFloorConnection"] then
        ll1llI11Il["waterFloorConnection"]:Disconnect()
        ll1llI11Il["waterFloorConnection"] = nil
    end
    if ll1llI11Il["waterFloor"] then
        ll1llI11Il["waterFloor"]:Destroy()
        ll1llI11Il["waterFloor"] = nil
    end
    if not ll1llI11Il["walkWater"] then
        return true
    end
    ll1llI11Il["waterFloor"] = Instance["new"]("Part")
    ll1llI11Il["waterFloor"]["Name"] = "Young0xWaterFloor"
    ll1llI11Il["waterFloor"]["Size"] = Vector3["new"](2048, 1, 2048)
    ll1llI11Il["waterFloor"]["Anchored"] = true
    ll1llI11Il["waterFloor"]["CanCollide"] = true
    ll1llI11Il["waterFloor"]["CanTouch"] = false
    ll1llI11Il["waterFloor"]["CanQuery"] = false
    ll1llI11Il["waterFloor"]["Transparency"] = 1
    ll1llI11Il["waterFloor"]["CastShadow"] = false
    ll1llI11Il["waterFloor"]["Parent"] = workspace
    local function ll11lI11Il()
        if not ll1llI11Il["walkWater"] or not ll1llI11Il["waterFloor"] or not ll1llI11Il["waterFloor"]["Parent"] then
            return
        end
        local I111lI11Il = isI111L11IlValid()
        if I111lI11Il then
            local ll11lI11Il = math["floor"](I111lI11Il["Position"]["X"] / 256 + 0.5) * 256
            local Il11lI11Il = math["floor"](I111lI11Il["Position"]["Z"] / 256 + 0.5) * 256
            ll1llI11Il["waterFloor"]["Position"] = Vector3["new"](ll11lI11Il, -9.5, Il11lI11Il)
        end
    end
    ll11lI11Il()
    ll1llI11Il["waterFloorConnection"] = Il11lI11Il["Heartbeat"]:Connect(ll11lI11Il)
    return true
end
local function llI11111Il(I111lI11Il, ...)
    if not I111lI11Il then
        return false, nil
    end
    local ll11lI11Il, Il11lI11Il
    if I111lI11Il:IsA("RemoteFunction") then
        ll11lI11Il, Il11lI11Il = pcall(I111lI11Il["InvokeServer"], I111lI11Il, ...)
    elseif I111lI11Il:IsA("RemoteEvent") then
        ll11lI11Il, Il11lI11Il = pcall(I111lI11Il["FireServer"], I111lI11Il, ...)
    else
        return false, nil
    end
    if not ll11lI11Il or Il11lI11Il == false then
        return false, Il11lI11Il
    end
    return true, Il11lI11Il
end
ll1llI11Il["fortuneSpinAmount"] = function()
    local I111lI11Il = parent:FindFirstChild("fortuneWheelMenuGui")
    local ll11lI11Il = I111lI11Il and I111lI11Il:FindFirstChild("spinAmountLabel", true)
    if not ll11lI11Il or not ll11lI11Il:IsA("TextLabel") then
        return nil
    end
    local Il11lI11Il = (tostring(ll11lI11Il["Text"] or "")):match("(%d+)")
    return tonumber(Il11lI11Il)
end
ll1llI11Il["syncAvailabilityToggle"] = function(I111lI11Il, ll11lI11Il)
    if I111lI11Il and I111lI11Il:Get() ~= ll11lI11Il then
        I111lI11Il:Set(ll11lI11Il, true)
    end
end
local function IlI11111Il(I111lI11Il)
    I111lI11Il = I111lI11Il == true
    if I111lI11Il and (ll1llI11Il["fortuneSpinAmount"]() or 0) <= 0 then
        ll1llI11Il["autoSpinWheel"] = false
        return false
    end
    ll1llI11Il["autoSpinWheel"] = I111lI11Il
    if not ll1llI11Il["autoSpinWheel"] then
        IIIII111Il("fortuneWheel")
        return true
    end
    getSendMuscleEventI111L11Il("fortuneWheel", function()
        local I111lI11Il = 0
        while ll1llI11Il["running"] and ll1llI11Il["autoSpinWheel"] do
            if (ll1llI11Il["fortuneSpinAmount"]() or 0) <= 0 then
                break
            end
            local Il11lI11Il = ll11lI11Il:FindFirstChild("rEvents")
            local lIl1lI11Il = Il11lI11Il and Il11lI11Il:FindFirstChild("openFortuneWheelRemote")
            local IIl1lI11Il = ll11lI11Il:FindFirstChild("shared")
            local l1l1lI11Il = IIl1lI11Il and IIl1lI11Il:FindFirstChild("catalogs")
            local I1l1lI11Il = l1l1lI11Il and l1l1lI11Il:FindFirstChild("fortuneWheelChances")
            local lll1lI11Il = I1l1lI11Il and I1l1lI11Il:FindFirstChild("Fortune Wheel")
            local Ill1lI11Il = false
            if lIl1lI11Il and lll1lI11Il then
                Ill1lI11Il = llI11111Il(lIl1lI11Il, "openFortuneWheel", lll1lI11Il)
            end
            if Ill1lI11Il then
                I111lI11Il = 0
                task["wait"](0.1)
            else
                I111lI11Il = I111lI11Il + 1
                task["wait"](math["min"](0.16 + I111lI11Il * 0.08, 0.72))
            end
        end
        ll1llI11Il["autoSpinWheel"] = false
        ll1llI11Il["syncAvailabilityToggle"](ll1llI11Il["autoSpinToggle"], false)
        if type(ll1llI11Il["refreshMiscAvailability"]) == "function" then
            ll1llI11Il["refreshMiscAvailability"]()
        end
    end)
    return true
end
local lI111111Il = {
    {
        ["name"] = "Industrial Chest",
        ["objectName"] = "industrialChest",
        ["timeName"] = "industrialChestTime"
    },
    {
        ["name"] = "Golden Chest",
        ["objectName"] = "goldenChest",
        ["timeName"] = "goldenChestTime"
    },
    {
        ["name"] = "Enchanted Chest",
        ["objectName"] = "enchantedChest",
        ["timeName"] = "enchantedChestTime"
    },
    {
        ["name"] = "Magma Chest",
        ["objectName"] = "magmaChest",
        ["timeName"] = "magmaChestTime"
    },
    {
        ["name"] = "Mythical Chest",
        ["objectName"] = "mythicalChest",
        ["timeName"] = "mythicalChestTime"
    },
    {
        ["name"] = "Legends Chest",
        ["objectName"] = "legendsChest",
        ["timeName"] = "legendsChestTime"
    },
    {
        ["name"] = "Jungle Chest",
        ["objectName"] = "jungleChest",
        ["timeName"] = "jungleChestTime"
    }
}
ll1llI11Il["chestClaimBusy"] = false
ll1llI11Il["chestRejectedUntil"] = {}
local function II111111Il(I111lI11Il)
    pcall(function()
        (game:GetService("StarterGui")):SetCore("SendNotification", {
            ["Title"] = "Young0x Hub - Cofres",
            ["Text"] = tostring(I111lI11Il or ""),
            ["Duration"] = 4
        })
    end)
end
local l1111111Il = nil
local I1111111Il = llIllI11Il and llIllI11Il:FindFirstChild("catalogs")
I1111111Il = I1111111Il and I1111111Il:FindFirstChild("neededTimers")
getSendMuscleEventI111L11Il("chestDataLoader", function()
    local I111lI11Il, Il11lI11Il = pcall(function()
        local I111lI11Il = ll11lI11Il:FindFirstChild("packages")
        local Il11lI11Il = I111lI11Il and I111lI11Il:FindFirstChild("ReplicatorClient")
        if not Il11lI11Il then
            return nil
        end
        local lIl1lI11Il = require(Il11lI11Il)
        return lIl1lI11Il["get"]("Data")
    end)
    if I111lI11Il then
        l1111111Il = Il11lI11Il
    end
end)
ll1llI11Il["chestIsReady"] = function(I111lI11Il)
    local ll11lI11Il = ll1llI11Il["chestRejectedUntil"][I111lI11Il["name"]]
    if typeof(ll11lI11Il) == "number" and os["clock"]() < ll11lI11Il then
        return false
    end
    local Il11lI11Il = workspace:FindFirstChild(I111lI11Il["objectName"], true)
    local lIl1lI11Il = Il11lI11Il and Il11lI11Il:FindFirstChild("circleInner", true)
    local IIl1lI11Il = I1111111Il and I1111111Il:FindFirstChild(I111lI11Il["name"])
    if not lIl1lI11Il or not lIl1lI11Il:IsA("BasePart") or not IIl1lI11Il or not IIl1lI11Il:IsA("IntValue") or not l1111111Il then
        return false
    end
    local l1l1lI11Il, I1l1lI11Il = pcall(function()
        return l1111111Il:TryIndex({
            I111lI11Il["timeName"]
        })
    end)
    if not l1l1lI11Il or typeof(I1l1lI11Il) ~= "number" then
        return false
    end
    local lll1lI11Il = workspace:GetServerTimeNow()
    return lll1lI11Il - I1l1lI11Il >= IIl1lI11Il["Value"]
end
ll1llI11Il["chestClaimTime"] = function(I111lI11Il)
    if not l1111111Il then
        return nil
    end
    local ll11lI11Il, Il11lI11Il = pcall(function()
        return l1111111Il:TryIndex({
            I111lI11Il["timeName"]
        })
    end)
    return ll11lI11Il and (typeof(Il11lI11Il) == "number" and Il11lI11Il) or nil
end
ll1llI11Il["readyChestDefinitions"] = function()
    local I111lI11Il = {}
    for ll11lI11Il, Il11lI11Il in ipairs(lI111111Il) do
        if ll1llI11Il["chestIsReady"](Il11lI11Il) then
            I111lI11Il[#I111lI11Il + 1] = Il11lI11Il
        end
    end
    return I111lI11Il
end
ll1llI11Il["activeChestRestore"] = nil
ll1llI11Il["restoreChestTravel"] = function()
    local I111lI11Il = ll1llI11Il["activeChestRestore"]
    ll1llI11Il["activeChestRestore"] = nil
    if I111lI11Il then
        pcall(I111lI11Il)
    end
end
local function ll111111Il(I111lI11Il)
    if ll1llI11Il["chestClaimBusy"] or not ll1llI11Il["running"] or not ll1llI11Il["autoClaimChests"] then
        return false, {}
    end
    local ll11lI11Il = llIII111Il()
    local Il11lI11Il = isI111L11IlValid()
    local lIl1lI11Il = ll11lI11Il and ll11lI11Il:FindFirstChildOfClass("Humanoid")
    if not ll11lI11Il or not Il11lI11Il or not lIl1lI11Il then
        return false, {}
    end
    local IIl1lI11Il = lllllI11Il["mode"]
    local l1l1lI11Il = false
    local function I1l1lI11Il()
        if l1l1lI11Il then
            return
        end
        l1l1lI11Il = true
        if IIl1lI11Il == "strength" or IIl1lI11Il == "rebirth" then
            task["defer"](function()
                if ll1llI11Il["running"] and lllllI11Il["mode"] == nil then
                    lllllI11Il:Start(IIl1lI11Il)
                end
            end)
        end
    end
    if IIl1lI11Il == "strength" or IIl1lI11Il == "rebirth" then
        lllllI11Il:Stop(false)
        task["wait"](0.25)
        ll11lI11Il = llIII111Il()
        Il11lI11Il = isI111L11IlValid()
        lIl1lI11Il = ll11lI11Il and ll11lI11Il:FindFirstChildOfClass("Humanoid")
        if not ll11lI11Il or not Il11lI11Il or not lIl1lI11Il then
            I1l1lI11Il()
            return false, {}
        end
    end
    ll1llI11Il["chestClaimBusy"] = true
    local lll1lI11Il = ll11lI11Il:GetPivot()
    local Ill1lI11Il = Il11lI11Il["CFrame"]
    local lIIllI11Il = Il11lI11Il["Anchored"]
    local cFrameCondition = workspace["CurrentCamera"]
    local cameraType = cFrameCondition and cFrameCondition["CameraType"]
    local llIllI11Il = cFrameCondition and cFrameCondition["CameraSubject"]
    local IlIllI11Il = cFrameCondition and cFrameCondition["CFrame"]
    local lI1llI11Il = {}
    local II1llI11Il = nil
    local l11llI11Il = false
    local I11llI11Il = nil
    local Il1llI11Il = 0
    local function lIlllI11Il()
        if IIIllI11Il["Character"] ~= ll11lI11Il or not ll11lI11Il["Parent"] then
            return false
        end
        local I111lI11Il = ll11lI11Il:FindFirstChild("HumanoidRootPart")
        if not I111lI11Il then
            return false
        end
        I111lI11Il["Anchored"] = true
        ll11lI11Il:PivotTo(lll1lI11Il)
        I111lI11Il["CFrame"] = Ill1lI11Il
        I111lI11Il["AssemblyLinearVelocity"] = Vector3["zero"]
        I111lI11Il["AssemblyAngularVelocity"] = Vector3["zero"]
        I111lI11Il["Anchored"] = lIIllI11Il
        return true
    end
    local function IIlllI11Il()
        if I11llI11Il then
            pcall(I11llI11Il["Destroy"], I11llI11Il)
            I11llI11Il = nil
        end
    end
    local function l1lllI11Il()
        if l11llI11Il then
            return
        end
        l11llI11Il = true
        IIlllI11Il()
        lIlllI11Il()
        if cFrameCondition then
            cFrameCondition["CFrame"] = IlIllI11Il
            cFrameCondition["CameraSubject"] = llIllI11Il
            cFrameCondition["CameraType"] = cameraType
        end
        I1l1lI11Il()
    end
    ll1llI11Il["activeChestRestore"] = l1lllI11Il
    local function I1lllI11Il()
        while ll1llI11Il["running"] and ll1llI11Il["autoClaimChests"] do
            local I111lI11Il = IIIllI11Il:GetAttribute("ChestRequestCooldownUntil")
            local ll11lI11Il = typeof(I111lI11Il) == "number" and I111lI11Il - workspace:GetServerTimeNow() or 0
            if ll11lI11Il <= 0 then
                return true
            end
            task["wait"](math["clamp"](ll11lI11Il + 0.04, 0.05, 0.25))
        end
        return false
    end
    local IllllI11Il, lIIII111Il = xpcall(function()
        if cFrameCondition then
            cFrameCondition["CameraType"] = Enum["CameraType"]["Scriptable"]
            cFrameCondition["CFrame"] = IlIllI11Il
        end
        for I111lI11Il, IIl1lI11Il in ipairs(I111lI11Il) do
            if not ll1llI11Il["running"] or not ll1llI11Il["autoClaimChests"] then
                break
            end
            if not I1lllI11Il() then
                break
            end
            local l1l1lI11Il = workspace:FindFirstChild(IIl1lI11Il["objectName"], true)
            local I1l1lI11Il = l1l1lI11Il and l1l1lI11Il:FindFirstChild("circleInner", true)
            II1llI11Il = IIl1lI11Il
            if ll1llI11Il["chestIsReady"](IIl1lI11Il) and (I1l1lI11Il and I1l1lI11Il:IsA("BasePart")) then
                local I111lI11Il = ll1llI11Il["chestClaimTime"](IIl1lI11Il)
                local Ill1lI11Il = Il11lI11Il["Size"]["Y"] * 0.5 + lIl1lI11Il["HipHeight"]
                local lIIllI11Il = RaycastParams["new"]()
                lIIllI11Il["FilterType"] = Enum["RaycastFilterType"]["Exclude"]
                lIIllI11Il["FilterDescendantsInstances"] = {
                    ll11lI11Il,
                    l1l1lI11Il
                }
                local data = workspace:Raycast(I1l1lI11Il["Position"] + Vector3["new"](0, 12, 0), Vector3["new"](0, -220, 0), lIIllI11Il)
                local cFrameNumber = data and data["Position"]["Y"] or I1l1lI11Il["Position"]["Y"]
                local llIllI11Il = Vector3["new"](I1l1lI11Il["Position"]["X"], (cFrameNumber + Ill1lI11Il) + 0.08, I1l1lI11Il["Position"]["Z"])
                I11llI11Il = Instance["new"]("Part")
                I11llI11Il["Name"] = "Young0xChestSafety"
                I11llI11Il["Size"] = Vector3["new"](14, 1, 14)
                I11llI11Il["CFrame"] = CFrame["new"](llIllI11Il["X"], cFrameNumber - 0.5, llIllI11Il["Z"])
                I11llI11Il["Transparency"] = 1
                I11llI11Il["Anchored"] = true
                I11llI11Il["CanCollide"] = true
                I11llI11Il["CanQuery"] = false
                I11llI11Il["CanTouch"] = false
                I11llI11Il["Parent"] = workspace
                Il11lI11Il["Anchored"] = false
                ll11lI11Il:PivotTo(CFrame["new"](llIllI11Il) * lll1lI11Il["Rotation"])
                Il11lI11Il["AssemblyLinearVelocity"] = Vector3["zero"]
                Il11lI11Il["AssemblyAngularVelocity"] = Vector3["zero"]
                local IlIllI11Il = os["clock"]() + 5
                local II1llI11Il = false
                repeat
                    task["wait"](0.1)
                    if IIIllI11Il["Character"] ~= ll11lI11Il or not ll11lI11Il["Parent"] then
                        error("Character changed during chest claim")
                    end
                    local Il11lI11Il = ll11lI11Il:FindFirstChild("HumanoidRootPart")
                    if not Il11lI11Il then
                        error("HumanoidRootPart disappeared during chest claim")
                    end
                    if (Il11lI11Il["Position"] - llIllI11Il)["Magnitude"] > 3 then
                        ll11lI11Il:PivotTo(CFrame["new"](llIllI11Il) * lll1lI11Il["Rotation"])
                        Il11lI11Il["AssemblyLinearVelocity"] = Vector3["zero"]
                        Il11lI11Il["AssemblyAngularVelocity"] = Vector3["zero"]
                    end
                    local lIl1lI11Il = ll1llI11Il["chestClaimTime"](IIl1lI11Il)
                    II1llI11Il = typeof(lIl1lI11Il) == "number" and (typeof(I111lI11Il) == "number" and lIl1lI11Il > I111lI11Il)
                until II1llI11Il or os["clock"]() >= IlIllI11Il or not ll1llI11Il["autoClaimChests"]
                lI1llI11Il[IIl1lI11Il["name"]] = II1llI11Il
                if II1llI11Il then
                    ll1llI11Il["chestRejectedUntil"][IIl1lI11Il["name"]] = nil
                    Il1llI11Il = Il1llI11Il + 1
                else
                    ll1llI11Il["chestRejectedUntil"][IIl1lI11Il["name"]] = os["clock"]() + 2
                end
            else
                lI1llI11Il[IIl1lI11Il["name"]] = false
            end
            IIlllI11Il()
            task["wait"](0.12)
        end
    end, debug["traceback"])
    ll1llI11Il["restoreChestTravel"]()
    ll1llI11Il["chestLastClaim"] = II1llI11Il and II1llI11Il["name"] or nil
    ll1llI11Il["chestLastClaimAccepted"] = II1llI11Il and lI1llI11Il[II1llI11Il["name"]] == true or false
    if IllllI11Il then
        ll1llI11Il["chestLastError"] = nil
    else
        ll1llI11Il["chestLastError"] = tostring(lIIII111Il)
    end
    ll1llI11Il["chestLastRestoreDistance"] = ll11lI11Il["Parent"] and ((ll11lI11Il:GetPivot())["Position"] - lll1lI11Il["Position"])["Magnitude"] or -1
    ll1llI11Il["chestLastBatchClaims"] = Il1llI11Il
    ll1llI11Il["chestClaimBusy"] = false
    return IllllI11Il, lI1llI11Il
end
local function Il111111Il(I111lI11Il)
    I111lI11Il = I111lI11Il == true
    if not I111lI11Il then
        ll1llI11Il["autoClaimChests"] = false
        ll1llI11Il["restoreChestTravel"]()
        IIIII111Il("autoClaimChests")
        ll1llI11Il["chestClaimBusy"] = false
        return true
    end
    if ll1llI11Il["chestClaimBusy"] then
        return ll1llI11Il["autoClaimChests"]
    end
    local Il11lI11Il = ll1llI11Il["readyChestDefinitions"]()
    if #Il11lI11Il == 0 then
        ll1llI11Il["autoClaimChests"] = false
        II111111Il("No hay cofres disponibles.")
        return false
    end
    local lIl1lI11Il = ll11lI11Il:FindFirstChild("rEvents")
    local IIl1lI11Il = lIl1lI11Il and lIl1lI11Il:FindFirstChild("checkChestRemote")
    if not IIl1lI11Il or not IIl1lI11Il:IsA("RemoteFunction") then
        ll1llI11Il["autoClaimChests"] = false
        return false
    end
    ll1llI11Il["autoClaimChests"] = true
    II111111Il("Reclamando " .. (tostring(#Il11lI11Il) .. " cofres disponibles..."))
    getSendMuscleEventI111L11Il("autoClaimChests", function()
        ll111111Il(Il11lI11Il)
        ll1llI11Il["autoClaimChests"] = false
        ll1llI11Il["chestClaimBusy"] = false
        ll1llI11Il["syncAvailabilityToggle"](ll1llI11Il["autoClaimToggle"], false)
        if ll1llI11Il["chestLastError"] then
            II111111Il("No se pudieron reclamar los cofres.")
        else
            II111111Il("Cofres reclamados: " .. (tostring(ll1llI11Il["chestLastBatchClaims"] or 0) .. ("/" .. (tostring(#Il11lI11Il) .. "."))))
        end
        if type(ll1llI11Il["refreshMiscAvailability"]) == "function" then
            ll1llI11Il["refreshMiscAvailability"]()
        end
    end)
    return true
end
local lIl11111Il = nil
local IIl11111Il = {}
local function l1l11111Il(I111lI11Il)
    if I111lI11Il and (I111lI11Il["Name"] == "RobloxForwardPortals" and I111lI11Il["Parent"]) then
        IIl11111Il[#IIl11111Il + 1] = {
            ["object"] = I111lI11Il,
            ["parent"] = I111lI11Il["Parent"]
        }
        I111lI11Il["Parent"] = nil
    end
end
local function I1l11111Il(I111lI11Il)
    ll1llI11Il["removePortals"] = I111lI11Il == true
    IIIII111Il("removePortals")
    if lIl11111Il then
        lIl11111Il:Disconnect()
        lIl11111Il = nil
    end
    if not ll1llI11Il["removePortals"] then
        for I111lI11Il, ll11lI11Il in ipairs(IIl11111Il) do
            if ll11lI11Il["object"] and not ll11lI11Il["object"]["Parent"] then
                pcall(function()
                    ll11lI11Il["object"]["Parent"] = ll11lI11Il["parent"] and (ll11lI11Il["parent"]["Parent"] and ll11lI11Il["parent"]) or workspace
                end)
            end
        end
        table["clear"](IIl11111Il)
        return
    end
    if ll1llI11Il["removePortals"] then
        lIl11111Il = game["DescendantAdded"]:Connect(l1l11111Il)
        getSendMuscleEventI111L11Il("removePortals", function()
            local I111lI11Il = {
                workspace
            }
            local ll11lI11Il = 1
            local lIl1lI11Il = 0
            while ll11lI11Il <= #I111lI11Il and (ll1llI11Il["running"] and ll1llI11Il["removePortals"]) do
                local IIl1lI11Il = I111lI11Il[ll11lI11Il]
                ll11lI11Il = ll11lI11Il + 1
                local l1l1lI11Il, I1l1lI11Il = pcall(function()
                    return IIl1lI11Il:GetChildren()
                end)
                if l1l1lI11Il then
                    for ll11lI11Il, IIl1lI11Il in ipairs(I1l1lI11Il) do
                        I111lI11Il[#I111lI11Il + 1] = IIl1lI11Il
                        l1l11111Il(IIl1lI11Il)
                        lIl1lI11Il = lIl1lI11Il + 1
                        if lIl1lI11Il % 300 == 0 then
                            Il11lI11Il["Heartbeat"]:Wait()
                        end
                    end
                end
            end
        end)
    end
end
local lll11111Il = nil
local function Ill11111Il()
    local I111lI11Il = IlIII111Il()
    if I111lI11Il then
        if ll1llI11Il["fastSpeed"] then
            I111lI11Il["WalkSpeed"] = 1000
        elseif lll11111Il ~= nil then
            I111lI11Il["WalkSpeed"] = lll11111Il
        end
    end
end
local function lIIl1111Il(I111lI11Il)
    local ll11lI11Il = IlIII111Il()
    if I111lI11Il and (ll11lI11Il and not ll1llI11Il["fastSpeed"]) then
        lll11111Il = ll11lI11Il["WalkSpeed"]
    end
    local Il11lI11Il = ll1llI11Il["fastSpeed"]
    ll1llI11Il["fastSpeed"] = I111lI11Il == true
    if ll1llI11Il["fastSpeed"] or Il11lI11Il then
        Ill11111Il()
    end
    if Il11lI11Il and not ll1llI11Il["fastSpeed"] then
        lll11111Il = nil
    end
end
local IIIl1111Il = nil
local bodyVelocity = nil
local flag = false
local llIl1111Il = false
local IlIl1111Il = nil
ll1llI11Il["clearAntiKnockback"] = function()
    if ll1llI11Il["antiKnockbackVelocity"] then
        ll1llI11Il["antiKnockbackVelocity"]:Destroy()
        ll1llI11Il["antiKnockbackVelocity"] = nil
    end
end
ll1llI11Il["setAntiKnockback"] = function(I111lI11Il)
    ll1llI11Il["antiKnockback"] = I111lI11Il == true
    if not ll1llI11Il["antiKnockback"] and not ll1llI11Il["noclip"] then
        ll1llI11Il["clearAntiKnockback"]()
    end
end
local function lI1l1111Il()
    if IIIl1111Il then
        IIIl1111Il:Destroy()
        IIIl1111Il = nil
    end
    if bodyVelocity then
        bodyVelocity:Destroy()
        bodyVelocity = nil
    end
    local I111lI11Il = IlIII111Il()
    if I111lI11Il then
        I111lI11Il["PlatformStand"] = false
    end
end
local function II1l1111Il(I111lI11Il)
    ll1llI11Il["fly"] = I111lI11Il == true
    if IlIl1111Il then
        IlIl1111Il["Visible"] = ll1llI11Il["fly"] and IIl1lI11Il["TouchEnabled"]
    end
    if not ll1llI11Il["fly"] then
        lI1l1111Il()
    end
end
local l11l1111Il
do
    local I111lI11Il = setmetatable({}, {
        ["__mode"] = "k"
    })
    local ll11lI11Il = nil
    local function lIl1lI11Il()
        local I111lI11Il = nil
        local ll11lI11Il = math["huge"]
        for Il11lI11Il, lIl1lI11Il in ipairs(workspace:GetChildren()) do
            if lIl1lI11Il:IsA("BasePart") and (lIl1lI11Il["Name"]:lower() == "baseplate" and math["max"](lIl1lI11Il["Size"]["X"], lIl1lI11Il["Size"]["Z"]) >= 250) then
                local Il11lI11Il = lIl1lI11Il["CFrame"]
                local IIl1lI11Il = ((math["abs"](Il11lI11Il["RightVector"]["Y"]) * lIl1lI11Il["Size"]["X"]) * 0.5 + (math["abs"](Il11lI11Il["UpVector"]["Y"]) * lIl1lI11Il["Size"]["Y"]) * 0.5) + (math["abs"](Il11lI11Il["LookVector"]["Y"]) * lIl1lI11Il["Size"]["Z"]) * 0.5
                local l1l1lI11Il = lIl1lI11Il["Position"]["Y"] + IIl1lI11Il
                local I1l1lI11Il = math["abs"](l1l1lI11Il)
                if I1l1lI11Il < ll11lI11Il then
                    ll11lI11Il = I1l1lI11Il
                    I111lI11Il = l1l1lI11Il
                end
            end
        end
        if I111lI11Il ~= nil then
            return I111lI11Il
        end
        local Il11lI11Il = isI111L11IlValid()
        local lIl1lI11Il = IlIII111Il()
        if Il11lI11Il then
            return Il11lI11Il["Position"]["Y"] - ((lIl1lI11Il and lIl1lI11Il["HipHeight"] or 2) + Il11lI11Il["Size"]["Y"] * 0.5)
        end
        return 0
    end
    local function IIl1lI11Il(ll11lI11Il)
        if I111lI11Il[ll11lI11Il] == nil then
            I111lI11Il[ll11lI11Il] = {
                ["canCollide"] = ll11lI11Il["CanCollide"],
                ["canTouch"] = ll11lI11Il["CanTouch"],
                ["canQuery"] = ll11lI11Il["CanQuery"]
            }
        end
        pcall(function()
            ll11lI11Il["CanCollide"] = false
            ll11lI11Il["CanTouch"] = false
            ll11lI11Il["CanQuery"] = false
        end)
    end
    local function l1l1lI11Il()
        if not ll1llI11Il["running"] or not ll1llI11Il["noclip"] then
            return
        end
        local I111lI11Il = llIII111Il()
        if not I111lI11Il then
            return
        end
        for I111lI11Il, ll11lI11Il in ipairs(I111lI11Il:GetDescendants()) do
            if ll11lI11Il:IsA("BasePart") then
                IIl1lI11Il(ll11lI11Il)
            end
        end
    end
    local function I1l1lI11Il()
        if ll11lI11Il then
            ll11lI11Il:Disconnect()
            ll11lI11Il = nil
        end
        for I111lI11Il, ll11lI11Il in pairs(I111lI11Il) do
            if I111lI11Il and I111lI11Il["Parent"] then
                pcall(function()
                    I111lI11Il["CanCollide"] = ll11lI11Il["canCollide"]
                    I111lI11Il["CanTouch"] = ll11lI11Il["canTouch"]
                    I111lI11Il["CanQuery"] = ll11lI11Il["canQuery"]
                end)
            end
        end
        table["clear"](I111lI11Il)
    end
    l11l1111Il = function(I111lI11Il)
        ll1llI11Il["noclip"] = I111lI11Il == true
        if not ll1llI11Il["noclip"] then
            ll1llI11Il["noclipBeachSurfaceY"] = nil
            I1l1lI11Il()
            if not ll1llI11Il["antiKnockback"] then
                ll1llI11Il["clearAntiKnockback"]()
            end
            return true
        end
        ll1llI11Il["noclipBeachSurfaceY"] = lIl1lI11Il()
        if ll11lI11Il then
            ll11lI11Il:Disconnect()
        end
        l1l1lI11Il()
        ll11lI11Il = Il11lI11Il["PreSimulation"]:Connect(l1l1lI11Il)
        return true
    end
end
local I11l1111Il = nil
local ll1l1111Il = nil
local Il1l1111Il = true
local function lIll1111Il()
    if I11l1111Il then
        local I111lI11Il = I11l1111Il["Parent"]
        if I111lI11Il and I111lI11Il:IsA("BasePart") then
            I111lI11Il["AssemblyAngularVelocity"] = Vector3["zero"]
        end
        I11l1111Il:Destroy()
        I11l1111Il = nil
    end
    if ll1l1111Il and ll1l1111Il["Parent"] then
        ll1l1111Il["AutoRotate"] = Il1l1111Il
    end
    ll1l1111Il = nil
end
local function IIll1111Il(I111lI11Il)
    ll1llI11Il["spin"] = I111lI11Il == true
    if not ll1llI11Il["spin"] then
        lIll1111Il()
    end
end
local function l1ll1111Il()
    local I111lI11Il = IlIII111Il()
    if workspace["CurrentCamera"] and I111lI11Il then
        workspace["CurrentCamera"]["CameraSubject"] = I111lI11Il
    end
end
local function I1ll1111Il(I111lI11Il)
    ll1llI11Il["spy"] = I111lI11Il == true
    if not ll1llI11Il["spy"] then
        l1ll1111Il()
    end
end
do
    local function ll11lI11Il()
        pcall(function()
            local I111lI11Il = llIII111Il()
            local ll11lI11Il = IIIllI11Il:FindFirstChild("Backpack")
            local Il11lI11Il = I111lI11Il and I111lI11Il:FindFirstChild("Punch")
            if Il11lI11Il and ll11lI11Il then
                Il11lI11Il["Parent"] = ll11lI11Il
            end
        end)
    end
    local function lIl1lI11Il()
        local I111lI11Il = llIII111Il()
        local ll11lI11Il = IlIII111Il()
        local Il11lI11Il = IIIllI11Il:FindFirstChild("Backpack")
        if not I111lI11Il or not ll11lI11Il then
            return nil
        end
        local lIl1lI11Il = I111lI11Il:FindFirstChild("Punch") or Il11lI11Il and Il11lI11Il:FindFirstChild("Punch")
        if lIl1lI11Il and lIl1lI11Il["Parent"] ~= I111lI11Il then
            pcall(ll11lI11Il["EquipTool"], ll11lI11Il, lIl1lI11Il)
        end
        if lIl1lI11Il then
            local I111lI11Il = lIl1lI11Il:FindFirstChild("attackTime")
            if I111lI11Il and I111lI11Il:IsA("ValueBase") then
                pcall(function()
                    I111lI11Il["Value"] = 0
                end)
            end
        end
        local IIl1lI11Il = IIIllI11Il:FindFirstChild("muscleEvent")
        if IIl1lI11Il then
            pcall(IIl1lI11Il["FireServer"], IIl1lI11Il, "punch", "leftHand")
            pcall(IIl1lI11Il["FireServer"], IIl1lI11Il, "punch", "rightHand")
        end
        return lIl1lI11Il
    end
    local function IIl1lI11Il(I111lI11Il)
        local ll11lI11Il = I111lI11Il and I111lI11Il:GetAttribute("SpawnProtectedUntil")
        return type(ll11lI11Il) == "number" and workspace:GetServerTimeNow() < ll11lI11Il
    end
    local function l1l1lI11Il()
        if #II1llI11Il["Kills"]["ProtectedPrivateServerIds"] == 0 then
            return false
        end
        local I111lI11Il = getgenv and getgenv() or _G
        local ll11lI11Il = I111lI11Il["gethiddenproperty"] or I111lI11Il["gethiddenprop"]
        if type(ll11lI11Il) ~= "function" then
            return false
        end
        local Il11lI11Il, lIl1lI11Il = pcall(ll11lI11Il, game, "PrivateServerId")
        local IIl1lI11Il = Il11lI11Il and tostring(lIl1lI11Il or "") or ""
        return IIl1lI11Il ~= "" and table["find"](II1llI11Il["Kills"]["ProtectedPrivateServerIds"], IIl1lI11Il) ~= nil
    end
    local function I1l1lI11Il()
        local I111lI11Il = l11II111Il(IIIllI11Il, {
            "Kills"
        })
        local ll11lI11Il = I111lI11Il and tonumber(I111lI11Il["Value"])
        return ll11lI11Il and math["floor"](ll11lI11Il) or nil
    end
    local function lll1lI11Il()
        if type(ll1llI11Il["kill"]["updateSessionCounter"]) == "function" then
            pcall(ll1llI11Il["kill"]["updateSessionCounter"], ll1llI11Il["kill"]["sessionKills"], ll1llI11Il["kill"]["killSessionActive"])
        end
    end
    local function Ill1lI11Il(I111lI11Il)
        local ll11lI11Il = tonumber(I111lI11Il)
        if not ll11lI11Il then
            return
        end
        local Il11lI11Il = math["floor"](ll11lI11Il)
        ll1llI11Il["kill"]["sessionLastTotal"] = Il11lI11Il
        if ll1llI11Il["kill"]["killSessionActive"] then
            if ll1llI11Il["kill"]["sessionStartKills"] == nil then
                ll1llI11Il["kill"]["sessionStartKills"] = Il11lI11Il
                ll1llI11Il["kill"]["sessionKills"] = 0
            elseif Il11lI11Il >= ll1llI11Il["kill"]["sessionStartKills"] then
                ll1llI11Il["kill"]["sessionKills"] = Il11lI11Il - ll1llI11Il["kill"]["sessionStartKills"]
            end
        end
        lll1lI11Il()
    end
    local function lIIllI11Il()
        if ll1llI11Il["kill"]["killSessionActive"] then
            return
        end
        ll1llI11Il["kill"]["killSessionActive"] = true
        ll1llI11Il["kill"]["sessionKills"] = 0
        ll1llI11Il["kill"]["sessionStartKills"] = I1l1lI11Il()
        ll1llI11Il["kill"]["sessionLastTotal"] = ll1llI11Il["kill"]["sessionStartKills"]
        lll1lI11Il()
    end
    local function handler()
        local ll11lI11Il = {}
        local Il11lI11Il = pcall(function()
            local Il11lI11Il = I111lI11Il:GetFriendsAsync(IIIllI11Il["UserId"])
            while ll1llI11Il["running"] and ll1llI11Il["kill"]["protectFriends"] do
                for I111lI11Il, Il11lI11Il in ipairs(Il11lI11Il:GetCurrentPage()) do
                    local lIl1lI11Il = tonumber(Il11lI11Il["Id"])
                    if lIl1lI11Il then
                        ll11lI11Il[lIl1lI11Il] = true
                    end
                end
                if Il11lI11Il["IsFinished"] then
                    break
                end
                Il11lI11Il:AdvanceToNextPageAsync()
            end
        end)
        if Il11lI11Il then
            for I111lI11Il, Il11lI11Il in ipairs(I111lI11Il:GetPlayers()) do
                if Il11lI11Il ~= IIIllI11Il and ll11lI11Il[Il11lI11Il["UserId"]] == nil then
                    ll11lI11Il[Il11lI11Il["UserId"]] = false
                end
            end
            ll1llI11Il["kill"]["friendCache"] = ll11lI11Il
        end
        ll1llI11Il["kill"]["friendProtectionReady"] = Il11lI11Il
        return Il11lI11Il
    end
    local function isIl11LIValid(I111lI11Il)
        local ll11lI11Il, Il11lI11Il = pcall(IIIllI11Il["IsFriendsWithAsync"], IIIllI11Il, I111lI11Il["UserId"])
        if ll11lI11Il then
            return Il11lI11Il == true
        end
        local lIl1lI11Il, IIl1lI11Il = pcall(IIIllI11Il["IsFriendsWith"], IIIllI11Il, I111lI11Il["UserId"])
        if lIl1lI11Il then
            return IIl1lI11Il == true
        end
        return nil
    end
    local function llIllI11Il()
        IIIII111Il("killFriendRefresh")
        table["clear"](ll1llI11Il["kill"]["friendCache"])
        ll1llI11Il["kill"]["friendProtectionReady"] = false
        if not ll1llI11Il["kill"]["protectFriends"] then
            return
        end
        getSendMuscleEventI111L11Il("killFriendRefresh", function()
            while ll1llI11Il["running"] and ll1llI11Il["kill"]["protectFriends"] do
                handler()
                for I111lI11Il = 1, 30, 1 do
                    if not ll1llI11Il["running"] or not ll1llI11Il["kill"]["protectFriends"] then
                        return
                    end
                    task["wait"](1)
                end
            end
        end)
    end
    local function IlIllI11Il(I111lI11Il)
        if not ll1llI11Il["kill"]["protectFriends"] or not I111lI11Il or I111lI11Il == IIIllI11Il then
            return false
        end
        local ll11lI11Il = ll1llI11Il["kill"]["friendCache"][I111lI11Il["UserId"]]
        if ll11lI11Il ~= nil and ll1llI11Il["kill"]["friendProtectionReady"] then
            return ll11lI11Il == true
        end
        local Il11lI11Il = isIl11LIValid(I111lI11Il)
        if Il11lI11Il ~= nil then
            ll1llI11Il["kill"]["friendCache"][I111lI11Il["UserId"]] = Il11lI11Il
            return Il11lI11Il
        end
        return true
    end
    local function lI1llI11Il(I111lI11Il)
        if not I111lI11Il then
            return false
        end
        local ll11lI11Il = string["lower"](tostring(I111lI11Il["Name"] or ""))
        local Il11lI11Il = string["lower"](tostring(I111lI11Il["DisplayName"] or ""))
        return string["find"](ll11lI11Il, "0x", 1, true) ~= nil or string["find"](Il11lI11Il, "0x", 1, true) ~= nil
    end
    local function l11llI11Il(I111lI11Il, ll11lI11Il)
        if not I111lI11Il or I111lI11Il == IIIllI11Il then
            return true
        end
        if not ll11lI11Il and lI1llI11Il(I111lI11Il) then
            return true
        end
        return IlIllI11Il(I111lI11Il)
    end
    ll1llI11Il["updateKillSession"] = Ill1lI11Il
    ll1llI11Il["refreshKillSessionCounter"] = lll1lI11Il
    local function I11llI11Il()
        IIIII111Il("killFastPunch")
        if not ll1llI11Il["kill"]["auto"] and (ll1llI11Il["kill"]["karmaMode"] == nil and not ll1llI11Il["kill"]["targetMode"]) then
            return
        end
        getSendMuscleEventI111L11Il("killFastPunch", function()
            while ll1llI11Il["running"] and (ll1llI11Il["kill"]["auto"] or ll1llI11Il["kill"]["karmaMode"] ~= nil or ll1llI11Il["kill"]["targetMode"]) do
                local I111lI11Il = lIl1lI11Il()
                if I111lI11Il then
                    pcall(I111lI11Il["Activate"], I111lI11Il)
                end
                task["wait"](0.06)
            end
        end)
    end
    local function Il1llI11Il(I111lI11Il, ll11lI11Il)
        if not I111lI11Il or I111lI11Il == IIIllI11Il or l11llI11Il(I111lI11Il, ll11lI11Il) then
            return false
        end
        local Il11lI11Il = I111lI11Il["Character"]
        local l1l1lI11Il = Il11lI11Il and Il11lI11Il:FindFirstChildWhichIsA("Humanoid")
        local I1l1lI11Il = Il11lI11Il and Il11lI11Il:FindFirstChild("HumanoidRootPart")
        if not l1l1lI11Il or l1l1lI11Il["Health"] <= 0 or not I1l1lI11Il or IIl1lI11Il(Il11lI11Il) then
            return false
        end
        local lll1lI11Il = llIII111Il()
        if not lll1lI11Il or type(firetouchinterest) ~= "function" then
            return false
        end
        local Ill1lI11Il = lIl1lI11Il()
        local lIIllI11Il = lll1lI11Il:FindFirstChild("LeftHand") or lll1lI11Il:FindFirstChild("Left Arm")
        local condition = lll1lI11Il:FindFirstChild("RightHand") or lll1lI11Il:FindFirstChild("Right Arm")
        if not lIIllI11Il and not condition then
            return false
        end
        if lIIllI11Il then
            pcall(firetouchinterest, lIIllI11Il, I1l1lI11Il, 1)
        end
        if condition then
            pcall(firetouchinterest, condition, I1l1lI11Il, 1)
        end
        task["wait"]()
        if lIIllI11Il then
            pcall(firetouchinterest, lIIllI11Il, I1l1lI11Il, 0)
        end
        if condition then
            pcall(firetouchinterest, condition, I1l1lI11Il, 0)
        end
        local muscleEvent = IIIllI11Il:FindFirstChild("muscleEvent")
        if muscleEvent then
            pcall(muscleEvent["FireServer"], muscleEvent, "punch", "leftHand")
            pcall(muscleEvent["FireServer"], muscleEvent, "punch", "rightHand")
        end
        if Ill1lI11Il then
            pcall(Ill1lI11Il["Activate"], Ill1lI11Il)
        end
        return true
    end
    local function lIlllI11Il(I111lI11Il, ll11lI11Il)
        if not ll11lI11Il then
            return true
        end
        local Il11lI11Il = l11II111Il(I111lI11Il, {
            "goodKarma",
            "Good Karma"
        })
        local lIl1lI11Il = l11II111Il(I111lI11Il, {
            "evilKarma",
            "Evil Karma"
        })
        local IIl1lI11Il = tonumber(Il11lI11Il and Il11lI11Il["Value"]) or 0
        local l1l1lI11Il = tonumber(lIl1lI11Il and lIl1lI11Il["Value"]) or 0
        if ll11lI11Il == "evil" then
            return IIl1lI11Il > l1l1lI11Il
        elseif ll11lI11Il == "good" then
            return l1l1lI11Il > IIl1lI11Il
        end
        return false
    end
    local function IIlllI11Il()
        return ll1llI11Il["kill"]["auto"] or ll1llI11Il["kill"]["karmaMode"] ~= nil
    end
    local function l1lllI11Il()
        local ll11lI11Il = {}
        for I111lI11Il, Il11lI11Il in ipairs(I111lI11Il:GetPlayers()) do
            if Il11lI11Il ~= IIIllI11Il and (not l11llI11Il(Il11lI11Il, false) and lIlllI11Il(Il11lI11Il, ll1llI11Il["kill"]["karmaMode"])) then
                local I111lI11Il = Il11lI11Il["Character"]
                local lIl1lI11Il = I111lI11Il and I111lI11Il:FindFirstChildWhichIsA("Humanoid")
                local l1l1lI11Il = I111lI11Il and I111lI11Il:FindFirstChild("HumanoidRootPart")
                if lIl1lI11Il and (lIl1lI11Il["Health"] > 0 and (l1l1lI11Il and not IIl1lI11Il(I111lI11Il))) then
                    ll11lI11Il[#ll11lI11Il + 1] = {
                        ["player"] = Il11lI11Il,
                        ["health"] = lIl1lI11Il["Health"]
                    }
                end
            end
        end
        table["sort"](ll11lI11Il, function(I111lI11Il, ll11lI11Il)
            return I111lI11Il["health"] < ll11lI11Il["health"]
        end)
        return ll11lI11Il
    end
    local function I1lllI11Il()
        IIIII111Il("killFarm")
        if not IIlllI11Il() and not ll1llI11Il["kill"]["targetMode"] then
            ll11lI11Il()
            return
        end
        getSendMuscleEventI111L11Il("killFarm", function()
            while ll1llI11Il["running"] and (IIlllI11Il() or ll1llI11Il["kill"]["targetMode"]) do
                if ll1llI11Il["kill"]["targetMode"] then
                    Il1llI11Il(ll1llI11Il["kill"]["target"] and I111lI11Il:FindFirstChild(ll1llI11Il["kill"]["target"]), true)
                else
                    local I111lI11Il = l1lllI11Il()
                    for I111lI11Il, ll11lI11Il in ipairs(I111lI11Il) do
                        if not ll1llI11Il["running"] or not IIlllI11Il() then
                            break
                        end
                        Il1llI11Il(ll11lI11Il["player"], false)
                    end
                    if ll1llI11Il["kill"]["serverHop"] then
                        if #I111lI11Il == 0 then
                            ll1llI11Il["kill"]["noTargetsSince"] = ll1llI11Il["kill"]["noTargetsSince"] or time()
                            if time() - ll1llI11Il["kill"]["noTargetsSince"] >= II1llI11Il["ServerHop"]["NoTargetsDelay"] then
                                ll1llI11Il["kill"]["hopNow"] = true
                            end
                        else
                            ll1llI11Il["kill"]["noTargetsSince"] = nil
                        end
                    end
                end
                task["wait"]()
            end
            ll11lI11Il()
        end)
    end
    local function lIIII111Il()
        local I111lI11Il = getgenv and getgenv() or _G
        local ll11lI11Il = I111lI11Il["queue_on_teleport"] or I111lI11Il["queueonteleport"] or queue_on_teleport or queueonteleport
        if type(ll11lI11Il) == "function" then
            return ll11lI11Il
        end
        local Il11lI11Il = I111lI11Il["syn"]
        if type(Il11lI11Il) == "table" and type(Il11lI11Il["queue_on_teleport"]) == "function" then
            return Il11lI11Il["queue_on_teleport"]
        end
        local lIl1lI11Il = I111lI11Il["fluxus"]
        if type(lIl1lI11Il) == "table" and type(lIl1lI11Il["queue_on_teleport"]) == "function" then
            return lIl1lI11Il["queue_on_teleport"]
        end
        return nil
    end
    local function isPcallValid(I111lI11Il)
        return table["find"](ll1llI11Il["kill"]["serverHistory"], I111lI11Il) ~= nil
    end
    local function handlePcall(I111lI11Il)
        if not isPcallValid(I111lI11Il) then
            ll1llI11Il["kill"]["serverHistory"][#ll1llI11Il["kill"]["serverHistory"] + 1] = I111lI11Il
        end
        while #ll1llI11Il["kill"]["serverHistory"] > II1llI11Il["ServerHop"]["HistoryLimit"] do
            table["remove"](ll1llI11Il["kill"]["serverHistory"], 1)
        end
    end
    local function I11II111Il(I111lI11Il)
        local ll11lI11Il = getgenv and getgenv() or _G
        local Il11lI11Il = ll11lI11Il["request"] or ll11lI11Il["http_request"] or type(ll11lI11Il["syn"]) == "table" and ll11lI11Il["syn"]["request"]
        if type(Il11lI11Il) == "function" then
            local ll11lI11Il, lIl1lI11Il = pcall(Il11lI11Il, {
                ["Url"] = I111lI11Il,
                ["Method"] = "GET",
                ["Headers"] = {
                    ["cache-control"] = "no-store"
                }
            })
            local IIl1lI11Il = type(lIl1lI11Il) == "table" and (lIl1lI11Il["Body"] or lIl1lI11Il["body"]) or nil
            if ll11lI11Il and type(IIl1lI11Il) == "string" then
                return true, IIl1lI11Il
            end
        end
        return pcall(game["HttpGet"], game, I111lI11Il, true)
    end
    local function handleLl11LIIl(I111lI11Il)
        local ll11lI11Il = game:GetService("HttpService")
        local Il11lI11Il = {}
        local lIl1lI11Il = {}
        local IIl1lI11Il = {}
        local l1l1lI11Il = {}
        local I1l1lI11Il = nil
        for lll1lI11Il = 1, 6, 1 do
            local Ill1lI11Il = string["format"](II1llI11Il["ServerHop"]["ServerApi"], game["PlaceId"])
            if I1l1lI11Il then
                Ill1lI11Il = Ill1lI11Il .. ("&cursor=" .. ll11lI11Il:UrlEncode(I1l1lI11Il))
            end
            local lIIllI11Il, IIIllI11Il = I11II111Il(Ill1lI11Il)
            if not lIIllI11Il or type(IIIllI11Il) ~= "string" then
                break
            end
            local success, result = pcall(ll11lI11Il["JSONDecode"], ll11lI11Il, IIIllI11Il)
            if not success or type(result) ~= "table" then
                break
            end
            for ll11lI11Il, I1l1lI11Il in ipairs(result["data"] or {}) do
                if type(I1l1lI11Il) == "table" and (type(I1l1lI11Il["id"]) == "string" and (I1l1lI11Il["id"] ~= game["JobId"] and ((I111lI11Il or not isPcallValid(I1l1lI11Il["id"])) and (tonumber(I1l1lI11Il["playing"]) and (tonumber(I1l1lI11Il["maxPlayers"]) and tonumber(I1l1lI11Il["playing"]) < tonumber(I1l1lI11Il["maxPlayers"])))))) then
                    local I111lI11Il = tonumber(I1l1lI11Il["playing"])
                    local ll11lI11Il = tonumber(I1l1lI11Il["maxPlayers"]) - I111lI11Il
                    if ll11lI11Il >= 2 then
                        if I111lI11Il >= II1llI11Il["ServerHop"]["PreferredPlayers"] then
                            Il11lI11Il[#Il11lI11Il + 1] = I1l1lI11Il
                        elseif I111lI11Il >= II1llI11Il["ServerHop"]["MinimumPlayers"] then
                            lIl1lI11Il[#lIl1lI11Il + 1] = I1l1lI11Il
                        else
                            IIl1lI11Il[#IIl1lI11Il + 1] = I1l1lI11Il
                        end
                    else
                        l1l1lI11Il[#l1l1lI11Il + 1] = I1l1lI11Il
                    end
                end
            end
            I1l1lI11Il = result["nextPageCursor"]
            if not I1l1lI11Il or #Il11lI11Il >= 10 then
                break
            end
        end
        local lll1lI11Il = #Il11lI11Il > 0 and Il11lI11Il or lIl1lI11Il
        if #lll1lI11Il == 0 then
            lll1lI11Il = IIl1lI11Il
        end
        if #lll1lI11Il == 0 then
            lll1lI11Il = l1l1lI11Il
        end
        if #lll1lI11Il == 0 then
            return nil
        end
        table["sort"](lll1lI11Il, function(I111lI11Il, ll11lI11Il)
            return tonumber(I111lI11Il["playing"]) > tonumber(ll11lI11Il["playing"])
        end)
        return lll1lI11Il[1]["id"]
    end
    local function secondaryPcall(I111lI11Il, ll11lI11Il, Il11lI11Il)
        local lIl1lI11Il = game:GetService("HttpService")
        handlePcall(ll11lI11Il)
        Il11lI11Il = Il11lI11Il or {}
        Il11lI11Il["script"] = "fg100.lua"
        Il11lI11Il["serverHistory"] = ll1llI11Il["kill"]["serverHistory"]
        Il11lI11Il["serversVisited"] = ll1llI11Il["kill"]["serversVisited"] + 1
        local IIl1lI11Il = lIl1lI11Il:JSONEncode(Il11lI11Il)
        local l1l1lI11Il = table["concat"]({
            "repeat task.wait() until game:IsLoaded()",
            "local env = getgenv and getgenv() or _G",
            "env.Young0xFG100Resume = game:GetService('HttpService'):JSONDecode(" .. (string["format"]("%q", IIl1lI11Il) .. ")"),
            "loadstring(game:HttpGet(" .. (string["format"]("%q", II1llI11Il["ServerHop"]["LoaderUrl"]) .. ", true))()")
        }, "\n")
        return pcall(I111lI11Il, l1l1lI11Il)
    end
    local function lIlII111Il(I111lI11Il, ll11lI11Il)
        Ill1lI11Il(I1l1lI11Il())
        return secondaryPcall(I111lI11Il, ll11lI11Il, {
            ["tab"] = "Kills",
            ["autoKill"] = ll1llI11Il["kill"]["auto"],
            ["karmaMode"] = ll1llI11Il["kill"]["karmaMode"],
            ["protectFriends"] = ll1llI11Il["kill"]["protectFriends"],
            ["serverHop"] = true,
            ["serverHopInterval"] = ll1llI11Il["kill"]["serverHopInterval"],
            ["killSessionActive"] = ll1llI11Il["kill"]["killSessionActive"],
            ["sessionKills"] = ll1llI11Il["kill"]["sessionKills"],
            ["sessionStartKills"] = ll1llI11Il["kill"]["sessionStartKills"]
        })
    end
    local function IIlII111Il()
        local I111lI11Il = lIIII111Il()
        if not I111lI11Il then
            return false, "Tu executor no permite mantener el script al cambiar."
        end
        local ll11lI11Il = handleLl11LIIl(false) or handleLl11LIIl(true)
        if not ll11lI11Il then
            return false, "No encontr\195\169 otro servidor disponible."
        end
        if not lIlII111Il(I111lI11Il, ll11lI11Il) then
            return false, "No se pudo preparar la reconexi\195\179n."
        end
        local Il11lI11Il = pcall(function()
            (game:GetService("TeleportService")):TeleportToPlaceInstance(game["PlaceId"], ll11lI11Il, IIIllI11Il)
        end)
        if not Il11lI11Il then
            return false, "No se pudo iniciar el cambio de servidor."
        end
        return true
    end
    local function l1lII111Il(I111lI11Il, ll11lI11Il)
        if type(ll1llI11Il["kill"]["updateHopStatus"]) == "function" then
            pcall(ll1llI11Il["kill"]["updateHopStatus"], I111lI11Il, ll11lI11Il)
        end
    end
    ll1llI11Il["setServerHop"] = function(I111lI11Il)
        if I111lI11Il and (ll1llI11Il["kill"]["targetMode"] or l1l1lI11Il() or not lIIII111Il()) then
            return false
        end
        ll1llI11Il["kill"]["serverHop"] = I111lI11Il == true
        ll1llI11Il["kill"]["hopNow"] = false
        ll1llI11Il["kill"]["noTargetsSince"] = nil
        IIIII111Il("killServerHop")
        if ll1llI11Il["kill"]["serverHop"] then
            getSendMuscleEventI111L11Il("killServerHop", function()
                while ll1llI11Il["running"] and ll1llI11Il["kill"]["serverHop"] do
                    local I111lI11Il = ll1llI11Il["kill"]["serverHopInterval"] or II1llI11Il["ServerHop"]["Interval"]
                    while I111lI11Il > 0 and not ll1llI11Il["kill"]["hopNow"] do
                        if not ll1llI11Il["running"] or not ll1llI11Il["kill"]["serverHop"] then
                            return
                        end
                        l1lII111Il(I111lI11Il)
                        task["wait"](1)
                        I111lI11Il = I111lI11Il - 1
                    end
                    ll1llI11Il["kill"]["hopNow"] = false
                    if not ll1llI11Il["running"] or not ll1llI11Il["kill"]["serverHop"] then
                        return
                    end
                    l1lII111Il(0, "Buscando servidor...")
                    local ll11lI11Il, Il11lI11Il = IIlII111Il()
                    if ll11lI11Il then
                        l1lII111Il(0, "Conectando...")
                        task["wait"](12)
                        if ll1llI11Il["running"] and ll1llI11Il["kill"]["serverHop"] then
                            l1lII111Il(0, "Reintentando...")
                            task["wait"](II1llI11Il["ServerHop"]["RetryDelay"])
                            ll1llI11Il["kill"]["hopNow"] = true
                        end
                    else
                        l1lII111Il(0, Il11lI11Il or "Reintentando...")
                        task["wait"](II1llI11Il["ServerHop"]["RetryDelay"])
                        ll1llI11Il["kill"]["hopNow"] = true
                    end
                end
            end)
        else
            ll1llI11Il["kill"]["hopRetrying"] = false
            l1lII111Il(nil)
        end
        return true
    end
    IllllI11Il((game:GetService("TeleportService"))["TeleportInitFailed"]:Connect(function(I111lI11Il)
        if I111lI11Il ~= IIIllI11Il or not ll1llI11Il["running"] or not ll1llI11Il["kill"]["serverHop"] or ll1llI11Il["kill"]["hopRetrying"] then
            return
        end
        ll1llI11Il["kill"]["hopRetrying"] = true
        l1lII111Il(0, "Servidor lleno. Buscando otro...")
        task["delay"](1.5, function()
            if ll1llI11Il["running"] and ll1llI11Il["kill"]["serverHop"] then
                local I111lI11Il, ll11lI11Il = IIlII111Il()
                if I111lI11Il then
                    l1lII111Il(0, "Conectando...")
                else
                    l1lII111Il(0, ll11lI11Il or "Reintentando...")
                end
            end
            ll1llI11Il["kill"]["hopRetrying"] = false
        end)
    end))
    local function I1lII111Il()
        IIIII111Il("killSizeOne")
        if not IIlllI11Il() and not ll1llI11Il["kill"]["targetMode"] then
            return
        end
        if type(lllllI11Il["SetSizeOne"]) == "function" then
            lllllI11Il["SetSizeOne"]()
        end
        getSendMuscleEventI111L11Il("killSizeOne", function()
            while ll1llI11Il["running"] and (IIlllI11Il() or ll1llI11Il["kill"]["targetMode"]) do
                if type(lllllI11Il["SetSizeOne"]) == "function" then
                    lllllI11Il["SetSizeOne"]()
                end
                task["wait"](0.5)
            end
        end)
    end
    local function lllII111Il()
        IIIII111Il("killPositionLock")
        ll1llI11Il["kill"]["lockCFrame"] = nil
        ll1llI11Il["kill"]["lockCharacter"] = nil
    end
    local function IllII111Il()
        IIIII111Il("killPunchAnimation")
        if ll1llI11Il["fastPunch"] then
            return
        end
        pcall(function()
            local I111lI11Il = llIII111Il()
            local ll11lI11Il = IIIllI11Il:FindFirstChild("Backpack")
            local Il11lI11Il = I111lI11Il and I111lI11Il:FindFirstChild("Punch") or ll11lI11Il and ll11lI11Il:FindFirstChild("Punch")
            local lIl1lI11Il = Il11lI11Il and Il11lI11Il:FindFirstChild("attackTime")
            if lIl1lI11Il then
                lIl1lI11Il["Value"] = 0.3
            end
        end)
    end
    local function secondaryHandler()
        lllII111Il()
        local I111lI11Il = llIII111Il()
        local ll11lI11Il = isI111L11IlValid()
        if I111lI11Il and ll11lI11Il then
            ll1llI11Il["kill"]["lockCharacter"] = I111lI11Il
            ll1llI11Il["kill"]["lockCFrame"] = ll11lI11Il["CFrame"]
        end
        getSendMuscleEventI111L11Il("killPositionLock", function()
            while ll1llI11Il["running"] and IIlllI11Il() do
                local I111lI11Il = llIII111Il()
                local ll11lI11Il = isI111L11IlValid()
                if I111lI11Il and ll11lI11Il then
                    if ll1llI11Il["kill"]["lockCharacter"] ~= I111lI11Il or not ll1llI11Il["kill"]["lockCFrame"] then
                        ll1llI11Il["kill"]["lockCharacter"] = I111lI11Il
                        ll1llI11Il["kill"]["lockCFrame"] = ll11lI11Il["CFrame"]
                    end
                    ll11lI11Il["CFrame"] = ll1llI11Il["kill"]["lockCFrame"]
                    ll11lI11Il["AssemblyLinearVelocity"] = Vector3["zero"]
                    ll11lI11Il["AssemblyAngularVelocity"] = Vector3["zero"]
                end
                Il11lI11Il["Heartbeat"]:Wait()
            end
        end)
    end
    ll1llI11Il["setAutoKill"] = function(I111lI11Il)
        if I111lI11Il and (l1l1lI11Il() or type(firetouchinterest) ~= "function") then
            return false
        end
        if I111lI11Il then
            lIIllI11Il()
        end
        ll1llI11Il["kill"]["auto"] = I111lI11Il == true
        if ll1llI11Il["kill"]["auto"] then
            ll1llI11Il["kill"]["targetMode"] = false
            ll1llI11Il["kill"]["karmaMode"] = nil
            secondaryHandler()
        else
            lllII111Il()
        end
        IllII111Il()
        I1lII111Il()
        I11llI11Il()
        I1lllI11Il()
        return true
    end
    ll1llI11Il["setTargetKill"] = function(I111lI11Il)
        if I111lI11Il and (l1l1lI11Il() or type(firetouchinterest) ~= "function" or not ll1llI11Il["kill"]["target"]) then
            return false
        end
        ll1llI11Il["kill"]["targetMode"] = I111lI11Il == true
        if ll1llI11Il["kill"]["targetMode"] then
            ll1llI11Il["kill"]["auto"] = false
            ll1llI11Il["kill"]["karmaMode"] = nil
            lllII111Il()
            IllII111Il()
            ll1llI11Il["setServerHop"](false)
        end
        I1lII111Il()
        I11llI11Il()
        I1lllI11Il()
        return true
    end
    ll1llI11Il["setKarmaKill"] = function(I111lI11Il, ll11lI11Il)
        if I111lI11Il ~= "evil" and I111lI11Il ~= "good" then
            return false
        end
        if ll11lI11Il and (l1l1lI11Il() or type(firetouchinterest) ~= "function") then
            return false
        end
        if ll11lI11Il then
            lIIllI11Il()
            ll1llI11Il["kill"]["karmaMode"] = I111lI11Il
        elseif ll1llI11Il["kill"]["karmaMode"] == I111lI11Il then
            ll1llI11Il["kill"]["karmaMode"] = nil
        end
        if ll1llI11Il["kill"]["karmaMode"] then
            ll1llI11Il["kill"]["auto"] = false
            IllII111Il()
            ll1llI11Il["kill"]["targetMode"] = false
            secondaryHandler()
        else
            lllII111Il()
            IllII111Il()
        end
        I1lII111Il()
        I11llI11Il()
        I1lllI11Il()
        return true
    end
    ll1llI11Il["setProtectFriends"] = function(I111lI11Il)
        ll1llI11Il["kill"]["protectFriends"] = I111lI11Il == true
        llIllI11Il()
        return true
    end
    ll1llI11Il["clearKillFriend"] = function(I111lI11Il)
        if I111lI11Il then
            ll1llI11Il["kill"]["friendCache"][I111lI11Il["UserId"]] = nil
        end
    end
    ll1llI11Il["stopKills"] = function()
        ll1llI11Il["kill"]["auto"] = false
        ll1llI11Il["kill"]["karmaMode"] = nil
        ll1llI11Il["kill"]["targetMode"] = false
        ll1llI11Il["kill"]["serverHop"] = false
        IIIII111Il("killFarm")
        IIIII111Il("killSizeOne")
        IIIII111Il("killFastPunch")
        IIIII111Il("killFriendRefresh")
        lllII111Il()
        IllII111Il()
        IIIII111Il("killServerHop")
        l1lII111Il(nil)
        ll11lI11Il()
    end
end
lIIII111Il(function()
    lllllI11Il:Stop(true)
    I111I111Il(false)
    sendMuscleEvent("autoWeight", false)
    sendMuscleEvent("autoHandstands", false)
    sendMuscleEvent("autoLift", false)
    sendMuscleEvent("autoSitups", false)
    ll1llI11Il["autoLiftUnlocked"] = false
    IIIllI11Il:SetAttribute("AutoLiftEnabled", false)
    llIlI111Il()
    ll1llI11Il["setAutoEgg"](false)
    I1llI111Il(false)
    if type(ll1llI11Il["stopDurabilityBurst"]) == "function" then
        ll1llI11Il["stopDurabilityBurst"]()
    end
    lIII1111Il(false)
    pcall(IIIllI11Il["SetAttribute"], IIIllI11Il, "ShowPopups", ll1llI11Il["originalShowPopups"])
    I11I1111Il(nil, false)
    III11111Il(false, true)
    il11LIData["set"](false)
    setWalkWater(false)
    IlI11111Il(false)
    Il111111Il(false)
    I1l11111Il(false)
    lIIl1111Il(false)
    II1l1111Il(false)
    ll1llI11Il["setAntiKnockback"](false)
    l11l1111Il(false)
    IIll1111Il(false)
    I1ll1111Il(false)
    ll1llI11Il["stopKills"]()
    ll1llI11Il["autoPet"] = false
    ll1llI11Il["autoAura"] = false
    IIIII111Il("autoPet")
    IIIII111Il("autoAura")
end)
do
    local I111lI11Il = parent:FindFirstChild("Young0xFG100Hub")
    if I111lI11Il then
        I111lI11Il:Destroy()
    end
end
local function llll1111Il()
    local I111lI11Il = workspace["CurrentCamera"]
    return I111lI11Il and I111lI11Il["ViewportSize"] or Vector2["new"](1280, 720)
end
local function Illl1111Il()
    local I111lI11Il = llll1111Il()
    local ll11lI11Il = I111lI11Il["X"] < 760 or IIl1lI11Il["TouchEnabled"] and I111lI11Il["X"] < 1100
    if ll11lI11Il then
        return math["floor"](math["clamp"](I111lI11Il["X"] * II1llI11Il["Size"]["MobileWidthScale"], II1llI11Il["Size"]["MinWidth"], II1llI11Il["Size"]["MaxMobileWidth"])), math["floor"](math["clamp"](I111lI11Il["Y"] * II1llI11Il["Size"]["MobileHeightScale"], II1llI11Il["Size"]["MinHeight"], II1llI11Il["Size"]["MaxMobileHeight"]))
    end
    return II1llI11Il["Size"]["DesktopWidth"], II1llI11Il["Size"]["DesktopHeight"]
end
local lIIIl111Il, IIIIl111Il = Illl1111Il()
local sizeNumber = 44
local positionNumber = 40
local llIIl111Il = IIl1lI11Il["TouchEnabled"] and ((llll1111Il())["X"] < 1100 and 98) or 146
local IlIIl111Il = IIl1lI11Il["TouchEnabled"] and ((llll1111Il())["X"] < 1100 and 38) or 52
local screenGui = Instance["new"]("ScreenGui")
screenGui["Name"] = "Young0xFG100Hub"
screenGui["ResetOnSpawn"] = false
screenGui["IgnoreGuiInset"] = true
screenGui["DisplayOrder"] = 1000
screenGui["ZIndexBehavior"] = Enum["ZIndexBehavior"]["Sibling"]
pcall(function()
    screenGui["AutoLocalize"] = false
end)
screenGui["Parent"] = parent
local function currentHandler(I111lI11Il)
    if I111lI11Il:IsA("TextLabel") or I111lI11Il:IsA("TextButton") or I111lI11Il:IsA("TextBox") then
        if I111lI11Il:GetAttribute("Young0xPreserveTextStyle") then
            return
        end
        local ll11lI11Il = I111lI11Il:IsA("TextButton") or I111lI11Il["TextSize"] >= 14
        I111lI11Il["Font"] = ll11lI11Il and l11llI11Il["fontBold"] or I11llI11Il
        I111lI11Il["TextColor3"] = l11llI11Il["white"]
        I111lI11Il["TextStrokeColor3"] = l11llI11Il["black"]
        I111lI11Il["TextStrokeTransparency"] = ll11lI11Il and 0.42 or 0.62
        if not I111lI11Il["TextScaled"] and I111lI11Il["TextSize"] < 12 then
            I111lI11Il["TextSize"] = 12
        end
        if I111lI11Il:IsA("TextBox") then
            I111lI11Il["PlaceholderColor3"] = l11llI11Il["soft"]
        end
    end
end
IllllI11Il(screenGui["DescendantAdded"]:Connect(function(I111lI11Il)
    task["defer"](function()
        if ll1llI11Il["running"] and (I111lI11Il and (I111lI11Il["Parent"] and I111lI11Il:IsDescendantOf(screenGui))) then
            currentHandler(I111lI11Il)
        end
    end)
end))
local l11Il111Il = Instance["new"]("Frame")
l11Il111Il["Name"] = "AnimationRoot"
l11Il111Il["AnchorPoint"] = Vector2["new"](0.5, 0.5)
l11Il111Il["Size"] = UDim2["fromOffset"](lIIIl111Il, IIIIl111Il)
l11Il111Il["Position"] = UDim2["fromScale"](0.5, 0.5)
l11Il111Il["BackgroundTransparency"] = 1
l11Il111Il["BorderSizePixel"] = 0
l11Il111Il["Parent"] = screenGui
local I11Il111Il = Instance["new"]("Frame")
I11Il111Il["Name"] = "Shadow"
I11Il111Il["AnchorPoint"] = Vector2["new"](0.5, 0.5)
I11Il111Il["Size"] = UDim2["fromOffset"](lIIIl111Il, IIIIl111Il)
I11Il111Il["Position"] = UDim2["new"](0.5, 0, 0.5, 8)
I11Il111Il["BackgroundColor3"] = l11llI11Il["black"]
I11Il111Il["BackgroundTransparency"] = 1
I11Il111Il["BorderSizePixel"] = 0
I11Il111Il["ClipsDescendants"] = true
I11Il111Il["ZIndex"] = 1
I11Il111Il["Parent"] = l11Il111Il
local uiCorner = Instance["new"]("UICorner", I11Il111Il)
uiCorner["CornerRadius"] = UDim["new"](0, 13)
local frame = Instance["new"]("Frame")
frame["Name"] = "MainFrame"
frame["AnchorPoint"] = Vector2["new"](0.5, 0.5)
frame["Size"] = UDim2["fromOffset"](lIIIl111Il - 2, IIIIl111Il - 2)
frame["Position"] = UDim2["fromScale"](0.5, 0.5)
frame["BackgroundColor3"] = l11llI11Il["base"]
frame["BackgroundTransparency"] = 0.14
frame["BorderSizePixel"] = 0
frame["ClipsDescendants"] = true
frame["ZIndex"] = 3
frame["Parent"] = l11Il111Il
local lIlIl111Il = Instance["new"]("UICorner", frame)
lIlIl111Il["CornerRadius"] = UDim["new"](0, 19)
do
    local I111lI11Il = Instance["new"]("UIGradient")
    I111lI11Il["Rotation"] = 32
    I111lI11Il["Color"] = ColorSequence["new"]({
        ColorSequenceKeypoint["new"](0, l11llI11Il["base"]),
        ColorSequenceKeypoint["new"](0.55, l11llI11Il["panel"]),
        ColorSequenceKeypoint["new"](1, l11llI11Il["base"])
    })
    I111lI11Il["Parent"] = frame
    local ll11lI11Il = Instance["new"]("Frame")
    ll11lI11Il["Size"] = UDim2["new"](1, 0, 0, 90)
    ll11lI11Il["BackgroundColor3"] = l11llI11Il["white"]
    ll11lI11Il["BackgroundTransparency"] = 0.975
    ll11lI11Il["BorderSizePixel"] = 0
    ll11lI11Il["ZIndex"] = 3
    ll11lI11Il["Visible"] = false
    ll11lI11Il["Parent"] = frame
    local Il11lI11Il = Instance["new"]("UIGradient")
    Il11lI11Il["Transparency"] = NumberSequence["new"]({
        NumberSequenceKeypoint["new"](0, 0.65),
        NumberSequenceKeypoint["new"](1, 1)
    })
    Il11lI11Il["Parent"] = ll11lI11Il
end
do
    local I111lI11Il = Instance["new"]("Frame")
    I111lI11Il["Size"] = UDim2["fromScale"](1, 1)
    I111lI11Il["BackgroundColor3"] = l11llI11Il["panel"]
    I111lI11Il["BackgroundTransparency"] = 0.64
    I111lI11Il["BorderSizePixel"] = 0
    I111lI11Il["ZIndex"] = 4
    I111lI11Il["Visible"] = false
    I111lI11Il["Parent"] = frame
end
local IIlIl111Il = Instance["new"]("Frame")
IIlIl111Il["Name"] = "Border"
IIlIl111Il["AnchorPoint"] = Vector2["new"](0.5, 0.5)
IIlIl111Il["Size"] = UDim2["fromOffset"](lIIIl111Il, IIIIl111Il)
IIlIl111Il["Position"] = UDim2["fromScale"](0.5, 0.5)
IIlIl111Il["BackgroundColor3"] = Color3["fromRGB"](226, 34, 61)
IIlIl111Il["BackgroundTransparency"] = 0.5
IIlIl111Il["BorderSizePixel"] = 0
IIlIl111Il["ClipsDescendants"] = true
IIlIl111Il["ZIndex"] = 2
IIlIl111Il["Parent"] = l11Il111Il
local l1lIl111Il = Instance["new"]("UICorner", IIlIl111Il)
l1lIl111Il["CornerRadius"] = UDim["new"](0, 20)
do
    local I111lI11Il = Instance["new"]("UIStroke")
    I111lI11Il["ApplyStrokeMode"] = Enum["ApplyStrokeMode"]["Border"]
    I111lI11Il["Color"] = Color3["fromRGB"](226, 34, 61)
    I111lI11Il["Thickness"] = 1.25
    I111lI11Il["Transparency"] = 0.18
    I111lI11Il["LineJoinMode"] = Enum["LineJoinMode"]["Round"]
    I111lI11Il["Parent"] = IIlIl111Il
    local ll11lI11Il = Instance["new"]("UIStroke")
    ll11lI11Il["Name"] = "AuraStroke"
    ll11lI11Il["ApplyStrokeMode"] = Enum["ApplyStrokeMode"]["Border"]
    ll11lI11Il["Color"] = Color3["fromRGB"](226, 34, 61)
    ll11lI11Il["Thickness"] = 3
    ll11lI11Il["Transparency"] = 0.84
    ll11lI11Il["LineJoinMode"] = Enum["LineJoinMode"]["Round"]
    ll11lI11Il["Parent"] = IIlIl111Il
end
frame["Parent"] = IIlIl111Il
local I1lIl111Il = Instance["new"]("Frame")
I1lIl111Il["Name"] = "BorderSweep"
I1lIl111Il["AnchorPoint"] = Vector2["new"](0.5, 0.5)
I1lIl111Il["Size"] = UDim2["fromOffset"](68, 4)
I1lIl111Il["Position"] = UDim2["fromOffset"](28, 2)
I1lIl111Il["BackgroundColor3"] = l11llI11Il["black"]
I1lIl111Il["BorderSizePixel"] = 0
I1lIl111Il["Visible"] = false
I1lIl111Il["ZIndex"] = 82
I1lIl111Il["Parent"] = IIlIl111Il
;(Instance["new"]("UICorner", I1lIl111Il))["CornerRadius"] = UDim["new"](1, 0)
do
    local I111lI11Il = Instance["new"]("UIGradient")
    I111lI11Il["Transparency"] = NumberSequence["new"]({
        NumberSequenceKeypoint["new"](0, 1),
        NumberSequenceKeypoint["new"](0.22, 0.18),
        NumberSequenceKeypoint["new"](0.5, 0),
        NumberSequenceKeypoint["new"](0.78, 0.18),
        NumberSequenceKeypoint["new"](1, 1)
    })
    I111lI11Il["Parent"] = I1lIl111Il
end
local lllIl111Il, IllIl111Il, lII1l111Il, III1l111Il
local secondaryParent, textButton
local llI1l111Il = function()
    -- empty block
end
do
    local I111lI11Il = Instance["new"]("Frame")
    I111lI11Il["Name"] = "TopbarBackdrop"
    I111lI11Il["Size"] = UDim2["new"](1, 0, 0, sizeNumber + 18)
    I111lI11Il["Position"] = UDim2["fromOffset"](0, 0)
    I111lI11Il["BackgroundColor3"] = l11llI11Il["panel"]
    I111lI11Il["BackgroundTransparency"] = 0.64
    I111lI11Il["BorderSizePixel"] = 0
    I111lI11Il["ZIndex"] = 9
    I111lI11Il["Parent"] = frame
    ;(Instance["new"]("UICorner", I111lI11Il))["CornerRadius"] = UDim["new"](0, 18)
    local ll11lI11Il = Instance["new"]("Frame")
    IllIl111Il = ll11lI11Il
    ll11lI11Il["Name"] = "Topbar"
    ll11lI11Il["Size"] = UDim2["new"](1, 0, 0, sizeNumber)
    ll11lI11Il["BackgroundTransparency"] = 1
    ll11lI11Il["BorderSizePixel"] = 0
    ll11lI11Il["ClipsDescendants"] = true
    ll11lI11Il["ZIndex"] = 10
    ll11lI11Il["Parent"] = frame
    local Il11lI11Il = Instance["new"]("TextLabel")
    lII1l111Il = Il11lI11Il
    Il11lI11Il["Size"] = UDim2["fromScale"](1, 1)
    Il11lI11Il["Position"] = UDim2["fromOffset"](0, 0)
    Il11lI11Il["BackgroundTransparency"] = 1
    Il11lI11Il["Text"] = II1llI11Il["Title"]
    Il11lI11Il["TextColor3"] = l11llI11Il["white"]
    Il11lI11Il["TextStrokeColor3"] = l11llI11Il["black"]
    Il11lI11Il["TextStrokeTransparency"] = 0.52
    Il11lI11Il["Font"] = l11llI11Il["fontBold"]
    Il11lI11Il["TextSize"] = 19
    Il11lI11Il["TextXAlignment"] = Enum["TextXAlignment"]["Center"]
    Il11lI11Il["ZIndex"] = 12
    Il11lI11Il["Parent"] = ll11lI11Il
    III1l111Il = Instance["new"]("TextLabel")
    III1l111Il["Name"] = "MiniIcon"
    III1l111Il["Size"] = UDim2["fromScale"](1, 1)
    III1l111Il["BackgroundTransparency"] = 1
    III1l111Il["Text"] = "FG100%"
    III1l111Il["TextColor3"] = l11llI11Il["white"]
    III1l111Il["TextStrokeColor3"] = l11llI11Il["black"]
    III1l111Il["TextStrokeTransparency"] = 0.06
    III1l111Il["Font"] = l11llI11Il["fontBold"]
    III1l111Il["TextSize"] = 16
    III1l111Il["Visible"] = false
    III1l111Il["ZIndex"] = 12
    III1l111Il["Parent"] = ll11lI11Il
    lllIl111Il = Instance["new"]("TextButton")
    lllIl111Il["Size"] = UDim2["fromScale"](1, 1)
    lllIl111Il["BackgroundTransparency"] = 1
    lllIl111Il["Text"] = ""
    lllIl111Il["AutoButtonColor"] = false
    lllIl111Il["ZIndex"] = 60
    lllIl111Il["Parent"] = ll11lI11Il
end
do
    secondaryParent = Instance["new"]("Frame")
    secondaryParent["Name"] = "MiniBubble"
    secondaryParent["AnchorPoint"] = Vector2["new"](0.5, 0.5)
    secondaryParent["Size"] = UDim2["fromOffset"](llIIl111Il, IlIIl111Il)
    secondaryParent["Position"] = UDim2["new"](0.5, -math["floor"]((lIIIl111Il * 0.5 + llIIl111Il * 0.5) + 18), 0.5, 0)
    secondaryParent["BackgroundColor3"] = Color3["fromRGB"](72, 12, 28)
    secondaryParent["BackgroundTransparency"] = 0.02
    secondaryParent["BorderSizePixel"] = 0
    secondaryParent["ClipsDescendants"] = true
    secondaryParent["Visible"] = true
    secondaryParent["ZIndex"] = 100
    secondaryParent["Parent"] = screenGui
    local I111lI11Il = Instance["new"]("UICorner")
    I111lI11Il["CornerRadius"] = UDim["new"](0, IlIIl111Il < 50 and 10 or 12)
    I111lI11Il["Parent"] = secondaryParent
    local ll11lI11Il = Instance["new"]("UIScale")
    ll11lI11Il["Scale"] = 1
    ll11lI11Il["Parent"] = secondaryParent
    local Il11lI11Il = Instance["new"]("UIGradient")
    Il11lI11Il["Rotation"] = 0
    Il11lI11Il["Color"] = ColorSequence["new"]({
        ColorSequenceKeypoint["new"](0, Color3["fromRGB"](72, 12, 27)),
        ColorSequenceKeypoint["new"](0.42, Color3["fromRGB"](104, 18, 37)),
        ColorSequenceKeypoint["new"](0.58, Color3["fromRGB"](148, 26, 50)),
        ColorSequenceKeypoint["new"](1, Color3["fromRGB"](78, 13, 29))
    })
    Il11lI11Il["Transparency"] = NumberSequence["new"]({
        NumberSequenceKeypoint["new"](0, 0),
        NumberSequenceKeypoint["new"](0.5, 0),
        NumberSequenceKeypoint["new"](1, 0)
    })
    Il11lI11Il["Parent"] = secondaryParent
    local IIl1lI11Il = Instance["new"]("UIStroke")
    IIl1lI11Il["ApplyStrokeMode"] = Enum["ApplyStrokeMode"]["Border"]
    IIl1lI11Il["Color"] = Color3["fromRGB"](226, 34, 61)
    IIl1lI11Il["Thickness"] = 1.25
    IIl1lI11Il["Transparency"] = 0.18
    IIl1lI11Il["LineJoinMode"] = Enum["LineJoinMode"]["Round"]
    IIl1lI11Il["Parent"] = secondaryParent
    local l1l1lI11Il = Instance["new"]("UIStroke")
    l1l1lI11Il["Name"] = "AuraStroke"
    l1l1lI11Il["ApplyStrokeMode"] = Enum["ApplyStrokeMode"]["Border"]
    l1l1lI11Il["Color"] = Color3["fromRGB"](226, 34, 61)
    l1l1lI11Il["Thickness"] = 3
    l1l1lI11Il["Transparency"] = 0.84
    l1l1lI11Il["LineJoinMode"] = Enum["LineJoinMode"]["Round"]
    l1l1lI11Il["Parent"] = secondaryParent
    local I1l1lI11Il = Instance["new"]("Frame")
    I1l1lI11Il["Name"] = "BottomAccent"
    I1l1lI11Il["Size"] = UDim2["new"](1, -10, 0, 2)
    I1l1lI11Il["Position"] = UDim2["new"](0, 5, 1, -4)
    I1l1lI11Il["BackgroundColor3"] = Color3["fromRGB"](226, 34, 61)
    I1l1lI11Il["BackgroundTransparency"] = 0.42
    I1l1lI11Il["BorderSizePixel"] = 0
    I1l1lI11Il["ZIndex"] = 101
    I1l1lI11Il["Parent"] = secondaryParent
    ;(Instance["new"]("UICorner", I1l1lI11Il))["CornerRadius"] = UDim["new"](1, 0)
    local lll1lI11Il = Instance["new"]("UIGradient")
    lll1lI11Il["Color"] = ColorSequence["new"]({
        ColorSequenceKeypoint["new"](0, Color3["fromRGB"](72, 10, 26)),
        ColorSequenceKeypoint["new"](0.5, Color3["fromRGB"](226, 48, 74)),
        ColorSequenceKeypoint["new"](1, Color3["fromRGB"](72, 10, 26))
    })
    lll1lI11Il["Transparency"] = NumberSequence["new"]({
        NumberSequenceKeypoint["new"](0, 0.78),
        NumberSequenceKeypoint["new"](0.5, 0.28),
        NumberSequenceKeypoint["new"](1, 0.78)
    })
    lll1lI11Il["Parent"] = I1l1lI11Il
    local Ill1lI11Il = Instance["new"]("TextLabel")
    Ill1lI11Il["Name"] = "Icon"
    Ill1lI11Il["Size"] = UDim2["fromScale"](1, 1)
    Ill1lI11Il["BackgroundTransparency"] = 1
    Ill1lI11Il["Text"] = "FG100%"
    Ill1lI11Il["TextColor3"] = l11llI11Il["white"]
    Ill1lI11Il["TextStrokeColor3"] = l11llI11Il["black"]
    Ill1lI11Il["TextStrokeTransparency"] = 0.12
    Ill1lI11Il["Font"] = l11llI11Il["fontBold"]
    Ill1lI11Il["TextSize"] = IlIIl111Il < 50 and 14 or 19
    Ill1lI11Il["ZIndex"] = 101
    Ill1lI11Il:SetAttribute("Young0xPreserveTextStyle", true)
    Ill1lI11Il["Parent"] = secondaryParent
    textButton = Instance["new"]("TextButton")
    textButton["Name"] = "DragHandle"
    textButton["Size"] = UDim2["fromScale"](1, 1)
    textButton["BackgroundTransparency"] = 1
    textButton["Text"] = ""
    textButton["AutoButtonColor"] = false
    textButton["ZIndex"] = 102
    textButton["Parent"] = secondaryParent
    local lIIllI11Il = false
    local IIIllI11Il = 0
    llI1l111Il = function()
        if not secondaryParent or not secondaryParent["Parent"] then
            return
        end
        IIIllI11Il = IIIllI11Il + 1
        local I111lI11Il = IIIllI11Il
        ;(lIl1lI11Il:Create(ll11lI11Il, TweenInfo["new"](0.07, Enum["EasingStyle"]["Quart"], Enum["EasingDirection"]["Out"]), {
            ["Scale"] = 0.91
        })):Play()
        ;(lIl1lI11Il:Create(secondaryParent, TweenInfo["new"](0.07, Enum["EasingStyle"]["Quart"], Enum["EasingDirection"]["Out"]), {
            ["BackgroundTransparency"] = 0
        })):Play()
        ;(lIl1lI11Il:Create(IIl1lI11Il, TweenInfo["new"](0.07, Enum["EasingStyle"]["Quart"], Enum["EasingDirection"]["Out"]), {
            ["Transparency"] = 0.05,
            ["Thickness"] = 1.8
        })):Play()
        ;(lIl1lI11Il:Create(l1l1lI11Il, TweenInfo["new"](0.07, Enum["EasingStyle"]["Quart"], Enum["EasingDirection"]["Out"]), {
            ["Transparency"] = 0.66,
            ["Thickness"] = 4.2
        })):Play()
        ;(lIl1lI11Il:Create(Il11lI11Il, TweenInfo["new"](0.07, Enum["EasingStyle"]["Quart"], Enum["EasingDirection"]["Out"]), {
            ["Offset"] = Vector2["new"](-0.16, 0)
        })):Play()
        task["delay"](0.08, function()
            if I111lI11Il ~= IIIllI11Il or not secondaryParent["Parent"] then
                return
            end
            ;(lIl1lI11Il:Create(ll11lI11Il, TweenInfo["new"](0.18, Enum["EasingStyle"]["Back"], Enum["EasingDirection"]["Out"]), {
                ["Scale"] = lIIllI11Il and 1.045 or 1
            })):Play()
            ;(lIl1lI11Il:Create(secondaryParent, TweenInfo["new"](0.18, Enum["EasingStyle"]["Quart"], Enum["EasingDirection"]["Out"]), {
                ["BackgroundTransparency"] = 0.02
            })):Play()
            ;(lIl1lI11Il:Create(IIl1lI11Il, TweenInfo["new"](0.18, Enum["EasingStyle"]["Quart"], Enum["EasingDirection"]["Out"]), {
                ["Transparency"] = lIIllI11Il and 0.08 or 0.18,
                ["Thickness"] = lIIllI11Il and 1.6 or 1.25
            })):Play()
            ;(lIl1lI11Il:Create(l1l1lI11Il, TweenInfo["new"](0.22, Enum["EasingStyle"]["Quart"], Enum["EasingDirection"]["Out"]), {
                ["Transparency"] = lIIllI11Il and 0.72 or 0.84,
                ["Thickness"] = lIIllI11Il and 3.8 or 3
            })):Play()
            ;(lIl1lI11Il:Create(Il11lI11Il, TweenInfo["new"](0.2, Enum["EasingStyle"]["Quart"], Enum["EasingDirection"]["Out"]), {
                ["Offset"] = lIIllI11Il and Vector2["new"](0.16, 0) or Vector2["zero"]
            })):Play()
        end)
    end
    IllllI11Il(textButton["MouseEnter"]:Connect(function()
        lIIllI11Il = true
        ;(lIl1lI11Il:Create(ll11lI11Il, TweenInfo["new"](0.16, Enum["EasingStyle"]["Quart"], Enum["EasingDirection"]["Out"]), {
            ["Scale"] = 1.045
        })):Play()
        ;(lIl1lI11Il:Create(IIl1lI11Il, TweenInfo["new"](0.16, Enum["EasingStyle"]["Quart"], Enum["EasingDirection"]["Out"]), {
            ["Transparency"] = 0.08,
            ["Thickness"] = 1.6
        })):Play()
        ;(lIl1lI11Il:Create(l1l1lI11Il, TweenInfo["new"](0.18, Enum["EasingStyle"]["Quart"], Enum["EasingDirection"]["Out"]), {
            ["Transparency"] = 0.72,
            ["Thickness"] = 3.8
        })):Play()
        ;(lIl1lI11Il:Create(Il11lI11Il, TweenInfo["new"](0.38, Enum["EasingStyle"]["Quint"], Enum["EasingDirection"]["Out"]), {
            ["Offset"] = Vector2["new"](0.16, 0)
        })):Play()
        ;(lIl1lI11Il:Create(I1l1lI11Il, TweenInfo["new"](0.16, Enum["EasingStyle"]["Quart"], Enum["EasingDirection"]["Out"]), {
            ["BackgroundTransparency"] = 0.24
        })):Play()
    end))
    IllllI11Il(textButton["MouseLeave"]:Connect(function()
        lIIllI11Il = false
        ;(lIl1lI11Il:Create(ll11lI11Il, TweenInfo["new"](0.2, Enum["EasingStyle"]["Quart"], Enum["EasingDirection"]["Out"]), {
            ["Scale"] = 1
        })):Play()
        ;(lIl1lI11Il:Create(IIl1lI11Il, TweenInfo["new"](0.2, Enum["EasingStyle"]["Quart"], Enum["EasingDirection"]["Out"]), {
            ["Transparency"] = 0.18,
            ["Thickness"] = 1.25
        })):Play()
        ;(lIl1lI11Il:Create(l1l1lI11Il, TweenInfo["new"](0.22, Enum["EasingStyle"]["Quart"], Enum["EasingDirection"]["Out"]), {
            ["Transparency"] = 0.84,
            ["Thickness"] = 3
        })):Play()
        ;(lIl1lI11Il:Create(Il11lI11Il, TweenInfo["new"](0.22, Enum["EasingStyle"]["Quart"], Enum["EasingDirection"]["Out"]), {
            ["Offset"] = Vector2["zero"]
        })):Play()
        ;(lIl1lI11Il:Create(I1l1lI11Il, TweenInfo["new"](0.2, Enum["EasingStyle"]["Quart"], Enum["EasingDirection"]["Out"]), {
            ["BackgroundTransparency"] = 0.42
        })):Play()
    end))
end
local IlI1l111Il = Instance["new"]("ScrollingFrame")
IlI1l111Il["Name"] = "TabBar"
IlI1l111Il["Size"] = UDim2["new"](1, 0, 0, positionNumber)
IlI1l111Il["Position"] = UDim2["new"](0, 0, 0, sizeNumber)
IlI1l111Il["BackgroundColor3"] = l11llI11Il["panel"]
IlI1l111Il["BackgroundTransparency"] = 1
IlI1l111Il["BorderSizePixel"] = 0
IlI1l111Il["ScrollBarThickness"] = 0
IlI1l111Il["ScrollingDirection"] = Enum["ScrollingDirection"]["X"]
IlI1l111Il["CanvasSize"] = UDim2["new"]()
IlI1l111Il["ZIndex"] = 10
IlI1l111Il["Parent"] = frame
local lI11l111Il = Instance["new"]("UICorner", IlI1l111Il)
lI11l111Il["CornerRadius"] = UDim["new"](0, 0)
local II11l111Il = Instance["new"]("UIListLayout", IlI1l111Il)
II11l111Il["FillDirection"] = Enum["FillDirection"]["Horizontal"]
II11l111Il["SortOrder"] = Enum["SortOrder"]["LayoutOrder"]
II11l111Il["Padding"] = UDim["new"](0, 4)
do
    local I111lI11Il = Instance["new"]("UIPadding", IlI1l111Il)
    I111lI11Il["PaddingLeft"] = UDim["new"](0, 6)
    I111lI11Il["PaddingRight"] = UDim["new"](0, 6)
    I111lI11Il["PaddingTop"] = UDim["new"](0, 4)
    I111lI11Il["PaddingBottom"] = UDim["new"](0, 4)
end
local l111l111Il = Instance["new"]("Frame")
l111l111Il["Size"] = UDim2["new"](1, 0, 1, -((sizeNumber + positionNumber) + 10))
l111l111Il["Position"] = UDim2["new"](0, 0, 0, sizeNumber + positionNumber)
l111l111Il["BackgroundTransparency"] = 1
l111l111Il["ClipsDescendants"] = true
l111l111Il["ZIndex"] = 8
l111l111Il["Parent"] = frame
local I111l111Il = {}
local ll11l111Il = {}
local Il11l111Il = {}
local function lIl1l111Il(I111lI11Il, ll11lI11Il, Il11lI11Il)
    local lIl1lI11Il = Instance["new"]("UIStroke")
    lIl1lI11Il["ApplyStrokeMode"] = Enum["ApplyStrokeMode"]["Border"]
    lIl1lI11Il["Thickness"] = ll11lI11Il or 1
    lIl1lI11Il["Transparency"] = math["clamp"]((Il11lI11Il or 0.12) + 0.07, 0, 1)
    lIl1lI11Il["Color"] = l11llI11Il["red"]
    lIl1lI11Il["Parent"] = I111lI11Il
    return lIl1lI11Il
end
local function IIl1l111Il(I111lI11Il)
    Il11l111Il[I111lI11Il] = (Il11l111Il[I111lI11Il] or 0) + 1
    return Il11l111Il[I111lI11Il]
end
local function l1l1l111Il(I111lI11Il)
    for ll11lI11Il, Il11lI11Il in pairs(ll11l111Il) do
        local IIl1lI11Il = ll11lI11Il == I111lI11Il
        Il11lI11Il:SetAttribute("Selected", IIl1lI11Il)
        ;(lIl1lI11Il:Create(Il11lI11Il, TweenInfo["new"](0.14, Enum["EasingStyle"]["Quad"], Enum["EasingDirection"]["Out"]), {
            ["BackgroundTransparency"] = IIl1lI11Il and 0.07 or 0.2,
            ["BackgroundColor3"] = IIl1lI11Il and l11llI11Il["tabOn"] or l11llI11Il["tab"],
            ["TextColor3"] = l11llI11Il["white"]
        })):Play()
        local l1l1lI11Il = Il11lI11Il:FindFirstChildOfClass("UIStroke")
        if l1l1lI11Il then
            (lIl1lI11Il:Create(l1l1lI11Il, TweenInfo["new"](0.14), {
                ["Transparency"] = IIl1lI11Il and 0.1 or 0.35
            })):Play()
        end
        local I1l1lI11Il = Il11lI11Il:FindFirstChild("ActiveLine")
        if I1l1lI11Il then
            (lIl1lI11Il:Create(I1l1lI11Il, TweenInfo["new"](0.16, Enum["EasingStyle"]["Quad"]), {
                ["Size"] = IIl1lI11Il and UDim2["new"](1, -14, 0, 3) or UDim2["fromOffset"](0, 3),
                ["BackgroundTransparency"] = IIl1lI11Il and 0 or 1
            })):Play()
        end
    end
    for ll11lI11Il, Il11lI11Il in pairs(I111l111Il) do
        if ll11lI11Il == I111lI11Il then
            Il11lI11Il["CanvasPosition"] = Vector2["zero"]
            Il11lI11Il["Position"] = UDim2["fromOffset"](7, 0)
            Il11lI11Il["Visible"] = true
            ;(lIl1lI11Il:Create(Il11lI11Il, TweenInfo["new"](0.16, Enum["EasingStyle"]["Quart"], Enum["EasingDirection"]["Out"]), {
                ["Position"] = UDim2["fromOffset"](0, 0)
            })):Play()
        else
            Il11lI11Il["Visible"] = false
        end
    end
    task["defer"](function()
        local ll11lI11Il = ll11l111Il[I111lI11Il]
        if not ll11lI11Il or not ll11lI11Il["Parent"] or IlI1l111Il["AbsoluteSize"]["X"] <= 0 then
            return
        end
        if ll1llI11Il["tabScrollTween"] then
            pcall(function()
                ll1llI11Il["tabScrollTween"]:Cancel()
            end)
            ll1llI11Il["tabScrollTween"] = nil
        end
        local Il11lI11Il = IlI1l111Il["CanvasPosition"]["X"]
        local IIl1lI11Il = math["max"](0, IlI1l111Il["AbsoluteCanvasSize"]["X"] - IlI1l111Il["AbsoluteSize"]["X"])
        local l1l1lI11Il = Il11lI11Il > 4 and 16 or 6
        local I1l1lI11Il = Il11lI11Il < IIl1lI11Il - 4 and 38 or 6
        local lll1lI11Il = (ll11lI11Il["AbsolutePosition"]["X"] - IlI1l111Il["AbsolutePosition"]["X"]) + Il11lI11Il
        local Ill1lI11Il = lll1lI11Il + ll11lI11Il["AbsoluteSize"]["X"]
        local lIIllI11Il = Il11lI11Il + l1l1lI11Il
        local IIIllI11Il = (Il11lI11Il + IlI1l111Il["AbsoluteSize"]["X"]) - I1l1lI11Il
        local il11LI = Il11lI11Il
        if lll1lI11Il < lIIllI11Il then
            il11LI = lll1lI11Il - l1l1lI11Il
        elseif Ill1lI11Il > IIIllI11Il then
            il11LI = Ill1lI11Il - (IlI1l111Il["AbsoluteSize"]["X"] - I1l1lI11Il)
        else
            return
        end
        il11LI = math["clamp"](il11LI, 0, IIl1lI11Il)
        if math["abs"](il11LI - Il11lI11Il) > 1 then
            ll1llI11Il["tabScrollTween"] = lIl1lI11Il:Create(IlI1l111Il, TweenInfo["new"](0.14, Enum["EasingStyle"]["Quart"], Enum["EasingDirection"]["Out"]), {
                ["CanvasPosition"] = Vector2["new"](il11LI, 0)
            })
            ll1llI11Il["tabScrollTween"]:Play()
        end
    end)
end
local function I1l1l111Il(I111lI11Il, ll11lI11Il, Il11lI11Il)
    local IIl1lI11Il = Instance["new"]("ScrollingFrame")
    IIl1lI11Il["Name"] = I111lI11Il
    IIl1lI11Il["Size"] = UDim2["fromScale"](1, 1)
    IIl1lI11Il["BackgroundTransparency"] = 1
    IIl1lI11Il["BorderSizePixel"] = 0
    IIl1lI11Il["ScrollBarThickness"] = 3
    IIl1lI11Il["ScrollBarImageColor3"] = l11llI11Il["cyan"]
    IIl1lI11Il["ScrollBarImageTransparency"] = 0.08
    IIl1lI11Il["CanvasSize"] = UDim2["new"]()
    IIl1lI11Il["Visible"] = false
    IIl1lI11Il["ZIndex"] = 9
    IIl1lI11Il["Parent"] = l111l111Il
    I111l111Il[I111lI11Il] = IIl1lI11Il
    local l1l1lI11Il = Instance["new"]("UIListLayout", IIl1lI11Il)
    l1l1lI11Il["SortOrder"] = Enum["SortOrder"]["LayoutOrder"]
    l1l1lI11Il["Padding"] = UDim["new"](0, 3)
    local I1l1lI11Il = Instance["new"]("UIPadding", IIl1lI11Il)
    I1l1lI11Il["PaddingLeft"] = UDim["new"](0, 8)
    I1l1lI11Il["PaddingRight"] = UDim["new"](0, 8)
    I1l1lI11Il["PaddingTop"] = UDim["new"](0, 7)
    I1l1lI11Il["PaddingBottom"] = UDim["new"](0, 8)
    IllllI11Il((l1l1lI11Il:GetPropertyChangedSignal("AbsoluteContentSize")):Connect(function()
        IIl1lI11Il["CanvasSize"] = UDim2["fromOffset"](0, l1l1lI11Il["AbsoluteContentSize"]["Y"] + (IIl1lI11Il:GetAttribute("TightCanvas") and 4 or 15))
    end))
    local lll1lI11Il = Instance["new"]("TextButton")
    lll1lI11Il["Name"] = I111lI11Il
    lll1lI11Il["Size"] = UDim2["fromOffset"](ll11lI11Il, positionNumber - 8)
    lll1lI11Il["BackgroundColor3"] = l11llI11Il["tab"]
    lll1lI11Il["BackgroundTransparency"] = 0.2
    lll1lI11Il["BorderSizePixel"] = 0
    lll1lI11Il["Text"] = I111lI11Il
    lll1lI11Il["TextColor3"] = l11llI11Il["soft"]
    lll1lI11Il["Font"] = I11llI11Il
    lll1lI11Il["TextSize"] = 11
    lll1lI11Il["TextWrapped"] = true
    lll1lI11Il["AutoButtonColor"] = false
    lll1lI11Il["LayoutOrder"] = Il11lI11Il
    lll1lI11Il["ZIndex"] = 12
    lll1lI11Il["Parent"] = IlI1l111Il
    ;(Instance["new"]("UICorner", lll1lI11Il))["CornerRadius"] = UDim["new"](0, 9)
    lIl1l111Il(lll1lI11Il, 1, 0.28)
    local Ill1lI11Il = Instance["new"]("Frame")
    Ill1lI11Il["Name"] = "ActiveLine"
    Ill1lI11Il["AnchorPoint"] = Vector2["new"](0.5, 1)
    Ill1lI11Il["Size"] = UDim2["fromOffset"](0, 2)
    Ill1lI11Il["Position"] = UDim2["new"](0.5, 0, 1, -2)
    Ill1lI11Il["BackgroundColor3"] = l11llI11Il["red"]
    Ill1lI11Il["BackgroundTransparency"] = 1
    Ill1lI11Il["BorderSizePixel"] = 0
    Ill1lI11Il["ZIndex"] = 13
    Ill1lI11Il["Parent"] = lll1lI11Il
    ;(Instance["new"]("UICorner", Ill1lI11Il))["CornerRadius"] = UDim["new"](1, 0)
    IllllI11Il(lll1lI11Il["Activated"]:Connect(function()
        l1l1l111Il(I111lI11Il)
    end))
    IllllI11Il(lll1lI11Il["MouseEnter"]:Connect(function()
        if not lll1lI11Il:GetAttribute("Selected") then
            (lIl1lI11Il:Create(lll1lI11Il, TweenInfo["new"](0.1), {
                ["BackgroundColor3"] = l11llI11Il["rowHover"],
                ["BackgroundTransparency"] = 0.1
            })):Play()
        end
    end))
    IllllI11Il(lll1lI11Il["MouseLeave"]:Connect(function()
        if not lll1lI11Il:GetAttribute("Selected") then
            (lIl1lI11Il:Create(lll1lI11Il, TweenInfo["new"](0.1), {
                ["BackgroundColor3"] = l11llI11Il["tab"],
                ["BackgroundTransparency"] = 0.2
            })):Play()
        end
    end))
    ll11l111Il[I111lI11Il] = lll1lI11Il
    return IIl1lI11Il
end
for I111lI11Il, ll11lI11Il in ipairs(II1llI11Il["Tabs"]) do
    I1l1l111Il(ll11lI11Il[1], ll11lI11Il[2], I111lI11Il)
end
IllllI11Il((II11l111Il:GetPropertyChangedSignal("AbsoluteContentSize")):Connect(function()
    IlI1l111Il["CanvasSize"] = UDim2["fromOffset"](II11l111Il["AbsoluteContentSize"]["X"] + 14, 0)
end))
do
    local I111lI11Il = Instance["new"]("Frame")
    I111lI11Il["Size"] = UDim2["fromOffset"](34, positionNumber)
    I111lI11Il["Position"] = UDim2["new"](1, -34, 0, sizeNumber)
    I111lI11Il["BackgroundColor3"] = l11llI11Il["panel"]
    I111lI11Il["BackgroundTransparency"] = 1
    I111lI11Il["BorderSizePixel"] = 0
    I111lI11Il["Active"] = false
    I111lI11Il["Selectable"] = false
    I111lI11Il["ZIndex"] = 24
    I111lI11Il["Visible"] = false
    I111lI11Il["Parent"] = frame
    local ll11lI11Il = Instance["new"]("UIGradient")
    ll11lI11Il["Transparency"] = NumberSequence["new"]({
        NumberSequenceKeypoint["new"](0, 1),
        NumberSequenceKeypoint["new"](0.46, 0.24),
        NumberSequenceKeypoint["new"](1, 0)
    })
    ll11lI11Il["Parent"] = I111lI11Il
    local Il11lI11Il = Instance["new"]("Frame")
    Il11lI11Il["Size"] = UDim2["fromOffset"](16, 16)
    Il11lI11Il["AnchorPoint"] = Vector2["new"](0.5, 0.5)
    Il11lI11Il["Position"] = UDim2["new"](1, -11, 0.5, 0)
    Il11lI11Il["BackgroundTransparency"] = 1
    Il11lI11Il["Active"] = false
    Il11lI11Il["Selectable"] = false
    Il11lI11Il["ZIndex"] = 25
    Il11lI11Il["Parent"] = I111lI11Il
    local lIl1lI11Il = Instance["new"]("Frame")
    lIl1lI11Il["Size"] = UDim2["fromOffset"](8, 2)
    lIl1lI11Il["AnchorPoint"] = Vector2["new"](1, 0.5)
    lIl1lI11Il["Position"] = UDim2["fromOffset"](11, 5)
    lIl1lI11Il["Rotation"] = 45
    lIl1lI11Il["BackgroundColor3"] = l11llI11Il["cyan"]
    lIl1lI11Il["BorderSizePixel"] = 0
    lIl1lI11Il["ZIndex"] = 25
    lIl1lI11Il["Parent"] = Il11lI11Il
    ;(Instance["new"]("UICorner", lIl1lI11Il))["CornerRadius"] = UDim["new"](1, 0)
    local IIl1lI11Il = lIl1lI11Il:Clone()
    IIl1lI11Il["Position"] = UDim2["fromOffset"](11, 11)
    IIl1lI11Il["Rotation"] = -45
    IIl1lI11Il["Parent"] = Il11lI11Il
    local l1l1lI11Il = Instance["new"]("Frame")
    l1l1lI11Il["Size"] = UDim2["fromOffset"](12, positionNumber)
    l1l1lI11Il["Position"] = UDim2["new"](0, 0, 0, sizeNumber)
    l1l1lI11Il["BackgroundColor3"] = l11llI11Il["panel"]
    l1l1lI11Il["BackgroundTransparency"] = 1
    l1l1lI11Il["BorderSizePixel"] = 0
    l1l1lI11Il["Active"] = false
    l1l1lI11Il["Selectable"] = false
    l1l1lI11Il["ZIndex"] = 24
    l1l1lI11Il["Visible"] = false
    l1l1lI11Il["Parent"] = frame
    local I1l1lI11Il = Instance["new"]("UIGradient")
    I1l1lI11Il["Transparency"] = NumberSequence["new"]({
        NumberSequenceKeypoint["new"](0, 0),
        NumberSequenceKeypoint["new"](0.72, 0.08),
        NumberSequenceKeypoint["new"](1, 1)
    })
    I1l1lI11Il["Parent"] = l1l1lI11Il
    local function lll1lI11Il()
        local ll11lI11Il = math["max"](0, (II11l111Il["AbsoluteContentSize"]["X"] + 14) - IlI1l111Il["AbsoluteSize"]["X"])
        I111lI11Il["Visible"] = ll11lI11Il > 5 and IlI1l111Il["CanvasPosition"]["X"] < ll11lI11Il - 4
        l1l1lI11Il["Visible"] = ll11lI11Il > 5 and IlI1l111Il["CanvasPosition"]["X"] > 4
    end
    IllllI11Il((IlI1l111Il:GetPropertyChangedSignal("CanvasPosition")):Connect(lll1lI11Il))
    IllllI11Il((IlI1l111Il:GetPropertyChangedSignal("AbsoluteSize")):Connect(lll1lI11Il))
    IllllI11Il((II11l111Il:GetPropertyChangedSignal("AbsoluteContentSize")):Connect(function()
        task["defer"](lll1lI11Il)
    end))
    task["defer"](lll1lI11Il)
end
local function lll1l111Il(I111lI11Il, ll11lI11Il)
    local Il11lI11Il = Instance["new"]("Frame")
    Il11lI11Il["Size"] = UDim2["new"](1, 0, 0, 22)
    Il11lI11Il["BackgroundTransparency"] = 1
    Il11lI11Il["BorderSizePixel"] = 0
    Il11lI11Il["LayoutOrder"] = IIl1l111Il(I111lI11Il)
    Il11lI11Il["ZIndex"] = 11
    Il11lI11Il["Parent"] = I111lI11Il
    local lIl1lI11Il = Instance["new"]("TextLabel")
    lIl1lI11Il["AutomaticSize"] = Enum["AutomaticSize"]["X"]
    lIl1lI11Il["Size"] = UDim2["fromOffset"](0, 22)
    lIl1lI11Il["BackgroundTransparency"] = 1
    lIl1lI11Il["Text"] = ll11lI11Il
    lIl1lI11Il["TextColor3"] = l11llI11Il["cyan"]
    lIl1lI11Il["Font"] = l11llI11Il["fontBold"]
    lIl1lI11Il["TextSize"] = 13
    lIl1lI11Il["TextXAlignment"] = Enum["TextXAlignment"]["Left"]
    lIl1lI11Il["ZIndex"] = 11
    lIl1lI11Il["Parent"] = Il11lI11Il
    local IIl1lI11Il = Instance["new"]("Frame")
    IIl1lI11Il["AnchorPoint"] = Vector2["new"](0, 0.5)
    IIl1lI11Il["BackgroundColor3"] = l11llI11Il["cyan"]
    IIl1lI11Il["BackgroundTransparency"] = 0.3
    IIl1lI11Il["BorderSizePixel"] = 0
    IIl1lI11Il["ZIndex"] = 11
    IIl1lI11Il["Parent"] = Il11lI11Il
    local l1l1lI11Il = Instance["new"]("UIGradient")
    l1l1lI11Il["Transparency"] = NumberSequence["new"]({
        NumberSequenceKeypoint["new"](0, 0.12),
        NumberSequenceKeypoint["new"](1, 1)
    })
    l1l1lI11Il["Parent"] = IIl1lI11Il
    task["defer"](function()
        if Il11lI11Il["Parent"] and lIl1lI11Il["Parent"] then
            local I111lI11Il = math["ceil"](lIl1lI11Il["TextBounds"]["X"]) + 10
            IIl1lI11Il["Position"] = UDim2["fromOffset"](I111lI11Il, 11)
            IIl1lI11Il["Size"] = UDim2["new"](1, -I111lI11Il - 2, 0, 1)
        end
    end)
    return lIl1lI11Il
end
local function Ill1l111Il(I111lI11Il, ll11lI11Il)
    I111lI11Il["Size"] = UDim2["new"](1, 0, 0, ll11lI11Il or 38)
    I111lI11Il["BackgroundColor3"] = l11llI11Il["row"]
    I111lI11Il["BackgroundTransparency"] = 0.16
    I111lI11Il["BorderSizePixel"] = 0
    I111lI11Il["ZIndex"] = 11
    ;(Instance["new"]("UICorner", I111lI11Il))["CornerRadius"] = UDim["new"](0, 11)
    local Il11lI11Il = lIl1l111Il(I111lI11Il, 1, 0.16)
    local lIl1lI11Il = Instance["new"]("Frame")
    lIl1lI11Il["Name"] = "TopSheen"
    lIl1lI11Il["Size"] = UDim2["new"](1, -20, 0, 1)
    lIl1lI11Il["Position"] = UDim2["fromOffset"](10, 0)
    lIl1lI11Il["BackgroundColor3"] = l11llI11Il["white"]
    lIl1lI11Il["BackgroundTransparency"] = 0.92
    lIl1lI11Il["BorderSizePixel"] = 0
    lIl1lI11Il["ZIndex"] = 12
    lIl1lI11Il["Parent"] = I111lI11Il
    ;(Instance["new"]("UICorner", lIl1lI11Il))["CornerRadius"] = UDim["new"](1, 0)
    local IIl1lI11Il = Instance["new"]("UIGradient")
    IIl1lI11Il["Transparency"] = NumberSequence["new"]({
        NumberSequenceKeypoint["new"](0, 1),
        NumberSequenceKeypoint["new"](0.5, 0),
        NumberSequenceKeypoint["new"](1, 1)
    })
    IIl1lI11Il["Parent"] = lIl1lI11Il
    return Il11lI11Il
end
local function lIIll111Il(I111lI11Il, ll11lI11Il, Il11lI11Il, lIl1lI11Il, IIl1lI11Il, l1l1lI11Il)
    local I1l1lI11Il = Instance["new"]("Frame")
    I1l1lI11Il["LayoutOrder"] = IIl1l111Il(I111lI11Il)
    I1l1lI11Il["Parent"] = I111lI11Il
    Ill1l111Il(I1l1lI11Il, 34)
    if l1l1lI11Il then
        local I111lI11Il = Instance["new"]("Frame")
        I111lI11Il["Size"] = UDim2["fromOffset"](3, 20)
        I111lI11Il["Position"] = UDim2["new"](0, 8, 0.5, -10)
        I111lI11Il["BackgroundColor3"] = l11llI11Il["cyan"]
        I111lI11Il["BackgroundTransparency"] = 0.1
        I111lI11Il["BorderSizePixel"] = 0
        I111lI11Il["ZIndex"] = 12
        I111lI11Il["Parent"] = I1l1lI11Il
        ;(Instance["new"]("UICorner", I111lI11Il))["CornerRadius"] = UDim["new"](1, 0)
    end
    local lll1lI11Il = Instance["new"]("TextLabel")
    lll1lI11Il["Size"] = UDim2["new"](0.42, -10, 1, 0)
    lll1lI11Il["Position"] = UDim2["fromOffset"](l1l1lI11Il and 20 or 11, 0)
    lll1lI11Il["BackgroundTransparency"] = 1
    lll1lI11Il["Text"] = ll11lI11Il
    lll1lI11Il["TextColor3"] = l11llI11Il["dim"]
    lll1lI11Il["Font"] = I11llI11Il
    lll1lI11Il["TextSize"] = 12
    lll1lI11Il["TextXAlignment"] = Enum["TextXAlignment"]["Left"]
    lll1lI11Il["ZIndex"] = 12
    lll1lI11Il["Parent"] = I1l1lI11Il
    local Ill1lI11Il = Instance["new"]("TextLabel")
    Ill1lI11Il["Size"] = UDim2["new"](0.58, -12, 1, 0)
    Ill1lI11Il["Position"] = UDim2["new"](0.42, 0, 0, 0)
    if IIl1lI11Il then
        Ill1lI11Il["Size"] = UDim2["new"](0.58, -30, 1, 0)
    end
    Ill1lI11Il["BackgroundTransparency"] = 1
    Ill1lI11Il["Text"] = tostring(Il11lI11Il or "-")
    Ill1lI11Il["TextColor3"] = lIl1lI11Il or l11llI11Il["white"]
    Ill1lI11Il["Font"] = I11llI11Il
    Ill1lI11Il["TextSize"] = 12
    Ill1lI11Il["TextWrapped"] = true
    Ill1lI11Il["TextXAlignment"] = Enum["TextXAlignment"]["Right"]
    Ill1lI11Il["ZIndex"] = 12
    Ill1lI11Il["Parent"] = I1l1lI11Il
    local lIIllI11Il
    if IIl1lI11Il then
        lIIllI11Il = Instance["new"]("Frame")
        lIIllI11Il["Name"] = "StatusDot"
        lIIllI11Il["AnchorPoint"] = Vector2["new"](0.5, 0.5)
        lIIllI11Il["Size"] = UDim2["fromOffset"](7, 7)
        lIIllI11Il["Position"] = UDim2["new"](1, -13, 0.5, 0)
        lIIllI11Il["BackgroundColor3"] = lIl1lI11Il or l11llI11Il["green"]
        lIIllI11Il["BorderSizePixel"] = 0
        lIIllI11Il["ZIndex"] = 13
        lIIllI11Il["Parent"] = I1l1lI11Il
        ;(Instance["new"]("UICorner", lIIllI11Il))["CornerRadius"] = UDim["new"](1, 0)
        local I111lI11Il = Instance["new"]("UIStroke", lIIllI11Il)
        I111lI11Il["Color"] = lIl1lI11Il or l11llI11Il["green"]
        I111lI11Il["Thickness"] = 2
        I111lI11Il["Transparency"] = 0.58
    end
    return Ill1lI11Il, I1l1lI11Il, lll1lI11Il, lIIllI11Il
end
local function IIIll111Il(I111lI11Il, ll11lI11Il)
    local Il11lI11Il = lIIll111Il(I111lI11Il, "Estado", ll11lI11Il, l11llI11Il["green"])
    return Il11lI11Il
end
local function createTextButton(I111lI11Il, ll11lI11Il, Il11lI11Il, IIl1lI11Il, l1l1lI11Il)
    local I1l1lI11Il = Instance["new"]("TextButton")
    I1l1lI11Il["LayoutOrder"] = IIl1l111Il(I111lI11Il)
    I1l1lI11Il["Text"] = ll11lI11Il
    I1l1lI11Il["TextColor3"] = l11llI11Il["white"]
    I1l1lI11Il["Font"] = I11llI11Il
    I1l1lI11Il["TextSize"] = 12
    I1l1lI11Il["AutoButtonColor"] = false
    I1l1lI11Il["Parent"] = I111lI11Il
    local lll1lI11Il = Ill1l111Il(I1l1lI11Il, 38)
    I1l1lI11Il["BackgroundColor3"] = IIl1lI11Il or l11llI11Il["row"]
    IllllI11Il(I1l1lI11Il["Activated"]:Connect(function()
        if l1l1lI11Il then
            I1l1lI11Il["BackgroundColor3"] = l1l1lI11Il
        end
        pcall(Il11lI11Il, I1l1lI11Il)
    end))
    IllllI11Il(I1l1lI11Il["MouseEnter"]:Connect(function()
        (lIl1lI11Il:Create(I1l1lI11Il, TweenInfo["new"](0.1), {
            ["BackgroundColor3"] = l1l1lI11Il or l11llI11Il["rowHover"]
        })):Play()
        ;(lIl1lI11Il:Create(lll1lI11Il, TweenInfo["new"](0.1), {
            ["Transparency"] = 0.18,
            ["Color"] = l11llI11Il["cyan"]
        })):Play()
    end))
    IllllI11Il(I1l1lI11Il["MouseLeave"]:Connect(function()
        (lIl1lI11Il:Create(I1l1lI11Il, TweenInfo["new"](0.1), {
            ["BackgroundColor3"] = IIl1lI11Il or l11llI11Il["row"]
        })):Play()
        ;(lIl1lI11Il:Create(lll1lI11Il, TweenInfo["new"](0.1), {
            ["Transparency"] = 0.4,
            ["Color"] = l11llI11Il["blue"]
        })):Play()
    end))
    return I1l1lI11Il
end
local function secondaryCreateTextButton(I111lI11Il, ll11lI11Il, Il11lI11Il)
    local IIl1lI11Il = Instance["new"]("TextButton")
    IIl1lI11Il["LayoutOrder"] = IIl1l111Il(I111lI11Il)
    IIl1lI11Il["Text"] = ""
    IIl1lI11Il["AutoButtonColor"] = false
    IIl1lI11Il["Parent"] = I111lI11Il
    local l1l1lI11Il = Ill1l111Il(IIl1lI11Il, 40)
    local I1l1lI11Il = Instance["new"]("Frame")
    I1l1lI11Il["Size"] = UDim2["fromOffset"](3, 24)
    I1l1lI11Il["Position"] = UDim2["new"](0, 8, 0.5, -12)
    I1l1lI11Il["BackgroundColor3"] = l11llI11Il["cyan"]
    I1l1lI11Il["BackgroundTransparency"] = 0.1
    I1l1lI11Il["BorderSizePixel"] = 0
    I1l1lI11Il["ZIndex"] = 12
    I1l1lI11Il["Parent"] = IIl1lI11Il
    ;(Instance["new"]("UICorner", I1l1lI11Il))["CornerRadius"] = UDim["new"](1, 0)
    local lll1lI11Il = Instance["new"]("TextLabel")
    lll1lI11Il["Size"] = UDim2["new"](1, -72, 1, 0)
    lll1lI11Il["Position"] = UDim2["fromOffset"](20, 0)
    lll1lI11Il["BackgroundTransparency"] = 1
    lll1lI11Il["Text"] = ll11lI11Il
    lll1lI11Il["TextColor3"] = l11llI11Il["white"]
    lll1lI11Il["Font"] = I11llI11Il
    lll1lI11Il["TextSize"] = 12
    lll1lI11Il["TextWrapped"] = true
    lll1lI11Il["TextXAlignment"] = Enum["TextXAlignment"]["Left"]
    lll1lI11Il["ZIndex"] = 12
    lll1lI11Il["Parent"] = IIl1lI11Il
    local Ill1lI11Il = Instance["new"]("Frame")
    Ill1lI11Il["Size"] = UDim2["fromOffset"](40, 20)
    Ill1lI11Il["Position"] = UDim2["new"](1, -50, 0.5, -10)
    Ill1lI11Il["BackgroundColor3"] = Color3["fromRGB"](47, 35, 27)
    Ill1lI11Il["BackgroundTransparency"] = 0.12
    Ill1lI11Il["BorderSizePixel"] = 0
    Ill1lI11Il["ZIndex"] = 12
    Ill1lI11Il["Parent"] = IIl1lI11Il
    ;(Instance["new"]("UICorner", Ill1lI11Il))["CornerRadius"] = UDim["new"](1, 0)
    local lIIllI11Il = Instance["new"]("Frame")
    lIIllI11Il["Size"] = UDim2["fromOffset"](14, 14)
    lIIllI11Il["Position"] = UDim2["fromOffset"](3, 3)
    lIIllI11Il["BackgroundColor3"] = l11llI11Il["soft"]
    lIIllI11Il["BorderSizePixel"] = 0
    lIIllI11Il["ZIndex"] = 13
    lIIllI11Il["Parent"] = Ill1lI11Il
    ;(Instance["new"]("UICorner", lIIllI11Il))["CornerRadius"] = UDim["new"](1, 0)
    local IIIllI11Il = false
    local createTextButtonFlag = false
    local activeFlag = false
    local llIllI11Il = {}
    llIllI11Il["Button"] = IIl1lI11Il
    local function IlIllI11Il()
        (lIl1lI11Il:Create(Ill1lI11Il, TweenInfo["new"](0.14, Enum["EasingStyle"]["Quad"]), {
            ["BackgroundColor3"] = createTextButtonFlag and Color3["fromRGB"](44, 40, 38) or IIIllI11Il and l11llI11Il["cyan"] or Color3["fromRGB"](47, 35, 27)
        })):Play()
        ;(lIl1lI11Il:Create(lIIllI11Il, TweenInfo["new"](0.14, Enum["EasingStyle"]["Quad"]), {
            ["Position"] = IIIllI11Il and UDim2["fromOffset"](23, 3) or UDim2["fromOffset"](3, 3),
            ["BackgroundColor3"] = IIIllI11Il and l11llI11Il["white"] or l11llI11Il["soft"],
            ["BackgroundTransparency"] = createTextButtonFlag and 0.48 or 0
        })):Play()
        ;(lIl1lI11Il:Create(l1l1lI11Il, TweenInfo["new"](0.14), {
            ["Color"] = createTextButtonFlag and l11llI11Il["dim"] or IIIllI11Il and l11llI11Il["cyan"] or l11llI11Il["blue"],
            ["Transparency"] = createTextButtonFlag and 0.82 or IIIllI11Il and 0.08 or 0.4
        })):Play()
        ;(lIl1lI11Il:Create(lll1lI11Il, TweenInfo["new"](0.14), {
            ["TextColor3"] = createTextButtonFlag and l11llI11Il["dim"] or l11llI11Il["white"],
            ["TextTransparency"] = createTextButtonFlag and 0.42 or 0
        })):Play()
        ;(lIl1lI11Il:Create(I1l1lI11Il, TweenInfo["new"](0.14), {
            ["BackgroundTransparency"] = createTextButtonFlag and 0.72 or 0.1
        })):Play()
        ;(lIl1lI11Il:Create(IIl1lI11Il, TweenInfo["new"](0.14), {
            ["BackgroundTransparency"] = createTextButtonFlag and 0.48 or 0.1
        })):Play()
    end
    llIllI11Il.Set = function(lIl1lI11Il, I111lI11Il, ll11lI11Il)
        I111lI11Il = I111lI11Il == true
        if createTextButtonFlag and I111lI11Il then
            return false
        end
        if IIIllI11Il == I111lI11Il then
            return IIIllI11Il
        end
        IIIllI11Il = I111lI11Il
        if not ll11lI11Il then
            local I111lI11Il, ll11lI11Il = pcall(Il11lI11Il, IIIllI11Il)
            if not I111lI11Il or ll11lI11Il == false then
                IIIllI11Il = not IIIllI11Il
            end
        end
        IlIllI11Il()
        return IIIllI11Il
    end
    llIllI11Il.Get = function(I111lI11Il)
        return IIIllI11Il
    end
    llIllI11Il.SetLocked = function(ll11lI11Il, I111lI11Il)
        createTextButtonFlag = I111lI11Il == true
        if createTextButtonFlag and IIIllI11Il then
            IIIllI11Il = false
            pcall(Il11lI11Il, false)
        end
        IlIllI11Il()
    end
    llIllI11Il.SetFrozen = function(ll11lI11Il, I111lI11Il)
        activeFlag = I111lI11Il == true
        IIl1lI11Il["Active"] = not activeFlag
        IIl1lI11Il["Selectable"] = not activeFlag
        IlIllI11Il()
    end
    llIllI11Il.IsFrozen = function(I111lI11Il)
        return activeFlag
    end
    llIllI11Il.IsLocked = function(I111lI11Il)
        return createTextButtonFlag
    end
    IllllI11Il(IIl1lI11Il["Activated"]:Connect(function()
        if not createTextButtonFlag and not activeFlag then
            llIllI11Il:Set(not IIIllI11Il)
        end
    end))
    IllllI11Il(IIl1lI11Il["MouseEnter"]:Connect(function()
        if not createTextButtonFlag and not activeFlag then
            (lIl1lI11Il:Create(IIl1lI11Il, TweenInfo["new"](0.1), {
                ["BackgroundColor3"] = l11llI11Il["rowHover"]
            })):Play()
        end
    end))
    IllllI11Il(IIl1lI11Il["MouseLeave"]:Connect(function()
        (lIl1lI11Il:Create(IIl1lI11Il, TweenInfo["new"](0.1), {
            ["BackgroundColor3"] = l11llI11Il["row"]
        })):Play()
    end))
    IlIllI11Il()
    ll1llI11Il["allToggleControllers"][#ll1llI11Il["allToggleControllers"] + 1] = llIllI11Il
    return llIllI11Il, IIl1lI11Il
end
local function llIll111Il(I111lI11Il, ll11lI11Il, IIl1lI11Il, l1l1lI11Il, I1l1lI11Il, lll1lI11Il)
    local Ill1lI11Il = Instance["new"]("Frame")
    local lIIllI11Il = (tostring(ll11lI11Il or "Selector")):gsub("[^%w]+", "")
    Ill1lI11Il["Name"] = "Selector_" .. (lIIllI11Il ~= "" and lIIllI11Il or "Value")
    Ill1lI11Il["LayoutOrder"] = IIl1l111Il(I111lI11Il)
    Ill1lI11Il["Parent"] = I111lI11Il
    Ill1lI11Il["ClipsDescendants"] = true
    Ill1l111Il(Ill1lI11Il, 46)
    local IIIllI11Il = Instance["new"]("TextButton")
    IIIllI11Il["Name"] = "Header"
    IIIllI11Il["Size"] = UDim2["new"](1, 0, 0, 46)
    IIIllI11Il["BackgroundTransparency"] = 1
    IIIllI11Il["BorderSizePixel"] = 0
    IIIllI11Il["Text"] = ""
    IIIllI11Il["AutoButtonColor"] = false
    IIIllI11Il["ZIndex"] = 13
    IIIllI11Il["Parent"] = Ill1lI11Il
    local textLabel = Instance["new"]("TextLabel")
    textLabel["Size"] = UDim2["new"](0.42, -12, 1, 0)
    textLabel["Position"] = UDim2["fromOffset"](11, 0)
    textLabel["BackgroundTransparency"] = 1
    textLabel["Text"] = ll11lI11Il
    textLabel["TextColor3"] = l11llI11Il["soft"]
    textLabel["Font"] = I11llI11Il
    textLabel["TextSize"] = 11
    textLabel["TextXAlignment"] = Enum["TextXAlignment"]["Left"]
    textLabel["ZIndex"] = 14
    textLabel["Parent"] = IIIllI11Il
    local secondaryTextLabel = Instance["new"]("TextLabel")
    secondaryTextLabel["Size"] = UDim2["new"](0.58, -34, 1, 0)
    secondaryTextLabel["Position"] = UDim2["new"](0.42, 0, 0, 0)
    secondaryTextLabel["BackgroundTransparency"] = 1
    secondaryTextLabel["TextColor3"] = l11llI11Il["white"]
    secondaryTextLabel["Font"] = I11llI11Il
    secondaryTextLabel["TextSize"] = 11
    secondaryTextLabel["TextWrapped"] = true
    secondaryTextLabel["TextXAlignment"] = Enum["TextXAlignment"]["Right"]
    secondaryTextLabel["ZIndex"] = 14
    secondaryTextLabel["Parent"] = IIIllI11Il
    local llIllI11Il = Instance["new"]("Frame")
    llIllI11Il["AnchorPoint"] = Vector2["new"](0.5, 0.5)
    llIllI11Il["Size"] = UDim2["fromOffset"](18, 18)
    llIllI11Il["Position"] = UDim2["new"](1, -19, 0.5, 0)
    llIllI11Il["BackgroundTransparency"] = 1
    llIllI11Il["ZIndex"] = 14
    llIllI11Il["Parent"] = IIIllI11Il
    local IlIllI11Il = Instance["new"]("Frame")
    IlIllI11Il["AnchorPoint"] = Vector2["new"](1, 0.5)
    IlIllI11Il["Size"] = UDim2["fromOffset"](8, 2)
    IlIllI11Il["Position"] = UDim2["new"](0.5, 1, 0.5, 1)
    IlIllI11Il["Rotation"] = 45
    IlIllI11Il["BackgroundColor3"] = l11llI11Il["cyan"]
    IlIllI11Il["BorderSizePixel"] = 0
    IlIllI11Il["ZIndex"] = 15
    IlIllI11Il["Parent"] = llIllI11Il
    ;(Instance["new"]("UICorner", IlIllI11Il))["CornerRadius"] = UDim["new"](1, 0)
    local lI1llI11Il = Instance["new"]("Frame")
    lI1llI11Il["AnchorPoint"] = Vector2["new"](0, 0.5)
    lI1llI11Il["Size"] = UDim2["fromOffset"](8, 2)
    lI1llI11Il["Position"] = UDim2["new"](0.5, -1, 0.5, 1)
    lI1llI11Il["Rotation"] = -45
    lI1llI11Il["BackgroundColor3"] = l11llI11Il["cyan"]
    lI1llI11Il["BorderSizePixel"] = 0
    lI1llI11Il["ZIndex"] = 15
    lI1llI11Il["Parent"] = llIllI11Il
    ;(Instance["new"]("UICorner", lI1llI11Il))["CornerRadius"] = UDim["new"](1, 0)
    local II1llI11Il = Instance["new"]("ScrollingFrame")
    II1llI11Il["Name"] = "Options"
    II1llI11Il["Size"] = UDim2["new"](1, -12, 0, 0)
    II1llI11Il["Position"] = UDim2["fromOffset"](6, 46)
    II1llI11Il["BackgroundColor3"] = l11llI11Il["base"]
    II1llI11Il["BackgroundTransparency"] = 0.12
    II1llI11Il["BorderSizePixel"] = 0
    II1llI11Il["ScrollBarThickness"] = 2
    II1llI11Il["ScrollBarImageColor3"] = l11llI11Il["cyan"]
    II1llI11Il["CanvasSize"] = UDim2["new"]()
    II1llI11Il["Visible"] = false
    II1llI11Il["ZIndex"] = 14
    II1llI11Il["Parent"] = Ill1lI11Il
    ;(Instance["new"]("UICorner", II1llI11Il))["CornerRadius"] = UDim["new"](0, 6)
    local ll1llI11Il = Instance["new"]("UIListLayout", II1llI11Il)
    ll1llI11Il["SortOrder"] = Enum["SortOrder"]["LayoutOrder"]
    ll1llI11Il["Padding"] = UDim["new"](0, 2)
    local Il1llI11Il = Instance["new"]("UIPadding", II1llI11Il)
    Il1llI11Il["PaddingTop"] = UDim["new"](0, 3)
    Il1llI11Il["PaddingBottom"] = UDim["new"](0, 3)
    Il1llI11Il["PaddingLeft"] = UDim["new"](0, 3)
    Il1llI11Il["PaddingRight"] = UDim["new"](0, 3)
    local lIlllI11Il = {
        ["values"] = IIl1lI11Il or {},
        ["index"] = 1,
        ["open"] = false,
        ["placeholder"] = lll1lI11Il
    }
    local IIlllI11Il = {}
    local function l1lllI11Il()
        for I111lI11Il, ll11lI11Il in ipairs(IIlllI11Il) do
            pcall(ll11lI11Il["Disconnect"], ll11lI11Il)
        end
        table["clear"](IIlllI11Il)
    end
    local function I1lllI11Il(I111lI11Il, ll11lI11Il)
        local Il11lI11Il = I111lI11Il:Connect(ll11lI11Il)
        IIlllI11Il[#IIlllI11Il + 1] = Il11lI11Il
        return Il11lI11Il
    end
    if lIlllI11Il["placeholder"] then
        lIlllI11Il["index"] = 0
    end
    local function lllllI11Il(I111lI11Il)
        return I111lI11Il and tostring(type(I111lI11Il) == "table" and (I111lI11Il["label"] or I111lI11Il["name"] or I111lI11Il[1]) or I111lI11Il) or lIlllI11Il["placeholder"] or "Sin opciones"
    end
    local function IIIII111Il()
        return lIlllI11Il["values"][lIlllI11Il["index"]]
    end
    local function handler(I111lI11Il)
        local ll11lI11Il = IIIII111Il()
        secondaryTextLabel["Text"] = lllllI11Il(ll11lI11Il)
        if I111lI11Il and l1l1lI11Il then
            pcall(l1l1lI11Il, ll11lI11Il)
        end
    end
    local function secondaryHandler(ll11lI11Il)
        lIlllI11Il["open"] = ll11lI11Il == true and #lIlllI11Il["values"] > 0
        local IIl1lI11Il = math["min"](#lIlllI11Il["values"], 5) * 30 + 6
        II1llI11Il["Visible"] = lIlllI11Il["open"]
        II1llI11Il["Size"] = UDim2["new"](1, -12, 0, lIlllI11Il["open"] and IIl1lI11Il or 0)
        Ill1lI11Il["Size"] = UDim2["new"](1, 0, 0, 46 + (lIlllI11Il["open"] and IIl1lI11Il or 0))
        if lIlllI11Il["open"] and I111lI11Il:IsA("ScrollingFrame") then
            task["defer"](function()
                Il11lI11Il["Heartbeat"]:Wait()
                if not lIlllI11Il["open"] or not I111lI11Il["Parent"] or not Ill1lI11Il["Parent"] then
                    return
                end
                local ll11lI11Il = I111lI11Il["AbsolutePosition"]["Y"] + 6
                local IIl1lI11Il = (I111lI11Il["AbsolutePosition"]["Y"] + I111lI11Il["AbsoluteSize"]["Y"]) - 6
                local l1l1lI11Il = Ill1lI11Il["AbsolutePosition"]["Y"]
                local I1l1lI11Il = II1llI11Il["AbsolutePosition"]["Y"] + II1llI11Il["AbsoluteSize"]["Y"]
                local lll1lI11Il = 0
                if I1l1lI11Il > IIl1lI11Il then
                    lll1lI11Il = I1l1lI11Il - IIl1lI11Il
                elseif l1l1lI11Il < ll11lI11Il then
                    lll1lI11Il = l1l1lI11Il - ll11lI11Il
                end
                if math["abs"](lll1lI11Il) > 0.5 then
                    local ll11lI11Il = math["max"](0, I111lI11Il["AbsoluteCanvasSize"]["Y"] - I111lI11Il["AbsoluteSize"]["Y"])
                    local Il11lI11Il = math["clamp"](I111lI11Il["CanvasPosition"]["Y"] + lll1lI11Il, 0, ll11lI11Il)
                    ;(lIl1lI11Il:Create(I111lI11Il, TweenInfo["new"](0.2, Enum["EasingStyle"]["Quart"], Enum["EasingDirection"]["Out"]), {
                        ["CanvasPosition"] = Vector2["new"](I111lI11Il["CanvasPosition"]["X"], Il11lI11Il)
                    })):Play()
                end
            end)
        end
        if lIlllI11Il["open"] and I1l1lI11Il then
            task["defer"](I1l1lI11Il, Ill1lI11Il)
        end
        ;(lIl1lI11Il:Create(llIllI11Il, TweenInfo["new"](0.12, Enum["EasingStyle"]["Quart"], Enum["EasingDirection"]["Out"]), {
            ["Rotation"] = lIlllI11Il["open"] and 180 or 0
        })):Play()
    end
    local function llIII111Il()
        l1lllI11Il()
        for I111lI11Il, ll11lI11Il in ipairs(II1llI11Il:GetChildren()) do
            if ll11lI11Il:IsA("TextButton") then
                ll11lI11Il:Destroy()
            end
        end
        for I111lI11Il, ll11lI11Il in ipairs(lIlllI11Il["values"]) do
            local Il11lI11Il = Instance["new"]("TextButton")
            Il11lI11Il["Size"] = UDim2["new"](1, -6, 0, 28)
            Il11lI11Il["BackgroundColor3"] = I111lI11Il == lIlllI11Il["index"] and l11llI11Il["tabOn"] or l11llI11Il["row"]
            Il11lI11Il["BackgroundTransparency"] = I111lI11Il == lIlllI11Il["index"] and 0.08 or 0.22
            Il11lI11Il["BorderSizePixel"] = 0
            Il11lI11Il["Text"] = lllllI11Il(ll11lI11Il)
            Il11lI11Il["TextColor3"] = l11llI11Il["white"]
            Il11lI11Il["Font"] = I11llI11Il
            Il11lI11Il["TextSize"] = 11
            Il11lI11Il["TextWrapped"] = true
            Il11lI11Il["AutoButtonColor"] = false
            Il11lI11Il["LayoutOrder"] = I111lI11Il
            Il11lI11Il["ZIndex"] = 15
            Il11lI11Il["Parent"] = II1llI11Il
            ;(Instance["new"]("UICorner", Il11lI11Il))["CornerRadius"] = UDim["new"](0, 5)
            lIl1l111Il(Il11lI11Il, 1, 0.28)
            I1lllI11Il(Il11lI11Il["Activated"], function()
                lIlllI11Il["index"] = I111lI11Il
                handler(true)
                secondaryHandler(false)
                llIII111Il()
            end)
            I1lllI11Il(Il11lI11Il["MouseEnter"], function()
                (lIl1lI11Il:Create(Il11lI11Il, TweenInfo["new"](0.08), {
                    ["BackgroundColor3"] = I111lI11Il == lIlllI11Il["index"] and l11llI11Il["tabOn"] or l11llI11Il["rowHover"],
                    ["BackgroundTransparency"] = 0.06
                })):Play()
            end)
            I1lllI11Il(Il11lI11Il["MouseLeave"], function()
                (lIl1lI11Il:Create(Il11lI11Il, TweenInfo["new"](0.08), {
                    ["BackgroundColor3"] = I111lI11Il == lIlllI11Il["index"] and l11llI11Il["tabOn"] or l11llI11Il["row"],
                    ["BackgroundTransparency"] = I111lI11Il == lIlllI11Il["index"] and 0.08 or 0.22
                })):Play()
            end)
        end
        II1llI11Il["CanvasSize"] = UDim2["fromOffset"](0, #lIlllI11Il["values"] * 30 + 6)
    end
    lIlllI11Il.Get = function(I111lI11Il)
        return IIIII111Il()
    end
    lIlllI11Il.SetValues = function(Il11lI11Il, I111lI11Il, ll11lI11Il)
        local lIl1lI11Il = ll11lI11Il and IIIII111Il() or nil
        lIlllI11Il["values"] = I111lI11Il or {}
        lIlllI11Il["index"] = 1
        if lIlllI11Il["placeholder"] then
            lIlllI11Il["index"] = 0
        end
        if lIl1lI11Il then
            for I111lI11Il, ll11lI11Il in ipairs(lIlllI11Il["values"]) do
                local Il11lI11Il = ll11lI11Il == lIl1lI11Il
                if type(ll11lI11Il) == "table" and type(lIl1lI11Il) == "table" then
                    Il11lI11Il = ll11lI11Il["userId"] and ll11lI11Il["userId"] == lIl1lI11Il["userId"] or ll11lI11Il["name"] and ll11lI11Il["name"] == lIl1lI11Il["name"]
                end
                if Il11lI11Il then
                    lIlllI11Il["index"] = I111lI11Il
                    break
                end
            end
        end
        llIII111Il()
        secondaryHandler(false)
        handler(true)
    end
    lIlllI11Il.SetIndex = function(ll11lI11Il, I111lI11Il)
        if #lIlllI11Il["values"] == 0 then
            lIlllI11Il["index"] = lIlllI11Il["placeholder"] and 0 or 1
        else
            lIlllI11Il["index"] = (I111lI11Il - 1) % #lIlllI11Il["values"] + 1
        end
        llIII111Il()
        secondaryHandler(false)
        handler(true)
    end
    lIlllI11Il.Clear = function(I111lI11Il)
        if not lIlllI11Il["placeholder"] then
            return
        end
        lIlllI11Il["index"] = 0
        llIII111Il()
        secondaryHandler(false)
        handler(false)
    end
    IllllI11Il(IIIllI11Il["Activated"]:Connect(function()
        secondaryHandler(not lIlllI11Il["open"])
    end))
    IllllI11Il(IIIllI11Il["MouseEnter"]:Connect(function()
        (lIl1lI11Il:Create(Ill1lI11Il, TweenInfo["new"](0.1), {
            ["BackgroundColor3"] = l11llI11Il["rowHover"]
        })):Play()
    end))
    IllllI11Il(IIIllI11Il["MouseLeave"]:Connect(function()
        (lIl1lI11Il:Create(Ill1lI11Il, TweenInfo["new"](0.1), {
            ["BackgroundColor3"] = l11llI11Il["row"]
        })):Play()
    end))
    lIIII111Il(l1lllI11Il)
    llIII111Il()
    handler(true)
    return lIlllI11Il, secondaryTextLabel
end
local function IlIll111Il(I111lI11Il, ll11lI11Il, Il11lI11Il, lIl1lI11Il)
    local IIl1lI11Il = Instance["new"]("Frame")
    IIl1lI11Il["LayoutOrder"] = IIl1l111Il(I111lI11Il)
    IIl1lI11Il["Parent"] = I111lI11Il
    Ill1l111Il(IIl1lI11Il, 48)
    local l1l1lI11Il = Instance["new"]("TextLabel")
    l1l1lI11Il["Size"] = UDim2["new"](0.42, -12, 1, 0)
    l1l1lI11Il["Position"] = UDim2["fromOffset"](11, 0)
    l1l1lI11Il["BackgroundTransparency"] = 1
    l1l1lI11Il["Text"] = ll11lI11Il
    l1l1lI11Il["TextColor3"] = l11llI11Il["soft"]
    l1l1lI11Il["Font"] = I11llI11Il
    l1l1lI11Il["TextSize"] = 12
    l1l1lI11Il["TextXAlignment"] = Enum["TextXAlignment"]["Left"]
    l1l1lI11Il["ZIndex"] = 12
    l1l1lI11Il["Parent"] = IIl1lI11Il
    local I1l1lI11Il = Instance["new"]("TextBox")
    I1l1lI11Il["Size"] = UDim2["new"](0.58, -12, 0, 30)
    I1l1lI11Il["Position"] = UDim2["new"](0.42, 0, 0.5, -15)
    I1l1lI11Il["BackgroundColor3"] = l11llI11Il["panel"]
    I1l1lI11Il["BackgroundTransparency"] = 0.08
    I1l1lI11Il["BorderSizePixel"] = 0
    I1l1lI11Il["PlaceholderText"] = Il11lI11Il
    I1l1lI11Il["PlaceholderColor3"] = l11llI11Il["dim"]
    I1l1lI11Il["Text"] = ""
    I1l1lI11Il["TextColor3"] = l11llI11Il["white"]
    I1l1lI11Il["Font"] = I11llI11Il
    I1l1lI11Il["TextSize"] = 12
    I1l1lI11Il["ClearTextOnFocus"] = false
    I1l1lI11Il["ZIndex"] = 12
    I1l1lI11Il["Parent"] = IIl1lI11Il
    ;(Instance["new"]("UICorner", I1l1lI11Il))["CornerRadius"] = UDim["new"](0, 6)
    IllllI11Il(I1l1lI11Il["FocusLost"]:Connect(function()
        pcall(lIl1lI11Il, I1l1lI11Il["Text"])
    end))
    return I1l1lI11Il
end
local function lI1ll111Il(I111lI11Il, ll11lI11Il, Il11lI11Il, l1l1lI11Il, I1l1lI11Il, lll1lI11Il)
    local Ill1lI11Il = Instance["new"]("Frame")
    Ill1lI11Il["LayoutOrder"] = IIl1l111Il(I111lI11Il)
    Ill1lI11Il["Parent"] = I111lI11Il
    Ill1l111Il(Ill1lI11Il, 50)
    local lIIllI11Il = Instance["new"]("TextLabel")
    lIIllI11Il["Size"] = UDim2["new"](1, -20, 0, 20)
    lIIllI11Il["Position"] = UDim2["fromOffset"](10, 2)
    lIIllI11Il["BackgroundTransparency"] = 1
    lIIllI11Il["TextColor3"] = l11llI11Il["white"]
    lIIllI11Il["Font"] = I11llI11Il
    lIIllI11Il["TextSize"] = 12
    lIIllI11Il["TextXAlignment"] = Enum["TextXAlignment"]["Left"]
    lIIllI11Il["ZIndex"] = 12
    lIIllI11Il["Parent"] = Ill1lI11Il
    local IIIllI11Il = Instance["new"]("TextButton")
    IIIllI11Il["Size"] = UDim2["new"](1, -20, 0, 10)
    IIIllI11Il["Position"] = UDim2["fromOffset"](10, 31)
    IIIllI11Il["BackgroundColor3"] = Color3["fromRGB"](47, 35, 27)
    IIIllI11Il["BorderSizePixel"] = 0
    IIIllI11Il["Text"] = ""
    IIIllI11Il["AutoButtonColor"] = false
    IIIllI11Il["ZIndex"] = 12
    IIIllI11Il["Parent"] = Ill1lI11Il
    ;(Instance["new"]("UICorner", IIIllI11Il))["CornerRadius"] = UDim["new"](1, 0)
    local parent = Instance["new"]("Frame")
    parent["Size"] = UDim2["fromScale"](0, 1)
    parent["BackgroundColor3"] = l11llI11Il["cyan"]
    parent["BorderSizePixel"] = 0
    parent["ZIndex"] = 13
    parent["Parent"] = IIIllI11Il
    ;(Instance["new"]("UICorner", parent))["CornerRadius"] = UDim["new"](1, 0)
    local clampedValue = math["clamp"](math["floor"](I1l1lI11Il), Il11lI11Il, l1l1lI11Il)
    local llIllI11Il = false
    local function IlIllI11Il(I111lI11Il)
        clampedValue = math["clamp"](math["floor"](I111lI11Il + 0.5), Il11lI11Il, l1l1lI11Il)
        local IIl1lI11Il = (clampedValue - Il11lI11Il) / (l1l1lI11Il - Il11lI11Il)
        lIIllI11Il["Text"] = ll11lI11Il .. (": " .. (clampedValue .. ("/" .. l1l1lI11Il)))
        ;(lIl1lI11Il:Create(parent, TweenInfo["new"](0.08), {
            ["Size"] = UDim2["fromScale"](IIl1lI11Il, 1)
        })):Play()
        pcall(lll1lI11Il, clampedValue)
    end
    local function lI1llI11Il(I111lI11Il)
        local ll11lI11Il = math["clamp"]((I111lI11Il - IIIllI11Il["AbsolutePosition"]["X"]) / math["max"](IIIllI11Il["AbsoluteSize"]["X"], 1), 0, 1)
        IlIllI11Il(Il11lI11Il + (l1l1lI11Il - Il11lI11Il) * ll11lI11Il)
    end
    IllllI11Il(IIIllI11Il["InputBegan"]:Connect(function(I111lI11Il)
        if I111lI11Il["UserInputType"] == Enum["UserInputType"]["MouseButton1"] or I111lI11Il["UserInputType"] == Enum["UserInputType"]["Touch"] then
            llIllI11Il = true
            lI1llI11Il(I111lI11Il["Position"]["X"])
        end
    end))
    IllllI11Il(IIl1lI11Il["InputChanged"]:Connect(function(I111lI11Il)
        if llIllI11Il and (I111lI11Il["UserInputType"] == Enum["UserInputType"]["MouseMovement"] or I111lI11Il["UserInputType"] == Enum["UserInputType"]["Touch"]) then
            lI1llI11Il(I111lI11Il["Position"]["X"])
        end
    end))
    IllllI11Il(IIl1lI11Il["InputEnded"]:Connect(function(I111lI11Il)
        if I111lI11Il["UserInputType"] == Enum["UserInputType"]["MouseButton1"] or I111lI11Il["UserInputType"] == Enum["UserInputType"]["Touch"] then
            llIllI11Il = false
        end
    end))
    IlIllI11Il(clampedValue)
    return {
        ["Get"] = function()
            return clampedValue
        end,
        ["Set"] = IlIllI11Il
    }
end
do
    local ll11lI11Il = I111l111Il["Info"]
    lll1l111Il(ll11lI11Il, "\195\176\194\159\194\145\194\164 Info Player \195\176\194\159\194\145\194\164")
    local lIl1lI11Il, IIl1lI11Il = lIIll111Il(ll11lI11Il, "FPS:", "0", l11llI11Il["green"], true)
    local l1l1lI11Il = IIl1lI11Il:FindFirstChild("StatusDot")
    local I1l1lI11Il = isCachedPingValid()
    local lll1lI11Il = ll1llI11Il["pingStatusColor"](I1l1lI11Il)
    local Ill1lI11Il, lIIllI11Il = lIIll111Il(ll11lI11Il, "Ping:", tostring(I1l1lI11Il) .. " ms", lll1lI11Il, true)
    local statusDot = lIIllI11Il:FindFirstChild("StatusDot")
    lll1l111Il(ll11lI11Il, "\195\176\194\159\194\140\194\144 Info Server \195\176\194\159\194\140\194\144")
    lIIll111Il(ll11lI11Il, "Juego:", "Muscle Legends", l11llI11Il["cyan"])
    local data = lIIll111Il(ll11lI11Il, "Server Players:", "0/0", l11llI11Il["white"])
    lll1l111Il(ll11lI11Il, "\195\162\194\154\194\161 Info Young0x Hub \195\162\194\154\194\161")
    lIIll111Il(ll11lI11Il, "Script:", "Fast Glitch 100%", l11llI11Il["cyan"])
    lIIll111Il(ll11lI11Il, "Autor:", "Young0x and 2zvh", l11llI11Il["white"])
    createTextButton(ll11lI11Il, "Discord", function(I111lI11Il)
        local ll11lI11Il = I111lI11Il["Text"]
        I111lI11Il["Text"] = lIlII111Il(II1llI11Il["Discord"]) and "Link copiado" or ll11lI11Il
        task["delay"](1.1, function()
            if I111lI11Il and I111lI11Il["Parent"] then
                I111lI11Il["Text"] = ll11lI11Il
            end
        end)
    end)
    createTextButton(ll11lI11Il, "YouTube", function(I111lI11Il)
        local ll11lI11Il = I111lI11Il["Text"]
        I111lI11Il["Text"] = lIlII111Il(II1llI11Il["YouTube"]) and "Link copiado" or ll11lI11Il
        task["delay"](1.1, function()
            if I111lI11Il and I111lI11Il["Parent"] then
                I111lI11Il["Text"] = ll11lI11Il
            end
        end)
    end)
    local llIllI11Il = 0
    IllllI11Il(Il11lI11Il["RenderStepped"]:Connect(function()
        llIllI11Il = llIllI11Il + 1
    end))
    getSendMuscleEventI111L11Il("infoUpdater", function()
        local ll11lI11Il = tick()
        while ll1llI11Il["running"] do
            task["wait"](1)
            local Il11lI11Il = tick()
            local IIl1lI11Il = llIllI11Il
            llIllI11Il = 0
            local I1l1lI11Il = math["floor"](IIl1lI11Il / math["max"](Il11lI11Il - ll11lI11Il, 0.001) + 0.5)
            local lll1lI11Il = I1l1lI11Il >= 55 and l11llI11Il["green"] or I1l1lI11Il >= 30 and l11llI11Il["orange"] or l11llI11Il["red"]
            ll1llI11Il["currentFps"] = I1l1lI11Il
            lIl1lI11Il["Text"] = tostring(I1l1lI11Il)
            lIl1lI11Il["TextColor3"] = lll1lI11Il
            if l1l1lI11Il then
                l1l1lI11Il["BackgroundColor3"] = lll1lI11Il
                local I111lI11Il = l1l1lI11Il:FindFirstChildOfClass("UIStroke")
                if I111lI11Il then
                    I111lI11Il["Color"] = lll1lI11Il
                end
            end
            ll11lI11Il = Il11lI11Il
            local lIIllI11Il = isCachedPingValid()
            local IIIllI11Il = ll1llI11Il["pingStatusColor"](lIIllI11Il)
            Ill1lI11Il["Text"] = tostring(lIIllI11Il) .. " ms"
            Ill1lI11Il["TextColor3"] = IIIllI11Il
            if statusDot then
                statusDot["BackgroundColor3"] = IIIllI11Il
                local I111lI11Il = statusDot:FindFirstChildOfClass("UIStroke")
                if I111lI11Il then
                    I111lI11Il["Color"] = IIIllI11Il
                end
            end
            data["Text"] = tostring(#I111lI11Il:GetPlayers()) .. ("/" .. tostring(I111lI11Il["MaxPlayers"]))
        end
    end)
end
do
    local I111lI11Il = I111l111Il["Main"]
    lll1l111Il(I111lI11Il, "MAIN")
    local l1l1lI11Il
    local I1l1lI11Il
    local Ill1lI11Il = false
    local lIIllI11Il = 0
    local function IIIllI11Il()
        local I111lI11Il = (tostring(l1l1lI11Il and l1l1lI11Il["Text"] or ll1llI11Il["mainSize"])):gsub(",", ".")
        local ll11lI11Il = tonumber(I111lI11Il)
        local Il11lI11Il = ll1llI11Il["mainSize"] or 2
        local lIl1lI11Il = math["clamp"](math["floor"]((ll11lI11Il or Il11lI11Il) + 0.5), 1, 100)
        ll1llI11Il["mainSize"] = lIl1lI11Il
        if l1l1lI11Il then
            l1l1lI11Il["Text"] = tostring(lIl1lI11Il)
        end
        return lIl1lI11Il
    end
    local function handler()
        local I111lI11Il = ll11lI11Il:FindFirstChild("rEvents")
        local Il11lI11Il = I111lI11Il and I111lI11Il:FindFirstChild("changeSpeedSizeRemote")
        if not Il11lI11Il or Ill1lI11Il then
            return
        end
        local lIl1lI11Il = math["clamp"](math["floor"]((ll1llI11Il["mainSize"] or 2) + 0.5), 1, 100)
        Ill1lI11Il = true
        lIIllI11Il = lIIllI11Il + 1
        local IIl1lI11Il = lIIllI11Il
        task["spawn"](function()
            if Il11lI11Il:IsA("RemoteEvent") then
                pcall(Il11lI11Il["FireServer"], Il11lI11Il, "changeSize", lIl1lI11Il)
            else
                pcall(Il11lI11Il["InvokeServer"], Il11lI11Il, "changeSize", lIl1lI11Il)
            end
            if lIIllI11Il == IIl1lI11Il then
                Ill1lI11Il = false
            end
        end)
        task["delay"](0.8, function()
            if lIIllI11Il == IIl1lI11Il then
                Ill1lI11Il = false
            end
        end)
    end
    l1l1lI11Il = IlIll111Il(I111lI11Il, "Set Size (M\195\161ximo 100)", "Ejemplo: 2", function()
        IIIllI11Il()
        if ll1llI11Il["mainAutoSize"] then
            handler()
        end
    end)
    l1l1lI11Il["Text"] = "2"
    secondaryCreateTextButton(I111lI11Il, "Auto Set Size", function(I111lI11Il)
        IIIllI11Il()
        ll1llI11Il["mainAutoSize"] = I111lI11Il == true
        IIIII111Il("mainAutoSize")
        if ll1llI11Il["mainAutoSize"] then
            handler()
            getSendMuscleEventI111L11Il("mainAutoSize", function()
                while ll1llI11Il["running"] and ll1llI11Il["mainAutoSize"] do
                    handler()
                    task["wait"](0.1)
                end
            end)
        else
            lIIllI11Il = lIIllI11Il + 1
            Ill1lI11Il = false
        end
        return true
    end)
    local i111L11IlData = setmetatable({}, {
        ["__mode"] = "k"
    })
    local llIllI11Il = nil
    local IlIllI11Il = nil
    local lI1llI11Il = false
    local function II1llI11Il()
        local I111lI11Il = (tostring(I1l1lI11Il and I1l1lI11Il["Text"] or ll1llI11Il["mainSpeed"])):gsub(",", ".")
        local ll11lI11Il = tonumber(I111lI11Il)
        local Il11lI11Il = ll1llI11Il["mainSpeed"] or 800
        local lIl1lI11Il = math["max"](0, math["floor"]((ll11lI11Il or Il11lI11Il) + 0.5))
        ll1llI11Il["mainSpeed"] = lIl1lI11Il
        if I1l1lI11Il then
            I1l1lI11Il["Text"] = tostring(lIl1lI11Il)
        end
        return lIl1lI11Il
    end
    local function l11llI11Il()
        local I111lI11Il = IlIII111Il()
        if not I111lI11Il then
            return
        end
        if i111L11IlData[I111lI11Il] == nil then
            i111L11IlData[I111lI11Il] = I111lI11Il["WalkSpeed"]
        end
        if llIllI11Il ~= I111lI11Il then
            if IlIllI11Il then
                IlIllI11Il:Disconnect()
                IlIllI11Il = nil
            end
            llIllI11Il = I111lI11Il
            IlIllI11Il = (I111lI11Il:GetPropertyChangedSignal("WalkSpeed")):Connect(function()
                if ll1llI11Il["mainAutoSpeed"] and (not lI1llI11Il and (I111lI11Il["Parent"] and I111lI11Il["WalkSpeed"] ~= ll1llI11Il["mainSpeed"])) then
                    lI1llI11Il = true
                    I111lI11Il["WalkSpeed"] = ll1llI11Il["mainSpeed"]
                    lI1llI11Il = false
                end
            end)
        end
        if I111lI11Il["WalkSpeed"] ~= ll1llI11Il["mainSpeed"] then
            lI1llI11Il = true
            I111lI11Il["WalkSpeed"] = ll1llI11Il["mainSpeed"]
            lI1llI11Il = false
        end
    end
    local function I11llI11Il()
        if IlIllI11Il then
            IlIllI11Il:Disconnect()
            IlIllI11Il = nil
        end
        llIllI11Il = nil
        for I111lI11Il, ll11lI11Il in pairs(i111L11IlData) do
            if I111lI11Il and (I111lI11Il["Parent"] and not ll1llI11Il["fastSpeed"]) then
                I111lI11Il["WalkSpeed"] = ll11lI11Il
            end
        end
    end
    I1l1lI11Il = IlIll111Il(I111lI11Il, "Set Speed", "Ejemplo: 800", function()
        II1llI11Il()
        if ll1llI11Il["mainAutoSpeed"] then
            l11llI11Il()
        end
    end)
    I1l1lI11Il["Text"] = "800"
    secondaryCreateTextButton(I111lI11Il, "Auto Set Speed", function(I111lI11Il)
        II1llI11Il()
        ll1llI11Il["mainAutoSpeed"] = I111lI11Il == true
        IIIII111Il("mainAutoSpeed")
        if ll1llI11Il["mainAutoSpeed"] then
            l11llI11Il()
            getSendMuscleEventI111L11Il("mainAutoSpeed", function()
                while ll1llI11Il["running"] and ll1llI11Il["mainAutoSpeed"] do
                    l11llI11Il()
                    Il11lI11Il["Stepped"]:Wait()
                    l11llI11Il()
                    Il11lI11Il["RenderStepped"]:Wait()
                end
            end)
        else
            I11llI11Il()
        end
        return true
    end)
    llIll111Il(I111lI11Il, "Set Time", {
        "Day",
        "Night"
    }, function(I111lI11Il)
        lll1lI11Il["ClockTime"] = I111lI11Il == "Night" and 0 or 14
    end, function(ll11lI11Il)
        Il11lI11Il["Heartbeat"]:Wait()
        Il11lI11Il["Heartbeat"]:Wait()
        local IIl1lI11Il = math["max"](0, I111lI11Il["AbsoluteCanvasSize"]["Y"] - I111lI11Il["AbsoluteSize"]["Y"])
        local l1l1lI11Il = ((ll11lI11Il["AbsolutePosition"]["Y"] - I111lI11Il["AbsolutePosition"]["Y"]) + I111lI11Il["CanvasPosition"]["Y"]) - 3
        ;(lIl1lI11Il:Create(I111lI11Il, TweenInfo["new"](0.18, Enum["EasingStyle"]["Quart"], Enum["EasingDirection"]["Out"]), {
            ["CanvasPosition"] = Vector2["new"](0, math["clamp"](l1l1lI11Il, 0, IIl1lI11Il))
        })):Play()
    end)
    secondaryCreateTextButton(I111lI11Il, "Infinite Jump", function(I111lI11Il)
        ll1llI11Il["infiniteJump"] = I111lI11Il == true
        return true
    end)
    IllllI11Il(IIl1lI11Il["JumpRequest"]:Connect(function()
        if ll1llI11Il["infiniteJump"] then
            local I111lI11Il = IlIII111Il()
            if I111lI11Il then
                I111lI11Il:ChangeState(Enum["HumanoidStateType"]["Jumping"])
            end
        end
    end))
    lIIII111Il(function()
        ll1llI11Il["mainAutoSize"] = false
        ll1llI11Il["mainAutoSpeed"] = false
        ll1llI11Il["infiniteJump"] = false
        lIIllI11Il = lIIllI11Il + 1
        Ill1lI11Il = false
        IIIII111Il("mainAutoSize")
        IIIII111Il("mainAutoSpeed")
        I11llI11Il()
    end)
end
do
    local I111lI11Il = I111l111Il["Fast Glitch 100%"]
    lll1l111Il(I111lI11Il, "FAST GLITCH 100%")
    local ll11lI11Il = {}
    local Il11lI11Il = false
    secondaryCreateTextButton(I111lI11Il, "Fast Punch ", function(I111lI11Il)
        I111I111Il(I111lI11Il)
        Il11lI11Il = true
        for ll11lI11Il, Il11lI11Il in ipairs(ll11lI11Il) do
            if not I111lI11Il then
                Il11lI11Il:Set(false, true)
            end
            Il11lI11Il:SetLocked(not I111lI11Il)
        end
        Il11lI11Il = false
    end)
    secondaryCreateTextButton(I111lI11Il, "Ocultar Durabilidad", function(I111lI11Il)
        I1llI111Il(I111lI11Il)
    end)
    local lIl1lI11Il = Instance["new"]("Frame")
    lIl1lI11Il["LayoutOrder"] = IIl1l111Il(I111lI11Il)
    lIl1lI11Il["Parent"] = I111lI11Il
    Ill1l111Il(lIl1lI11Il, 48)
    local IIl1lI11Il = Instance["new"]("Frame")
    IIl1lI11Il["Size"] = UDim2["fromOffset"](3, 28)
    IIl1lI11Il["Position"] = UDim2["new"](0, 8, 0.5, -14)
    IIl1lI11Il["BackgroundColor3"] = l11llI11Il["red"]
    IIl1lI11Il["BackgroundTransparency"] = 0.02
    IIl1lI11Il["BorderSizePixel"] = 0
    IIl1lI11Il["ZIndex"] = 12
    IIl1lI11Il["Parent"] = lIl1lI11Il
    ;(Instance["new"]("UICorner", IIl1lI11Il))["CornerRadius"] = UDim["new"](1, 0)
    local l1l1lI11Il = Instance["new"]("TextLabel")
    l1l1lI11Il["Size"] = UDim2["new"](1, -32, 1, -8)
    l1l1lI11Il["Position"] = UDim2["fromOffset"](21, 4)
    l1l1lI11Il["BackgroundTransparency"] = 1
    l1l1lI11Il["Text"] = "Fue lindo mientras dur\195\179, Rip pets bug 2019 - 2026 \240\159\165\128."
    l1l1lI11Il["TextColor3"] = Color3["fromRGB"](225, 215, 220)
    l1l1lI11Il["Font"] = l11llI11Il["fontBold"]
    l1l1lI11Il["TextSize"] = 12
    l1l1lI11Il["TextWrapped"] = true
    l1l1lI11Il["TextXAlignment"] = Enum["TextXAlignment"]["Left"]
    l1l1lI11Il["TextYAlignment"] = Enum["TextYAlignment"]["Center"]
    l1l1lI11Il["ZIndex"] = 12
    l1l1lI11Il:SetAttribute("Young0xPreserveTextStyle", true)
    l1l1lI11Il["Parent"] = lIl1lI11Il
    lll1l111Il(I111lI11Il, "Rocks")
    for lIl1lI11Il, IIl1lI11Il in ipairs(II1llI11Il["Rocks"]) do
        local l1l1lI11Il = IIl1lI11Il
        local I1l1lI11Il
        I1l1lI11Il = secondaryCreateTextButton(I111lI11Il, l1l1lI11Il["name"], function(I111lI11Il)
            if Il11lI11Il then
                return
            end
            if I111lI11Il and not ll1llI11Il["fastPunch"] then
                return false
            end
            if I111lI11Il then
                fallbackHandler()
                Il11lI11Il = true
                for I111lI11Il, ll11lI11Il in ipairs(ll11lI11Il) do
                    if ll11lI11Il ~= I1l1lI11Il then
                        ll11lI11Il:Set(false, true)
                    end
                end
                Il11lI11Il = false
                l111I111Il(l1l1lI11Il, true)
            elseif ll1llI11Il["selectedRock"] == l1l1lI11Il then
                fallbackHandler()
            end
            return nil
        end)
        I1l1lI11Il:SetLocked(true)
        ll11lI11Il[#ll11lI11Il + 1] = I1l1lI11Il
    end
end
do
    local I111lI11Il = I111l111Il["Auto Farm"]
    lll1l111Il(I111lI11Il, "AUTO FARM")
    lllllI11Il["AutoFarmModeSelector"] = llIll111Il(I111lI11Il, "Modo", {
        "Chill Rep",
        "Fast Rep"
    }, function(I111lI11Il)
        ll1llI11Il["autoFarmMode"] = I111lI11Il == "Fast Rep" and "Fast Rep" or "Chill Rep"
    end)
    local ll11lI11Il
    ll11lI11Il = secondaryCreateTextButton(I111lI11Il, "\195\176\194\159\194\141\194\128 Auto Lift GAMEPASS \195\176\194\159\194\141\194\128", function(I111lI11Il)
        if not I111lI11Il then
            return false
        end
        local Il11lI11Il = lI1lI111Il()
        if Il11lI11Il then
            task["defer"](function()
                ll11lI11Il:Set(true, true)
                ll11lI11Il:SetFrozen(true)
            end)
        end
        return Il11lI11Il
    end)
    I1lllI11Il["AutoLiftGamepassToggle"] = ll11lI11Il
    local Il11lI11Il = {}
    local function lIl1lI11Il(ll11lI11Il, lIl1lI11Il, IIl1lI11Il, l1l1lI11Il)
        local I1l1lI11Il
        I1l1lI11Il = secondaryCreateTextButton(I111lI11Il, ll11lI11Il, function(I111lI11Il)
            if I111lI11Il then
                lllllI11Il["StopFastModesForManualFarm"]()
                lllllI11Il["StopMachineForExercise"]()
                for I111lI11Il, ll11lI11Il in ipairs(Il11lI11Il) do
                    if ll11lI11Il ~= I1l1lI11Il then
                        ll11lI11Il:Set(false)
                    end
                end
            end
            sendMuscleEvent(lIl1lI11Il, I111lI11Il, IIl1lI11Il, l1l1lI11Il)
        end)
        Il11lI11Il[#Il11lI11Il + 1] = I1l1lI11Il
    end
    lIl1lI11Il("\195\176\194\159\194\143\194\139\195\175\194\184\194\143 Auto Weight \195\176\194\159\194\143\194\139\195\175\194\184\194\143", "autoWeight", {
        "Weight"
    }, 0.01)
    lIl1lI11Il("\195\176\194\159\194\164\194\184 Auto Handstands \195\176\194\159\194\164\194\184", "autoHandstands", {
        "Handstands",
        "Handstand"
    }, 0.01)
    lIl1lI11Il("\195\176\194\159\194\146\194\170 Auto Pushups \195\176\194\159\194\146\194\170", "autoLift", {
        "Pushup",
        "Pushups"
    }, 0.01)
    lIl1lI11Il("\195\176\194\159\194\167\194\152 Auto Situps \195\176\194\159\194\167\194\152", "autoSitups", {
        "Situps",
        "Situp"
    }, 0.01)
    lllllI11Il["RepToggles"] = Il11lI11Il
    secondaryCreateTextButton(I111lI11Il, "\195\176\194\159\194\165\194\154 Auto Egg (30mins) \195\176\194\159\194\165\194\154", function(I111lI11Il)
        ll1llI11Il["setAutoEgg"](I111lI11Il)
    end)
    lllllI11Il["HideFramesToggle"] = secondaryCreateTextButton(I111lI11Il, "\195\176\194\159\194\153\194\136 Ocultar Frames \195\176\194\159\194\153\194\136", function(I111lI11Il)
        lIII1111Il(I111lI11Il)
    end)
    local IIl1lI11Il = {}
    local l1l1lI11Il
    for ll11lI11Il, Il11lI11Il in ipairs(II1llI11Il["Machines"]) do
        local lIl1lI11Il = Il11lI11Il
        lIl1lI11Il["autoFarm"] = true
        lIl1lI11Il["repInterval"] = 0.025
        local I1l1lI11Il
        if lIl1lI11Il["section"] ~= l1l1lI11Il then
            l1l1lI11Il = lIl1lI11Il["section"]
            lll1l111Il(I111lI11Il, l1l1lI11Il)
            if l1l1lI11Il == "Muscle King Machines" then
                lIIll111Il(I111lI11Il, "Requisito:", "Muscle King actual", l11llI11Il["yellow"])
            end
        end
        I1l1lI11Il = secondaryCreateTextButton(I111lI11Il, lIl1lI11Il["label"], function(I111lI11Il)
            if lllllI11Il["machineToggleSync"] then
                return
            end
            if I111lI11Il then
                lllllI11Il["SelectMachineToggle"](I1l1lI11Il)
                I11I1111Il(lIl1lI11Il, true)
            elseif ll1llI11Il["machine"] == lIl1lI11Il then
                I11I1111Il(lIl1lI11Il, false)
            end
        end)
        IIl1lI11Il[#IIl1lI11Il + 1] = I1l1lI11Il
        lllllI11Il["RegisterMachineToggle"](lIl1lI11Il, I1l1lI11Il)
    end
    lllllI11Il["MachineToggles"] = IIl1lI11Il
end
do
    local I111lI11Il = I111l111Il["Full Train"]
    I111lI11Il:SetAttribute("TightCanvas", true)
    lll1l111Il(I111lI11Il, "Full Train")
    lllllI11Il["FullTrainModeSelector"] = llIll111Il(I111lI11Il, "Modo", {
        "Chill Rep",
        "Fast Rep"
    }, function(I111lI11Il)
        ll1llI11Il["fullTrainMode"] = I111lI11Il == "Fast Rep" and "Fast Rep" or "Chill Rep"
    end)
    lllllI11Il["BuildFullTrainMachines"]()
    local ll11lI11Il = {}
    local Il11lI11Il
    for lIl1lI11Il, IIl1lI11Il in ipairs(II1llI11Il["FullTrainMachines"]) do
        local l1l1lI11Il = IIl1lI11Il
        l1l1lI11Il["fullTrain"] = true
        l1l1lI11Il["repInterval"] = 0.025
        if l1l1lI11Il["section"] ~= Il11lI11Il then
            Il11lI11Il = l1l1lI11Il["section"]
            lll1l111Il(I111lI11Il, Il11lI11Il)
            if Il11lI11Il == "Muscle King" then
                lIIll111Il(I111lI11Il, "Requisito:", "Muscle King actual", l11llI11Il["yellow"])
            end
        end
        local I1l1lI11Il
        I1l1lI11Il = secondaryCreateTextButton(I111lI11Il, l1l1lI11Il["label"], function(I111lI11Il)
            if lllllI11Il["machineToggleSync"] then
                return
            end
            if I111lI11Il then
                lllllI11Il["SelectMachineToggle"](I1l1lI11Il)
                I11I1111Il(l1l1lI11Il, true)
            elseif ll1llI11Il["machine"] == l1l1lI11Il then
                I11I1111Il(l1l1lI11Il, false)
            end
        end)
        ll11lI11Il[#ll11lI11Il + 1] = I1l1lI11Il
        lllllI11Il["RegisterMachineToggle"](l1l1lI11Il, I1l1lI11Il)
    end
    lllllI11Il["FullTrainToggles"] = ll11lI11Il
end
local II1ll111Il
II1ll111Il = function()
    local I111lI11Il = I111l111Il["Fast Farm"]
    I111lI11Il:SetAttribute("TightCanvas", true)
    local ll11lI11Il = lll1l111Il(I111lI11Il, "FAST FARM")
    ll11lI11Il["Parent"]["Size"] = UDim2["new"](1, 0, 0, 15)
    ll11lI11Il["Size"] = UDim2["fromOffset"](0, 15)
    local Il11lI11Il = Instance["new"]("Frame")
    Il11lI11Il["Size"] = UDim2["fromScale"](1, 1)
    Il11lI11Il["BackgroundColor3"] = l11llI11Il["black"]
    Il11lI11Il["BackgroundTransparency"] = 0.22
    Il11lI11Il["BorderSizePixel"] = 0
    Il11lI11Il["Visible"] = false
    Il11lI11Il["ZIndex"] = 120
    Il11lI11Il["Parent"] = frame
    Il11lI11Il["ClipsDescendants"] = true
    ;(Instance["new"]("UICorner", Il11lI11Il))["CornerRadius"] = UDim["new"](0, 13)
    local IIl1lI11Il = Instance["new"]("Frame")
    IIl1lI11Il["AnchorPoint"] = Vector2["new"](0.5, 0.5)
    IIl1lI11Il["Size"] = UDim2["new"](1, -54, 0, 188)
    IIl1lI11Il["Position"] = UDim2["fromScale"](0.5, 0.5)
    IIl1lI11Il["BackgroundColor3"] = l11llI11Il["panel"]
    IIl1lI11Il["BackgroundTransparency"] = 0.02
    IIl1lI11Il["BorderSizePixel"] = 0
    IIl1lI11Il["ZIndex"] = 121
    IIl1lI11Il["Parent"] = Il11lI11Il
    ;(Instance["new"]("UICorner", IIl1lI11Il))["CornerRadius"] = UDim["new"](0, 12)
    local l1l1lI11Il = Instance["new"]("UISizeConstraint", IIl1lI11Il)
    l1l1lI11Il["MaxSize"] = Vector2["new"](390, 188)
    local I1l1lI11Il = Instance["new"]("UIStroke", IIl1lI11Il)
    I1l1lI11Il["ApplyStrokeMode"] = Enum["ApplyStrokeMode"]["Border"]
    I1l1lI11Il["Color"] = l11llI11Il["cyan"]
    I1l1lI11Il["Thickness"] = 2
    I1l1lI11Il["Transparency"] = 0.04
    local lll1lI11Il = Instance["new"]("TextLabel")
    lll1lI11Il["Size"] = UDim2["new"](1, -24, 0, 42)
    lll1lI11Il["Position"] = UDim2["fromOffset"](12, 10)
    lll1lI11Il["BackgroundTransparency"] = 1
    lll1lI11Il["Text"] = "FAST FARM"
    lll1lI11Il["TextColor3"] = l11llI11Il["cyan"]
    lll1lI11Il["Font"] = l11llI11Il["fontBold"]
    lll1lI11Il["TextSize"] = 18
    lll1lI11Il["ZIndex"] = 122
    lll1lI11Il["Parent"] = IIl1lI11Il
    local Ill1lI11Il = Instance["new"]("TextLabel")
    Ill1lI11Il["Size"] = UDim2["new"](1, -34, 0, 70)
    Ill1lI11Il["Position"] = UDim2["fromOffset"](17, 48)
    Ill1lI11Il["BackgroundTransparency"] = 1
    Ill1lI11Il["Text"] = "Necesit\195\161s 7 u 8 packs para usar estas opciones.\\nSi no los ten\195\169s, lo mejor es no activarlas."
    Ill1lI11Il["TextColor3"] = l11llI11Il["white"]
    Ill1lI11Il["Font"] = I11llI11Il
    Ill1lI11Il["TextSize"] = 13
    Ill1lI11Il["TextWrapped"] = true
    Ill1lI11Il["ZIndex"] = 122
    Ill1lI11Il["Parent"] = IIl1lI11Il
    local lIIllI11Il = Instance["new"]("UIScale", IIl1lI11Il)
    lIIllI11Il["Scale"] = 0.94
    local IIIllI11Il = Instance["new"]("TextButton")
    IIIllI11Il["Size"] = UDim2["new"](0.5, -20, 0, 42)
    IIIllI11Il["Position"] = UDim2["new"](0, 14, 1, -54)
    IIIllI11Il["BackgroundColor3"] = l11llI11Il["tabOn"]
    IIIllI11Il["BorderSizePixel"] = 0
    IIIllI11Il["Text"] = "Continuar"
    IIIllI11Il["TextColor3"] = l11llI11Il["white"]
    IIIllI11Il["Font"] = I11llI11Il
    IIIllI11Il["TextSize"] = 13
    IIIllI11Il["AutoButtonColor"] = false
    IIIllI11Il["ZIndex"] = 123
    IIIllI11Il["Parent"] = IIl1lI11Il
    ;(Instance["new"]("UICorner", IIIllI11Il))["CornerRadius"] = UDim["new"](0, 8)
    local uiStroke = Instance["new"]("UIStroke", IIIllI11Il)
    uiStroke["Color"] = l11llI11Il["cyan"]
    uiStroke["Transparency"] = 0.15
    local parent = Instance["new"]("TextButton")
    parent["Size"] = UDim2["new"](0.5, -20, 0, 42)
    parent["Position"] = UDim2["new"](0.5, 6, 1, -54)
    parent["BackgroundColor3"] = l11llI11Il["row"]
    parent["BorderSizePixel"] = 0
    parent["Text"] = "Salir"
    parent["TextColor3"] = l11llI11Il["white"]
    parent["Font"] = I11llI11Il
    parent["TextSize"] = 13
    parent["AutoButtonColor"] = false
    parent["ZIndex"] = 123
    parent["Parent"] = IIl1lI11Il
    ;(Instance["new"]("UICorner", parent))["CornerRadius"] = UDim["new"](0, 8)
    local llIllI11Il = Instance["new"]("UIStroke", parent)
    llIllI11Il["Color"] = l11llI11Il["blue"]
    llIllI11Il["Transparency"] = 0.35
    local IlIllI11Il = nil
    local function lI1llI11Il()
        IlIllI11Il = nil
        ;(lIl1lI11Il:Create(lIIllI11Il, TweenInfo["new"](0.12, Enum["EasingStyle"]["Quad"], Enum["EasingDirection"]["In"]), {
            ["Scale"] = 0.94
        })):Play()
        task["delay"](0.12, function()
            if not IlIllI11Il then
                Il11lI11Il["Visible"] = false
            end
        end)
    end
    local function II1llI11Il(I111lI11Il)
        IlIllI11Il = I111lI11Il
        Il11lI11Il["Visible"] = true
        lIIllI11Il["Scale"] = 0.94
        ;(lIl1lI11Il:Create(lIIllI11Il, TweenInfo["new"](0.18, Enum["EasingStyle"]["Back"], Enum["EasingDirection"]["Out"]), {
            ["Scale"] = 1
        })):Play()
    end
    IllllI11Il(IIIllI11Il["Activated"]:Connect(function()
        local I111lI11Il = IlIllI11Il
        if not I111lI11Il then
            return
        end
        lllllI11Il["warningAccepted"] = true
        lI1llI11Il()
        task["defer"](I111lI11Il)
    end))
    IllllI11Il(parent["Activated"]:Connect(lI1llI11Il))
    IllllI11Il(IIIllI11Il["MouseEnter"]:Connect(function()
        (lIl1lI11Il:Create(IIIllI11Il, TweenInfo["new"](0.1), {
            ["BackgroundColor3"] = l11llI11Il["blue"]
        })):Play()
    end))
    IllllI11Il(IIIllI11Il["MouseLeave"]:Connect(function()
        (lIl1lI11Il:Create(IIIllI11Il, TweenInfo["new"](0.1), {
            ["BackgroundColor3"] = l11llI11Il["tabOn"]
        })):Play()
    end))
    IllllI11Il(parent["MouseEnter"]:Connect(function()
        (lIl1lI11Il:Create(parent, TweenInfo["new"](0.1), {
            ["BackgroundColor3"] = l11llI11Il["rowHover"]
        })):Play()
    end))
    IllllI11Il(parent["MouseLeave"]:Connect(function()
        (lIl1lI11Il:Create(parent, TweenInfo["new"](0.1), {
            ["BackgroundColor3"] = l11llI11Il["row"]
        })):Play()
    end))
    local Il1llI11Il
    local lIlllI11Il
    local function IIlllI11Il(I111lI11Il, ll11lI11Il, Il11lI11Il)
        if not lllllI11Il["warningAccepted"] then
            II1llI11Il(function()
                if I111lI11Il and I111lI11Il:Get() == false then
                    I111lI11Il:Set(true)
                end
            end)
            return false
        end
        if ll11lI11Il then
            ll11lI11Il:Set(false)
        end
        return lllllI11Il:Start(Il11lI11Il)
    end
    Il1llI11Il = secondaryCreateTextButton(I111lI11Il, "Fast Rebirth", function(I111lI11Il)
        if I111lI11Il then
            return IIlllI11Il(Il1llI11Il, lIlllI11Il, "rebirth")
        elseif lllllI11Il["mode"] == "rebirth" then
            lllllI11Il:Stop(true)
        end
        return nil
    end)
    Il1llI11Il["Button"]["Size"] = UDim2["new"](1, 0, 0, 38)
    lllllI11Il["RebirthToggle"] = Il1llI11Il
    lIlllI11Il = secondaryCreateTextButton(I111lI11Il, "Fast Strength", function(I111lI11Il)
        if I111lI11Il then
            return IIlllI11Il(lIlllI11Il, Il1llI11Il, "strength")
        elseif lllllI11Il["mode"] == "strength" then
            lllllI11Il:Stop(true)
        end
        return nil
    end)
    lIlllI11Il["Button"]["Size"] = UDim2["new"](1, 0, 0, 38)
    lllllI11Il["StrengthToggle"] = lIlllI11Il
    local l1lllI11Il
    l1lllI11Il = secondaryCreateTextButton(I111lI11Il, "Mostrar Frames", function(I111lI11Il)
        if lllllI11Il["mode"] ~= "strength" then
            return false
        end
        lllllI11Il["SetFarmFrames"](not I111lI11Il)
        return true
    end)
    l1lllI11Il["Button"]["Size"] = UDim2["new"](1, 0, 0, 38)
    l1lllI11Il["Button"]["Visible"] = false
    lllllI11Il["ShowFramesToggle"] = l1lllI11Il
    lllllI11Il["UpdateStrengthFramesControl"] = function(I111lI11Il)
        I111lI11Il = I111lI11Il == true
        l1lllI11Il["Button"]["Visible"] = I111lI11Il
        l1lllI11Il:Set(I111lI11Il and not ll1llI11Il["hideFrames"], true)
    end
    local I1lllI11Il, lIIII111Il, IIIII111Il = lIIll111Il(I111lI11Il, "Tiempo:", "0d 0h 0m 0s", l11llI11Il["white"])
    lIIII111Il["Size"] = UDim2["new"](1, 0, 0, 32)
    IIIII111Il["TextColor3"] = l11llI11Il["white"]
    IIIII111Il["TextSize"] = 12
    I1lllI11Il["TextSize"] = 12
    local textSizeData, llIII111Il, IlIII111Il = lIIll111Il(I111lI11Il, "Calculadora:", "0/h  \195\162\194\128\194\162  0/d  \195\162\194\128\194\162  0/w", l11llI11Il["white"])
    llIII111Il["Size"] = UDim2["new"](1, 0, 0, 32)
    llIII111Il["BackgroundTransparency"] = 0.02
    IlIII111Il["TextColor3"] = l11llI11Il["white"]
    IlIII111Il["TextSize"] = 13
    textSizeData["TextSize"] = 13
    textSizeData["TextColor3"] = l11llI11Il["white"]
    textSizeData["TextStrokeTransparency"] = 1
    local secondaryUiStroke = llIII111Il:FindFirstChildOfClass("UIStroke")
    if secondaryUiStroke then
        secondaryUiStroke["Color"] = l11llI11Il["cyan"]
        secondaryUiStroke["Transparency"] = 0.28
    end
    local secondaryParent = Instance["new"]("Frame")
    secondaryParent["LayoutOrder"] = IIl1l111Il(I111lI11Il)
    secondaryParent["Parent"] = I111lI11Il
    Ill1l111Il(secondaryParent, 84)
    local function l11II111Il(I111lI11Il, ll11lI11Il)
        local Il11lI11Il = Instance["new"]("TextLabel")
        Il11lI11Il["Size"] = UDim2["new"](0.5, -14, 0, 24)
        Il11lI11Il["Position"] = UDim2["new"](ll11lI11Il, ll11lI11Il == 0 and 9 or 5, 0, 4)
        Il11lI11Il["BackgroundTransparency"] = 1
        Il11lI11Il["Text"] = I111lI11Il
        Il11lI11Il["TextColor3"] = l11llI11Il["soft"]
        Il11lI11Il["Font"] = Enum["Font"]["GothamBold"]
        Il11lI11Il["TextSize"] = 11
        Il11lI11Il["TextXAlignment"] = Enum["TextXAlignment"]["Center"]
        Il11lI11Il["ZIndex"] = 12
        Il11lI11Il:SetAttribute("Young0xPreserveTextStyle", true)
        Il11lI11Il["Parent"] = secondaryParent
        local lIl1lI11Il = Instance["new"]("TextLabel")
        lIl1lI11Il["Size"] = UDim2["new"](0.5, -14, 0, 42)
        lIl1lI11Il["Position"] = UDim2["new"](ll11lI11Il, ll11lI11Il == 0 and 9 or 5, 0, 29)
        lIl1lI11Il["BackgroundTransparency"] = 1
        lIl1lI11Il["Text"] = "0"
        lIl1lI11Il["TextColor3"] = l11llI11Il["white"]
        lIl1lI11Il["Font"] = Enum["Font"]["GothamBold"]
        lIl1lI11Il["TextScaled"] = true
        lIl1lI11Il["TextWrapped"] = false
        lIl1lI11Il["ZIndex"] = 12
        lIl1lI11Il:SetAttribute("Young0xPreserveTextStyle", true)
        lIl1lI11Il["Parent"] = secondaryParent
        local IIl1lI11Il = Instance["new"]("UITextSizeConstraint", lIl1lI11Il)
        IIl1lI11Il["MinTextSize"] = 11
        IIl1lI11Il["MaxTextSize"] = 20
        local l1l1lI11Il = Instance["new"]("TextLabel")
        l1l1lI11Il["Size"] = UDim2["new"](0.5, -20, 0, 20)
        l1l1lI11Il["Position"] = UDim2["new"](ll11lI11Il, ll11lI11Il == 0 and 12 or 8, 0, 54)
        l1l1lI11Il["BackgroundTransparency"] = 1
        l1l1lI11Il["Text"] = ""
        l1l1lI11Il["TextColor3"] = l11llI11Il["green"]
        l1l1lI11Il["Font"] = Enum["Font"]["GothamMedium"]
        l1l1lI11Il["TextScaled"] = true
        l1l1lI11Il["TextWrapped"] = false
        l1l1lI11Il["Visible"] = false
        l1l1lI11Il["ZIndex"] = 12
        l1l1lI11Il:SetAttribute("Young0xPreserveTextStyle", true)
        l1l1lI11Il["Parent"] = secondaryParent
        local I1l1lI11Il = Instance["new"]("UITextSizeConstraint", l1l1lI11Il)
        I1l1lI11Il["MinTextSize"] = 10
        I1l1lI11Il["MaxTextSize"] = 14
        return {
            ["Value"] = lIl1lI11Il,
            ["Gain"] = l1l1lI11Il
        }
    end
    local I11II111Il = l11II111Il("Strength:", 0)
    local l11Ii111IlResult = l11II111Il("Rebirths:", 0.5)
    local lIlII111Il = Instance["new"]("Frame")
    lIlII111Il["Size"] = UDim2["new"](0, 1, 1, -18)
    lIlII111Il["Position"] = UDim2["new"](0.5, 0, 0, 9)
    lIlII111Il["BackgroundColor3"] = l11llI11Il["cyan"]
    lIlII111Il["BackgroundTransparency"] = 0.68
    lIlII111Il["BorderSizePixel"] = 0
    lIlII111Il["ZIndex"] = 12
    lIlII111Il["Parent"] = secondaryParent
    local function IIlII111Il(I111lI11Il, ll11lI11Il, Il11lI11Il, lIl1lI11Il)
        I111lI11Il["Value"]["Text"] = ll11lI11Il
        I111lI11Il["Gain"]["Visible"] = lIl1lI11Il
        if lIl1lI11Il then
            I111lI11Il["Value"]["Position"] = UDim2["new"](I111lI11Il["Value"]["Position"]["X"]["Scale"], I111lI11Il["Value"]["Position"]["X"]["Offset"], 0, 25)
            I111lI11Il["Value"]["Size"] = UDim2["new"](0.5, -14, 0, 28)
            I111lI11Il["Gain"]["Text"] = "+" .. Il11lI11Il
        else
            I111lI11Il["Value"]["Position"] = UDim2["new"](I111lI11Il["Value"]["Position"]["X"]["Scale"], I111lI11Il["Value"]["Position"]["X"]["Offset"], 0, 27)
            I111lI11Il["Value"]["Size"] = UDim2["new"](0.5, -14, 0, 46)
            I111lI11Il["Gain"]["Text"] = ""
        end
    end
    local function l1lII111Il(I111lI11Il)
        I111lI11Il = math["max"](0, math["floor"](I111lI11Il or 0))
        local ll11lI11Il = math["floor"](I111lI11Il / 86400)
        local Il11lI11Il = math["floor"]((I111lI11Il % 86400) / 3600)
        local lIl1lI11Il = math["floor"]((I111lI11Il % 3600) / 60)
        local IIl1lI11Il = I111lI11Il % 60
        return string["format"]("%dd %dh %dm %ds", ll11lI11Il, Il11lI11Il, lIl1lI11Il, IIl1lI11Il)
    end
    local I1lII111Il = nil
    local lllII111Il = nil
    local IllII111Il = 0
    getSendMuscleEventI111L11Il("fastFarmStatsUI", function()
        while ll1llI11Il["running"] do
            local I111lI11Il = lllllI11Il:ReadStats()
            local ll11lI11Il = lllllI11Il["startStats"] or I111lI11Il
            local Il11lI11Il = math["max"](0, I111lI11Il["strength"] - (ll11lI11Il["strength"] or I111lI11Il["strength"]))
            local lIl1lI11Il = math["max"](0, I111lI11Il["rebirths"] - (ll11lI11Il["rebirths"] or I111lI11Il["rebirths"]))
            IIlII111Il(I11II111Il, lllllI11Il:FormatExactWithUnit(I111lI11Il["strength"]), lllllI11Il:FormatExactWithUnit(Il11lI11Il), Il11lI11Il > 0)
            IIlII111Il(l11Ii111IlResult, ll1llI11Il["formatExactWithUnit"](I111lI11Il["rebirths"]), ll1llI11Il["formatExactWithUnit"](lIl1lI11Il), lIl1lI11Il > 0)
            if I1lII111Il ~= lllllI11Il["mode"] then
                I1lII111Il = lllllI11Il["mode"]
                lllII111Il = nil
                IllII111Il = 0
            end
            if lllllI11Il["mode"] == "strength" and not lllllI11Il["startedAt"] then
                I1lllI11Il["Text"] = "0d 0h 0m 0s"
                textSizeData["Text"] = "0/h  \195\162\194\128\194\162  0/d  \195\162\194\128\194\162  0/w"
            elseif lllllI11Il["mode"] and lllllI11Il["startedAt"] then
                local I111lI11Il = clock()
                local ll11lI11Il = math["max"](I111lI11Il - lllllI11Il["startedAt"], 0)
                local IIl1lI11Il
                if lllllI11Il["pingPaused"] then
                    IIl1lI11Il = " Pausado por ping"
                else
                    IIl1lI11Il = lllllI11Il["mode"] == "rebirth" and "" or " Entrenando"
                end
                I1lllI11Il["Text"] = l1lII111Il(ll11lI11Il) .. IIl1lI11Il
                if ll11lI11Il >= 2 and I111lI11Il - IllII111Il >= 1.5 then
                    local IIl1lI11Il = lllllI11Il["mode"] == "rebirth" and lIl1lI11Il or Il11lI11Il
                    local l1l1lI11Il = (IIl1lI11Il * 3600) / ll11lI11Il
                    if lllII111Il == nil then
                        lllII111Il = l1l1lI11Il
                    else
                        lllII111Il = lllII111Il + (l1l1lI11Il - lllII111Il) * 0.12
                    end
                    IllII111Il = I111lI11Il
                end
                local l1l1lI11Il = lllII111Il or 0
                textSizeData["Text"] = lllllI11Il:FormatCompact(l1l1lI11Il) .. ("/h  \195\162\194\128\194\162  " .. (lllllI11Il:FormatCompact(l1l1lI11Il * 24) .. ("/d  \195\162\194\128\194\162  " .. (lllllI11Il:FormatCompact(l1l1lI11Il * 168) .. "/w"))))
            else
                I1lllI11Il["Text"] = "0d 0h 0m 0s"
                textSizeData["Text"] = "0/h  \195\162\194\128\194\162  0/d  \195\162\194\128\194\162  0/w"
            end
            task["wait"](0.25)
        end
    end)
end
II1ll111Il()
II1ll111Il = function()
    local I111lI11Il = I111l111Il["Teleports"]
    lll1l111Il(I111lI11Il, "Teleports")
    for ll11lI11Il, Il11lI11Il in ipairs(II1llI11Il["Teleports"]) do
        local lIl1lI11Il = Il11lI11Il
        createTextButton(I111lI11Il, lIl1lI11Il[1], function()
            local I111lI11Il = isI111L11IlValid()
            if I111lI11Il then
                I111lI11Il["CFrame"] = lIl1lI11Il["lookAt"] and CFrame["lookAt"](lIl1lI11Il[2], lIl1lI11Il["lookAt"]) or CFrame["new"](lIl1lI11Il[2])
            end
        end)
    end
    lIIII111Il(function()
        previousHandler(false)
    end)
end
II1ll111Il()
local function l11ll111Il()
    local ll11lI11Il = {}
    for I111lI11Il, Il11lI11Il in ipairs(I111lI11Il:GetPlayers()) do
        if Il11lI11Il ~= IIIllI11Il then
            ll11lI11Il[#ll11lI11Il + 1] = {
                ["label"] = Il11lI11Il["DisplayName"],
                ["name"] = Il11lI11Il["Name"],
                ["userId"] = Il11lI11Il["UserId"]
            }
        end
    end
    table["sort"](ll11lI11Il, function(I111lI11Il, ll11lI11Il)
        return I111lI11Il["label"]:lower() < ll11lI11Il["label"]:lower()
    end)
    return ll11lI11Il
end
II1ll111Il = function()
    local IIl1lI11Il = I111l111Il["Rebirths"]
    local l1l1lI11Il = {}
    local I1l1lI11Il = Vector3["new"](-8646, 13.25, -5738)
    local lll1lI11Il = 42
    local function Ill1lI11Il()
        local I111lI11Il = ll11lI11Il:FindFirstChild("rEvents")
        return I111lI11Il and I111lI11Il:FindFirstChild("rebirthRemote")
    end
    local function lIIllI11Il()
        local I111lI11Il = ll11lI11Il:FindFirstChild("rEvents")
        local Il11lI11Il = I111lI11Il and I111lI11Il:FindFirstChild("changeSpeedSizeRemote")
        if Il11lI11Il then
            pcall(Il11lI11Il["InvokeServer"], Il11lI11Il, "changeSize", 1)
        end
    end
    local function clamp(I111lI11Il)
        local ll11lI11Il = (tostring(I111lI11Il or "")):gsub("[^%d]", "")
        local Il11lI11Il = tonumber(ll11lI11Il)
        if not Il11lI11Il then
            return nil
        end
        return math["clamp"](math["floor"](Il11lI11Il), 0, 9007199254741000)
    end
    local function format(I111lI11Il)
        if not I111lI11Il or I111lI11Il ~= I111lI11Il or I111lI11Il == math["huge"] then
            return "Calculando..."
        end
        I111lI11Il = math["max"](0, math["floor"](I111lI11Il + 0.5))
        local ll11lI11Il = math["floor"](I111lI11Il / 86400)
        local Il11lI11Il = math["floor"]((I111lI11Il % 86400) / 3600)
        local lIl1lI11Il = math["floor"]((I111lI11Il % 3600) / 60)
        local IIl1lI11Il = I111lI11Il % 60
        if ll11lI11Il > 0 then
            return string["format"]("%dd %02dh %02dm", ll11lI11Il, Il11lI11Il, lIl1lI11Il)
        elseif Il11lI11Il > 0 then
            return string["format"]("%dh %02dm %02ds", Il11lI11Il, lIl1lI11Il, IIl1lI11Il)
        end
        return string["format"]("%dm %02ds", lIl1lI11Il, IIl1lI11Il)
    end
    local function llIllI11Il(I111lI11Il)
        if #I111lI11Il == 0 then
            return nil
        end
        local ll11lI11Il = table["clone"](I111lI11Il)
        table["sort"](ll11lI11Il)
        local Il11lI11Il = math["floor"]((#ll11lI11Il + 1) / 2)
        if #ll11lI11Il % 2 == 1 then
            return ll11lI11Il[Il11lI11Il]
        end
        return (ll11lI11Il[Il11lI11Il] + ll11lI11Il[Il11lI11Il + 1]) / 2
    end
    lll1l111Il(IIl1lI11Il, "REBIRTHS")
    do
        local I111lI11Il = Instance["new"]("Frame")
        I111lI11Il["LayoutOrder"] = IIl1l111Il(IIl1lI11Il)
        I111lI11Il["Parent"] = IIl1lI11Il
        Ill1l111Il(I111lI11Il, 62)
        local ll11lI11Il = Instance["new"]("TextLabel")
        ll11lI11Il["Size"] = UDim2["new"](1, -20, 0, 22)
        ll11lI11Il["Position"] = UDim2["fromOffset"](10, 3)
        ll11lI11Il["BackgroundTransparency"] = 1
        ll11lI11Il["Text"] = "CONTADOR DE RENAS"
        ll11lI11Il["TextColor3"] = l11llI11Il["cyan"]
        ll11lI11Il["Font"] = l11llI11Il["fontBold"]
        ll11lI11Il["TextSize"] = 12
        ll11lI11Il["TextXAlignment"] = Enum["TextXAlignment"]["Left"]
        ll11lI11Il["ZIndex"] = 12
        ll11lI11Il["Parent"] = I111lI11Il
        local Il11lI11Il = Instance["new"]("TextLabel")
        Il11lI11Il["Size"] = UDim2["new"](0.5, -12, 0, 25)
        Il11lI11Il["Position"] = UDim2["fromOffset"](11, 27)
        Il11lI11Il["BackgroundTransparency"] = 1
        Il11lI11Il["Text"] = "Rebirths: 0"
        Il11lI11Il["TextColor3"] = l11llI11Il["white"]
        Il11lI11Il["Font"] = I11llI11Il
        Il11lI11Il["TextSize"] = 14
        Il11lI11Il["TextXAlignment"] = Enum["TextXAlignment"]["Left"]
        Il11lI11Il["ZIndex"] = 12
        Il11lI11Il["Parent"] = I111lI11Il
        local lIl1lI11Il = Il11lI11Il:Clone()
        lIl1lI11Il["Size"] = UDim2["new"](0.5, -12, 0, 25)
        lIl1lI11Il["Position"] = UDim2["new"](0.5, 1, 0, 27)
        lIl1lI11Il["Text"] = ""
        lIl1lI11Il["TextXAlignment"] = Enum["TextXAlignment"]["Right"]
        lIl1lI11Il["Visible"] = false
        lIl1lI11Il["Parent"] = I111lI11Il
        local I1l1lI11Il = Il11lI11Il:Clone()
        I1l1lI11Il["Position"] = UDim2["fromOffset"](11, 54)
        I1l1lI11Il["Text"] = ""
        I1l1lI11Il["Visible"] = false
        I1l1lI11Il["Parent"] = I111lI11Il
        local lll1lI11Il = lIl1lI11Il:Clone()
        lll1lI11Il["Position"] = UDim2["new"](0.5, 1, 0, 54)
        lll1lI11Il["Text"] = ""
        lll1lI11Il["Visible"] = false
        lll1lI11Il["Parent"] = I111lI11Il
        local Ill1lI11Il = Instance["new"]("TextLabel")
        Ill1lI11Il["Size"] = UDim2["new"](1, -22, 0, 22)
        Ill1lI11Il["Position"] = UDim2["fromOffset"](11, 79)
        Ill1lI11Il["BackgroundTransparency"] = 1
        Ill1lI11Il["Text"] = ""
        Ill1lI11Il["TextColor3"] = l11llI11Il["dim"]
        Ill1lI11Il["Font"] = I11llI11Il
        Ill1lI11Il["TextSize"] = 12
        Ill1lI11Il["TextXAlignment"] = Enum["TextXAlignment"]["Center"]
        Ill1lI11Il["Visible"] = false
        Ill1lI11Il["ZIndex"] = 12
        Ill1lI11Il["Parent"] = I111lI11Il
        local lIIllI11Il = {
            ["samples"] = {},
            ["lastValue"] = nil,
            ["burstGain"] = 0,
            ["burstStartedAt"] = nil,
            ["lastPositiveAt"] = nil,
            ["previousBurstAt"] = nil,
            ["smoothedEta"] = nil,
            ["lastEtaUpdate"] = 0,
            ["rebirthSpendSerial"] = 0
        }
        l1l1lI11Il["summaryRow"] = I111lI11Il
        l1l1lI11Il["rebirthCountLabel"] = Il11lI11Il
        l1l1lI11Il["objectiveLabel"] = lIl1lI11Il
        l1l1lI11Il["remainingLabel"] = I1l1lI11Il
        l1l1lI11Il["etaLabel"] = lll1lI11Il
        l1l1lI11Il["cycleLabel"] = Ill1lI11Il
        l1l1lI11Il["estimator"] = lIIllI11Il
    end
    local function IlIllI11Il(I111lI11Il)
        local ll11lI11Il = l1l1lI11Il["estimator"]
        table["clear"](ll11lI11Il["samples"])
        ll11lI11Il["lastValue"] = I111lI11Il
        ll11lI11Il["burstGain"] = 0
        ll11lI11Il["burstStartedAt"] = nil
        ll11lI11Il["lastPositiveAt"] = nil
        ll11lI11Il["previousBurstAt"] = nil
        ll11lI11Il["smoothedEta"] = nil
        ll11lI11Il["lastEtaUpdate"] = 0
    end
    local function lI1llI11Il()
        local I111lI11Il = l1l1lI11Il["estimator"]
        if I111lI11Il["burstGain"] <= 0 or not I111lI11Il["burstStartedAt"] then
            return
        end
        if I111lI11Il["previousBurstAt"] then
            local ll11lI11Il = I111lI11Il["burstStartedAt"] - I111lI11Il["previousBurstAt"]
            if ll11lI11Il >= 0.08 and ll11lI11Il <= 3600 then
                I111lI11Il["samples"][#I111lI11Il["samples"] + 1] = {
                    ["interval"] = ll11lI11Il,
                    ["gain"] = I111lI11Il["burstGain"]
                }
                while #I111lI11Il["samples"] > 20 do
                    table["remove"](I111lI11Il["samples"], 1)
                end
            end
        end
        I111lI11Il["previousBurstAt"] = I111lI11Il["burstStartedAt"]
        I111lI11Il["burstGain"] = 0
        I111lI11Il["burstStartedAt"] = nil
        I111lI11Il["lastPositiveAt"] = nil
    end
    local function II1llI11Il(I111lI11Il, ll11lI11Il)
        local Il11lI11Il = l1l1lI11Il["estimator"]
        if Il11lI11Il["lastValue"] == nil then
            Il11lI11Il["lastValue"] = I111lI11Il
            return
        end
        local lIl1lI11Il = I111lI11Il - Il11lI11Il["lastValue"]
        Il11lI11Il["lastValue"] = I111lI11Il
        if lIl1lI11Il > 0 then
            if Il11lI11Il["burstGain"] == 0 then
                Il11lI11Il["burstStartedAt"] = ll11lI11Il
            end
            Il11lI11Il["burstGain"] = Il11lI11Il["burstGain"] + lIl1lI11Il
            Il11lI11Il["lastPositiveAt"] = ll11lI11Il
        elseif lIl1lI11Il < 0 then
            Il11lI11Il["rebirthSpendSerial"] = Il11lI11Il["rebirthSpendSerial"] + 1
            Il11lI11Il["burstGain"] = 0
            Il11lI11Il["burstStartedAt"] = nil
            Il11lI11Il["lastPositiveAt"] = nil
            Il11lI11Il["previousBurstAt"] = nil
        end
        if Il11lI11Il["lastPositiveAt"] and ll11lI11Il - Il11lI11Il["lastPositiveAt"] >= 0.85 then
            lI1llI11Il()
        end
    end
    local function Il1llI11Il()
        local I111lI11Il = l1l1lI11Il["estimator"]
        if #I111lI11Il["samples"] < 3 then
            return nil, nil, nil
        end
        local ll11lI11Il, Il11lI11Il = {}, {}
        for I111lI11Il, lIl1lI11Il in ipairs(I111lI11Il["samples"]) do
            ll11lI11Il[#ll11lI11Il + 1] = lIl1lI11Il["interval"]
            Il11lI11Il[#Il11lI11Il + 1] = lIl1lI11Il["gain"]
        end
        local lIl1lI11Il = llIllI11Il(ll11lI11Il)
        local IIl1lI11Il = llIllI11Il(Il11lI11Il)
        local I1l1lI11Il, lll1lI11Il, Ill1lI11Il = 0, 0, 0
        for ll11lI11Il, Il11lI11Il in ipairs(I111lI11Il["samples"]) do
            local l1l1lI11Il = Il11lI11Il["interval"] >= lIl1lI11Il * 0.45 and Il11lI11Il["interval"] <= lIl1lI11Il * 2.2
            local lIIllI11Il = Il11lI11Il["gain"] >= IIl1lI11Il * 0.4 and Il11lI11Il["gain"] <= IIl1lI11Il * 2.5
            if l1l1lI11Il and lIIllI11Il then
                local lIl1lI11Il = 0.45 + ll11lI11Il / #I111lI11Il["samples"]
                I1l1lI11Il = I1l1lI11Il + Il11lI11Il["gain"] * lIl1lI11Il
                lll1lI11Il = lll1lI11Il + Il11lI11Il["interval"] * lIl1lI11Il
                Ill1lI11Il = Ill1lI11Il + 1
            end
        end
        if Ill1lI11Il < 3 or lll1lI11Il <= 0 then
            return nil, lIl1lI11Il, IIl1lI11Il
        end
        return I1l1lI11Il / lll1lI11Il, lIl1lI11Il, IIl1lI11Il
    end
    local lIlllI11Il
    local IIlllI11Il
    local l1lllI11Il
    local I1lllI11Il
    local function lllllI11Il()
        local I111lI11Il = l11II111Il(IIIllI11Il, {
            "Rebirths",
            "Rebirth"
        })
        return math["max"](0, math["floor"](tonumber(I111lI11Il and I111lI11Il["Value"]) or 0))
    end
    local function IllllI11Il()
        return ll1llI11Il["rebirth"]["autoLift"] and (ll1llI11Il["rebirth"]["target"] ~= nil and (lllllI11Il() >= ll1llI11Il["rebirth"]["target"] and (not ll1llI11Il["rebirth"]["autoTarget"] and not ll1llI11Il["rebirth"]["ultimateRunning"])))
    end
    local function handleI111L11Il(I111lI11Il)
        local ll11lI11Il = llIII111Il()
        local Il11lI11Il = IIIllI11Il:FindFirstChild("Backpack")
        for I111lI11Il, lIl1lI11Il in ipairs(I111lI11Il) do
            local IIl1lI11Il = ll11lI11Il and ll11lI11Il:FindFirstChild(lIl1lI11Il) or Il11lI11Il and Il11lI11Il:FindFirstChild(lIl1lI11Il)
            if IIl1lI11Il and IIl1lI11Il:IsA("Tool") then
                return IIl1lI11Il
            end
        end
        return nil
    end
    local function isValid()
        local I111lI11Il = handleI111L11Il({
            "Pushups"
        })
        if not I111lI11Il then
            return false
        end
        local ll11lI11Il = I111lI11Il:FindFirstChild("requiredAmount")
        local Il11lI11Il = ll11lI11Il and ll11lI11Il:FindFirstChild("requiredType")
        local lIl1lI11Il = Il11lI11Il and tostring(Il11lI11Il["Value"]) or "Strength"
        local IIl1lI11Il = ll11lI11Il and tonumber(ll11lI11Il["Value"]) or 2000
        local l1l1lI11Il = l11II111Il(IIIllI11Il, {
            lIl1lI11Il
        })
        return l1l1lI11Il ~= nil and (tonumber(l1l1lI11Il["Value"]) or 0) >= IIl1lI11Il
    end
    local function handler(I111lI11Il)
        local ll11lI11Il = llIII111Il()
        local Il11lI11Il = IIIllI11Il:FindFirstChild("Backpack")
        local lIl1lI11Il = ll11lI11Il and ll11lI11Il:FindFirstChild(I111lI11Il)
        if lIl1lI11Il and (lIl1lI11Il:IsA("Tool") and Il11lI11Il) then
            pcall(function()
                lIl1lI11Il:Deactivate()
            end)
            pcall(function()
                lIl1lI11Il["Parent"] = Il11lI11Il
            end)
        end
    end
    local function lIlII111Il()
        if not IllllI11Il() or not isValid() then
            return false
        end
        if ll1llI11Il["rebirth"]["fastWeight"] and I1lllI11Il then
            I1lllI11Il:Set(false, false)
            ll1llI11Il["rebirth"]["autoLiftStartedWeight"] = false
        else
            handler("Weight")
            handler("Heavy Weight")
        end
        local I111lI11Il = handleI111L11Il({
            "Pushups"
        })
        local ll11lI11Il = IlIII111Il()
        local Il11lI11Il = llIII111Il()
        if not I111lI11Il or not ll11lI11Il or not Il11lI11Il then
            return false
        end
        if I111lI11Il["Parent"] ~= Il11lI11Il then
            pcall(function()
                ll11lI11Il:EquipTool(I111lI11Il)
            end)
        end
        if I111lI11Il["Parent"] ~= Il11lI11Il then
            return false
        end
        local lIl1lI11Il = IIIllI11Il:FindFirstChild("muscleEvent")
        if not lIl1lI11Il or not lIl1lI11Il:IsA("RemoteEvent") then
            return false
        end
        return pcall(function()
            I111lI11Il:Activate()
            lIl1lI11Il:FireServer("rep")
        end)
    end
    lll1l111Il(IIl1lI11Il, "HERRAMIENTAS")
    local IIlII111Il = "epicmuscle20"
    local function l1lII111Il()
        local I111lI11Il, ll11lI11Il = pcall(function()
            local I111lI11Il = l1111111Il
            local ll11lI11Il = I111lI11Il and (I111lI11Il["Data"] and I111lI11Il["Data"]["usedCodes"])
            if type(ll11lI11Il) ~= "table" then
                return false
            end
            for I111lI11Il, ll11lI11Il in pairs(ll11lI11Il) do
                if string["lower"](tostring(ll11lI11Il)) == IIlII111Il then
                    return true
                end
            end
            return false
        end)
        return I111lI11Il and ll11lI11Il == true
    end
    local function I1lII111Il(I111lI11Il)
        if ll1llI11Il["redeemingStarterCode"] then
            return
        end
        ll1llI11Il["redeemingStarterCode"] = true
        I111lI11Il["Text"] = "Canjeando..."
        local Il11lI11Il = ll11lI11Il:FindFirstChild("rEvents")
        local lIl1lI11Il = Il11lI11Il and Il11lI11Il:FindFirstChild("codeRemote")
        local IIl1lI11Il, l1l1lI11Il, I1l1lI11Il = false, false, nil
        if lIl1lI11Il and lIl1lI11Il:IsA("RemoteFunction") then
            IIl1lI11Il, l1l1lI11Il, I1l1lI11Il = pcall(lIl1lI11Il["InvokeServer"], lIl1lI11Il, IIlII111Il)
        end
        local lll1lI11Il = string["lower"](tostring(I1l1lI11Il or ""))
        local Ill1lI11Il = IIl1lI11Il and (l1l1lI11Il == true or string["find"](lll1lI11Il, "already used", 1, true) ~= nil)
        if Ill1lI11Il then
            I111lI11Il["Text"] = l1l1lI11Il == true and "C\195\179digo canjeado" or "C\195\179digo ya canjeado"
            I111lI11Il["TextColor3"] = l1l1lI11Il == true and l11llI11Il["green"] or l11llI11Il["soft"]
            task["delay"](0.4, function()
                if I111lI11Il and I111lI11Il["Parent"] then
                    I111lI11Il:Destroy()
                end
            end)
        else
            I111lI11Il["Text"] = "No se pudo canjear"
            I111lI11Il["TextColor3"] = l11llI11Il["red"]
            task["delay"](1, function()
                if I111lI11Il and I111lI11Il["Parent"] then
                    I111lI11Il["Text"] = "Canjear 2K de Fuerza"
                    I111lI11Il["TextColor3"] = l11llI11Il["white"]
                end
            end)
        end
        ll1llI11Il["redeemingStarterCode"] = false
    end
    ll1llI11Il["redeemStarterCode"] = I1lII111Il
    local lllII111Il
    if not l1lII111Il() then
        lllII111Il = createTextButton(IIl1lI11Il, "Canjear 2K de Fuerza", I1lII111Il)
        lllII111Il["Name"] = "StarterCode"
        getSendMuscleEventI111L11Il("starterCodeStatus", function()
            for I111lI11Il = 1, 40, 1 do
                if l1lII111Il() then
                    if lllII111Il and lllII111Il["Parent"] then
                        lllII111Il:Destroy()
                    end
                    return
                end
                task["wait"](0.25)
            end
        end)
    end
    secondaryCreateTextButton(IIl1lI11Il, "Set Size 1", function(I111lI11Il)
        ll1llI11Il["rebirth"]["sizeOne"] = I111lI11Il == true
        IIIII111Il("rebirthSizeOne")
        if ll1llI11Il["rebirth"]["sizeOne"] then
            lIIllI11Il()
            getSendMuscleEventI111L11Il("rebirthSizeOne", function()
                while ll1llI11Il["running"] and ll1llI11Il["rebirth"]["sizeOne"] do
                    lIIllI11Il()
                    task["wait"](0.75)
                end
            end)
        end
        return true
    end)
    I1lllI11Il = secondaryCreateTextButton(IIl1lI11Il, "Pesa r\195\161pida", function(I111lI11Il)
        ll1llI11Il["rebirth"]["fastWeight"] = I111lI11Il == true
        sendMuscleEvent("rebirthFastWeight", ll1llI11Il["rebirth"]["fastWeight"], {
            "Weight",
            "Heavy Weight"
        }, 0.005)
        return true
    end)
    secondaryCreateTextButton(IIl1lI11Il, "Auto Pushups", function(I111lI11Il)
        ll1llI11Il["rebirth"]["autoLift"] = I111lI11Il == true
        IIIII111Il("rebirthAutoLift")
        if ll1llI11Il["rebirth"]["autoLift"] then
            ll1llI11Il["rebirth"]["autoLiftStartedWeight"] = false
            getSendMuscleEventI111L11Il("rebirthAutoLift", function()
                while ll1llI11Il["running"] and ll1llI11Il["rebirth"]["autoLift"] do
                    if IllllI11Il() then
                        if isValid() then
                            lIlII111Il()
                        elseif not ll1llI11Il["rebirth"]["fastWeight"] and I1lllI11Il then
                            ll1llI11Il["rebirth"]["autoLiftStartedWeight"] = true
                            I1lllI11Il:Set(true, false)
                        end
                    end
                    task["wait"](0.05)
                end
            end)
        else
            if ll1llI11Il["rebirth"]["autoLiftStartedWeight"] and (ll1llI11Il["rebirth"]["fastWeight"] and I1lllI11Il) then
                I1lllI11Il:Set(false, false)
            end
            ll1llI11Il["rebirth"]["autoLiftStartedWeight"] = false
            handler("Pushups")
        end
        return true
    end)
    secondaryCreateTextButton(IIl1lI11Il, "King", function(ll11lI11Il)
        ll1llI11Il["rebirth"]["king"] = ll11lI11Il == true
        IIIII111Il("rebirthKing")
        if ll1llI11Il["rebirth"]["king"] then
            getSendMuscleEventI111L11Il("rebirthKing", function()
                while ll1llI11Il["running"] and ll1llI11Il["rebirth"]["king"] do
                    local ll11lI11Il = isI111L11IlValid()
                    if ll11lI11Il and (ll11lI11Il["Position"] - I1l1lI11Il)["Magnitude"] > lll1lI11Il then
                        local Il11lI11Il = RaycastParams["new"]()
                        Il11lI11Il["FilterType"] = Enum["RaycastFilterType"]["Exclude"]
                        local lIl1lI11Il = {}
                        for I111lI11Il, ll11lI11Il in ipairs(I111lI11Il:GetPlayers()) do
                            if ll11lI11Il["Character"] then
                                lIl1lI11Il[#lIl1lI11Il + 1] = ll11lI11Il["Character"]
                            end
                        end
                        Il11lI11Il["FilterDescendantsInstances"] = lIl1lI11Il
                        Il11lI11Il["IgnoreWater"] = true
                        local IIl1lI11Il = I1l1lI11Il
                        local l1l1lI11Il = workspace:Raycast(I1l1lI11Il + Vector3["new"](0, 35, 0), Vector3["new"](0, -80, 0), Il11lI11Il)
                        if l1l1lI11Il then
                            IIl1lI11Il = Vector3["new"](I1l1lI11Il["X"], l1l1lI11Il["Position"]["Y"] + 3.1, I1l1lI11Il["Z"])
                        end
                        local lll1lI11Il = CFrame["new"](IIl1lI11Il)
                        if ll1llI11Il["rebirth"]["lockPosition"] then
                            ll1llI11Il["rebirth"]["lockCFrame"] = lll1lI11Il
                        end
                        ll11lI11Il["CFrame"] = lll1lI11Il
                        ll11lI11Il["AssemblyLinearVelocity"] = Vector3["zero"]
                        ll11lI11Il["AssemblyAngularVelocity"] = Vector3["zero"]
                    end
                    task["wait"](0.25)
                end
            end)
        end
        return true
    end)
    secondaryCreateTextButton(IIl1lI11Il, "Lock Position", function(I111lI11Il)
        ll1llI11Il["rebirth"]["lockPosition"] = I111lI11Il == true
        local ll11lI11Il = isI111L11IlValid()
        ll1llI11Il["rebirth"]["lockCFrame"] = ll1llI11Il["rebirth"]["lockPosition"] and (ll11lI11Il and ll11lI11Il["CFrame"]) or nil
        IIIII111Il("rebirthLock")
        if ll1llI11Il["rebirth"]["lockPosition"] and ll1llI11Il["rebirth"]["lockCFrame"] then
            getSendMuscleEventI111L11Il("rebirthLock", function()
                while ll1llI11Il["running"] and ll1llI11Il["rebirth"]["lockPosition"] do
                    local I111lI11Il = isI111L11IlValid()
                    if I111lI11Il and ll1llI11Il["rebirth"]["lockCFrame"] then
                        I111lI11Il["CFrame"] = ll1llI11Il["rebirth"]["lockCFrame"]
                        I111lI11Il["AssemblyLinearVelocity"] = Vector3["zero"]
                        I111lI11Il["AssemblyAngularVelocity"] = Vector3["zero"]
                    end
                    Il11lI11Il["Heartbeat"]:Wait()
                end
            end)
        end
        return true
    end)
    secondaryCreateTextButton(IIl1lI11Il, "Egg cada 30 minutos", function(I111lI11Il)
        ll1llI11Il["setAutoEgg"](I111lI11Il, "rebirth")
        return true
    end)
    lIlllI11Il = IlIll111Il(IIl1lI11Il, "Objetivo de renacimientos", "Ejemplo: 18,980", function(I111lI11Il)
        local ll11lI11Il = clamp(I111lI11Il)
        if ll11lI11Il and ll11lI11Il > 0 then
            ll1llI11Il["rebirth"]["target"] = ll11lI11Il
            lIlllI11Il["Text"] = (I11II111Il(ll11lI11Il)):gsub("%.", ",")
        elseif (tostring(I111lI11Il or "")):gsub("%s+", "") == "" then
            ll1llI11Il["rebirth"]["target"] = nil
            lIlllI11Il["Text"] = ""
        else
            lIlllI11Il["Text"] = ll1llI11Il["rebirth"]["target"] and (I11II111Il(ll1llI11Il["rebirth"]["target"])):gsub("%.", ",") or ""
        end
    end)
    lIlllI11Il["Text"] = ""
    local function IllII111Il(I111lI11Il, ll11lI11Il)
        if I111lI11Il == "target" then
            if ll11lI11Il and not ll1llI11Il["rebirth"]["target"] then
                return false
            end
            ll1llI11Il["rebirth"]["autoTarget"] = ll11lI11Il == true
            if ll1llI11Il["rebirth"]["autoTarget"] then
                ll1llI11Il["rebirth"]["infinite"] = false
                if l1lllI11Il and l1lllI11Il:Get() then
                    l1lllI11Il:Set(false, true)
                end
                local I111lI11Il = l11II111Il(IIIllI11Il, {
                    "Rebirths",
                    "Rebirth"
                })
                IlIllI11Il(tonumber(I111lI11Il and I111lI11Il["Value"]) or 0)
                task["defer"](function()
                    Il11lI11Il["Heartbeat"]:Wait()
                    ;(lIl1lI11Il:Create(IIl1lI11Il, TweenInfo["new"](0.2, Enum["EasingStyle"]["Quart"], Enum["EasingDirection"]["Out"]), {
                        ["CanvasPosition"] = Vector2["zero"]
                    })):Play()
                end)
            end
        elseif I111lI11Il == "infinite" then
            ll1llI11Il["rebirth"]["infinite"] = ll11lI11Il == true
            if ll1llI11Il["rebirth"]["infinite"] then
                ll1llI11Il["rebirth"]["autoTarget"] = false
                if IIlllI11Il and IIlllI11Il:Get() then
                    IIlllI11Il:Set(false, true)
                end
            end
        end
        IIIII111Il("rebirthLoop")
        if not ll1llI11Il["rebirth"]["autoTarget"] and not ll1llI11Il["rebirth"]["infinite"] then
            return true
        end
        getSendMuscleEventI111L11Il("rebirthLoop", function()
            while ll1llI11Il["running"] and (ll1llI11Il["rebirth"]["autoTarget"] or ll1llI11Il["rebirth"]["infinite"]) do
                local I111lI11Il = l11II111Il(IIIllI11Il, {
                    "Rebirths",
                    "Rebirth"
                })
                local ll11lI11Il = tonumber(I111lI11Il and I111lI11Il["Value"]) or 0
                if ll1llI11Il["rebirth"]["autoTarget"] and (ll1llI11Il["rebirth"]["target"] and ll11lI11Il >= ll1llI11Il["rebirth"]["target"]) then
                    ll1llI11Il["rebirth"]["autoTarget"] = false
                    if IIlllI11Il then
                        IIlllI11Il:Set(false, true)
                    end
                    break
                end
                local Il11lI11Il = Ill1lI11Il()
                if Il11lI11Il then
                    pcall(Il11lI11Il["InvokeServer"], Il11lI11Il, "rebirthRequest")
                end
                task["wait"](0.1)
            end
        end)
        return true
    end
    IIlllI11Il = secondaryCreateTextButton(IIl1lI11Il, "Renacer hasta el objetivo", function(I111lI11Il)
        return IllII111Il("target", I111lI11Il)
    end)
    l1lllI11Il = secondaryCreateTextButton(IIl1lI11Il, "Renacimientos infinitos", function(I111lI11Il)
        return IllII111Il("infinite", I111lI11Il)
    end)
    getSendMuscleEventI111L11Il("rebirthCounter", function()
        local I111lI11Il = l1l1lI11Il["estimator"]
        while ll1llI11Il["running"] and l1l1lI11Il["summaryRow"]["Parent"] do
            local ll11lI11Il = clock()
            local Il11lI11Il = l11II111Il(IIIllI11Il, {
                "Rebirths",
                "Rebirth"
            })
            local lIl1lI11Il = tonumber(Il11lI11Il and Il11lI11Il["Value"]) or 0
            if ll1llI11Il["rebirth"]["autoTarget"] then
                II1llI11Il(lIl1lI11Il, ll11lI11Il)
                if I111lI11Il["lastPositiveAt"] and ll11lI11Il - I111lI11Il["lastPositiveAt"] >= 0.85 then
                    lI1llI11Il()
                end
            else
                if I111lI11Il["lastValue"] and lIl1lI11Il < I111lI11Il["lastValue"] then
                    I111lI11Il["rebirthSpendSerial"] = I111lI11Il["rebirthSpendSerial"] + 1
                end
                I111lI11Il["lastValue"] = lIl1lI11Il
                I111lI11Il["burstGain"] = 0
                I111lI11Il["burstStartedAt"] = nil
                I111lI11Il["lastPositiveAt"] = nil
            end
            l1l1lI11Il["rebirthCountLabel"]["Text"] = "Rebirths: " .. I11II111Il(lIl1lI11Il)
            local IIl1lI11Il = ll1llI11Il["rebirth"]["autoTarget"] and ll1llI11Il["rebirth"]["target"] ~= nil
            local I1l1lI11Il = ll1llI11Il["rebirth"]["infinite"]
            l1l1lI11Il["objectiveLabel"]["Visible"] = ll1llI11Il["rebirth"]["target"] ~= nil and not I1l1lI11Il
            l1l1lI11Il["objectiveLabel"]["Text"] = ll1llI11Il["rebirth"]["target"] and "Objetivo: " .. I11II111Il(ll1llI11Il["rebirth"]["target"]) or ""
            l1l1lI11Il["remainingLabel"]["Visible"] = IIl1lI11Il
            l1l1lI11Il["etaLabel"]["Visible"] = IIl1lI11Il
            l1l1lI11Il["cycleLabel"]["Visible"] = IIl1lI11Il
            l1l1lI11Il["summaryRow"]["Size"] = UDim2["new"](1, 0, 0, IIl1lI11Il and 106 or 62)
            if IIl1lI11Il then
                local Il11lI11Il = math["max"](0, ll1llI11Il["rebirth"]["target"] - lIl1lI11Il)
                local IIl1lI11Il, I1l1lI11Il, lll1lI11Il = Il1llI11Il()
                local Ill1lI11Il = Il11lI11Il <= 0 and "Objetivo alcanzado" or "Calculando..."
                if IIl1lI11Il and Il11lI11Il > 0 then
                    local lIl1lI11Il = Il11lI11Il / IIl1lI11Il
                    if not I111lI11Il["smoothedEta"] then
                        I111lI11Il["smoothedEta"] = lIl1lI11Il
                        I111lI11Il["lastEtaUpdate"] = ll11lI11Il
                    elseif ll11lI11Il - I111lI11Il["lastEtaUpdate"] >= 2 then
                        local Il11lI11Il = math["abs"](lIl1lI11Il - I111lI11Il["smoothedEta"]) / math["max"](1, I111lI11Il["smoothedEta"])
                        local IIl1lI11Il = Il11lI11Il > 0.3 and 0.35 or 0.18
                        I111lI11Il["smoothedEta"] = I111lI11Il["smoothedEta"] * (1 - IIl1lI11Il) + lIl1lI11Il * IIl1lI11Il
                        I111lI11Il["lastEtaUpdate"] = ll11lI11Il
                    end
                    Ill1lI11Il = format(I111lI11Il["smoothedEta"])
                end
                l1l1lI11Il["remainingLabel"]["Text"] = "Faltan: " .. I11II111Il(Il11lI11Il)
                l1l1lI11Il["etaLabel"]["Text"] = "Tiempo: " .. Ill1lI11Il
                if I1l1lI11Il and lll1lI11Il then
                    l1l1lI11Il["cycleLabel"]["Text"] = "Ciclo: " .. (string["format"]("%.2fs", I1l1lI11Il) .. ("   \195\162\194\128\194\162   +" .. (I11II111Il(math["floor"](lll1lI11Il + 0.5)) .. ("   \195\162\194\128\194\162   Muestras: " .. #I111lI11Il["samples"]))))
                else
                    l1l1lI11Il["cycleLabel"]["Text"] = "Calculando ciclos: " .. (#I111lI11Il["samples"] .. "/3")
                end
            else
                l1l1lI11Il["remainingLabel"]["Text"] = ""
                l1l1lI11Il["etaLabel"]["Text"] = ""
                l1l1lI11Il["cycleLabel"]["Text"] = ""
            end
            task["wait"](0.25)
        end
    end)
    lIIII111Il(function()
        ll1llI11Il["rebirth"]["autoTarget"] = false
        ll1llI11Il["rebirth"]["infinite"] = false
        ll1llI11Il["rebirth"]["sizeOne"] = false
        ll1llI11Il["rebirth"]["autoLift"] = false
        ll1llI11Il["rebirth"]["autoLiftStartedWeight"] = false
        ll1llI11Il["rebirth"]["king"] = false
        ll1llI11Il["rebirth"]["lockPosition"] = false
        sendMuscleEvent("rebirthFastWeight", false, {
            "Weight",
            "Heavy Weight"
        })
        ll1llI11Il["setAutoEgg"](false, "rebirth")
        IIIII111Il("rebirthLoop")
        IIIII111Il("rebirthSizeOne")
        IIIII111Il("rebirthAutoLift")
        IIIII111Il("rebirthKing")
        handler("Pushups")
        IIIII111Il("rebirthLock")
    end)
end
II1ll111Il()
II1ll111Il = function()
    local I111lI11Il = I111l111Il["Rebirths"]
    local lIl1lI11Il = {
        {
            ["name"] = "+1 Daily Spin",
            ["max"] = 5
        },
        {
            ["name"] = "+1 Pet Slot",
            ["max"] = 3
        },
        {
            ["name"] = "+10 Item Capacity",
            ["max"] = 6
        },
        {
            ["name"] = "+5% Rep Speed",
            ["max"] = 10
        },
        {
            ["name"] = "Demon Damage",
            ["max"] = 5
        },
        {
            ["name"] = "Galaxy Gains",
            ["max"] = 5
        },
        {
            ["name"] = "Golden Rebirth",
            ["max"] = 5
        },
        {
            ["name"] = "Jungle Swift",
            ["max"] = 5
        },
        {
            ["name"] = "Muscle Mind",
            ["max"] = 5
        },
        {
            ["name"] = "Infernal Health",
            ["max"] = 5
        },
        {
            ["name"] = "x2 Chest Rewards",
            ["max"] = 5
        },
        {
            ["name"] = "x2 Quest Rewards",
            ["max"] = 3
        }
    }
    lll1l111Il(I111lI11Il, "ULTIMATES")
    local IIl1lI11Il = {}
    for I111lI11Il, ll11lI11Il in ipairs(lIl1lI11Il) do
        IIl1lI11Il[#IIl1lI11Il + 1] = {
            ["label"] = ll11lI11Il["name"],
            ["name"] = ll11lI11Il["name"],
            ["data"] = ll11lI11Il
        }
    end
    local l1l1lI11Il
    local I1l1lI11Il
    local lll1lI11Il
    local Ill1lI11Il
    local lIIllI11Il = nil
    local sum = 0
    local function handler(I111lI11Il, ll11lI11Il, Il11lI11Il)
        if not Ill1lI11Il then
            return
        end
        sum = sum + 1
        local lIl1lI11Il = sum
        if Ill1lI11Il then
            Ill1lI11Il["Text"] = I111lI11Il
        end
        if ll11lI11Il then
            task["delay"](ll11lI11Il, function()
                if lIl1lI11Il == sum and (not ll1llI11Il["rebirth"]["ultimateRunning"] and (Ill1lI11Il and Ill1lI11Il["Parent"])) then
                    Ill1lI11Il["Text"] = Il11lI11Il or "Esperando selecci\195\179n"
                end
            end)
        end
    end
    local function llIllI11Il(I111lI11Il)
        if not I111lI11Il then
            return 0
        end
        local ll11lI11Il = IlIllI11Il[I111lI11Il["name"]]
        local Il11lI11Il = ll11lI11Il and IIIllI11Il:GetAttribute(ll11lI11Il)
        if typeof(Il11lI11Il) == "number" then
            return math["max"](0, math["floor"](Il11lI11Il))
        end
        return 0
    end
    local function II1llI11Il(I111lI11Il)
        if not I111lI11Il then
            return 0
        end
        local ll11lI11Il = lI1llI11Il and lI1llI11Il:FindFirstChild(I111lI11Il["name"])
        local Il11lI11Il = ll11lI11Il and ll11lI11Il:FindFirstChild("maxUpgrades")
        local lIl1lI11Il = Il11lI11Il and (Il11lI11Il:IsA("ValueBase") and tonumber(Il11lI11Il["Value"]))
        return math["max"](0, math["floor"](lIl1lI11Il or tonumber(I111lI11Il["max"]) or 0))
    end
    local function I11llI11Il()
        local I111lI11Il = l1l1lI11Il and l1l1lI11Il:Get()
        return type(I111lI11Il) == "table" and I111lI11Il["data"] or nil
    end
    local function Il1llI11Il(I111lI11Il)
        local ll11lI11Il = math["max"](0, II1llI11Il(I111lI11Il) - llIllI11Il(I111lI11Il))
        if ll11lI11Il <= 0 then
            return {
                {
                    ["label"] = "M\195\161ximo",
                    ["amount"] = 0
                }
            }
        end
        local Il11lI11Il = {}
        for I111lI11Il = 1, ll11lI11Il, 1 do
            Il11lI11Il[#Il11lI11Il + 1] = I111lI11Il
        end
        return Il11lI11Il
    end
    local lIlllI11Il = false
    local function IIlllI11Il()
        local I111lI11Il = I11llI11Il()
        if not I111lI11Il then
            return
        end
        local ll11lI11Il = llIllI11Il(I111lI11Il)
        local Il11lI11Il = II1llI11Il(I111lI11Il)
        if lll1lI11Il then
            lll1lI11Il["Text"] = I11II111Il(ll11lI11Il) .. (" / " .. I11II111Il(Il11lI11Il))
        end
        if I1l1lI11Il then
            lIlllI11Il = true
            I1l1lI11Il:SetValues(Il1llI11Il(I111lI11Il), false)
            lIlllI11Il = false
        end
        lIIllI11Il = ll11lI11Il
    end
    l1l1lI11Il = llIll111Il(I111lI11Il, "Seleccionar Ultimate", IIl1lI11Il, function()
        if I1l1lI11Il then
            IIlllI11Il()
            if not ll1llI11Il["rebirth"]["ultimateRunning"] then
                local I111lI11Il = I11llI11Il()
                handler(I111lI11Il and "Seleccionado: " .. I111lI11Il["name"] or "Esperando selecci\195\179n", 5, "Esperando compra")
            end
        end
    end, function(ll11lI11Il)
        Il11lI11Il["Heartbeat"]:Wait()
        local lIl1lI11Il = math["max"](0, I111lI11Il["AbsoluteCanvasSize"]["Y"] - I111lI11Il["AbsoluteSize"]["Y"])
        local IIl1lI11Il = ((ll11lI11Il["AbsolutePosition"]["Y"] - I111lI11Il["AbsolutePosition"]["Y"]) + I111lI11Il["CanvasPosition"]["Y"]) - 3
        I111lI11Il["CanvasPosition"] = Vector2["new"](0, math["clamp"](IIl1lI11Il, 0, lIl1lI11Il))
    end)
    I1l1lI11Il = llIll111Il(I111lI11Il, "Cantidad a comprar", {
        1,
        2,
        3
    }, function(I111lI11Il)
        if lIlllI11Il then
            return
        end
        if not ll1llI11Il["rebirth"]["ultimateRunning"] then
            local ll11lI11Il = type(I111lI11Il) == "table" and I111lI11Il["amount"] or tonumber(I111lI11Il)
            if ll11lI11Il and ll11lI11Il > 0 then
                handler("Cantidad seleccionada: " .. I11II111Il(ll11lI11Il), 5, "Esperando compra")
            end
        end
    end)
    lll1lI11Il = lIIll111Il(I111lI11Il, "Nivel seleccionado", "0 / 0", l11llI11Il["cyan"])
    Ill1lI11Il = IIIll111Il(I111lI11Il, "Esperando selecci\195\179n")
    IIlllI11Il()
    createTextButton(I111lI11Il, "Comprar Ultimate", function(I111lI11Il)
        if ll1llI11Il["rebirth"]["ultimateRunning"] then
            ll1llI11Il["rebirth"]["ultimateRunning"] = false
            IIIII111Il("ultimateBuyer")
            I111lI11Il["Text"] = "Comprar Ultimate"
            handler("Compra cancelada", 7, "Esperando selecci\195\179n")
            return
        end
        local Il11lI11Il = I11llI11Il()
        local lIl1lI11Il = I1l1lI11Il:Get()
        local IIl1lI11Il = type(lIl1lI11Il) == "table" and lIl1lI11Il["amount"] or tonumber(lIl1lI11Il)
        if not Il11lI11Il or not IIl1lI11Il or IIl1lI11Il <= 0 then
            handler("Ultimate al m\195\161ximo", 7, "Esperando selecci\195\179n")
            return
        end
        IIl1lI11Il = math["min"](IIl1lI11Il, math["max"](0, II1llI11Il(Il11lI11Il) - llIllI11Il(Il11lI11Il)))
        ll1llI11Il["rebirth"]["ultimateRunning"] = true
        I111lI11Il["Text"] = "Cancelar compra"
        getSendMuscleEventI111L11Il("ultimateBuyer", function()
            local lIl1lI11Il = 0
            local l1l1lI11Il = nil
            while ll1llI11Il["running"] and (ll1llI11Il["rebirth"]["ultimateRunning"] and lIl1lI11Il < IIl1lI11Il) do
                local I111lI11Il = ll11lI11Il:FindFirstChild("rEvents")
                local I1l1lI11Il = I111lI11Il and I111lI11Il:FindFirstChild("ultimatesRemote")
                if not I1l1lI11Il then
                    l1l1lI11Il = "Remote de Ultimates no disponible"
                    break
                end
                local lll1lI11Il = llIllI11Il(Il11lI11Il)
                local Ill1lI11Il = II1llI11Il(Il11lI11Il)
                if lll1lI11Il >= Ill1lI11Il then
                    l1l1lI11Il = "Ultimate al m\195\161ximo"
                    break
                end
                handler("Comprando " .. (Il11lI11Il["name"] .. (" (" .. (lIl1lI11Il + 1 .. ("/" .. (IIl1lI11Il .. ")"))))))
                local lIIllI11Il, IIIllI11Il = pcall(I1l1lI11Il["InvokeServer"], I1l1lI11Il, "upgradeUltimate", Il11lI11Il["name"])
                if not lIIllI11Il or IIIllI11Il ~= true then
                    handler("Esperando renacimientos suficientes...")
                    task["wait"](0.8)
                else
                    local I111lI11Il = clock() + 8
                    local ll11lI11Il = false
                    while ll1llI11Il["running"] and (ll1llI11Il["rebirth"]["ultimateRunning"] and clock() < I111lI11Il) do
                        if llIllI11Il(Il11lI11Il) > lll1lI11Il then
                            ll11lI11Il = true
                            break
                        end
                        task["wait"](0.15)
                    end
                    if ll11lI11Il then
                        lIl1lI11Il = lIl1lI11Il + 1
                    else
                        handler("Esperando renacimientos suficientes...")
                        task["wait"](0.8)
                    end
                end
            end
            ll1llI11Il["rebirth"]["ultimateRunning"] = false
            if I111lI11Il and I111lI11Il["Parent"] then
                I111lI11Il["Text"] = "Comprar Ultimate"
            end
            IIlllI11Il()
            local I1l1lI11Il = l1l1lI11Il or lIl1lI11Il > 0 and "Compra completada: " .. lIl1lI11Il or "Sin cambios"
            handler(I1l1lI11Il, 7, "Esperando selecci\195\179n")
        end)
    end, l11llI11Il["row"], Color3["fromRGB"](71, 49, 22))
    getSendMuscleEventI111L11Il("ultimateCounter", function()
        while ll1llI11Il["running"] and I111lI11Il["Parent"] do
            local I111lI11Il = I11llI11Il()
            if I111lI11Il then
                local ll11lI11Il = llIllI11Il(I111lI11Il)
                if ll11lI11Il ~= lIIllI11Il then
                    IIlllI11Il()
                end
            end
            task["wait"](0.25)
        end
    end)
    lIIII111Il(function()
        ll1llI11Il["rebirth"]["ultimateRunning"] = false
        IIIII111Il("ultimateCounter")
        IIIII111Il("ultimateBuyer")
    end)
end
II1ll111Il()
II1ll111Il = function()
    local I111lI11Il = I111l111Il["Kills"]
    lll1l111Il(I111lI11Il, "KILLS")
    local ll11lI11Il = lIIll111Il(I111lI11Il, "Kills:", "0", l11llI11Il["cyan"])
    local IIl1lI11Il = lIIll111Il(I111lI11Il, "Kills de sesi\195\179n:", "+0", l11llI11Il["white"])
    ll1llI11Il["kill"]["updateSessionCounter"] = function(I111lI11Il)
        if IIl1lI11Il and IIl1lI11Il["Parent"] then
            IIl1lI11Il["Text"] = "+" .. I11II111Il(I111lI11Il or 0)
            IIl1lI11Il["TextColor3"] = l11llI11Il["white"]
        end
    end
    if type(ll1llI11Il["refreshKillSessionCounter"]) == "function" then
        ll1llI11Il["refreshKillSessionCounter"]()
    end
    local l1l1lI11Il
    local I1l1lI11Il
    local lll1lI11Il
    local Ill1lI11Il
    local lIIllI11Il
    local killServerHopToggle
    local killServerHopTimeSelector
    local function llIllI11Il(ll11lI11Il)
        Il11lI11Il["Heartbeat"]:Wait()
        Il11lI11Il["Heartbeat"]:Wait()
        local IIl1lI11Il = math["max"](0, I111lI11Il["AbsoluteCanvasSize"]["Y"] - I111lI11Il["AbsoluteSize"]["Y"])
        local l1l1lI11Il = ((ll11lI11Il["AbsolutePosition"]["Y"] - I111lI11Il["AbsolutePosition"]["Y"]) + I111lI11Il["CanvasPosition"]["Y"]) - 3
        ;(lIl1lI11Il:Create(I111lI11Il, TweenInfo["new"](0.18, Enum["EasingStyle"]["Quart"], Enum["EasingDirection"]["Out"]), {
            ["CanvasPosition"] = Vector2["new"](0, math["clamp"](l1l1lI11Il, 0, IIl1lI11Il))
        })):Play()
    end
    local function IlIllI11Il(I111lI11Il)
        for ll11lI11Il, Il11lI11Il in ipairs({
            l1l1lI11Il,
            I1l1lI11Il,
            lll1lI11Il,
            Ill1lI11Il
        }) do
            if Il11lI11Il and (Il11lI11Il ~= I111lI11Il and Il11lI11Il:Get()) then
                Il11lI11Il:Set(false)
            end
        end
    end
    l1l1lI11Il = secondaryCreateTextButton(I111lI11Il, "Matar a todos", function(I111lI11Il)
        if I111lI11Il then
            IlIllI11Il(l1l1lI11Il)
        end
        return ll1llI11Il["setAutoKill"](I111lI11Il)
    end)
    I1l1lI11Il = secondaryCreateTextButton(I111lI11Il, "Evil Karma", function(I111lI11Il)
        if I111lI11Il then
            IlIllI11Il(I1l1lI11Il)
        end
        return ll1llI11Il["setKarmaKill"]("evil", I111lI11Il)
    end)
    lll1lI11Il = secondaryCreateTextButton(I111lI11Il, "Good Karma", function(I111lI11Il)
        if I111lI11Il then
            IlIllI11Il(lll1lI11Il)
        end
        return ll1llI11Il["setKarmaKill"]("good", I111lI11Il)
    end)
    local lI1llI11Il = {
        {
            ["label"] = "30 segundos",
            ["seconds"] = 30
        },
        {
            ["label"] = "1 minuto",
            ["seconds"] = 60
        },
        {
            ["label"] = "2 minutos",
            ["seconds"] = 120
        }
    }
    killServerHopTimeSelector = llIll111Il(I111lI11Il, "Server hop cada", lI1llI11Il, function(I111lI11Il)
        local ll11lI11Il = type(I111lI11Il) == "table" and tonumber(I111lI11Il["seconds"]) or nil
        if ll11lI11Il then
            ll1llI11Il["kill"]["serverHopInterval"] = ll11lI11Il
            if ll1llI11Il["kill"]["serverHop"] then
                ll1llI11Il["setServerHop"](true)
            end
        end
    end, llIllI11Il)
    for I111lI11Il, ll11lI11Il in ipairs(lI1llI11Il) do
        if ll11lI11Il["seconds"] == ll1llI11Il["kill"]["serverHopInterval"] then
            killServerHopTimeSelector:SetIndex(I111lI11Il)
            break
        end
    end
    killServerHopToggle = secondaryCreateTextButton(I111lI11Il, "Cambiar servidor", function(I111lI11Il)
        if I111lI11Il and (Ill1lI11Il and Ill1lI11Il:Get()) then
            return false
        end
        return ll1llI11Il["setServerHop"](I111lI11Il)
    end)
    local II1llI11Il, I11llI11Il = lIIll111Il(I111lI11Il, "Pr\195\179ximo servidor:", "1m 00s", l11llI11Il["cyan"])
    I11llI11Il["Visible"] = false
    ll1llI11Il["kill"]["updateHopStatus"] = function(I111lI11Il, ll11lI11Il)
        if not I11llI11Il or not I11llI11Il["Parent"] then
            return
        end
        if I111lI11Il == nil then
            I11llI11Il["Visible"] = false
            return
        end
        I11llI11Il["Visible"] = true
        local Il11lI11Il = ll1llI11Il["kill"]["serversVisited"]
        local lIl1lI11Il = "  \195\162\194\128\194\162  " .. (Il11lI11Il .. (Il11lI11Il == 1 and " servidor" or " servidores"))
        if ll11lI11Il then
            II1llI11Il["Text"] = ll11lI11Il .. lIl1lI11Il
        else
            local ll11lI11Il = math["max"](0, math["floor"](tonumber(I111lI11Il) or 0))
            II1llI11Il["Text"] = string["format"]("%dm %02ds", math["floor"](ll11lI11Il / 60), ll11lI11Il % 60) .. lIl1lI11Il
        end
    end
    lIIllI11Il = secondaryCreateTextButton(I111lI11Il, "No matar a mis amigos", function(I111lI11Il)
        return ll1llI11Il["setProtectFriends"](I111lI11Il)
    end)
    local Il1llI11Il = llIll111Il(I111lI11Il, "Seleccionar jugador", l11ll111Il(), function(I111lI11Il)
        ll1llI11Il["kill"]["target"] = type(I111lI11Il) == "table" and I111lI11Il["name"] or I111lI11Il
    end, llIllI11Il)
    Ill1lI11Il = secondaryCreateTextButton(I111lI11Il, "Matar jugador", function(I111lI11Il)
        if I111lI11Il then
            IlIllI11Il(Ill1lI11Il)
            if killServerHopToggle and killServerHopToggle:Get() then
                killServerHopToggle:Set(false)
            end
        end
        return ll1llI11Il["setTargetKill"](I111lI11Il)
    end)
    ll1llI11Il["killSelector"] = Il1llI11Il
    ll1llI11Il["killAutoToggle"] = l1l1lI11Il
    ll1llI11Il["killEvilToggle"] = I1l1lI11Il
    ll1llI11Il["killGoodToggle"] = lll1lI11Il
    ll1llI11Il["killTargetToggle"] = Ill1lI11Il
    ll1llI11Il["killProtectToggle"] = lIIllI11Il
    ll1llI11Il["killServerHopToggle"] = killServerHopToggle
    ll1llI11Il["killServerHopTimeSelector"] = killServerHopTimeSelector
    getSendMuscleEventI111L11Il("killCounter", function()
        while ll1llI11Il["running"] and ll11lI11Il["Parent"] do
            local I111lI11Il = l11II111Il(IIIllI11Il, {
                "Kills"
            })
            local Il11lI11Il = I111lI11Il and tonumber(I111lI11Il["Value"]) or 0
            ll11lI11Il["Text"] = I11II111Il(Il11lI11Il)
            if type(ll1llI11Il["updateKillSession"]) == "function" then
                ll1llI11Il["updateKillSession"](Il11lI11Il)
            end
            task["wait"](0.5)
        end
    end)
end
II1ll111Il()
if ll1llI11Il["resume"] and ll1llI11Il["resume"]["script"] == "fg100.lua" then
    l1l1l111Il(type(ll1llI11Il["resume"]["tab"]) == "string" and (I111l111Il[ll1llI11Il["resume"]["tab"]] and ll1llI11Il["resume"]["tab"]) or "Info")
    if ll1llI11Il["resume"]["protectFriends"] and ll1llI11Il["killProtectToggle"] then
        ll1llI11Il["killProtectToggle"]:Set(true)
    end
    if ll1llI11Il["resume"]["autoKill"] and ll1llI11Il["killAutoToggle"] then
        ll1llI11Il["killAutoToggle"]:Set(true)
    end
    if ll1llI11Il["resume"]["karmaMode"] == "evil" and ll1llI11Il["killEvilToggle"] then
        ll1llI11Il["killEvilToggle"]:Set(true)
    elseif ll1llI11Il["resume"]["karmaMode"] == "good" and ll1llI11Il["killGoodToggle"] then
        ll1llI11Il["killGoodToggle"]:Set(true)
    end
    if ll1llI11Il["resume"]["serverHop"] and ll1llI11Il["killServerHopToggle"] then
        ll1llI11Il["killServerHopToggle"]:Set(true)
    end
else
    l1l1l111Il("Info")
end
II1ll111Il = function()
    local IIl1lI11Il = I111l111Il["Fast Trade"]
    IIl1lI11Il:SetAttribute("TightCanvas", true)
    lll1l111Il(IIl1lI11Il, "FAST TRADE")
    local function l1l1lI11Il(I111lI11Il)
        Il11lI11Il["Heartbeat"]:Wait()
        local ll11lI11Il = math["max"](0, IIl1lI11Il["AbsoluteCanvasSize"]["Y"] - IIl1lI11Il["AbsoluteSize"]["Y"])
        local l1l1lI11Il = ((I111lI11Il["AbsolutePosition"]["Y"] - IIl1lI11Il["AbsolutePosition"]["Y"]) + IIl1lI11Il["CanvasPosition"]["Y"]) - 3
        ;(lIl1lI11Il:Create(IIl1lI11Il, TweenInfo["new"](0.18, Enum["EasingStyle"]["Quart"], Enum["EasingDirection"]["Out"]), {
            ["CanvasPosition"] = Vector2["new"](0, math["clamp"](l1l1lI11Il, 0, ll11lI11Il))
        })):Play()
    end
    local function I1l1lI11Il()
        local I111lI11Il = {}
        local ll11lI11Il = IIIllI11Il:FindFirstChild("petsFolder")
        if ll11lI11Il then
            for ll11lI11Il, Il11lI11Il in ipairs(ll11lI11Il:GetChildren()) do
                if Il11lI11Il:IsA("Folder") then
                    for ll11lI11Il, Il11lI11Il in ipairs(Il11lI11Il:GetChildren()) do
                        I111lI11Il[Il11lI11Il["Name"]] = (I111lI11Il[Il11lI11Il["Name"]] or 0) + 1
                    end
                end
            end
        end
        local Il11lI11Il = {}
        for I111lI11Il in pairs(I111lI11Il) do
            Il11lI11Il[#Il11lI11Il + 1] = I111lI11Il
        end
        table["sort"](Il11lI11Il, function(I111lI11Il, ll11lI11Il)
            return I111lI11Il:lower() < ll11lI11Il:lower()
        end)
        local lIl1lI11Il = {}
        for ll11lI11Il, Il11lI11Il in ipairs(Il11lI11Il) do
            lIl1lI11Il[#lIl1lI11Il + 1] = {
                ["label"] = Il11lI11Il .. ("  x" .. I11II111Il(I111lI11Il[Il11lI11Il])),
                ["name"] = Il11lI11Il,
                ["count"] = I111lI11Il[Il11lI11Il]
            }
        end
        return lIl1lI11Il
    end
    local function lll1lI11Il(I111lI11Il, ll11lI11Il)
        local Il11lI11Il = {}
        local lIl1lI11Il = IIIllI11Il:FindFirstChild("petsFolder")
        if not lIl1lI11Il or type(I111lI11Il) ~= "string" then
            return Il11lI11Il
        end
        for lIl1lI11Il, IIl1lI11Il in ipairs(lIl1lI11Il:GetChildren()) do
            if IIl1lI11Il:IsA("Folder") then
                for lIl1lI11Il, IIl1lI11Il in ipairs(IIl1lI11Il:GetChildren()) do
                    if IIl1lI11Il["Name"] == I111lI11Il then
                        Il11lI11Il[#Il11lI11Il + 1] = IIl1lI11Il
                        if #Il11lI11Il >= ll11lI11Il then
                            return Il11lI11Il
                        end
                    end
                end
            end
        end
        return Il11lI11Il
    end
    local function Ill1lI11Il(I111lI11Il)
        return #lll1lI11Il(I111lI11Il, math["huge"])
    end
    local function lIIllI11Il(I111lI11Il)
        local ll11lI11Il = I111lI11Il
        while ll11lI11Il and ll11lI11Il ~= parent do
            if ll11lI11Il:IsA("GuiObject") and not ll11lI11Il["Visible"] then
                return false
            end
            ll11lI11Il = ll11lI11Il["Parent"]
        end
        return ll11lI11Il == parent
    end
    local capturedI111L11Il
    local function llIllI11Il()
        if capturedI111L11Il and (capturedI111L11Il["Parent"] and (lIIllI11Il(capturedI111L11Il) and (capturedI111L11Il["AbsoluteSize"]["X"] >= 160 and capturedI111L11Il["AbsoluteSize"]["Y"] >= 110))) then
            return capturedI111L11Il
        end
        capturedI111L11Il = nil
        local I111lI11Il, ll11lI11Il = nil, 0
        for Il11lI11Il, lIl1lI11Il in ipairs(parent:GetDescendants()) do
            if lIl1lI11Il:IsA("GuiObject") and (not lIl1lI11Il:IsDescendantOf(screenGui) and lIIllI11Il(lIl1lI11Il)) then
                local Il11lI11Il = lIl1lI11Il["Name"]:lower()
                if (Il11lI11Il:find("trade", 1, true) or Il11lI11Il:find("trading", 1, true)) and (lIl1lI11Il["AbsoluteSize"]["X"] >= 160 and lIl1lI11Il["AbsoluteSize"]["Y"] >= 110) then
                    local Il11lI11Il = lIl1lI11Il["AbsoluteSize"]["X"] * lIl1lI11Il["AbsoluteSize"]["Y"]
                    if Il11lI11Il > ll11lI11Il then
                        I111lI11Il, ll11lI11Il = lIl1lI11Il, Il11lI11Il
                    end
                end
            end
        end
        capturedI111L11Il = I111lI11Il
        return I111lI11Il
    end
    local function IlIllI11Il(I111lI11Il)
        local ll11lI11Il = (tostring(I111lI11Il or "")):lower()
        return ll11lI11Il:find("accepted", 1, true) or ll11lI11Il:find("ready", 1, true) or ll11lI11Il:find("aceptado", 1, true) or ll11lI11Il:find("acept\195\179", 1, true) or ll11lI11Il:find("listo", 1, true) or ll11lI11Il:find("confirmado", 1, true)
    end
    local function lI1llI11Il(I111lI11Il, ll11lI11Il)
        local Il11lI11Il = ll11lI11Il["Name"]:lower()
        local lIl1lI11Il = ll11lI11Il["DisplayName"]:lower()
        for I111lI11Il, ll11lI11Il in ipairs(I111lI11Il:GetDescendants()) do
            if ll11lI11Il:IsA("TextLabel") or ll11lI11Il:IsA("TextButton") then
                local I111lI11Il = (tostring(ll11lI11Il["Text"] or "")):lower()
                if I111lI11Il:find(Il11lI11Il, 1, true) or I111lI11Il:find(lIl1lI11Il, 1, true) then
                    return true
                end
            end
        end
        return false
    end
    local function II1llI11Il(I111lI11Il, ll11lI11Il)
        if not I111lI11Il or not ll11lI11Il or not lI1llI11Il(I111lI11Il, ll11lI11Il) then
            return false
        end
        for Il11lI11Il, lIl1lI11Il in ipairs(I111lI11Il:GetDescendants()) do
            if (lIl1lI11Il:IsA("TextLabel") or lIl1lI11Il:IsA("TextButton")) and (lIIllI11Il(lIl1lI11Il) and IlIllI11Il(lIl1lI11Il["Text"])) then
                local Il11lI11Il = lIl1lI11Il["Parent"]
                for lIl1lI11Il = 1, 4, 1 do
                    if not Il11lI11Il or Il11lI11Il == I111lI11Il["Parent"] then
                        break
                    end
                    if lI1llI11Il(Il11lI11Il, ll11lI11Il) then
                        return true
                    end
                    Il11lI11Il = Il11lI11Il["Parent"]
                end
                local IIl1lI11Il = (lIl1lI11Il:GetFullName()):lower()
                if IIl1lI11Il:find("other", 1, true) or IIl1lI11Il:find("opponent", 1, true) or IIl1lI11Il:find("player2", 1, true) or IIl1lI11Il:find("recipient", 1, true) then
                    return true
                end
            end
        end
        return false
    end
    local function I11llI11Il()
        local I111lI11Il = ll11lI11Il:FindFirstChild("rEvents")
        return I111lI11Il and (I111lI11Il:FindFirstChild("tradingEvent") or I111lI11Il:FindFirstChild("tradeRemote"))
    end
    local function Il1llI11Il(I111lI11Il, ll11lI11Il, Il11lI11Il)
        return llI11111Il(I111lI11Il, ll11lI11Il, Il11lI11Il)
    end
    local lIlllI11Il
    local IIlllI11Il = 6
    local l1lllI11Il = 0
    local function I1lllI11Il(I111lI11Il, ll11lI11Il, Il11lI11Il)
        if ll11lI11Il ~= nil then
            ll1llI11Il["trade"]["delivered"] = ll11lI11Il
        end
        if Il11lI11Il ~= nil then
            ll1llI11Il["trade"]["total"] = Il11lI11Il
        end
        if lIlllI11Il and (lIlllI11Il["Parent"] and I111lI11Il) then
            l1lllI11Il = l1lllI11Il + 1
            local ll11lI11Il = l1lllI11Il
            lIlllI11Il["Text"] = tostring(I111lI11Il)
            if not ll1llI11Il["trade"]["busy"] then
                task["delay"](1.4, function()
                    if lIlllI11Il and (lIlllI11Il["Parent"] and (not ll1llI11Il["trade"]["busy"] and l1lllI11Il == ll11lI11Il)) then
                        lIlllI11Il["Text"] = "Iniciar Fast Trade"
                    end
                end)
            end
        end
    end
    local function lllllI11Il(I111lI11Il)
        ll1llI11Il["trade"]["requestGeneration"] = ll1llI11Il["trade"]["requestGeneration"] + 1
        ll1llI11Il["trade"]["busy"] = false
        ll1llI11Il["trade"]["activePlayer"] = nil
        ll1llI11Il["trade"]["activePet"] = nil
        IIIII111Il("fastTrade")
        if lIlllI11Il and lIlllI11Il["Parent"] then
            lIlllI11Il["Text"] = "Iniciar Fast Trade"
        end
        if I111lI11Il then
            I1lllI11Il(I111lI11Il)
        end
    end
    local flag = false
    local llIII111Il = llIll111Il(IIl1lI11Il, "Seleccionar jugador", l11ll111Il(), function(I111lI11Il)
        local ll11lI11Il = type(I111lI11Il) == "table" and I111lI11Il["name"] or I111lI11Il
        if not flag and (ll1llI11Il["trade"]["busy"] and (ll1llI11Il["trade"]["activePlayer"] and ll11lI11Il ~= ll1llI11Il["trade"]["activePlayer"])) then
            lllllI11Il("Cancelado: cambi\195\179 el jugador")
        end
    end, l1l1lI11Il)
    local IlIII111Il = llIll111Il(IIl1lI11Il, "Seleccionar pet", I1l1lI11Il(), function(I111lI11Il)
        local ll11lI11Il = type(I111lI11Il) == "table" and I111lI11Il["name"] or I111lI11Il
        if not flag and (ll1llI11Il["trade"]["busy"] and (ll1llI11Il["trade"]["activePet"] and ll11lI11Il ~= ll1llI11Il["trade"]["activePet"])) then
            lllllI11Il("Cancelado: cambi\195\179 la pet")
        end
    end, l1l1lI11Il)
    local llIll111IlResult = llIll111Il(IIl1lI11Il, "Cantidad", {
        6,
        5,
        4,
        3,
        2,
        1
    }, function(I111lI11Il)
        IIlllI11Il = math["clamp"](math["floor"](tonumber(I111lI11Il) or 6), 1, 6)
    end, l1l1lI11Il)
    local function isIl11LIValid(I111lI11Il)
        return type(I111lI11Il) == "table" and I111lI11Il["name"] or I111lI11Il
    end
    local function l11II111Il(I111lI11Il, ll11lI11Il, Il11lI11Il)
        local lIl1lI11Il = 0
        local IIl1lI11Il = time() + 90
        while ll1llI11Il["running"] and (ll1llI11Il["trade"]["busy"] and (ll1llI11Il["trade"]["requestGeneration"] == Il11lI11Il and (ll11lI11Il["Parent"] and time() < IIl1lI11Il))) do
            local Il11lI11Il = llIllI11Il()
            if Il11lI11Il then
                return Il11lI11Il
            end
            if time() >= lIl1lI11Il then
                local Il11lI11Il = Il1llI11Il(I111lI11Il, "sendTradeRequest", ll11lI11Il)
                if not Il11lI11Il then
                    return nil
                end
                lIl1lI11Il = time() + 1.5
                I1lllI11Il("Enviando solicitud hasta que acepte...")
            end
            task["wait"](0.2)
        end
        return nil
    end
    lIlllI11Il = createTextButton(IIl1lI11Il, "Iniciar Fast Trade", function(ll11lI11Il)
        if ll1llI11Il["trade"]["busy"] then
            lllllI11Il("Cancelado por el usuario")
            return
        end
        if llIllI11Il() then
            I1lllI11Il("Cerr\195\161 el trade actual antes de iniciar")
            return
        end
        local Il11lI11Il = isIl11LIValid(llIII111Il:Get())
        local lIl1lI11Il = isIl11LIValid(IlIII111Il:Get())
        local IIl1lI11Il = Il11lI11Il and I111lI11Il:FindFirstChild(Il11lI11Il)
        local l1l1lI11Il = I11llI11Il()
        local I1l1lI11Il = math["clamp"](math["floor"](tonumber(llIll111IlResult:Get()) or IIlllI11Il), 1, 6)
        if not IIl1lI11Il or IIl1lI11Il == IIIllI11Il then
            I1lllI11Il("Seleccion\195\161 un jugador v\195\161lido")
            return
        end
        if not lIl1lI11Il then
            I1lllI11Il("Seleccion\195\161 una pet")
            return
        end
        if not l1l1lI11Il then
            I1lllI11Il("El remote de trade no est\195\161 disponible")
            return
        end
        if Ill1lI11Il(lIl1lI11Il) < I1l1lI11Il then
            I1lllI11Il("No ten\195\169s esa cantidad de pets")
            return
        end
        ll1llI11Il["trade"]["requestGeneration"] = ll1llI11Il["trade"]["requestGeneration"] + 1
        local lIIllI11Il = ll1llI11Il["trade"]["requestGeneration"]
        ll1llI11Il["trade"]["busy"] = true
        ll1llI11Il["trade"]["activePlayer"] = Il11lI11Il
        ll1llI11Il["trade"]["activePet"] = lIl1lI11Il
        ll1llI11Il["trade"]["delivered"] = 0
        ll1llI11Il["trade"]["total"] = I1l1lI11Il
        ll11lI11Il["Text"] = "Cancelar Fast Trade"
        I1lllI11Il("Preparando primer lote...", 0, I1l1lI11Il)
        getSendMuscleEventI111L11Il("fastTrade", function()
            while ll1llI11Il["running"] and (ll1llI11Il["trade"]["busy"] and (ll1llI11Il["trade"]["requestGeneration"] == lIIllI11Il and ll1llI11Il["trade"]["delivered"] < I1l1lI11Il)) do
                if not IIl1lI11Il["Parent"] then
                    lllllI11Il("El jugador sali\195\179 del servidor")
                    return
                end
                local I111lI11Il = I1l1lI11Il - ll1llI11Il["trade"]["delivered"]
                local ll11lI11Il = lll1lI11Il(lIl1lI11Il, math["min"](6, I111lI11Il))
                if #ll11lI11Il == 0 then
                    lllllI11Il("Ya no quedan pets disponibles")
                    return
                end
                local Il11lI11Il = #ll11lI11Il
                local IIIllI11Il = Ill1lI11Il(lIl1lI11Il)
                local ilIllI11Flag = l11II111Il(l1l1lI11Il, IIl1lI11Il, lIIllI11Il)
                if not ilIllI11Flag then
                    lllllI11Il("No se pudo abrir el trade")
                    return
                end
                I1lllI11Il("Seleccionando lote de " .. (Il11lI11Il .. " pets..."))
                local il11LI = 0
                for I111lI11Il, ll11lI11Il in ipairs(ll11lI11Il) do
                    if not ll1llI11Il["trade"]["busy"] or ll1llI11Il["trade"]["requestGeneration"] ~= lIIllI11Il then
                        return
                    end
                    if ll11lI11Il["Parent"] then
                        local I111lI11Il = Il1llI11Il(l1l1lI11Il, "offerItem", ll11lI11Il)
                        if I111lI11Il then
                            il11LI = il11LI + 1
                        end
                        task["wait"](0.12)
                    end
                end
                if il11LI == 0 then
                    lllllI11Il("No se pudo ofrecer ninguna pet")
                    return
                end
                Il11lI11Il = il11LI
                I1lllI11Il("Esperando que la otra cuenta acepte...")
                local IlIllI11Il = false
                local lI1llI11Il = time() + 120
                while ll1llI11Il["running"] and (ll1llI11Il["trade"]["busy"] and (ll1llI11Il["trade"]["requestGeneration"] == lIIllI11Il and (IIl1lI11Il["Parent"] and (not IlIllI11Il and time() < lI1llI11Il)))) do
                    ilIllI11Flag = llIllI11Il()
                    if not ilIllI11Flag then
                        break
                    end
                    IlIllI11Il = II1llI11Il(ilIllI11Flag, IIl1lI11Il)
                    task["wait"](0.2)
                end
                if not ll1llI11Il["trade"]["busy"] or ll1llI11Il["trade"]["requestGeneration"] ~= lIIllI11Il then
                    return
                end
                if not IIl1lI11Il["Parent"] then
                    lllllI11Il("El jugador sali\195\179 del servidor")
                    return
                end
                if not IlIllI11Il then
                    I1lllI11Il("Trade cerrado; reintentando el mismo lote...")
                    task["wait"](0.8)
                else
                    I1lllI11Il("Aceptando y verificando entrega...")
                    local I111lI11Il = Il1llI11Il(l1l1lI11Il, "acceptTrade")
                    if not I111lI11Il then
                        I1lllI11Il("No se pudo aceptar; reintentando...")
                        task["wait"](0.8)
                    else
                        local I111lI11Il = time() + 30
                        local ll11lI11Il = 0
                        while ll1llI11Il["running"] and (ll1llI11Il["trade"]["busy"] and (ll1llI11Il["trade"]["requestGeneration"] == lIIllI11Il and time() < I111lI11Il)) do
                            ll11lI11Il = math["clamp"](IIIllI11Il - Ill1lI11Il(lIl1lI11Il), 0, Il11lI11Il)
                            if ll11lI11Il > 0 then
                                break
                            end
                            task["wait"](0.2)
                        end
                        if ll11lI11Il > 0 then
                            ll1llI11Il["trade"]["delivered"] = math["min"](I1l1lI11Il, ll1llI11Il["trade"]["delivered"] + ll11lI11Il)
                            I1lllI11Il(ll1llI11Il["trade"]["delivered"] >= I1l1lI11Il and "Entrega completada" or "Lote entregado; preparando el siguiente...", ll1llI11Il["trade"]["delivered"], I1l1lI11Il)
                            task["wait"](0.8)
                        else
                            I1lllI11Il("No se confirm\195\179 la entrega; reintentando...")
                            while ll1llI11Il["running"] and (ll1llI11Il["trade"]["busy"] and (ll1llI11Il["trade"]["requestGeneration"] == lIIllI11Il and llIllI11Il())) do
                                task["wait"](0.25)
                            end
                            task["wait"](0.5)
                        end
                    end
                end
            end
            if ll1llI11Il["trade"]["requestGeneration"] == lIIllI11Il and ll1llI11Il["trade"]["delivered"] >= I1l1lI11Il then
                ll1llI11Il["trade"]["busy"] = false
                ll1llI11Il["trade"]["activePlayer"] = nil
                ll1llI11Il["trade"]["activePet"] = nil
                ll11lI11Il["Text"] = "Iniciar Fast Trade"
                I1lllI11Il("Completado: " .. (I11II111Il(I1l1lI11Il) .. " pets entregadas"), I1l1lI11Il, I1l1lI11Il)
            end
        end)
    end, l11llI11Il["row"], Color3["fromRGB"](71, 49, 22))
    local function onEvent()
        flag = true
        llIII111Il:SetValues(l11ll111Il(), true)
        flag = false
    end
    local secondaryFlag = false
    local function lIlII111Il()
        if secondaryFlag then
            return
        end
        secondaryFlag = true
        task["delay"](0.15, function()
            secondaryFlag = false
            if ll1llI11Il["running"] then
                flag = true
                IlIII111Il:SetValues(I1l1lI11Il(), true)
                flag = false
            end
        end)
    end
    IllllI11Il(I111lI11Il["PlayerAdded"]:Connect(onEvent))
    IllllI11Il(I111lI11Il["PlayerRemoving"]:Connect(onEvent))
    IllllI11Il(IIIllI11Il["DescendantAdded"]:Connect(function(I111lI11Il)
        local ll11lI11Il = IIIllI11Il:FindFirstChild("petsFolder")
        if ll11lI11Il and I111lI11Il:IsDescendantOf(ll11lI11Il) then
            lIlII111Il()
        end
    end))
    IllllI11Il(IIIllI11Il["DescendantRemoving"]:Connect(function(I111lI11Il)
        local ll11lI11Il = IIIllI11Il:FindFirstChild("petsFolder")
        if ll11lI11Il and I111lI11Il:IsDescendantOf(ll11lI11Il) then
            lIlII111Il()
        end
    end))
    lIIII111Il(function()
        lllllI11Il()
    end)
end
II1ll111Il()
II1ll111Il = function()
    local Il11lI11Il = I111l111Il["Gifts"]
    lll1l111Il(Il11lI11Il, "Regalos")
    local lIl1lI11Il = lIIll111Il(Il11lI11Il, "Eggs", "0", l11llI11Il["cyan"])
    local IIl1lI11Il = lIIll111Il(Il11lI11Il, "Tropical Shakes", "0", l11llI11Il["cyan"])
    lll1l111Il(Il11lI11Il, "Enviar Regalos")
    local l1l1lI11Il = llIll111Il(Il11lI11Il, "Jugador", l11ll111Il(), function()
        -- empty block
    end)
    ll1llI11Il["giftTargetSelector"] = l1l1lI11Il
    local I1l1lI11Il = 1
    local lll1lI11Il = 1
    local Ill1lI11Il = nil
    local lIIllI11Il = nil
    IlIll111Il(Il11lI11Il, "Cantidad de Eggs", "1", function(I111lI11Il)
        I1l1lI11Il = math["clamp"](math["floor"](tonumber(I111lI11Il) or 1), 1, 9999)
        if Ill1lI11Il then
            Ill1lI11Il["Text"] = "\195\176\194\159\194\165\194\154 Enviar " .. (I1l1lI11Il .. (" Protein Egg" .. ((I1l1lI11Il == 1 and "" or "s") .. " \195\176\194\159\194\165\194\154")))
        end
    end)
    local function isValid(I111lI11Il)
        return type(I111lI11Il) == "table" and I111lI11Il or {
            I111lI11Il
        }
    end
    local function handler(I111lI11Il, ll11lI11Il, Il11lI11Il)
        if not I111lI11Il then
            return nil
        end
        for ll11lI11Il, lIl1lI11Il in ipairs(isValid(ll11lI11Il)) do
            for I111lI11Il, ll11lI11Il in ipairs(I111lI11Il:GetChildren()) do
                if ll11lI11Il["Name"] == lIl1lI11Il and not (Il11lI11Il and Il11lI11Il[ll11lI11Il]) then
                    return ll11lI11Il
                end
            end
        end
        return nil
    end
    local function llIllI11Il(I111lI11Il)
        local ll11lI11Il = IIIllI11Il:FindFirstChild("consumablesFolder")
        if not ll11lI11Il then
            return 0
        end
        local Il11lI11Il = {}
        for I111lI11Il, ll11lI11Il in ipairs(isValid(I111lI11Il)) do
            Il11lI11Il[ll11lI11Il] = true
        end
        local lIl1lI11Il = 0
        for I111lI11Il, ll11lI11Il in ipairs(ll11lI11Il:GetChildren()) do
            if Il11lI11Il[ll11lI11Il["Name"]] then
                lIl1lI11Il = lIl1lI11Il + 1
            end
        end
        return lIl1lI11Il
    end
    ll1llI11Il["giftSendBusy"] = false
    local function IlIllI11Il(Il11lI11Il, I1l1lI11Il, lll1lI11Il, Ill1lI11Il, lIIllI11Il, numberText)
        local IlIllI11Il = l1l1lI11Il:Get()
        local lI1llI11Il = type(IlIllI11Il) == "table" and IlIllI11Il["name"] or IlIllI11Il
        local l11llI11Il = lI1llI11Il and I111lI11Il:FindFirstChild(lI1llI11Il)
        local I11llI11Il = IIIllI11Il:FindFirstChild("consumablesFolder")
        local Il1llI11Il = ll11lI11Il:FindFirstChild("rEvents")
        local IIlllI11Il = Il1llI11Il and Il1llI11Il:FindFirstChild("giftRemote")
        local l1lllI11Il = lIIllI11Il .. (" Enviar " .. (lll1lI11Il .. (" " .. (I1l1lI11Il .. ((lll1lI11Il == 1 and "" or "s") .. (" " .. lIIllI11Il))))))
        if not l11llI11Il or l11llI11Il == IIIllI11Il or not I11llI11Il or not IIlllI11Il then
            Ill1lI11Il["Text"] = "Seleccion\195\161 un jugador"
            task["delay"](0.9, function()
                if Ill1lI11Il and Ill1lI11Il["Parent"] then
                    Ill1lI11Il["Text"] = l1lllI11Il
                end
            end)
            return
        end
        if ll1llI11Il["giftSendBusy"] then
            Ill1lI11Il["Text"] = "Env\195\173o en curso"
            task["delay"](0.8, function()
                if Ill1lI11Il and Ill1lI11Il["Parent"] then
                    Ill1lI11Il["Text"] = l1lllI11Il
                end
            end)
            return
        end
        local I1lllI11Il = {}
        for I111lI11Il, ll11lI11Il in ipairs(isValid(Il11lI11Il)) do
            I1lllI11Il[ll11lI11Il] = true
        end
        local lllllI11Il = {}
        for I111lI11Il, ll11lI11Il in ipairs(I11llI11Il:GetChildren()) do
            if I1lllI11Il[ll11lI11Il["Name"]] then
                lllllI11Il[#lllllI11Il + 1] = ll11lI11Il
            end
        end
        local IllllI11Il = math["min"](lll1lI11Il, #lllllI11Il)
        if IllllI11Il == 0 then
            Ill1lI11Il["Text"] = "No ten\195\169s " .. I1l1lI11Il
            task["delay"](0.9, function()
                if Ill1lI11Il and Ill1lI11Il["Parent"] then
                    Ill1lI11Il["Text"] = l1lllI11Il
                end
            end)
            return
        end
        ll1llI11Il["giftSendBusy"] = true
        getSendMuscleEventI111L11Il("giftSender", function()
            local I111lI11Il = 0
            local ll11lI11Il = 0
            local Il11lI11Il = 0
            local l1l1lI11Il = math["max"](tonumber(numberText) or 0.1, 0.08)
            for lIl1lI11Il = 1, IllllI11Il, 1 do
                if not ll1llI11Il["running"] then
                    break
                end
                local IIl1lI11Il = lllllI11Il[lIl1lI11Il]
                local I1l1lI11Il = isCachedPingValid()
                while ll1llI11Il["running"] and I1l1lI11Il >= 650 do
                    task["wait"](0.25)
                    I1l1lI11Il = isCachedPingValid()
                end
                if not ll1llI11Il["running"] then
                    break
                end
                if not l11llI11Il["Parent"] then
                    break
                end
                local lll1lI11Il, IIIllI11Il = llI11111Il(IIlllI11Il, "giftRequest", l11llI11Il, IIl1lI11Il)
                local flag = lll1lI11Il and IIIllI11Il == true
                if lll1lI11Il and not flag then
                    local I111lI11Il = time() + 2.5
                    repeat
                        flag = not IIl1lI11Il["Parent"]
                        if not flag then
                            task["wait"](0.08)
                        end
                    until flag or not ll1llI11Il["running"] or time() >= I111lI11Il
                end
                if flag then
                    I111lI11Il = I111lI11Il + 1
                else
                    ll11lI11Il = ll11lI11Il + 1
                    if ll11lI11Il >= 3 then
                        break
                    end
                end
                if time() - Il11lI11Il >= 0.25 then
                    Ill1lI11Il["Text"] = lIIllI11Il .. (" Enviando " .. (I111lI11Il .. ("/" .. (IllllI11Il .. (" " .. lIIllI11Il)))))
                    Il11lI11Il = time()
                end
                local number = l1l1lI11Il
                if I1l1lI11Il >= 400 then
                    number = math["max"](number, 0.4)
                elseif I1l1lI11Il >= 250 then
                    number = math["max"](number, 0.28)
                elseif I1l1lI11Il >= 150 then
                    number = math["max"](number, 0.2)
                end
                task["wait"](number)
            end
            ll1llI11Il["giftSendBusy"] = false
            if Ill1lI11Il and Ill1lI11Il["Parent"] then
                Ill1lI11Il["Text"] = I111lI11Il > 0 and lIIllI11Il .. (" Enviados " .. (I111lI11Il .. (" " .. lIIllI11Il))) or "No se confirm\195\179 el env\195\173o"
                task["delay"](1.2, function()
                    if Ill1lI11Il and (Ill1lI11Il["Parent"] and not lIlllI11Il["giftSender"]) then
                        Ill1lI11Il["Text"] = l1lllI11Il
                    end
                end)
            end
            lIl1lI11Il["Text"] = I11II111Il(llIllI11Il(II1llI11Il["AutoEgg"]["Names"]))
            IIl1lI11Il["Text"] = I11II111Il(llIllI11Il("Tropical Shake"))
        end)
    end
    Ill1lI11Il = createTextButton(Il11lI11Il, "\195\176\194\159\194\165\194\154 Enviar 1 Protein Egg \195\176\194\159\194\165\194\154", function(I111lI11Il)
        IlIllI11Il(II1llI11Il["AutoEgg"]["Names"], "Protein Egg", I1l1lI11Il, I111lI11Il, "\195\176\194\159\194\165\194\154", 0.16)
    end)
    IlIll111Il(Il11lI11Il, "Cantidad de Shakes", "1", function(I111lI11Il)
        lll1lI11Il = math["clamp"](math["floor"](tonumber(I111lI11Il) or 1), 1, 9999)
        if lIIllI11Il then
            lIIllI11Il["Text"] = "\195\176\194\159\194\165\194\164 Enviar " .. (lll1lI11Il .. (" Tropical Shake" .. ((lll1lI11Il == 1 and "" or "s") .. " \195\176\194\159\194\165\194\164")))
        end
    end)
    lIIllI11Il = createTextButton(Il11lI11Il, "\195\176\194\159\194\165\194\164 Enviar 1 Tropical Shake \195\176\194\159\194\165\194\164", function(I111lI11Il)
        IlIllI11Il("Tropical Shake", "Tropical Shake", lll1lI11Il, I111lI11Il, "\195\176\194\159\194\165\194\164", 0.16)
    end)
    getSendMuscleEventI111L11Il("giftUpdater", function()
        while ll1llI11Il["running"] do
            if not lIlllI11Il["giftSender"] then
                lIl1lI11Il["Text"] = I11II111Il(llIllI11Il(II1llI11Il["AutoEgg"]["Names"]))
                IIl1lI11Il["Text"] = I11II111Il(llIllI11Il("Tropical Shake"))
            end
            task["wait"](2)
        end
    end)
end
II1ll111Il()
II1ll111Il = function()
    local function I111lI11Il()
        local I111lI11Il = ll11lI11Il:FindFirstChild("shared")
        local Il11lI11Il = I111lI11Il and I111lI11Il:FindFirstChild("runtime")
        return Il11lI11Il and Il11lI11Il:FindFirstChild("cPetShopFolder") or ll11lI11Il:FindFirstChild("cPetShopFolder")
    end
    local function Il11lI11Il()
        local I111lI11Il = ll11lI11Il:FindFirstChild("rEvents")
        return I111lI11Il and I111lI11Il:FindFirstChild("cPetShopRemote") or ll11lI11Il:FindFirstChild("cPetShopRemote")
    end
    local function lIl1lI11Il()
        local ll11lI11Il = {}
        local Il11lI11Il = {}
        local lIl1lI11Il = I111lI11Il()
        if lIl1lI11Il then
            for I111lI11Il, Il11lI11Il in ipairs(II1llI11Il["UniquePets"]) do
                if lIl1lI11Il:FindFirstChild(Il11lI11Il) then
                    ll11lI11Il[#ll11lI11Il + 1] = Il11lI11Il
                end
            end
            for I111lI11Il, ll11lI11Il in ipairs(II1llI11Il["UniqueAuras"]) do
                if lIl1lI11Il:FindFirstChild(ll11lI11Il) then
                    Il11lI11Il[#Il11lI11Il + 1] = ll11lI11Il
                end
            end
        else
            for I111lI11Il, Il11lI11Il in ipairs(II1llI11Il["UniquePets"]) do
                ll11lI11Il[#ll11lI11Il + 1] = Il11lI11Il
            end
            for I111lI11Il, ll11lI11Il in ipairs(II1llI11Il["UniqueAuras"]) do
                Il11lI11Il[#Il11lI11Il + 1] = ll11lI11Il
            end
        end
        return ll11lI11Il, Il11lI11Il
    end
    local IIl1lI11Il, l1l1lI11Il = lIl1lI11Il()
    local I1l1lI11Il = I111l111Il["Pet Shop"]
    lll1l111Il(I1l1lI11Il, "\195\176\194\159\194\144\194\190 Pets \195\176\194\159\194\144\194\190")
    local lll1lI11Il = llIll111Il(I1l1lI11Il, "Seleccionar Pet", IIl1lI11Il, function()
        -- empty block
    end)
    local function Ill1lI11Il(ll11lI11Il)
        local lIl1lI11Il = I111lI11Il()
        local IIl1lI11Il = Il11lI11Il()
        local l1l1lI11Il = lIl1lI11Il and (ll11lI11Il and lIl1lI11Il:FindFirstChild(ll11lI11Il))
        if not l1l1lI11Il or not IIl1lI11Il or not IIl1lI11Il:IsA("RemoteFunction") then
            return false
        end
        local I1l1lI11Il, lll1lI11Il = pcall(function()
            return IIl1lI11Il:InvokeServer(l1l1lI11Il)
        end)
        return I1l1lI11Il and lll1lI11Il == true
    end
    createTextButton(I1l1lI11Il, "\195\176\194\159\194\144\194\190 Comprar Pets \195\176\194\159\194\144\194\190", function()
        Ill1lI11Il(lll1lI11Il:Get())
    end)
    secondaryCreateTextButton(I1l1lI11Il, "\195\176\194\159\194\148\194\129 Auto Comprar Pet \195\176\194\159\194\148\194\129", function(I111lI11Il)
        ll1llI11Il["autoPet"] = I111lI11Il
        if not I111lI11Il then
            IIIII111Il("autoPet")
            return
        end
        getSendMuscleEventI111L11Il("autoPet", function()
            while ll1llI11Il["running"] and ll1llI11Il["autoPet"] do
                Ill1lI11Il(lll1lI11Il:Get())
                task["wait"](0.18)
            end
        end)
    end)
    lll1l111Il(I1l1lI11Il, "\195\176\194\159\194\140\194\140 Auras \195\176\194\159\194\140\194\140")
    local lIIllI11Il = llIll111Il(I1l1lI11Il, "Seleccionar Aura", l1l1lI11Il, function()
        -- empty block
    end)
    createTextButton(I1l1lI11Il, "\195\176\194\159\194\140\194\140 Comprar Aura \195\176\194\159\194\140\194\140", function()
        Ill1lI11Il(lIIllI11Il:Get())
    end)
    secondaryCreateTextButton(I1l1lI11Il, "\195\176\194\159\194\148\194\129 Auto Comprar Aura \195\176\194\159\194\148\194\129", function(I111lI11Il)
        ll1llI11Il["autoAura"] = I111lI11Il
        if not I111lI11Il then
            IIIII111Il("autoAura")
            return
        end
        getSendMuscleEventI111L11Il("autoAura", function()
            while ll1llI11Il["running"] and ll1llI11Il["autoAura"] do
                Ill1lI11Il(lIIllI11Il:Get())
                task["wait"](0.18)
            end
        end)
    end)
    local function IIIllI11Il()
        local I111lI11Il, ll11lI11Il = lIl1lI11Il()
        lll1lI11Il:SetValues(I111lI11Il, true)
        lIIllI11Il:SetValues(ll11lI11Il, true)
    end
    local condition = I111lI11Il()
    if condition then
        IllllI11Il(condition["ChildAdded"]:Connect(function()
            task["defer"](IIIllI11Il)
        end))
        IllllI11Il(condition["ChildRemoved"]:Connect(function()
            task["defer"](IIIllI11Il)
        end))
    else
        IllllI11Il(ll11lI11Il["DescendantAdded"]:Connect(function(I111lI11Il)
            if I111lI11Il["Name"] == "cPetShopFolder" then
                task["defer"](IIIllI11Il)
            end
        end))
    end
end
II1ll111Il()
II1ll111Il = function()
    local I111lI11Il = I111l111Il["Fuse Machine"]
    I111lI11Il["Parent"]["Name"] = "PagesContainer"
    I111lI11Il["Name"] = "FuseOptimizerPage"
    local Il11lI11Il = {
        {
            ["key"] = "FusePet1",
            ["name"] = "Mushroom Sprout",
            ["fallbackChance"] = 45,
            ["pets"] = {
                {
                    ["name"] = "Dark Vampy",
                    ["power"] = 10
                },
                {
                    ["name"] = "Dark Vampy",
                    ["power"] = 10
                },
                {
                    ["name"] = "Dark Vampy",
                    ["power"] = 10
                },
                {
                    ["name"] = "Dark Vampy",
                    ["power"] = 10
                }
            }
        },
        {
            ["key"] = "FusePet2",
            ["name"] = "Candy Wisp",
            ["fallbackChance"] = 30,
            ["pets"] = {
                {
                    ["name"] = "Alien Girl",
                    ["power"] = 30
                },
                {
                    ["name"] = "Alien Girl",
                    ["power"] = 30
                },
                {
                    ["name"] = "Alien Girl",
                    ["power"] = 30
                },
                {
                    ["name"] = "Alien Girl",
                    ["power"] = 30
                }
            }
        },
        {
            ["key"] = "FusePet3",
            ["name"] = "Pebble Dragon",
            ["fallbackChance"] = 33.329999999999998,
            ["pets"] = {
                {
                    ["name"] = "Dark Golem",
                    ["power"] = 8
                },
                {
                    ["name"] = "Dark Golem",
                    ["power"] = 8
                },
                {
                    ["name"] = "A. Gnatomy",
                    ["power"] = 22
                },
                {
                    ["name"] = "Phantom Genesis Dragon",
                    ["power"] = 48
                }
            }
        },
        {
            ["key"] = "FusePet4",
            ["name"] = "Griffin",
            ["fallbackChance"] = 31.25,
            ["pets"] = {
                {
                    ["name"] = "Orange Pegasus",
                    ["power"] = 20
                },
                {
                    ["name"] = "Green Firecaster",
                    ["power"] = 36
                },
                {
                    ["name"] = "Green Firecaster",
                    ["power"] = 36
                },
                {
                    ["name"] = "Cool Guy Larry",
                    ["power"] = 62
                }
            }
        },
        {
            ["key"] = "FusePet5",
            ["name"] = "Venom Bloom",
            ["fallbackChance"] = 35,
            ["pets"] = {
                {
                    ["name"] = "Dark Vampy",
                    ["power"] = 10
                },
                {
                    ["name"] = "Dark Vampy",
                    ["power"] = 10
                },
                {
                    ["name"] = "Core Pup",
                    ["power"] = 70
                },
                {
                    ["name"] = "Core Pup",
                    ["power"] = 70
                }
            }
        },
        {
            ["key"] = "FusePet6",
            ["name"] = "Moonlight",
            ["fallbackChance"] = 40,
            ["pets"] = {
                {
                    ["name"] = "Orange Pegasus",
                    ["power"] = 20
                },
                {
                    ["name"] = "Neon Guardian",
                    ["power"] = 80
                },
                {
                    ["name"] = "Neon Guardian",
                    ["power"] = 80
                },
                {
                    ["name"] = "Neon Guardian",
                    ["power"] = 80
                }
            }
        },
        {
            ["key"] = "FusePet7",
            ["name"] = "Prismatic Chimera",
            ["fallbackChance"] = 55,
            ["pets"] = {
                {
                    ["name"] = "Apex Overlord",
                    ["power"] = 100
                },
                {
                    ["name"] = "Apex Overlord",
                    ["power"] = 100
                },
                {
                    ["name"] = "Apex Overlord",
                    ["power"] = 100
                },
                {
                    ["name"] = "Apex Overlord",
                    ["power"] = 100
                }
            }
        },
        {
            ["key"] = "FusePet8",
            ["name"] = "Eclipse Sovereign",
            ["fallbackChance"] = 5,
            ["pets"] = {
                {
                    ["name"] = "Titan Reactor",
                    ["power"] = 94
                },
                {
                    ["name"] = "Titan Reactor",
                    ["power"] = 94
                },
                {
                    ["name"] = "Titan Reactor",
                    ["power"] = 94
                },
                {
                    ["name"] = "Titan Reactor",
                    ["power"] = 94
                }
            }
        }
    }
    local IIl1lI11Il
    local l1l1lI11Il
    local I1l1lI11Il
    do
        local I111lI11Il = ll11lI11Il:FindFirstChild("shared")
        local Il11lI11Il = I111lI11Il and I111lI11Il:FindFirstChild("config")
        local lIl1lI11Il = I111lI11Il and I111lI11Il:FindFirstChild("modules")
        local lll1lI11Il = ll11lI11Il:FindFirstChild("client")
        local Ill1lI11Il = lll1lI11Il and lll1lI11Il:FindFirstChild("controllers")
        local lIIllI11Il = Il11lI11Il and Il11lI11Il:FindFirstChild("PetCraftConfig")
        local IIIllI11Il = lIl1lI11Il and lIl1lI11Il:FindFirstChild("PetCraft")
        local i111L11IlOption = Ill1lI11Il and Ill1lI11Il:FindFirstChild("PetCraftController")
        if lIIllI11Il and lIIllI11Il:IsA("ModuleScript") then
            local I111lI11Il, ll11lI11Il = pcall(require, lIIllI11Il)
            if I111lI11Il and type(ll11lI11Il) == "table" then
                IIl1lI11Il = ll11lI11Il
            end
        end
        if IIIllI11Il and IIIllI11Il:IsA("ModuleScript") then
            local I111lI11Il, ll11lI11Il = pcall(require, IIIllI11Il)
            if I111lI11Il and type(ll11lI11Il) == "table" then
                l1l1lI11Il = ll11lI11Il
            end
        end
        if i111L11IlOption and i111L11IlOption:IsA("ModuleScript") then
            local I111lI11Il, ll11lI11Il = pcall(require, i111L11IlOption)
            if I111lI11Il and type(ll11lI11Il) == "table" then
                I1l1lI11Il = ll11lI11Il
            end
        end
    end
    local function lll1lI11Il(I111lI11Il)
        local ll11lI11Il = 0
        local Il11lI11Il = IIIllI11Il:FindFirstChild("petsFolder")
        if not Il11lI11Il then
            return ll11lI11Il
        end
        for Il11lI11Il, lIl1lI11Il in ipairs(Il11lI11Il:GetChildren()) do
            if lIl1lI11Il:IsA("Folder") then
                for Il11lI11Il, lIl1lI11Il in ipairs(lIl1lI11Il:GetChildren()) do
                    if lIl1lI11Il["Name"] == I111lI11Il and not lIl1lI11Il:FindFirstChild("evolved") then
                        ll11lI11Il = ll11lI11Il + 1
                    end
                end
            end
        end
        return ll11lI11Il
    end
    local function Ill1lI11Il(I111lI11Il)
        local ll11lI11Il = #I111lI11Il["pets"]
        local Il11lI11Il = 0
        local lIl1lI11Il = 0
        for I111lI11Il, ll11lI11Il in ipairs(I111lI11Il["pets"]) do
            local l1l1lI11Il = ll11lI11Il["power"]
            if IIl1lI11Il and type(IIl1lI11Il["BASE_FUSE_POWER"]) == "table" then
                l1l1lI11Il = tonumber(IIl1lI11Il["BASE_FUSE_POWER"][ll11lI11Il["name"]]) or l1l1lI11Il
            end
            Il11lI11Il = Il11lI11Il + l1l1lI11Il * l1l1lI11Il
            lIl1lI11Il = math["max"](lIl1lI11Il, l1l1lI11Il)
        end
        local l1l1lI11Il = ll11lI11Il > 0 and math["sqrt"](Il11lI11Il / ll11lI11Il) or 0
        local I1l1lI11Il = IIl1lI11Il and tonumber(IIl1lI11Il["RMS_WEIGHT"]) or 0.5
        local lll1lI11Il = IIl1lI11Il and tonumber(IIl1lI11Il["STRONGEST_WEIGHT"]) or 0.5
        local Ill1lI11Il = l1l1lI11Il * I1l1lI11Il + lIl1lI11Il * lll1lI11Il
        local lIIllI11Il = IIl1lI11Il and tonumber(IIl1lI11Il["MIN_FUSE_POWER"]) or 0
        local IIIllI11Il = IIl1lI11Il and tonumber(IIl1lI11Il["MAX_FUSE_POWER"]) or 100
        return math["clamp"](Ill1lI11Il, lIIllI11Il, IIIllI11Il)
    end
    local function lIIllI11Il(I111lI11Il, ll11lI11Il)
        if l1l1lI11Il and type(l1l1lI11Il["GetVisibleResults"]) == "function" then
            local Il11lI11Il, lIl1lI11Il = pcall(l1l1lI11Il["GetVisibleResults"], ll11lI11Il)
            if Il11lI11Il and type(lIl1lI11Il) == "table" then
                for ll11lI11Il, Il11lI11Il in ipairs(lIl1lI11Il) do
                    if Il11lI11Il["Key"] == I111lI11Il["key"] or Il11lI11Il["PetName"] == I111lI11Il["name"] then
                        return tonumber(Il11lI11Il["Chance"]) or 0
                    end
                end
                return 0
            end
        end
        return I111lI11Il["fallbackChance"]
    end
    local function format(I111lI11Il)
        if math["abs"](I111lI11Il - math["round"](I111lI11Il)) < 0.005 then
            return I11II111Il(math["round"](I111lI11Il)) .. "%"
        end
        return string["format"]("%.2f%%", I111lI11Il)
    end
    lll1l111Il(I111lI11Il, "FUSE OPTIMIZER")
    local ll11LIIlOption = Il11lI11Il[1]
    local llIllI11Il
    local IlIllI11Il
    local lI1llI11Il = 0
    local II1llI11Il, Il1llI11Il = llIll111Il(I111lI11Il, "Pet que quer\195\169s", Il11lI11Il, function(I111lI11Il)
        ll11LIIlOption = type(I111lI11Il) == "table" and I111lI11Il or Il11lI11Il[1]
        lI1llI11Il = 0
        if llIllI11Il then
            llIllI11Il()
        end
        if IlIllI11Il then
            IlIllI11Il()
        end
    end)
    Il1llI11Il["Name"] = "FuseTargetValue"
    Il1llI11Il["Parent"]["Name"] = "FuseTargetSelector"
    Il1llI11Il["Parent"]["Parent"]["Name"] = "FuseTargetSelectorRow"
    for I111lI11Il, ll11lI11Il in ipairs(Il1llI11Il["Parent"]["Parent"]:GetDescendants()) do
        if ll11lI11Il:IsA("TextButton") and ll11lI11Il ~= Il1llI11Il["Parent"] then
            ll11lI11Il["Name"] = "FuseTargetOption_" .. I11II111Il(I111lI11Il)
        end
    end
    local lIlllI11Il = lIIll111Il(I111lI11Il, "Probabilidad m\195\161xima", "-", l11llI11Il["green"], false, true)
    local IIlllI11Il = Instance["new"]("Frame")
    IIlllI11Il["LayoutOrder"] = IIl1l111Il(I111lI11Il)
    IIlllI11Il["Parent"] = I111lI11Il
    Ill1l111Il(IIlllI11Il, 48)
    local l1lllI11Il = Instance["new"]("TextLabel")
    l1lllI11Il["Size"] = UDim2["new"](1, -22, 0, 18)
    l1lllI11Il["Position"] = UDim2["fromOffset"](11, 3)
    l1lllI11Il["BackgroundTransparency"] = 1
    l1lllI11Il["Text"] = "PETS EN FUSE MACHINE"
    l1lllI11Il["TextColor3"] = l11llI11Il["cyan"]
    l1lllI11Il["Font"] = l11llI11Il["fontBold"]
    l1lllI11Il["TextSize"] = 10
    l1lllI11Il["TextXAlignment"] = Enum["TextXAlignment"]["Left"]
    l1lllI11Il["ZIndex"] = 13
    l1lllI11Il:SetAttribute("Young0xPreserveTextStyle", true)
    l1lllI11Il["Parent"] = IIlllI11Il
    local I1lllI11Il = {}
    for I111lI11Il = 1, 4, 1 do
        local ll11lI11Il = Instance["new"]("Frame")
        ll11lI11Il["AnchorPoint"] = Vector2["new"](0.5, 0.5)
        ll11lI11Il["Size"] = UDim2["fromOffset"](5, 5)
        ll11lI11Il["Position"] = UDim2["fromOffset"](14, 30 + (I111lI11Il - 1) * 18)
        ll11lI11Il["BackgroundColor3"] = l11llI11Il["cyan"]
        ll11lI11Il["BorderSizePixel"] = 0
        ll11lI11Il["ZIndex"] = 13
        ll11lI11Il["Parent"] = IIlllI11Il
        ;(Instance["new"]("UICorner", ll11lI11Il))["CornerRadius"] = UDim["new"](1, 0)
        local Il11lI11Il = Instance["new"]("TextLabel")
        Il11lI11Il["Size"] = UDim2["new"](0.7, -24, 0, 18)
        Il11lI11Il["Position"] = UDim2["fromOffset"](22, 21 + (I111lI11Il - 1) * 18)
        Il11lI11Il["BackgroundTransparency"] = 1
        Il11lI11Il["Text"] = "-"
        Il11lI11Il["TextColor3"] = l11llI11Il["white"]
        Il11lI11Il["Font"] = I11llI11Il
        Il11lI11Il["TextSize"] = 11
        Il11lI11Il["TextXAlignment"] = Enum["TextXAlignment"]["Left"]
        Il11lI11Il["TextTruncate"] = Enum["TextTruncate"]["AtEnd"]
        Il11lI11Il["ZIndex"] = 13
        Il11lI11Il["Parent"] = IIlllI11Il
        local lIl1lI11Il = Instance["new"]("TextLabel")
        lIl1lI11Il["Size"] = UDim2["new"](0.3, -12, 0, 18)
        lIl1lI11Il["Position"] = UDim2["new"](0.7, 0, 0, 21 + (I111lI11Il - 1) * 18)
        lIl1lI11Il["BackgroundTransparency"] = 1
        lIl1lI11Il["Text"] = "-"
        lIl1lI11Il["TextColor3"] = l11llI11Il["yellow"]
        lIl1lI11Il["Font"] = I11llI11Il
        lIl1lI11Il["TextSize"] = 11
        lIl1lI11Il["TextXAlignment"] = Enum["TextXAlignment"]["Right"]
        lIl1lI11Il["ZIndex"] = 13
        lIl1lI11Il:SetAttribute("Young0xPreserveTextStyle", true)
        lIl1lI11Il["Parent"] = IIlllI11Il
        I1lllI11Il[I111lI11Il] = {
            ["dot"] = ll11lI11Il,
            ["name"] = Il11lI11Il,
            ["owned"] = lIl1lI11Il
        }
    end
    local lllllI11Il = Instance["new"]("Frame")
    lllllI11Il["LayoutOrder"] = IIl1l111Il(I111lI11Il)
    lllllI11Il["Parent"] = I111lI11Il
    Ill1l111Il(lllllI11Il, 48)
    local lIIII111Il = Instance["new"]("Frame")
    lIIII111Il["Size"] = UDim2["fromOffset"](3, 28)
    lIIII111Il["Position"] = UDim2["new"](0, 8, 0.5, -14)
    lIIII111Il["BackgroundColor3"] = l11llI11Il["yellow"]
    lIIII111Il["BackgroundTransparency"] = 0.08
    lIIII111Il["BorderSizePixel"] = 0
    lIIII111Il["ZIndex"] = 12
    lIIII111Il["Parent"] = lllllI11Il
    ;(Instance["new"]("UICorner", lIIII111Il))["CornerRadius"] = UDim["new"](1, 0)
    local IIIII111Il = Instance["new"]("TextLabel")
    IIIII111Il["Size"] = UDim2["new"](1, -32, 1, -8)
    IIIII111Il["Position"] = UDim2["fromOffset"](21, 4)
    IIIII111Il["BackgroundTransparency"] = 1
    IIIII111Il["Text"] = "La Fuse Machine sigue siendo RNG. Esta receta maximiza la probabilidad de conseguir la pet elegida."
    IIIII111Il["TextColor3"] = l11llI11Il["dim"]
    IIIII111Il["Font"] = I11llI11Il
    IIIII111Il["TextSize"] = 11
    IIIII111Il["TextWrapped"] = true
    IIIII111Il["TextXAlignment"] = Enum["TextXAlignment"]["Left"]
    IIIII111Il["TextYAlignment"] = Enum["TextYAlignment"]["Center"]
    IIIII111Il["ZIndex"] = 12
    IIIII111Il:SetAttribute("Young0xPreserveTextStyle", true)
    IIIII111Il["Parent"] = lllllI11Il
    lIlllI11Il:SetAttribute("Young0xPreserveTextStyle", true)
    local llIii111IlData = lll1l111Il(I111lI11Il, "FUSI\195\147N ACTIVA")
    local llIII111Il = llIii111IlData["Parent"]
    llIII111Il["Visible"] = false
    local IlIII111Il = Instance["new"]("Frame")
    IlIII111Il["Name"] = "FuseProcessCard"
    IlIII111Il["LayoutOrder"] = IIl1l111Il(I111lI11Il)
    IlIII111Il["Parent"] = I111lI11Il
    IlIII111Il["Visible"] = false
    Ill1l111Il(IlIII111Il, 46)
    local parent = Instance["new"]("Frame")
    parent["Name"] = "ProcessAccent"
    parent["Size"] = UDim2["fromOffset"](3, 26)
    parent["Position"] = UDim2["new"](0, 8, 0.5, -13)
    parent["BackgroundColor3"] = l11llI11Il["red"]
    parent["BorderSizePixel"] = 0
    parent["ZIndex"] = 13
    parent["Parent"] = IlIII111Il
    ;(Instance["new"]("UICorner", parent))["CornerRadius"] = UDim["new"](1, 0)
    local textLabel = Instance["new"]("TextLabel")
    textLabel["Name"] = "FuseProcessTitle"
    textLabel["Size"] = UDim2["new"](0.58, -20, 0, 30)
    textLabel["Position"] = UDim2["fromOffset"](20, 2)
    textLabel["BackgroundTransparency"] = 1
    textLabel["Text"] = "FUSIONANDO"
    textLabel["TextColor3"] = l11llI11Il["white"]
    textLabel["Font"] = l11llI11Il["fontBold"]
    textLabel["TextSize"] = 12
    textLabel["TextXAlignment"] = Enum["TextXAlignment"]["Left"]
    textLabel["TextTruncate"] = Enum["TextTruncate"]["AtEnd"]
    textLabel["ZIndex"] = 13
    textLabel:SetAttribute("Young0xPreserveTextStyle", true)
    textLabel["Parent"] = IlIII111Il
    local l11II111Il = Instance["new"]("TextLabel")
    l11II111Il["Name"] = "FuseProcessTimer"
    l11II111Il["Size"] = UDim2["new"](0.42, -20, 0, 30)
    l11II111Il["Position"] = UDim2["new"](0.58, 0, 0, 2)
    l11II111Il["BackgroundTransparency"] = 1
    l11II111Il["Text"] = ""
    l11II111Il["TextColor3"] = l11llI11Il["white"]
    l11II111Il["Font"] = l11llI11Il["fontBold"]
    l11II111Il["TextSize"] = 11
    l11II111Il["TextXAlignment"] = Enum["TextXAlignment"]["Right"]
    l11II111Il["ZIndex"] = 13
    l11II111Il:SetAttribute("Young0xPreserveTextStyle", true)
    l11II111Il["Parent"] = IlIII111Il
    local frame = Instance["new"]("Frame")
    frame["Name"] = "FuseProgressTrack"
    frame["Size"] = UDim2["new"](1, -40, 0, 4)
    frame["Position"] = UDim2["new"](0, 20, 1, -9)
    frame["BackgroundColor3"] = l11llI11Il["black"]
    frame["BackgroundTransparency"] = 0.28
    frame["BorderSizePixel"] = 0
    frame["ClipsDescendants"] = true
    frame["ZIndex"] = 13
    frame["Parent"] = IlIII111Il
    ;(Instance["new"]("UICorner", frame))["CornerRadius"] = UDim["new"](1, 0)
    local secondaryParent = Instance["new"]("Frame")
    secondaryParent["Name"] = "FuseProgressFill"
    secondaryParent["Size"] = UDim2["fromScale"](0, 1)
    secondaryParent["BackgroundColor3"] = l11llI11Il["red"]
    secondaryParent["BorderSizePixel"] = 0
    secondaryParent["ZIndex"] = 14
    secondaryParent["Parent"] = frame
    ;(Instance["new"]("UICorner", secondaryParent))["CornerRadius"] = UDim["new"](1, 0)
    llIllI11Il = function()
        local I111lI11Il = ll11LIIlOption or Il11lI11Il[1]
        local ll11lI11Il = Ill1lI11Il(I111lI11Il)
        local lIl1lI11Il = lIIllI11Il(I111lI11Il, ll11lI11Il)
        lIlllI11Il["Text"] = format(lIl1lI11Il) .. " por intento"
        lIlllI11Il["TextColor3"] = lIl1lI11Il >= 30 and l11llI11Il["green"] or lIl1lI11Il >= 10 and l11llI11Il["yellow"] or l11llI11Il["orange"]
        local IIl1lI11Il = {}
        local l1l1lI11Il = {}
        for I111lI11Il, ll11lI11Il in ipairs(I111lI11Il["pets"]) do
            if not IIl1lI11Il[ll11lI11Il["name"]] then
                IIl1lI11Il[ll11lI11Il["name"]] = 0
                l1l1lI11Il[#l1l1lI11Il + 1] = ll11lI11Il["name"]
            end
            IIl1lI11Il[ll11lI11Il["name"]] = IIl1lI11Il[ll11lI11Il["name"]] + 1
        end
        for I111lI11Il, ll11lI11Il in ipairs(l1l1lI11Il) do
            local Il11lI11Il = IIl1lI11Il[ll11lI11Il]
            local lIl1lI11Il = lll1lI11Il(ll11lI11Il)
            local l1l1lI11Il = lIl1lI11Il >= Il11lI11Il and l11llI11Il["green"] or lIl1lI11Il > 0 and l11llI11Il["yellow"] or l11llI11Il["red"]
            local I1l1lI11Il = I1lllI11Il[I111lI11Il]
            I1l1lI11Il["dot"]["Visible"] = true
            I1l1lI11Il["name"]["Visible"] = true
            I1l1lI11Il["owned"]["Visible"] = true
            I1l1lI11Il["name"]["Text"] = "x" .. (I11II111Il(Il11lI11Il) .. ("  " .. ll11lI11Il))
            I1l1lI11Il["owned"]["Text"] = "Ten\195\169s " .. (I11II111Il(math["min"](lIl1lI11Il, Il11lI11Il)) .. ("/" .. I11II111Il(Il11lI11Il)))
            I1l1lI11Il["owned"]["TextColor3"] = l1l1lI11Il
            I1l1lI11Il["dot"]["BackgroundColor3"] = l1l1lI11Il
        end
        for I111lI11Il = #l1l1lI11Il + 1, #I1lllI11Il, 1 do
            I1lllI11Il[I111lI11Il]["dot"]["Visible"] = false
            I1lllI11Il[I111lI11Il]["name"]["Visible"] = false
            I1lllI11Il[I111lI11Il]["owned"]["Visible"] = false
        end
        IIlllI11Il["Size"] = UDim2["new"](1, 0, 0, 28 + #l1l1lI11Il * 18)
    end
    local lIlII111Il = "idle"
    local IIlII111Il
    local l1lII111Il = false
    local I1lII111Il = 0
    local lllII111Il = 0
    local IllII111Il
    local nameData
    local iIi1111IlData
    local data
    local alternateParent
    local additionalParent
    local secondaryTextLabel
    local lI11I111Il = {}
    local function II11I111Il(I111lI11Il)
        local ll11lI11Il = math["max"](0, math["ceil"](tonumber(I111lI11Il) or 0))
        local Il11lI11Il = math["floor"](ll11lI11Il / 3600)
        local lIl1lI11Il = math["floor"]((ll11lI11Il % 3600) / 60)
        local IIl1lI11Il = ll11lI11Il % 60
        if Il11lI11Il > 0 then
            return string["format"]("%dh %02dm %02ds", Il11lI11Il, lIl1lI11Il, IIl1lI11Il)
        end
        return string["format"]("%02dm %02ds", lIl1lI11Il, IIl1lI11Il)
    end
    local function l111I111Il(I111lI11Il)
        local ll11lI11Il
        if type(I111lI11Il) == "table" and (IIl1lI11Il and type(IIl1lI11Il["RARITY_FUSE_DURATION"]) == "table") then
            ll11lI11Il = tonumber(IIl1lI11Il["RARITY_FUSE_DURATION"][I111lI11Il["Rarity"]])
        end
        ll11lI11Il = ll11lI11Il or IIl1lI11Il and tonumber(IIl1lI11Il["FUSE_DURATION"])
        return math["max"](ll11lI11Il or 0, type(I111lI11Il) == "table" and tonumber(I111lI11Il["RemainingTime"]) or 0)
    end
    local function I111I111Il(I111lI11Il)
        local ll11lI11Il = {
            ["empty"] = "Falta una pet.",
            ["notOwned"] = "Una pet ya no est\195\161 disponible.",
            ["duplicate"] = "Las 4 pets deben ser distintas.",
            ["equipped"] = "Desequip\195\161 las pets primero.",
            ["tradeLocked"] = "Una pet est\195\161 en intercambio.",
            ["robuxPet"] = "Esa pet no se puede fusionar.",
            ["protected"] = "Quit\195\161 la protecci\195\179n de la pet.",
            ["blocked"] = "Una pet est\195\161 bloqueada.",
            ["unconfigured"] = "Combinaci\195\179n no disponible.",
            ["evolvedNotAllowed"] = "No acepta pets evolucionadas.",
            ["incompleteSlots"] = "Coloc\195\161 las 4 pets.",
            ["ineligibleInput"] = "Una pet no es v\195\161lida.",
            ["rewardsUnavailable"] = "No hay resultados disponibles.",
            ["cooldown"] = "Esper\195\161 un momento.",
            ["rateLimited"] = "Esper\195\161 un momento.",
            ["busy"] = "Fuse Machine ocupada.",
            ["tooFar"] = "Acercate a la Fuse Machine.",
            ["notReady"] = "La pet todav\195\173a no est\195\161 lista.",
            ["grantFailed"] = "No se pudo entregar la pet.",
            ["petsFull"] = "Inventario de pets lleno.",
            ["invalidRequest"] = "Solicitud rechazada.",
            ["noRemote"] = "Fuse Machine no disponible.",
            ["fuseActive"] = "Ya hay una fusi\195\179n activa.",
            ["fuseNotReady"] = "La pet todav\195\173a no est\195\161 lista.",
            ["noFuse"] = "No hay una pet para reclamar.",
            ["disabled"] = "Fuse Machine desactivada."
        }
        return ll11lI11Il[tostring(I111lI11Il or "")] or "No se pudo completar."
    end
    local function ll11I111Il(I111lI11Il, ll11lI11Il, Il11lI11Il, lIl1lI11Il)
        if not I111lI11Il then
            return
        end
        local IIl1lI11Il = Il11lI11Il == true
        I111lI11Il["Text"] = tostring(ll11lI11Il or "")
        I111lI11Il:SetAttribute("FuseEnabled", IIl1lI11Il)
        I111lI11Il["TextColor3"] = IIl1lI11Il and l11llI11Il["white"] or l11llI11Il["dim"]
        I111lI11Il["BackgroundColor3"] = l11llI11Il["row"]
        I111lI11Il["BackgroundTransparency"] = IIl1lI11Il and 0.16 or 0.38
        local l1l1lI11Il = lI11I111Il[I111lI11Il]
        if l1l1lI11Il then
            l1l1lI11Il["BackgroundColor3"] = lIl1lI11Il or l11llI11Il["red"]
            l1l1lI11Il["BackgroundTransparency"] = IIl1lI11Il and 0.08 or 0.72
        end
    end
    local function Il11I111Il()
        local I111lI11Il = lIlII111Il == "fusing" or lIlII111Il == "ready"
        ll11I111Il(IllII111Il, l1lII111Il and "Procesando..." or "Poner pets", not l1lII111Il and not I111lI11Il, l11llI11Il["red"])
        local ll11lI11Il = I1lII111Il > 0 and "Quitar pets \194\183 " .. (I11II111Il(I1lII111Il) .. "/4") or "Quitar pets"
        ll11I111Il(nameData, ll11lI11Il, not l1lII111Il and (not I111lI11Il and I1lII111Il > 0), l11llI11Il["red"])
        ll11I111Il(data, "Actualizar inventario", not l1lII111Il, l11llI11Il["red"])
        if l1lII111Il then
            ll11I111Il(iIi1111IlData, "Procesando...", false, l11llI11Il["red"])
        elseif lIlII111Il == "fusing" then
            ll11I111Il(iIi1111IlData, "Fusionando", false, l11llI11Il["red"])
        elseif lIlII111Il == "ready" then
            ll11I111Il(iIi1111IlData, "Reclamar", true, l11llI11Il["green"])
        elseif lI1llI11Il > os["clock"]() then
            ll11I111Il(iIi1111IlData, "Confirmar fusi\195\179n", true, l11llI11Il["yellow"])
        else
            ll11I111Il(iIi1111IlData, "Fusionar", not l1lII111Il and I1lII111Il == 4, l11llI11Il["red"])
        end
    end
    local function handler(I111lI11Il, ll11lI11Il, Il11lI11Il, lIl1lI11Il)
        lIlII111Il = I111lI11Il or "idle"
        local IIl1lI11Il = lIlII111Il == "fusing" or lIlII111Il == "ready"
        llIII111Il["Visible"] = IIl1lI11Il
        IlIII111Il["Visible"] = IIl1lI11Il
        if not IIl1lI11Il then
            l11II111Il["Visible"] = false
            l11II111Il["Text"] = ""
            frame["Visible"] = false
        end
        if lIlII111Il == "fusing" and type(Il11lI11Il) == "number" then
            local I111lI11Il = math["max"](tonumber(lIl1lI11Il) or Il11lI11Il, 1)
            textLabel["Text"] = "Fusionando"
            textLabel["TextColor3"] = l11llI11Il["white"]
            parent["BackgroundColor3"] = l11llI11Il["red"]
            l11II111Il["Visible"] = true
            l11II111Il["Text"] = II11I111Il(Il11lI11Il)
            l11II111Il["TextColor3"] = l11llI11Il["white"]
            frame["Visible"] = true
            secondaryParent["Size"] = UDim2["fromScale"](math["clamp"](1 - Il11lI11Il / I111lI11Il, 0, 1), 1)
            secondaryParent["BackgroundColor3"] = l11llI11Il["red"]
        elseif lIlII111Il == "ready" then
            textLabel["Text"] = "Pet lista para reclamar"
            textLabel["TextColor3"] = l11llI11Il["green"]
            textLabel["Size"] = UDim2["new"](1, -40, 0, 42)
            parent["BackgroundColor3"] = l11llI11Il["green"]
            l11II111Il["Visible"] = false
            frame["Visible"] = false
        end
        if lIlII111Il ~= "ready" then
            textLabel["Size"] = UDim2["new"](0.58, -20, 0, 30)
        end
        local l1l1lI11Il
        local I1l1lI11Il
        if lIlII111Il == "confirm" then
            l1l1lI11Il = "Las 4 pets se eliminan al fusionar."
            I1l1lI11Il = l11llI11Il["yellow"]
        elseif lIlII111Il == "error" then
            l1l1lI11Il = tostring(ll11lI11Il or "No se pudo completar.")
            I1l1lI11Il = l11llI11Il["red"]
            lllII111Il = os["clock"]() + 4
        elseif lIlII111Il == "claimed" then
            l1l1lI11Il = tostring(ll11lI11Il or "Pet reclamada.")
            I1l1lI11Il = l11llI11Il["green"]
            lllII111Il = os["clock"]() + 5
        end
        if alternateParent then
            alternateParent["Visible"] = l1l1lI11Il ~= nil
            if l1l1lI11Il then
                secondaryTextLabel["Text"] = l1l1lI11Il
                secondaryTextLabel["TextColor3"] = I1l1lI11Il
                additionalParent["BackgroundColor3"] = I1l1lI11Il
            end
        end
        Il11I111Il()
    end
    local function isI111L11IlValid()
        if not I1l1lI11Il or type(I1l1lI11Il["GetFuseRemaining"]) ~= "function" then
            return nil
        end
        local I111lI11Il, ll11lI11Il = pcall(I1l1lI11Il["GetFuseRemaining"], I1l1lI11Il)
        return I111lI11Il and (type(ll11lI11Il) == "number" and ll11lI11Il) or nil
    end
    local function handleI111L11Il()
        if not I1l1lI11Il or type(I1l1lI11Il["GetSlots"]) ~= "function" then
            return 0
        end
        local I111lI11Il, ll11lI11Il = pcall(I1l1lI11Il["GetSlots"], I1l1lI11Il)
        if not I111lI11Il or type(ll11lI11Il) ~= "table" then
            return 0
        end
        local Il11lI11Il = 0
        for I111lI11Il = 1, 4, 1 do
            if ll11lI11Il[I111lI11Il] then
                Il11lI11Il = Il11lI11Il + 1
            end
        end
        return Il11lI11Il
    end
    local function secondaryHandler()
        if not I1l1lI11Il or type(I1l1lI11Il["GetSlots"]) ~= "function" then
            return nil
        end
        local I111lI11Il, ll11lI11Il = pcall(I1l1lI11Il["GetSlots"], I1l1lI11Il)
        if not I111lI11Il or type(ll11lI11Il) ~= "table" then
            return nil
        end
        local lIl1lI11Il = {}
        for I111lI11Il = 1, 4, 1 do
            local Il11lI11Il = ll11lI11Il[I111lI11Il]
            if not Il11lI11Il then
                return nil
            end
            lIl1lI11Il[Il11lI11Il["Name"]] = (lIl1lI11Il[Il11lI11Il["Name"]] or 0) + 1
        end
        for I111lI11Il, ll11lI11Il in ipairs(Il11lI11Il) do
            local Il11lI11Il = {}
            for I111lI11Il, ll11lI11Il in ipairs(ll11lI11Il["pets"]) do
                Il11lI11Il[ll11lI11Il["name"]] = (Il11lI11Il[ll11lI11Il["name"]] or 0) + 1
            end
            local IIl1lI11Il = true
            for I111lI11Il, ll11lI11Il in pairs(Il11lI11Il) do
                if lIl1lI11Il[I111lI11Il] ~= ll11lI11Il then
                    IIl1lI11Il = false
                    break
                end
            end
            for I111lI11Il, ll11lI11Il in pairs(lIl1lI11Il) do
                if Il11lI11Il[I111lI11Il] ~= ll11lI11Il then
                    IIl1lI11Il = false
                    break
                end
            end
            if IIl1lI11Il then
                return I111lI11Il
            end
        end
        return nil
    end
    IlIllI11Il = function()
        if l1lII111Il then
            return
        end
        local I111lI11Il = isI111L11IlValid()
        if type(I111lI11Il) == "number" then
            I1lII111Il = handleI111L11Il()
            if I111lI11Il > 0 then
                IIlII111Il = math["max"](tonumber(IIlII111Il) or 0, I111lI11Il)
                handler("fusing", nil, I111lI11Il, IIlII111Il)
            else
                handler("ready", nil, 0, IIlII111Il)
            end
        else
            local I111lI11Il = handleI111L11Il()
            I1lII111Il = I111lI11Il
            if lI1llI11Il > 0 and lI1llI11Il <= os["clock"]() then
                lI1llI11Il = 0
                handler(I111lI11Il == 4 and "prepared" or "idle", I111lI11Il == 4 and "4/4 pets colocadas." or nil)
            elseif lllII111Il > 0 and (lllII111Il <= os["clock"]() and (lIlII111Il == "error" or lIlII111Il == "claimed")) then
                lllII111Il = 0
                handler(I111lI11Il == 4 and "prepared" or "idle")
            elseif lIlII111Il == "idle" and I111lI11Il == 4 then
                handler("prepared")
            elseif lIlII111Il == "prepared" and I111lI11Il ~= 4 then
                handler("idle")
            else
                Il11I111Il()
            end
        end
    end
    local function createTextButton(ll11lI11Il, Il11lI11Il)
        local IIl1lI11Il = Instance["new"]("TextButton")
        IIl1lI11Il["LayoutOrder"] = IIl1l111Il(I111lI11Il)
        IIl1lI11Il["Text"] = ll11lI11Il
        IIl1lI11Il["TextColor3"] = l11llI11Il["white"]
        IIl1lI11Il["Font"] = I11llI11Il
        IIl1lI11Il["TextSize"] = 11
        IIl1lI11Il["TextXAlignment"] = Enum["TextXAlignment"]["Left"]
        IIl1lI11Il["AutoButtonColor"] = false
        IIl1lI11Il["Parent"] = I111lI11Il
        local l1l1lI11Il = Ill1l111Il(IIl1lI11Il, 34)
        local I1l1lI11Il = Instance["new"]("UIPadding")
        I1l1lI11Il["PaddingLeft"] = UDim["new"](0, 20)
        I1l1lI11Il["PaddingRight"] = UDim["new"](0, 12)
        I1l1lI11Il["Parent"] = IIl1lI11Il
        local lll1lI11Il = Instance["new"]("Frame")
        lll1lI11Il["Size"] = UDim2["fromOffset"](3, 18)
        lll1lI11Il["Position"] = UDim2["new"](0, -12, 0.5, -9)
        lll1lI11Il["BackgroundColor3"] = l11llI11Il["red"]
        lll1lI11Il["BorderSizePixel"] = 0
        lll1lI11Il["ZIndex"] = 13
        lll1lI11Il["Parent"] = IIl1lI11Il
        ;(Instance["new"]("UICorner", lll1lI11Il))["CornerRadius"] = UDim["new"](1, 0)
        lI11I111Il[IIl1lI11Il] = lll1lI11Il
        IIl1lI11Il:SetAttribute("FuseEnabled", true)
        IllllI11Il(IIl1lI11Il["Activated"]:Connect(function()
            if IIl1lI11Il:GetAttribute("FuseEnabled") == true then
                pcall(Il11lI11Il, IIl1lI11Il)
            end
        end))
        IllllI11Il(IIl1lI11Il["MouseEnter"]:Connect(function()
            if IIl1lI11Il:GetAttribute("FuseEnabled") == true then
                (lIl1lI11Il:Create(IIl1lI11Il, TweenInfo["new"](0.1), {
                    ["BackgroundColor3"] = l11llI11Il["rowHover"]
                })):Play()
                ;(lIl1lI11Il:Create(l1l1lI11Il, TweenInfo["new"](0.1), {
                    ["Transparency"] = 0.18,
                    ["Color"] = l11llI11Il["cyan"]
                })):Play()
            end
        end))
        IllllI11Il(IIl1lI11Il["MouseLeave"]:Connect(function()
            IIl1lI11Il["BackgroundColor3"] = l11llI11Il["row"]
            IIl1lI11Il["BackgroundTransparency"] = IIl1lI11Il:GetAttribute("FuseEnabled") == true and 0.16 or 0.38
            ;(lIl1lI11Il:Create(l1l1lI11Il, TweenInfo["new"](0.1), {
                ["Transparency"] = 0.4,
                ["Color"] = l11llI11Il["blue"]
            })):Play()
        end))
        return IIl1lI11Il
    end
    local function alternateHandler()
        if l1lII111Il then
            return
        end
        local I111lI11Il = isI111L11IlValid()
        if type(I111lI11Il) == "number" then
            IlIllI11Il()
            return
        end
        local ll11lI11Il = ll11LIIlOption or Il11lI11Il[1]
        local lIl1lI11Il = IIIllI11Il:FindFirstChild("petsFolder")
        if not lIl1lI11Il or not I1l1lI11Il or type(I1l1lI11Il["SetSlot"]) ~= "function" or type(I1l1lI11Il["DescribePet"]) ~= "function" then
            handler("error", "La Fuse Machine todav\195\173a no est\195\161 disponible.")
            return
        end
        local IIl1lI11Il = {}
        local l1l1lI11Il = {}
        for I111lI11Il, ll11lI11Il in ipairs(ll11lI11Il["pets"]) do
            local Il11lI11Il
            for I111lI11Il, lIl1lI11Il in ipairs(lIl1lI11Il:GetChildren()) do
                if Il11lI11Il then
                    break
                end
                if lIl1lI11Il:IsA("Folder") then
                    for I111lI11Il, lIl1lI11Il in ipairs(lIl1lI11Il:GetChildren()) do
                        if lIl1lI11Il["Name"] == ll11lI11Il["name"] and (not l1l1lI11Il[lIl1lI11Il] and not lIl1lI11Il:FindFirstChild("evolved")) then
                            local I111lI11Il, ll11lI11Il = pcall(I1l1lI11Il["DescribePet"], I1l1lI11Il, lIl1lI11Il)
                            if I111lI11Il and (type(ll11lI11Il) == "table" and ll11lI11Il["Eligible"]) then
                                Il11lI11Il = lIl1lI11Il
                                break
                            end
                        end
                    end
                end
            end
            if not Il11lI11Il then
                handler("error", "Faltan pets para esta receta.")
                return
            end
            l1l1lI11Il[Il11lI11Il] = true
            IIl1lI11Il[#IIl1lI11Il + 1] = Il11lI11Il
        end
        local lll1lI11Il = type(I1l1lI11Il["GetSlots"]) == "function" and I1l1lI11Il:GetSlots() or {}
        l1lII111Il = true
        lI1llI11Il = 0
        handler("loading", "Colocando cuatro pets distintas...")
        local Ill1lI11Il = pcall(I1l1lI11Il["ClearSlots"], I1l1lI11Il)
        if not Ill1lI11Il then
            l1lII111Il = false
            handler("error", "No se pudieron limpiar los espacios de fusi\195\179n.")
            return
        end
        for I111lI11Il, ll11lI11Il in ipairs(IIl1lI11Il) do
            local Il11lI11Il, lIl1lI11Il = pcall(I1l1lI11Il["SetSlot"], I1l1lI11Il, I111lI11Il, ll11lI11Il)
            if not Il11lI11Il or not lIl1lI11Il then
                pcall(I1l1lI11Il["ClearSlots"], I1l1lI11Il)
                for I111lI11Il = 1, 4, 1 do
                    local ll11lI11Il = lll1lI11Il[I111lI11Il]
                    if ll11lI11Il and ll11lI11Il["Parent"] then
                        pcall(I1l1lI11Il["SetSlot"], I1l1lI11Il, I111lI11Il, ll11lI11Il)
                    end
                end
                l1lII111Il = false
                handler("error", "No se pudo colocar la receta. Intent\195\161 nuevamente.")
                return
            end
        end
        l1lII111Il = false
        I1lII111Il = 4
        local lIIllI11Il = type(I1l1lI11Il["GetLatestPreview"]) == "function" and I1l1lI11Il:GetLatestPreview() or nil
        if type(lIIllI11Il) == "table" and tonumber(lIIllI11Il["FuseDuration"]) then
            IIlII111Il = tonumber(lIIllI11Il["FuseDuration"])
        end
        handler("prepared")
    end
    local function lIIlI111Il()
        if l1lII111Il or I1lII111Il <= 0 or isI111L11IlValid() ~= nil or not I1l1lI11Il or type(I1l1lI11Il["ClearSlots"]) ~= "function" then
            return
        end
        l1lII111Il = true
        lI1llI11Il = 0
        handler("loading")
        local I111lI11Il = pcall(I1l1lI11Il["ClearSlots"], I1l1lI11Il)
        l1lII111Il = false
        I1lII111Il = handleI111L11Il()
        if I111lI11Il and I1lII111Il == 0 then
            handler("idle")
        else
            handler("error", "No se pudieron quitar las pets.")
        end
    end
    local function IIIlI111Il()
        if l1lII111Il or not I1l1lI11Il or type(I1l1lI11Il["ClaimFuse"]) ~= "function" then
            return
        end
        l1lII111Il = true
        handler("loading", "Retirando tu nueva pet...")
        local I111lI11Il, ll11lI11Il = pcall(I1l1lI11Il["ClaimFuse"], I1l1lI11Il)
        l1lII111Il = false
        if not I111lI11Il or type(ll11lI11Il) ~= "table" then
            handler("error", "No se pudo reclamar la pet. Intent\195\161 nuevamente.")
            return
        end
        if ll11lI11Il["Ok"] and type(ll11lI11Il["Result"]) == "table" then
            local I111lI11Il = tostring(ll11lI11Il["Result"]["PetName"] or "nueva pet")
            I1lII111Il = 0
            handler("claimed", "Obtuviste: " .. I111lI11Il)
            llIllI11Il()
        elseif ll11lI11Il["Fuse"] then
            local I111lI11Il = tonumber(ll11lI11Il["Fuse"]["RemainingTime"]) or 0
            IIlII111Il = math["max"](tonumber(IIlII111Il) or 0, l111I111Il(ll11lI11Il["Fuse"]))
            handler(I111lI11Il > 0 and "fusing" or "ready", nil, I111lI11Il, IIlII111Il)
        else
            handler("error", I111I111Il(ll11lI11Il["Reason"]))
        end
    end
    local function additionalHandler()
        if l1lII111Il then
            return
        end
        local I111lI11Il = isI111L11IlValid()
        if type(I111lI11Il) == "number" then
            if I111lI11Il <= 0 then
                IIIlI111Il()
            else
                IlIllI11Il()
            end
            return
        end
        if not I1l1lI11Il or type(I1l1lI11Il["Craft"]) ~= "function" then
            handler("error", "La Fuse Machine todav\195\173a no est\195\161 disponible.")
            return
        end
        if handleI111L11Il() ~= 4 then
            handler("error", "Coloc\195\161 las 4 pets.")
            return
        end
        if lI1llI11Il <= os["clock"]() then
            lI1llI11Il = os["clock"]() + 4
            handler("confirm")
            return
        end
        lI1llI11Il = 0
        l1lII111Il = true
        handler("loading", "Iniciando la fusi\195\179n...")
        local ll11lI11Il, Il11lI11Il = pcall(I1l1lI11Il["Craft"], I1l1lI11Il)
        l1lII111Il = false
        if not ll11lI11Il or type(Il11lI11Il) ~= "table" then
            handler("error", "No se pudo iniciar la fusi\195\179n. Intent\195\161 nuevamente.")
            return
        end
        if Il11lI11Il["Ok"] and Il11lI11Il["Fuse"] then
            local I111lI11Il = tonumber(Il11lI11Il["Fuse"]["RemainingTime"]) or 0
            I1lII111Il = 0
            IIlII111Il = math["max"](tonumber(IIlII111Il) or 0, l111I111Il(Il11lI11Il["Fuse"]))
            handler(I111lI11Il > 0 and "fusing" or "ready", nil, I111lI11Il, IIlII111Il)
            llIllI11Il()
        elseif Il11lI11Il["Ok"] and type(Il11lI11Il["Result"]) == "table" then
            I1lII111Il = 0
            handler("claimed", "Obtuviste: " .. tostring(Il11lI11Il["Result"]["PetName"] or "nueva pet"))
            llIllI11Il()
        else
            handler("error", I111I111Il(Il11lI11Il["Reason"]))
        end
    end
    IllII111Il = createTextButton("Poner pets", alternateHandler)
    IllII111Il["Name"] = "FusePrepareRecipeButton"
    nameData = createTextButton("Quitar pets", lIIlI111Il)
    nameData["Name"] = "FuseRemovePetsButton"
    iIi1111IlData = createTextButton("Fusionar", additionalHandler)
    iIi1111IlData["Name"] = "FuseActionButton"
    data = createTextButton("Actualizar inventario", llIllI11Il)
    data["Name"] = "FuseRefreshInventoryButton"
    alternateParent = Instance["new"]("Frame")
    alternateParent["Name"] = "FuseFeedbackRow"
    alternateParent["LayoutOrder"] = IIl1l111Il(I111lI11Il)
    alternateParent["Parent"] = I111lI11Il
    alternateParent["Visible"] = false
    Ill1l111Il(alternateParent, 32)
    additionalParent = Instance["new"]("Frame")
    additionalParent["Size"] = UDim2["fromOffset"](3, 18)
    additionalParent["Position"] = UDim2["new"](0, 8, 0.5, -9)
    additionalParent["BackgroundColor3"] = l11llI11Il["red"]
    additionalParent["BorderSizePixel"] = 0
    additionalParent["ZIndex"] = 13
    additionalParent["Parent"] = alternateParent
    ;(Instance["new"]("UICorner", additionalParent))["CornerRadius"] = UDim["new"](1, 0)
    secondaryTextLabel = Instance["new"]("TextLabel")
    secondaryTextLabel["Size"] = UDim2["new"](1, -32, 1, 0)
    secondaryTextLabel["Position"] = UDim2["fromOffset"](20, 0)
    secondaryTextLabel["BackgroundTransparency"] = 1
    secondaryTextLabel["Text"] = ""
    secondaryTextLabel["TextColor3"] = l11llI11Il["red"]
    secondaryTextLabel["Font"] = I11llI11Il
    secondaryTextLabel["TextSize"] = 11
    secondaryTextLabel["TextXAlignment"] = Enum["TextXAlignment"]["Left"]
    secondaryTextLabel["TextTruncate"] = Enum["TextTruncate"]["AtEnd"]
    secondaryTextLabel["ZIndex"] = 13
    secondaryTextLabel:SetAttribute("Young0xPreserveTextStyle", true)
    secondaryTextLabel["Parent"] = alternateParent
    local petsFolder = IIIllI11Il:FindFirstChild("petsFolder")
    if petsFolder then
        IllllI11Il(petsFolder["DescendantAdded"]:Connect(function()
            task["defer"](llIllI11Il)
        end))
        IllllI11Il(petsFolder["DescendantRemoving"]:Connect(function()
            task["defer"](llIllI11Il)
        end))
    end
    local llIlI111Il = secondaryHandler()
    I1lII111Il = handleI111L11Il()
    if llIlI111Il then
        II1llI11Il:SetIndex(llIlI111Il)
    else
        llIllI11Il()
    end
    handler(llIlI111Il and "prepared" or "idle")
    if I1l1lI11Il and type(I1l1lI11Il["GetFuse"]) == "function" then
        getSendMuscleEventI111L11Il("fuseMachineQuery", function()
            local I111lI11Il, ll11lI11Il = pcall(I1l1lI11Il["GetFuse"], I1l1lI11Il)
            if I111lI11Il and type(ll11lI11Il) == "table" then
                IIlII111Il = l111I111Il(ll11lI11Il)
            end
            IlIllI11Il()
        end)
    elseif I1l1lI11Il and type(I1l1lI11Il["EnsureFuseKnown"]) == "function" then
        pcall(I1l1lI11Il["EnsureFuseKnown"], I1l1lI11Il)
    end
    getSendMuscleEventI111L11Il("fuseMachineStatus", function()
        while ll1llI11Il["running"] do
            IlIllI11Il()
            task["wait"](0.5)
        end
    end)
end
II1ll111Il()
II1ll111Il = function()
    local ll11lI11Il = I111l111Il["Stats"]
    lll1l111Il(ll11lI11Il, "ESTAD\195\141STICAS")
    ll1llI11Il["statsTargetUserId"] = IIIllI11Il["UserId"]
    ll1llI11Il["statsTargetOptions"] = function()
        local ll11lI11Il = {
            {
                ["label"] = IIIllI11Il["DisplayName"],
                ["name"] = IIIllI11Il["Name"],
                ["userId"] = IIIllI11Il["UserId"]
            }
        }
        local Il11lI11Il = {}
        for I111lI11Il, ll11lI11Il in ipairs(I111lI11Il:GetPlayers()) do
            if ll11lI11Il ~= IIIllI11Il then
                Il11lI11Il[#Il11lI11Il + 1] = {
                    ["label"] = ll11lI11Il["DisplayName"],
                    ["name"] = ll11lI11Il["Name"],
                    ["userId"] = ll11lI11Il["UserId"]
                }
            end
        end
        table["sort"](Il11lI11Il, function(I111lI11Il, ll11lI11Il)
            return I111lI11Il["label"]:lower() < ll11lI11Il["label"]:lower()
        end)
        for I111lI11Il, Il11lI11Il in ipairs(Il11lI11Il) do
            ll11lI11Il[#ll11lI11Il + 1] = Il11lI11Il
        end
        return ll11lI11Il
    end
    ll1llI11Il["statsSelectedPlayer"] = function()
        return I111lI11Il:GetPlayerByUserId(tonumber(ll1llI11Il["statsTargetUserId"]) or IIIllI11Il["UserId"])
    end
    local Il11lI11Il = Instance["new"]("Frame")
    Il11lI11Il["Name"] = "PlayerCard"
    Il11lI11Il["LayoutOrder"] = IIl1l111Il(ll11lI11Il)
    Il11lI11Il["Parent"] = ll11lI11Il
    Ill1l111Il(Il11lI11Il, 112)
    local lIl1lI11Il = Instance["new"]("Frame")
    lIl1lI11Il["Size"] = UDim2["fromOffset"](3, 84)
    lIl1lI11Il["Position"] = UDim2["new"](0, 8, 0.5, -42)
    lIl1lI11Il["BackgroundColor3"] = l11llI11Il["red"]
    lIl1lI11Il["BackgroundTransparency"] = 0.08
    lIl1lI11Il["BorderSizePixel"] = 0
    lIl1lI11Il["ZIndex"] = 13
    lIl1lI11Il["Parent"] = Il11lI11Il
    ;(Instance["new"]("UICorner", lIl1lI11Il))["CornerRadius"] = UDim["new"](1, 0)
    local IIl1lI11Il = Instance["new"]("ImageLabel")
    IIl1lI11Il["Name"] = "Avatar"
    IIl1lI11Il["Size"] = UDim2["fromOffset"](72, 72)
    IIl1lI11Il["Position"] = UDim2["fromOffset"](18, 20)
    IIl1lI11Il["BackgroundColor3"] = l11llI11Il["panel"]
    IIl1lI11Il["BackgroundTransparency"] = 0.1
    IIl1lI11Il["BorderSizePixel"] = 0
    IIl1lI11Il["Image"] = ll1llI11Il["profileImage"]
    IIl1lI11Il["ScaleType"] = Enum["ScaleType"]["Crop"]
    IIl1lI11Il["ZIndex"] = 13
    IIl1lI11Il["Parent"] = Il11lI11Il
    ll1llI11Il["profileAvatar"] = IIl1lI11Il
    ;(Instance["new"]("UICorner", IIl1lI11Il))["CornerRadius"] = UDim["new"](0, 12)
    lIl1l111Il(IIl1lI11Il, 1, 0.16)
    local l1l1lI11Il = Instance["new"]("TextLabel")
    l1l1lI11Il["Name"] = "DisplayName"
    l1l1lI11Il["Size"] = UDim2["new"](1, -112, 0, 22)
    l1l1lI11Il["Position"] = UDim2["fromOffset"](102, 10)
    l1l1lI11Il["BackgroundTransparency"] = 1
    l1l1lI11Il["Text"] = tostring(IIIllI11Il["DisplayName"])
    l1l1lI11Il["TextColor3"] = l11llI11Il["white"]
    l1l1lI11Il["Font"] = l11llI11Il["fontBold"]
    l1l1lI11Il["TextSize"] = 15
    l1l1lI11Il["TextXAlignment"] = Enum["TextXAlignment"]["Left"]
    l1l1lI11Il["TextTruncate"] = Enum["TextTruncate"]["AtEnd"]
    l1l1lI11Il["ZIndex"] = 13
    l1l1lI11Il["Parent"] = Il11lI11Il
    local I1l1lI11Il = Instance["new"]("TextLabel")
    I1l1lI11Il["Name"] = "Username"
    I1l1lI11Il["Size"] = UDim2["new"](1, -112, 0, 17)
    I1l1lI11Il["Position"] = UDim2["fromOffset"](102, 33)
    I1l1lI11Il["BackgroundTransparency"] = 1
    I1l1lI11Il["Text"] = "@" .. tostring(IIIllI11Il["Name"])
    I1l1lI11Il["TextColor3"] = l11llI11Il["dim"]
    I1l1lI11Il["Font"] = I11llI11Il
    I1l1lI11Il["TextSize"] = 11
    I1l1lI11Il["TextXAlignment"] = Enum["TextXAlignment"]["Left"]
    I1l1lI11Il["TextTruncate"] = Enum["TextTruncate"]["AtEnd"]
    I1l1lI11Il["ZIndex"] = 13
    I1l1lI11Il["Parent"] = Il11lI11Il
    local lll1lI11Il = Instance["new"]("TextLabel")
    lll1lI11Il["Name"] = "FPS"
    lll1lI11Il["Size"] = UDim2["fromOffset"](90, 19)
    lll1lI11Il["Position"] = UDim2["fromOffset"](102, 55)
    lll1lI11Il["BackgroundTransparency"] = 1
    lll1lI11Il["Text"] = "FPS: 0"
    lll1lI11Il["TextColor3"] = l11llI11Il["green"]
    lll1lI11Il["Font"] = l11llI11Il["fontBold"]
    lll1lI11Il["TextSize"] = 11
    lll1lI11Il["TextXAlignment"] = Enum["TextXAlignment"]["Left"]
    lll1lI11Il["ZIndex"] = 13
    lll1lI11Il["Parent"] = Il11lI11Il
    local Ill1lI11Il = Instance["new"]("TextLabel")
    Ill1lI11Il["Name"] = "Ping"
    Ill1lI11Il["Size"] = UDim2["new"](1, -210, 0, 19)
    Ill1lI11Il["Position"] = UDim2["fromOffset"](196, 55)
    Ill1lI11Il["BackgroundTransparency"] = 1
    Ill1lI11Il["Text"] = "Ping: 0 ms"
    Ill1lI11Il["TextColor3"] = l11llI11Il["green"]
    Ill1lI11Il["Font"] = l11llI11Il["fontBold"]
    Ill1lI11Il["TextSize"] = 11
    Ill1lI11Il["TextXAlignment"] = Enum["TextXAlignment"]["Left"]
    Ill1lI11Il["TextTruncate"] = Enum["TextTruncate"]["AtEnd"]
    Ill1lI11Il["ZIndex"] = 13
    Ill1lI11Il["Parent"] = Il11lI11Il
    local lIIllI11Il = Instance["new"]("TextLabel")
    lIIllI11Il["Name"] = "ScriptUptime"
    lIIllI11Il["Size"] = UDim2["new"](1, -112, 0, 20)
    lIIllI11Il["Position"] = UDim2["fromOffset"](102, 80)
    lIIllI11Il["BackgroundTransparency"] = 1
    lIIllI11Il["Text"] = "Script ejecutado hace: 0h 00m 00s"
    lIIllI11Il["TextColor3"] = l11llI11Il["soft"]
    lIIllI11Il["Font"] = I11llI11Il
    lIIllI11Il["TextSize"] = 11
    lIIllI11Il["TextXAlignment"] = Enum["TextXAlignment"]["Left"]
    lIIllI11Il["TextTruncate"] = Enum["TextTruncate"]["AtEnd"]
    lIIllI11Il["ZIndex"] = 13
    lIIllI11Il["Parent"] = Il11lI11Il
    local data = {
        {
            ["icon"] = "\195\176\194\159\194\146\194\170",
            ["label"] = "Fuerza",
            ["names"] = {
                "Strength",
                "Fuerza"
            }
        },
        {
            ["icon"] = "\195\176\194\159\194\155\194\161\195\175\194\184\194\143",
            ["label"] = "Durabilidad",
            ["names"] = {
                "Durability",
                "Durabilidad"
            }
        },
        {
            ["icon"] = "\195\162\194\154\194\161",
            ["label"] = "Agilidad",
            ["names"] = {
                "Agility",
                "Agilidad"
            }
        },
        {
            ["icon"] = "\195\176\194\159\194\148\194\132",
            ["label"] = "Rebirths",
            ["names"] = {
                "Rebirths",
                "Renacimientos"
            }
        },
        {
            ["icon"] = "\195\162\194\154\194\148\195\175\194\184\194\143",
            ["label"] = "Kills",
            ["names"] = {
                "Kills"
            }
        },
        {
            ["icon"] = "\195\176\194\159\194\146\194\142",
            ["label"] = "Gemas",
            ["names"] = {
                "Gems",
                "Gemas"
            }
        },
        {
            ["icon"] = "\195\176\194\159\194\152\194\135",
            ["label"] = "Good Karma",
            ["names"] = {
                "goodKarma",
                "Good Karma"
            }
        },
        {
            ["icon"] = "\195\176\194\159\194\152\194\136",
            ["label"] = "Evil Karma",
            ["names"] = {
                "evilKarma",
                "Evil Karma"
            }
        }
    }
    local parent = Instance["new"]("Frame")
    parent["Size"] = UDim2["new"](1, 0, 0, 258)
    parent["BackgroundTransparency"] = 1
    parent["BorderSizePixel"] = 0
    parent["LayoutOrder"] = IIl1l111Il(ll11lI11Il)
    parent["ZIndex"] = 11
    parent["Parent"] = ll11lI11Il
    local llIllI11Il = Instance["new"]("UIGridLayout")
    llIllI11Il["CellSize"] = UDim2["new"](0.5, -3, 0, 60)
    llIllI11Il["CellPadding"] = UDim2["fromOffset"](6, 6)
    llIllI11Il["FillDirectionMaxCells"] = 2
    llIllI11Il["SortOrder"] = Enum["SortOrder"]["LayoutOrder"]
    llIllI11Il["Parent"] = parent
    for I111lI11Il, ll11lI11Il in ipairs(data) do
        local Il11lI11Il = Instance["new"]("Frame")
        Il11lI11Il["BackgroundColor3"] = l11llI11Il["row"]
        Il11lI11Il["BackgroundTransparency"] = 0.2
        Il11lI11Il["BorderSizePixel"] = 0
        Il11lI11Il["LayoutOrder"] = I111lI11Il
        Il11lI11Il["ZIndex"] = 12
        Il11lI11Il["Parent"] = parent
        ;(Instance["new"]("UICorner", Il11lI11Il))["CornerRadius"] = UDim["new"](0, 10)
        lIl1l111Il(Il11lI11Il, 1, 0.24)
        local lIl1lI11Il = Instance["new"]("TextLabel")
        lIl1lI11Il["Size"] = UDim2["fromOffset"](34, 34)
        lIl1lI11Il["Position"] = UDim2["fromOffset"](10, 13)
        lIl1lI11Il["BackgroundColor3"] = l11llI11Il["tabOn"]
        lIl1lI11Il["BackgroundTransparency"] = 0.72
        lIl1lI11Il["BorderSizePixel"] = 0
        lIl1lI11Il["Text"] = ll11lI11Il["icon"]
        lIl1lI11Il["TextColor3"] = l11llI11Il["white"]
        lIl1lI11Il["Font"] = l11llI11Il["fontBold"]
        lIl1lI11Il["TextSize"] = 18
        lIl1lI11Il["ZIndex"] = 13
        lIl1lI11Il["Parent"] = Il11lI11Il
        ;(Instance["new"]("UICorner", lIl1lI11Il))["CornerRadius"] = UDim["new"](0, 8)
        local IIl1lI11Il = Instance["new"]("TextLabel")
        IIl1lI11Il["Size"] = UDim2["new"](1, -62, 0, 18)
        IIl1lI11Il["Position"] = UDim2["fromOffset"](54, 8)
        IIl1lI11Il["BackgroundTransparency"] = 1
        IIl1lI11Il["Text"] = ll11lI11Il["label"]
        IIl1lI11Il["TextColor3"] = l11llI11Il["soft"]
        IIl1lI11Il["Font"] = l11llI11Il["fontBold"]
        IIl1lI11Il["TextSize"] = 11
        IIl1lI11Il["TextXAlignment"] = Enum["TextXAlignment"]["Left"]
        IIl1lI11Il["TextTruncate"] = Enum["TextTruncate"]["AtEnd"]
        IIl1lI11Il["ZIndex"] = 13
        IIl1lI11Il["Parent"] = Il11lI11Il
        local l1l1lI11Il = Instance["new"]("TextLabel")
        l1l1lI11Il["Size"] = UDim2["new"](1, -62, 0, 27)
        l1l1lI11Il["Position"] = UDim2["fromOffset"](54, 25)
        l1l1lI11Il["BackgroundTransparency"] = 1
        l1l1lI11Il["Text"] = "0"
        l1l1lI11Il["TextColor3"] = l11llI11Il["white"]
        l1l1lI11Il["Font"] = l11llI11Il["fontBold"]
        l1l1lI11Il["TextScaled"] = true
        l1l1lI11Il["TextXAlignment"] = Enum["TextXAlignment"]["Left"]
        l1l1lI11Il["ZIndex"] = 13
        l1l1lI11Il["Parent"] = Il11lI11Il
        local I1l1lI11Il = Instance["new"]("UITextSizeConstraint")
        I1l1lI11Il["MinTextSize"] = 10
        I1l1lI11Il["MaxTextSize"] = 18
        I1l1lI11Il["Parent"] = l1l1lI11Il
        ll11lI11Il["valueLabel"] = l1l1lI11Il
    end
    ll1llI11Il["setStatsPrivateRowsVisible"] = function(I111lI11Il)
        I111lI11Il = I111lI11Il == true
        lll1lI11Il["Visible"] = I111lI11Il
        Ill1lI11Il["Visible"] = I111lI11Il
        lIIllI11Il["Visible"] = I111lI11Il
    end
    ll1llI11Il["statsPlayerSelector"] = llIll111Il(ll11lI11Il, "Ver estad\195\173sticas de", ll1llI11Il["statsTargetOptions"](), function(I111lI11Il)
        ll1llI11Il["statsTargetUserId"] = type(I111lI11Il) == "table" and I111lI11Il["userId"] or IIIllI11Il["UserId"]
        ll1llI11Il["setStatsPrivateRowsVisible"](ll1llI11Il["statsTargetUserId"] == IIIllI11Il["UserId"])
    end)
    local IlIllI11Il = os["time"]()
    local function lI1llI11Il(I111lI11Il)
        local ll11lI11Il = math["floor"](I111lI11Il / 86400)
        local Il11lI11Il = math["floor"]((I111lI11Il % 86400) / 3600)
        local lIl1lI11Il = math["floor"]((I111lI11Il % 3600) / 60)
        local IIl1lI11Il = I111lI11Il % 60
        if ll11lI11Il > 0 then
            return string["format"]("%dd %02dh %02dm %02ds", ll11lI11Il, Il11lI11Il, lIl1lI11Il, IIl1lI11Il)
        end
        return string["format"]("%dh %02dm %02ds", Il11lI11Il, lIl1lI11Il, IIl1lI11Il)
    end
    getSendMuscleEventI111L11Il("statsUpdater", function()
        while ll1llI11Il["running"] do
            local I111lI11Il = ll1llI11Il["statsSelectedPlayer"]() or IIIllI11Il
            if I111lI11Il["UserId"] ~= ll1llI11Il["statsTargetUserId"] then
                ll1llI11Il["statsTargetUserId"] = I111lI11Il["UserId"]
                if ll1llI11Il["statsPlayerSelector"] then
                    ll1llI11Il["statsPlayerSelector"]:SetIndex(1)
                end
            end
            if ll1llI11Il["statsRenderedUserId"] ~= I111lI11Il["UserId"] then
                ll1llI11Il["statsRenderedUserId"] = I111lI11Il["UserId"]
                l1l1lI11Il["Text"] = tostring(I111lI11Il["DisplayName"])
                I1l1lI11Il["Text"] = "@" .. tostring(I111lI11Il["Name"])
                IIl1lI11Il["Image"] = "rbxthumb://type=AvatarHeadShot&id=" .. (tostring(I111lI11Il["UserId"]) .. "&w=150&h=150")
            end
            local ll11lI11Il = I111lI11Il == IIIllI11Il
            ll1llI11Il["setStatsPrivateRowsVisible"](ll11lI11Il)
            if ll11lI11Il then
                local I111lI11Il = os["time"]() - IlIllI11Il
                lIIllI11Il["Text"] = "Script ejecutado hace: " .. lI1llI11Il(I111lI11Il)
                local ll11lI11Il = tonumber(ll1llI11Il["currentFps"]) or 0
                local Il11lI11Il = ll11lI11Il >= 55 and l11llI11Il["green"] or ll11lI11Il >= 30 and l11llI11Il["orange"] or l11llI11Il["red"]
                lll1lI11Il["Text"] = "FPS: " .. tostring(ll11lI11Il)
                lll1lI11Il["TextColor3"] = Il11lI11Il
                local lIl1lI11Il = isCachedPingValid()
                local IIl1lI11Il = ll1llI11Il["pingStatusColor"](lIl1lI11Il)
                Ill1lI11Il["Text"] = "Ping: " .. (tostring(lIl1lI11Il) .. " ms")
                Ill1lI11Il["TextColor3"] = IIl1lI11Il
            end
            for ll11lI11Il, Il11lI11Il in ipairs(data) do
                local lIl1lI11Il = l11II111Il(I111lI11Il, Il11lI11Il["names"])
                local IIl1lI11Il = lIl1lI11Il and tonumber(lIl1lI11Il["Value"]) or 0
                Il11lI11Il["valueLabel"]["Text"] = ll1llI11Il["formatExactWithUnit"](IIl1lI11Il)
            end
            task["wait"](0.5)
        end
    end)
end
II1ll111Il()
local I11ll111Il = nil
local ll1ll111Il = nil
local Il1ll111Il = Enum["KeyCode"]["RightShift"]
local lIlll111Il = false
local IIlll111Il = nil
ll1llI11Il["minimizeKeyConfigFolder"] = "Young0xHub/FG100"
ll1llI11Il["minimizeKeyConfigPath"] = ll1llI11Il["minimizeKeyConfigFolder"] .. ("/keybind_" .. (tostring(IIIllI11Il["UserId"]) .. ".txt"))
ll1llI11Il["loadMinimizeKey"] = function()
    if type(isfile) ~= "function" or type(readfile) ~= "function" then
        return false
    end
    local I111lI11Il, ll11lI11Il = pcall(function()
        if not isfile(ll1llI11Il["minimizeKeyConfigPath"]) then
            return nil
        end
        return readfile(ll1llI11Il["minimizeKeyConfigPath"])
    end)
    if not I111lI11Il or type(ll11lI11Il) ~= "string" then
        return false
    end
    ll11lI11Il = ll11lI11Il:match("^%s*([%w_]+)%s*$")
    if not ll11lI11Il then
        return false
    end
    for I111lI11Il, Il11lI11Il in ipairs(Enum["KeyCode"]:GetEnumItems()) do
        if Il11lI11Il["Name"] == ll11lI11Il and (Il11lI11Il ~= Enum["KeyCode"]["Escape"] and Il11lI11Il ~= Enum["KeyCode"]["Unknown"]) then
            Il1ll111Il = Il11lI11Il
            return true
        end
    end
    return false
end
ll1llI11Il["saveMinimizeKey"] = function(I111lI11Il)
    if typeof(I111lI11Il) ~= "EnumItem" or I111lI11Il["EnumType"] ~= Enum["KeyCode"] or type(writefile) ~= "function" then
        return false
    end
    return pcall(function()
        if type(isfolder) == "function" and (type(makefolder) == "function" and not isfolder(ll1llI11Il["minimizeKeyConfigFolder"])) then
            makefolder(ll1llI11Il["minimizeKeyConfigFolder"])
        end
        writefile(ll1llI11Il["minimizeKeyConfigPath"], I111lI11Il["Name"])
    end)
end
ll1llI11Il["loadMinimizeKey"]()
local function l1lll111Il(I111lI11Il)
    local ll11lI11Il = {
        [Enum["KeyCode"]["RightShift"]] = "Shift derecho",
        [Enum["KeyCode"]["LeftShift"]] = "Shift izquierdo",
        [Enum["KeyCode"]["Space"]] = "Espacio",
        [Enum["KeyCode"]["Backspace"]] = "Retroceso",
        [Enum["KeyCode"]["Return"]] = "Enter",
        [Enum["KeyCode"]["Escape"]] = "Esc",
        [Enum["KeyCode"]["CapsLock"]] = "Bloq May\195\186s",
        [Enum["KeyCode"]["KeypadZero"]] = "Numpad 0",
        [Enum["KeyCode"]["KeypadOne"]] = "Numpad 1",
        [Enum["KeyCode"]["KeypadTwo"]] = "Numpad 2",
        [Enum["KeyCode"]["KeypadThree"]] = "Numpad 3",
        [Enum["KeyCode"]["KeypadFour"]] = "Numpad 4",
        [Enum["KeyCode"]["KeypadFive"]] = "Numpad 5",
        [Enum["KeyCode"]["KeypadSix"]] = "Numpad 6",
        [Enum["KeyCode"]["KeypadSeven"]] = "Numpad 7",
        [Enum["KeyCode"]["KeypadEight"]] = "Numpad 8",
        [Enum["KeyCode"]["KeypadNine"]] = "Numpad 9"
    }
    if ll11lI11Il[I111lI11Il] then
        return ll11lI11Il[I111lI11Il]
    end
    local Il11lI11Il, lIl1lI11Il = pcall(IIl1lI11Il["GetStringForKeyCode"], IIl1lI11Il, I111lI11Il)
    if Il11lI11Il and (type(lIl1lI11Il) == "string" and lIl1lI11Il ~= "") then
        return lIl1lI11Il
    end
    return I111lI11Il["Name"]
end
local function I1lll111Il()
    return "Keybind: " .. l1lll111Il(Il1ll111Il)
end
do
    local function ll11lI11Il()
        local ll11lI11Il = {
            [4473738491] = true
        }
        local l1l1lI11Il = {
            ["young0x"] = true,
            ["dm_sebas94k"] = true
        }
        local function I1l1lI11Il(I111lI11Il)
            if not I111lI11Il then
                return false
            end
            if ll11lI11Il[I111lI11Il["UserId"]] then
                return true
            end
            return l1l1lI11Il[(tostring(I111lI11Il["Name"])):lower()] == true or l1l1lI11Il[(tostring(I111lI11Il["DisplayName"])):lower()] == true
        end
        ll1llI11Il["isProtectedMiscTarget"] = I1l1lI11Il
        local function lIIllI11Il()
            local ll11lI11Il = {}
            for I111lI11Il, Il11lI11Il in ipairs(I111lI11Il:GetPlayers()) do
                if Il11lI11Il ~= IIIllI11Il and not I1l1lI11Il(Il11lI11Il) then
                    ll11lI11Il[#ll11lI11Il + 1] = {
                        ["label"] = Il11lI11Il["DisplayName"],
                        ["name"] = Il11lI11Il["Name"],
                        ["userId"] = Il11lI11Il["UserId"]
                    }
                end
            end
            table["sort"](ll11lI11Il, function(I111lI11Il, ll11lI11Il)
                return I111lI11Il["label"]:lower() < ll11lI11Il["label"]:lower()
            end)
            return ll11lI11Il
        end
        ll1llI11Il["miscTargetOptions"] = lIIllI11Il
        local function miscNotify(I111lI11Il)
            pcall(function()
                (game:GetService("StarterGui")):SetCore("SendNotification", {
                    ["Title"] = "Young0x Hub - Misc",
                    ["Text"] = tostring(I111lI11Il or ""),
                    ["Duration"] = 4
                })
            end)
        end
        ll1llI11Il["miscNotify"] = miscNotify
        ll1llI11Il["miscVisualFlags"] = {
            ["names"] = false,
            ["boxes"] = false,
            ["tracers"] = false,
            ["distance"] = false,
            ["durability"] = false
        }
        ll1llI11Il["miscVisualObjects"] = {}
        ll1llI11Il["miscTarget"] = nil
        ll1llI11Il["miscFollowEnabled"] = false
        ll1llI11Il["miscFollowDistance"] = 5
        ll1llI11Il["miscFaceTarget"] = false
        ll1llI11Il["miscOrbitEnabled"] = false
        ll1llI11Il["miscOrbitRadius"] = 10
        ll1llI11Il["miscOrbitSpeed"] = 4
        ll1llI11Il["miscMinimapEnabled"] = false
        ll1llI11Il["miscFovEnabled"] = false
        ll1llI11Il["miscFov"] = math["floor"](workspace["CurrentCamera"] and workspace["CurrentCamera"]["FieldOfView"] or 70)
        ll1llI11Il["miscHidePlayers"] = false
        ll1llI11Il["miscHideGameUi"] = false
        ll1llI11Il["miscZoomEnabled"] = false
        do
            ll1llI11Il["miscClickTp"] = false
            ll1llI11Il["miscHidePets"] = false
            ll1llI11Il["miscFpsUnlock"] = false
            ll1llI11Il["miscHeadless"] = false
            ll1llI11Il["miscFreecam"] = false
            ll1llI11Il["miscFreecamSpeed"] = 80
            ll1llI11Il["miscFreecamKeys"] = {}
            ll1llI11Il["miscFreecamTouchMove"] = Vector2["zero"]
            ll1llI11Il["miscPetOriginals"] = setmetatable({}, {
                ["__mode"] = "k"
            })
            ll1llI11Il["miscAvatarOriginals"] = setmetatable({}, {
                ["__mode"] = "k"
            })
            local function ll11lI11Il(I111lI11Il, ll11lI11Il)
                if I111lI11Il[ll11lI11Il] ~= nil then
                    return
                end
                if ll11lI11Il:IsA("BasePart") then
                    I111lI11Il[ll11lI11Il] = {
                        "LocalTransparencyModifier",
                        ll11lI11Il["LocalTransparencyModifier"]
                    }
                    ll11lI11Il["LocalTransparencyModifier"] = 1
                elseif ll11lI11Il:IsA("Decal") or ll11lI11Il:IsA("Texture") then
                    I111lI11Il[ll11lI11Il] = {
                        "Transparency",
                        ll11lI11Il["Transparency"]
                    }
                    ll11lI11Il["Transparency"] = 1
                elseif ll11lI11Il:IsA("ParticleEmitter") or ll11lI11Il:IsA("Trail") or ll11lI11Il:IsA("Beam") or ll11lI11Il:IsA("Smoke") or ll11lI11Il:IsA("Fire") or ll11lI11Il:IsA("Sparkles") or ll11lI11Il:IsA("BillboardGui") or ll11lI11Il:IsA("SurfaceGui") or ll11lI11Il:IsA("PointLight") or ll11lI11Il:IsA("SpotLight") or ll11lI11Il:IsA("SurfaceLight") then
                    I111lI11Il[ll11lI11Il] = {
                        "Enabled",
                        ll11lI11Il["Enabled"]
                    }
                    ll11lI11Il["Enabled"] = false
                end
            end
            local function lIl1lI11Il(I111lI11Il, ll11lI11Il)
                local Il11lI11Il = I111lI11Il[ll11lI11Il]
                if not Il11lI11Il then
                    return
                end
                if ll11lI11Il["Parent"] then
                    pcall(function()
                        ll11lI11Il[Il11lI11Il[1]] = Il11lI11Il[2]
                    end)
                end
                I111lI11Il[ll11lI11Il] = nil
            end
            local function l1l1lI11Il(I111lI11Il)
                for ll11lI11Il in pairs(I111lI11Il) do
                    lIl1lI11Il(I111lI11Il, ll11lI11Il)
                end
            end
            local function I1l1lI11Il(I111lI11Il)
                return I111lI11Il:IsA("Model") and I111lI11Il:FindFirstChild("petMovementScript", true) ~= nil
            end
            local function lll1lI11Il()
                for I111lI11Il, Il11lI11Il in ipairs(I111lI11Il:GetPlayers()) do
                    local lIl1lI11Il = Il11lI11Il["Character"]
                    if lIl1lI11Il then
                        for I111lI11Il, Il11lI11Il in ipairs(lIl1lI11Il:GetChildren()) do
                            if I1l1lI11Il(Il11lI11Il) then
                                for I111lI11Il, Il11lI11Il in ipairs(Il11lI11Il:GetDescendants()) do
                                    ll11lI11Il(ll1llI11Il["miscPetOriginals"], Il11lI11Il)
                                end
                            end
                        end
                    end
                end
            end
            ll1llI11Il["setMiscHidePets"] = function(I111lI11Il)
                ll1llI11Il["miscHidePets"] = I111lI11Il == true
                IIIII111Il("miscHidePets")
                if not ll1llI11Il["miscHidePets"] then
                    l1l1lI11Il(ll1llI11Il["miscPetOriginals"])
                    return true
                end
                lll1lI11Il()
                getSendMuscleEventI111L11Il("miscHidePets", function()
                    while ll1llI11Il["running"] and ll1llI11Il["miscHidePets"] do
                        lll1lI11Il()
                        task["wait"](0.4)
                    end
                end)
                return true
            end
            local function lIIllI11Il(I111lI11Il, ll11lI11Il)
                local Il11lI11Il = ll11lI11Il and ll11lI11Il:FindFirstChild("Head")
                return ll1llI11Il["miscHeadless"] and (Il11lI11Il ~= nil and (I111lI11Il == Il11lI11Il or I111lI11Il:IsDescendantOf(Il11lI11Il)))
            end
            local function handler()
                local I111lI11Il = IIIllI11Il["Character"]
                for ll11lI11Il in pairs(ll1llI11Il["miscAvatarOriginals"]) do
                    if not I111lI11Il or not ll11lI11Il:IsDescendantOf(I111lI11Il) or not lIIllI11Il(ll11lI11Il, I111lI11Il) then
                        lIl1lI11Il(ll1llI11Il["miscAvatarOriginals"], ll11lI11Il)
                    end
                end
                if I111lI11Il then
                    for Il11lI11Il, lIl1lI11Il in ipairs(I111lI11Il:GetDescendants()) do
                        if lIIllI11Il(lIl1lI11Il, I111lI11Il) then
                            ll11lI11Il(ll1llI11Il["miscAvatarOriginals"], lIl1lI11Il)
                        end
                    end
                end
            end
            local function llIllI11Il()
                IIIII111Il("miscAvatarVisuals")
                handler()
                if not ll1llI11Il["miscHeadless"] then
                    return
                end
                getSendMuscleEventI111L11Il("miscAvatarVisuals", function()
                    while ll1llI11Il["running"] and ll1llI11Il["miscHeadless"] do
                        handler()
                        task["wait"](0.25)
                    end
                end)
            end
            ll1llI11Il["setMiscHeadless"] = function(I111lI11Il)
                ll1llI11Il["miscHeadless"] = I111lI11Il == true
                llIllI11Il()
                return true
            end
            local IlIllI11Il = type(setfpscap) == "function" and setfpscap or set_fps_cap
            local lI1llI11Il = type(getfpscap) == "function" and getfpscap or get_fps_cap
            ll1llI11Il["setMiscFpsUnlock"] = function(I111lI11Il)
                I111lI11Il = I111lI11Il == true
                if I111lI11Il and type(IlIllI11Il) ~= "function" then
                    miscNotify("Tu executor no ofrece FPS Unlock.")
                    return false
                end
                if I111lI11Il == ll1llI11Il["miscFpsUnlock"] then
                    return true
                end
                if I111lI11Il then
                    local I111lI11Il, ll11lI11Il = pcall(lI1llI11Il)
                    ll1llI11Il["miscPreviousFpsCap"] = I111lI11Il and tonumber(ll11lI11Il) or 60
                    local Il11lI11Il = pcall(IlIllI11Il, 0)
                    if not Il11lI11Il then
                        return false
                    end
                    ll1llI11Il["miscFpsUnlock"] = true
                else
                    pcall(IlIllI11Il, tonumber(ll1llI11Il["miscPreviousFpsCap"]) or 60)
                    ll1llI11Il["miscFpsUnlock"] = false
                    ll1llI11Il["miscPreviousFpsCap"] = nil
                end
                return true
            end
            ll1llI11Il["setMiscClickTp"] = function(I111lI11Il)
                I111lI11Il = I111lI11Il == true
                if I111lI11Il and (ll1llI11Il["miscFreecam"] and ll1llI11Il["setMiscFreecam"]) then
                    ll1llI11Il["setMiscFreecam"](false)
                    if ll1llI11Il["miscFreecamToggle"] then
                        ll1llI11Il["miscFreecamToggle"]:Set(false, true)
                    end
                end
                ll1llI11Il["miscClickTp"] = I111lI11Il
                return true
            end
            local function II1llI11Il(ll11lI11Il)
                if typeof(ll11lI11Il) ~= "Vector2" or time() - (ll1llI11Il["miscLastClickTp"] or 0) < 0.15 then
                    return false
                end
                local Il11lI11Il = workspace["CurrentCamera"]
                local lIl1lI11Il = isI111L11IlValid()
                if not Il11lI11Il or not lIl1lI11Il then
                    return false
                end
                local IIl1lI11Il = Il11lI11Il:ScreenPointToRay(ll11lI11Il["X"], ll11lI11Il["Y"])
                local l1l1lI11Il = RaycastParams["new"]()
                l1l1lI11Il["FilterType"] = Enum["RaycastFilterType"]["Exclude"]
                local I1l1lI11Il = {}
                for I111lI11Il, ll11lI11Il in ipairs(I111lI11Il:GetPlayers()) do
                    if ll11lI11Il["Character"] then
                        I1l1lI11Il[#I1l1lI11Il + 1] = ll11lI11Il["Character"]
                    end
                end
                local lll1lI11Il = workspace:FindFirstChild("boundaryParts")
                if lll1lI11Il then
                    I1l1lI11Il[#I1l1lI11Il + 1] = lll1lI11Il
                end
                l1l1lI11Il["FilterDescendantsInstances"] = I1l1lI11Il
                l1l1lI11Il["IgnoreWater"] = false
                local Ill1lI11Il
                for I111lI11Il = 1, 16, 1 do
                    Ill1lI11Il = workspace:Raycast(IIl1lI11Il["Origin"], IIl1lI11Il["Direction"] * 100000, l1l1lI11Il)
                    if not Ill1lI11Il then
                        break
                    end
                    local ll11lI11Il = Ill1lI11Il["Instance"]
                    local Il11lI11Il = ll11lI11Il:IsA("BasePart") and (ll11lI11Il["Transparency"] >= 0.95 or not ll11lI11Il["CanCollide"] and ll11lI11Il["Transparency"] >= 0.65)
                    local lIl1lI11Il = ll11lI11Il
                    while lIl1lI11Il and lIl1lI11Il ~= workspace do
                        local I111lI11Il = lIl1lI11Il["Name"]:lower()
                        if I111lI11Il:find("boundary", 1, true) or I111lI11Il:find("invisiblewall", 1, true) then
                            Il11lI11Il = true
                            break
                        end
                        lIl1lI11Il = lIl1lI11Il["Parent"]
                    end
                    if not Il11lI11Il then
                        break
                    end
                    I1l1lI11Il[#I1l1lI11Il + 1] = ll11lI11Il
                    l1l1lI11Il["FilterDescendantsInstances"] = I1l1lI11Il
                    Ill1lI11Il = nil
                end
                if not Ill1lI11Il then
                    return false
                end
                ll1llI11Il["miscLastClickTp"] = time()
                local lIIllI11Il = IIIllI11Il["Character"] and IIIllI11Il["Character"]:FindFirstChildWhichIsA("Humanoid")
                local sum = Ill1lI11Il["Position"] + Vector3["new"](0, ((lIIllI11Il and lIIllI11Il["HipHeight"] or 2) + lIl1lI11Il["Size"]["Y"] * 0.5) + 0.25, 0)
                local cFrameData = Vector3["new"](lIl1lI11Il["CFrame"]["LookVector"]["X"], 0, lIl1lI11Il["CFrame"]["LookVector"]["Z"])
                if cFrameData["Magnitude"] < 0.01 then
                    cFrameData = Vector3["new"](0, 0, -1)
                end
                lIl1lI11Il["CFrame"] = CFrame["lookAt"](sum, sum + cFrameData["Unit"])
                lIl1lI11Il["AssemblyLinearVelocity"] = Vector3["zero"]
                lIl1lI11Il["AssemblyAngularVelocity"] = Vector3["zero"]
                return true
            end
            ll1llI11Il["performMiscClickTp"] = II1llI11Il
            IllllI11Il(IIl1lI11Il["InputBegan"]:Connect(function(I111lI11Il, ll11lI11Il)
                if not ll1llI11Il["miscClickTp"] or ll1llI11Il["miscFreecam"] or ll11lI11Il or IIl1lI11Il:GetFocusedTextBox() then
                    return
                end
                if I111lI11Il["UserInputType"] ~= Enum["UserInputType"]["MouseButton1"] and I111lI11Il["UserInputType"] ~= Enum["UserInputType"]["Touch"] then
                    return
                end
                II1llI11Il(Vector2["new"](I111lI11Il["Position"]["X"], I111lI11Il["Position"]["Y"]))
            end))
            local function l11llI11Il()
                ll1llI11Il["miscFreecamKeys"] = {}
                ll1llI11Il["miscFreecamMouseLook"] = false
                ll1llI11Il["miscFreecamMoveTouch"] = nil
                ll1llI11Il["miscFreecamLookTouch"] = nil
                ll1llI11Il["miscFreecamTouchMove"] = Vector2["zero"]
            end
            local function I11llI11Il(I111lI11Il)
                local ll11lI11Il = setmetatable({}, {
                    ["__mode"] = "k"
                })
                for I111lI11Il, Il11lI11Il in ipairs(I111lI11Il:GetDescendants()) do
                    if Il11lI11Il:IsA("BasePart") then
                        ll11lI11Il[Il11lI11Il] = Il11lI11Il["LocalTransparencyModifier"]
                    end
                end
                return ll11lI11Il
            end
            local function Il1llI11Il(I111lI11Il)
                if not I111lI11Il or not I111lI11Il["character"] or not I111lI11Il["character"]["Parent"] then
                    return
                end
                for ll11lI11Il in pairs(I111lI11Il["transparency"] or {}) do
                    if ll11lI11Il["Parent"] and (not lIIllI11Il(ll11lI11Il, I111lI11Il["character"]) and ll11lI11Il["LocalTransparencyModifier"] ~= 0) then
                        ll11lI11Il["LocalTransparencyModifier"] = 0
                    end
                end
            end
            local function lIlllI11Il(I111lI11Il)
                for I111lI11Il, ll11lI11Il in pairs(I111lI11Il and I111lI11Il["transparency"] or {}) do
                    if I111lI11Il["Parent"] then
                        I111lI11Il["LocalTransparencyModifier"] = ll11lI11Il
                    end
                end
                handler()
            end
            local function IIlllI11Il()
                local I111lI11Il = ll1llI11Il["miscFreecamSaved"]
                ll1llI11Il["miscFreecam"] = false
                l11llI11Il()
                if I111lI11Il and (I111lI11Il["character"] and (I111lI11Il["character"]["Parent"] and (I111lI11Il["root"] and I111lI11Il["root"]["Parent"]))) then
                    pcall(function()
                        I111lI11Il["root"]["CFrame"] = I111lI11Il["lockRootCFrame"]
                        I111lI11Il["root"]["AssemblyLinearVelocity"] = Vector3["zero"]
                        I111lI11Il["root"]["AssemblyAngularVelocity"] = Vector3["zero"]
                        I111lI11Il["root"]["Anchored"] = I111lI11Il["rootAnchored"]
                    end)
                end
                if I111lI11Il and (I111lI11Il["humanoid"] and I111lI11Il["humanoid"]["Parent"]) then
                    pcall(function()
                        I111lI11Il["humanoid"]["WalkSpeed"] = I111lI11Il["walkSpeed"]
                        I111lI11Il["humanoid"]["AutoRotate"] = I111lI11Il["autoRotate"]
                        I111lI11Il["humanoid"]["JumpPower"] = I111lI11Il["jumpPower"]
                        I111lI11Il["humanoid"]["JumpHeight"] = I111lI11Il["jumpHeight"]
                    end)
                end
                local ll11lI11Il = workspace["CurrentCamera"]
                if ll11lI11Il and I111lI11Il then
                    local Il11lI11Il = IIIllI11Il["Character"] and IIIllI11Il["Character"]:FindFirstChildWhichIsA("Humanoid")
                    local lIl1lI11Il = Il11lI11Il or I111lI11Il["cameraSubject"] and (I111lI11Il["cameraSubject"]["Parent"] and I111lI11Il["cameraSubject"])
                    pcall(function()
                        ll11lI11Il["CameraType"] = Enum["CameraType"]["Scriptable"]
                        ll11lI11Il["CFrame"] = I111lI11Il["cframe"]
                        ll11lI11Il["Focus"] = I111lI11Il["focus"]
                        ll11lI11Il["FieldOfView"] = I111lI11Il["fov"]
                        if lIl1lI11Il then
                            ll11lI11Il["CameraSubject"] = lIl1lI11Il
                        end
                        ll11lI11Il["CameraType"] = I111lI11Il["cameraType"] == Enum["CameraType"]["Scriptable"] and Enum["CameraType"]["Custom"] or I111lI11Il["cameraType"]
                    end)
                end
                if I111lI11Il then
                    pcall(function()
                        IIl1lI11Il["MouseBehavior"] = I111lI11Il["mouseBehavior"]
                        IIl1lI11Il["MouseIconEnabled"] = I111lI11Il["mouseIconEnabled"]
                    end)
                    lIlllI11Il(I111lI11Il)
                end
                ll1llI11Il["miscFreecamSaved"] = nil
            end
            local function l1lllI11Il()
                IIlllI11Il()
                if ll1llI11Il["miscFreecamToggle"] and ll1llI11Il["miscFreecamToggle"]:Get() then
                    ll1llI11Il["miscFreecamToggle"]:Set(false, true)
                end
            end
            ll1llI11Il["setMiscFreecam"] = function(I111lI11Il)
                I111lI11Il = I111lI11Il == true
                if not I111lI11Il then
                    if ll1llI11Il["miscFreecam"] or ll1llI11Il["miscFreecamSaved"] then
                        l1lllI11Il()
                    else
                        l11llI11Il()
                    end
                    return true
                end
                if ll1llI11Il["miscFreecam"] then
                    return true
                end
                local ll11lI11Il = workspace["CurrentCamera"]
                local Il11lI11Il = IIIllI11Il["Character"]
                local lIl1lI11Il = isI111L11IlValid()
                local l1l1lI11Il = Il11lI11Il and Il11lI11Il:FindFirstChildWhichIsA("Humanoid")
                if not ll11lI11Il or not Il11lI11Il or not lIl1lI11Il or not l1l1lI11Il or l1l1lI11Il["Health"] <= 0 then
                    miscNotify("Freecam necesita que tu personaje est\195\169 vivo.")
                    return false
                end
                if ll1llI11Il["miscClickTp"] then
                    ll1llI11Il["setMiscClickTp"](false)
                    if ll1llI11Il["miscClickTpToggle"] then
                        ll1llI11Il["miscClickTpToggle"]:Set(false, true)
                    end
                end
                ll1llI11Il["miscFreecamSaved"] = {
                    ["cameraType"] = ll11lI11Il["CameraType"],
                    ["cameraSubject"] = ll11lI11Il["CameraSubject"],
                    ["cframe"] = ll11lI11Il["CFrame"],
                    ["focus"] = ll11lI11Il["Focus"],
                    ["fov"] = ll11lI11Il["FieldOfView"],
                    ["mouseBehavior"] = IIl1lI11Il["MouseBehavior"],
                    ["mouseIconEnabled"] = IIl1lI11Il["MouseIconEnabled"],
                    ["character"] = Il11lI11Il,
                    ["root"] = lIl1lI11Il,
                    ["humanoid"] = l1l1lI11Il,
                    ["lockRootCFrame"] = lIl1lI11Il["CFrame"],
                    ["rootAnchored"] = lIl1lI11Il["Anchored"],
                    ["walkSpeed"] = l1l1lI11Il["WalkSpeed"],
                    ["autoRotate"] = l1l1lI11Il["AutoRotate"],
                    ["jumpPower"] = l1l1lI11Il["JumpPower"],
                    ["jumpHeight"] = l1l1lI11Il["JumpHeight"],
                    ["transparency"] = I11llI11Il(Il11lI11Il)
                }
                local I1l1lI11Il = pcall(function()
                    ll1llI11Il["miscFreecam"] = true
                    ll1llI11Il["miscFreecamPosition"] = ll11lI11Il["CFrame"]["Position"]
                    ll1llI11Il["miscFreecamPitch"], ll1llI11Il["miscFreecamYaw"] = ll11lI11Il["CFrame"]:ToOrientation()
                    ll1llI11Il["miscFreecamKeys"] = {}
                    ll1llI11Il["miscFreecamTouchMove"] = Vector2["zero"]
                    lIl1lI11Il["AssemblyLinearVelocity"] = Vector3["zero"]
                    lIl1lI11Il["AssemblyAngularVelocity"] = Vector3["zero"]
                    lIl1lI11Il["Anchored"] = true
                    l1l1lI11Il["WalkSpeed"] = 0
                    l1l1lI11Il["AutoRotate"] = false
                    l1l1lI11Il["Jump"] = false
                    l1l1lI11Il["JumpPower"] = 0
                    l1l1lI11Il["JumpHeight"] = 0
                    l1l1lI11Il:Move(Vector3["zero"], false)
                    ll11lI11Il["CameraType"] = Enum["CameraType"]["Scriptable"]
                    Il1llI11Il(ll1llI11Il["miscFreecamSaved"])
                end)
                if not I1l1lI11Il then
                    l1lllI11Il()
                    miscNotify("No se pudo iniciar Freecam; todo fue restaurado.")
                    return false
                end
                return true
            end
            IllllI11Il(IIl1lI11Il["InputBegan"]:Connect(function(I111lI11Il, ll11lI11Il)
                if not ll1llI11Il["miscFreecam"] then
                    return
                end
                if I111lI11Il["UserInputType"] == Enum["UserInputType"]["Keyboard"] and (not ll11lI11Il and not IIl1lI11Il:GetFocusedTextBox()) then
                    ll1llI11Il["miscFreecamKeys"][I111lI11Il["KeyCode"]] = true
                elseif I111lI11Il["UserInputType"] == Enum["UserInputType"]["MouseButton2"] and not ll11lI11Il then
                    ll1llI11Il["miscFreecamMouseLook"] = true
                    IIl1lI11Il["MouseBehavior"] = Enum["MouseBehavior"]["LockCurrentPosition"]
                elseif I111lI11Il["UserInputType"] == Enum["UserInputType"]["Touch"] then
                    local ll11lI11Il = false
                    local Il11lI11Il, lIl1lI11Il = pcall(Ill1lI11Il["GetGuiObjectsAtPosition"], Ill1lI11Il, I111lI11Il["Position"]["X"], I111lI11Il["Position"]["Y"])
                    if Il11lI11Il then
                        for I111lI11Il, Il11lI11Il in ipairs(lIl1lI11Il) do
                            if Il11lI11Il:IsDescendantOf(screenGui) then
                                ll11lI11Il = true
                                break
                            end
                        end
                    end
                    if ll11lI11Il then
                        return
                    end
                    if I111lI11Il["Position"]["X"] < (llll1111Il())["X"] * 0.45 and not ll1llI11Il["miscFreecamMoveTouch"] then
                        ll1llI11Il["miscFreecamMoveTouch"] = I111lI11Il
                        ll1llI11Il["miscFreecamMoveStart"] = I111lI11Il["Position"]
                    else
                        ll1llI11Il["miscFreecamLookTouch"] = I111lI11Il
                        ll1llI11Il["miscFreecamLookLast"] = I111lI11Il["Position"]
                    end
                end
            end))
            IllllI11Il(IIl1lI11Il["InputChanged"]:Connect(function(I111lI11Il)
                if not ll1llI11Il["miscFreecam"] then
                    return
                end
                if I111lI11Il["UserInputType"] == Enum["UserInputType"]["MouseMovement"] and ll1llI11Il["miscFreecamMouseLook"] then
                    ll1llI11Il["miscFreecamYaw"] = ll1llI11Il["miscFreecamYaw"] - I111lI11Il["Delta"]["X"] * 0.0035
                    ll1llI11Il["miscFreecamPitch"] = math["clamp"](ll1llI11Il["miscFreecamPitch"] - I111lI11Il["Delta"]["Y"] * 0.0035, -1.5, 1.5)
                elseif I111lI11Il["UserInputType"] == Enum["UserInputType"]["MouseWheel"] then
                    ll1llI11Il["miscFreecamSpeed"] = math["clamp"](ll1llI11Il["miscFreecamSpeed"] + I111lI11Il["Position"]["Z"] * 10, 20, 250)
                elseif I111lI11Il == ll1llI11Il["miscFreecamMoveTouch"] then
                    local ll11lI11Il = (I111lI11Il["Position"] - ll1llI11Il["miscFreecamMoveStart"]) / 70
                    ll1llI11Il["miscFreecamTouchMove"] = Vector2["new"](math["clamp"](ll11lI11Il["X"], -1, 1), math["clamp"](ll11lI11Il["Y"], -1, 1))
                elseif I111lI11Il == ll1llI11Il["miscFreecamLookTouch"] then
                    local ll11lI11Il = I111lI11Il["Position"] - ll1llI11Il["miscFreecamLookLast"]
                    ll1llI11Il["miscFreecamLookLast"] = I111lI11Il["Position"]
                    ll1llI11Il["miscFreecamYaw"] = ll1llI11Il["miscFreecamYaw"] - ll11lI11Il["X"] * 0.006
                    ll1llI11Il["miscFreecamPitch"] = math["clamp"](ll1llI11Il["miscFreecamPitch"] - ll11lI11Il["Y"] * 0.006, -1.5, 1.5)
                end
            end))
            IllllI11Il(IIl1lI11Il["InputEnded"]:Connect(function(I111lI11Il)
                if I111lI11Il["UserInputType"] == Enum["UserInputType"]["Keyboard"] then
                    ll1llI11Il["miscFreecamKeys"][I111lI11Il["KeyCode"]] = nil
                elseif I111lI11Il["UserInputType"] == Enum["UserInputType"]["MouseButton2"] then
                    ll1llI11Il["miscFreecamMouseLook"] = false
                    if ll1llI11Il["miscFreecam"] then
                        IIl1lI11Il["MouseBehavior"] = Enum["MouseBehavior"]["Default"]
                    end
                elseif I111lI11Il == ll1llI11Il["miscFreecamMoveTouch"] then
                    ll1llI11Il["miscFreecamMoveTouch"] = nil
                    ll1llI11Il["miscFreecamTouchMove"] = Vector2["zero"]
                elseif I111lI11Il == ll1llI11Il["miscFreecamLookTouch"] then
                    ll1llI11Il["miscFreecamLookTouch"] = nil
                end
            end))
            local I1lllI11Il = "Young0xFG100_Freecam"
            pcall(Il11lI11Il["UnbindFromRenderStep"], Il11lI11Il, I1lllI11Il)
            Il11lI11Il:BindToRenderStep(I1lllI11Il, Enum["RenderPriority"]["Camera"]["Value"] + 1, function(I111lI11Il)
                if not ll1llI11Il["miscFreecam"] then
                    return
                end
                local ll11lI11Il = workspace["CurrentCamera"]
                local Il11lI11Il = ll1llI11Il["miscFreecamSaved"]
                if not ll11lI11Il or not Il11lI11Il or not Il11lI11Il["character"] or not Il11lI11Il["character"]["Parent"] or not Il11lI11Il["root"] or not Il11lI11Il["root"]["Parent"] or not Il11lI11Il["humanoid"] or not Il11lI11Il["humanoid"]["Parent"] or Il11lI11Il["humanoid"]["Health"] <= 0 then
                    l1lllI11Il()
                    return
                end
                pcall(function()
                    Il11lI11Il["root"]["Anchored"] = true
                    if (Il11lI11Il["root"]["Position"] - Il11lI11Il["lockRootCFrame"]["Position"])["Magnitude"] > 0.05 then
                        Il11lI11Il["root"]["CFrame"] = Il11lI11Il["lockRootCFrame"]
                    end
                    Il11lI11Il["root"]["AssemblyLinearVelocity"] = Vector3["zero"]
                    Il11lI11Il["root"]["AssemblyAngularVelocity"] = Vector3["zero"]
                    Il11lI11Il["humanoid"]["WalkSpeed"] = 0
                    Il11lI11Il["humanoid"]["AutoRotate"] = false
                    Il11lI11Il["humanoid"]["Jump"] = false
                    Il11lI11Il["humanoid"]:Move(Vector3["zero"], false)
                    Il1llI11Il(Il11lI11Il)
                end)
                ll11lI11Il["CameraType"] = Enum["CameraType"]["Scriptable"]
                local lIl1lI11Il = ll1llI11Il["miscFreecamKeys"]
                local IIl1lI11Il = ll1llI11Il["miscFreecamTouchMove"] or Vector2["zero"]
                local l1l1lI11Il = ((lIl1lI11Il[Enum["KeyCode"]["D"]] and 1 or 0) - (lIl1lI11Il[Enum["KeyCode"]["A"]] and 1 or 0)) + IIl1lI11Il["X"]
                local I1l1lI11Il = (lIl1lI11Il[Enum["KeyCode"]["E"]] and 1 or 0) - (lIl1lI11Il[Enum["KeyCode"]["Q"]] and 1 or 0)
                local lll1lI11Il = ((lIl1lI11Il[Enum["KeyCode"]["W"]] and 1 or 0) - (lIl1lI11Il[Enum["KeyCode"]["S"]] and 1 or 0)) - IIl1lI11Il["Y"]
                local Ill1lI11Il = Vector3["new"](l1l1lI11Il, I1l1lI11Il, lll1lI11Il)
                if Ill1lI11Il["Magnitude"] > 1 then
                    Ill1lI11Il = Ill1lI11Il["Unit"]
                end
                local lIIllI11Il = CFrame["fromOrientation"](ll1llI11Il["miscFreecamPitch"], ll1llI11Il["miscFreecamYaw"], 0)
                local IIIllI11Il = ll1llI11Il["miscFreecamSpeed"] * ((lIl1lI11Il[Enum["KeyCode"]["LeftShift"]] or lIl1lI11Il[Enum["KeyCode"]["RightShift"]]) and 2 or 1)
                ll1llI11Il["miscFreecamPosition"] = ll1llI11Il["miscFreecamPosition"] + (((lIIllI11Il["RightVector"] * Ill1lI11Il["X"] + Vector3["yAxis"] * Ill1lI11Il["Y"]) + lIIllI11Il["LookVector"] * Ill1lI11Il["Z"]) * IIIllI11Il) * I111lI11Il
                ll11lI11Il["CFrame"] = CFrame["new"](ll1llI11Il["miscFreecamPosition"]) * lIIllI11Il
                ll11lI11Il["Focus"] = CFrame["new"](ll1llI11Il["miscFreecamPosition"] + lIIllI11Il["LookVector"] * 24)
            end)
            ll1llI11Il["miscEmergencyStop"] = function()
                for I111lI11Il, ll11lI11Il in ipairs(ll1llI11Il["allToggleControllers"]) do
                    if ll11lI11Il["Get"] and ll11lI11Il:Get() then
                        pcall(ll11lI11Il["Set"], ll11lI11Il, false)
                    end
                end
                pcall(lllllI11Il["Stop"], lllllI11Il, true)
                ll1llI11Il["rebirth"]["ultimateRunning"] = false
                ll1llI11Il["trade"]["requestGeneration"] = (ll1llI11Il["trade"]["requestGeneration"] or 0) + 1
                ll1llI11Il["trade"]["busy"] = false
                ll1llI11Il["kill"]["hopNow"] = false
                ll1llI11Il["setMiscClickTp"](false)
                ll1llI11Il["setMiscFreecam"](false)
                ll1llI11Il["setMiscHidePets"](false)
                ll1llI11Il["setMiscHeadless"](false)
                for I111lI11Il in pairs(ll1llI11Il["miscVisualFlags"]) do
                    ll1llI11Il["setMiscVisualFlag"](I111lI11Il, false)
                end
                if ll1llI11Il["setMiscMinimap"] then
                    ll1llI11Il["setMiscMinimap"](false)
                end
                if ll1llI11Il["setMiscFullBright"] then
                    ll1llI11Il["setMiscFullBright"](false)
                end
                if ll1llI11Il["setMiscNoFog"] then
                    ll1llI11Il["setMiscNoFog"](false)
                end
                if ll1llI11Il["setMiscFov"] then
                    ll1llI11Il["setMiscFov"](false)
                end
                if ll1llI11Il["setMiscZoom"] then
                    ll1llI11Il["setMiscZoom"](false)
                end
                if ll1llI11Il["setMiscHideGameUi"] then
                    ll1llI11Il["setMiscHideGameUi"](false)
                end
                if ll1llI11Il["setMiscHidePlayers"] then
                    ll1llI11Il["setMiscHidePlayers"](false)
                end
                local I111lI11Il = isI111L11IlValid()
                if I111lI11Il then
                    I111lI11Il["AssemblyLinearVelocity"] = Vector3["zero"]
                    I111lI11Il["AssemblyAngularVelocity"] = Vector3["zero"]
                end
                miscNotify("Emergency Stop: todo qued\195\179 detenido.")
                return true
            end
            lIIII111Il(function()
                pcall(Il11lI11Il["UnbindFromRenderStep"], Il11lI11Il, I1lllI11Il)
                ll1llI11Il["miscClickTp"] = false
                ll1llI11Il["miscFreecam"] = false
                IIlllI11Il()
                l1l1lI11Il(ll1llI11Il["miscPetOriginals"])
                l1l1lI11Il(ll1llI11Il["miscAvatarOriginals"])
                if ll1llI11Il["miscFpsUnlock"] then
                    ll1llI11Il["setMiscFpsUnlock"](false)
                end
            end)
        end
        local llIllI11Il = 0.28
        local IlIllI11Il = 500 / llIllI11Il
        local lI1llI11Il = 1350
        local I11llI11Il = {}
        for I111lI11Il, ll11lI11Il in ipairs(II1llI11Il["Teleports"]) do
            local Il11lI11Il = ll11lI11Il[2]
            if typeof(Il11lI11Il) == "Vector3" and not ll11lI11Il["utility"] then
                I11llI11Il[#I11llI11Il + 1] = {
                    ["name"] = tostring(ll11lI11Il[1]),
                    ["position"] = Il11lI11Il
                }
            end
        end
        local function Il1llI11Il(I111lI11Il)
            if typeof(I111lI11Il) ~= "Vector3" then
                return nil, math["huge"]
            end
            local ll11lI11Il = Vector3["new"](I111lI11Il["X"], 0, I111lI11Il["Z"])
            local Il11lI11Il, lIl1lI11Il = nil, math["huge"]
            for I111lI11Il, IIl1lI11Il in ipairs(I11llI11Il) do
                local l1l1lI11Il = IIl1lI11Il["position"]
                local I1l1lI11Il = (ll11lI11Il - Vector3["new"](l1l1lI11Il["X"], 0, l1l1lI11Il["Z"]))["Magnitude"]
                if I1l1lI11Il < lIl1lI11Il then
                    Il11lI11Il = IIl1lI11Il
                    lIl1lI11Il = I1l1lI11Il
                end
            end
            return Il11lI11Il, lIl1lI11Il
        end
        local function lIlllI11Il(I111lI11Il, ll11lI11Il)
            if not I111lI11Il or not ll11lI11Il then
                return false, math["huge"], math["huge"]
            end
            local Il11lI11Il = (ll11lI11Il["Position"] - I111lI11Il["Position"])["Magnitude"]
            local lIl1lI11Il = Il11lI11Il * llIllI11Il
            if Il11lI11Il <= IlIllI11Il then
                return true, Il11lI11Il, lIl1lI11Il
            end
            local IIl1lI11Il, l1l1lI11Il = Il1llI11Il(I111lI11Il["Position"])
            local I1l1lI11Il, lll1lI11Il = Il1llI11Il(ll11lI11Il["Position"])
            local Ill1lI11Il = IIl1lI11Il and (I1l1lI11Il and (IIl1lI11Il["name"] == I1l1lI11Il["name"] and (l1l1lI11Il <= lI1llI11Il and lll1lI11Il <= lI1llI11Il)))
            return Ill1lI11Il == true, Il11lI11Il, lIl1lI11Il
        end
        ll1llI11Il["miscVisualEligibility"] = lIlllI11Il
        local IIlllI11Il = Instance["new"]("Folder")
        IIlllI11Il["Name"] = "Young0xTracerWorld"
        IIlllI11Il["Parent"] = workspace
        lIIII111Il(function()
            if IIlllI11Il and IIlllI11Il["Parent"] then
                IIlllI11Il:Destroy()
            end
        end)
        local function l1lllI11Il(I111lI11Il)
            return I111lI11Il and (I111lI11Il:FindFirstChild("UpperTorso") or I111lI11Il:FindFirstChild("Torso") or I111lI11Il:FindFirstChild("HumanoidRootPart"))
        end
        local function I1lllI11Il(I111lI11Il, ll11lI11Il)
            local Il11lI11Il = l1lllI11Il(I111lI11Il)
            if not Il11lI11Il or not Il11lI11Il:IsA("BasePart") then
                return nil
            end
            local lIl1lI11Il = Instance["new"]("Attachment")
            lIl1lI11Il["Name"] = ll11lI11Il
            lIl1lI11Il["Position"] = Il11lI11Il["Name"] == "HumanoidRootPart" and Vector3["new"](0, math["max"](1.2, Il11lI11Il["Size"]["Y"] * 0.6), 0) or Vector3["zero"]
            lIl1lI11Il["Parent"] = Il11lI11Il
            return lIl1lI11Il
        end
        local function handler(I111lI11Il)
            local ll11lI11Il = ll1llI11Il["miscTracerSourceAttachment"]
            local Il11lI11Il = l1lllI11Il(I111lI11Il)
            if ll11lI11Il and ll11lI11Il["Parent"] == Il11lI11Il then
                return ll11lI11Il
            end
            if ll11lI11Il then
                pcall(ll11lI11Il["Destroy"], ll11lI11Il)
            end
            ll11lI11Il = I1lllI11Il(I111lI11Il, "Young0xTracerSource")
            ll1llI11Il["miscTracerSourceAttachment"] = ll11lI11Il
            return ll11lI11Il
        end
        local function llIII111Il(I111lI11Il)
            local ll11lI11Il = ll1llI11Il["miscVisualObjects"][I111lI11Il]
            if not ll11lI11Il then
                return
            end
            for I111lI11Il, Il11lI11Il in ipairs({
                "billboard",
                "label",
                "tracer",
                "tracerAttachment"
            }) do
                local lIl1lI11Il = ll11lI11Il[Il11lI11Il]
                if typeof(lIl1lI11Il) == "Instance" then
                    pcall(lIl1lI11Il["Destroy"], lIl1lI11Il)
                end
            end
            for I111lI11Il, ll11lI11Il in pairs(ll11lI11Il["highlights"] or {}) do
                if typeof(ll11lI11Il) == "Instance" then
                    pcall(ll11lI11Il["Destroy"], ll11lI11Il)
                end
            end
            ll1llI11Il["miscVisualObjects"][I111lI11Il] = nil
        end
        local function IlIII111Il()
            for I111lI11Il in pairs(ll1llI11Il["miscVisualObjects"]) do
                llIII111Il(I111lI11Il)
            end
            if ll1llI11Il["miscTracerSourceAttachment"] then
                pcall(ll1llI11Il["miscTracerSourceAttachment"]["Destroy"], ll1llI11Il["miscTracerSourceAttachment"])
                ll1llI11Il["miscTracerSourceAttachment"] = nil
            end
        end
        local function createBillboardGui(I111lI11Il)
            if I111lI11Il == IIIllI11Il then
                return nil
            end
            local ll11lI11Il = ll1llI11Il["miscVisualObjects"][I111lI11Il]
            if ll11lI11Il then
                return ll11lI11Il
            end
            local Il11lI11Il = Instance["new"]("BillboardGui")
            Il11lI11Il["Name"] = "ESPLabel_" .. I111lI11Il["Name"]
            Il11lI11Il["Size"] = UDim2["fromOffset"](310, 94)
            Il11lI11Il["StudsOffsetWorldSpace"] = Vector3["new"](0, 7, 0)
            Il11lI11Il["AlwaysOnTop"] = true
            Il11lI11Il["MaxDistance"] = 2200
            Il11lI11Il["Enabled"] = false
            Il11lI11Il["Parent"] = screenGui
            local lIl1lI11Il = Instance["new"]("TextLabel")
            lIl1lI11Il["Size"] = UDim2["fromScale"](1, 1)
            lIl1lI11Il["BackgroundTransparency"] = 1
            lIl1lI11Il["TextColor3"] = l11llI11Il["white"]
            lIl1lI11Il["TextStrokeColor3"] = l11llI11Il["black"]
            lIl1lI11Il["TextStrokeTransparency"] = 0.08
            lIl1lI11Il["Font"] = l11llI11Il["fontBold"]
            lIl1lI11Il["TextSize"] = 12
            lIl1lI11Il["TextWrapped"] = true
            lIl1lI11Il["RichText"] = true
            lIl1lI11Il["TextYAlignment"] = Enum["TextYAlignment"]["Center"]
            lIl1lI11Il["ZIndex"] = 3
            lIl1lI11Il:SetAttribute("Young0xPreserveTextStyle", true)
            lIl1lI11Il["Parent"] = Il11lI11Il
            local IIl1lI11Il = Instance["new"]("Beam")
            IIl1lI11Il["Name"] = "Tracer_" .. I111lI11Il["Name"]
            IIl1lI11Il["Color"] = ColorSequence["new"](Color3["fromRGB"](255, 0, 45))
            IIl1lI11Il["Transparency"] = NumberSequence["new"](0)
            IIl1lI11Il["Width0"] = 0.1
            IIl1lI11Il["Width1"] = 0.1
            IIl1lI11Il["FaceCamera"] = true
            IIl1lI11Il["LightEmission"] = 1
            IIl1lI11Il["LightInfluence"] = 0
            IIl1lI11Il["Segments"] = 1
            IIl1lI11Il["Enabled"] = false
            IIl1lI11Il["Parent"] = IIlllI11Il
            ll11lI11Il = {
                ["highlights"] = {},
                ["highlightCharacter"] = nil,
                ["billboard"] = Il11lI11Il,
                ["label"] = lIl1lI11Il,
                ["tracer"] = IIl1lI11Il,
                ["tracerAttachment"] = nil,
                ["tracerCharacter"] = nil
            }
            ll1llI11Il["miscVisualObjects"][I111lI11Il] = ll11lI11Il
            return ll11lI11Il
        end
        local l11II111Il = {
            ["Head"] = true,
            ["Torso"] = true,
            ["UpperTorso"] = true,
            ["LowerTorso"] = true,
            ["LeftArm"] = true,
            ["RightArm"] = true,
            ["LeftLeg"] = true,
            ["RightLeg"] = true,
            ["LeftUpperArm"] = true,
            ["LeftLowerArm"] = true,
            ["LeftHand"] = true,
            ["RightUpperArm"] = true,
            ["RightLowerArm"] = true,
            ["RightHand"] = true,
            ["LeftUpperLeg"] = true,
            ["LeftLowerLeg"] = true,
            ["LeftFoot"] = true,
            ["RightUpperLeg"] = true,
            ["RightLowerLeg"] = true,
            ["RightFoot"] = true
        }
        local function I11II111Il(I111lI11Il, ll11lI11Il, Il11lI11Il)
            if I111lI11Il["highlightCharacter"] ~= ll11lI11Il then
                for I111lI11Il, ll11lI11Il in pairs(I111lI11Il["highlights"]) do
                    pcall(ll11lI11Il["Destroy"], ll11lI11Il)
                end
                I111lI11Il["highlights"] = {}
                I111lI11Il["highlightCharacter"] = ll11lI11Il
                if ll11lI11Il then
                    for ll11lI11Il, Il11lI11Il in ipairs(ll11lI11Il:GetChildren()) do
                        if Il11lI11Il:IsA("BasePart") and l11II111Il[Il11lI11Il["Name"]] then
                            local ll11lI11Il = Instance["new"]("Highlight")
                            ll11lI11Il["Name"] = "ESPBody_" .. Il11lI11Il["Name"]
                            ll11lI11Il["DepthMode"] = Enum["HighlightDepthMode"]["AlwaysOnTop"]
                            ll11lI11Il["FillColor"] = Color3["fromRGB"](255, 0, 45)
                            ll11lI11Il["FillTransparency"] = 0.82
                            ll11lI11Il["OutlineColor"] = Color3["fromRGB"](255, 0, 45)
                            ll11lI11Il["OutlineTransparency"] = 0
                            ll11lI11Il["Adornee"] = Il11lI11Il
                            ll11lI11Il["Enabled"] = false
                            ll11lI11Il["Parent"] = screenGui
                            I111lI11Il["highlights"][Il11lI11Il] = ll11lI11Il
                        end
                    end
                end
            end
            for ll11lI11Il, lIl1lI11Il in pairs(I111lI11Il["highlights"]) do
                if not ll11lI11Il["Parent"] then
                    pcall(lIl1lI11Il["Destroy"], lIl1lI11Il)
                    I111lI11Il["highlights"][ll11lI11Il] = nil
                else
                    lIl1lI11Il["Enabled"] = Il11lI11Il == true
                end
            end
        end
        local function secondaryHandler()
            for I111lI11Il, ll11lI11Il in pairs(ll1llI11Il["miscVisualFlags"]) do
                if ll11lI11Il then
                    return true
                end
            end
            return false
        end
        local function gsub(I111lI11Il)
            return (((tostring(I111lI11Il or "")):gsub("&", "&amp;")):gsub("<", "&lt;")):gsub(">", "&gt;")
        end
        local function lIlII111Il(I111lI11Il)
            local ll11lI11Il = string["format"]("%.0f", math["max"](0, tonumber(I111lI11Il) or 0))
            local Il11lI11Il
            repeat
                ll11lI11Il, Il11lI11Il = ll11lI11Il:gsub("^(-?%d+)(%d%d%d)", "%1.%2")
            until Il11lI11Il == 0
            return ll11lI11Il
        end
        local function IIlII111Il(I111lI11Il)
            if I111lI11Il <= 0.25 then
                return "#FF405B"
            end
            if I111lI11Il <= 0.65 then
                return "#FFD34D"
            end
            return "#55DDFF"
        end
        local function l1lII111Il(I111lI11Il)
            if I111lI11Il < 100 then
                local ll11lI11Il = (string["format"]("%.1f", I111lI11Il)):gsub("%.0$", "")
                return ll11lI11Il .. " m"
            end
            return tostring(math["floor"](I111lI11Il + 0.5)) .. " m"
        end
        local function I1lII111Il()
            if not secondaryHandler() then
                IIIII111Il("miscPlayerVisuals")
                IlIII111Il()
                return
            end
            getSendMuscleEventI111L11Il("miscPlayerVisuals", function()
                while ll1llI11Il["running"] and secondaryHandler() do
                    local ll11lI11Il = isI111L11IlValid()
                    local lIl1lI11Il = IIIllI11Il["Character"]
                    local IIl1lI11Il = ll1llI11Il["miscVisualFlags"]["tracers"] and handler(lIl1lI11Il) or nil
                    local l1l1lI11Il = {}
                    for I111lI11Il, Il11lI11Il in ipairs(I111lI11Il:GetPlayers()) do
                        if Il11lI11Il ~= IIIllI11Il then
                            l1l1lI11Il[Il11lI11Il] = true
                            local I111lI11Il = createBillboardGui(Il11lI11Il)
                            local lIl1lI11Il = Il11lI11Il["Character"]
                            local I1l1lI11Il = lIl1lI11Il and lIl1lI11Il:FindFirstChild("HumanoidRootPart")
                            local lll1lI11Il = lIl1lI11Il and lIl1lI11Il:FindFirstChild("Head")
                            local Ill1lI11Il = lIl1lI11Il and lIl1lI11Il:FindFirstChildWhichIsA("Humanoid")
                            local lIIllI11Il = I1l1lI11Il and (lll1lI11Il and (Ill1lI11Il and Ill1lI11Il["Health"] > 0))
                            local IIIllI11Il, secondaryLIlllI11IlResult, lIlllI11IlResult = lIlllI11Il(ll11lI11Il, I1l1lI11Il)
                            local llIllI11Il = lIIllI11Il and (IIIllI11Il and not ll1llI11Il["miscHidePlayers"])
                            I11II111Il(I111lI11Il, lIl1lI11Il, llIllI11Il and ll1llI11Il["miscVisualFlags"]["boxes"])
                            I111lI11Il["billboard"]["Adornee"] = llIllI11Il and lll1lI11Il or nil
                            local IlIllI11Il = {}
                            if llIllI11Il and ll1llI11Il["miscVisualFlags"]["durability"] then
                                local I111lI11Il = math["max"](0, tonumber(Ill1lI11Il["Health"]) or 0)
                                local ll11lI11Il = math["max"](1, tonumber(Ill1lI11Il["MaxHealth"]) or 0, I111lI11Il)
                                local Il11lI11Il = math["clamp"](I111lI11Il / ll11lI11Il, 0, 1)
                                IlIllI11Il[#IlIllI11Il + 1] = "<font color=\"#AEB9C2\">Durabilidad </font>" .. ("<font color=\"" .. (IIlII111Il(Il11lI11Il) .. ("\"><b>" .. (lIlII111Il(I111lI11Il) .. ("</b></font>" .. ("<font color=\"#AEB9C2\">/</font>" .. ("<font color=\"#55DDFF\"><b>" .. (lIlII111Il(ll11lI11Il) .. "</b></font>"))))))))
                            end
                            if llIllI11Il and ll1llI11Il["miscVisualFlags"]["names"] then
                                IlIllI11Il[#IlIllI11Il + 1] = "<font color=\"#FF002D\"><b>" .. (gsub(Il11lI11Il["DisplayName"]) .. "</b></font>")
                            end
                            if llIllI11Il and (ll1llI11Il["miscVisualFlags"]["distance"] and lIlllI11IlResult >= 10) then
                                IlIllI11Il[#IlIllI11Il + 1] = "<font color=\"#E7EDF2\">" .. (l1lII111Il(lIlllI11IlResult) .. "</font>")
                            end
                            I111lI11Il["label"]["Text"] = table["concat"](IlIllI11Il, "\n")
                            I111lI11Il["billboard"]["Enabled"] = llIllI11Il and #IlIllI11Il > 0
                            if I111lI11Il["tracerCharacter"] ~= lIl1lI11Il or not I111lI11Il["tracerAttachment"] or not I111lI11Il["tracerAttachment"]["Parent"] then
                                if I111lI11Il["tracerAttachment"] then
                                    pcall(I111lI11Il["tracerAttachment"]["Destroy"], I111lI11Il["tracerAttachment"])
                                end
                                I111lI11Il["tracerAttachment"] = I1lllI11Il(lIl1lI11Il, "Young0xTracerTarget")
                                I111lI11Il["tracerCharacter"] = lIl1lI11Il
                            end
                            if llIllI11Il and (ll1llI11Il["miscVisualFlags"]["tracers"] and (lIlllI11IlResult >= 10 and (IIl1lI11Il and I111lI11Il["tracerAttachment"]))) then
                                I111lI11Il["tracer"]["Attachment0"] = IIl1lI11Il
                                I111lI11Il["tracer"]["Attachment1"] = I111lI11Il["tracerAttachment"]
                                I111lI11Il["tracer"]["Enabled"] = true
                            else
                                I111lI11Il["tracer"]["Enabled"] = false
                            end
                        end
                    end
                    for I111lI11Il in pairs(ll1llI11Il["miscVisualObjects"]) do
                        if not l1l1lI11Il[I111lI11Il] then
                            llIII111Il(I111lI11Il)
                        end
                    end
                    Il11lI11Il["RenderStepped"]:Wait()
                end
                IlIII111Il()
            end)
        end
        ll1llI11Il["setMiscVisualFlag"] = function(I111lI11Il, ll11lI11Il)
            if ll1llI11Il["miscVisualFlags"][I111lI11Il] == nil then
                return false
            end
            ll1llI11Il["miscVisualFlags"][I111lI11Il] = ll11lI11Il == true
            I1lII111Il()
            return true
        end
        local function lllII111Il()
            local ll11lI11Il = ll1llI11Il["miscTarget"] and I111lI11Il:FindFirstChild(ll1llI11Il["miscTarget"]) or nil
            if not ll11lI11Il or ll11lI11Il == IIIllI11Il or I1l1lI11Il(ll11lI11Il) then
                return nil
            end
            return ll11lI11Il
        end
        ll1llI11Il["selectedMiscPlayer"] = lllII111Il
        local function IllII111Il(I111lI11Il, ll11lI11Il)
            local Il11lI11Il = math["clamp"](ll1llI11Il["miscFollowDistance"], 2, 30)
            local lIl1lI11Il = ((I111lI11Il and I111lI11Il["Size"]["Z"] or 2) + (ll11lI11Il and ll11lI11Il["Size"]["Z"] or 2)) * 0.5 + 0.35
            return math["max"](Il11lI11Il, lIl1lI11Il)
        end
        ll1llI11Il["teleportToMiscPlayer"] = function()
            local I111lI11Il = lllII111Il()
            local ll11lI11Il = isI111L11IlValid()
            local Il11lI11Il = I111lI11Il and (I111lI11Il["Character"] and I111lI11Il["Character"]:FindFirstChild("HumanoidRootPart"))
            if not I111lI11Il or not ll11lI11Il or not Il11lI11Il then
                miscNotify("Seleccion\195\161 un jugador disponible.")
                return false
            end
            ll11lI11Il["CFrame"] = Il11lI11Il["CFrame"] * CFrame["new"](0, 0, IllII111Il(ll11lI11Il, Il11lI11Il))
            ll11lI11Il["AssemblyLinearVelocity"] = Vector3["zero"]
            ll11lI11Il["AssemblyAngularVelocity"] = Vector3["zero"]
            return true
        end
        ll1llI11Il["setMiscFollow"] = function(I111lI11Il)
            I111lI11Il = I111lI11Il == true
            if I111lI11Il and not lllII111Il() then
                miscNotify("Seleccion\195\161 un jugador disponible.")
                return false
            end
            if I111lI11Il and (ll1llI11Il["miscOrbitEnabled"] and ll1llI11Il["setMiscOrbit"]) then
                ll1llI11Il["setMiscOrbit"](false)
                if ll1llI11Il["miscOrbitToggle"] then
                    ll1llI11Il["miscOrbitToggle"]:Set(false, true)
                end
            end
            ll1llI11Il["miscFollowEnabled"] = I111lI11Il
            IIIII111Il("miscFollowPlayer")
            if not I111lI11Il then
                return true
            end
            getSendMuscleEventI111L11Il("miscFollowPlayer", function()
                while ll1llI11Il["running"] and ll1llI11Il["miscFollowEnabled"] do
                    local I111lI11Il = lllII111Il()
                    local ll11lI11Il = isI111L11IlValid()
                    local lIl1lI11Il = I111lI11Il and (I111lI11Il["Character"] and I111lI11Il["Character"]:FindFirstChild("HumanoidRootPart"))
                    if not I111lI11Il then
                        ll1llI11Il["miscFollowEnabled"] = false
                        if ll1llI11Il["miscFollowToggle"] then
                            ll1llI11Il["miscFollowToggle"]:Set(false, true)
                        end
                        miscNotify("El objetivo ya no est\195\161 disponible.")
                        break
                    elseif ll11lI11Il and lIl1lI11Il then
                        local I111lI11Il = lIl1lI11Il["CFrame"] * CFrame["new"](0, 0, IllII111Il(ll11lI11Il, lIl1lI11Il))
                        if ll1llI11Il["miscFaceTarget"] then
                            I111lI11Il = CFrame["lookAt"](I111lI11Il["Position"], lIl1lI11Il["Position"])
                        end
                        ll11lI11Il["CFrame"] = I111lI11Il
                        ll11lI11Il["AssemblyLinearVelocity"] = Vector3["zero"]
                        ll11lI11Il["AssemblyAngularVelocity"] = Vector3["zero"]
                    end
                    Il11lI11Il["Heartbeat"]:Wait()
                end
            end)
            return true
        end
        ll1llI11Il["setMiscFaceTarget"] = function(I111lI11Il)
            I111lI11Il = I111lI11Il == true
            if I111lI11Il and not lllII111Il() then
                miscNotify("Seleccion\195\161 un jugador disponible.")
                return false
            end
            ll1llI11Il["miscFaceTarget"] = I111lI11Il
            IIIII111Il("miscFaceTarget")
            if not I111lI11Il then
                return true
            end
            getSendMuscleEventI111L11Il("miscFaceTarget", function()
                while ll1llI11Il["running"] and ll1llI11Il["miscFaceTarget"] do
                    local I111lI11Il = lllII111Il()
                    local ll11lI11Il = isI111L11IlValid()
                    local lIl1lI11Il = I111lI11Il and (I111lI11Il["Character"] and I111lI11Il["Character"]:FindFirstChild("HumanoidRootPart"))
                    if not I111lI11Il then
                        ll1llI11Il["miscFaceTarget"] = false
                        if ll1llI11Il["miscFaceToggle"] then
                            ll1llI11Il["miscFaceToggle"]:Set(false, true)
                        end
                        break
                    elseif ll11lI11Il and (lIl1lI11Il and (not ll1llI11Il["miscFollowEnabled"] and not ll1llI11Il["miscOrbitEnabled"])) then
                        local I111lI11Il = Vector3["new"](lIl1lI11Il["Position"]["X"], ll11lI11Il["Position"]["Y"], lIl1lI11Il["Position"]["Z"])
                        if (I111lI11Il - ll11lI11Il["Position"])["Magnitude"] > 0.1 then
                            ll11lI11Il["CFrame"] = CFrame["lookAt"](ll11lI11Il["Position"], I111lI11Il)
                        end
                    end
                    Il11lI11Il["RenderStepped"]:Wait()
                end
            end)
            return true
        end
        ll1llI11Il["setMiscOrbit"] = function(I111lI11Il)
            I111lI11Il = I111lI11Il == true
            if I111lI11Il and not lllII111Il() then
                miscNotify("Seleccion\195\161 un jugador disponible.")
                return false
            end
            if I111lI11Il and ll1llI11Il["miscFollowEnabled"] then
                ll1llI11Il["setMiscFollow"](false)
                if ll1llI11Il["miscFollowToggle"] then
                    ll1llI11Il["miscFollowToggle"]:Set(false, true)
                end
            end
            ll1llI11Il["miscOrbitEnabled"] = I111lI11Il
            IIIII111Il("miscOrbit")
            if not I111lI11Il then
                return true
            end
            getSendMuscleEventI111L11Il("miscOrbit", function()
                local I111lI11Il = 0
                while ll1llI11Il["running"] and ll1llI11Il["miscOrbitEnabled"] do
                    local ll11lI11Il = Il11lI11Il["Heartbeat"]:Wait()
                    local lIl1lI11Il = lllII111Il()
                    local IIl1lI11Il = isI111L11IlValid()
                    local l1l1lI11Il = lIl1lI11Il and (lIl1lI11Il["Character"] and lIl1lI11Il["Character"]:FindFirstChild("HumanoidRootPart"))
                    if not lIl1lI11Il then
                        ll1llI11Il["miscOrbitEnabled"] = false
                        if ll1llI11Il["miscOrbitToggle"] then
                            ll1llI11Il["miscOrbitToggle"]:Set(false, true)
                        end
                        miscNotify("El objetivo ya no est\195\161 disponible.")
                        break
                    elseif IIl1lI11Il and l1l1lI11Il then
                        I111lI11Il = I111lI11Il + math["max"](1, ll1llI11Il["miscOrbitSpeed"]) * ll11lI11Il
                        local Il11lI11Il = (IIl1lI11Il["Size"]["X"] + l1l1lI11Il["Size"]["X"]) * 0.5 + 0.5
                        local lIl1lI11Il = math["max"](math["clamp"](ll1llI11Il["miscOrbitRadius"], 10, 24), Il11lI11Il)
                        local I1l1lI11Il = l1l1lI11Il["Position"] + Vector3["new"](math["cos"](I111lI11Il) * lIl1lI11Il, 0, math["sin"](I111lI11Il) * lIl1lI11Il)
                        IIl1lI11Il["CFrame"] = CFrame["lookAt"](I1l1lI11Il, l1l1lI11Il["Position"])
                        IIl1lI11Il["AssemblyLinearVelocity"] = Vector3["zero"]
                        IIl1lI11Il["AssemblyAngularVelocity"] = Vector3["zero"]
                    end
                end
            end)
            return true
        end
        local frame = Instance["new"]("Frame")
        frame["Name"] = "Young0xMinimap"
        frame["AnchorPoint"] = Vector2["new"](1, 0)
        frame["BackgroundColor3"] = Color3["fromRGB"](8, 8, 11)
        frame["BackgroundTransparency"] = 0.02
        frame["BorderSizePixel"] = 0
        frame["Visible"] = false
        frame["ZIndex"] = 80
        frame["Parent"] = screenGui
        ;(Instance["new"]("UICorner", frame))["CornerRadius"] = UDim["new"](0, 7)
        local uiStroke = Instance["new"]("UIStroke")
        uiStroke["Color"] = Color3["fromRGB"](255, 35, 70)
        uiStroke["Thickness"] = 2
        uiStroke["Transparency"] = 0
        uiStroke["Parent"] = frame
        local textButton = Instance["new"]("TextButton")
        textButton["Name"] = "MinimapDismiss"
        textButton["Size"] = UDim2["fromScale"](1, 1)
        textButton["BackgroundTransparency"] = 1
        textButton["BorderSizePixel"] = 0
        textButton["Text"] = ""
        textButton["AutoButtonColor"] = false
        textButton["Visible"] = false
        textButton["Active"] = true
        textButton["ZIndex"] = 79
        textButton["Parent"] = screenGui
        local textLabel = Instance["new"]("TextLabel")
        textLabel["Name"] = "Title"
        textLabel["Position"] = UDim2["fromOffset"](6, 2)
        textLabel["Size"] = UDim2["new"](1, -12, 0, 21)
        textLabel["BackgroundTransparency"] = 1
        textLabel["Font"] = l11llI11Il["fontBold"]
        textLabel["Text"] = "MINIMAPA"
        textLabel["TextColor3"] = l11llI11Il["white"]
        textLabel["TextSize"] = 11
        textLabel["TextTruncate"] = Enum["TextTruncate"]["AtEnd"]
        textLabel["ZIndex"] = 84
        textLabel:SetAttribute("Young0xPreserveTextStyle", true)
        textLabel["Parent"] = frame
        local viewportFrame = Instance["new"]("ViewportFrame")
        viewportFrame["Name"] = "Map"
        viewportFrame["Position"] = UDim2["fromOffset"](6, 24)
        viewportFrame["Size"] = UDim2["new"](1, -12, 1, -30)
        viewportFrame["BackgroundColor3"] = Color3["fromRGB"](8, 34, 54)
        viewportFrame["BackgroundTransparency"] = 0
        viewportFrame["BorderSizePixel"] = 0
        viewportFrame["Ambient"] = Color3["fromRGB"](175, 182, 190)
        viewportFrame["LightColor"] = Color3["fromRGB"](255, 255, 255)
        viewportFrame["LightDirection"] = Vector3["new"](-0.35, -1, -0.25)
        viewportFrame["ClipsDescendants"] = true
        viewportFrame["ZIndex"] = 81
        viewportFrame["Parent"] = frame
        ;(Instance["new"]("UICorner", viewportFrame))["CornerRadius"] = UDim["new"](0, 3)
        local worldModel = Instance["new"]("WorldModel")
        worldModel["Name"] = "HDWorld"
        worldModel["Parent"] = viewportFrame
        local lI11I111Il = Instance["new"]("Camera")
        lI11I111Il["Name"] = "MapCamera"
        lI11I111Il["FieldOfView"] = 35
        lI11I111Il["Parent"] = viewportFrame
        viewportFrame["CurrentCamera"] = lI11I111Il
        local II11I111Il = Instance["new"]("Frame")
        II11I111Il["Name"] = "Markers"
        II11I111Il["Size"] = UDim2["fromScale"](1, 1)
        II11I111Il["BackgroundTransparency"] = 1
        II11I111Il["BorderSizePixel"] = 0
        II11I111Il["ClipsDescendants"] = true
        II11I111Il["ZIndex"] = 82
        II11I111Il["Parent"] = viewportFrame
        local l111I111Il = Instance["new"]("Frame")
        l111I111Il["Name"] = "You"
        l111I111Il["AnchorPoint"] = Vector2["new"](0.5, 0.5)
        l111I111Il["Size"] = UDim2["fromOffset"](9, 9)
        l111I111Il["BackgroundColor3"] = Color3["fromRGB"](85, 221, 255)
        l111I111Il["BorderSizePixel"] = 0
        l111I111Il["Rotation"] = 45
        l111I111Il["ZIndex"] = 86
        l111I111Il["Parent"] = II11I111Il
        ;(Instance["new"]("UICorner", l111I111Il))["CornerRadius"] = UDim["new"](0, 2)
        local I111I111Il = Instance["new"]("UIStroke")
        I111I111Il["Color"] = l11llI11Il["white"]
        I111I111Il["Thickness"] = 1
        I111I111Il["Parent"] = l111I111Il
        local ll11I111Il = Instance["new"]("TextLabel")
        ll11I111Il["Name"] = "Heading"
        ll11I111Il["AnchorPoint"] = Vector2["new"](0.5, 0)
        ll11I111Il["Position"] = UDim2["new"](0.5, 0, 0, 2)
        ll11I111Il["Size"] = UDim2["fromOffset"](18, 14)
        ll11I111Il["BackgroundColor3"] = Color3["fromRGB"](8, 8, 11)
        ll11I111Il["BackgroundTransparency"] = 0.18
        ll11I111Il["BorderSizePixel"] = 0
        ll11I111Il["Text"] = "\195\162\194\150\194\178"
        ll11I111Il["TextColor3"] = Color3["fromRGB"](85, 221, 255)
        ll11I111Il["Font"] = l11llI11Il["fontBold"]
        ll11I111Il["TextSize"] = 10
        ll11I111Il["ZIndex"] = 87
        ll11I111Il["Parent"] = II11I111Il
        ;(Instance["new"]("UICorner", ll11I111Il))["CornerRadius"] = UDim["new"](0, 4)
        local Il11I111Il = Instance["new"]("TextButton")
        Il11I111Il["Name"] = "Expand"
        Il11I111Il["Size"] = UDim2["fromScale"](1, 1)
        Il11I111Il["BackgroundTransparency"] = 1
        Il11I111Il["BorderSizePixel"] = 0
        Il11I111Il["Text"] = ""
        Il11I111Il["AutoButtonColor"] = false
        Il11I111Il["Active"] = true
        Il11I111Il["ZIndex"] = 90
        Il11I111Il["Parent"] = frame
        ll1llI11Il["miscMinimapDots"] = {}
        ll1llI11Il["miscMinimapBuildKey"] = nil
        ll1llI11Il["miscMinimapActiveBounds"] = nil
        ll1llI11Il["miscMinimapCloneCount"] = 0
        ll1llI11Il["miscMinimapExpanded"] = false
        local function isLl11LIIlValid()
            local I111lI11Il = llll1111Il()
            return I111lI11Il["X"] < 760 or IIl1lI11Il["TouchEnabled"] and I111lI11Il["X"] < 1100
        end
        local function alternateHandler(I111lI11Il)
            local ll11lI11Il = isLl11LIIlValid()
            local Il11lI11Il = ll11lI11Il and 150 or 190
            local IIl1lI11Il = ll1llI11Il["miscMinimapEnabled"] and ll1llI11Il["miscMinimapExpanded"]
            local l1l1lI11Il = llll1111Il()
            local I1l1lI11Il = IIl1lI11Il and math["floor"](math["min"](ll11lI11Il and 340 or 480, l1l1lI11Il["X"] - (ll11lI11Il and 30 or 60), l1l1lI11Il["Y"] - (ll11lI11Il and 44 or 90))) or Il11lI11Il
            I1l1lI11Il = math["max"](Il11lI11Il, I1l1lI11Il)
            frame["AnchorPoint"] = IIl1lI11Il and Vector2["new"](0.5, 0.5) or Vector2["new"](1, 0)
            local lll1lI11Il = {
                ["Size"] = UDim2["fromOffset"](I1l1lI11Il, I1l1lI11Il),
                ["Position"] = IIl1lI11Il and UDim2["fromScale"](0.5, 0.5) or UDim2["new"](1, -(ll11lI11Il and 126 or 220), 0, ll11lI11Il and 18 or 20)
            }
            if I111lI11Il then
                (lIl1lI11Il:Create(frame, TweenInfo["new"](0.18, Enum["EasingStyle"]["Quart"], Enum["EasingDirection"]["Out"]), lll1lI11Il)):Play()
            else
                frame["Size"] = lll1lI11Il["Size"]
                frame["Position"] = lll1lI11Il["Position"]
            end
            textLabel["TextSize"] = IIl1lI11Il and (ll11lI11Il and 11 or 13) or ll11lI11Il and 9 or 11
            textButton["Visible"] = IIl1lI11Il
        end
        ll1llI11Il["setMiscMinimapExpanded"] = function(I111lI11Il)
            ll1llI11Il["miscMinimapExpanded"] = ll1llI11Il["miscMinimapEnabled"] and I111lI11Il == true
            alternateHandler(true)
            return true
        end
        IllllI11Il(Il11I111Il["Activated"]:Connect(function()
            if ll1llI11Il["miscMinimapEnabled"] and not ll1llI11Il["miscMinimapExpanded"] then
                ll1llI11Il["setMiscMinimapExpanded"](true)
            end
        end))
        IllllI11Il(textButton["Activated"]:Connect(function()
            ll1llI11Il["setMiscMinimapExpanded"](false)
        end))
        local function additionalHandler()
            for I111lI11Il, ll11lI11Il in pairs(ll1llI11Il["miscMinimapDots"]) do
                if ll11lI11Il then
                    pcall(ll11lI11Il["Destroy"], ll11lI11Il)
                end
                ll1llI11Il["miscMinimapDots"][I111lI11Il] = nil
            end
        end
        local function fallbackHandler()
            worldModel:ClearAllChildren()
            ll1llI11Il["miscMinimapCloneCount"] = 0
        end
        local function nestedHandler(I111lI11Il)
            if I111lI11Il == workspace["Terrain"] then
                return true
            end
            local ll11lI11Il = I111lI11Il
            for I111lI11Il = 1, 5, 1 do
                if not ll11lI11Il or ll11lI11Il == workspace then
                    break
                end
                local Il11lI11Il = ll11lI11Il["Name"]:lower()
                if Il11lI11Il:find("water", 1, true) or Il11lI11Il:find("ocean", 1, true) or Il11lI11Il:find("sea", 1, true) or Il11lI11Il:find("cloud", 1, true) then
                    return true
                end
                ll11lI11Il = ll11lI11Il["Parent"]
            end
            return false
        end
        local function innerHandler(ll11lI11Il)
            for I111lI11Il, Il11lI11Il in ipairs(I111lI11Il:GetPlayers()) do
                if Il11lI11Il["Character"] and ll11lI11Il:IsDescendantOf(Il11lI11Il["Character"]) then
                    return true
                end
            end
            return false
        end
        local function lIIlI111Il(I111lI11Il)
            local ll11lI11Il = I111lI11Il["position"]
            local Il11lI11Il = Vector3["new"](ll11lI11Il["X"], 0, ll11lI11Il["Z"])
            local lIl1lI11Il, IIl1lI11Il, l1l1lI11Il, I1l1lI11Il = math["huge"], -math["huge"], math["huge"], -math["huge"]
            local lll1lI11Il = 0
            for I111lI11Il, ll11lI11Il in ipairs(workspace:GetDescendants()) do
                if ll11lI11Il:IsA("BasePart") and (ll11lI11Il["Anchored"] and (ll11lI11Il["Transparency"] < 0.95 and (ll11lI11Il["Size"]["X"] <= 1800 and (ll11lI11Il["Size"]["Z"] <= 1800 and not nestedHandler(ll11lI11Il))))) then
                    local I111lI11Il = Vector3["new"](ll11lI11Il["Position"]["X"], 0, ll11lI11Il["Position"]["Z"])
                    local Ill1lI11Il = math["min"](math["max"](ll11lI11Il["Size"]["X"], ll11lI11Il["Size"]["Z"]) * 0.5, 650)
                    if (I111lI11Il - Il11lI11Il)["Magnitude"] <= lI1llI11Il + math["min"](Ill1lI11Il, 350) then
                        local I111lI11Il = math["min"](math["max"](ll11lI11Il["Size"]["X"], ll11lI11Il["Size"]["Z"]) * 0.5, 650)
                        local Il11lI11Il = I111lI11Il
                        lIl1lI11Il = math["min"](lIl1lI11Il, ll11lI11Il["Position"]["X"] - I111lI11Il)
                        IIl1lI11Il = math["max"](IIl1lI11Il, ll11lI11Il["Position"]["X"] + I111lI11Il)
                        l1l1lI11Il = math["min"](l1l1lI11Il, ll11lI11Il["Position"]["Z"] - Il11lI11Il)
                        I1l1lI11Il = math["max"](I1l1lI11Il, ll11lI11Il["Position"]["Z"] + Il11lI11Il)
                        lll1lI11Il = lll1lI11Il + 1
                    end
                end
            end
            if lll1lI11Il > 0 then
                local Il11lI11Il = Vector3["new"]((lIl1lI11Il + IIl1lI11Il) * 0.5, ll11lI11Il["Y"], (l1l1lI11Il + I1l1lI11Il) * 0.5)
                local lll1lI11Il = math["clamp"](math["max"](IIl1lI11Il - lIl1lI11Il, I1l1lI11Il - l1l1lI11Il) * 0.52, 450, 1000)
                return {
                    ["name"] = I111lI11Il["name"],
                    ["center"] = Il11lI11Il,
                    ["halfSize"] = lll1lI11Il
                }
            end
            return {
                ["name"] = I111lI11Il["name"],
                ["center"] = ll11lI11Il,
                ["halfSize"] = 800
            }
        end
        local function IIIlI111Il(I111lI11Il)
            local ll11lI11Il
            pcall(function()
                ll11lI11Il = I111lI11Il:Clone()
            end)
            if not ll11lI11Il or not ll11lI11Il:IsA("BasePart") then
                ll11lI11Il = Instance["new"]("Part")
                ll11lI11Il["Size"] = I111lI11Il["Size"]
                ll11lI11Il["CFrame"] = I111lI11Il["CFrame"]
                ll11lI11Il["Color"] = I111lI11Il["Color"]
                ll11lI11Il["Material"] = I111lI11Il["Material"]
                ll11lI11Il["Transparency"] = I111lI11Il["Transparency"]
                if I111lI11Il:IsA("Part") then
                    ll11lI11Il["Shape"] = I111lI11Il["Shape"]
                end
            end
            for I111lI11Il, ll11lI11Il in ipairs(ll11lI11Il:GetDescendants()) do
                if ll11lI11Il:IsA("BasePart") or ll11lI11Il:IsA("Script") or ll11lI11Il:IsA("LocalScript") or ll11lI11Il:IsA("ModuleScript") or ll11lI11Il:IsA("LayerCollector") or ll11lI11Il:IsA("ParticleEmitter") or ll11lI11Il:IsA("Trail") or ll11lI11Il:IsA("Beam") or ll11lI11Il:IsA("Light") or ll11lI11Il:IsA("Sound") or ll11lI11Il:IsA("Constraint") then
                    ll11lI11Il:Destroy()
                end
            end
            ll11lI11Il["Anchored"] = true
            ll11lI11Il["CanCollide"] = false
            ll11lI11Il["CanQuery"] = false
            ll11lI11Il["CanTouch"] = false
            ll11lI11Il["CastShadow"] = false
            ll11lI11Il["CFrame"] = I111lI11Il["CFrame"]
            ll11lI11Il["Parent"] = worldModel
            return ll11lI11Il
        end
        local function outerHandler(I111lI11Il)
            local ll11lI11Il = I111lI11Il["name"] .. ":HD"
            if ll1llI11Il["miscMinimapBuildKey"] == ll11lI11Il then
                return
            end
            ll1llI11Il["miscMinimapBuildKey"] = ll11lI11Il
            IIIII111Il("miscMinimapBuild")
            fallbackHandler()
            local Il11lI11Il = lIIlI111Il(I111lI11Il)
            ll1llI11Il["miscMinimapActiveBounds"] = Il11lI11Il
            getSendMuscleEventI111L11Il("miscMinimapBuild", function()
                local lIl1lI11Il = {}
                local IIl1lI11Il = Il11lI11Il["halfSize"] * 1.08
                for ll11lI11Il, l1l1lI11Il in ipairs(workspace:GetDescendants()) do
                    if l1l1lI11Il:IsA("BasePart") and (l1l1lI11Il["Anchored"] and (l1l1lI11Il["Transparency"] < 0.98 and (l1l1lI11Il["Size"]["Magnitude"] < 4000 and (not nestedHandler(l1l1lI11Il) and (not innerHandler(l1l1lI11Il) and (not l1l1lI11Il["Name"]:find("Young0x", 1, true) and (math["abs"](l1l1lI11Il["Position"]["X"] - Il11lI11Il["center"]["X"]) <= IIl1lI11Il and (math["abs"](l1l1lI11Il["Position"]["Z"] - Il11lI11Il["center"]["Z"]) <= IIl1lI11Il and (l1l1lI11Il["Position"]["Y"] >= I111lI11Il["position"]["Y"] - 500 and l1l1lI11Il["Position"]["Y"] <= I111lI11Il["position"]["Y"] + 1800))))))))) then
                        lIl1lI11Il[#lIl1lI11Il + 1] = l1l1lI11Il
                    end
                end
                table["sort"](lIl1lI11Il, function(I111lI11Il, ll11lI11Il)
                    return I111lI11Il["Size"]["X"] * I111lI11Il["Size"]["Z"] > ll11lI11Il["Size"]["X"] * ll11lI11Il["Size"]["Z"]
                end)
                local l1l1lI11Il = isLl11LIIlValid() and 650 or 1000
                for I111lI11Il, Il11lI11Il in ipairs(lIl1lI11Il) do
                    if I111lI11Il > l1l1lI11Il or not ll1llI11Il["running"] or ll1llI11Il["miscMinimapBuildKey"] ~= ll11lI11Il then
                        break
                    end
                    if IIIlI111Il(Il11lI11Il) then
                        ll1llI11Il["miscMinimapCloneCount"] = ll1llI11Il["miscMinimapCloneCount"] + 1
                    end
                    if I111lI11Il % 45 == 0 then
                        task["wait"]()
                    end
                end
            end)
        end
        local function isValid(I111lI11Il)
            local ll11lI11Il = workspace["CurrentCamera"]
            local Il11lI11Il = ll11lI11Il and ll11lI11Il["CFrame"]["LookVector"] or I111lI11Il and I111lI11Il["CFrame"]["LookVector"]
            local lIl1lI11Il = Il11lI11Il and Vector3["new"](Il11lI11Il["X"], 0, Il11lI11Il["Z"]) or Vector3["new"](0, 0, -1)
            if lIl1lI11Il["Magnitude"] < 0.05 and I111lI11Il then
                local ll11lI11Il = I111lI11Il["CFrame"]["LookVector"]
                lIl1lI11Il = Vector3["new"](ll11lI11Il["X"], 0, ll11lI11Il["Z"])
            end
            return lIl1lI11Il["Magnitude"] >= 0.05 and lIl1lI11Il["Unit"] or Vector3["new"](0, 0, -1)
        end
        local function llIlI111Il(I111lI11Il, ll11lI11Il)
            local Il11lI11Il = I111lI11Il["halfSize"] * 1.1
            local lIl1lI11Il = Il11lI11Il / math["tan"](math["rad"](lI11I111Il["FieldOfView"] * 0.5))
            local IIl1lI11Il = Vector3["new"](I111lI11Il["center"]["X"], I111lI11Il["center"]["Y"], I111lI11Il["center"]["Z"])
            local l1l1lI11Il = IIl1lI11Il + Vector3["new"](0, lIl1lI11Il, 0)
            lI11I111Il["CFrame"] = CFrame["lookAt"](l1l1lI11Il, IIl1lI11Il, ll11lI11Il)
            lI11I111Il["Focus"] = CFrame["new"](IIl1lI11Il)
        end
        local function IlIlI111Il(I111lI11Il, ll11lI11Il, Il11lI11Il)
            local lIl1lI11Il = Vector2["new"](I111lI11Il["X"] - ll11lI11Il["center"]["X"], I111lI11Il["Z"] - ll11lI11Il["center"]["Z"])
            local IIl1lI11Il = Vector2["new"](Il11lI11Il["X"], Il11lI11Il["Z"])
            if IIl1lI11Il["Magnitude"] < 0.01 then
                IIl1lI11Il = Vector2["new"](0, -1)
            end
            IIl1lI11Il = IIl1lI11Il["Unit"]
            local l1l1lI11Il = Vector2["new"](-IIl1lI11Il["Y"], IIl1lI11Il["X"])
            local I1l1lI11Il = (ll11lI11Il["halfSize"] * 2) * 1.1
            local lll1lI11Il = math["clamp"](0.5 + lIl1lI11Il:Dot(l1l1lI11Il) / I1l1lI11Il, 0.035, 0.965)
            local Ill1lI11Il = math["clamp"](0.5 - lIl1lI11Il:Dot(IIl1lI11Il) / I1l1lI11Il, 0.035, 0.965)
            return UDim2["fromScale"](lll1lI11Il, Ill1lI11Il)
        end
        local function lI1lI111Il()
            alternateHandler()
            local ll11lI11Il = isI111L11IlValid()
            local Il11lI11Il, lIl1lI11Il = nil, math["huge"]
            if ll11lI11Il then
                Il11lI11Il, lIl1lI11Il = Il1llI11Il(ll11lI11Il["Position"])
            end
            local IIl1lI11Il = Il11lI11Il and lIl1lI11Il <= lI1llI11Il
            if IIl1lI11Il then
                outerHandler(Il11lI11Il)
            end
            if not ll1llI11Il["miscMinimapEnabled"] then
                frame["Visible"] = false
                ll1llI11Il["miscMinimapExpanded"] = false
                textButton["Visible"] = false
                additionalHandler()
                return
            end
            frame["Visible"] = true
            l111I111Il["Visible"] = IIl1lI11Il == true
            ll11I111Il["Visible"] = IIl1lI11Il == true
            textLabel["Text"] = "MINIMAPA"
            if not IIl1lI11Il then
                additionalHandler()
                return
            end
            local l1l1lI11Il = ll1llI11Il["miscMinimapActiveBounds"]
            if not l1l1lI11Il or l1l1lI11Il["name"] ~= Il11lI11Il["name"] then
                l1l1lI11Il = {
                    ["name"] = Il11lI11Il["name"],
                    ["center"] = Il11lI11Il["position"],
                    ["halfSize"] = 800
                }
            end
            local I1l1lI11Il = isValid(ll11lI11Il)
            ll1llI11Il["miscMinimapHeading"] = I1l1lI11Il
            llIlI111Il(l1l1lI11Il, I1l1lI11Il)
            l111I111Il["Position"] = IlIlI111Il(ll11lI11Il["Position"], l1l1lI11Il, I1l1lI11Il)
            local lll1lI11Il = {}
            for I111lI11Il, Il11lI11Il in ipairs(I111lI11Il:GetPlayers()) do
                if Il11lI11Il ~= IIIllI11Il and Il11lI11Il["Character"] then
                    local I111lI11Il = Il11lI11Il["Character"]:FindFirstChild("HumanoidRootPart")
                    local lIl1lI11Il = Il11lI11Il["Character"]:FindFirstChildWhichIsA("Humanoid")
                    local IIl1lI11Il = I111lI11Il and select(1, lIlllI11Il(ll11lI11Il, I111lI11Il))
                    if I111lI11Il and (lIl1lI11Il and (lIl1lI11Il["Health"] > 0 and IIl1lI11Il)) then
                        lll1lI11Il[Il11lI11Il] = true
                        local ll11lI11Il = ll1llI11Il["miscMinimapDots"][Il11lI11Il]
                        if not ll11lI11Il then
                            ll11lI11Il = Instance["new"]("Frame")
                            ll11lI11Il["Name"] = "Player_" .. Il11lI11Il["Name"]
                            ll11lI11Il["AnchorPoint"] = Vector2["new"](0.5, 0.5)
                            ll11lI11Il["Size"] = UDim2["fromOffset"](7, 7)
                            ll11lI11Il["BackgroundColor3"] = Color3["fromRGB"](255, 0, 45)
                            ll11lI11Il["BorderSizePixel"] = 0
                            ll11lI11Il["ZIndex"] = 85
                            ll11lI11Il["Parent"] = II11I111Il
                            ;(Instance["new"]("UICorner", ll11lI11Il))["CornerRadius"] = UDim["new"](1, 0)
                            local I111lI11Il = Instance["new"]("UIStroke")
                            I111lI11Il["Color"] = Color3["fromRGB"](35, 0, 7)
                            I111lI11Il["Thickness"] = 1
                            I111lI11Il["Parent"] = ll11lI11Il
                            ll1llI11Il["miscMinimapDots"][Il11lI11Il] = ll11lI11Il
                        end
                        ll11lI11Il["Position"] = IlIlI111Il(I111lI11Il["Position"], l1l1lI11Il, I1l1lI11Il)
                    end
                end
            end
            for I111lI11Il, ll11lI11Il in pairs(ll1llI11Il["miscMinimapDots"]) do
                if not lll1lI11Il[I111lI11Il] then
                    pcall(ll11lI11Il["Destroy"], ll11lI11Il)
                    ll1llI11Il["miscMinimapDots"][I111lI11Il] = nil
                end
            end
        end
        ll1llI11Il["setMiscMinimap"] = function(I111lI11Il)
            ll1llI11Il["miscMinimapEnabled"] = I111lI11Il == true
            if not ll1llI11Il["miscMinimapEnabled"] then
                ll1llI11Il["miscMinimapExpanded"] = false
            end
            IIIII111Il("miscMinimap")
            lI1lI111Il()
            if not ll1llI11Il["miscMinimapEnabled"] then
                return true
            end
            getSendMuscleEventI111L11Il("miscMinimap", function()
                local I111lI11Il = 0
                while ll1llI11Il["running"] and ll1llI11Il["miscMinimapEnabled"] do
                    I111lI11Il = I111lI11Il + Il11lI11Il["RenderStepped"]:Wait()
                    if I111lI11Il >= 0.033333333333333 then
                        I111lI11Il = 0
                        lI1lI111Il()
                    end
                end
            end)
            return true
        end
        getSendMuscleEventI111L11Il("miscMinimapCache", function()
            while ll1llI11Il["running"] do
                if not ll1llI11Il["miscMinimapEnabled"] then
                    lI1lI111Il()
                end
                task["wait"](1)
            end
        end)
        local II1lI111Il = nil
        ll1llI11Il["setMiscFullBright"] = function(I111lI11Il)
            IIIII111Il("miscFullBright")
            if not I111lI11Il then
                if II1lI111Il then
                    for I111lI11Il, ll11lI11Il in pairs(II1lI111Il) do
                        pcall(function()
                            lll1lI11Il[I111lI11Il] = ll11lI11Il
                        end)
                    end
                    II1lI111Il = nil
                end
                return true
            end
            II1lI111Il = {
                ["Brightness"] = lll1lI11Il["Brightness"],
                ["ClockTime"] = lll1lI11Il["ClockTime"],
                ["Ambient"] = lll1lI11Il["Ambient"],
                ["OutdoorAmbient"] = lll1lI11Il["OutdoorAmbient"],
                ["GlobalShadows"] = lll1lI11Il["GlobalShadows"]
            }
            getSendMuscleEventI111L11Il("miscFullBright", function()
                while ll1llI11Il["running"] and II1lI111Il do
                    lll1lI11Il["Brightness"] = 3
                    lll1lI11Il["ClockTime"] = 14
                    lll1lI11Il["Ambient"] = Color3["fromRGB"](178, 178, 178)
                    lll1lI11Il["OutdoorAmbient"] = Color3["fromRGB"](178, 178, 178)
                    lll1lI11Il["GlobalShadows"] = false
                    task["wait"](0.35)
                end
            end)
            return true
        end
        local l11lI111Il = nil
        local I11lI111Il = setmetatable({}, {
            ["__mode"] = "k"
        })
        ll1llI11Il["setMiscNoFog"] = function(I111lI11Il)
            IIIII111Il("miscNoFog")
            if not I111lI11Il then
                if l11lI111Il then
                    lll1lI11Il["FogStart"] = l11lI111Il["FogStart"]
                    lll1lI11Il["FogEnd"] = l11lI111Il["FogEnd"]
                    lll1lI11Il["FogColor"] = l11lI111Il["FogColor"]
                    l11lI111Il = nil
                end
                for I111lI11Il, ll11lI11Il in pairs(I11lI111Il) do
                    if I111lI11Il and I111lI11Il["Parent"] then
                        for ll11lI11Il, Il11lI11Il in pairs(ll11lI11Il) do
                            pcall(function()
                                I111lI11Il[ll11lI11Il] = Il11lI11Il
                            end)
                        end
                    end
                    I11lI111Il[I111lI11Il] = nil
                end
                return true
            end
            l11lI111Il = {
                ["FogStart"] = lll1lI11Il["FogStart"],
                ["FogEnd"] = lll1lI11Il["FogEnd"],
                ["FogColor"] = lll1lI11Il["FogColor"]
            }
            getSendMuscleEventI111L11Il("miscNoFog", function()
                while ll1llI11Il["running"] and l11lI111Il do
                    lll1lI11Il["FogStart"] = 100000
                    lll1lI11Il["FogEnd"] = 1000000
                    for I111lI11Il, ll11lI11Il in ipairs(lll1lI11Il:GetDescendants()) do
                        if ll11lI11Il:IsA("Atmosphere") then
                            if not I11lI111Il[ll11lI11Il] then
                                I11lI111Il[ll11lI11Il] = {
                                    ["Density"] = ll11lI11Il["Density"],
                                    ["Offset"] = ll11lI11Il["Offset"],
                                    ["Haze"] = ll11lI11Il["Haze"],
                                    ["Glare"] = ll11lI11Il["Glare"]
                                }
                            end
                            ll11lI11Il["Density"] = 0
                            ll11lI11Il["Haze"] = 0
                            ll11lI11Il["Glare"] = 0
                        end
                    end
                    task["wait"](0.5)
                end
            end)
            return true
        end
        local ll1lI111Il = nil
        local function Il1lI111Il(I111lI11Il)
            if not I111lI11Il then
                return
            end
            local ll11lI11Il = math["clamp"](ll1llI11Il["miscFov"], 50, 150)
            if ll11lI11Il > 120 then
                I111lI11Il["FieldOfViewMode"] = Enum["FieldOfViewMode"]["MaxAxis"]
                I111lI11Il["MaxAxisFieldOfView"] = ll11lI11Il
            else
                I111lI11Il["FieldOfViewMode"] = Enum["FieldOfViewMode"]["Vertical"]
                I111lI11Il["FieldOfView"] = ll11lI11Il
            end
        end
        ll1llI11Il["applyMiscFov"] = Il1lI111Il
        ll1llI11Il["setMiscFov"] = function(I111lI11Il)
            ll1llI11Il["miscFovEnabled"] = I111lI11Il == true
            IIIII111Il("miscFov")
            if not ll1llI11Il["miscFovEnabled"] then
                local I111lI11Il = workspace["CurrentCamera"]
                if I111lI11Il and ll1lI111Il then
                    I111lI11Il["FieldOfViewMode"] = ll1lI111Il["Mode"]
                    if ll1lI111Il["Mode"] == Enum["FieldOfViewMode"]["Diagonal"] then
                        I111lI11Il["DiagonalFieldOfView"] = ll1lI111Il["Diagonal"]
                    elseif ll1lI111Il["Mode"] == Enum["FieldOfViewMode"]["MaxAxis"] then
                        I111lI11Il["MaxAxisFieldOfView"] = ll1lI111Il["MaxAxis"]
                    else
                        I111lI11Il["FieldOfView"] = ll1lI111Il["Vertical"]
                    end
                end
                ll1lI111Il = nil
                return true
            end
            local ll11lI11Il = workspace["CurrentCamera"]
            if ll11lI11Il and not ll1lI111Il then
                ll1lI111Il = {
                    ["Mode"] = ll11lI11Il["FieldOfViewMode"],
                    ["Vertical"] = ll11lI11Il["FieldOfView"],
                    ["Diagonal"] = ll11lI11Il["DiagonalFieldOfView"],
                    ["MaxAxis"] = ll11lI11Il["MaxAxisFieldOfView"]
                }
            end
            getSendMuscleEventI111L11Il("miscFov", function()
                while ll1llI11Il["running"] and ll1llI11Il["miscFovEnabled"] do
                    Il1lI111Il(workspace["CurrentCamera"])
                    Il11lI11Il["RenderStepped"]:Wait()
                end
            end)
            return true
        end
        local lIllI111Il = nil
        ll1llI11Il["setMiscZoom"] = function(I111lI11Il)
            ll1llI11Il["miscZoomEnabled"] = I111lI11Il == true
            IIIII111Il("miscZoom")
            if not ll1llI11Il["miscZoomEnabled"] then
                if lIllI111Il then
                    IIIllI11Il["CameraMaxZoomDistance"] = lIllI111Il
                end
                lIllI111Il = nil
                return true
            end
            lIllI111Il = lIllI111Il or IIIllI11Il["CameraMaxZoomDistance"]
            getSendMuscleEventI111L11Il("miscZoom", function()
                while ll1llI11Il["running"] and ll1llI11Il["miscZoomEnabled"] do
                    IIIllI11Il["CameraMaxZoomDistance"] = 100000
                    task["wait"](0.4)
                end
            end)
            return true
        end
        local IIllI111Il = {}
        local l1llI111Il = {}
        local function I1llI111Il(I111lI11Il, ll11lI11Il, Il11lI11Il)
            local lIl1lI11Il = IIllI111Il[I111lI11Il]
            if not lIl1lI11Il then
                lIl1lI11Il = {}
                IIllI111Il[I111lI11Il] = lIl1lI11Il
            end
            if lIl1lI11Il[ll11lI11Il] == nil then
                local Il11lI11Il, IIl1lI11Il = pcall(function()
                    return I111lI11Il[ll11lI11Il]
                end)
                if Il11lI11Il then
                    lIl1lI11Il[ll11lI11Il] = IIl1lI11Il
                end
            end
            pcall(function()
                I111lI11Il[ll11lI11Il] = Il11lI11Il
            end)
        end
        local function llllI111Il()
            for I111lI11Il, ll11lI11Il in pairs(IIllI111Il) do
                if I111lI11Il and I111lI11Il["Parent"] then
                    for ll11lI11Il, Il11lI11Il in pairs(ll11lI11Il) do
                        pcall(function()
                            I111lI11Il[ll11lI11Il] = Il11lI11Il
                        end)
                    end
                end
                IIllI111Il[I111lI11Il] = nil
            end
            for I111lI11Il, ll11lI11Il in pairs(l1llI111Il) do
                if I111lI11Il and I111lI11Il["Parent"] then
                    pcall(function()
                        I111lI11Il["DisplayDistanceType"] = ll11lI11Il["DisplayDistanceType"]
                        I111lI11Il["NameDisplayDistance"] = ll11lI11Il["NameDisplayDistance"]
                        I111lI11Il["HealthDisplayDistance"] = ll11lI11Il["HealthDisplayDistance"]
                    end)
                end
                l1llI111Il[I111lI11Il] = nil
            end
            for I111lI11Il, ll11lI11Il in ipairs(I111lI11Il:GetPlayers()) do
                if ll11lI11Il ~= IIIllI11Il and ll11lI11Il["Character"] then
                    for I111lI11Il, ll11lI11Il in ipairs(ll11lI11Il["Character"]:GetDescendants()) do
                        if ll11lI11Il:IsA("BasePart") then
                            pcall(function()
                                ll11lI11Il["LocalTransparencyModifier"] = 0
                            end)
                        end
                    end
                end
            end
        end
        ll1llI11Il["setMiscHidePlayers"] = function(ll11lI11Il)
            ll1llI11Il["miscHidePlayers"] = ll11lI11Il == true
            IIIII111Il("miscHidePlayers")
            if not ll1llI11Il["miscHidePlayers"] then
                llllI111Il()
                I1lII111Il()
                task["defer"](function()
                    Il11lI11Il["Heartbeat"]:Wait()
                    if ll1llI11Il["running"] and not ll1llI11Il["miscHidePlayers"] then
                        llllI111Il()
                    end
                end)
                return true
            end
            getSendMuscleEventI111L11Il("miscHidePlayers", function()
                while ll1llI11Il["running"] and ll1llI11Il["miscHidePlayers"] do
                    for I111lI11Il, ll11lI11Il in ipairs(I111lI11Il:GetPlayers()) do
                        if ll11lI11Il ~= IIIllI11Il and ll11lI11Il["Character"] then
                            local I111lI11Il = ll11lI11Il["Character"]:FindFirstChildWhichIsA("Humanoid")
                            if I111lI11Il then
                                if not l1llI111Il[I111lI11Il] then
                                    l1llI111Il[I111lI11Il] = {
                                        ["DisplayDistanceType"] = I111lI11Il["DisplayDistanceType"],
                                        ["NameDisplayDistance"] = I111lI11Il["NameDisplayDistance"],
                                        ["HealthDisplayDistance"] = I111lI11Il["HealthDisplayDistance"]
                                    }
                                end
                                I111lI11Il["DisplayDistanceType"] = Enum["HumanoidDisplayDistanceType"]["None"]
                                I111lI11Il["NameDisplayDistance"] = 0
                                I111lI11Il["HealthDisplayDistance"] = 0
                            end
                            for I111lI11Il, ll11lI11Il in ipairs(ll11lI11Il["Character"]:GetDescendants()) do
                                if ll11lI11Il:IsA("BasePart") then
                                    I1llI111Il(ll11lI11Il, "LocalTransparencyModifier", 1)
                                elseif ll11lI11Il:IsA("Decal") or ll11lI11Il:IsA("Texture") then
                                    I1llI111Il(ll11lI11Il, "Transparency", 1)
                                elseif ll11lI11Il:IsA("BillboardGui") or ll11lI11Il:IsA("SurfaceGui") then
                                    I1llI111Il(ll11lI11Il, "Enabled", false)
                                elseif ll11lI11Il:IsA("ParticleEmitter") or ll11lI11Il:IsA("Trail") or ll11lI11Il:IsA("Beam") or ll11lI11Il:IsA("Highlight") or ll11lI11Il:IsA("Fire") or ll11lI11Il:IsA("Smoke") or ll11lI11Il:IsA("Sparkles") or ll11lI11Il:IsA("Light") then
                                    I1llI111Il(ll11lI11Il, "Enabled", false)
                                elseif ll11lI11Il:IsA("BoxHandleAdornment") or ll11lI11Il:IsA("CylinderHandleAdornment") or ll11lI11Il:IsA("SphereHandleAdornment") or ll11lI11Il:IsA("SelectionBox") then
                                    I1llI111Il(ll11lI11Il, "Visible", false)
                                end
                            end
                        end
                    end
                    task["wait"](0.25)
                end
            end)
            return true
        end
        local IlllI111Il = setmetatable({}, {
            ["__mode"] = "k"
        })
        local function lIII1111Il()
            for I111lI11Il, ll11lI11Il in pairs(IlllI111Il) do
                if I111lI11Il and I111lI11Il["Parent"] then
                    pcall(function()
                        I111lI11Il["Enabled"] = ll11lI11Il
                    end)
                end
                IlllI111Il[I111lI11Il] = nil
            end
        end
        ll1llI11Il["setMiscHideGameUi"] = function(I111lI11Il)
            ll1llI11Il["miscHideGameUi"] = I111lI11Il == true
            IIIII111Il("miscHideGameUi")
            if not ll1llI11Il["miscHideGameUi"] then
                lIII1111Il()
                return true
            end
            getSendMuscleEventI111L11Il("miscHideGameUi", function()
                while ll1llI11Il["running"] and ll1llI11Il["miscHideGameUi"] do
                    for I111lI11Il, ll11lI11Il in ipairs(parent:GetChildren()) do
                        if ll11lI11Il:IsA("LayerCollector") and ll11lI11Il ~= screenGui then
                            if IlllI111Il[ll11lI11Il] == nil then
                                IlllI111Il[ll11lI11Il] = ll11lI11Il["Enabled"]
                            end
                            ll11lI11Il["Enabled"] = false
                        end
                    end
                    task["wait"](0.4)
                end
            end)
            return true
        end
        IllllI11Il(I111lI11Il["PlayerRemoving"]:Connect(function(I111lI11Il)
            llIII111Il(I111lI11Il)
            local ll11lI11Il = ll1llI11Il["miscMinimapDots"] and ll1llI11Il["miscMinimapDots"][I111lI11Il]
            if ll11lI11Il then
                pcall(ll11lI11Il["Destroy"], ll11lI11Il)
                ll1llI11Il["miscMinimapDots"][I111lI11Il] = nil
            end
        end))
        lIIII111Il(function()
            ll1llI11Il["miscFollowEnabled"] = false
            ll1llI11Il["miscFaceTarget"] = false
            ll1llI11Il["miscOrbitEnabled"] = false
            ll1llI11Il["miscMinimapEnabled"] = false
            for I111lI11Il in pairs(ll1llI11Il["miscVisualFlags"]) do
                ll1llI11Il["miscVisualFlags"][I111lI11Il] = false
            end
            IlIII111Il()
            ll1llI11Il["setMiscMinimap"](false)
            ll1llI11Il["setMiscFullBright"](false)
            ll1llI11Il["setMiscNoFog"](false)
            ll1llI11Il["setMiscFov"](false)
            ll1llI11Il["setMiscZoom"](false)
            ll1llI11Il["setMiscHidePlayers"](false)
            ll1llI11Il["setMiscHideGameUi"](false)
        end)
    end
    ll11lI11Il()
end
do
    local I111lI11Il = I111l111Il["Misc"]
    lll1l111Il(I111lI11Il, "\195\176\194\159\194\150\194\165\195\175\194\184\194\143 RENDIMIENTO \195\176\194\159\194\150\194\165\195\175\194\184\194\143")
    secondaryCreateTextButton(I111lI11Il, "Anti Lag 100%", function(I111lI11Il)
        III11111Il(I111lI11Il)
    end)
    local ll11lI11Il = IIIll111Il(I111lI11Il, "Desactivado")
    lIlI1111Il = function(I111lI11Il)
        if ll11lI11Il and ll11lI11Il["Parent"] then
            ll11lI11Il["Text"] = I111lI11Il
        end
    end
    lll1l111Il(I111lI11Il, "\195\176\194\159\194\154\194\128 FLY \195\176\194\159\194\154\194\128")
    secondaryCreateTextButton(I111lI11Il, " Fly ", function(I111lI11Il)
        II1l1111Il(I111lI11Il)
    end)
    lI1ll111Il(I111lI11Il, "Velocidad del Fly", 1, 30, ll1llI11Il["flyLevel"], function(I111lI11Il)
        ll1llI11Il["flyLevel"] = I111lI11Il
    end)
    lll1l111Il(I111lI11Il, "\195\176\194\159\194\145\194\129\195\175\194\184\194\143 ESP Y TRACERS \195\176\194\159\194\145\194\129\195\175\194\184\194\143")
    ll1llI11Il["miscVisualToggles"] = {
        ["boxes"] = secondaryCreateTextButton(I111lI11Il, "ESP", function(I111lI11Il)
            return ll1llI11Il["setMiscVisualFlag"]("boxes", I111lI11Il)
        end),
        ["names"] = secondaryCreateTextButton(I111lI11Il, "ESP: Nombres", function(I111lI11Il)
            return ll1llI11Il["setMiscVisualFlag"]("names", I111lI11Il)
        end),
        ["tracers"] = secondaryCreateTextButton(I111lI11Il, "Tracers", function(I111lI11Il)
            return ll1llI11Il["setMiscVisualFlag"]("tracers", I111lI11Il)
        end),
        ["distance"] = secondaryCreateTextButton(I111lI11Il, "ESP: Distancia", function(I111lI11Il)
            return ll1llI11Il["setMiscVisualFlag"]("distance", I111lI11Il)
        end),
        ["durability"] = secondaryCreateTextButton(I111lI11Il, "ESP: Durabilidad", function(I111lI11Il)
            return ll1llI11Il["setMiscVisualFlag"]("durability", I111lI11Il)
        end)
    }
    lll1l111Il(I111lI11Il, "\195\176\194\159\194\167\194\173 JUGADORES \195\176\194\159\194\167\194\173")
    ll1llI11Il["miscPlayerSelector"] = llIll111Il(I111lI11Il, "Objetivo", ll1llI11Il["miscTargetOptions"](), function(I111lI11Il)
        ll1llI11Il["miscTarget"] = type(I111lI11Il) == "table" and I111lI11Il["name"] or I111lI11Il
        ll1llI11Il["spyTarget"] = ll1llI11Il["miscTarget"]
    end, nil, "Sin jugadores disponibles")
    if #ll1llI11Il["miscTargetOptions"]() > 0 then
        ll1llI11Il["miscPlayerSelector"]:SetIndex(1)
    end
    createTextButton(I111lI11Il, "Teletransportarse al jugador", function()
        ll1llI11Il["teleportToMiscPlayer"]()
    end)
    ll1llI11Il["miscFollowToggle"] = secondaryCreateTextButton(I111lI11Il, "Tracker: Seguir jugador", function(I111lI11Il)
        return ll1llI11Il["setMiscFollow"](I111lI11Il)
    end)
    lI1ll111Il(I111lI11Il, "Distancia seguimiento", 2, 30, ll1llI11Il["miscFollowDistance"], function(I111lI11Il)
        ll1llI11Il["miscFollowDistance"] = I111lI11Il
    end)
    ll1llI11Il["miscOrbitToggle"] = secondaryCreateTextButton(I111lI11Il, "Orbitar alrededor del objetivo", function(I111lI11Il)
        return ll1llI11Il["setMiscOrbit"](I111lI11Il)
    end)
    lI1ll111Il(I111lI11Il, "Radio de \195\179rbita", 10, 24, ll1llI11Il["miscOrbitRadius"], function(I111lI11Il)
        ll1llI11Il["miscOrbitRadius"] = I111lI11Il
    end)
    lI1ll111Il(I111lI11Il, "Velocidad de \195\179rbita", 1, 15, ll1llI11Il["miscOrbitSpeed"], function(I111lI11Il)
        ll1llI11Il["miscOrbitSpeed"] = I111lI11Il
    end)
    ll1llI11Il["spyToggle"] = secondaryCreateTextButton(I111lI11Il, "Spy: Mirar jugador", function(I111lI11Il)
        local ll11lI11Il = ll1llI11Il["selectedMiscPlayer"]()
        if I111lI11Il and not ll11lI11Il then
            return false
        end
        if ll11lI11Il then
            ll1llI11Il["spyTarget"] = ll11lI11Il["Name"]
        end
        I1ll1111Il(I111lI11Il)
        return true
    end)
    secondaryCreateTextButton(I111lI11Il, "Ocultar jugadores", function(I111lI11Il)
        return ll1llI11Il["setMiscHidePlayers"](I111lI11Il)
    end)
    secondaryCreateTextButton(I111lI11Il, "Minimapa", function(I111lI11Il)
        return ll1llI11Il["setMiscMinimap"](I111lI11Il)
    end)
    lll1l111Il(I111lI11Il, "\240\159\140\142 MUNDO Y C\195\129MARA \240\159\140\142")
    secondaryCreateTextButton(I111lI11Il, "FullBright", function(I111lI11Il)
        return ll1llI11Il["setMiscFullBright"](I111lI11Il)
    end)
    secondaryCreateTextButton(I111lI11Il, "Quitar niebla", function(I111lI11Il)
        return ll1llI11Il["setMiscNoFog"](I111lI11Il)
    end)
    ll1llI11Il["miscFovToggle"] = secondaryCreateTextButton(I111lI11Il, "FOV personalizado", function(I111lI11Il)
        return ll1llI11Il["setMiscFov"](I111lI11Il)
    end)
    lI1ll111Il(I111lI11Il, "Campo de visi\195\179n", 50, 150, ll1llI11Il["miscFov"], function(I111lI11Il)
        ll1llI11Il["miscFov"] = I111lI11Il
        if ll1llI11Il["miscFovEnabled"] and workspace["CurrentCamera"] then
            ll1llI11Il["applyMiscFov"](workspace["CurrentCamera"])
        end
    end)
    secondaryCreateTextButton(I111lI11Il, "Zoom extendido", function(I111lI11Il)
        return ll1llI11Il["setMiscZoom"](I111lI11Il)
    end)
    ll1llI11Il["miscFreecamToggle"] = secondaryCreateTextButton(I111lI11Il, "Freecam", function(I111lI11Il)
        return ll1llI11Il["setMiscFreecam"](I111lI11Il)
    end)
    lI1ll111Il(I111lI11Il, "Velocidad Freecam", 20, 250, ll1llI11Il["miscFreecamSpeed"], function(I111lI11Il)
        ll1llI11Il["miscFreecamSpeed"] = I111lI11Il
    end)
    secondaryCreateTextButton(I111lI11Il, "Ocultar interfaz del juego", function(I111lI11Il)
        return ll1llI11Il["setMiscHideGameUi"](I111lI11Il)
    end)
    lll1l111Il(I111lI11Il, "\195\176\194\159\194\167\194\176 UTILIDADES \195\176\194\159\194\167\194\176")
    ll1llI11Il["miscClickTpToggle"] = secondaryCreateTextButton(I111lI11Il, "Click TP", function(I111lI11Il)
        return ll1llI11Il["setMiscClickTp"](I111lI11Il)
    end)
    ll1llI11Il["miscHidePetsToggle"] = secondaryCreateTextButton(I111lI11Il, "Ocultar pets", function(I111lI11Il)
        return ll1llI11Il["setMiscHidePets"](I111lI11Il)
    end)
    ll1llI11Il["miscFpsUnlockToggle"] = secondaryCreateTextButton(I111lI11Il, "FPS Unlock", function(I111lI11Il)
        local ll11lI11Il = ll1llI11Il["setMiscFpsUnlock"](I111lI11Il)
        if ll11lI11Il then
            ll1llI11Il["miscNotify"](I111lI11Il and "FPS Unlock activado: sin l\195\173mite." or "L\195\173mite de FPS restaurado.")
        end
        return ll11lI11Il
    end)
    ll1llI11Il["miscHeadlessToggle"] = secondaryCreateTextButton(I111lI11Il, "Headless", function(I111lI11Il)
        return ll1llI11Il["setMiscHeadless"](I111lI11Il)
    end)
    lll1l111Il(I111lI11Il, "\195\162\194\154\194\153\195\175\194\184\194\143 MISC \195\162\194\154\194\153\195\175\194\184\194\143")
    if IIl1lI11Il["TouchEnabled"] and (llll1111Il())["X"] < 1100 then
        local ll11lI11Il = Instance["new"]("TextLabel")
        ll11lI11Il["LayoutOrder"] = IIl1l111Il(I111lI11Il)
        ll11lI11Il["Text"] = "Keybind:"
        ll11lI11Il["TextColor3"] = l11llI11Il["white"]
        ll11lI11Il["Font"] = I11llI11Il
        ll11lI11Il["TextSize"] = 12
        ll11lI11Il["TextXAlignment"] = Enum["TextXAlignment"]["Left"]
        ll11lI11Il["Parent"] = I111lI11Il
        Ill1l111Il(ll11lI11Il, 38)
        local Il11lI11Il = Instance["new"]("UIPadding")
        Il11lI11Il["PaddingLeft"] = UDim["new"](0, 20)
        Il11lI11Il["Parent"] = ll11lI11Il
    elseif IIl1lI11Il["KeyboardEnabled"] then
        IIlll111Il = createTextButton(I111lI11Il, I1lll111Il(), function(I111lI11Il)
            lIlll111Il = true
            I111lI11Il["Text"] = "Eleg\195\173 una tecla"
        end)
        IIlll111Il["TextXAlignment"] = Enum["TextXAlignment"]["Left"]
        local ll11lI11Il = Instance["new"]("UIPadding")
        ll11lI11Il["PaddingLeft"] = UDim["new"](0, 20)
        ll11lI11Il["Parent"] = IIlll111Il
    end
    secondaryCreateTextButton(I111lI11Il, "\195\176\194\159\194\155\194\161\195\175\194\184\194\143 Anti Crash \195\176\194\159\194\155\194\161\195\175\194\184\194\143", function(I111lI11Il)
        il11LIData["set"](I111lI11Il)
    end)
    local Il11lI11Il = secondaryCreateTextButton(I111lI11Il, "\195\176\194\159\194\147\194\182 Ping Reducer \195\176\194\159\194\147\194\182", function(I111lI11Il)
        lllllI11Il:SetPingReducer(I111lI11Il)
        return true
    end)
    Il11lI11Il:Set(lllllI11Il["pingReducer"], true)
    lllllI11Il["PingReducerToggle"] = Il11lI11Il
    secondaryCreateTextButton(I111lI11Il, "\195\176\194\159\194\140\194\128 Spin \195\176\194\159\194\140\194\128", function(I111lI11Il)
        IIll1111Il(I111lI11Il)
    end)
    secondaryCreateTextButton(I111lI11Il, "\195\162\194\154\194\161 Fast Speed \195\162\194\154\194\161", function(I111lI11Il)
        lIIl1111Il(I111lI11Il)
    end)
    secondaryCreateTextButton(I111lI11Il, "\195\176\194\159\194\140\194\138 Walk on Water \195\176\194\159\194\140\194\138", function(I111lI11Il)
        getSendMuscleEventI111L11Il("walkWater", function()
            setWalkWater(I111lI11Il)
        end)
    end)
    secondaryCreateTextButton(I111lI11Il, "\195\176\194\159\194\145\194\187 No Clip \195\176\194\159\194\145\194\187", function(I111lI11Il)
        l11l1111Il(I111lI11Il)
    end)
    secondaryCreateTextButton(I111lI11Il, "\195\176\194\159\194\155\194\161\195\175\194\184\194\143 Anti Knockback \195\176\194\159\194\155\194\161\195\175\194\184\194\143", function(I111lI11Il)
        ll1llI11Il["setAntiKnockback"](I111lI11Il)
    end)
    local lIl1lI11Il = secondaryCreateTextButton(I111lI11Il, "\195\176\194\159\194\142\194\161 Auto Spin Fortune Wheel \195\176\194\159\194\142\194\161", function(I111lI11Il)
        return IlI11111Il(I111lI11Il)
    end)
    local l1l1lI11Il = secondaryCreateTextButton(I111lI11Il, "\195\176\194\159\194\142\194\129 Auto Claim Chests \195\176\194\159\194\142\194\129", function(I111lI11Il)
        return Il111111Il(I111lI11Il)
    end)
    ll1llI11Il["autoSpinToggle"] = lIl1lI11Il
    ll1llI11Il["autoClaimToggle"] = l1l1lI11Il
    ll1llI11Il["refreshMiscAvailability"] = function()
        local I111lI11Il = (ll1llI11Il["fortuneSpinAmount"]() or 0) <= 0 and not ll1llI11Il["autoSpinWheel"]
        if lIl1lI11Il:IsLocked() ~= I111lI11Il then
            lIl1lI11Il:SetLocked(I111lI11Il)
        end
        local ll11lI11Il = #ll1llI11Il["readyChestDefinitions"]() == 0 and not ll1llI11Il["chestClaimBusy"]
        if l1l1lI11Il:IsLocked() ~= ll11lI11Il then
            l1l1lI11Il:SetLocked(ll11lI11Il)
        end
    end
    ll1llI11Il["refreshMiscAvailability"]()
    getSendMuscleEventI111L11Il("miscAvailability", function()
        while ll1llI11Il["running"] and I111lI11Il["Parent"] do
            ll1llI11Il["refreshMiscAvailability"]()
            task["wait"](0.5)
        end
    end)
    secondaryCreateTextButton(I111lI11Il, "\195\176\194\159\194\154\194\171 Remove AD Portal \195\176\194\159\194\154\194\171", function(I111lI11Il)
        I1l11111Il(I111lI11Il)
    end)
    local I1l1lI11Il = createTextButton(I111lI11Il, "EMERGENCY STOP", function()
        ll1llI11Il["miscEmergencyStop"]()
    end, l11llI11Il["row"], Color3["fromRGB"](62, 17, 25))
    I1l1lI11Il["TextColor3"] = Color3["fromRGB"](255, 70, 90)
    createTextButton(I111lI11Il, "\195\162\194\157\194\140 Cerrar Script \195\162\194\157\194\140", function()
        if I11ll111Il then
            I11ll111Il(false)
        end
    end, l11llI11Il["row"], Color3["fromRGB"](72, 34, 52))
end
local function lllll111Il()
    local ll11lI11Il = l11ll111Il()
    local Il11lI11Il = ll1llI11Il["kill"]["target"]
    if ll1llI11Il["giftTargetSelector"] then
        ll1llI11Il["giftTargetSelector"]:SetValues(ll11lI11Il, true)
    end
    if ll1llI11Il["spySelector"] then
        ll1llI11Il["spySelector"]:SetValues(ll11lI11Il, true)
    end
    if ll1llI11Il["miscPlayerSelector"] then
        local I111lI11Il = ll1llI11Il["miscTargetOptions"]()
        ll1llI11Il["miscPlayerSelector"]:SetValues(I111lI11Il, true)
        if #I111lI11Il > 0 and not ll1llI11Il["selectedMiscPlayer"]() then
            ll1llI11Il["miscPlayerSelector"]:SetIndex(1)
        end
    end
    if ll1llI11Il["statsPlayerSelector"] and ll1llI11Il["statsTargetOptions"] then
        ll1llI11Il["statsPlayerSelector"]:SetValues(ll1llI11Il["statsTargetOptions"](), true)
        if not ll1llI11Il["statsSelectedPlayer"]() then
            ll1llI11Il["statsPlayerSelector"]:SetIndex(1)
        end
    end
    if ll1llI11Il["killSelector"] then
        ll1llI11Il["killSelector"]:SetValues(ll11lI11Il, true)
    end
    if ll1llI11Il["spy"] and (ll1llI11Il["spyTarget"] and not I111lI11Il:FindFirstChild(ll1llI11Il["spyTarget"])) then
        I1ll1111Il(false)
    end
    if ll1llI11Il["miscFollowEnabled"] and not ll1llI11Il["selectedMiscPlayer"]() then
        ll1llI11Il["setMiscFollow"](false)
        if ll1llI11Il["miscFollowToggle"] then
            ll1llI11Il["miscFollowToggle"]:Set(false, true)
        end
    end
    if ll1llI11Il["miscFaceTarget"] and not ll1llI11Il["selectedMiscPlayer"]() then
        ll1llI11Il["setMiscFaceTarget"](false)
        if ll1llI11Il["miscFaceToggle"] then
            ll1llI11Il["miscFaceToggle"]:Set(false, true)
        end
    end
    if ll1llI11Il["miscOrbitEnabled"] and not ll1llI11Il["selectedMiscPlayer"]() then
        ll1llI11Il["setMiscOrbit"](false)
        if ll1llI11Il["miscOrbitToggle"] then
            ll1llI11Il["miscOrbitToggle"]:Set(false, true)
        end
    end
    if ll1llI11Il["kill"]["targetMode"] and (Il11lI11Il and not I111lI11Il:FindFirstChild(Il11lI11Il)) then
        ll1llI11Il["setTargetKill"](false)
        if ll1llI11Il["killTargetToggle"] then
            ll1llI11Il["killTargetToggle"]:Set(false, true)
        end
    end
end
IllllI11Il(I111lI11Il["PlayerAdded"]:Connect(function(I111lI11Il)
    ll1llI11Il["clearKillFriend"](I111lI11Il)
    lllll111Il()
end))
IllllI11Il(I111lI11Il["PlayerRemoving"]:Connect(function(I111lI11Il)
    ll1llI11Il["clearKillFriend"](I111lI11Il)
    task["defer"](lllll111Il)
end))
IlIl1111Il = Instance["new"]("Frame")
IlIl1111Il["Name"] = "FlyControls"
IlIl1111Il["Size"] = UDim2["fromOffset"](106, 48)
IlIl1111Il["Position"] = UDim2["new"](1, -120, 1, -70)
IlIl1111Il["BackgroundTransparency"] = 1
IlIl1111Il["Visible"] = false
IlIl1111Il["ZIndex"] = 100
IlIl1111Il["Parent"] = screenGui
local function Illll111Il(I111lI11Il, ll11lI11Il)
    local Il11lI11Il = Instance["new"]("TextButton")
    Il11lI11Il["Size"] = UDim2["fromOffset"](48, 48)
    Il11lI11Il["Position"] = UDim2["fromOffset"](ll11lI11Il, 0)
    Il11lI11Il["BackgroundColor3"] = l11llI11Il["tabOn"]
    Il11lI11Il["BackgroundTransparency"] = 0.18
    Il11lI11Il["BorderSizePixel"] = 0
    Il11lI11Il["Text"] = I111lI11Il
    Il11lI11Il["TextColor3"] = l11llI11Il["white"]
    Il11lI11Il["Font"] = I11llI11Il
    Il11lI11Il["TextSize"] = 20
    Il11lI11Il["AutoButtonColor"] = false
    Il11lI11Il["ZIndex"] = 101
    Il11lI11Il["Parent"] = IlIl1111Il
    ;(Instance["new"]("UICorner", Il11lI11Il))["CornerRadius"] = UDim["new"](0, 10)
    local lIl1lI11Il = Instance["new"]("UIStroke", Il11lI11Il)
    lIl1lI11Il["Color"] = l11llI11Il["cyan"]
    lIl1lI11Il["Thickness"] = 1
    lIl1lI11Il["Transparency"] = 0.2
    return Il11lI11Il
end
local lIIIIl11Il = Illll111Il("+", 0)
local IIIIIl11Il = Illll111Il("-", 58)
IllllI11Il(lIIIIl11Il["InputBegan"]:Connect(function(I111lI11Il)
    if I111lI11Il["UserInputType"] == Enum["UserInputType"]["Touch"] or I111lI11Il["UserInputType"] == Enum["UserInputType"]["MouseButton1"] then
        flag = true
    end
end))
IllllI11Il(lIIIIl11Il["InputEnded"]:Connect(function(I111lI11Il)
    if I111lI11Il["UserInputType"] == Enum["UserInputType"]["Touch"] or I111lI11Il["UserInputType"] == Enum["UserInputType"]["MouseButton1"] then
        flag = false
    end
end))
IllllI11Il(IIIIIl11Il["InputBegan"]:Connect(function(I111lI11Il)
    if I111lI11Il["UserInputType"] == Enum["UserInputType"]["Touch"] or I111lI11Il["UserInputType"] == Enum["UserInputType"]["MouseButton1"] then
        llIl1111Il = true
    end
end))
IllllI11Il(IIIIIl11Il["InputEnded"]:Connect(function(I111lI11Il)
    if I111lI11Il["UserInputType"] == Enum["UserInputType"]["Touch"] or I111lI11Il["UserInputType"] == Enum["UserInputType"]["MouseButton1"] then
        llIl1111Il = false
    end
end))
IllllI11Il(Il11lI11Il["Heartbeat"]:Connect(function()
    if not ll1llI11Il["running"] then
        return
    end
    local ll11lI11Il = llIII111Il()
    local Il11lI11Il = IlIII111Il()
    local lIl1lI11Il = isI111L11IlValid()
    if ll1llI11Il["fastSpeed"] and Il11lI11Il then
        Il11lI11Il["WalkSpeed"] = 1000
    end
    if ll1llI11Il["fly"] and (Il11lI11Il and (lIl1lI11Il and workspace["CurrentCamera"])) then
        if not IIIl1111Il or IIIl1111Il["Parent"] ~= lIl1lI11Il then
            lI1l1111Il()
            IIIl1111Il = Instance["new"]("BodyGyro")
            IIIl1111Il["Name"] = "Young0xFlyGyro"
            IIIl1111Il["P"] = 12000
            IIIl1111Il["MaxTorque"] = Vector3["new"](9000000000, 9000000000, 9000000000)
            IIIl1111Il["Parent"] = lIl1lI11Il
            bodyVelocity = Instance["new"]("BodyVelocity")
            bodyVelocity["Name"] = "Young0xFlyVelocity"
            bodyVelocity["P"] = 15000
            bodyVelocity["MaxForce"] = Vector3["new"](9000000000, 9000000000, 9000000000)
            bodyVelocity["Parent"] = lIl1lI11Il
        end
        local I111lI11Il = workspace["CurrentCamera"]
        local ll11lI11Il = 160 + (math["clamp"](ll1llI11Il["flyLevel"], 1, 30) - 1) * 24
        local l1l1lI11Il = ll11lI11Il + (ll1llI11Il["fastSpeed"] and 1000 or 0)
        local I1l1lI11Il = Vector3["zero"]
        if IIl1lI11Il:IsKeyDown(Enum["KeyCode"]["W"]) then
            I1l1lI11Il = I1l1lI11Il + I111lI11Il["CFrame"]["LookVector"]
        end
        if IIl1lI11Il:IsKeyDown(Enum["KeyCode"]["S"]) then
            I1l1lI11Il = I1l1lI11Il - I111lI11Il["CFrame"]["LookVector"]
        end
        if IIl1lI11Il:IsKeyDown(Enum["KeyCode"]["D"]) then
            I1l1lI11Il = I1l1lI11Il + I111lI11Il["CFrame"]["RightVector"]
        end
        if IIl1lI11Il:IsKeyDown(Enum["KeyCode"]["A"]) then
            I1l1lI11Il = I1l1lI11Il - I111lI11Il["CFrame"]["RightVector"]
        end
        if I1l1lI11Il["Magnitude"] < 0.05 and Il11lI11Il["MoveDirection"]["Magnitude"] > 0.05 then
            I1l1lI11Il = Il11lI11Il["MoveDirection"]
        end
        if I1l1lI11Il["Magnitude"] > 0 then
            I1l1lI11Il = I1l1lI11Il["Unit"]
        end
        local lll1lI11Il = 0
        if IIl1lI11Il:IsKeyDown(Enum["KeyCode"]["Space"]) or Il11lI11Il["Jump"] or flag then
            lll1lI11Il = 1
        elseif IIl1lI11Il:IsKeyDown(Enum["KeyCode"]["LeftControl"]) or llIl1111Il then
            lll1lI11Il = -1
        end
        Il11lI11Il["PlatformStand"] = true
        IIIl1111Il["MaxTorque"] = ll1llI11Il["spin"] and Vector3["new"](9000000000, 0, 9000000000) or Vector3["new"](9000000000, 9000000000, 9000000000)
        IIIl1111Il["CFrame"] = I111lI11Il["CFrame"]
        local Ill1lI11Il = lll1lI11Il * l1l1lI11Il
        local lIIllI11Il = I1l1lI11Il * l1l1lI11Il + Vector3["new"](0, Ill1lI11Il, 0)
        bodyVelocity["Velocity"] = lIIllI11Il
    elseif not ll1llI11Il["fly"] and (IIIl1111Il or bodyVelocity) then
        lI1l1111Il()
    end
    if (ll1llI11Il["antiKnockback"] or ll1llI11Il["noclip"]) and (lIl1lI11Il and (Il11lI11Il and not ll1llI11Il["fly"])) then
        if not ll1llI11Il["antiKnockbackVelocity"] or ll1llI11Il["antiKnockbackVelocity"]["Parent"] ~= lIl1lI11Il then
            ll1llI11Il["clearAntiKnockback"]()
            ll1llI11Il["antiKnockbackVelocity"] = Instance["new"]("BodyVelocity")
            ll1llI11Il["antiKnockbackVelocity"]["Name"] = "Young0xAntiKnockback"
            ll1llI11Il["antiKnockbackVelocity"]["P"] = 25000
            ll1llI11Il["antiKnockbackVelocity"]["MaxForce"] = Vector3["new"](1000000000, 0, 1000000000)
            ll1llI11Il["antiKnockbackVelocity"]["Parent"] = lIl1lI11Il
        end
        local I111lI11Il = Il11lI11Il["MoveDirection"]
        local ll11lI11Il = ll1llI11Il["fastSpeed"] and 1000 or math["max"](Il11lI11Il["WalkSpeed"], 16)
        ll1llI11Il["antiKnockbackVelocity"]["Velocity"] = Vector3["new"](I111lI11Il["X"] * ll11lI11Il, 0, I111lI11Il["Z"] * ll11lI11Il)
        lIl1lI11Il["AssemblyLinearVelocity"] = Vector3["new"](I111lI11Il["X"] * ll11lI11Il, math["clamp"](lIl1lI11Il["AssemblyLinearVelocity"]["Y"], -90, 90), I111lI11Il["Z"] * ll11lI11Il)
        lIl1lI11Il["AssemblyAngularVelocity"] = Vector3["zero"]
    elseif ll1llI11Il["antiKnockbackVelocity"] then
        ll1llI11Il["clearAntiKnockback"]()
    end
    if ll1llI11Il["noclip"] and (not ll1llI11Il["machine"] and (ll11lI11Il and lIl1lI11Il)) then
        if not ll1llI11Il["fly"] then
            if Il11lI11Il then
                Il11lI11Il["Sit"] = false
                local I111lI11Il = Il11lI11Il:GetState()
                if I111lI11Il == Enum["HumanoidStateType"]["Seated"] or I111lI11Il == Enum["HumanoidStateType"]["Climbing"] then
                    Il11lI11Il:ChangeState(Enum["HumanoidStateType"]["RunningNoPhysics"])
                end
            end
            local I111lI11Il = ((Il11lI11Il and Il11lI11Il["HipHeight"] or 2) + lIl1lI11Il["Size"]["Y"] * 0.5) + 0.05
            local ll11lI11Il = (ll1llI11Il["noclipBeachSurfaceY"] or 0) + I111lI11Il
            if math["abs"](lIl1lI11Il["Position"]["Y"] - ll11lI11Il) > 0.01 or math["abs"](lIl1lI11Il["AssemblyLinearVelocity"]["Y"]) > 0.05 then
                lIl1lI11Il["CFrame"] = CFrame["new"](lIl1lI11Il["Position"]["X"], ll11lI11Il, lIl1lI11Il["Position"]["Z"]) * lIl1lI11Il["CFrame"]["Rotation"]
                lIl1lI11Il["AssemblyLinearVelocity"] = Vector3["new"](lIl1lI11Il["AssemblyLinearVelocity"]["X"], 0, lIl1lI11Il["AssemblyLinearVelocity"]["Z"])
            end
        end
    end
    if ll1llI11Il["spin"] and (lIl1lI11Il and Il11lI11Il) then
        if not I11l1111Il or I11l1111Il["Parent"] ~= lIl1lI11Il then
            lIll1111Il()
            ll1l1111Il = Il11lI11Il
            Il1l1111Il = Il11lI11Il["AutoRotate"]
            Il11lI11Il["AutoRotate"] = false
            I11l1111Il = Instance["new"]("BodyAngularVelocity")
            I11l1111Il["Name"] = "Young0xSpin"
            I11l1111Il["AngularVelocity"] = Vector3["new"](0, 7, 0)
            I11l1111Il["MaxTorque"] = Vector3["new"](0, 9000000000, 0)
            I11l1111Il["P"] = 6000
            I11l1111Il["Parent"] = lIl1lI11Il
        end
    elseif I11l1111Il then
        lIll1111Il()
    end
    if ll1llI11Il["spy"] and workspace["CurrentCamera"] then
        local ll11lI11Il = ll1llI11Il["spyTarget"] and I111lI11Il:FindFirstChild(ll1llI11Il["spyTarget"])
        local Il11lI11Il = ll11lI11Il and (ll11lI11Il["Character"] and ll11lI11Il["Character"]:FindFirstChildWhichIsA("Humanoid"))
        if Il11lI11Il then
            workspace["CurrentCamera"]["CameraSubject"] = Il11lI11Il
        end
    end
end))
IllllI11Il(IIIllI11Il["CharacterAdded"]:Connect(function()
    task["wait"](0.6)
    if ll1llI11Il["fastSpeed"] then
        Ill11111Il()
    end
    if ll1llI11Il["fastPunch"] then
        I111I111Il(true)
    end
    if not ll1llI11Il["spy"] then
        l1ll1111Il()
    end
end))
for I111lI11Il, ll11lI11Il in ipairs(screenGui:GetDescendants()) do
    currentHandler(ll11lI11Il)
end
local draggingData = {
    ["minimized"] = false,
    ["dragging"] = false,
    ["dragTarget"] = nil,
    ["dragStart"] = nil,
    ["startPosition"] = nil,
    ["dragDistance"] = 0,
    ["expandedPosition"] = l11Il111Il["Position"],
    ["bubblePosition"] = secondaryParent["Position"],
    ["transitionId"] = 0,
    ["entranceRootTween"] = nil,
    ["entranceFrameTweens"] = {},
    ["minimizeTweens"] = {},
    ["shuttingDown"] = false
}
local function nextHandler(I111lI11Il)
    for ll11lI11Il, Il11lI11Il in ipairs(I111lI11Il) do
        pcall(Il11lI11Il["Cancel"], Il11lI11Il)
        I111lI11Il[ll11lI11Il] = nil
    end
end
local function llIIIl11Il(I111lI11Il)
    l11Il111Il["Position"] = I111lI11Il
end
local function IlIIIl11Il(I111lI11Il)
    secondaryParent["Position"] = I111lI11Il
end
local function fromOffset(I111lI11Il, ll11lI11Il, Il11lI11Il, lIl1lI11Il)
    local IIl1lI11Il = llll1111Il()
    local l1l1lI11Il = math["min"](Il11lI11Il * 0.5, IIl1lI11Il["X"] * 0.5)
    local I1l1lI11Il = math["min"](lIl1lI11Il * 0.5, IIl1lI11Il["Y"] * 0.5)
    local lll1lI11Il = math["max"](l1l1lI11Il, IIl1lI11Il["X"] - l1l1lI11Il)
    local Ill1lI11Il = math["max"](I1l1lI11Il, IIl1lI11Il["Y"] - I1l1lI11Il)
    I111lI11Il = math["clamp"](I111lI11Il, l1l1lI11Il, lll1lI11Il)
    ll11lI11Il = math["clamp"](ll11lI11Il, I1l1lI11Il, Ill1lI11Il)
    return UDim2["fromOffset"](math["floor"](I111lI11Il + 0.5), math["floor"](ll11lI11Il + 0.5))
end
local function new(I111lI11Il, ll11lI11Il)
    return UDim2["new"](I111lI11Il["X"]["Scale"], I111lI11Il["X"]["Offset"] + ll11lI11Il["X"], I111lI11Il["Y"]["Scale"], I111lI11Il["Y"]["Offset"] + ll11lI11Il["Y"])
end
ll1llI11Il["rememberMiniBubblePosition"] = function()
    if secondaryParent and secondaryParent["Parent"] then
        draggingData["bubblePosition"] = secondaryParent["Position"]
    end
end
ll1ll111Il = function(I111lI11Il)
    if draggingData["minimized"] == I111lI11Il then
        return
    end
    draggingData["transitionId"] = draggingData["transitionId"] + 1
    draggingData["minimized"] = I111lI11Il
    if I111lI11Il then
        draggingData["expandedPosition"] = l11Il111Il["Position"]
        frame["Visible"] = false
        IIlIl111Il["Visible"] = false
        I11Il111Il["Visible"] = false
    else
        frame["Visible"] = true
        IIlIl111Il["Visible"] = true
        I11Il111Il["Visible"] = true
        lII1l111Il["TextColor3"] = l11llI11Il["white"]
    end
    secondaryParent["Visible"] = true
    ll1llI11Il["rememberMiniBubblePosition"]()
    nextHandler(draggingData["entranceFrameTweens"])
    nextHandler(draggingData["minimizeTweens"])
end
do
    local I111lI11Il = game:GetService("ContextActionService")
    pcall(I111lI11Il["UnbindAction"], I111lI11Il, "Young0xFG100_FreecamKey")
    I111lI11Il:BindActionAtPriority("Young0xFG100_FreecamKey", function(I111lI11Il, ll11lI11Il)
        if ll11lI11Il == Enum["UserInputState"]["Begin"] and (not lIlll111Il and (not IIl1lI11Il:GetFocusedTextBox() and ll1llI11Il["miscFreecamToggle"])) then
            ll1llI11Il["miscFreecamToggle"]:Set(not ll1llI11Il["miscFreecamToggle"]:Get())
        end
        if lIlll111Il or IIl1lI11Il:GetFocusedTextBox() then
            return Enum["ContextActionResult"]["Pass"]
        end
        return Enum["ContextActionResult"]["Sink"]
    end, false, Enum["ContextActionPriority"]["High"]["Value"] + 100, Enum["KeyCode"]["C"])
    lIIII111Il(function()
        pcall(I111lI11Il["UnbindAction"], I111lI11Il, "Young0xFG100_FreecamKey")
    end)
end
IllllI11Il(IIl1lI11Il["InputBegan"]:Connect(function(I111lI11Il, ll11lI11Il)
    if not IIl1lI11Il["KeyboardEnabled"] or I111lI11Il["UserInputType"] ~= Enum["UserInputType"]["Keyboard"] then
        return
    end
    if lIlll111Il then
        lIlll111Il = false
        if I111lI11Il["KeyCode"] ~= Enum["KeyCode"]["Escape"] and I111lI11Il["KeyCode"] ~= Enum["KeyCode"]["Unknown"] then
            Il1ll111Il = I111lI11Il["KeyCode"]
            ll1llI11Il["saveMinimizeKey"](Il1ll111Il)
        end
        if IIlll111Il and IIlll111Il["Parent"] then
            IIlll111Il["Text"] = I1lll111Il()
        end
        return
    end
    if ll11lI11Il or IIl1lI11Il:GetFocusedTextBox() then
        return
    end
    if I111lI11Il["KeyCode"] == Il1ll111Il then
        llI1l111Il()
        ll1ll111Il(not draggingData["minimized"])
    end
end))
IllllI11Il(lllIl111Il["InputBegan"]:Connect(function(I111lI11Il)
    if I111lI11Il["UserInputType"] == Enum["UserInputType"]["MouseButton1"] or I111lI11Il["UserInputType"] == Enum["UserInputType"]["Touch"] then
        draggingData["dragging"] = true
        draggingData["dragTarget"] = "main"
        draggingData["dragStart"] = I111lI11Il["Position"]
        draggingData["startPosition"] = l11Il111Il["Position"]
        draggingData["dragDistance"] = 0
    end
end))
IllllI11Il(textButton["InputBegan"]:Connect(function(I111lI11Il)
    if I111lI11Il["UserInputType"] == Enum["UserInputType"]["MouseButton1"] or I111lI11Il["UserInputType"] == Enum["UserInputType"]["Touch"] then
        draggingData["dragging"] = true
        draggingData["dragTarget"] = "bubble"
        draggingData["dragStart"] = I111lI11Il["Position"]
        draggingData["startPosition"] = secondaryParent["Position"]
        draggingData["dragDistance"] = 0
    end
end))
IllllI11Il(IIl1lI11Il["InputChanged"]:Connect(function(I111lI11Il)
    if not draggingData["dragging"] or not draggingData["dragStart"] or not draggingData["startPosition"] then
        return
    end
    if I111lI11Il["UserInputType"] ~= Enum["UserInputType"]["MouseMovement"] and I111lI11Il["UserInputType"] ~= Enum["UserInputType"]["Touch"] then
        return
    end
    local ll11lI11Il = I111lI11Il["Position"] - draggingData["dragStart"]
    draggingData["dragDistance"] = ll11lI11Il["Magnitude"]
    if draggingData["dragTarget"] == "bubble" then
        IlIIIl11Il(new(draggingData["startPosition"], ll11lI11Il))
    else
        local I111lI11Il = llll1111Il()
        local Il11lI11Il = (I111lI11Il["X"] * draggingData["startPosition"]["X"]["Scale"] + draggingData["startPosition"]["X"]["Offset"]) + ll11lI11Il["X"]
        local lIl1lI11Il = (I111lI11Il["Y"] * draggingData["startPosition"]["Y"]["Scale"] + draggingData["startPosition"]["Y"]["Offset"]) + ll11lI11Il["Y"]
        llIIIl11Il(fromOffset(Il11lI11Il, lIl1lI11Il, lIIIl111Il, IIIIl111Il))
    end
end))
IllllI11Il(IIl1lI11Il["InputEnded"]:Connect(function(I111lI11Il)
    if I111lI11Il["UserInputType"] == Enum["UserInputType"]["MouseButton1"] or I111lI11Il["UserInputType"] == Enum["UserInputType"]["Touch"] then
        if draggingData["dragging"] and draggingData["dragDistance"] >= 8 then
            if draggingData["dragTarget"] == "bubble" then
                ll1llI11Il["rememberMiniBubblePosition"]()
            else
                draggingData["expandedPosition"] = l11Il111Il["Position"]
            end
        end
        draggingData["dragging"] = false
        draggingData["dragTarget"] = nil
        draggingData["dragStart"] = nil
        draggingData["startPosition"] = nil
    end
end))
IllllI11Il(lllIl111Il["Activated"]:Connect(function()
    if draggingData["dragDistance"] < 8 then
        ll1ll111Il(true)
    end
end))
IllllI11Il(textButton["Activated"]:Connect(function()
    if draggingData["dragDistance"] < 8 then
        llI1l111Il()
        ll1ll111Il(not draggingData["minimized"])
    end
end))
I11ll111Il = function(I111lI11Il)
    if draggingData["shuttingDown"] then
        return
    end
    draggingData["shuttingDown"] = true
    ll1llI11Il["shuttingDown"] = true
    if draggingData["entranceRootTween"] then
        pcall(draggingData["entranceRootTween"]["Cancel"], draggingData["entranceRootTween"])
        draggingData["entranceRootTween"] = nil
    end
    nextHandler(draggingData["entranceFrameTweens"])
    nextHandler(draggingData["minimizeTweens"])
    ll1llI11Il["running"] = false
    for I111lI11Il, ll11lI11Il in ipairs(l1lllI11Il) do
        pcall(ll11lI11Il)
    end
    handler()
    if i111L11IlData["Young0xFG100"] == I1lllI11Il then
        i111L11IlData["Young0xFG100"] = nil
    end
    if I111lI11Il then
        if screenGui and screenGui["Parent"] then
            screenGui:Destroy()
        end
        return
    end
    local ll11lI11Il = TweenInfo["new"](0.3, Enum["EasingStyle"]["Quart"], Enum["EasingDirection"]["In"])
    local Il11lI11Il = frame["AbsoluteSize"]["X"]
    local IIl1lI11Il = frame["AbsoluteSize"]["Y"]
    local l1l1lI11Il = math["floor"](Il11lI11Il * 0.9)
    local I1l1lI11Il = math["floor"](IIl1lI11Il * 0.9)
    local lll1lI11Il = l11Il111Il["Position"]
    local Ill1lI11Il = UDim2["new"](lll1lI11Il["X"]["Scale"], lll1lI11Il["X"]["Offset"], lll1lI11Il["Y"]["Scale"], lll1lI11Il["Y"]["Offset"] + 14)
    ;(lIl1lI11Il:Create(l11Il111Il, ll11lI11Il, {
        ["Position"] = Ill1lI11Il
    })):Play()
    ;(lIl1lI11Il:Create(frame, ll11lI11Il, {
        ["Size"] = UDim2["fromOffset"](math["max"](1, l1l1lI11Il - 2), math["max"](1, I1l1lI11Il - 2))
    })):Play()
    ;(lIl1lI11Il:Create(IIlIl111Il, ll11lI11Il, {
        ["Size"] = UDim2["fromOffset"](l1l1lI11Il, I1l1lI11Il)
    })):Play()
    ;(lIl1lI11Il:Create(I11Il111Il, ll11lI11Il, {
        ["Size"] = UDim2["fromOffset"](l1l1lI11Il, I1l1lI11Il)
    })):Play()
    task["delay"](0.32, function()
        if screenGui and screenGui["Parent"] then
            screenGui:Destroy()
        end
    end)
end
I1lllI11Il["Shutdown"] = I11ll111Il
I1lllI11Il["State"] = ll1llI11Il
I1lllI11Il["Config"] = II1llI11Il
I1lllI11Il["Pages"] = I111l111Il
I1lllI11Il["Tabs"] = ll11l111Il
I1lllI11Il["ShowTab"] = l1l1l111Il
I1lllI11Il["SetMinimized"] = ll1ll111Il
I1lllI11Il["SetHideFrames"] = lIII1111Il
I1lllI11Il["SetFastPunch"] = I111I111Il
I1lllI11Il["SetAutoSpinWheel"] = IlI11111Il
I1lllI11Il["SetAutoClaimChests"] = Il111111Il
I1lllI11Il["SetWalkWater"] = setWalkWater
I1lllI11Il["SetNoclip"] = l11l1111Il
I1lllI11Il["SetAntiCrash"] = il11LIData["set"]
I1lllI11Il["EatProteinEgg"] = ll1llI11Il["eatProteinEgg"]
I1lllI11Il["FastFarm"] = lllllI11Il
I1lllI11Il["SetPingReducer"] = function(I111lI11Il)
    local ll11lI11Il = lllllI11Il:SetPingReducer(I111lI11Il)
    if lllllI11Il["PingReducerToggle"] then
        lllllI11Il["PingReducerToggle"]:Set(ll11lI11Il, true)
    end
    return ll11lI11Il
end
I1lllI11Il["SetFastFarm"] = function(I111lI11Il)
    if I111lI11Il == "strength" then
        lllllI11Il["warningAccepted"] = true
        if lllllI11Il["RebirthToggle"] then
            lllllI11Il["RebirthToggle"]:Set(false, true)
        end
        if lllllI11Il["StrengthToggle"] then
            lllllI11Il["StrengthToggle"]:Set(true, true)
        end
        return lllllI11Il:Start("strength")
    elseif I111lI11Il == "rebirth" then
        lllllI11Il["warningAccepted"] = true
        if lllllI11Il["StrengthToggle"] then
            lllllI11Il["StrengthToggle"]:Set(false, true)
        end
        if lllllI11Il["RebirthToggle"] then
            lllllI11Il["RebirthToggle"]:Set(true, true)
        end
        return lllllI11Il:Start("rebirth")
    end
    if lllllI11Il["RebirthToggle"] then
        lllllI11Il["RebirthToggle"]:Set(false, true)
    end
    if lllllI11Il["StrengthToggle"] then
        lllllI11Il["StrengthToggle"]:Set(false, true)
    end
    lllllI11Il:Stop(true)
    return true
end
I1lllI11Il["MinimizeKeyName"] = l1lll111Il
I1lllI11Il["UnlockAutoLift"] = lI1lI111Il
i111L11IlData["Young0xFG100"] = I1lllI11Il
l11Il111Il["Position"] = UDim2["new"](0.5, 0, 0.5, 18)
frame["Size"] = UDim2["fromOffset"](math["max"](1, math["floor"](lIIIl111Il * 0.9) - 2), math["max"](1, math["floor"](IIIIl111Il * 0.9) - 2))
IIlIl111Il["Size"] = UDim2["fromOffset"](math["floor"](lIIIl111Il * 0.9), math["floor"](IIIIl111Il * 0.9))
I11Il111Il["Size"] = UDim2["fromOffset"](math["floor"](lIIIl111Il * 0.9), math["floor"](IIIIl111Il * 0.9))
Il11lI11Il["Heartbeat"]:Wait()
IlI1l111Il["CanvasSize"] = UDim2["fromOffset"](II11l111Il["AbsoluteContentSize"]["X"] + 14, 0)
if ll1llI11Il["resume"] and ll1llI11Il["resume"]["script"] == "fg100.lua" then
    l1l1l111Il(type(ll1llI11Il["resume"]["tab"]) == "string" and (I111l111Il[ll1llI11Il["resume"]["tab"]] and ll1llI11Il["resume"]["tab"]) or "Info")
    if ll1llI11Il["resume"]["protectFriends"] and ll1llI11Il["killProtectToggle"] then
        ll1llI11Il["killProtectToggle"]:Set(true)
    end
    if ll1llI11Il["resume"]["autoKill"] and ll1llI11Il["killAutoToggle"] then
        ll1llI11Il["killAutoToggle"]:Set(true)
    end
    if ll1llI11Il["resume"]["karmaMode"] == "evil" and ll1llI11Il["killEvilToggle"] then
        ll1llI11Il["killEvilToggle"]:Set(true)
    elseif ll1llI11Il["resume"]["karmaMode"] == "good" and ll1llI11Il["killGoodToggle"] then
        ll1llI11Il["killGoodToggle"]:Set(true)
    end
    if ll1llI11Il["resume"]["serverHop"] and ll1llI11Il["killServerHopToggle"] then
        ll1llI11Il["killServerHopToggle"]:Set(true)
    end
else
    l1l1l111Il("Info")
end
ll1llI11Il["resume"] = nil
draggingData["entranceRootTween"] = lIl1lI11Il:Create(l11Il111Il, TweenInfo["new"](0.42, Enum["EasingStyle"]["Quart"], Enum["EasingDirection"]["Out"]), {
    ["Position"] = UDim2["fromScale"](0.5, 0.5)
})
draggingData["entranceFrameTweens"] = {
    lIl1lI11Il:Create(frame, TweenInfo["new"](0.42, Enum["EasingStyle"]["Back"], Enum["EasingDirection"]["Out"]), {
        ["Size"] = UDim2["fromOffset"](lIIIl111Il - 2, IIIIl111Il - 2)
    }),
    lIl1lI11Il:Create(IIlIl111Il, TweenInfo["new"](0.42, Enum["EasingStyle"]["Back"], Enum["EasingDirection"]["Out"]), {
        ["Size"] = UDim2["fromOffset"](lIIIl111Il, IIIIl111Il)
    }),
    lIl1lI11Il:Create(I11Il111Il, TweenInfo["new"](0.42, Enum["EasingStyle"]["Back"], Enum["EasingDirection"]["Out"]), {
        ["Size"] = UDim2["fromOffset"](lIIIl111Il, IIIIl111Il)
    })
}
draggingData["entranceRootTween"]:Play()
draggingData["entranceFrameTweens"][1]:Play()
draggingData["entranceFrameTweens"][2]:Play()
draggingData["entranceFrameTweens"][3]:Play()
