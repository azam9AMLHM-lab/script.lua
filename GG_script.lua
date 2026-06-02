local redzlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/minhdepzai-v/LibraryRobloc/refs/heads/main/RedzLibrary.lua"))()

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")
local SoundService = game:GetService("SoundService")
local CoreGui = game:GetService("CoreGui")

local rainbowNameEnabled = false
local rainbowNameSpeed = 5
local rainbowBioEnabled = false
local rainbowBioSpeed = 5

task.spawn(function()
    while true do
        task.wait(0.01)
        pcall(function()
            local Remote = ReplicatedStorage:WaitForChild("RE"):WaitForChild("1RPNam1eColo1r")
            if rainbowNameEnabled then
                local hue = (tick() * (rainbowNameSpeed / 100)) % 1
                Remote:FireServer("PickingRPNameColor", Color3.fromHSV(hue, 1, 1))
            end
            if rainbowBioEnabled then
                local hue = (tick() * (rainbowBioSpeed / 100)) % 1
                Remote:FireServer("PickingRPBioColor", Color3.fromHSV(hue, 1, 1))
            end
        end)
    end
end)

task.spawn(function()
    local audioUrl = "https://github.com/bruton-lua-sources/Mp3/raw/refs/heads/main/Savetik_1771594245.mp3"
    local getAsset = getcustomasset or getsynasset
    local fileName = "intro_audio.mp3"
    if not isfile(fileName) then
        local success, data = pcall(function() return game:HttpGet(audioUrl) end)
        if success and data then writefile(fileName, data) end
    end
    local introSound = Instance.new("Sound", SoundService)
    introSound.SoundId = getAsset(fileName)
    introSound.Volume = 3
    introSound:Play()
    task.wait(7)
    TweenService:Create(introSound, TweenInfo.new(1), {Volume = 0}):Play()
    task.wait(1)
    introSound:Stop()
    introSound:Destroy()
end)

local function SetRPProfile()
    pcall(function()
        local RE = ReplicatedStorage:WaitForChild("RE")
        RE:WaitForChild("1RPNam1eTex1t"):FireServer("RolePlayName", "9AMLHM hub")
        RE:WaitForChild("1RPNam1eColo1r"):FireServer("PickingRPNameColor", Color3.fromRGB(100, 200, 255))
        RE:WaitForChild("1RPNam1eTex1t"):FireServer("RolePlayBio", "سكربت المطور صاملهم بحث السكربت 9AMLHM")
        RE:WaitForChild("1RPNam1eColo1r"):FireServer("PickingRPBioColor", Color3.fromRGB(20, 20, 20))
    end)
end
SetRPProfile()

local Window = redzlib:MakeWindow({
  Title = "9AMLHM HUB",
  SubTitle = "ON TOP",
  SaveFolder = "9AMLHM_Config"
})

Window:AddMinimizeButton({
    Button = { Image = "rbxassetid://71014873973869", BackgroundTransparency = 0 },
    Corner = { CornerRadius = UDim.new(35, 1) },
})

task.wait(0.5)
local msgGui = Instance.new("ScreenGui")
msgGui.Name = "WelcomeMessage"
msgGui.Parent = CoreGui

local msgFrame = Instance.new("Frame")
msgFrame.Size = UDim2.new(0, 310, 0, 130)
msgFrame.Position = UDim2.new(0, 10, 0, 10)
msgFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
msgFrame.BorderSizePixel = 0
msgFrame.Parent = msgGui

local msgCorner = Instance.new("UICorner")
msgCorner.CornerRadius = UDim.new(0, 10)
msgCorner.Parent = msgFrame

local msgTitle = Instance.new("TextLabel")
msgTitle.Size = UDim2.new(1, 0, 0, 30)
msgTitle.Position = UDim2.new(0, 0, 0, 10)
msgTitle.Text = "(رساله من صاحب السكربت)"
msgTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
msgTitle.Font = Enum.Font.GothamBold
msgTitle.TextSize = 16
msgTitle.BackgroundTransparency = 1
msgTitle.Parent = msgFrame

