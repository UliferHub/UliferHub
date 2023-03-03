-- Version & MOTD Check:

_G.UH_VERSION = "1.8"
versionvalue = Instance.new("NumberValue",game)
versionvalue.Name = "UliferHubVersion"
versionvalue.Value = tonumber(_G.UH_VERSION)

local success, latestVersionInfo = pcall(function() 
	local versionJson = game:HttpGet('https://raw.githubusercontent.com/UliferHub/UliferHub/main/version')
	return game.HttpService:JSONDecode(versionJson)
end)

if success then
	_G.UH_MOTD = latestVersionInfo.MOTD
	if _G.UH_VERSION ~= latestVersionInfo.Version then
		alert = Instance.new("Message",workspace)
		alert.Name = "UH_OUTDATED"
		alert.Text = "Outdated! Your version: v".._G.UH_VERSION..", Current version: v"..latestVersionInfo.Version..". Get the new version at the UliferHub Discord."
		wait(5)
		alert.Parent = nil
	end
end

-- Print:

print("Ulifer Hub v".._G.UH_VERSION.." loaded.")

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local Roundify = Instance.new("ImageLabel")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
local TextButton_2 = Instance.new("TextButton")
local TextButton_3 = Instance.new("TextButton")
local StealScreen = Instance.new("Frame")
local TextLabel_3 = Instance.new("TextLabel")
local TextLabel_4 = Instance.new("TextLabel")
local TextLabel_5 = Instance.new("TextLabel")
local TextLabel_6 = Instance.new("TextLabel")
local TextLabel_7 = Instance.new("TextLabel")
local TextLabel_8 = Instance.new("TextLabel")
local Minimize = Instance.new("Frame")
local TextButton_4 = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game:GetService("CoreGui")

Main.Name = "Main"
Main.Parent = ScreenGui
Main.Active = true
Main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.261363626, 0, 0.267326713, 0)
Main.Selectable = true
Main.Size = UDim2.new(0, 100, 0, 100)

Roundify.Name = "Roundify"
Roundify.Parent = Main
Roundify.AnchorPoint = Vector2.new(0.5, 0.5)
Roundify.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Roundify.BackgroundTransparency = 1.000
Roundify.Position = UDim2.new(1.70500004, 0, 1.17500019, 0)
Roundify.Size = UDim2.new(4.63000011, 24, 3.49000001, 24)
Roundify.Image = "rbxassetid://3570695787"
Roundify.ScaleType = Enum.ScaleType.Slice
Roundify.SliceCenter = Rect.new(100, 100, 100, 100)
Roundify.SliceScale = 0.120

TextLabel.Parent = Roundify
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.589322388, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.ZIndex = 7
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "ULIFER HUB"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

TextLabel_2.Parent = Roundify
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0.589322388, 0, 0.112600535, 0)
TextLabel_2.Size = UDim2.new(0, 200, 0, 50)
TextLabel_2.ZIndex = 7
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "https://discord.gg/UJyvbbzsH3"
TextLabel_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.TextScaled = false
TextLabel_2.TextSize = 14.000
TextLabel_2.TextWrapped = true

TextButton.Parent = Roundify
TextButton.BackgroundColor3 = Color3.fromRGB(0, 17, 255)
TextButton.Position = UDim2.new(0.0184804872, 0, 0.43163538, 0)
TextButton.Size = UDim2.new(0, 200, 0, 50)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "STEAL GAME"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextSize = 14.000

TextButton_2.Parent = Roundify
TextButton_2.BackgroundColor3 = Color3.fromRGB(201, 134, 255)
TextButton_2.Position = UDim2.new(0.50924027, 0, 0.404825717, 0)
TextButton_2.Size = UDim2.new(0, 200, 0, 50)
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = "ULIFER ADMIN HACK"
TextButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.TextSize = 14.000

TextButton_3.Parent = Roundify
TextButton_3.BackgroundColor3 = Color3.fromRGB(255, 163, 58)
TextButton_3.Position = UDim2.new(1.67638063e-08, 0, 0.865951717, 0)
TextButton_3.Size = UDim2.new(0, 200, 0, 50)
TextButton_3.Font = Enum.Font.SourceSans
TextButton_3.Text = "MININMIZE HACKS'"
TextButton_3.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_3.TextSize = 14.000

