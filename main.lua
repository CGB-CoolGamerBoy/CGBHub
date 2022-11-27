loadstring(game:HttpGet("https://github.com/CGB-CoolGamerBoy/CGB-Hub-Whitelist/raw/main/loader.lua", true))()

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "CGB Hub", HidePremium = true, SaveConfig = true, ConfigFolder = "CGBHub"})

OrionLib:MakeNotification({
	Name = "CGB",
	Content = "CGB Hub has loaded, "..game.Players.LocalPlayer.DisplayName,
	Image = "rbxassetid://4483345998",
	Time = 5
})

local LocalTab = Window:MakeTab({
	Name = "LocalPlayer",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

LocalTab:AddSlider({
	Name = "Walkspeed",
	Min = 16,
	Max = 100,
	Default = 24,
    Save = true,
    Flag = "WalkSpeed_Slider",
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Speed",
	Callback = function(Value)
        local char = game.Players.LocalPlayer.Character or
                         game.Players.LocalPlayer.CharacterAdded:Wait()
        if char and char:FindFirstChild('Humanoid') then
            char.Humanoid.WalkSpeed = Value
        end
	end    
})

LocalTab:AddSlider({
	Name = "Jumppower",
	Min = 50,
	Max = 200,
	Default = 75,
    Save = true,
    Flag = "JumpPower_Slider",
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "JumpPower",
	Callback = function(Value)
        local char = game.Players.LocalPlayer.Character or
                         game.Players.LocalPlayer.CharacterAdded:Wait()
        if char and char:FindFirstChild('Humanoid') then
            char.Humanoid.JumpPower = Value
        end
	end    
})

-- Options Menu

local OptionsTab = Window:MakeTab({
	Name = "Options",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

OptionsTab:AddButton({
	Name = "Discord",
	Callback = function()
      		setclipboard("https://discord.gg/8NbwAuBTjm")
              OrionLib:MakeNotification({
                Name = "CGB | Discord",
                Content = "Discord has been copied to your clipboard",
                Image = "rbxassetid://4483345998",
                Time = 5
            })
  	end    
})

OrionLib:Init()
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "CGB Hub", HidePremium = true, SaveConfig = true, ConfigFolder = "CGBHub"})

OrionLib:MakeNotification({
	Name = "CGB",
	Content = "CGB Hub has loaded, "..game.Players.LocalPlayer.DisplayName,
	Image = "rbxassetid://4483345998",
	Time = 5
})

local LocalTab = Window:MakeTab({
	Name = "LocalPlayer",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

LocalTab:AddSlider({
	Name = "Walkspeed",
	Min = 16,
	Max = 100,
	Default = 24,
    Save = true,
    Flag = "WalkSpeed_Slider",
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Speed",
	Callback = function(Value)
        local char = game.Players.LocalPlayer.Character or
                         game.Players.LocalPlayer.CharacterAdded:Wait()
        if char and char:FindFirstChild('Humanoid') then
            char.Humanoid.WalkSpeed = Value
        end
	end    
})

LocalTab:AddSlider({
	Name = "Jumppower",
	Min = 50,
	Max = 200,
	Default = 75,
    Save = true,
    Flag = "JumpPower_Slider",
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "JumpPower",
	Callback = function(Value)
        local char = game.Players.LocalPlayer.Character or
                         game.Players.LocalPlayer.CharacterAdded:Wait()
        if char and char:FindFirstChild('Humanoid') then
            char.Humanoid.JumpPower = Value
        end
	end    
})

-- Options Menu

local OptionsTab = Window:MakeTab({
	Name = "Options",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

OptionsTab:AddButton({
	Name = "Discord",
	Callback = function()
      		setclipboard("https://discord.gg/8NbwAuBTjm")
              OrionLib:MakeNotification({
                Name = "CGB | Discord",
                Content = "Discord has been copied to your clipboard",
                Image = "rbxassetid://4483345998",
                Time = 5
            })
  	end    
})

OrionLib:Init()