local msgText = Instance.new("TextLabel")
msgText.Size = UDim2.new(1, -20, 0, 40)
msgText.Position = UDim2.new(0, 10, 0, 40)
msgText.Text = "السكربت جالسين نشتغل عليه واذا عندك استفسار كلمنا تيك توك حسابنا في التبويب الاخير 👋🏻"
msgText.TextColor3 = Color3.fromRGB(200, 200, 200)
msgText.Font = Enum.Font.Gotham
msgText.TextSize = 13
msgText.TextWrapped = true
msgText.BackgroundTransparency = 1
msgText.Parent = msgFrame

local okFrame = Instance.new("Frame")
okFrame.Size = UDim2.new(0, 130, 0, 35)
okFrame.Position = UDim2.new(0, 15, 0, 85)
okFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
okFrame.BorderSizePixel = 0
okFrame.Parent = msgFrame

local okCorner = Instance.new("UICorner")
okCorner.CornerRadius = UDim.new(0, 8)
okCorner.Parent = okFrame

local okBtn = Instance.new("TextButton")
okBtn.Size = UDim2.new(1, 0, 1, 0)
okBtn.Text = "حسنا"
okBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
okBtn.Font = Enum.Font.GothamBold
okBtn.TextSize = 14
okBtn.BackgroundTransparency = 1
okBtn.Parent = okFrame
okBtn.MouseButton1Click:Connect(function()
    msgFrame:Destroy()
end)

local understandFrame = Instance.new("Frame")
understandFrame.Size = UDim2.new(0, 130, 0, 35)
understandFrame.Position = UDim2.new(0, 165, 0, 85)
understandFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
understandFrame.BorderSizePixel = 0
understandFrame.Parent = msgFrame

local understandCorner = Instance.new("UICorner")
understandCorner.CornerRadius = UDim.new(0, 8)
understandCorner.Parent = understandFrame

local understandBtn = Instance.new("TextButton")
understandBtn.Size = UDim2.new(1, 0, 1, 0)
understandBtn.Text = "فهمت"
understandBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
understandBtn.Font = Enum.Font.GothamBold
understandBtn.TextSize = 14
understandBtn.BackgroundTransparency = 1
understandBtn.Parent = understandFrame
understandBtn.MouseButton1Click:Connect(function()
    msgFrame:Destroy()
end)

local CmdTab = Window:MakeTab({"الاوامر", "terminal"})

CmdTab:AddSlider({Name = "سرعة المشي", Min = 16, Max = 500, Default = 16, Callback = function(Value)
    local char = LocalPlayer.Character
    if char and char:FindFirstChild("Humanoid") then
        char.Humanoid.WalkSpeed = Value
    end
end})

CmdTab:AddSlider({Name = "قوة القفز", Min = 50, Max = 500, Default = 50, Callback = function(Value)
    local char = LocalPlayer.Character
    if char and char:FindFirstChild("Humanoid") then
        char.Humanoid.JumpPower = Value
    end
end})

CmdTab:AddButton({"جلب الكنبة", function()
    ReplicatedStorage.RE:FindFirstChild("1Too1l"):InvokeServer("PickingTools", "Couch")
end})

CmdTab:AddButton({"الطيران بالكنبة", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/0Ben1/fe./main/Fling%20GUI"))()
end})

CmdTab:AddButton({"حذف الادوات", function()
    ReplicatedStorage.RE:FindFirstChild("1Clea1rTool1s"):FireServer("ClearAllTools")
end})

CmdTab:AddButton({"اعادة الدخول", function()
    game:GetService("TeleportService"):Teleport(game.PlaceId, LocalPlayer)
end})

CmdTab:AddButton({"قتل النفس", function()
    LocalPlayer.Character.Humanoid.Health = 0
end})

