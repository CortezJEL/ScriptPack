local m = Workspace.lordsheen 
m.Torso.CFrame = CFrame.new(m.Torso.Position + Vector3.new(0,0,0)) 
torso = m.Torso 
p1 = Instance.new("Part") 
p1.Name = "p1" 
p1.CFrame = torso.CFrame + Vector3.new(0,0.3,0) -- Moves the p1 to your torso so you won't teleport when it welds 
s = 8
p1.Size = Vector3.new(s, s, s) 
p1.formFactor = 0 
p1.BrickColor = BrickColor.new(1)
p1.Parent = torso 
p1.Locked = true 
p1.Transparency = 0.4 
p1.Reflectance = 0.2 
p1.Shape = "Ball" 
p1.CanCollide = true 
p1.Velocity = Vector3.new(0,0,5) 
local w = Instance.new("Weld") 
w.Part1 = torso 
w.Part0 = p1 
local C1 = torso.CFrame 
local C0 = torso.CFrame + Vector3.new(0,0,0) --change this vector to change the position of the p1, its inverted 
w.C1 = C1 
w.C0 = C0 
w.Parent = m 
end 
