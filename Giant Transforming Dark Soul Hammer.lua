wait(0.016666666666667)
Effects = {}
local Player = game.Players.localPlayer
local Character = Player.Character
local Humanoid = Character.Humanoid
local mouse = Player:GetMouse()
local m = Instance.new("Model", Character)
m.Name = "Hades"
local effect = Instance.new("Model", Character)
effect.Name = "Effects"
Hammer = {}
HammerWelds = {}
local LeftArm = Character["Left Arm"]
local RightArm = Character["Right Arm"]
local LeftLeg = Character["Left Leg"]
local RightLeg = Character["Right Leg"]
local WStyle = "Hammer"
local Head = Character.Head
local Torso = Character.Torso
local cam = game.Workspace.CurrentCamera
local RootPart = Character.HumanoidRootPart
local RootJoint = RootPart.RootJoint
local equipped = false
local attack = false
local Anim = "Idle"
local idle = 0
local mananum = 0
local attacktype = 1
local attacktype2 = 1
local Torsovelocity = RootPart.Velocity * Vector3.new(1, 0, 1).magnitude
local velocity = RootPart.Velocity.y
local sine = 0
local change = 1
local mana = 100
local it = Instance.new
local vt = Vector3.new
local grabbed = false
local cf = CFrame.new
local mr = math.rad
local angles = CFrame.Angles
local ud = UDim2.new
local c3 = Color3.new
Anim = Instance.new("StringValue")
Anim.Name = "Animation"
Anim.Parent = Character
Anim.Value = "Walking"
local NeckCF = cf(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
xenabled = true
cenabled = true
venabled = true
zenabled = true
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
CreateWeld = function(Parent, Part0, Part1, C0, C1)
  local Weld = Create("Weld")({Parent = Parent, Part0 = Part0, Part1 = Part1, C0 = C0, C1 = C1})
  return Weld
end

rayCast = function(Position, Direction, Range, Ignore)
  return game:service("Workspace"):FindPartOnRay(Ray.new(Position, Direction.unit * (Range or 999.999)), Ignore)
end

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

Handle = CreatePart(m, Enum.Material.SmoothPlastic, 0, 1, "Black", "FakeHandle", Vector3.new(0.209999964, 2.57000017, 0.210000098))
HandleWeld = CreateWeld(m, Character["Right Arm"], Handle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.971689701, -0.108011246, 0.0337958336, 7.52883196e-008, -1, 5.96046377e-008, 1.49776653e-008, -5.96046377e-008, -1, 1, 7.52883196e-008, 1.497766e-008))
CreateMesh("CylinderMesh", Handle, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
FakeHandle = CreatePart(m, Enum.Material.SmoothPlastic, 0, 1, "Black", "FakeHandle", Vector3.new(0.209999964, 2.57000017, 0.210000098))
FakeHandleWeld = CreateWeld(m, Handle, FakeHandle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0, 0, 1, 1.12764321e-015, 0, 1.12764321e-015, 1, 0, 0, 0, 1))
CreateMesh("CylinderMesh", FakeHandle, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Hitbox = CreatePart(m, Enum.Material.SmoothPlastic, 0, 1, "Black", "Hitbox", Vector3.new(3, 5.2300005, 2.70000005))
HitboxWeld = CreateWeld(m, FakeHandle, Hitbox, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0100002289, -0.0249986649, -5.90500546, -5.96046235e-008, -1.59872116e-014, -1, -1, -5.96046341e-008, 5.96046235e-008, -5.96046341e-008, 1, -1.24344979e-014))
CreateMesh("CylinderMesh", Hitbox, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(3, 2.79999995, 0.399999976))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.85500193, 0.0100011826, -2.64999771, 1.49011612e-007, 1, -7.54979084e-008, -5.96046341e-008, -7.54979013e-008, -1, -1, 1.49011612e-007, 5.96046235e-008))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=3270017", Vector3.new(0, 0, 0), Vector3.new(3, 3, 1))
Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(3, 2.79999995, 0.399999976))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.85500288, 0.0100007057, 2.60000563, 1.49011612e-007, 1, -7.54979084e-008, -5.96046341e-008, -7.54979013e-008, -1, -1, 1.49011612e-007, 5.96046235e-008))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=3270017", Vector3.new(0, 0, 0), Vector3.new(3, 3, 1))
Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(3, 2.79999995, 0.399999976))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.88499594, 0.0100002289, -1.46000004, 1.49011612e-007, 1, -7.54979084e-008, -5.96046341e-008, -7.54979013e-008, -1, -1, 1.49011612e-007, 5.96046235e-008))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=3270017", Vector3.new(0, 0, 0), Vector3.new(2.5, 2.5, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(3, 1.16000009, 2.70000005))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00999927521, -2.06000137, -5.90500546, -5.96046235e-008, -1.59872116e-014, -1, -1, -5.96046341e-008, 5.96046235e-008, -5.96046341e-008, 1, -1.24344979e-014))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(3, 1.16000009, 2.70000005))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0100007057, 2.06999922, -5.90500736, -5.96046235e-008, -1.59872116e-014, -1, -1, -5.96046341e-008, 5.96046235e-008, -5.96046341e-008, 1, -1.24344979e-014))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(1.63, 0.56000042, 1.28000009))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0049996376, 1.21000218, -5.91500092, -5.96046235e-008, -1.59872116e-014, -1, -1, -5.96046341e-008, 5.96046235e-008, -5.96046341e-008, 1, -1.24344979e-014))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(1.15999997, 1.44999993, 0.399999976))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.91499901, -0.0250031948, 0.0100007057, -6.23954073e-015, 1, 4.37113883e-008, 1, 1.08930461e-014, -5.96046448e-008, -5.96046448e-008, 4.37113883e-008, -1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=3270017", Vector3.new(0, 0, 0), Vector3.new(2, 2, 15))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(1.63, 0.56000042, 1.28000009))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0400049686, -0.0049996376, -5.91499901, 1, 5.96046377e-008, 1.42108547e-014, 1.42108547e-014, -4.37113883e-008, -1, -5.96046377e-008, 1, -4.37113883e-008))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(1.63, 0.56000042, 1.28000009))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00500011444, -1.22999811, -5.91500092, -5.96046235e-008, -1.59872116e-014, -1, -1, -5.96046341e-008, 5.96046235e-008, -5.96046341e-008, 1, -1.24344979e-014))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.209999964, 9.44000053, 0.51000011))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -0.724998236, -0.0100002289, 1, 1.12764321e-015, 0, 1.12764321e-015, 1, 0, 0, 0, 1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(3, 2.79999995, 0.399999976))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.88499784, 0.00999975204, 1.47000384, 1.49011612e-007, 1, -7.54979084e-008, -5.96046341e-008, -7.54979013e-008, -1, -1, 1.49011612e-007, 5.96046235e-008))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=3270017", Vector3.new(0, 0, 0), Vector3.new(2.5, 2.5, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.5, 0, "Black", "Part", Vector3.new(0.74000001, 0.220000267, 0.360000014))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0199999809, -5.46746063, -2.75282335, -5.96046235e-008, -1.59872116e-014, -1, -0.499999762, 0.866025686, 2.98022833e-008, 0.866025686, 0.499999732, -5.16191392e-008))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.350000024, 0.56000042, 0.240000129))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00500011444, -0.0100033283, 4.05498981, -2.08616257e-007, 4.37113954e-008, 1, 1, 7.80494105e-015, 2.08616257e-007, 4.94211283e-015, 1, -4.37113954e-008))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.5, 0, "Black", "Part", Vector3.new(0.74000001, 0.220000267, 0.350000024))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0200004578, -5.48171663, 2.72313046, -5.96046235e-008, -1.59872116e-014, -1, 0.500000298, 0.866025209, -2.98023437e-008, 0.866025209, -0.500000298, -5.1619093e-008))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.5, 0, "Black", "Part", Vector3.new(0.74000001, 0.220000267, 0.650000036))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0199995041, 0.0192580223, -5.73387241, -5.96046235e-008, -1.59872116e-014, -1, -1, 2.08616285e-007, 5.96046199e-008, 2.08616285e-007, 1, -2.84217094e-014))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.5, 0, "Black", "Part", Vector3.new(0.74000001, 0.220000267, 0.240000024))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0199999809, 0.0192596912, -6.29887009, -5.96046235e-008, -1.59872116e-014, -1, -1, 2.08616285e-007, 5.96046199e-008, 2.08616285e-007, 1, -2.84217094e-014))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
for _,c in pairs(m:children()) do
  if c.className == "Part" then
    table.insert(Hammer, c)
  end
end
for _,c in pairs(m:children()) do
  if c.className == "Weld" then
    table.insert(HammerWelds, c)
    print(c)
  end
