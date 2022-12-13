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
	Max = 5000,
	Default = 24,
    Save = true,
    Flag = "WalkSpeed_Slider",
	Color = Color3.fromRGB(255,255,255),
	Increment = 16,
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
	Max = 2000,
	Default = 50,
    Save = true,
    Flag = "JumpPower_Slider",
	Color = Color3.fromRGB(255,255,255),
	Increment = 50,
	ValueName = "JumpPower",
	Callback = function(Value)
        local char = game.Players.LocalPlayer.Character or
                         game.Players.LocalPlayer.CharacterAdded:Wait()
        if char and char:FindFirstChild('Humanoid') then
            char.Humanoid.JumpPower = Value
        end
	end    
})

-- Scripts

local ScriptsTab = Window:MakeTab({
	Name = "Scripts",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local UnivSec = ScriptsTab:AddSection({
	Name = "Universal"
})

UnivSec:AddButton({
	Name = "Aimbot / ESP GUI",
	Callback = function()
			loadstring(game:HttpGet("https://github.com/CGB-CoolGamerBoy/Scripts/raw/main/Universal/fatesesp.lua", true))()
      		SendNotification("CGB | Universal", "Sucessfully executed fate's ESP & Aimbot")
  	end    
})

UnivSec:AddButton({
	Name = "Fate's Admin",
	Callback = function()
			loadstring(game:HttpGet("https://github.com/CGB-CoolGamerBoy/Scripts/raw/main/Universal/fatesadmin.lua", true))()
			SendNotification("CGB | Universal", "Sucessfully executed fate's Admin")
	end
})

UnivSec:AddButton({
	Name = "CMDX",
	Callback = function()
			loadstring(game:HttpGet("https://github.com/CGB-CoolGamerBoy/Scripts/raw/main/Universal/CMDX.lua", true))()
			SendNotification("CGB | Universal", "Successfully executed CMDX")
			wait(2)
			setclipboard("https://discord.com/invite/cmd-x-760213934300463217")
			SendNotification("CGB | Universal", "CMDX Discord found \n Copied to clipboard")
	end
})

local HubSec = ScriptsTab:AddSection({
	Name = "Script Hubs"
})

HubSec:AddButton({
	Name = "Vynixius",
	Callback = function()
			loadstring(game:HttpGet("https://github.com/CGB-CoolGamerBoy/Scripts/raw/main/Script_Hubs/Vynixius_Loader.lua", true))()
			SendNotification("CGB | Script Hubs", "Successfully executed Vynixius")
			wait(2)
			setclipboard("http://discord.gg/vynixius")
			SendNotification("CGB | Script Hubs", "Vynixius Discord found \n Copied to clipboard")
	end
})

local FESec = ScriptsTab:AddSection({
	Name = "FE GUIs"
})

FESec:AddButton({
	Name = "1x1x1x1's FE GUI",
	Callback = function()
			if game.Workspace.FilteringEnabled == true then
					loadstring(game:HttpGet("https://github.com/CGB-CoolGamerBoy/Scripts/raw/main/FE_Scripts/1x1x1x1_FE_gui.lua", true))()
					SendNotification("CGB | FE", "Successfully executed 1x1x1x1 FE")
				else
					SendNotification("CGB | FE", game.placeId.." is not an FE game")
			end
	end
})

FESec:AddButton({
	Name = "c00lkidd's FE GUI",
	Callback = function()
			if game.Workspace.FilteringEnabled == true then
					loadstring(game:HttpGet("https://github.com/CGB-CoolGamerBoy/Scripts/raw/FE_Scripts/c00lkidd_FE.lua", true))()
					SendNotification("CGB | FE", "Successfully executed c00lkidd FE")
				else
					SendNotification("CGB | FE", game.placeId.." is not an FE game")
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
	Name = "Destroy CGB",
	Callback = function()
		wait(5)
		OrionLib:Destroy()
	end
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

function SendNotification(Name, Content)
	OrionLib:MakeNotification({
		Name = Name,
		Content = Content,
		Image = "rbxassetid://4483345998",
		Time = 5
	})
end

OrionLib:Init()
