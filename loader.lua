if syn then 
    rconsoleprint("@@LIGHT_BLUE@@")
    wait(5)
    rconsoleprint("[CGB] Synapse-X Detected!")
    wait(2)
    -- Execute Script
    rconsoleinfo("[CGB] Your script was successfully executed")
    rconsoleprint("@@WHITE@@")
elseif fluxus then
    rconsoletitle("Fluxus | CGB Hub")
    rconsoleprint("@@LIGHT_BLUE@@")
    rconsoleprint("[CGB] Fluxus Detected!")
    wait(2)
    -- Execute Script
    wait(2)
    rconsoleinfo("[CGB] Your script was successfully executed")
    rconsoleprint("@@WHITE@@")
elseif identifyexecutor() then -- ScriptWare Detection
	rconsolecreate()
    rconsolesettitle("CGB | Script-Ware")
    wait(5)
    rconsoleprint("[CGB] Script-Ware Detected!")
    rconsoleprint("\n")
    wait(2)
    -- Execute Script
    rconsoleprint("[CGB] Your script was successfully executed")
    rconsoleprint("\n")
    rconsoleprint("[CGB] ")
    rconsoleprint("Closing this window will result in ROBLOX crashing", "red")
else
    game.Players.LocalPlayer:Kick("[CGB HUB] Error Code: 0")
end