CmdTab:AddToggle({Name = "اختراق الجدران", Default = false, Callback = function(Value)
    if Value then
        RunService.Stepped:Connect(function()
            local char = LocalPlayer.Character
            if char then
                for _, p in ipairs(char:GetDescendants()) do
                    if p:IsA("BasePart") then p.CanCollide = false end
                end
            end
        end)
    end
end})

CmdTab:AddToggle({Name = "قفز لا نهائي", Default = false, Callback = function(Value)
    getgenv().InfJump = Value
end})

UserInputService.JumpRequest:Connect(function()
    if getgenv().InfJump and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") then
        LocalPlayer.Character.Humanoid:ChangeState("Jumping")
    end
end)

local MusicTab = Window:MakeTab({"الموسيقى", "music"})

MusicTab:AddTextBox({Name = "كود الموسيقى", Default = "", PlaceholderText = "ادخل الكود هنا...", ClearText = true, Callback = function(Value)
    local RE = ReplicatedStorage:WaitForChild("RE")
    RE:WaitForChild("1NoMoto1rVehicle1s"):FireServer("SkateBoard")
    RE:WaitForChild("1NoMoto1rVehicle1s"):FireServer("PickingScooterMusicText", Value)
end})

local songs = {
    ["تونق تونق ساهور"] = "123950910137807",
    ["فونك"] = "119936139925486",
    ["عراقية 1"] = "11463392143",
    ["القول قول الصوارم"] = "135009652401688",
    ["انا عربية"] = "135646286229973",
    ["فونك 2"] = "13530439660",
    ["تونق تونق ساهور 2"] = "120353876640055",
    ["جربه غريب"] = "118939739460633",
    ["فونك 3"] = "99179094625273",
    ["كود يعجبك"] = "87459334689630",
    ["كود يعجبك 2"] = "71704979114937",
    ["طقعه"] = "4809574295",
    ["حماسية"] = "88052699315008",
    ["اذان"] = "1836685881",
    ["صوت هواوي"] = "7288899492",
    ["سورية"] = "98640789490482",
    ["راح تعجبك"] = "111718051430387",
    ["رعب"] = "1848748988",
    ["هندية"] = "98757377820359",
    ["اسطورية"] = "77125060517320",
    ["فونك 4"] = "6725490018",
    ["مايكل جاكسون"] = "",
    ["سب 1"] = "6536444735",
    ["سب 2"] = "8701632845",
    ["سب 3"] = "6713993281",
    ["سب 4"] = "5849978429",
    ["سب 5"] = "7183326833",
    ["كوكوووكو"] = "1836685799",
    ["Bigger Than Everything"] = "15689446558",
    ["سقما بوي"] = "9108676586",
}

for name, id in pairs(songs) do
    MusicTab:AddButton({name, function()
        local RE = ReplicatedStorage.RE
        RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer("SkateBoard")
        RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer("PickingScooterMusicText", id)
    end})
end

local SpamTab = Window:MakeTab({"السبام", "message-square"})

local TextSave = ""

SpamTab:AddTextBox({Name = "الرسالة", Default = "", PlaceholderText = "اكتب هنا...", ClearText = true, Callback = function(Value)
    TextSave = Value
end})

SpamTab:AddToggle({Name = "بدء السبام", Default = false, Callback = function(Value)
    getgenv().Spam = Value
    while getgenv().Spam do
        pcall(function()
            local tcs = game:GetService("TextChatService")
            if tcs.ChatVersion == Enum.ChatVersion.LegacyChatService then
                ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer(TextSave, "All")
            else
                tcs.ChatInputBarConfiguration.TargetTextChannel:SendAsync(TextSave)
            end
        end)
        task.wait(0.1)
    end
end})

SpamTab:AddButton({"شات كاذب", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/game-hax/uca/main/release/uca.min.lua"))()
end})

SpamTab:AddButton({"رسم في الشات", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/Q5zhT6Mv"))()
end})