StealScreen.Name = "StealScreen"
StealScreen.Parent = ScreenGui
StealScreen.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
StealScreen.Size = UDim2.new(1, 0, 1, 0)
StealScreen.Visible = false
StealScreen.ZIndex = 100

TextLabel_3.Parent = StealScreen
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.Size = UDim2.new(0, 580, 0, 234)
TextLabel_3.ZIndex = 101
TextLabel_3.Font = Enum.Font.SourceSans
TextLabel_3.Text = "STEALING GAME"
TextLabel_3.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_3.TextScaled = true
TextLabel_3.TextSize = 14.000
TextLabel_3.TextWrapped = true

TextLabel_4.Parent = StealScreen
TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.Position = UDim2.new(0.209595963, 0, 0.607920766, 0)
TextLabel_4.Size = UDim2.new(0, 131, 0, 81)
TextLabel_4.ZIndex = 101
TextLabel_4.Font = Enum.Font.SourceSans
TextLabel_4.Text = "HACKING INTO ROBLOX......."
TextLabel_4.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_4.TextScaled = true
TextLabel_4.TextSize = 1.000
TextLabel_4.TextWrapped = true

TextLabel_5.Parent = StealScreen
TextLabel_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_5.Position = UDim2.new(0.574494958, 0, 0.548514843, 0)
TextLabel_5.Size = UDim2.new(0, 131, 0, 81)
TextLabel_5.ZIndex = 101
TextLabel_5.Font = Enum.Font.SourceSans
TextLabel_5.Text = ""
TextLabel_5.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_5.TextScaled = true
TextLabel_5.TextSize = 1.000
TextLabel_5.TextWrapped = true

TextLabel_6.Parent = StealScreen
TextLabel_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_6.Position = UDim2.new(0.797979832, 0, 0.265346497, 0)
TextLabel_6.Size = UDim2.new(0, 131, 0, 81)
TextLabel_6.ZIndex = 101
TextLabel_6.Font = Enum.Font.SourceSans
TextLabel_6.Text = "STEALING ALL THINGS"
TextLabel_6.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_6.TextScaled = true
TextLabel_6.TextSize = 1.000
TextLabel_6.TextWrapped = true

TextLabel_7.Parent = StealScreen
TextLabel_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_7.Position = UDim2.new(0.797979832, 0, 0.724752426, 0)
TextLabel_7.Size = UDim2.new(0, 131, 0, 81)
TextLabel_7.ZIndex = 101
TextLabel_7.Font = Enum.Font.SourceSans
TextLabel_7.Text = "HACKED ALL API"
TextLabel_7.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_7.TextScaled = true
TextLabel_7.TextSize = 1.000
TextLabel_7.TextWrapped = true

TextLabel_8.Parent = StealScreen
TextLabel_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_8.Position = UDim2.new(0.454545498, 0, 0.807920694, 0)
TextLabel_8.Size = UDim2.new(0, 131, 0, 81)
TextLabel_8.ZIndex = 101
TextLabel_8.Font = Enum.Font.SourceSans
TextLabel_8.Text = "FINALIZING STEAL"
TextLabel_8.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_8.TextScaled = true
TextLabel_8.TextSize = 1.000
TextLabel_8.TextWrapped = true

Minimize.Name = "Minimize"
Minimize.Parent = ScreenGui
Minimize.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Minimize.Size = UDim2.new(0, 100, 0, 100)
Minimize.Visible = false

TextButton_4.Parent = Minimize
TextButton_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_4.Size = UDim2.new(0, 100, 0, 193)
TextButton_4.Font = Enum.Font.SourceSans
TextButton_4.Text = "OPEN HACKS"
TextButton_4.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_4.TextScaled = true
TextButton_4.TextSize = 14.000
TextButton_4.TextWrapped = true

-- Scripts:

local function XIUNP_fake_script() -- TextLabel.LocalScript 
	local script = Instance.new('LocalScript', TextLabel)

	script.Parent.Text = "ULIFER HUB V".._G.UH_VERSION.." | MOTD: ".._G.UH_MOTD..""
