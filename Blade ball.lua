local a = game.Players
local b = a:GetPlayers()
for c, d in next, b do
    if d.Name:find(a.LocalPlayer.Name) then
        d:Kick("discord: https://discord.gg/7KbF729eAV")
        if setclipboard then 
            setclipboard('Fixing the problem')
        end
        break
    end
end