local NamesTab = Window:MakeTab({"الاسماء", "user"})

NamesTab:AddButton({"اسم ملون", function()
    local colors = {
        Color3.fromRGB(255, 0, 0), Color3.fromRGB(255, 127, 0),
        Color3.fromRGB(255, 255, 0), Color3.fromRGB(0, 255, 0),
        Color3.fromRGB(0, 0, 255), Color3.fromRGB(75, 0, 130),
        Color3.fromRGB(148, 0, 211),
    }
    getgenv().Rainbow = true
    task.spawn(function()
        while getgenv().Rainbow do
            for _, color in ipairs(colors) do
                ReplicatedStorage.RE:FindFirstChild("1RPNam1eColo1r"):FireServer("PickingRPNameColor", color)
                task.wait(0.5)
            end
        end
    end)
end})

NamesTab:AddTextBox({Name = "تغيير الاسم", Default = "", PlaceholderText = "اكتب الاسم الجديد...", ClearText = true, Callback = function(Value)
    ReplicatedStorage:WaitForChild("RE"):WaitForChild("1RPNam1eTex1t"):FireServer("RolePlayName", Value)
end})

local girlNames = {"إنجوي", "ساكورا", "مريم", "شروق", "رورو", "ليلى", "آيات", "زينب", "ميمي", "لبنى", "ريماس", "لولي", "آية"}
for _, name in ipairs(girlNames) do
    NamesTab:AddButton({name, function()
        ReplicatedStorage.RE:FindFirstChild("1RPNam1eTex1t"):FireServer("RolePlayName", name)
    end})
end

local boyNames = {"حمود", "ليمون", "ألفا", "سبيد", "رضا", "عمار", "يوهان", "حسين", "جعفر", "محمد", "صادق", "قاسم", "علي", "إبراهيم", "هشام", "بلال", "مرتضى", "منتظر"}
for _, name in ipairs(boyNames) do
    NamesTab:AddButton({name, function()
        ReplicatedStorage.RE:FindFirstChild("1RPNam1eTex1t"):FireServer("RolePlayName", name)
    end})
end

local TeleportTab = Window:MakeTab({"التنقل", "map-pin"})

local locations = {
    ["امام البيوت"] = CFrame.new(136, 4, 117),
    ["مخزن الاسلحة"] = CFrame.new(-119, -28, 235),
    ["البيت المهجور"] = CFrame.new(986, 4, 63),
    ["المكان السري"] = CFrame.new(672, 4, -296),
    ["تحت الارض 1"] = CFrame.new(505, -75, 143),
    ["المدرسة"] = CFrame.new(-312, 4, 211),
    ["الكافيه"] = CFrame.new(161, 8, 52),
    ["البداية"] = CFrame.new(-26, 4, -23),
    ["المستشفى"] = CFrame.new(-309, 4, 71),
    ["تحت الارض 2"] = CFrame.new(-343, 4, -613),
    ["الجزيرة"] = CFrame.new(-1925, 23, 127),
    ["المطار"] = CFrame.new(310, 5, 31),
    ["فوق الجسر"] = CFrame.new(-589, 141, -59),
    ["مكان الكهرباء"] = CFrame.new(179, 4, -464),
    ["فوق المدرسة"] = CFrame.new(-370, 50, 173),
    ["فوق الجبل"] = CFrame.new(-670, 251, 765),
}

for name, pos in pairs(locations) do
    TeleportTab:AddButton({name, function()
        if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
            LocalPlayer.Character.HumanoidRootPart.CFrame = pos
        end
    end})
end

local BodyTab = Window:MakeTab({"الرؤوس والارجل", "eye"})

local heads = {
    ["راس روبوت"] = 3210773801,
    ["راس مخفي"] = 134082579,
    ["راس كوبي"] = 746767604,
    ["عيون زرقاء"] = 16580493236,
}

