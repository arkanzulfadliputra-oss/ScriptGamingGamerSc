local toolModule = loadstring(game:HttpGet("https://raw.githubusercontent.com/arkanzulfadliputra-oss/ScriptGamingGamerSc/refs/heads/main/Game/DOORS/ITEM%20SPAWNER/SOURCE.lua"))()
local crucifix = toolModule.create({
    Asset = "12017043527",
    Name = "Example",
    Parent = game.Players.LocalPlayer.Backpack,
    Icon = "1234567890",
    Grip = CFrame.new(0, -0.5, 0) * CFrame.Angles(math.rad(90), 0, 0),
    Anim = "10479585177"
})