end
local model2 = (Instance.new("Model"))
model2.Parent = nil
model2.Name = "Chakkran"
DBlade = {}
DBladeWelds = {}
Handle2 = CreatePart(model2, Enum.Material.SmoothPlastic, 0, 1, "Black", "FakeHandle2", Vector3.new(0.209999964, 2.69000053, 0.51000011))
Handle2Weld = CreateWeld(model2, Character["Right Arm"], Handle2, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.949001789, 0.258885384, 0.0171251297, 0.000207733654, -0.99935025, 0.0360427685, -0.00575854396, -0.036043372, -0.999333739, 0.99998337, 4.13686969e-008, -0.00576228928))
FakeHandle2 = CreatePart(model2, Enum.Material.SmoothPlastic, 0, 1, "Black", "FakeHandle2", Vector3.new(0.209999964, 2.69000053, 0.51000011))
FakeHandle2Weld = CreateWeld(model2, Handle2, FakeHandle2, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0, 0, 1, -4.25188773e-010, 0, -4.25188773e-010, 1.00000024, 4.65661287e-010, 0, 4.65661287e-010, 0.99999994))
Part = CreatePart(model2, Enum.Material.Plastic, 0.20000000298023, 0, "Black", "Part", Vector3.new(1, 1, 1))
PartWeld = CreateWeld(model2, FakeHandle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-8.92499352, -0.0200054646, -0.0200014114, 2.93771336e-008, 1.00000024, 4.65661287e-010, 1, -2.99711473e-008, -4.46889317e-008, -4.47034836e-008, -4.65661287e-010, -0.99999994))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=3270017", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1.20000005))
Part = CreatePart(model2, Enum.Material.SmoothPlastic, 0.25, 0, "Black", "Part", Vector3.new(0.219999999, 0.439999789, 0.730000019))
PartWeld = CreateWeld(model2, FakeHandle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.90734863e-006, -8.08396149, 2.38490152, 1.28376996e-007, -2.45403498e-007, -1, 1.82063104e-007, 1.00000012, -2.44472176e-007, 1.00000012, -1.83709744e-007, 1.28362444e-007))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 1))
Part = CreatePart(model2, Enum.Material.SmoothPlastic, 0.25, 0, "Black", "Part", Vector3.new(0.219999999, 0.439999789, 0.730000019))
PartWeld = CreateWeld(model2, FakeHandle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(9.53674316e-007, -8.08396339, 2.48509741, -2.16707122e-007, -3.11993062e-008, 0.99999994, -1.41979626e-007, 1.00000012, 3.21306288e-008, -1, -1.39892563e-007, -2.1669257e-007))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 1))
Part = CreatePart(model2, Enum.Material.SmoothPlastic, 0.25, 0, "Black", "Part", Vector3.new(0.219999999, 4.19999981, 0.430000037))
PartWeld = CreateWeld(model2, FakeHandle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(9.53674316e-007, -0.0473937988, 8.07886314, -4.40340955e-008, -1.62050128e-007, -1, 1.00000012, -2.46049012e-007, -4.40486474e-008, -2.4541032e-007, -1.00000024, 1.61584467e-007))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 1))
Part = CreatePart(model2, Enum.Material.SmoothPlastic, 0.25, 0, "Black", "Part", Vector3.new(0.219999999, 6.19999981, 0.430000037))
PartWeld = CreateWeld(model2, FakeHandle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(9.53674316e-007, -5.36886501, -0.00739479065, -4.40340955e-008, -1.62050128e-007, -1, 1.82080385e-007, 1.00000024, -1.61584467e-007, 1.00000012, -1.82716917e-007, -4.40340955e-008))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 1))
Part = CreatePart(model2, Enum.Material.SmoothPlastic, 0.25, 0, "Black", "Part", Vector3.new(0.219999999, 6.0999999, 0.430000037))
PartWeld = CreateWeld(model2, FakeHandle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(9.53674316e-007, -0.097391963, 9.86886406, -4.40340955e-008, -1.62050128e-007, -1, 1.00000012, -2.46049012e-007, -4.40486474e-008, -2.4541032e-007, -1.00000024, 1.61584467e-007))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 1))
Part = CreatePart(model2, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(1, 1, 1))
PartWeld = CreateWeld(model2, FakeHandle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.77499247, -0.0200061798, -0.0100002289, 2.93771336e-008, 1.00000024, 4.65661287e-010, 1, -2.99711473e-008, -4.46889317e-008, -4.47034836e-008, -4.65661287e-010, -0.99999994))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=3270017", Vector3.new(0, 0, 0), Vector3.new(1, 1, 3))
Part = CreatePart(model2, Enum.Material.SmoothPlastic, 0.25, 0, "Black", "Part", Vector3.new(0.219999999, 0.439999789, 0.730000019))
PartWeld = CreateWeld(model2, FakeHandle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.90734863e-006, -9.87396622, 3.47510171, -2.16707122e-007, -3.11993062e-008, 0.99999994, -1.41979626e-007, 1.00000012, 3.21306288e-008, -1, -1.39892563e-007, -2.1669257e-007))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 1))
Part = CreatePart(model2, Enum.Material.SmoothPlastic, 0.25, 0, "Black", "Part", Vector3.new(0.219999999, 0.439999789, 0.730000019))
PartWeld = CreateWeld(model2, FakeHandle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.90734863e-006, -9.8739624, 3.23490095, 1.28376996e-007, -2.45403498e-007, -1, 1.82063104e-007, 1.00000012, -2.44472176e-007, 1.00000012, -1.83709744e-007, 1.28362444e-007))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 1))
Part = CreatePart(model2, Enum.Material.SmoothPlastic, 0.25, 0, "Black", "Part", Vector3.new(0.219999999, 2.29999971, 0.430000037))
PartWeld = CreateWeld(model2, FakeHandle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(9.53674316e-007, -1.59739149, 8.96886349, -4.40340955e-008, -1.62050128e-007, -1, 1.00000012, -2.46049012e-007, -4.40486474e-008, -2.4541032e-007, -1.00000024, 1.61584467e-007))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 1))
Part = CreatePart(model2, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.350000024, 0.56000042, 0.240000129))
PartWeld = CreateWeld(model2, FakeHandle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0149993896, -0.0100066662, 1.40500164, -1.05195795e-007, 1.56462193e-007, 1, 1, -7.18138153e-008, 1.05181243e-007, 7.03228125e-008, 1.00000024, -1.55996531e-007))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(model2, Enum.Material.SmoothPlastic, 0.25, 0, "Black", "Part", Vector3.new(0.219999999, 0.439999789, 0.730000019))
PartWeld = CreateWeld(model2, FakeHandle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(9.53674316e-007, -8.97396851, 3.07490206, 1.28376996e-007, -2.45403498e-007, -1, 1.82063104e-007, 1.00000012, -2.44472176e-007, 1.00000012, -1.83709744e-007, 1.28362444e-007))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 1))
Part = CreatePart(model2, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.209999964, 2.69000053, 0.51000011))
PartWeld = CreateWeld(model2, FakeHandle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0, 0, 1, -4.25188773e-010, 0, -4.25188773e-010, 1.00000024, 4.65661287e-010, 0, 4.65661287e-010, 0.99999994))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(model2, Enum.Material.SmoothPlastic, 0.25, 0, "Black", "Part", Vector3.new(0.219999999, 0.439999789, 0.730000019))
PartWeld = CreateWeld(model2, FakeHandle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(9.53674316e-007, -8.9739666, 3.09509993, -2.16707122e-007, -3.11993062e-008, 0.99999994, -1.41979626e-007, 1.00000012, 3.21306288e-008, -1, -1.39892563e-007, -2.1669257e-007))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 1))
Part = CreatePart(model2, Enum.Material.SmoothPlastic, 0.25, 0, "Black", "Part", Vector3.new(0.219999999, 0.249999881, 0.200000033))
PartWeld = CreateWeld(model2, FakeHandle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0299987793, -6.23282051, -6.55576801, -4.40340955e-008, -1.62050128e-007, -1, -0.707106888, 0.707106769, -8.28877091e-008, 0.707106769, 0.707106888, -1.45286322e-007))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 0.5))
Part = CreatePart(model2, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.350000024, 0.56000042, 0.240000129))
PartWeld = CreateWeld(model2, FakeHandle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.014998436, 0.749990344, -1.77499676, -1.05195795e-007, 1.56462193e-007, 1, 1, -7.18138153e-008, 1.05181243e-007, 7.03228125e-008, 1.00000024, -1.55996531e-007))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(model2, Enum.Material.SmoothPlastic, 0.25, 0, "Black", "Part", Vector3.new(0.219999999, 0.21999988, 0.200000033))
PartWeld = CreateWeld(model2, FakeHandle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0299987793, -1.96886635, -0.0223923922, -4.40340955e-008, -1.62050128e-007, -1, 1.82080385e-007, 1.00000024, -1.61584467e-007, 1.00000012, -1.82716917e-007, -4.40340955e-008))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.5, 0.5))
Part = CreatePart(model2, Enum.Material.SmoothPlastic, 0.25, 0, "Black", "Part", Vector3.new(0.219999999, 0.21999988, 0.200000033))
PartWeld = CreateWeld(model2, FakeHandle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0299987793, -9.13886261, -0.0223926306, -4.40340955e-008, -1.62050128e-007, -1, 1.82080385e-007, 1.00000024, -1.61584467e-007, 1.00000012, -1.82716917e-007, -4.40340955e-008))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.5, 0.5))
Part = CreatePart(model2, Enum.Material.SmoothPlastic, 0.25, 0, "Black", "Part", Vector3.new(0.219999999, 0.249999881, 0.200000033))
PartWeld = CreateWeld(model2, FakeHandle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0299987793, 6.25878143, -6.52980947, -4.40340955e-008, -1.62050128e-007, -1, -0.707107246, -0.707106411, 1.45286322e-007, -0.707106411, 0.707107306, -8.28877091e-008))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 0.5))
Part = CreatePart(model2, Enum.Material.SmoothPlastic, 0.25, 0, "Black", "Part", Vector3.new(0.219999999, 0.379999876, 0.200000033))
PartWeld = CreateWeld(model2, FakeHandle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0299987793, -8.84886265, -0.0223910809, -4.40340955e-008, -1.62050128e-007, -1, 1.82080385e-007, 1.00000024, -1.61584467e-007, 1.00000012, -1.82716917e-007, -4.40340955e-008))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 0.5))
Part = CreatePart(model2, Enum.Material.SmoothPlastic, 0.25, 0, "Black", "Part", Vector3.new(0.219999999, 0.379999876, 0.200000033))
PartWeld = CreateWeld(model2, FakeHandle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.029999733, -1.67886019, -0.0223929882, -4.40340955e-008, -1.62050128e-007, -1, 1.82080385e-007, 1.00000024, -1.61584467e-007, 1.00000012, -1.82716917e-007, -4.40340955e-008))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 0.5))
Part = CreatePart(model2, Enum.Material.SmoothPlastic, 0.25, 0, "Black", "Part", Vector3.new(0.219999999, 2.29999971, 0.430000037))
PartWeld = CreateWeld(model2, FakeHandle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(9.53674316e-007, 1.59260416, 8.96886063, -4.40340955e-008, -1.62050128e-007, -1, 1.00000012, -2.46049012e-007, -4.40486474e-008, -2.4541032e-007, -1.00000024, 1.61584467e-007))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 1))
Part = CreatePart(model2, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.350000024, 0.56000042, 0.240000129))
PartWeld = CreateWeld(model2, FakeHandle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.014998436, -0.780008078, -1.7750001, -1.05195795e-007, 1.56462193e-007, 1, 1, -7.18138153e-008, 1.05181243e-007, 7.03228125e-008, 1.00000024, -1.55996531e-007))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(model2, Enum.Material.SmoothPlastic, 0.25, 0, "Black", "Part", Vector3.new(0.219999999, 0.309999585, 0.430000037))
PartWeld = CreateWeld(model2, FakeHandle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -9.56385708, -0.00739264488, -4.40340955e-008, -1.62050128e-007, -1, 1.82080385e-007, 1.00000024, -1.61584467e-007, 1.00000012, -1.82716917e-007, -4.40340955e-008))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 1))
Part = CreatePart(model2, Enum.Material.SmoothPlastic, 0.25, 0, "Black", "Part", Vector3.new(0.219999999, 0.249999881, 0.200000033))
PartWeld = CreateWeld(model2, FakeHandle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0299987793, 1.18883181, -1.45985472, -4.40340955e-008, -1.62050128e-007, -1, -0.707107246, -0.707106411, 1.45286322e-007, -0.707106411, 0.707107306, -8.28877091e-008))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 0.5))
Part = CreatePart(model2, Enum.Material.SmoothPlastic, 0.25, 0, "Black", "Part", Vector3.new(0.219999999, 0.249999881, 0.200000033))
PartWeld = CreateWeld(model2, FakeHandle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.029999733, -1.16286898, -1.48581553, -4.40340955e-008, -1.62050128e-007, -1, -0.707106888, 0.707106769, -8.28877091e-008, 0.707106769, 0.707106888, -1.45286322e-007))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 0.5))
Hitbox2 = CreatePart(model2, Enum.Material.SmoothPlastic, 0.25, 1, "Black", "Hitbox2", Vector3.new(0.219999999, 7.46999931, 2.97999978))
Hitbox2Weld = CreateWeld(model2, FakeHandle2, Hitbox2, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-9.53674316e-007, -6.36385679, -0.112392664, -4.40340955e-008, -1.62050128e-007, -1, 1.82080385e-007, 1.00000024, -1.61584467e-007, 1.00000012, -1.82716917e-007, -4.40340955e-008))
CreateMesh("SpecialMesh", Hitbox2, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 1))
for _,c in pairs(model2:children()) do
  if c.className == "Part" then
    table.insert(DBlade, c)
  end
