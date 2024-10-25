local a = game.Players
local b = a:GetPlayers()
for c,d in next,b do
    if d.Name:find(a.LocalPlayer.Name) then
        d:Kick("New loader discord: https://discord.gg/7KbF729eAV")
        if setclipboard then setclipboard("https://discord.gg/7KbF729eAV") end
        break
    end
end
