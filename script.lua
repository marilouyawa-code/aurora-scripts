local gui = script.Parent

-- Main Window
local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.Parent = gui
MainFrame.Size = UDim2.new(0, 900, 0, 550)
MainFrame.Position = UDim2.new(0.5, -450, 0.5, -275)
MainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
MainFrame.BorderSizePixel = 0

Instance.new("UICorner", MainFrame).CornerRadius = UDim.new(0, 12)

local Stroke = Instance.new("UIStroke")
Stroke.Parent = MainFrame
Stroke.Color = Color3.fromRGB(50, 50, 50)

-- Title Bar
local TitleBar = Instance.new("Frame")
TitleBar.Parent = MainFrame
TitleBar.Size = UDim2.new(1, 0, 0, 45)
TitleBar.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
TitleBar.BorderSizePixel = 0

-- Aurora Text
local AuroraText = Instance.new("TextLabel")
AuroraText.Parent = TitleBar
AuroraText.BackgroundTransparency = 1
AuroraText.Position = UDim2.new(0, 15, 0, 0)
AuroraText.Size = UDim2.new(0, 90, 1, 0)
AuroraText.Text = "Aurora"
AuroraText.Font = Enum.Font.GothamBold
AuroraText.TextSize = 24
AuroraText.TextColor3 = Color3.fromRGB(0, 170, 255)

-- Premium Build Text
local PremiumText = Instance.new("TextLabel")
PremiumText.Parent = TitleBar
PremiumText.BackgroundTransparency = 1
PremiumText.Position = UDim2.new(0, 105, 0, 0)
PremiumText.Size = UDim2.new(0, 250, 1, 0)
PremiumText.Text = "Premium Build"
PremiumText.Font = Enum.Font.Gotham
PremiumText.TextSize = 24
PremiumText.TextColor3 = Color3.fromRGB(255,255,255)

-- Sidebar
local Sidebar = Instance.new("Frame")
Sidebar.Parent = MainFrame
Sidebar.Size = UDim2.new(0, 220, 1, -45)
Sidebar.Position = UDim2.new(0,0,0,45)
Sidebar.BackgroundColor3 = Color3.fromRGB(22,22,22)
Sidebar.BorderSizePixel = 0

local function CreateButton(text, y)
	local Button = Instance.new("TextButton")
	Button.Parent = Sidebar
	Button.Size = UDim2.new(1,-20,0,50)
	Button.Position = UDim2.new(0,10,0,y)
	Button.BackgroundColor3 = Color3.fromRGB(35,35,35)
	Button.TextColor3 = Color3.new(1,1,1)
	Button.TextSize = 18
	Button.Font = Enum.Font.Gotham
	Button.Text = text
	Button.BorderSizePixel = 0

	Instance.new("UICorner", Button).CornerRadius = UDim.new(0,8)

	return Button
end

CreateButton("Authentication", 25)
CreateButton("Instructions", 90)

-- Content Frame
local Content = Instance.new("Frame")
Content.Parent = MainFrame
Content.BackgroundTransparency = 1
Content.Position = UDim2.new(0,240,0,60)
Content.Size = UDim2.new(1,-260,1,-80)

-- Instructions Header
local Header = Instance.new("TextLabel")
Header.Parent = Content
Header.BackgroundTransparency = 1
Header.Size = UDim2.new(1,0,0,60)
Header.Text = "Instructions"
Header.TextXAlignment = Enum.TextXAlignment.Left
Header.Font = Enum.Font.GothamBold
Header.TextSize = 42
Header.TextColor3 = Color3.new(1,1,1)

local function CreateCard(title, desc, y)
	local Card = Instance.new("Frame")
	Card.Parent = Content
	Card.Size = UDim2.new(1,0,0,100)
	Card.Position = UDim2.new(0,0,0,y)
	Card.BackgroundColor3 = Color3.fromRGB(30,30,30)
	Card.BorderSizePixel = 0

	Instance.new("UICorner", Card).CornerRadius = UDim.new(0,10)

	local Title = Instance.new("TextLabel")
	Title.Parent = Card
	Title.BackgroundTransparency = 1
	Title.Position = UDim2.new(0,20,0,10)
	Title.Size = UDim2.new(1,-40,0,30)
	Title.Text = title
	Title.TextXAlignment = Enum.TextXAlignment.Left
	Title.Font = Enum.Font.GothamBold
	Title.TextSize = 24
	Title.TextColor3 = Color3.new(1,1,1)

	local Desc = Instance.new("TextLabel")
	Desc.Parent = Card
	Desc.BackgroundTransparency = 1
	Desc.Position = UDim2.new(0,20,0,45)
	Desc.Size = UDim2.new(1,-40,0,40)
	Desc.Text = desc
	Desc.TextWrapped = true
	Desc.TextXAlignment = Enum.TextXAlignment.Left
	Desc.Font = Enum.Font.Gotham
	Desc.TextSize = 18
	Desc.TextColor3 = Color3.fromRGB(180,180,180)
end

CreateCard(
	"1. Open Browser",
	"Open your preferred web browser on your device.",
	80
)

CreateCard(
	"2. Paste Link",
	"Paste the link you copied from the Authentication tab into the URL bar.",
	200
)

CreateCard(
	"3. Final Step",
	"Join the group and login to your account if needed to verify membership.",
	320
)
