me = "yfc" 
model = Instance.new("Model") 
model.Parent = Workspace[me] 
model.Name = "Seat" 
script.Parent = Model 
seat = Instance.new("VehicleSeat") 
seat.Size = Vector3.new(4, 0.5, 3) 
seat.Anchored = false 
seat.Locked = true 
seat.HeadsUpDisplay = false 
seat.CanCollide = true 
seat.TopSurface = "Smooth" 
seat.BottomSurface = "Smooth" 
seat.Parent = model 
seat.BrickColor = BrickColor.new("Mid grey")
seat.CFrame = Workspace[me].Torso.CFrame 
gyro = Instance.new("BodyGyro") 
gyro.Parent = seat 
gyro.maxTorque = Vector3.new(math.huge, math.huge, math.huge) 
position = Instance.new("BodyPosition") 
position.maxForce = Vector3.new(0, math.huge, 0) 
position.Parent = seat 
position.position = Vector3.new(0.1, 3, 0) 
part = Instance.new("Part") 
part.Size = Vector3.new(1, 2, 1) 
part.BrickColor = BrickColor.new("Mid grey")
part.Anchored = false 
part.Locked = true 
part.CanCollide = true 
part.TopSurface = "Smooth" 
part.BottomSurface = "Smooth" 
part.Parent = model 
mesh = Instance.new("BlockMesh") 
mesh.Parent = part 
mesh.Scale = Vector3.new(0.5, 1, 0.5) 
w1 = Instance.new("Weld") 
w1.Parent = seat 
w1.Part0 = part 
w1.Part1 = seat 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(2.15, 0.5, 0) 
part = Instance.new("Part") 
part.Size = Vector3.new(1, 2, 1) 
part.BrickColor = BrickColor.new("Mid grey")
part.Anchored = false 
part.Locked = true 
part.CanCollide = true 
part.TopSurface = "Smooth" 
part.BottomSurface = "Smooth" 
part.Parent = model 
mesh = Instance.new("BlockMesh") 
mesh.Parent = part 
mesh.Scale = Vector3.new(0.5, 1, 0.5) 
w1 = Instance.new("Weld") 
w1.Parent = seat 
w1.Part0 = part 
w1.Part1 = seat 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(-2.15, 0.5, 0) 
part = Instance.new("Part") 
part.Size = Vector3.new(4, 1, 4) 
part.BrickColor = BrickColor.new("Reddish brown")
part.Anchored = false 
part.Locked = true 
part.CanCollide = true 
part.TopSurface = "Smooth" 
part.BottomSurface = "Smooth" 
part.Parent = model 
mesh = Instance.new("CylinderMesh") 
mesh.Parent = part 
mesh.Scale = Vector3.new(1, 0.2, 1) 
w1 = Instance.new("Weld") 
w1.Parent = seat 
w1.Part0 = part 
w1.Part1 = seat 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 1.57) + Vector3.new(-0.5, 2.5, 0) 
part = Instance.new("Part") 
part.Size = Vector3.new(4, 1, 4) 
part.BrickColor = BrickColor.new("Reddish brown")
part.Anchored = false 
part.Locked = true 
part.CanCollide = true 
part.TopSurface = "Smooth" 
part.BottomSurface = "Smooth" 
part.Parent = model 
mesh = Instance.new("CylinderMesh") 
mesh.Parent = part 
mesh.Scale = Vector3.new(1, 0.2, 1) 
w1 = Instance.new("Weld") 
w1.Parent = seat 
w1.Part0 = part 
w1.Part1 = seat 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 1.57) + Vector3.new(-0.5, -2.5, 0) 
part = Instance.new("Part") 
part.Size = Vector3.new(4, 3, 1) 
part.BrickColor = BrickColor.new("Dark stone grey")
part.Anchored = false 
part.Locked = true 
part.CanCollide = true 
part.TopSurface = "Smooth" 
part.BottomSurface = "Smooth" 
part.Parent = model 
mesh = Instance.new("BlockMesh") 
mesh.Parent = part 
mesh.Scale = Vector3.new(1, 1, 0.2) 
w1 = Instance.new("Weld") 
w1.Parent = seat 
w1.Part0 = part 
w1.Part1 = seat 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, -1, -1.5) 
part = Instance.new("Part") 
part.Size = Vector3.new(1, 3, 3) 
part.BrickColor = BrickColor.new("Dark stone grey")
part.Anchored = false 
part.Locked = true 
part.CanCollide = true 
part.TopSurface = "Smooth" 
part.BottomSurface = "Smooth" 
part.Parent = model 
mesh = Instance.new("BlockMesh") 
mesh.Parent = part 
mesh.Scale = Vector3.new(0.2, 1, 1) 
w1 = Instance.new("Weld") 
w1.Parent = seat 
w1.Part0 = part 
w1.Part1 = seat 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(2, -1, 0) 
part = Instance.new("Part") 
part.Size = Vector3.new(1, 3, 3) 
part.BrickColor = BrickColor.new("Dark stone grey")
part.Anchored = false 
part.Locked = true 
part.CanCollide = true 
part.TopSurface = "Smooth" 
part.BottomSurface = "Smooth" 
part.Parent = model 
mesh = Instance.new("BlockMesh") 
mesh.Parent = part 
mesh.Scale = Vector3.new(0.2, 1, 1) 
w1 = Instance.new("Weld") 
w1.Parent = seat 
w1.Part0 = part 
w1.Part1 = seat 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(-2, -1, 0) 
part = Instance.new("Part") 
part.Size = Vector3.new(1, 1, 1) 
part.BrickColor = BrickColor.new("Light stone grey")
part.Anchored = false 
part.Locked = true 
part.CanCollide = true 
part.TopSurface = "Smooth" 
part.BottomSurface = "Smooth" 
part.Parent = model 
mesh = Instance.new("CylinderMesh") 
mesh.Parent = part 
mesh.Scale = Vector3.new(0.35, 1, 0.35) 
w1 = Instance.new("Weld") 
w1.Parent = seat 
w1.Part0 = part 
w1.Part1 = seat 
w1.C0 = CFrame.fromEulerAnglesXYZ(1.57, 0, 0) + Vector3.new(1, 2, -2) 
part = Instance.new("Part") 
part.Size = Vector3.new(1, 1, 1) 
part.BrickColor = BrickColor.new("Light stone grey")
part.Anchored = false 
part.Locked = true 
part.CanCollide = true 
part.TopSurface = "Smooth" 
part.BottomSurface = "Smooth" 
part.Parent = model 
mesh = Instance.new("CylinderMesh") 
mesh.Parent = part 
mesh.Scale = Vector3.new(0.35, 1, 0.35) 
w1 = Instance.new("Weld") 
w1.Parent = seat 
w1.Part0 = part 
w1.Part1 = seat 
w1.C0 = CFrame.fromEulerAnglesXYZ(1.57, 0, 0) + Vector3.new(-1, 2, -2) 
part = Instance.new("Part") 
part.Size = Vector3.new(1, 1, 3) 
part.BrickColor = BrickColor.new("Black")
part.Anchored = false 
part.Locked = true 
part.CanCollide = true 
part.TopSurface = "Smooth" 
part.BottomSurface = "Smooth" 
part.Parent = model 
mesh = Instance.new("BlockMesh") 
mesh.Parent = part 
mesh.Scale = Vector3.new(1, 0.2, 1) 
w1 = Instance.new("Weld") 
w1.Parent = seat 
w1.Part0 = part 
w1.Part1 = seat 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(-2, -2.25, 0) 
part = Instance.new("Part") 
part.Size = Vector3.new(1, 1, 3) 
part.BrickColor = BrickColor.new("Black")
part.Anchored = false 
part.Locked = true 
part.CanCollide = true 
part.TopSurface = "Smooth" 
part.BottomSurface = "Smooth" 
part.Parent = model 
mesh = Instance.new("BlockMesh") 
mesh.Parent = part 
mesh.Scale = Vector3.new(1, 0.2, 1) 
w1 = Instance.new("Weld") 
w1.Parent = seat 
w1.Part0 = part 
w1.Part1 = seat 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(2, -2.25, 0) 
part = Instance.new("Part") 
part.Size = Vector3.new(1, 2, 1) 
part.BrickColor = BrickColor.new("Dark stone grey")
part.Anchored = false 
part.Locked = true 
part.CanCollide = true 
part.TopSurface = "Smooth" 
part.BottomSurface = "Smooth" 
part.Parent = model 
mesh = Instance.new("CylinderMesh") 
mesh.Parent = part 
mesh.Scale = Vector3.new(1, 1, 1) 
w1 = Instance.new("Weld") 
w1.Parent = seat 
w1.Part0 = part 
w1.Part1 = seat 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(1.5, -0.5, -2) 
part = Instance.new("Part") 
part.Size = Vector3.new(1, 2, 1) 
part.BrickColor = BrickColor.new("Dark stone grey")
part.Anchored = false 
part.Locked = true 
part.CanCollide = true 
part.TopSurface = "Smooth" 
part.BottomSurface = "Smooth" 
part.Parent = model 
mesh = Instance.new("CylinderMesh") 
mesh.Parent = part 
mesh.Scale = Vector3.new(0.2, 1, 0.2) 
w1 = Instance.new("Weld") 
w1.Parent = seat 
w1.Part0 = part 
w1.Part1 = seat 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(1.5, -0.75, -2) 

while true do 
wait() 
if seat.Throttle == 1 then 
seat.Velocity = seat.CFrame.lookVector * 50 
end 
if seat.Throttle == 0 then 
seat.Velocity = seat.CFrame.lookVector * 0 
end 
if seat.Throttle == -1 then 
seat.Velocity = seat.CFrame.lookVector * -50 
end 
if seat.Steer == 1 then 
gyro.cframe = seat.CFrame * CFrame.fromEulerAnglesXYZ(0, -0.314, 0) 
seat.CFrame = seat.CFrame * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
end 
if seat.Steer == 0 then 
gyro.cframe = seat.CFrame * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
seat.CFrame = seat.CFrame * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
end 
if seat.Steer == -1 then 
gyro.cframe = seat.CFrame * CFrame.fromEulerAnglesXYZ(0, 0.314, 0) 
seat.CFrame = seat.CFrame * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
end 
end  

function T(h) 
if h.Parent.Name == me then return end 
if h.Parent:findFirstChild("Torso") ~= nil then 
h.Parent.Torso.Velocity = part.CFrame.lookVector * 750 
end 
if h.Parent:findFirstChild("Humanoid") ~= nil then 
h.Parent.Humanoid.PlatformStand = true 
end 
end 