end
for _,c in pairs(model2:children()) do
  if c.className == "Weld" then
    table.insert(DBladeWelds, c)
    print(c)
  end
end
Damagefunc = function(Part, hit, minim, maxim, knockback, Type, Property, Delay, HitSound, HitPitch)
  if hit.Parent == nil then
    return 
  end
  local h = hit.Parent:FindFirstChild("Humanoid")
  for _,v in pairs(hit.Parent:children()) do
    if v:IsA("Humanoid") then
      h = v
    end
  end
  if h ~= nil and hit.Parent.Name ~= Character.Name and hit.Parent:FindFirstChild("Torso") ~= nil then
    if hit.Parent:findFirstChild("DebounceHit") ~= nil and hit.Parent.DebounceHit.Value == true then
      return 
    end
    local c = Create("ObjectValue")({Name = "creator", Value = game:service("Players").LocalPlayer, Parent = h})
    game:GetService("Debris"):AddItem(c, 0.5)
    if HitSound ~= nil and HitPitch ~= nil then
      CreateSound(HitSound, hit, 1, HitPitch)
    end
    local Damage = math.random(minim, maxim)
    local blocked = false
    local block = hit.Parent:findFirstChild("Block")
    if block ~= nil and block.className == "IntValue" and block.Value > 0 then
      blocked = true
      block.Value = block.Value - 1
      print(block.Value)
    end
    if blocked == false then
      h.Health = h.Health - Damage
      ShowDamage(Part.CFrame * CFrame.new(0, 0, Part.Size.Z / 2).p + Vector3.new(0, 1.5, 0), -Damage, 1.5, Part.BrickColor.Color)
    else
      h.Health = h.Health - Damage / 2
      ShowDamage(Part.CFrame * CFrame.new(0, 0, Part.Size.Z / 2).p + Vector3.new(0, 1.5, 0), -Damage, 1.5, Part.BrickColor.Color)
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
      local bodvol = Create("BodyVelocity")({velocity = angle * knockback, P = 5000, maxForce = Vector3.new(8000, 8000, 8000), Parent = hit})
      local rl = Create("BodyAngularVelocity")({P = 3000, maxTorque = Vector3.new(500000, 500000, 500000) * 50000000000000, angularvelocity = Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10)), Parent = hit})
      game:GetService("Debris"):AddItem(bodvol, 0.5)
      game:GetService("Debris"):AddItem(rl, 0.5)
    else
      do
        if Type == "Normal" then
          local vp = Create("BodyVelocity")({P = 500, maxForce = Vector3.new(math.huge, 0, math.huge), velocity = Property.CFrame.lookVector * knockback + Property.Velocity / 1.05})
          if knockback > 0 then
            vp.Parent = hit.Parent.Torso
          end
          game:GetService("Debris"):AddItem(vp, 0.5)
        else
          do
            if Type == "Up" then
              local bodyVelocity = Create("BodyVelocity")({velocity = vt(0, 20, 0), P = 5000, maxForce = Vector3.new(8000, 8000, 8000), Parent = hit})
              game:GetService("Debris"):AddItem(bodyVelocity, 0.5)
            else
              do
                if Type == "DarkUp" then
                  coroutine.resume(coroutine.create(function()
    for i = 0, 1, 0.1 do
      swait()
      BlockEffect(BrickColor.new("Black"), hit.Parent.Torso.CFrame, 5, 5, 5, 1, 1, 1, 0.08, 1)
    end
  end
))
                  local bodyVelocity = Create("BodyVelocity")({velocity = vt(0, 20, 0), P = 5000, maxForce = Vector3.new(8000, 8000, 8000), Parent = hit})
                  game:GetService("Debris"):AddItem(bodyVelocity, 1)
                else
                  do
                    if Type == "Snare" then
                      local bp = Create("BodyPosition")({P = 2000, D = 100, maxForce = Vector3.new(math.huge, math.huge, math.huge), position = hit.Parent.Torso.Position, Parent = hit.Parent.Torso})
                      game:GetService("Debris"):AddItem(bp, 1)
                    else
                      do
                        if Type == "Freeze" then
                          local BodPos = Create("BodyPosition")({P = 50000, D = 1000, maxForce = Vector3.new(math.huge, math.huge, math.huge), position = hit.Parent.Torso.Position, Parent = hit.Parent.Torso})
                          local BodGy = Create("BodyGyro")({maxTorque = Vector3.new(400000, 400000, 400000) * math.huge, P = 20000, Parent = hit.Parent.Torso, cframe = hit.Parent.Torso.CFrame})
                          hit.Parent.Torso.Anchored = true
                          coroutine.resume(coroutine.create(function(Part)
    swait(1.5)
    Part.Anchored = false
  end
), hit.Parent.Torso)
                          game:GetService("Debris"):AddItem(BodPos, 3)
                          game:GetService("Debris"):AddItem(BodGy, 3)
                        end
                        do
                          local debounce = Create("BoolValue")({Name = "DebounceHit", Parent = hit.Parent, Value = true})
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

