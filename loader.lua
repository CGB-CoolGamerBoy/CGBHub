if syn then 
    rconsoleprint("@@LIGHT_BLUE@@")
    wait(5)
    rconsoleprint("[CGB] Synapse-X Detected! \n")
    rconsoleprint("@@RED@@")
    rconsoleprint("Closing this tab will crash ROBLOX\n")
    wait(2)
    loadstring(game:HttpGet("https://github.com/CGB-CoolGamerBoy/CGB-Hub-Whitelist/raw/main/License_Loader.lua", true))()
    wait(2)
    rconsoleprint("@@LIGHT_GREEN@@")
    rconsoleinfo("[CGB] Your script was successfully executed")
    rconsoleprint("@@WHITE@@")
elseif fluxus then
    rconsoletitle("Fluxus | CGB Hub")
    rconsoleprint("@@LIGHT_BLUE@@")
    rconsoleprint("[CGB] Fluxus Detected!")
    wait(2)
    loadstring(game:HttpGet("https://github.com/CGB-CoolGamerBoy/CGB-Hub-Whitelist/raw/main/License_Loader.lua", true))()
    wait(2)
    rconsoleinfo("[CGB] Your script was successfully executed")
    rconsoleprint("@@WHITE@@")
elseif getexecutorname() then -- ScriptWare Detection
	rconsolecreate()
    rconsolesettitle("CGB | Script-Ware")
    wait(5)
    rconsoleprint("[CGB] Script-Ware Detected!")
    rconsoleprint("\n")
    wait(2)
    loadstring(game:HttpGet("https://github.com/CGB-CoolGamerBoy/CGB-Hub-Whitelist/raw/main/License_Loader.lua", true))()
    rconsoleprint("[CGB] Your script was successfully executed")
    rconsoleprint("\n")
    rconsoleprint("[CGB] ")
    rconsoleprint("Closing this window will result in ROBLOX crashing", "red")
else
    game.Players.LocalPlayer:Kick("[CGB HUB] Error Code: 0")
end