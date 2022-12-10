-- Synapse X
if syn then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/CGB-CoolGamerBoy/CGB-Hub-Whitelist/main/Registration/Register.SynapseX.lua", true))()
elseif identifyexecutor() then --Script-Ware and Fluxus
    loadstring(game:HttpGet("https://github.com/CGB-CoolGamerBoy/CGB-Hub-Whitelist/raw/main/Registration/Register.Fluxus.SW.lua", true))()
else
    game.Players.LocalPlayer:Kick("[CGB] Error 0")
end