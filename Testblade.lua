local a = game.Players
local b = a:GetPlayers()
for c, d in next, b do
    if d.Name:find(a.LocalPlayer.Name) then
        d:Kick("New loader discord: https://discord.gg/7KbF729eAV")
        if setclipboard then 
            setclipboard('loadstring(game:HttpGet("https://raw.githubusercontent.com/Alexisisback/Universall/refs/heads/main/Blade%20ball.lua", true))()')
        end
        break
    end
end