ShowDamage = function(Pos, Text, Time, Color)
  local Rate = 0.033333333333333
  if not Pos then
    local Pos = Vector3.new(0, 0, 0)
  end
  local Text = Text or ""
  local Time = Time or 2
  if not Color then
    local Color = Color3.new(1, 0, 1)
  end
  local EffectPart = CreatePart(effect, "SmoothPlastic", 0, 1, BrickColor.new(Color), "Effect", vt(0, 0, 0))
  EffectPart.Anchored = true
  local BillboardGui = Create("BillboardGui")({Size = UDim2.new(3, 0, 3, 0), Adornee = EffectPart, Parent = EffectPart})
  local TextLabel = Create("TextLabel")({BackgroundTransparency = 1, Size = UDim2.new(1, 0, 1, 0), Text = Text, TextColor3 = Color, TextScaled = true, Font = Enum.Font.ArialBold, Parent = BillboardGui})
  game.Debris:AddItem(EffectPart, Time + 0.1)
  EffectPart.Parent = game:GetService("Workspace")
  delay(0, function()
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

MagniDamage = function(Part, magni, mindam, maxdam, knock, Type)
  for _,c in pairs(workspace:children()) do
    local hum = c:findFirstChild("Humanoid")
    if hum ~= nil then
      local head = c:findFirstChild("Torso")
      if head ~= nil then
        local targ = head.Position - Part.Position
        local mag = targ.magnitude
        if mag <= magni and c.Name ~= Player.Name then
          Damagefunc(head, head, mindam, maxdam, knock, Type, RootPart, 0.1, "http://www.roblox.com/asset/?id=231917784", 1)
        end
      end
    end
  end
end

BlockEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type)
  local prt = CreatePart(effect, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
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
  local prt = CreatePart(effect, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = CreateMesh("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end

RingEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = CreatePart(effect, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe
  msh = CreateMesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=3270017", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 2)
  coroutine.resume(coroutine.create(function(Part, Mesh, num)
    for i = 0, 1, delay do
      swait()
      Part.Transparency = i
      Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
    end
    Part.Parent = nil
  end
), prt, msh, (math.random(0, 1) + math.random()) / 5)
end

CylinderEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = CreatePart(effect, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = CreateMesh("CylinderMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end

WaveEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = CreatePart(effect, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "rbxassetid://20329976", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end

SpecialEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = CreatePart(effect, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "rbxassetid://24388358", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end

CloudEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = CreatePart(effect, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "rbxassetid://1095708", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end

BreakEffect = function(brickcolor, cframe, x1, y1, z1)
  local prt = CreatePart(effect, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
  local msh = CreateMesh("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  local num = math.random(10, 50) / 1000
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Shatter", num, prt.CFrame, math.random() - math.random(), 0, math.random(50, 100) / 100})
end

battackone = function()
  attack = true
  local con = Hitbox2.Touched:connect(function(hit)
    Damagefunc(Hitbox2, hit, 5, 13, math.random(1, 5), "Normal", RootPart, 0.2, "rbxassetid://199149221", 0.8)
  end
)
  CreateSound("http://roblox.com/asset/?id=189505665", Hitbox2, 1, 0.85)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-100)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(100)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(-10), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(-30), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    FakeHandle2Weld.C0 = clerp(FakeHandle2Weld.C0, cf(0, 0, 0) * LHCF * angles(math.rad(0), math.rad(90), math.rad(-90)), 0.3)
  end
  CreateSound("http://roblox.com/asset/?id=189505662", Hitbox2, 1, 1)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(80)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(-80)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(50), math.rad(70)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(-100), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(-30), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    FakeHandle2Weld.C0 = clerp(FakeHandle2Weld.C0, cf(0, 0, 0) * LHCF * angles(math.rad(0), math.rad(100), math.rad(0)), 0.3)
  end
  attack = false
  con:disconnect()
end

HadesKnife = function()
  attack = true
  local con = Hitbox2.Touched:connect(function(hit)
    Damagefunc(Hitbox2, hit, 5, 10, math.random(1, 5), "Knockdown", RootPart, 0.2, "rbxassetid://199149221", 0.8)
  end
)
  CreateSound("http://www.roblox.com/asset/?id=233856146", Torso, 1, 1)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(80)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-20), math.rad(0), math.rad(-80)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(50), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(0)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(-30), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    FakeHandle2Weld.C0 = clerp(FakeHandle2Weld.C0, cf(0, 0, 0) * LHCF * angles(math.rad(0), math.rad(100), math.rad(0)), 0.3)
  end
  CreateSound("http://roblox.com/asset/?id=189505662", Hitbox2, 1, 1.2)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0 - 360 * i)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(80)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(-10), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-50)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(-30), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    FakeHandle2Weld.C0 = clerp(FakeHandle2Weld.C0, cf(0, 0, 0) * LHCF * angles(math.rad(0), math.rad(90), math.rad(-90)), 0.3)
  end
  CreateSound("http://roblox.com/asset/?id=189505662", Hitbox2, 1, 1.2)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0 - 360 * i)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(30), math.rad(0), math.rad(80)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(-10), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(-30), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    FakeHandle2Weld.C0 = clerp(FakeHandle2Weld.C0, cf(0, 0, 0) * LHCF * angles(math.rad(0), math.rad(90), math.rad(-90)), 0.3)
  end
  CreateSound("http://roblox.com/asset/?id=189505662", Hitbox2, 1, 1.2)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1) * angles(math.rad(40), math.rad(0), math.rad(-70)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-20), math.rad(-30), math.rad(70)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(20), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(-60)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(60), math.rad(-30)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, 0.2, 0) * angles(math.rad(0), math.rad(-40), math.rad(-60)), 0.3)
    FakeHandle2Weld.C0 = clerp(FakeHandle2Weld.C0, cf(0, 0, 0) * LHCF * angles(math.rad(0), math.rad(90), math.rad(-90)), 0.3)
  end
  con:disconnect()
  attack = false
end

HellFromAbove = function()
  attack = true
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1) * angles(math.rad(40), math.rad(0), math.rad(-70)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-20), math.rad(-30), math.rad(70)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(20), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(-60)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(60), math.rad(-30)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, 0.2, 0) * angles(math.rad(0), math.rad(-40), math.rad(-60)), 0.3)
    FakeHandle2Weld.C0 = clerp(FakeHandle2Weld.C0, cf(0, 0, 0) * LHCF * angles(math.rad(0), math.rad(90), math.rad(-90)), 0.3)
  end
  RingEffect(BrickColor.new("Black"), RootPart.CFrame * CFrame.new(0, -2.5, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0)), 2, 2, 0, 2, 2, 0, 0.05)
  RingEffect(BrickColor.new("Black"), RootPart.CFrame * CFrame.new(0, -2.5, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0)), 1, 1, 130, 0.5, 0.5, 130, 0.05)
  CreateSound("http://roblox.com/asset/?id=231917970", RootPart, 1, 1)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 100) * angles(math.rad(0), math.rad(0), math.rad(-55)), 0.37)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-30), math.rad(0), math.rad(0)), 0.37)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * angles(math.rad(15), math.rad(0), math.rad(15)), 0.37)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-10)) * angles(math.rad(30), math.rad(0), math.rad(0)), 0.37)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(30), math.rad(0)), 0.35)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(30), math.rad(0)), 0.35)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.37)
  end
  coroutine.resume(coroutine.create(function()
    invisle()
  end
))
end

