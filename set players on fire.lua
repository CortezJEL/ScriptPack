local ashisanoob = game.Players:GetChildren()
for _,v in pairs(ashisanoob) do
fire = Instance.new("Fire", v.Character.Torso)
fire.Heat = 30
fire.Size = 30
f = Instance.new("BodyForce", v.Character.Torso)
f.force = Vector3.new(1, 7500, 1)
end