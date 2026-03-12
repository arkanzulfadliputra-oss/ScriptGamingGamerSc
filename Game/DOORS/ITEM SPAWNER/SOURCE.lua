local tool = {}

function tool.create(config)
    local newTool = game:GetObjects("rbxassetid://" .. config.Asset)[1]
    newTool.Name = config.Name
    newTool.Parent = config.Parent
    newTool.TextureId = "rbxassetid://" .. config.Icon
    newTool.Grip = config.Grip or CFrame.new()
    
    if config.Anim then
        local anim = Instance.new("Animation")
        anim.Name = config.Name .. "Anim"
        anim.AnimationId = "rbxassetid://" .. config.Anim
        anim.Parent = newTool
    end
    
    if config.OnEquipped then
        newTool.Equipped:Connect(config.OnEquipped)
    end
    
    if config.OnUnequipped then
        newTool.Unequipped:Connect(config.OnUnequipped)
    end
    
    if config.OnActivated then
        newTool.Activated:Connect(config.OnActivated)
    end
    
    return newTool
end

return tool