spread = 0
range = 100
rangepower = 25
shoottrail3 = function(mouse, baseprt)
  coroutine.resume(coroutine.create(function(v)
    local spreadvector = Vector3.new(math.random(-spread, spread), math.random(-spread, spread), math.random(-spread, spread)) * baseprt.Position - mouse.Hit.p.magnitude / 100
    local dir = CFrame.new((baseprt.Position + mouse.Hit.p) / 2, mouse.Hit.p + spreadvector)
    local hit, pos = rayCast(baseprt.Position, dir.lookVector, 10, Character)
    local rangepos = range * 50
    local drawtrail = function(From, To)
      local effectsmsh = Instance.new("SpecialMesh")
      effectsmsh.Scale = Vector3.new(1, 1, 1)
      effectsmsh.Name = "Mesh"
      effectsmsh.MeshType = "Sphere"
      effectsmsh.Scale = Vector3.new(5, 5, 5)
      local effectsg = Instance.new("Part")
      effectsg.formFactor = 3
      effectsg.CanCollide = false
      effectsg.Name = "Eff"
      effectsg.Locked = true
      effectsg.Anchored = true
      effectsg.Size = Vector3.new(0.2, 0.2, 0.2)
      effectsg.Parent = effect
      effectsmsh.Parent = effectsg
      effectsg.BrickColor = BrickColor.new("Black")
      effectsg.Reflectance = 0.25
      local LP = From
      local point1 = To
      local mg = LP - point1.magnitude
      effectsmsh.Scale = Vector3.new(20, 20, 20)
      effectsg.CFrame = CFrame.new((LP + point1) / 2, point1) * CFrame.Angles(math.rad(90), 0, 0)
      coroutine.resume(coroutine.create(function()
        swait()
        effectsg.Parent = nil
      end
))
    end

    local newpos = baseprt.Position
    local inc = rangepower / 10
    repeat
      swait()
      rangepos = rangepos - 10
      hit = rayCast(newpos, dir.lookVector, inc, Character)
      drawtrail(newpos, pos)
      local list = (effect:children())
      local torso = nil
      local dist = 10
      local temp, human, temp2 = nil, nil, nil
      for x = 1, #list do
        temp2 = list[x]
        if temp2.className == "Model" and temp2.Name ~= Character.Name then
          temp = temp2:findFirstChild("Torso")
          human = temp2:findFirstChild("Humanoid")
          if temp ~= nil and human ~= nil and human.Health > 0 and temp.Position - pos.magnitude < dist then
            torso = temp
            dist = temp.Position - pos.magnitude
          end
        end
      end
      if torso ~= nil then
        dir = CFrame.new(pos, torso.Position)
      end
      newpos = newpos + dir.lookVector * inc
      if hit ~= nil then
        rangepos = 0
        if hit.Parent:FindFirstChild("Humanoid") ~= nil then
          hum = hit.Parent.Humanoid
          tTorso = hit.Parent.Torso
          MagniDamage(hit, 10, 10, 15, 0, "Knockdown")
          attackdebounce = false
        else
          if hit.Parent.Parent ~= nil and hit.Parent.Parent:FindFirstChild("Humanoid") ~= nil then
            hum = hit.Parent.Parent.Humanoid
            tTorso = hit.Parent.Parent.Torso
            MagniDamage(hit.Parent.Parent.Torso, 10, 10, 15, 0, "Knockdown")
            attackdebounce = false
          end
        end
        for i = 1, math.random(3, 6) do
          BreakEffect(BrickColor.new("Black"), CFrame.new(newpos), 0.5, math.random(5, 20), 0.5)
        end
        CreateSound("http://roblox.com/asset/?id=3264793", hit, 1, math.random() + math.random() + 1)
        SphereEffect(BrickColor.new("Black"), CFrame.new(newpos), 2, 2, 2, 3, 3, 3, 0.07)
        BlockEffect(BrickColor.new("Black"), CFrame.new(newpos), 2, 2, 2, 2, 2, 2, 0.07, 1)
      end
    until rangepos <= 0
  end
))
end

PlaySound = function(id, pitch, parent, volume)
  if volume == nil then
    volume = tonumber(1)
  end
  local epicsound = Instance.new("Sound")
  epicsound.Name = "Epicosound"
  epicsound.SoundId = "rbxassetid://" .. id
  epicsound.Volume = volume
  epicsound.Pitch = pitch
  epicsound.Looped = false
  epicsound.Parent = parent
  wait()
  epicsound:Play()
  game:service("Debris"):AddItem(epicsound, 8)
end

Shots = {263609809, 263609836, 263609864, 263609874, 263609898}
Shot = function(part)
  local shot = math.random(1, #Shots)
  PlaySound(Shots[shot], 1, part)
end

invisle = function()
  invisy = true
  Humanoid.WalkSpeed = 30
  coroutine.resume(coroutine.create(function()
    for i,v in pairs(Character:children()) do
      if v:IsA("BasePart") and v.Name ~= "HumanoidRootPart" then
        v.Transparency = 1
      end
      if v:IsA("Hat") then
        v.Handle.Transparency = 1
      end
      Head.face.Transparency = 1
    end
    for i,v in pairs(model2:children()) do
      if v:IsA("BasePart") then
        v.Transparency = 1
        Handle2.TransParency = 1
        FakeHandle2.TransParency = 1
      end
    end
  end
))
  coroutine.resume(coroutine.create(function()
    while invisy == true do
      wait(0.5)
      for i = 1, 3 do
        local orb = CreatePart(Character, "SmoothPlastic", 0, 0.5, BrickColor.new("Black"), "Orb", vt())
        orb.Anchored = true
        Shot(orb)
        local omsh = CreateMesh("SpecialMesh", orb, "Sphere", "", vt(0, 0, 0), vt(10, 10, 10))
        orb.CFrame = cf(RootPart.Position + vt(math.random(-10, 10), 1, math.random(-10, 10)))
        SphereEffect(BrickColor.new("Black"), orb.CFrame, 10, 10, 10, 1, 1, 1, 0.1)
        coroutine.resume(coroutine.create(function(Part, Mesh, Weld)
      wait(1)
      Part.Parent = nil
      local spread = vt(0, 0, 0) * (Part.Position - (Part.Position + vt(0, -1, 0))).magnitude / 100
      local TheHit = Part.Position + vt(0, -1, 0)
      local MouseLook = cf((Part.Position + TheHit) / 2, TheHit + spread)
      local hit, pos = rayCast(Part.Position, MouseLook.lookVector, 999, Character)
      local mag = Part.Position - pos.magnitude
      CylinderEffect(BrickColor.new("Black"), CFrame.new((Part.Position + pos) / 2, pos) * angles(1.57, 0, 0), 1, mag * 10, 1, 0.5, 100, 0.5, 0.05)
      RingEffect(BrickColor.new("Black"), cf(pos) * angles(1.57, math.random(-100, 100) / 100, math.random(-100, 100) / 100), 1, 1, 1, 2, 2, 2, 0.05)
      do
        local ref = CreatePart(effect, "SmoothPlastic", 0, 1, BrickColor.new("Black"), "Effect", vt())
        ref.CFrame = cf(pos)
        CreateSound("http://roblox.com/asset/?id=231917788", ref, 1, 1.4)
        coroutine.resume(coroutine.create(function(Part)
        wait(1)
        Part.Parent = nil
      end
), ref)
        MagniDamage(ref, 15, 5, 10, 0, "Normal")
        if hit ~= nil then
        end
      end
    end
), orb, omsh)
      end
      wait(0.5)
      local n = 2
      for i = 0, 1, 0.1 do
        wait()
        n = n - 0.1
      end
      RingEffect(BrickColor.new("Black"), RootPart.CFrame * CFrame.new(0, -2.5, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0)), 2, 2, 0, 2, 2, 0, 0.05)
    end
  end
))
  coroutine.resume(coroutine.create(function()
    while invisy == true do
      wait(0.1)
      Torso.Velocity = RootPart.CFrame.lookVector * 50
      WaveEffect(BrickColor.new("Black"), RootPart.CFrame * CFrame.new(0, -2.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 1, 1, 1, 0.5, 0.5, 0.5, 0.05)
    end
  end
))
  for i = 1, 100 do
    wait()
  end
  SphereEffect(BrickColor.new("Black"), RootPart.CFrame * CFrame.new(0, -2.5, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0)), 2, 2, 0, 2, 2, 0, 0.05)
  SphereEffect(BrickColor.new("Black"), RootPart.CFrame * CFrame.new(0, -2.5, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0)), 1, 1, 130, 0.5, 0.5, 130, 0.05)
  BlockEffect(BrickColor.new("Black"), RootPart.CFrame * CFrame.new(0, -2.5, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0)), 1, 1, 1, 1, 1, 1, 0.05, 1)
  CreateSound("http://roblox.com/asset/?id=231917806", Torso, 1, 1)
  MagniDamage(Hitbox, 10, 15, 25, 10, "Normal")
  coroutine.resume(coroutine.create(function()
    for i,v in pairs(Character:children()) do
      if v:IsA("BasePart") and v.Name ~= "HumanoidRootPart" then
        v.Transparency = 0
      end
      if v:IsA("Hat") then
        v.Handle.Transparency = 0
      end
      Head.face.Transparency = 0
    end
    for i,v in pairs(model2:children()) do
      if v:IsA("BasePart") then
        v.Transparency = 0
      end
    end
    Hitbox2.Transparency = 1
    Handle2.Transparency = 1
    FakeHandle2.Transparency = 1
  end
))
  Humanoid.WalkSpeed = 16
  attack = false
  invisy = false
end