for name, id in pairs(heads) do
    BodyTab:AddButton({name, function()
        ReplicatedStorage.Remotes.Wear:InvokeServer(id)
    end})
end

local legs = {
    ["الرجل اليسرى"] = {1, 1, 1, 1, 139607673, 1},
    ["الرجل اليمنى"] = {1, 1, 1, 139607718, 1, 1},
    ["رجل عظام بيضاء"] = {1, 1, 1, 14580308646, 1, 1},
    ["رجل عظام سوداء"] = {1, 1, 1, 14547162578, 1, 1},
    ["ارجل رول"] = {1, 1, 1, 3230472745, 3230470862, 1},
    ["رجل حديدية"] = {1, 1, 1, 17500249989, 1, 1},
}

for name, parts in pairs(legs) do
    BodyTab:AddButton({name, function()
        ReplicatedStorage.RE:FindFirstChild("1Avata1rOrigina1l"):FireServer("CharacterChange", parts, "Vc9")
    end})
end

local BodiesTab = Window:MakeTab({"الاجسام", "users"})

local girlBodies = {
    ["جسم بنت 1"] = {74302534603111, 76683091425509, 75159926897589, 1, 1, 1},
    ["جسم بنت 2"] = {96491916349570, 14854350570, 14854350451, 1, 1, 1},
    ["جسم بنت 3"] = {16214246112, 16214249513, 16214251181, 1, 1, 1},
    ["جسم بنت 4"] = {15539008532, 15539008875, 15539008680, 15539008795, 15539011945, 1},
    ["جسم بنت 5"] = {14861800638, 14861800626, 14861801452, 14861800627, 14861801454, 1},
}

for name, parts in pairs(girlBodies) do
    BodiesTab:AddButton({name, function()
        ReplicatedStorage.Remotes.ChangeCharacterBody:InvokeServer({parts})
    end})
end

local boyBodies = {
    ["جسم ولد S15"] = {17754346388, 1, 1, 1, 1, 1},
    ["جسم ولد 2"] = {92757812011061, 99519402284266, 115905570886697, 1, 1, 1},
    ["جسم ولد كوبي"] = {86499666, 27112039, 27112052, 27112068, 27112056, 1},
    ["جسم ولد رول"] = {27112025, 27112039, 27112052, 3230472745, 3230470862, 1},
    ["جسم ولد معضل"] = {18178775358, 18178775182, 18178775725, 18178777453, 18178775695, 1},
}

for name, parts in pairs(boyBodies) do
    BodiesTab:AddButton({name, function()
        ReplicatedStorage.Remotes.ChangeCharacterBody:InvokeServer({parts})
    end})
end

local dwarfs = {
    ["جسم قزم 1"] = {14579958702, 14579959062, 14579959191, 14579959249, 14579963667, 1},
    ["جسم قزم 2"] = {77813057823038, 135110043370135, 116607813654019, 138966229804486, 128961183894053, 1},
    ["جسم قزم 3"] = {120973199097564, 118345433416023, 112849465115864, 78321005147549, 106586789635639, 1},
    ["جسم قزم 4"] = {126267841602936, 77530451194918, 123471958406889, 117042768644173, 131948590344338, 1},
    ["الهامستر"] = {14898536974, 14898536957, 14898537277, 14898537300, 14898537292, 14898536975},
}

for name, parts in pairs(dwarfs) do
    BodiesTab:AddButton({name, function()
        ReplicatedStorage.Remotes.ChangeCharacterBody:InvokeServer({parts})
    end})
end

local CarTab = Window:MakeTab({"السيارة", "car"})

CarTab:AddTextBox({Name = "كود الموسيقى", Default = "", PlaceholderText = "ادخل الكود...", ClearText = true, Callback = function(Value)
    ReplicatedStorage.RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer("SkateBoard")
    ReplicatedStorage.RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer("PickingScooterMusicText", Value)
end})

