for i,v in pairs(game.Players:GetChildren()) do
if v.Character and v.Character:FindFirstChild('Humanoid') then
game.ReplicatedStorage.Events.DamageRequest:FireServer(v.Character.Humanoidâ€‹, 'Medicine', -v.Character.Humanoid.MaxHealth)
end
end