battacktwo = function()
  attack = true
  local con = Hitbox2.Touched:connect(function(hit)
    Damagefunc(Hitbox2, hit, 5, 13, math.random(1, 5), "Normal", RootPart, 0.2, "rbxassetid://199149221", 0.8)
  end
)
  CreateSound("http://roblox.com/asset/?id=320557453", Handle2, 1, 1)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(80)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-20), math.rad(0), math.rad(-80)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(50), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(0)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(-30), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    FakeHandle2Weld.C0 = clerp(FakeHandle2Weld.C0, cf(0, 0, 0) * LHCF * angles(math.rad(0), math.rad(100), math.rad(0)), 0.3)
  end
  CreateSound("http://roblox.com/asset/?id=189505639", Hitbox2, 1, 0.85)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(80)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(-10), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(-30), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    FakeHandle2Weld.C0 = clerp(FakeHandle2Weld.C0, cf(0, 0, 0) * LHCF * angles(math.rad(0), math.rad(90), math.rad(-90)), 0.3)
  end
  attack = false
  con:disconnect()
end

HadesArrow = function()
  attack = true
  CreateSound("http://www.roblox.com/asset/?id=233856146", Torso, 1, 1)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-100)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(100)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(-10), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(-30), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    FakeHandle2Weld.C0 = clerp(FakeHandle2Weld.C0, cf(0, 0, 0) * LHCF * angles(math.rad(0), math.rad(90), math.rad(-90)), 0.3)
  end
  for i = 0, 1, 0.1 do
    swait()
    BlockEffect(BrickColor.new("Black"), LeftArm.CFrame * cf(0, 0, 0), 1, 1, 1, 1, 1, 1, 0.05)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-100)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(100)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(-10), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(-30), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    FakeHandle2Weld.C0 = clerp(FakeHandle2Weld.C0, cf(0, 0, 0) * LHCF * angles(math.rad(0), math.rad(90), math.rad(-90)), 0.3)
  end
  shoottrail3(mouse, LeftArm)
  attack = false
end

battackthree = function()
  attack = true
  CreateSound("http://www.roblox.com/asset/?id=233856146", Torso, 1, 1)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-100)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(100)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(-10), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(-30), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    FakeHandle2Weld.C0 = clerp(FakeHandle2Weld.C0, cf(0, 0, 0) * LHCF * angles(math.rad(0), math.rad(90), math.rad(-90)), 0.3)
  end
  coroutine.resume(coroutine.create(function()
    for i = 1, 1 do
      swait()
      local ef = CreatePart(effect, "SmoothPlastic", 0, 1, BrickColor.new("Black"), "Effect", vt())
      CreateSound("http://www.roblox.com/asset/?id=192410089", ef, 1, 1)
      ef.Anchored = true
      ef.CFrame = RootPart.CFrame * cf(0, 0, -7.5)
      MagniDamage(ef, 7, 10, 15, 10, "Knockdown")
      SphereEffect(BrickColor.new("Black"), RootPart.CFrame * cf(0, 0, -7.5), 1, 1, 1, 5, 5, 5, 0.05)
      game:GetService("Debris"):AddItem(ef, 0.5)
      WaveEffect(BrickColor.new("Black"), RootPart.CFrame * cf(0, -2, -7.5), 1, 1, 1, 1, 1, 1, 0.08)
    end
  end
))
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-10)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(10)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(-100), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(-30), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    FakeHandle2Weld.C0 = clerp(FakeHandle2Weld.C0, cf(0, 0, 0) * LHCF * angles(math.rad(0), math.rad(90), math.rad(-90)), 0.3)
  end
  attack = false
end

attackone = function()
  attack = true
  CreateSound("http://roblox.com/asset/?id=320557453", Handle, 1, 1)
  local con = Hitbox.Touched:connect(function(hit)
    Damagefunc(Hitbox, hit, 5, 13, math.random(5, 10), "Normal", RootPart, 0.2, "rbxassetid://199149221", 0.8)
  end
)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(20), math.rad(-20), math.rad(-80)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-20), math.rad(0), math.rad(80)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(50)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-0.8, 0.5, 0) * angles(math.rad(0), math.rad(30), math.rad(80)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * LHCF * angles(math.rad(30), math.rad(20), math.rad(90)), 0.3)
  end
  CreateSound("http://roblox.com/asset/?id=377357731", Handle, 1, 1)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(-20), math.rad(20), math.rad(80)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(-80)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-30), math.rad(100), math.rad(130)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(50), math.rad(80)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * LHCF * angles(math.rad(90), math.rad(90), math.rad(180)), 0.3)
  end
  con:disconnect()
  attack = false
end

attacktwo = function()
  attack = true
  local con = Hitbox.Touched:connect(function(hit)
    Damagefunc(Hitbox, hit, 5, 13, math.random(1, 5), "Normal", RootPart, 0.2, "rbxassetid://199149221", 0.8)
  end
)
  CreateSound("http://roblox.com/asset/?id=320557563", Handle, 1, 1)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(-20), math.rad(20), math.rad(80)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(-80)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-30), math.rad(100), math.rad(130)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(50), math.rad(80)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * LHCF * angles(math.rad(90), math.rad(90), math.rad(180)), 0.3)
  end
  CreateSound("http://roblox.com/asset/?id=377357731", Handle, 1, 1.1)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(20), math.rad(-20), math.rad(-80)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-20), math.rad(0), math.rad(80)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(50)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-0.8, 0.5, 0) * angles(math.rad(0), math.rad(30), math.rad(80)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * LHCF * angles(math.rad(30), math.rad(20), math.rad(90)), 0.3)
  end
  con:disconnect()
  attack = false
end

attackthree = function()
  attack = true
  local con = Hitbox.Touched:connect(function(hit)
    Damagefunc(Hitbox, hit, 5, 13, math.random(1, 10), "Knockdown", RootPart, 0.2, "rbxassetid://199149221", 0.8)
  end
)
  CreateSound("http://roblox.com/asset/?id=320557518", Handle, 1, 1)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(180), math.rad(0), math.rad(0)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(180), math.rad(50), math.rad(80)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * LHCF * angles(math.rad(-90), math.rad(90), math.rad(90)), 0.3)
  end
  CreateSound("http://roblox.com/asset/?id=377357731", Handle, 1, 0.9)
  for i = 0, 1, 0.5 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(50), math.rad(30), math.rad(0)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(50), math.rad(50), math.rad(80)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * LHCF * angles(math.rad(-90), math.rad(90), math.rad(90)), 0.3)
  end
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(30), math.rad(0)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(50), math.rad(80)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * LHCF * angles(math.rad(-90), math.rad(90), math.rad(90)), 0.3)
  end
  con:disconnect()
  CloudEffect(BrickColor.new("Black"), Hitbox.CFrame, 1, 1, 1, 0.5, 0.5, 0.5, 0.05)
  attack = false
end

BlackDeath = function()
  attack = true
  CreateSound("http://www.roblox.com/asset/?id=169445046", Handle, 1, 1)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(80)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(-10), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(-30), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0.7) * LHCF * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.3)
  end
  for i = 0, 1, 0.1 do
    swait()
    BlockEffect(BrickColor.new("Black"), LeftArm.CFrame, 5, 5, 5, 1, 1, 1, 0.07)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(-10), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-180)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(-30), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0.7) * LHCF * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.3)
  end
  n = 2
  local cf2 = RootPart.CFrame * cf(0, 500, -20)
  local ref = CreatePart(effect, "SmoothPlastic", 0, 1, BrickColor.new("Navy blue"), "Effect", vt())
  ref.CFrame = cf2
  ref.Anchored = true
  local TheHit = ref.Position + vt(0, -1, 0)
  local MouseLook = cf((ref.Position + TheHit) / 2, TheHit)
  local hit, pos = rayCast(ref.Position, MouseLook.lookVector, 999, Character)
  local ref2 = CreatePart(effect, "SmoothPlastic", 0, 1, BrickColor.new("Navy blue"), "Effect", vt())
  ref2.CFrame = cf(pos)
  ref2.Anchored = true
  local mag = (ref.Position - pos).magnitude
  CylinderEffect(BrickColor.new("Black"), CFrame.new((ref.Position + pos) / 2, pos) * angles(1.57, 0, 0), 5, mag * 5, 5, 1, 0, 1, 0.05)
  SphereEffect(BrickColor.new("Black"), ref2.CFrame, 15, 15, 15, 3, 3, 3, 0.02)
  BlockEffect(BrickColor.new("Black"), ref2.CFrame, 15, 15, 15, 2, 2, 2, 0.02)
  WaveEffect(BrickColor.new("Black"), ref2.CFrame, 5, 5, 5, 2, 2, 2, 0.05)
  RingEffect(BrickColor.new("Black"), cf(ref2.Position) * angles(1.57, 0, 0), 5, 5, 5, 1, 1, 1, 0.05)
  MagniDamage(ref2, 10, 10, 15, 30, "Knockdown")
  CreateSound("http://roblox.com/asset/?id=144844438", ref2, 1, 0.9)
  CreateSound("http://roblox.com/asset/?id=144844438", ref2, 1, 0.8)
  game:GetService("Debris"):AddItem(ref, 2)
  game:GetService("Debris"):AddItem(ref2, 2)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-20), math.rad(20), math.rad(70)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(-10), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-70)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(-30), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0.7) * LHCF * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.3)
  end
  attack = false