CarTab:AddButton({"نار في السيارة", function() ReplicatedStorage.RE["1Player1sCa1r"]:FireServer("Fire") end})
CarTab:AddButton({"دخان في السيارة", function() ReplicatedStorage.RE["1Player1sCa1r"]:FireServer("Smoke") end})
CarTab:AddButton({"تغيير العجلة", function() ReplicatedStorage.RE["1Player1sCa1r"]:FireServer("WheelNumber") end})
CarTab:AddButton({"هورن 1", function() ReplicatedStorage.RE["1Player1sCa1r"]:FireServer("Duke") end})
CarTab:AddButton({"هورن 2", function() ReplicatedStorage.RE["1Player1sCa1r"]:FireServer("Duke1") end})
CarTab:AddButton({"لون عشوائي", function() ReplicatedStorage.RE["1Player1sCa1r"]:FireServer("PickingCarColor", Color3.new(math.random(), math.random(), math.random())) end})

local SabotageTab = Window:MakeTab({"التخريب", "skull"})

SabotageTab:AddButton({"جلب الكنبة", function() ReplicatedStorage.RE["1Too1l"]:InvokeServer("PickingTools", "Couch") end})
SabotageTab:AddButton({"طيران الكنبة", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/0Ben1/fe./main/Fling%20GUI"))() end})
SabotageTab:AddButton({"حماية من الطيران", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/zephyr10101/ignore-touchinterests/main/main", true))() end})
SabotageTab:AddButton({"تعطيل السيرفر", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/ahmidd409/TrollX-V2/refs/heads/main/HackerBrookhaven_TrollX.txt"))() end})

local ProtectTab = Window:MakeTab({"الحماية", "shield"})

ProtectTab:AddButton({"Anti AFK 1", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/YallSumLs/Scripts/refs/heads/main/Anti-Afk"))() end})
ProtectTab:AddButton({"Anti AFK 2", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/ArgetnarYT/scripts/main/AntiAfk2.lua"))() end})
ProtectTab:AddButton({"Anti AFK 3", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/hassanxzayn-lua/Anti-afk/main/antiafkbyhassanxzyn"))() end})

local TabColor = Window:MakeTab({"التلوين", "paint-bucket"})
TabColor:AddToggle({Name = "تلوين الاسم", Default = false, Callback = function(v) rainbowNameEnabled = v end})
TabColor:AddSlider({Name = "سرعة تلوين الاسم", Min = 1, Max = 100, Default = 5, Callback = function(v) rainbowNameSpeed = v end})
TabColor:AddToggle({Name = "تلوين البايو", Default = false, Callback = function(v) rainbowBioEnabled = v end})
TabColor:AddSlider({Name = "سرعة تلوين البايو", Min = 1, Max = 100, Default = 5, Callback = function(v) rainbowBioSpeed = v end})

local TabScripts = Window:MakeTab({"سكربتات", "code"})
TabScripts:AddButton({"سكربت القمر", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/n0kc/AtomicHub/main/Map-Al-Biout.lua"))() end})
TabScripts:AddButton({"سكربت AntiAFK", function() loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-AntiAFK-script-18076"))() end})
TabScripts:AddButton({"سكربت انفنتي", function() loadstring(game:HttpGet("https://rawscripts.net/raw/Infinite-Yield_500"))() end})
TabScripts:AddButton({"سكربت SOLARA", function() loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-AntiAFK-System-SOLARA-21775"))() end})
TabScripts:AddButton({"سكربت AntiKick V3", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/RealBatu20/AI-Scripts-2025/refs/heads/main/AntiAFK_AntiKickV3.lua"))() end})
TabScripts:AddButton({"سكربت كارثه", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/5tui/KARTAH/refs/heads/main/Protected_5632692563680816.txt"))() end})
TabScripts:AddButton({"سكربت حربي", function() loadstring(game:HttpGet('https://pastebin.com/raw/V3SRNzFH'))() end})
TabScripts:AddButton({"سكربت حسب نقاط", function() loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-NO9AT-SAMLAT-47637"))() end})
TabScripts:AddButton({"مضاد تفعيل", function() loadstring(game:HttpGet('https://pastebin.com/raw/3Rnd9rHf'))() end})
TabScripts:AddButton({"فلنق", function() loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Auto%20Fling%20Player'))() end})

local TabProt = Window:MakeTab({"حمايه اضافيه", "shield-check"})
TabProt:AddButton({"حماية استهداف توجي", function()
    local mt = getrawmetatable(game)
    local oldNamecall = mt.__namecall
    setreadonly(mt, false)
    mt.__namecall = newcclosure(function(self, ...)
        local method = getnamecallmethod()
        if method == "Kick" or method == "kick" then return nil end
        return oldNamecall(self, ...)
    end)
    setreadonly(mt, true)
end})

local TabChar = Window:MakeTab({"تحكم", "sliders"})
TabChar:AddSlider({Name = "السرعة", Min = 16, Max = 500, Default = 16, Callback = function(v) LocalPlayer.Character.Humanoid.WalkSpeed = v end})
TabChar:AddSlider({Name = "القفز", Min = 50, Max = 500, Default = 50, Callback = function(v) LocalPlayer.Character.Humanoid.JumpPower = v end})
TabChar:AddSlider({Name = "تبعيد الشاشة", Min = 0, Max = 500, Default = 128, Callback = function(v) LocalPlayer.CameraMaxZoomDistance = v end})
TabChar:AddSlider({Name = "تقريب الشاشة", Min = 0, Max = 50, Default = 0, Callback = function(v) LocalPlayer.CameraMinZoomDistance = v end})

local TabFPS = Window:MakeTab({"الفريمات", "zap"})
TabFPS:AddButton({"60 FPS", function() if setfpscap then setfpscap(60) end end})
TabFPS:AddButton({"90 FPS", function() if setfpscap then setfpscap(90) end end})
TabFPS:AddButton({"120 FPS", function() if setfpscap then setfpscap(120) end end})
TabFPS:AddButton({"144 FPS", function() if setfpscap then setfpscap(144) end end})
TabFPS:AddButton({"تخفيف لاق قوي", function()
    settings().Rendering.QualityLevel = Enum.QualityLevel.Level01
    for _,v in pairs(game:GetDescendants()) do
        if v:IsA("BasePart") then v.Material = Enum.Material.Plastic v.Reflectance = 0
        elseif v:IsA("Texture") or v:IsA("Decal") then v:Destroy()
        elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then v.Enabled = false end
    end
end})
TabFPS:AddButton({"حذف الظلال", function() game.Lighting.GlobalShadows = false end})
TabFPS:AddButton({"حذف الضباب", function() game.Lighting.FogEnd = 100000 end})

local TabInfo = Window:MakeTab({"معلوماتي", "info"})
TabInfo:AddDiscordInvite({
    Name = "دسكورد 9AMLHM",
    Description = "انضم لسيرفرنا",
    Logo = "rbxassetid://18751483361",
    Invite = "https://discord.gg/fznhgEeH4",
})
TabInfo:AddButton({"نسخ دسكورد", function() setclipboard("o3jd") end})
TabInfo:AddButton({"نسخ تيك توك", function() setclipboard("y9ql.") end})
TabInfo:AddButton({"نسخ روبلوكس", function() setclipboard("oia_511 ~ 9AMLHM") end})
TabInfo:AddButton({"نسخ سناب", function() setclipboard("aqx-c") end})

local function CloseGUI()
    Window:Dialog({
        Title = "حذف السكربت",
        Text = "هل أنت متأكد من حذف السكربت؟",
        Options = {
            {"Yes", function() game:GetService("CoreGui"):FindFirstChild("RedzLibrary"):Destroy() end},
            {"No", function() end}
        }
    })
end

TabInfo:AddButton({"حذف السكربت", CloseGUI})
Window:SelectTab(TabColor)
