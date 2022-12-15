-- Synapse X
if syn then
    loadstring(game:HttpGet(RegistrationString, true))()
elseif identifyexecutor() then --Script-Ware and Fluxus
    loadstring(game:HttpGet(RegistrationString, true))()
elseif KRNL_LOADED then
    loadstring(game:HttpGet(RegistrationString, true))()
else
    game.Players.LocalPlayer:Kick("[CGB] Error 0")
end

local RegistrationString = loadstring(game:HttpGet("https://raw.githubusercontent.com/CGB-CoolGamerBoy/CGB-Hub-Whitelist/register/Register.lua", true))()