local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local cloner = Instance.new("Model", workspace)
cloner.Name = "Cloner"

local function cloneCharacter()
    local clone = character:Clone()
    clone.Parent = cloner
    clone:MakeJoints()
end

local function antiHitDesync()
    while true do
        cloneCharacter()
        wait(0.1) -- Adjust the wait time as necessary
    end
end

antiHitDesync()