end

HadesHammer = function()
  attack = true
  local con = Hitbox.Touched:connect(function(hit)
    Damagefunc(Hitbox, hit, 10, 15, math.random(1, 5), "Normal", RootPart, 0.2, "rbxassetid://199149221", 0.8)
  end
)
  Humanoid.Jump = true
  CreateSound("http://roblox.com/asset/?id=320557563", Handle, 1, 1)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(180), math.rad(0), math.rad(0)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(180), math.rad(50), math.rad(80)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * LHCF * angles(math.rad(-90), math.rad(90), math.rad(90)), 0.3)
  end
  for i = 0, 1, 0.5 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(50), math.rad(30), math.rad(0)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(50), math.rad(50), math.rad(80)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * LHCF * angles(math.rad(-90), math.rad(90), math.rad(90)), 0.3)
  end
  for i = 0, 1, 0.2 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(30), math.rad(0)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(50), math.rad(80)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * LHCF * angles(math.rad(-90), math.rad(90), math.rad(90)), 0.3)
  end
  con:disconnect()
  hit = nil
  for i = 1, 1 do
    if hit == nil then
      swait()
    end
    hit = rayCast(RootPart.Position, RootPart.CFrame.lookVector, 6, Character)
  end
  local hit = nil
  while hit == nil do
    swait()
    hit = rayCast(Hitbox.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 10, Character)
  end
  hit = rayCast(Hitbox.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 10, Character)
  do
    if hit ~= nil then
      local ref = CreatePart(effect, "SmoothPlastic", 0, 0, BrickColor.new("Black"), "Effect", vt())
      ref.Anchored = true
      ref.CFrame = cf(pos)
      game:GetService("Debris"):AddItem(ref, 3)
      for i = 1, 10 do
        Col = hit.BrickColor
        local groundpart = CreatePart(effect, hit.Material, 0, 0, Col, "Ground", vt(math.random(50, 200) / 100, math.random(50, 200) / 100, math.random(50, 200) / 100))
        groundpart.Anchored = true
        groundpart.CanCollide = true
        groundpart.CFrame = cf(pos) * cf(math.random(-500, 500) / 100, 0, math.random(-500, 500) / 100) * angles(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
        game:GetService("Debris"):AddItem(groundpart, 5)
      end
      CreateSound("http://roblox.com/asset/?id=157878578", ref, 0.6, 1.2)
      WaveEffect(hit.BrickColor, cf(pos), 1, 1, 1, 0.7, 0.7, 0.7, 0.05)
      MagniDamage(ref, 9, 9, 13, math.random(10, 20), "Knockdown")
    end
    CloudEffect(BrickColor.new("Black"), Hitbox.CFrame, 1, 1, 1, 0.5, 3, 0.5, 0.05)
    CloudEffect(BrickColor.new("Black"), Hitbox.CFrame, 1, 1, 1, 1, 1, 1, 0.05)
    attack = false
  end
end

Beast = function()
  attack = true
  for i = 0, 1, 0.05 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(-20)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
    FakeHandle2Weld.C0 = clerp(FakeHandle2Weld.C0, cf(-3, 3, 1) * LHCF * angles(math.rad(80), math.rad(0), math.rad(-90)), 0.3)
  end
  CreateSound("http://www.roblox.com/asset/?id=192410062", RootPart, 1, 1)
  num = 0
  for i = 0, 1, 0.01 do
    swait()
    if num >= 10 then
      num = 0
      WaveEffect(BrickColor.new("Black"), cf(Torso.Position) * cf(0, -1, 0) * angles(0, math.random(-50, 50), 0), 1, 1, 1, 1, 0.5, 1, 0.05)
    end
    for i = 1, 2 do
      if math.random(1, 5) == 1 then
        BlockEffect(BrickColor.new("Black"), Hitbox2.CFrame * cf(math.random(-100, 100) / 100, -math.random(-700, 700) / 100, math.random(-100, 100) / 100), math.random(30, 80) / 100, math.random(30, 80) / 100, math.random(30, 80) / 100, 0.5, 0.5, 0.5, 0.05, 1)
      else
        BlockEffect(BrickColor.new("Really black"), Hitbox2.CFrame * cf(math.random(-100, 100) / 100, -math.random(-700, 700) / 100, math.random(-100, 100) / 100), math.random(30, 80) / 100, math.random(30, 80) / 100, math.random(30, 80) / 100, 0.5, 0.5, 0.5, 0.05, 1)
      end
    end
    num = num + 1
  end
  SphereEffect(BrickColor.new("Black"), Hitbox2.CFrame, 1, 5, 1, 2, 5, 2, 0.05)
  for i = 0, 1, 0.1 do
    swait()
  end
  model2.Parent = nil
  for i = 0, 1, 0.05 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(100), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(-100), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(-20)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
  end
  CreateSound("http://www.roblox.com/asset/?id=188959258", RootPart, 1, 1)
  SphereEffect(BrickColor.new("Black"), Hitbox.CFrame, 1, 5, 1, 2, 5, 2, 0.05)
  for i = 0, 1, 0.1 do
    swait()
  end
  model2.Parent = nil
  m.Parent = Character
  for i = 1, #Hammer do
    Hammer[i].Parent = m
    HammerWelds[i].Parent = Hammer[1]
  end
  for i = 0, 1, 0.05 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(-20)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(-3, 3, 1) * LHCF * angles(math.rad(80), math.rad(0), math.rad(-90)), 0.3)
  end
  WStyle = "Hammer"
  attack = false
end

Beauty = function()
  attack = true
  for i = 0, 1, 0.05 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(-20)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(-3, 3, 1) * LHCF * angles(math.rad(80), math.rad(0), math.rad(-90)), 0.3)
  end
  num = 0
  CreateSound("http://www.roblox.com/asset/?id=192410062", RootPart, 1, 1)
  for i = 0, 1, 0.01 do
    swait()
    if num >= 10 then
      num = 0
      WaveEffect(BrickColor.new("Black"), cf(Torso.Position) * cf(0, -1, 0) * angles(0, math.random(-50, 50), 0), 1, 1, 1, 1, 0.5, 1, 0.05)
    end
    for i = 1, 2 do
      if math.random(1, 5) == 1 then
        BlockEffect(BrickColor.new("Black"), FakeHandle.CFrame * cf(math.random(-100, 100) / 100, -math.random(-700, 700) / 100, math.random(-100, 100) / 100), math.random(30, 80) / 100, math.random(30, 80) / 100, math.random(30, 80) / 100, 0.5, 0.5, 0.5, 0.05, 1)
      else
        BlockEffect(BrickColor.new("Really black"), FakeHandle.CFrame * cf(math.random(-100, 100) / 100, -math.random(-700, 700) / 100, math.random(-100, 100) / 100), math.random(30, 80) / 100, math.random(30, 80) / 100, math.random(30, 80) / 100, 0.5, 0.5, 0.5, 0.05, 1)
      end
    end
    num = num + 1
  end
  CreateSound("http://www.roblox.com/asset/?id=243711369", RootPart, 1, 1)
  SphereEffect(BrickColor.new("Black"), FakeHandle.CFrame, 1, 5, 1, 2, 5, 2, 0.05)
  for i = 0, 1, 0.1 do
    swait()
  end
  m.Parent = nil
  for i = 0, 1, 0.05 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(100), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(-100), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(-20)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
  end
  CreateSound("http://www.roblox.com/asset/?id=188959258", RootPart, 1, 1)
  SphereEffect(BrickColor.new("Black"), FakeHandle.CFrame, 1, 5, 1, 2, 5, 2, 0.05)
  for i = 0, 1, 0.1 do
    swait()
  end
  m.Parent = nil
  model2.Parent = Character
  for i = 1, #DBlade do
    DBlade[i].Parent = model2
    DBladeWelds[i].Parent = DBlade[1]
  end
  m.Parent = nil
  for i = 0, 1, 0.05 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(-20)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
    FakeHandle2Weld.C0 = clerp(FakeHandle2Weld.C0, cf(-3, 3, 1) * LHCF * angles(math.rad(80), math.rad(0), math.rad(-90)), 0.3)
  end
  WStyle = "Blade"
  attack = false
end

