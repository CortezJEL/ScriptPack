wait(0.016666666666667)
Effects = {}
local Player = game.Players.localPlayer
local Character = Player.Character
coroutine.resume(coroutine.create(function()
  repeat
  until Character:FindFirstChild("Animate")
  Character.Animate:Remove()
end
))
local Humanoid = Character.Humanoid
local mouse = Player:GetMouse()
local m = Instance.new("Model", Character)
xenabled = true
cenabled = true
venabled = true
zenabled = true
m.Name = "WeaponModel"
local LeftArm = Character["Left Arm"]
local RightArm = Character["Right Arm"]
local LeftLeg = Character["Left Leg"]
local RightLeg = Character["Right Leg"]
local Head = Character.Head
local Torso = Character.Torso
local it = Instance.new
local mana = 100
local mananum = 0
local cam = game.Workspace.CurrentCamera
local RootPart = Character.HumanoidRootPart
local RootJoint = RootPart.RootJoint
local equipped = false
local attack = false
local Anim = "Idle"
local idle = 0
local attacktype = 1
local Torsovelocity = RootPart.Velocity * Vector3.new(1, 0, 1).magnitude
local velocity = RootPart.Velocity.y
local sine = 0
local change = 1
local grabbed = false
local cf = CFrame.new
local mr = math.rad
local angles = CFrame.Angles
local ud = UDim2.new
local c3 = Color3.new
local vt = Vector3.new
local NeckCF = cf(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
local RootCF = CFrame.fromEulerAnglesXYZ(-1.57, 0, 3.14)
local RHCF = CFrame.fromEulerAnglesXYZ(0, 1.6, 0)
local LHCF = (CFrame.fromEulerAnglesXYZ(0, -1.6, 0))
RSH = nil
RW = Instance.new("Weld")
LW = Instance.new("Weld")
RH = Torso["Right Hip"]
LH = Torso["Left Hip"]
RSH = Torso["Right Shoulder"]
LSH = Torso["Left Shoulder"]
RSH.Parent = nil
LSH.Parent = nil
RW.Name = "RW"
RW.Part0 = Torso
RW.C0 = cf(1.5, 0.5, 0)
RW.C1 = cf(0, 0.5, 0)
RW.Part1 = RightArm
RW.Parent = Torso
LW.Name = "LW"
LW.Part0 = Torso
LW.C0 = cf(-1.5, 0.5, 0)
LW.C1 = cf(0, 0.5, 0)
LW.Part1 = LeftArm
LW.Parent = Torso
clerp = function(a, b, t)
  return a:lerp(b, t)
end

ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "Heartbeat"
script:WaitForChild("Heartbeat")
  frame = 0.016666666666667
tf = 0
allowframeloss = false
tossremainder = false
lastframe = tick()
script.Heartbeat:Fire()
game:GetService("RunService").Heartbeat:connect(function(s, p)
  tf = tf + s
  if frame <= tf then
    if allowframeloss then
      script.Heartbeat:Fire()
      lastframe = tick()
    else
      for i = 1, math.floor(tf / frame) do
        script.Heartbeat:Fire()
      end
      lastframe = tick()
    end
    if tossremainder then
      tf = 0
    else
      tf = tf - frame * math.floor(tf / frame)
    end
  end
end
)
swait = function(num)
  if num == 0 or num == nil then
    ArtificialHB.Event:wait()
  else
    for i = 0, num do
      ArtificialHB.Event:wait()
    end
  end
end

pwait = function(num)
  if num == 0 or num == nil then
    game:service("RunService").Heartbeat:wait(0)
  else
    for i = 0, num do
      game:service("RunService").Heartbeat:wait(0)
    end
  end
end

local RbxUtility = LoadLibrary("RbxUtility")
local Create = RbxUtility.Create
RemoveOutlines = function(part)
  part.TopSurface = 10
end

CreatePart = function(Parent, Material, Reflectance, Transparency, BColor, Name, Size)
  local Part = Create("Part")({Parent = Parent, Reflectance = Reflectance, Transparency = Transparency, CanCollide = false, Locked = true, BrickColor = BrickColor.new(tostring(BColor)), Name = Name, Size = Size, Material = Material})
  RemoveOutlines(Part)
  return Part
end

CreateMesh = function(Mesh, Part, MeshType, MeshId, OffSet, Scale)
  local Msh = Create(Mesh)({Parent = Part, Offset = OffSet, Scale = Scale})
  if Mesh == "SpecialMesh" then
    Msh.MeshType = MeshType
    Msh.MeshId = MeshId
  end
  return Msh
end

CreateWeld = function(Parent, Part0, Part1, C0, C1)
  local Weld = Create("Weld")({Parent = Parent, Part0 = Part0, Part1 = Part1, C0 = C0, C1 = C1})
  return Weld
end

Handle = CreatePart(m, Enum.Material.SmoothPlastic, 0, 1, "Institutional white", "Handle", Vector3.new(0.256618977, 0.513238013, 0.256619006))
HandleWeld = CreateWeld(m, Character["Right Arm"], Handle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.061750412, 0.0278501511, 1.0341754, -1, -7.10542736e-015, 5.96046377e-008, 5.96046377e-008, -2.08616228e-007, 1, 5.32906755e-015, 1, 2.08616228e-007))
FakeHandle = CreatePart(m, Enum.Material.SmoothPlastic, 0, 1, "Institutional white", "FakeHandle", Vector3.new(3.28472281, 0.256618977, 0.256619006))
FakeHandleWeld = CreateWeld(m, Handle, FakeHandle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.105093956, -0.0199890137, -0.0300004482, -1.03316026e-007, -1, -8.94069387e-008, 1, -1.03316026e-007, -1.44479731e-014, 5.21080312e-015, -8.94069387e-008, 1))
CreateMesh("SpecialMesh", FakeHandle, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.800000012))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(4.49472284, 0.256618977, 0.256619006))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.710092068, -0.0199890137, -0.0300000906, -1.03316026e-007, -1, -8.94069387e-008, 1, -1.03316026e-007, -1.44479731e-014, 5.21080312e-015, -8.94069387e-008, 1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.800000012))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.975152254, 0.20529519))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0300002098, -0.133047104, -1.54444218, -1.57369371e-007, -4.17232457e-007, 1, -0.965925872, 0.258818954, -4.40194583e-008, -0.258818954, -0.965925872, -4.4374579e-007))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.769857407, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.20529522, 0.461914182, 0.359266639))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.80496454, -0.0199890137, -0.0300019979, -1.03316026e-007, -1, 0, 1, -1.03316026e-007, -1.17834379e-014, 1.1783437e-014, 0, 1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.800000012))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.200000003, 0.513238013, 0.200000003))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0299994946, -1.41456223, -1.86634827, 1.37678768e-007, -2.08616243e-007, 1, -0.707106888, -0.70710665, -5.01603168e-008, 0.707106709, -0.707106888, -2.44867579e-007))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.769857407, 1, 0.769856989))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.975152254, 0.20529519))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0300002098, 0.188333511, -1.55925751, -4.22219841e-008, -4.76837158e-007, 1, -0.965925813, -0.258819073, -1.64197857e-007, 0.258819073, -0.965925872, -4.49661485e-007))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.200000003, 0.513238013, 0.200000003))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0299998522, 1.66497517, -1.23850822, 5.33850972e-008, 5.96046164e-008, -1, 0.707106948, 0.70710659, 7.98957771e-008, 0.70710659, -0.707106948, -4.39787584e-009))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.769857407, 1, 0.769856989))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.200000003, 0.513238013, 0.200000003))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0300006866, 1.67763519, -1.2258482, -1.15202361e-007, -4.17232485e-007, 1, -0.707106769, 0.707106769, 2.13567517e-007, -0.707106829, -0.707106769, -3.76488288e-007))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.769857407, 1, 0.769856989))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.20529522, 0.461914182, 0.359266639))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.58858728, -0.0199890137, -0.0300019979, -1.03316026e-007, -1, 0, 1, -1.03316026e-007, -1.17834379e-014, 1.1783437e-014, 0, 1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.800000012))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.200000003, 0.256618977, 0.256619006))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0299985409, -0.0199890137, -2.18907928, -4.37113954e-008, 0, -1, 1, -5.96046306e-008, -4.37113954e-008, -5.96046306e-008, -1, 0))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(0.769857407, 1, 0.800000012))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.513238072, 0.20529519))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0299994946, 0.182710648, -2.2025485, -4.22219664e-008, 0, -1, 0.965925813, -0.258819193, -4.07832914e-008, -0.258819193, -0.965925813, 1.09278488e-008))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.769857407, 1, 1))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.200000003, 0.513238013, 0.200000003))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0299996138, -1.4272213, -1.85368919, -1.99496043e-007, 2.68220873e-007, -1, 0.707106829, -0.707106829, -3.30725811e-007, -0.707106769, -0.707106829, -4.85958083e-008))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.769857407, 1, 0.769856989))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.513238072, 0.20529519))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0300005674, 0.242616653, -2.21860123, -4.22219841e-008, -4.76837158e-007, 1, -0.965925813, -0.258819073, -1.64197857e-007, 0.258819073, -0.965925872, -4.49661485e-007))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.769857407, 1, 1))
RingMesh = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "RingMesh", Vector3.new(0.513237953, 0.513238013, 0.513238013))
RingMeshWeld = CreateWeld(m, FakeHandle, RingMesh, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.599939346, -1.72953081, -0.0197352171, -1, 2.10600447e-007, 1.19248886e-008, -2.10600462e-007, -1, 0, 1.19248886e-008, 0, 1))
CreateMesh("SpecialMesh", RingMesh, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=3270017", Vector3.new(0, 0, 0), Vector3.new(0.513237953, 0.513238013, 0.513238013))
RingMesh = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "RingMesh", Vector3.new(0.513237953, 0.513238013, 0.513238013))
RingMeshWeld = CreateWeld(m, FakeHandle, RingMesh, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.544584274, -1.72953081, -0.0197352171, -1, 2.10600447e-007, 1.19248886e-008, -2.10600462e-007, -1, 0, 1.19248886e-008, 0, 1))
CreateMesh("SpecialMesh", RingMesh, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=3270017", Vector3.new(0, 0, 0), Vector3.new(0.513237953, 0.513238013, 0.513238013))
RingMesh = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "RingMesh", Vector3.new(0.513237953, 0.513238013, 0.513238013))
RingMeshWeld = CreateWeld(m, FakeHandle, RingMesh, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0348472595, 3.20683551, -0.0197354555, -1, 2.10600447e-007, 1.19248886e-008, -2.10600462e-007, -1, 0, 1.19248886e-008, 0, 1))
CreateMesh("SpecialMesh", RingMesh, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=3270017", Vector3.new(0, 0, 0), Vector3.new(0.513237953, 0.513238013, 2.56619))
Tip = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Tip", Vector3.new(0.513237953, 0.513238013, 0.513238013))
TipWeld = CreateWeld(m, FakeHandle, Tip, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0148487091, -2.17605066, -0.0197348595, -1, 2.10600447e-007, 1.19248886e-008, -2.10600462e-007, -1, 0, 1.19248886e-008, 0, 1))
CreateMesh("SpecialMesh", Tip, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=3270017", Vector3.new(0, 0, 0), Vector3.new(1.02647591, 1.02647603, 2.56619))
Handle = CreatePart(m, Enum.Material.Neon, 0, 1, "Toothpaste", "Handle", Vector3.new(0.570000172, 0.470000178, 0.570000172))
HandleWeld = CreateWeld(m, Character.Head, Handle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0200500488, -0.0350050926, -0.11493969, -1, 0, 0, 0, 1, 0, 0, 0, -1))
Ball1 = CreatePart(m, Enum.Material.Neon, 0, 0, "Toothpaste", "Ball1", Vector3.new(0.570000172, 0.570000172, 0.570000172))
Ball1Weld = CreateWeld(m, Handle, Ball1, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.600000381, 0.564999819, -0.70000124, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("SpecialMesh", Ball1, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Ball3 = CreatePart(m, Enum.Material.Neon, 0, 0, "Toothpaste", "Ball3", Vector3.new(0.570000172, 0.570000172, 0.570000172))
Ball3Weld = CreateWeld(m, Handle, Ball3, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.699998856, 0.564999819, -0.70000124, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("SpecialMesh", Ball3, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Ball4 = CreatePart(m, Enum.Material.Neon, 0, 0, "Toothpaste", "Ball4", Vector3.new(0.570000172, 0.570000172, 0.570000172))
Ball4Weld = CreateWeld(m, Handle, Ball4, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.10000038, 0.0649995804, -9.53674316e-007, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("SpecialMesh", Ball4, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Ball5 = CreatePart(m, Enum.Material.Neon, 0, 0, "Toothpaste", "Ball5", Vector3.new(0.570000172, 0.570000172, 0.570000172))
Ball5Weld = CreateWeld(m, Handle, Ball5, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.699998856, -0.635000229, 0.699998856, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("SpecialMesh", Ball5, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Ball6 = CreatePart(m, Enum.Material.Neon, 0, 0, "Toothpaste", "Ball6", Vector3.new(0.570000172, 0.570000172, 0.570000172))
Ball6Weld = CreateWeld(m, Handle, Ball6, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0999984741, -1.43500042, 0.599998951, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("SpecialMesh", Ball6, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Ball7 = CreatePart(m, Enum.Material.Neon, 0, 0, "Toothpaste", "Ball7", Vector3.new(0.570000172, 0.570000172, 0.570000172))
Ball7Weld = CreateWeld(m, Handle, Ball7, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.700000763, -0.635000229, 0.699998856, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("SpecialMesh", Ball7, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Ball2 = CreatePart(m, Enum.Material.Neon, 0, 0, "Toothpaste", "Ball2", Vector3.new(0.570000172, 0.570000172, 0.570000172))
Ball2Weld = CreateWeld(m, Handle, Ball2, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 1.16499972, -1.00000143, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("SpecialMesh", Ball2, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Ball8 = CreatePart(m, Enum.Material.Neon, 0, 0, "Toothpaste", "Ball8", Vector3.new(0.570000172, 0.570000172, 0.570000172))
Ball8Weld = CreateWeld(m, Handle, Ball8, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.10000038, 0.0649995804, -9.53674316e-007, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("SpecialMesh", Ball8, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
rayCast = function(Position, Direction, Range, Ignore)
  return game:service("Workspace"):FindPartOnRay(Ray.new(Position, Direction.unit * (Range or 999.999)), Ignore)
end

local fengui = it("GuiMain")
fengui.Parent = Player.PlayerGui
fengui.Name = "WeaponGUI"
local fenframe = it("Frame")
fenframe.Parent = fengui
fenframe.BackgroundColor3 = Color3.new(255, 255, 255)
fenframe.BackgroundTransparency = 1
fenframe.BorderColor3 = Color3.new(17, 17, 17)
fenframe.Size = UDim2.new(0.0500000007, 0, 0.100000001, 0)
fenframe.Position = UDim2.new(0.4, 0, 0.1, 0)
local fenbarmana1 = it("TextLabel")
fenbarmana1.Parent = fenframe
fenbarmana1.Text = " "
fenbarmana1.BackgroundTransparency = 0
fenbarmana1.BackgroundColor3 = Color3.new(0, 0, 0)
fenbarmana1.SizeConstraint = "RelativeXY"
fenbarmana1.TextXAlignment = "Center"
fenbarmana1.TextYAlignment = "Center"
fenbarmana1.Position = UDim2.new(0, 0, 0, 0)
fenbarmana1.Size = UDim2.new(4, 0, 0.2, 0)
local fenbarmana2 = it("TextLabel")
fenbarmana2.Parent = fenframe
fenbarmana2.Text = " "
fenbarmana2.BackgroundTransparency = 0
fenbarmana2.BackgroundColor3 = Torso.Color
fenbarmana2.SizeConstraint = "RelativeXY"
fenbarmana2.TextXAlignment = "Center"
fenbarmana2.TextYAlignment = "Center"
fenbarmana2.Position = UDim2.new(0, 0, 0, 0)
fenbarmana2.Size = UDim2.new(4 * mana / 100, 0, 0.2, 0)
local fenbarmana3 = it("TextLabel")
fenbarmana3.Parent = fenframe
fenbarmana3.Text = " "
fenbarmana3.BackgroundTransparency = 0
fenbarmana3.BackgroundColor3 = Color3.new(Col1, Col2, Col3)
fenbarmana3.SizeConstraint = "RelativeXY"
fenbarmana3.TextXAlignment = "Center"
fenbarmana3.TextYAlignment = "Center"
fenbarmana3.Position = UDim2.new(0, 0, 0, 0)
fenbarmana3.Size = UDim2.new(0, 0, 0.2, 0)
local fenbarmana4 = it("TextLabel")
fenbarmana4.Parent = fenframe
fenbarmana4.Text = "Energy(" .. mana .. ")"
fenbarmana4.BackgroundTransparency = 1
fenbarmana4.BackgroundColor3 = Color3.new(0, 0, 0)
fenbarmana4.SizeConstraint = "RelativeXY"
fenbarmana4.TextXAlignment = "Center"
fenbarmana4.TextYAlignment = "Center"
fenbarmana4.Position = UDim2.new(0, 0, -0.3, 0)
fenbarmana4.Size = UDim2.new(4, 0, 0.2, 0)
fenbarmana4.FontSize = "Size9"
fenbarmana4.TextStrokeTransparency = 0
fenbarmana4.TextColor = BrickColor.new("White")
local fengui = it("GuiMain")
fengui.Parent = Player.PlayerGui
fengui.Name = "WeaponGUI"
local fenframe1 = it("TextLabel")
fenframe1.Parent = fengui
fenframe1.BackgroundColor3 = Color3.new(0.19607843137255, 0.19607843137255, 0.19607843137255)
fenframe1.BackgroundTransparency = 0.3
fenframe1.BorderSizePixel = 5
fenframe1.BorderColor3 = Color3.new(1, 1, 1)
fenframe1.Size = UDim2.new(0.05, 0, 0.1, 0)
fenframe1.Position = UDim2.new(0.325, 0, 0.7, 0)
fenframe1.Text = "Z"
fenframe1.TextWrapped = true
fenframe1.FontSize = 7
fenframe1.TextColor3 = Color3.new(1, 1, 1)
local fenframe1a = it("TextLabel")
fenframe1a.Parent = fengui
fenframe1a.BackgroundColor3 = Color3.new(0.7843137254902, 0.7843137254902, 0.7843137254902)
fenframe1a.BackgroundTransparency = 0.3
fenframe1a.BorderSizePixel = 5
fenframe1a.BorderColor3 = Color3.new(1, 1, 1)
fenframe1a.Size = UDim2.new(0.05, 0, 0.1, 0)
fenframe1a.Position = UDim2.new(0.325, 0, 0.7, 0)
fenframe1a.Text = ""
local fenframe2 = it("TextLabel")
fenframe2.Parent = fengui
fenframe2.BackgroundColor3 = Color3.new(0.19607843137255, 0.19607843137255, 0.19607843137255)
fenframe2.BackgroundTransparency = 0.3
fenframe2.BorderSizePixel = 5
fenframe2.BorderColor3 = Color3.new(1, 1, 1)
fenframe2.Size = UDim2.new(0.05, 0, 0.1, 0)
fenframe2.Position = UDim2.new(0.425, 0, 0.7, 0)
fenframe2.Text = "X"
fenframe2.TextWrapped = true
fenframe2.FontSize = 7
fenframe2.TextColor3 = Color3.new(1, 1, 1)
local fenframe2a = it("TextLabel")
fenframe2a.Parent = fengui
fenframe2a.BackgroundColor3 = Color3.new(0.7843137254902, 0.7843137254902, 0.7843137254902)
fenframe2a.BackgroundTransparency = 0.3
fenframe2a.BorderSizePixel = 5
fenframe2a.BorderColor3 = Color3.new(1, 1, 1)
fenframe2a.Size = UDim2.new(0.05, 0, 0.1, 0)
fenframe2a.Position = UDim2.new(0.425, 0, 0.7, 0)
fenframe2a.Text = ""
local fenframe3 = it("TextLabel")
fenframe3.Parent = fengui
fenframe3.BackgroundColor3 = Color3.new(0.19607843137255, 0.19607843137255, 0.19607843137255)
fenframe3.BackgroundTransparency = 0.3
fenframe3.BorderSizePixel = 5
fenframe3.BorderColor3 = Color3.new(1, 1, 1)
fenframe3.Size = UDim2.new(0.05, 0, 0.1, 0)
fenframe3.Position = UDim2.new(0.525, 0, 0.7, 0)
fenframe3.Text = "C"
fenframe3.TextWrapped = true
fenframe3.FontSize = 7
fenframe3.TextColor3 = Color3.new(1, 1, 1)
local fenframe3a = it("TextLabel")
fenframe3a.Parent = fengui
fenframe3a.BackgroundColor3 = Color3.new(0.7843137254902, 0.7843137254902, 0.7843137254902)
fenframe3a.BackgroundTransparency = 0.3
fenframe3a.BorderSizePixel = 5
fenframe3a.BorderColor3 = Color3.new(1, 1, 1)
fenframe3a.Size = UDim2.new(0.05, 0, 0.1, 0)
fenframe3a.Position = UDim2.new(0.525, 0, 0.7, 0)
fenframe3a.Text = ""
local fenframe4 = it("TextLabel")
fenframe4.Parent = fengui
fenframe4.BackgroundColor3 = Color3.new(0.19607843137255, 0.19607843137255, 0.19607843137255)
fenframe4.BackgroundTransparency = 0.3
fenframe4.BorderSizePixel = 5
fenframe4.BorderColor3 = Color3.new(1, 1, 1)
fenframe4.Size = UDim2.new(0.05, 0, 0.1, 0)
fenframe4.Position = UDim2.new(0.625, 0, 0.7, 0)
fenframe4.Text = "V"
fenframe4.TextWrapped = true
fenframe4.FontSize = 7
fenframe4.TextColor3 = Color3.new(1, 1, 1)
local fenframe4a = it("TextLabel")
fenframe4a.Parent = fengui
fenframe4a.BackgroundColor3 = Color3.new(0.7843137254902, 0.7843137254902, 0.7843137254902)
fenframe4a.BackgroundTransparency = 0.3
fenframe4a.BorderSizePixel = 5
fenframe4a.BorderColor3 = Color3.new(1, 1, 1)
fenframe4a.Size = UDim2.new(0.05, 0, 0.1, 0)
fenframe4a.Position = UDim2.new(0.625, 0, 0.7, 0)
fenframe4a.Text = ""
fenframe1a.Size = UDim2.new(0, 0, 0.1, 0)
fenframe2a.Size = UDim2.new(0, 0, 0.1, 0)
fenframe3a.Size = UDim2.new(0, 0, 0.1, 0)
fenframe4a.Size = UDim2.new(0, 0, 0.1, 0)
CreateSound = function(id, par, vol, pit)
  coroutine.resume(coroutine.create(function()
    local sou = Instance.new("Sound", par or workspace)
    sou.Volume = vol
    sou.Pitch = pit or 1
    sou.SoundId = id
    swait()
    sou:play()
    game:GetService("Debris"):AddItem(sou, 6)
  end
))
end

local getclosest = function(obj, distance)
  local last, lastx = distance + 1, nil
  for i,v in pairs(workspace:GetChildren()) do
    if v:IsA("Model") and v ~= Character and v:findFirstChild("Humanoid") and v:findFirstChild("Torso") and v:findFirstChild("Humanoid").Health > 0 then
      local t = v.Torso
      local dist = t.Position - obj.Position.magnitude
      if dist <= distance and dist < last then
        last = dist
        lastx = v
      end
    end
  end
  return lastx
end

BlockEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type)
  local prt = CreatePart(workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = CreateMesh("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  if Type == 1 or Type == nil then
    table.insert(Effects, {prt, "Block1", delay, x3, y3, z3, msh})
  else
    if Type == 2 then
      table.insert(Effects, {prt, "Block2", delay, x3, y3, z3, msh})
    end
  end
end

SphereEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = CreatePart(workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = CreateMesh("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end

RingEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = CreatePart(workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe * CFrame.new(x1, y1, z1)
  local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "rbxassetid://3270017", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end

CylinderEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = CreatePart(workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = CreateMesh("CylinderMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end

WaveEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = CreatePart(workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "rbxassetid://20329976", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end

SpecialEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = CreatePart(workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "rbxassetid://24388358", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end

BreakEffect = function(brickcolor, cframe, x1, y1, z1)
  local prt = CreatePart(workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
  local msh = CreateMesh("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  local num = math.random(10, 50) / 1000
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Shatter", num, prt.CFrame, math.random() - math.random(), 0, math.random(50, 100) / 100})
end

Damagefunc = function(Part, hit, minim, maxim, knockback, Type, Property, Delay, KnockbackType, decreaseblock)
  if hit.Parent == nil then
    return 
  end
  local h = hit.Parent:FindFirstChild("Humanoid")
  for _,v in pairs(hit.Parent:children()) do
    if v:IsA("Humanoid") then
      h = v
    end
  end
  if hit.Parent.Parent:FindFirstChild("Torso") ~= nil then
    h = hit.Parent.Parent:FindFirstChild("Humanoid")
  end
  if hit.Parent.className == "Hat" then
    hit = hit.Parent.Parent:findFirstChild("Head")
  end
  if h ~= nil and hit.Parent.Name ~= Character.Name and hit.Parent:FindFirstChild("Torso") ~= nil then
    if hit.Parent:findFirstChild("DebounceHit") ~= nil and hit.Parent.DebounceHit.Value == true then
      return 
    end
    local c = Instance.new("ObjectValue")
    c.Name = "creator"
    c.Value = game:service("Players").LocalPlayer
    c.Parent = h
    game:GetService("Debris"):AddItem(c, 0.5)
    local Damage = math.random(minim, maxim)
    local blocked = false
    local block = hit.Parent:findFirstChild("Block")
    if block ~= nil then
      print(block.className)
      if block.className == "NumberValue" and block.Value > 0 then
        blocked = true
        if decreaseblock == nil then
          block.Value = block.Value - 1
        end
      end
      if block.className == "IntValue" and block.Value > 0 then
        blocked = true
        if decreaseblock ~= nil then
          block.Value = block.Value - 1
        end
      end
    end
    if blocked == false then
      HitHealth = h.Health
      h.Health = h.Health - Damage
      if HitHealth ~= h.Health and HitHealth ~= 0 and h.Health <= 0 and h.Parent.Name ~= "Lost Soul" then
        print("gained spree")
        game.Players.LocalPlayer:FindFirstChild("leaderstats").Spree.Value = game.Players.LocalPlayer.leaderstats.Spree.Value + 1
      end
      ShowDamage(Part.CFrame * CFrame.new(0, 0, Part.Size.Z / 2).p + Vector3.new(0, 1.5, 0), -Damage, 1.5, Part.BrickColor.Color)
    else
      h.Health = h.Health - Damage / 2
      ShowDamage(Part.CFrame * CFrame.new(0, 0, Part.Size.Z / 2).p + Vector3.new(0, 1.5, 0), -Damage, 1.5, BrickColor.new("Bright blue").Color)
    end
    if Type == "Knockdown" then
      local hum = hit.Parent.Humanoid
      hum.PlatformStand = true
      coroutine.resume(coroutine.create(function(HHumanoid)
    swait(1)
    HHumanoid.PlatformStand = false
  end
), hum)
      local angle = hit.Position - (Property.Position + Vector3.new(0, 0, 0)).unit
      local bodvol = Instance.new("BodyVelocity")
      bodvol.velocity = angle * knockback
      bodvol.P = 5000
      bodvol.maxForce = Vector3.new(8000, 8000, 8000)
      bodvol.Parent = hit
      local rl = Instance.new("BodyAngularVelocity")
      rl.P = 3000
      rl.maxTorque = Vector3.new(500000, 500000, 500000) * 50000000000000
      rl.angularvelocity = Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10))
      rl.Parent = hit
      game:GetService("Debris"):AddItem(bodvol, 0.5)
      game:GetService("Debris"):AddItem(rl, 0.5)
    else
      do
        if Type == "Normal" then
          local vp = Instance.new("BodyVelocity")
          vp.P = 500
          vp.maxForce = Vector3.new(math.huge, 0, math.huge)
          if KnockbackType == 1 then
            vp.velocity = Property.CFrame.lookVector * knockback + Property.Velocity / 1.05
          else
            if KnockbackType == 2 then
              vp.velocity = Property.CFrame.lookVector * knockback
            end
          end
        else
          do
            if Type == "Curse" then
              CreateSound("http://roblox.com/asset/?id=418097747", Torso, 1, 1)
              for i = 0, 1, 0.025 do
                swait()
                BlockEffect(BrickColor.new("Black"), hit.Parent.Torso.CFrame, 1, 1, 1, 1, 1, 1, 0.07)
                hit.Parent.Humanoid:TakeDamage(0.5)
              end
            else
              do
                if Type == "Heal" then
                  CreateSound("http://roblox.com/asset/?id=418097928", Torso, 1, 1)
                  for i = 0, 1, 0.025 do
                    swait()
                    BlockEffect(BrickColor.new("New Yeller"), hit.Parent.Torso.CFrame, 1, 1, 1, 1, 1, 1, 0.07)
                    hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health + 0.5
                  end
                else
                  do
                    if Type == "Up" then
                      local bodyVelocity = Instance.new("BodyVelocity")
                      bodyVelocity.velocity = vt(0, 60, 0)
                      bodyVelocity.P = 5000
                      bodyVelocity.maxForce = Vector3.new(8000, 8000, 8000)
                      bodyVelocity.Parent = hit
                      game:GetService("Debris"):AddItem(bodyVelocity, 1)
                      local rl = Instance.new("BodyAngularVelocity")
                      rl.P = 3000
                      rl.maxTorque = Vector3.new(500000, 500000, 500000) * 50000000000000
                      rl.angularvelocity = Vector3.new(math.random(-30, 30), math.random(-30, 30), math.random(-30, 30))
                      rl.Parent = hit
                      game:GetService("Debris"):AddItem(rl, 0.5)
                    else
                      do
                        if Type == "Snare" then
                          local bp = Instance.new("BodyPosition")
                          bp.P = 2000
                          bp.D = 100
                          bp.maxForce = Vector3.new(math.huge, math.huge, math.huge)
                          bp.position = hit.Parent.Torso.Position
                          bp.Parent = hit.Parent.Torso
                          game:GetService("Debris"):AddItem(bp, 1)
                        else
                          do
                            if Type == "Target" then
                              local Targetting = false
                              if Targetting == false then
                                ZTarget = hit.Parent.Torso
                                coroutine.resume(coroutine.create(function(Part)
    so("http://www.roblox.com/asset/?id=15666462", Part, 1, 1.5)
    swait(5)
    so("http://www.roblox.com/asset/?id=15666462", Part, 1, 1.5)
  end
), ZTarget)
                                local TargHum = ZTarget.Parent:findFirstChild("Humanoid")
                                local targetgui = Instance.new("BillboardGui")
                                targetgui.Parent = ZTarget
                                targetgui.Size = UDim2.new(10, 100, 10, 100)
                                local targ = Instance.new("ImageLabel")
                                targ.Parent = targetgui
                                targ.BackgroundTransparency = 1
                                targ.Image = "rbxassetid://4834067"
                                targ.Size = UDim2.new(1, 0, 1, 0)
                                cam.CameraType = "Scriptable"
                                cam.CoordinateFrame = CFrame.new(Head.CFrame.p, ZTarget.Position)
                                local dir = Vector3.new(cam.CoordinateFrame.lookVector.x, 0, cam.CoordinateFrame.lookVector.z)
                                workspace.CurrentCamera.CoordinateFrame = CFrame.new(Head.CFrame.p, ZTarget.Position)
                                Targetting = true
                                RocketTarget = ZTarget
                                for i = 1, Property do
                                  if Humanoid.Health > 0 and Character.Parent ~= nil and TargHum.Health > 0 and TargHum.Parent ~= nil and Targetting == true then
                                    swait()
                                  end
                                  cam.CoordinateFrame = CFrame.new(Head.CFrame.p, ZTarget.Position)
                                  dir = Vector3.new(cam.CoordinateFrame.lookVector.x, 0, cam.CoordinateFrame.lookVector.z)
                                  cam.CoordinateFrame = CFrame.new(Head.CFrame.p, ZTarget.Position) * cf(0, 5, 10) * euler(-0.3, 0, 0)
                                end
                                Targetting = false
                                RocketTarget = nil
                                targetgui.Parent = nil
                                cam.CameraType = "Custom"
                              end
                            end
                            do
                              local debounce = Instance.new("BoolValue")
                              debounce.Name = "DebounceHit"
                              debounce.Parent = hit.Parent
                              debounce.Value = true
                              game:GetService("Debris"):AddItem(debounce, Delay)
                              c = Instance.new("ObjectValue")
                              c.Name = "creator"
                              c.Value = Player
                              c.Parent = h
                              game:GetService("Debris"):AddItem(c, 0.5)
                            end
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end

ShowDamage = function(Pos, Text, Time, Color)
  local Rate = 0.033333333333333
  if not Pos then
    local Pos = Vector3.new(0, 0, 0)
  end
  local Text = Text or ""
  local Time = Time or 2
  if not Color then
    local Color = Color3.new(1, 0, 0)
  end
  local EffectPart = CreatePart(workspace, "SmoothPlastic", 0, 1, BrickColor.new(Color), "Effect", vt(0, 0, 0))
  EffectPart.Anchored = true
  local BillboardGui = Instance.new("BillboardGui")
  BillboardGui.Size = UDim2.new(3, 0, 3, 0)
  BillboardGui.Adornee = EffectPart
  local TextLabel = Instance.new("TextLabel")
  TextLabel.BackgroundTransparency = 1
  TextLabel.Size = UDim2.new(1, 0, 1, 0)
  TextLabel.Text = Text
  TextLabel.TextColor3 = Color
  TextLabel.TextScaled = true
  TextLabel.Font = Enum.Font.ArialBold
  TextLabel.Parent = BillboardGui
  BillboardGui.Parent = EffectPart
  game.Debris:AddItem(EffectPart, Time + 0.1)
  EffectPart.Parent = game:GetService("Workspace")
  Delay(0, function()
    local Frames = Time / Rate
    for Frame = 1, Frames do
      wait(Rate)
      local Percent = Frame / Frames
      EffectPart.CFrame = CFrame.new(Pos) + Vector3.new(0, Percent, 0)
      TextLabel.TextTransparency = Percent
    end
    if EffectPart and EffectPart.Parent then
      EffectPart:Destroy()
    end
  end
)
end

MagniDamage = function(Hit, Part, magni, mindam, maxdam, knock, Type)
  for _,c in pairs(workspace:children()) do
    local hum = c:findFirstChild("Humanoid")
    if hum ~= nil then
      local head = c:findFirstChild("Torso")
      if head ~= nil then
        local targ = head.Position - Part.Position
        local mag = targ.magnitude
        if mag <= magni and c.Name ~= Player.Name then
          Damagefunc(Hit, head, mindam, maxdam, knock, Type, RootPart, 0.2, 1, 3)
        end
      end
    end
  end
end

attackone = function()
  attack = true
  coroutine.resume(coroutine.create(function()
    for i = 1, 1 do
      coroutine.resume(coroutine.create(function(Part)
      local ceef1 = math.random(-3, 3)
      local ceef2 = math.random(-2, 8)
      local ceef3 = math.random(1, 10)
      local n = 2
      swait(1)
      local spread = vt((math.random(-1, 0) + math.random()) * 16, (math.random(-1, 0) + math.random()) * 16, (math.random(-1, 0) + math.random()) * 16) * (Part.Position - (Part.Position + vt(0, -1, 0))).magnitude / 100
      local TheHit = mouse.Hit.p
      local MouseLook = cf((Part.Position + TheHit) / 2, TheHit + spread)
      local hit, pos = rayCast(Part.Position, MouseLook.lookVector, 999, Character)
      local mag = (Part.Position - pos).magnitude
      CylinderEffect(BrickColor.new("Toothpaste"), CFrame.new((Part.Position + pos) / 2, pos) * angles(1.57, 0, 0), 1, mag * 5, 1, 0.5, 0, 0.5, 0.05)
      BlockEffect(BrickColor.new("Toothpaste"), Part.CFrame, 8, 8, 8, 0.5, 0.5, 0.5, 0.1)
      BlockEffect(BrickColor.new("Toothpaste"), cf(pos), 5, 5, 5, 1, 1, 1, 0.1)
      do
        local ref = CreatePart(workspace, "Neon", 0, 1, BrickColor.new("Toothpaste"), "Effect", vt())
        ref.CFrame = cf(pos)
        CreateSound("http://roblox.com/asset/?id=299439036", ref, 1, 1)
        coroutine.resume(coroutine.create(function(Part)
        wait(1)
        Part.Parent = nil
      end
), ref)
        MagniDamage(ref, ref, 5, 5, 10, 0, "Normal")
        if hit ~= nil then
        end
      end
    end
), m:FindFirstChild("Ball" .. math.random(1, 8)))
      wait(0.2)
    end
  end
))
  for i = 0, 1, 0.05 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-50)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(50)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(50), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(-70), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, -0.5) * RHCF * angles(math.rad(50), math.rad(0), math.rad(30)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, -0.5) * LHCF * angles(math.rad(50), math.rad(0), math.rad(-30)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
  end
  attack = false
end

attackthree = function()
  attack = true
  coroutine.resume(coroutine.create(function()
    for i = 1, 1 do
      coroutine.resume(coroutine.create(function(Part)
      local n = 2
      swait(1)
      local spread = vt((math.random(-1, 0) + math.random()) * 16, (math.random(-1, 0) + math.random()) * 16, (math.random(-1, 0) + math.random()) * 16) * (Part.Position - (Part.Position + vt(0, -1, 0))).magnitude / 100
      local TheHit = mouse.Hit.p
      local MouseLook = cf((Part.Position + TheHit) / 2, TheHit + spread)
      local hit, pos = rayCast(Part.Position, MouseLook.lookVector, 999, Character)
      local mag = (Part.Position - pos).magnitude
      CylinderEffect(BrickColor.new("Toothpaste"), CFrame.new((Part.Position + pos) / 2, pos) * angles(1.57, 0, 0), 1, mag * 5, 1, 0.5, 0, 0.5, 0.05)
      BlockEffect(BrickColor.new("Toothpaste"), Part.CFrame, 8, 8, 8, 0.5, 0.5, 0.5, 0.1)
      BlockEffect(BrickColor.new("Toothpaste"), cf(pos), 5, 5, 5, 1, 1, 1, 0.1)
      do
        local ref = CreatePart(workspace, "Neon", 0, 1, BrickColor.new("Toothpaste"), "Effect", vt())
        ref.CFrame = cf(pos)
        CreateSound("http://roblox.com/asset/?id=299439036", ref, 1, 1)
        coroutine.resume(coroutine.create(function(Part)
        wait(1)
        Part.Parent = nil
      end
), ref)
        MagniDamage(ref, ref, 5, 5, 10, 0, "Normal")
        if hit ~= nil then
        end
      end
    end
), m:FindFirstChild("Ball" .. math.random(1, 8)))
      wait(0.2)
    end
  end
))
  for i = 0, 1, 0.05 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(50)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(-50)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(100), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(-10), math.rad(-20)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, -0.5) * RHCF * angles(math.rad(50), math.rad(0), math.rad(30)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, -0.5) * LHCF * angles(math.rad(50), math.rad(0), math.rad(-30)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 3, 3) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
  end
  attack = false
end

attacktwo = function()
  attack = true
  coroutine.resume(coroutine.create(function()
    for i = 1, 1 do
      coroutine.resume(coroutine.create(function(Part)
      local n = 2
      swait(1)
      local spread = vt((math.random(-1, 0) + math.random()) * 16, (math.random(-1, 0) + math.random()) * 16, (math.random(-1, 0) + math.random()) * 16) * (Part.Position - (Part.Position + vt(0, -1, 0))).magnitude / 100
      local TheHit = mouse.Hit.p
      local MouseLook = cf((Part.Position + TheHit) / 2, TheHit + spread)
      local hit, pos = rayCast(Part.Position, MouseLook.lookVector, 999, Character)
      local mag = (Part.Position - pos).magnitude
      CylinderEffect(BrickColor.new("Toothpaste"), CFrame.new((Part.Position + pos) / 2, pos) * angles(1.57, 0, 0), 1, mag * 5, 1, 0.5, 0, 0.5, 0.05)
      BlockEffect(BrickColor.new("Toothpaste"), Part.CFrame, 8, 8, 8, 0.5, 0.5, 0.5, 0.1)
      BlockEffect(BrickColor.new("Toothpaste"), cf(pos), 5, 5, 5, 1, 1, 1, 0.1)
      do
        local ref = CreatePart(workspace, "Neon", 0, 1, BrickColor.new("Toothpaste"), "Effect", vt())
        ref.CFrame = cf(pos)
        CreateSound("http://roblox.com/asset/?id=299439036", ref, 1, 1)
        coroutine.resume(coroutine.create(function(Part)
        wait(1)
        Part.Parent = nil
      end
), ref)
        MagniDamage(ref, ref, 5, 5, 10, 0, "Normal")
        if hit ~= nil then
        end
      end
    end
), Tip)
      wait(0.2)
    end
  end
))
  for i = 0, 1, 0.05 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(130), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(-130), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, -0.5) * RHCF * angles(math.rad(50), math.rad(0), math.rad(30)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, -0.5) * LHCF * angles(math.rad(50), math.rad(0), math.rad(-30)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
  end
  attack = false
end

zen = function()
  attack = true
  CreateSound("http://roblox.com/asset/?id=418079108", RootPart, 0.3, 1)
  for i = 0, 1, 0.05 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(30), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(130), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(-130), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, -0.5) * RHCF * angles(math.rad(50), math.rad(0), math.rad(30)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, -0.5) * LHCF * angles(math.rad(50), math.rad(0), math.rad(-30)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
  end
  Humanoid.Health = Humanoid.Health + 50
  MagniDamage(RootPart, RootPart, 15, -50, -25, 0, "Normal")
  SphereEffect(BrickColor.new("Toothpaste"), RootPart.CFrame * angles(0, 0, 0), 1, 1, 1, 5, 10, 5, 0.05)
  SphereEffect(BrickColor.new("Toothpaste"), RootPart.CFrame * angles(0, 0, 0), 1, 1, 1, 10, 2, 10, 0.05)
  WaveEffect(BrickColor.new("Toothpaste"), RootPart.CFrame * cf(0, -2, 0) * angles(0, 0, 0), 1, 1, 1, 1, 0, 1, 0.05)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, -0.5) * RHCF * angles(math.rad(50), math.rad(0), math.rad(30)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, -0.5) * LHCF * angles(math.rad(50), math.rad(0), math.rad(-30)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
  end
  attack = false
end

iris = function()
  attack = true
  CreateSound("http://roblox.com/asset/?id=418077213", RootPart, 1, 1)
  for i = 0, 1, 0.05 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(30), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(130), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(-130), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, -0.5) * RHCF * angles(math.rad(50), math.rad(0), math.rad(30)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, -0.5) * LHCF * angles(math.rad(50), math.rad(0), math.rad(-30)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
  end
  coroutine.resume(coroutine.create(function()
    while attack do
      wait(0.2)
      Humanoid.Health = Humanoid.Health + 1
      MagniDamage(RootPart, RootPart, 25, -5, -2, 0, "Normal")
      RingEffect(BrickColor.new("New Yeller"), RootPart.CFrame * cf(-5, 0, -5) * angles(1.57, 0, 0), 5, 5, 3, 3, 3, 0, 0.05)
      SphereEffect(BrickColor.new("New Yeller"), RootPart.CFrame * angles(0, 0, 0), 100, 100, 100, 5, 5, 5, 0.05)
    end
  end
))
  for i = 0, 1, 0.005 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, -0.5) * RHCF * angles(math.rad(50), math.rad(0), math.rad(30)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, -0.5) * LHCF * angles(math.rad(50), math.rad(0), math.rad(-30)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
  end
  attack = false
end

Curse = function()
  attack = true
  coroutine.resume(coroutine.create(function()
    for i = 1, 1 do
      coroutine.resume(coroutine.create(function(Part)
      local ceef1 = math.random(-3, 3)
      local ceef2 = math.random(-2, 8)
      local ceef3 = math.random(1, 10)
      local n = 2
      swait(1)
      local spread = vt((math.random(-1, 0) + math.random()) * 16, (math.random(-1, 0) + math.random()) * 16, (math.random(-1, 0) + math.random()) * 16) * (Part.Position - (Part.Position + vt(0, -1, 0))).magnitude / 100
      local TheHit = mouse.Hit.p
      local MouseLook = cf((Part.Position + TheHit) / 2, TheHit + spread)
      local hit, pos = rayCast(Part.Position, MouseLook.lookVector, 999, Character)
      local mag = (Part.Position - pos).magnitude
      CylinderEffect(BrickColor.new("Magenta"), CFrame.new((Part.Position + pos) / 2, pos) * angles(1.57, 0, 0), 1, mag * 5, 1, 0.5, 0, 0.5, 0.05)
      BlockEffect(BrickColor.new("Magenta"), Part.CFrame, 8, 8, 8, 0.5, 0.5, 0.5, 0.1)
      BlockEffect(BrickColor.new("Magenta"), cf(pos), 15, 15, 15, 6, 6, 6, 0.1)
      do
        local ref = CreatePart(workspace, "Neon", 0, 1, BrickColor.new("Gold"), "Effect", vt())
        ref.CFrame = cf(pos)
        CreateSound("http://roblox.com/asset/?id=299439036", ref, 1, 0.7)
        coroutine.resume(coroutine.create(function(Part)
        wait(1)
        Part.Parent = nil
      end
), ref)
        MagniDamage(ref, ref, 15, 0, 3, 0, "Curse")
        if hit ~= nil then
        end
      end
    end
), m:FindFirstChild("Ball" .. math.random(1, 8)))
      wait(0.2)
    end
  end
))
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-50)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(50)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(50), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(-70), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, -0.5) * RHCF * angles(math.rad(50), math.rad(0), math.rad(30)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, -0.5) * LHCF * angles(math.rad(50), math.rad(0), math.rad(-30)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
  end
  attack = false
end

Heal = function()
  attack = true
  coroutine.resume(coroutine.create(function()
    for i = 1, 1 do
      coroutine.resume(coroutine.create(function(Part)
      local ceef1 = math.random(-3, 3)
      local ceef2 = math.random(-2, 8)
      local ceef3 = math.random(1, 10)
      local n = 2
      swait(1)
      local spread = vt((math.random(-1, 0) + math.random()) * 16, (math.random(-1, 0) + math.random()) * 16, (math.random(-1, 0) + math.random()) * 16) * (Part.Position - (Part.Position + vt(0, -1, 0))).magnitude / 100
      local TheHit = mouse.Hit.p
      local MouseLook = cf((Part.Position + TheHit) / 2, TheHit + spread)
      local hit, pos = rayCast(Part.Position, MouseLook.lookVector, 999, Character)
      local mag = (Part.Position - pos).magnitude
      CylinderEffect(BrickColor.new("New Yeller"), CFrame.new((Part.Position + pos) / 2, pos) * angles(1.57, 0, 0), 1, mag * 5, 1, 0.5, 0, 0.5, 0.05)
      BlockEffect(BrickColor.new("New Yeller"), Part.CFrame, 8, 8, 8, 0.5, 0.5, 0.5, 0.1)
      BlockEffect(BrickColor.new("New Yeller"), cf(pos), 5, 5, 5, 1, 1, 1, 0.1)
      do
        local ref = CreatePart(workspace, "Neon", 0, 1, BrickColor.new("Gold"), "Effect", vt())
        ref.CFrame = cf(pos)
        CreateSound("http://roblox.com/asset/?id=299439036", ref, 1, 1.5)
        coroutine.resume(coroutine.create(function(Part)
        wait(1)
        Part.Parent = nil
      end
), ref)
        MagniDamage(ref, ref, 5, 0, 0, 0, "Heal")
        if hit ~= nil then
        end
      end
    end
), m:FindFirstChild("Ball" .. math.random(1, 8)))
      wait(0.2)
    end
  end
))
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-50)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(50)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(50), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(-70), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, -0.5) * RHCF * angles(math.rad(50), math.rad(0), math.rad(30)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, -0.5) * LHCF * angles(math.rad(50), math.rad(0), math.rad(-30)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
  end
  attack = false
end

ob1u = function()
end

ob1d = function()
  if attack == false and attacktype == 1 then
    attackone()
    attacktype = 2
  else
    if attack == false and attacktype == 2 then
      attacktwo()
      attacktype = 3
    else
      if attack == false and attacktype == 3 then
        attackthree()
        attacktype = 1
      end
    end
  end
end

key = function(k)
  k = k:lower()
  if attack == false and k == "z" and mana >= 25 and zenabled == true then
    zenabled = true
    mana = mana
    coroutine.resume(coroutine.create(function()
    for i = 1, 0, -0.01 do
      swait()
      fenframe1a.Size = UDim2.new(0.05 * i, 0, 0.1, 0)
    end
    zenabled = true
    fenframe1a.Size = UDim2.new(0, 0, 0.1, 0)
  end
))
    Heal()
  else
    if attack == false and k == "x" and mana >= 25 and xenabled == true then
      xenabled = true
      mana = mana
      coroutine.resume(coroutine.create(function()
    for i = 1, 0, -0.01 do
      swait()
      fenframe2a.Size = UDim2.new(0.05 * i, 0, 0.1, 0)
    end
    xenabled = true
    fenframe2a.Size = UDim2.new(0, 0, 0.1, 0)
  end
))
      Curse()
    else
      if attack == false and k == "c" and mana >= 35 and cenabled == true then
        cenabled = true
        mana = mana
        coroutine.resume(coroutine.create(function()
    for i = 1, 0, -0.0025 do
      swait()
      fenframe3a.Size = UDim2.new(0.05 * i, 0, 0.1, 0)
    end
    cenabled = true
    fenframe3a.Size = UDim2.new(0, 0, 0.1, 0)
  end
))
        zen()
      else
        if attack == false and k == "v" and mana >= 45 and venabled == true then
          venabled = true
          mana = mana
          coroutine.resume(coroutine.create(function()
    for i = 1, 0, -0.0005 do
      swait()
      fenframe4a.Size = UDim2.new(0.05 * i, 0, 0.1, 0)
    end
    venabled = true
    fenframe4a.Size = UDim2.new(0, 0, 0.1, 0)
  end
))
          iris()
        end
      end
    end
  end
end

Bin = Instance.new("HopperBin", Player.Backpack)
ds  = function(mouse)
end

s = function(mouse)
  print("Selected")
  mouse.Button1Down:connect(function()
    ob1d(mouse)
  end
)
  mouse.Button1Up:connect(function()
    ob1u(mouse)
  end
)
  mouse.KeyDown:connect(key)
end

Bin.Selected:connect(s)
Bin.Deselected:connect(ds)
while 1 do
  while 1 do
    while 1 do
      pwait()
      Torsovelocity = RootPart.Velocity * Vector3.new(1, 0, 1).magnitude
      velocity = RootPart.Velocity.y
      sine = sine + change
      local hit, pos = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 4, Character)
      if equipped == true or equipped == false then
        if 1 < RootPart.Velocity.y and hit == nil then
          Anim = "Jump"
          if attack == false then
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(30), math.rad(0), math.rad(0)), 0.3)
            RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(50), math.rad(90)), 0.3)
            LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(30), math.rad(-50)), 0.3)
            RH.C0 = clerp(RH.C0, cf(1, -1, -0.5) * RHCF * angles(math.rad(50), math.rad(0), math.rad(30)), 0.3)
            LH.C0 = clerp(LH.C0, cf(-1, -1, -0.5) * LHCF * angles(math.rad(50), math.rad(0), math.rad(-30)), 0.3)
            FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
          end
        else
          if RootPart.Velocity.y < -1 and hit == nil then
            Anim = "Fall"
            if attack == false then
              RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
              Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(30), math.rad(0), math.rad(0)), 0.3)
              RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(50), math.rad(90)), 0.3)
              LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(30), math.rad(-50)), 0.3)
              RH.C0 = clerp(RH.C0, cf(1, -1, -0.5) * RHCF * angles(math.rad(50), math.rad(0), math.rad(30)), 0.3)
              LH.C0 = clerp(LH.C0, cf(-1, -1, -0.5) * LHCF * angles(math.rad(50), math.rad(0), math.rad(-30)), 0.3)
              FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
            end
          else
            if Torsovelocity.x < 1 and Torsovelocity.z < 1 and hit ~= nil then
              Anim = "Idle"
              if attack == false then
                change = 1
                RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
                Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
                RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(50), math.rad(90)), 0.3)
                LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(-30), math.rad(-20)), 0.3)
                RH.C0 = clerp(RH.C0, cf(1, -1, -0.5) * RHCF * angles(math.rad(50), math.rad(0), math.rad(30)), 0.3)
                LH.C0 = clerp(LH.C0, cf(-1, -1, -0.5) * LHCF * angles(math.rad(50), math.rad(0), math.rad(-30)), 0.3)
                FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
              end
            else
              if Torsovelocity.x > 2 and Torsovelocity.z > 2 and hit ~= nil then
                Anim = "Walk"
                if attack == false then
                  RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.3)
                  Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
                  RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(50), math.rad(90)), 0.3)
                  LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(50), math.rad(-20)), 0.3)
                  RH.C0 = clerp(RH.C0, cf(1, -1, -0.5) * RHCF * angles(math.rad(50), math.rad(0), math.rad(30)), 0.3)
                  LH.C0 = clerp(LH.C0, cf(-1, -1, -0.5) * LHCF * angles(math.rad(50), math.rad(0), math.rad(-30)), 0.3)
                  FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
                end
              end
            end
          end
        end
      end
      if 0 < #Effects then
        for e = 1, #Effects do
          if Effects[e] ~= nil then
            local Thing = Effects[e]
            if Thing ~= nil then
              local Part = Thing[1]
              local Mode = Thing[2]
              local Delay = Thing[3]
              local IncX = Thing[4]
              local IncY = Thing[5]
              local IncZ = Thing[6]
              if Thing[1].Transparency <= 1 then
                if Thing[2] == "Block1" then
                  Thing[1].CFrame = Thing[1].CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
                  Mesh = Thing[1].Mesh
                  Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
                  Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                else
                  if Thing[2] == "Block2" then
                    Thing[1].CFrame = Thing[1].CFrame
                    Mesh = Thing[7]
                    Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
                    Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                  else
                    if Thing[2] == "Cylinder" then
                      Mesh = Thing[1].Mesh
                      Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
                      Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                    else
                      if Thing[2] == "Blood" then
                        Mesh = Thing[7]
                        Thing[1].CFrame = Thing[1].CFrame * Vector3.new(0, 0.5, 0)
                        Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
                        Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                      else
                        if Thing[2] == "Elec" then
                          Mesh = Thing[1].Mesh
                          Mesh.Scale = Mesh.Scale + Vector3.new(Thing[7], Thing[8], Thing[9])
                          Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                        else
                          if Thing[2] == "Disappear" then
                            Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                          else
                            if Thing[2] == "Shatter" then
                              Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                              Thing[4] = Thing[4] * CFrame.new(0, Thing[7], 0)
                              Thing[1].CFrame = Thing[4] * CFrame.fromEulerAnglesXYZ(Thing[6], 0, 0)
                              Thing[6] = Thing[6] + Thing[5]
                            end
                          end
                        end
                      end
                    end
                  end
                end
              else
                Part.Parent = nil
                table.remove(Effects, e)
              end
            end
          end
        end
      end
      do
        fenbarmana2:TweenSize((UDim2.new(4 * mana / 100, 0, 0.2, 0)), nil, 1, 0.4, true)
        fenbarmana4.Text = "[Corruption]  <{[  " .. mana .. "  ]}> [Corruption]"
        if attack == false then
          if 100 <= mana then
            mana = 100

          end
        end
      end
    end
    if mananum <= 8 then
      mananum = mananum + 1
    end
  end
  mananum = 0
  mana = mana + 1
end