end
coroutine.wrap(XIUNP_fake_script)()
local function YXYZ_fake_script() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript', TextButton)

	script.Parent.MouseButton1Click:Connect(function()
		rashagu=script.Parent.Parent.Parent.Parent.StealScreen
		rashagu.Visible =true
		
		saveinstance()
		
		wait(5)
		
		rashagu.Visible =false
	end)
end
coroutine.wrap(YXYZ_fake_script)()
local function LRYR_fake_script() -- TextButton_2.LocalScript 
	local script = Instance.new('LocalScript', TextButton_2)

	script.Parent.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/UliferHub/UliferHub/main/ulifer%20admin%20hacks.lua"))()
	end)
end
coroutine.wrap(LRYR_fake_script)()
local function IGNLJN_fake_script() -- TextButton_3.LocalScript 
	local script = Instance.new('LocalScript', TextButton_3)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Parent.Parent.Main.Visible = false
		script.Parent.Parent.Parent.Parent.Minimize.Visible = true
	end)
end
coroutine.wrap(IGNLJN_fake_script)()
local function DAGJ_fake_script() -- Roundify.LocalScript 
	local script = Instance.new('LocalScript', Roundify)

	script.Parent.Draggable = true
end
coroutine.wrap(DAGJ_fake_script)()
local function LZBKV_fake_script() -- Main.LocalScript 
	local script = Instance.new('LocalScript', Main)

	script.Parent.Draggable = true
end
coroutine.wrap(LZBKV_fake_script)()
local function XHZS_fake_script() -- TextLabel_5.LocalScript 
	local script = Instance.new('LocalScript', TextLabel_5)

	raygun = game.CreatorId
	
	roookjijfxgnjobgor = game.Players:GetNameFromUserIdAsync(raygun)
	
	script.Parent.Text = "HACKING "..roookjijfxgnjobgor.."............"
end
coroutine.wrap(XHZS_fake_script)()
local function TYCWOE_fake_script() -- TextButton_4.Rainbower 
	local script = Instance.new('LocalScript', TextButton_4)

	while wait() do
		script.Parent.BackgroundColor3 = Color3.new(1,0,0)
		for i=1,15 do
			game:GetService("RunService").RenderStepped:wait()
			script.Parent.BackgroundColor3 = Color3.new(script.Parent.BackgroundColor3.r,script.Parent.BackgroundColor3.g+(17/255),script.Parent.BackgroundColor3.b)
		end
		for i=1,15 do
			game:GetService("RunService").RenderStepped:wait()
			script.Parent.BackgroundColor3 = Color3.new(script.Parent.BackgroundColor3.r-(17/255),script.Parent.BackgroundColor3.g,script.Parent.BackgroundColor3.b)
		end
		for i=1,15 do
			game:GetService("RunService").RenderStepped:wait()
			script.Parent.BackgroundColor3 = Color3.new(script.Parent.BackgroundColor3.r,script.Parent.BackgroundColor3.g,script.Parent.BackgroundColor3.b+(17/255))
		end
		for i=1,15 do
			game:GetService("RunService").RenderStepped:wait()
			script.Parent.BackgroundColor3 = Color3.new(script.Parent.BackgroundColor3.r,script.Parent.BackgroundColor3.g-(17/255),script.Parent.BackgroundColor3.b)
		end
		for i=1,15 do
			game:GetService("RunService").RenderStepped:wait()
			script.Parent.BackgroundColor3 = Color3.new(script.Parent.BackgroundColor3.r+(17/255),script.Parent.BackgroundColor3.g,script.Parent.BackgroundColor3.b)
		end
		for i=1,15 do
			game:GetService("RunService").RenderStepped:wait()
			script.Parent.BackgroundColor3 = Color3.new(script.Parent.BackgroundColor3.r,script.Parent.BackgroundColor3.g,script.Parent.BackgroundColor3.b-(17/255))
		end
	end
end
coroutine.wrap(TYCWOE_fake_script)()
local function LBXLXS_fake_script() -- TextButton_4.LocalScript 
	local script = Instance.new('LocalScript', TextButton_4)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Parent.Minimize.Visible = false
		script.Parent.Parent.Parent.Main.Visible = true
	end)
end
coroutine.wrap(LBXLXS_fake_script)()