HadesStorm = function()
  attack = true
  CreateSound("http://roblox.com/asset/?id=320557563", Handle, 1, 1)
  for i = 0, 1, 0.05 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(-30), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-30), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 1, 0) * angles(math.rad(180), math.rad(0), math.rad(-50)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 1, 0) * angles(math.rad(180), math.rad(50), math.rad(80)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(50)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * LHCF * angles(math.rad(-90), math.rad(90), math.rad(90)), 0.3)
  end
  for i = 0, 1, 0.5 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(50), math.rad(30), math.rad(0)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(50), math.rad(50), math.rad(80)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * LHCF * angles(math.rad(-90), math.rad(90), math.rad(90)), 0.3)
  end
  for i = 0, 1, 0.2 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(30), math.rad(0)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(50), math.rad(80)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * LHCF * angles(math.rad(-90), math.rad(90), math.rad(90)), 0.3)
  end
  hit = nil
  for i = 1, 1 do
    if hit == nil then
      swait()
    end
    hit = rayCast(RootPart.Position, RootPart.CFrame.lookVector, 6, Character)
  end
  local hit = nil
  while hit == nil do
    swait()
    hit = rayCast(Hitbox.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 10, Character)
  end
  hit = rayCast(Hitbox.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 10, Character)
  do
    if hit ~= nil then
      local ref = CreatePart(effect, "SmoothPlastic", 0, 0, BrickColor.new("Black"), "Effect", vt())
      ref.Anchored = true
      ref.CFrame = cf(pos)
      game:GetService("Debris"):AddItem(ref, 3)
      for i = 1, 10 do
        Col = hit.BrickColor
        local groundpart = CreatePart(effect, hit.Material, 0, 0, Col, "Ground", vt(math.random(50, 200) / 100, math.random(50, 200) / 100, math.random(50, 200) / 100))
        groundpart.Anchored = true
        groundpart.CanCollide = true
        groundpart.CFrame = cf(pos) * cf(math.random(-500, 500) / 100, 0, math.random(-500, 500) / 100) * angles(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
        game:GetService("Debris"):AddItem(groundpart, 5)
      end
      CreateSound("http://roblox.com/asset/?id=157878578", ref, 0.6, 1.2)
      WaveEffect(hit.BrickColor, cf(pos), 1, 1, 1, 0.7, 0.7, 0.7, 0.05)
      MagniDamage(ref, 9, 9, 13, math.random(10, 20), "Knockdown")
    end
    local numb = -8
    local basecf = RootPart.CFrame
    for i = 1, 4 do
      swait()
      local cf2 = basecf * cf(0, 0, numb)
      local ref = CreatePart(effect, "SmoothPlastic", 0, 1, BrickColor.new("Really black"), "Effect", vt())
      ref.CFrame = cf2
      ref.Anchored = true
      local TheHit = ref.Position + vt(0, -1, 0)
      local MouseLook = cf((ref.Position + TheHit) / 2, TheHit)
      local hit, pos = rayCast(ref.Position, MouseLook.lookVector, 999, Character)
      local ref2 = CreatePart(effect, "SmoothPlastic", 0, 1, BrickColor.new("Really black"), "Effect", vt())
      ref2.CFrame = cf(pos)
      ref2.Anchored = true
      SphereEffect(BrickColor.new("Really black"), ref2.CFrame, 15, 15, 15, 5, 5, 5, 0.02)
      WaveEffect(BrickColor.new("Really black"), ref2.CFrame, 5, 5, 5, 2, 2, 2, 0.05)
      MagniDamage(ref2, 20, 10, 15, math.random(5, 20), "Normal", RootPart)
      CreateSound("http://www.roblox.com/asset/?id=161006093", ref2, 1, 0.6)
      game:GetService("Debris"):AddItem(ref, 2)
      game:GetService("Debris"):AddItem(ref2, 2)
      numb = numb - 15
      wait(0.4)
    end
    CloudEffect(BrickColor.new("Black"), Hitbox.CFrame, 1, 1, 1, 1, 3, 1, 0.05)
    CloudEffect(BrickColor.new("Black"), Hitbox.CFrame, 1, 1, 1, 2, 1, 2, 0.05)
    attack = false
  end
end

ob1u = function()
end

ob1d = function()
  if WStyle == "Hammer" then
    if attack == false and attacktype == 1 then
      attacktype = 2
      attackone()
    else
      if attack == false and attacktype == 2 then
        attacktype = 3
        attacktwo()
      else
        if attack == false and attacktype == 3 then
          attacktype = 1
          attackthree()
        end
      end
    end
  end
  if WStyle == "Blade" then
    if attack == false and attacktype2 == 1 then
      attacktype2 = 2
      battackone()
    else
      if attack == false and attacktype2 == 2 then
        attacktype2 = 3
        battacktwo()
      else
        if attack == false and attacktype2 == 3 then
          attacktype2 = 1
          battackthree()
        end
      end
    end
  end
end

key = function(k)
  k = k:lower()
  if attack == false and k == "z" and zenabled == true and mana >= 15 then
    zenabled = false
    mana = mana
    coroutine.resume(coroutine.create(function()
    for i = 1, 0, -0.02 do
      swait()
      fenframe1a.Size = UDim2.new(0.05 * i, 0, 0.1, 0)
    end
    zenabled = true
    fenframe1a.Size = UDim2.new(0, 0, 0.1, 0)
  end
))
    if WStyle == "Hammer" then
      --HadesHammer()
    else
      if WStyle == "Blade" then
        HadesKnife()
      end
    end
  else
    if attack == false and k == "x" and mana >= 25 and xenabled == true then
      xenabled = false
      mana = mana
      coroutine.resume(coroutine.create(function()
    for i = 1, 0, -0.0025 do
      swait()
      fenframe2a.Size = UDim2.new(0.05 * i, 0, 0.1, 0)
    end
    xenabled = true
    fenframe2a.Size = UDim2.new(0, 0, 0.1, 0)
  end
))
      if WStyle == "Hammer" then
        BlackDeath()
      else
        if WStyle == "Blade" then
          HellFromAbove()
        end
      end
    else
      if attack == false and k == "c" and mana >= 35 and cenabled == true then
        cenabled = false
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
        if WStyle == "Hammer" then
          --HadesStorm()
        else
          if WStyle == "Blade" then
            HadesArrow()
          end
        end
      else
        if attack == false and k == "v" and mana >= 25 and venabled == true then
          venabled = false
          mana = mana
          coroutine.resume(coroutine.create(function()
    for i = 1, 0, -0.025 do
      swait()
      fenframe4a.Size = UDim2.new(0.05 * i, 0, 0.1, 0)
    end
    venabled = true
    fenframe4a.Size = UDim2.new(0, 0, 0.1, 0)
  end
))
          if WStyle == "Hammer" then
            Beauty()
          else
            if WStyle == "Blade" then
              Beast()
            end
          end
        end
      end
    end
  end
end

Bin = Instance.new("HopperBin", Player.Backpack)
ds = function(mouse)
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
      swait()
      Torsovelocity = RootPart.Velocity * Vector3.new(1, 0, 1).magnitude
      torvel = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude
      velocity = RootPart.Velocity.y
      sine = sine + change
      local hit, pos = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 4, Character)
      if equipped == true or equipped == false then
        if 1 < RootPart.Velocity.y and hit == nil then
          Anim = "Jump"
          if attack == false then
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.3)
            RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(-10), math.rad(90)), 0.3)
            LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
            RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(-30), math.rad(0)), 0.3)
            LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
            FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0.7) * LHCF * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.3)
          end
        else
          if RootPart.Velocity.y < -1 and hit == nil then
            Anim = "Fall"
            if attack == false then
              RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
              Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
              RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(-10), math.rad(90)), 0.3)
              LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
              RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(-30), math.rad(0)), 0.3)
              LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
              FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0.7) * LHCF * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.3)
            end
          else
            if torvel<1 and hit~=nil then
              Anim = "Idle"
              if attack == false then
                if WStyle == "Hammer" then
                  change = 1
                  RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(30)), 0.3)
                  Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(-30)), 0.3)
                  RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(-10), math.rad(90)), 0.3)
                  LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
                  RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(-30), math.rad(0)), 0.3)
                  LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
                  FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0.7) * LHCF * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.3)
                else
                  if WStyle == "Blade" then
                    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-50)), 0.3)
                    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(50)), 0.3)
                    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(-10), math.rad(80)), 0.3)
                    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
                    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(-30), math.rad(0)), 0.3)
                    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
                    FakeHandle2Weld.C0 = clerp(FakeHandle2Weld.C0, cf(0, 0, 0) * LHCF * angles(math.rad(0), math.rad(90), math.rad(-50)), 0.3)
                  end
                end
              end
            else
              if torvel>2 and torvel<22 and hit~=nil then
                Anim = "Walk"
                if attack == false then
                  if WStyle == "Hammer" then
                    change = 1
                    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
                    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.3)
                    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(0)), 0.3)
                    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(50), math.rad(80)), 0.3)
                    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
                    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
                    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * LHCF * angles(math.rad(70), math.rad(0), math.rad(180)), 0.3)
                  else
                    if WStyle == "Blade" then
                      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
                      Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
                      RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(-10), math.rad(80)), 0.3)
                      LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
                      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
                      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
                      FakeHandle2Weld.C0 = clerp(FakeHandle2Weld.C0, cf(0, 0, 0) * LHCF * angles(math.rad(0), math.rad(90), math.rad(-50)), 0.3)
                    end
                  end
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
        fenbarmana4.Text = "[Hate]  <{[  " .. mana .. "  ]}> [Hate]"
        if 100 <= mana then
          mana = 100
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