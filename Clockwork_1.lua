wait(0.016666666666667)
Effects = {}
ShootEffects = {}
local Player = game.Players.localPlayer
local Character = Player.Character
local Humanoid = Character.Humanoid
local mouse = Player:GetMouse()
local m = Instance.new("Model", Character)
m.Name = "WeaponModel"
local effect = Instance.new("Model", Character)
effect.Name = "Effect"
local LeftArm = Character["Left Arm"]
local RightArm = Character["Right Arm"]
local LeftLeg = Character["Left Leg"]
local RightLeg = Character["Right Leg"]
local heal = true
local Head = Character.Head
local Torso = Character.Torso
local fathermode = false
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
local mana = 0
local it = Instance.new
vt = Vector3.new
local grabbed = false
local cf = CFrame.new
local mr = math.rad
local angles = CFrame.Angles
local ud = UDim2.new
local c3 = Color3.new
local NeckCF = cf(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
Humanoid.Animator:Destroy()
Character.Animate:Destroy()
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
local co1 = 30
local co2 = 30
local co3 = 30
local co4 = 60
local cooco = 5
local cooldown1 = 0
local cooldown2 = 0
local cooldown3 = 0
local cooldown4 = 0
local coolcool = 0
local maxEnergy = 100
local Energy = 0
local skill1stam = 10
local skill2stam = 50
local skill3stam = 60
local skill4stam = 100
local skill5stam = 100
local recovermana = 5
local skillcolorscheme = BrickColor.new("Bright yellow").Color
local scrn = Instance.new("ScreenGui", Player.PlayerGui)
makeframe = function(par, trans, pos, size, color)
  local frame = Instance.new("Frame", par)
  frame.BackgroundTransparency = trans
  frame.BorderSizePixel = 0
  frame.Position = pos
  frame.Size = size
  frame.BackgroundColor3 = color
  return frame
end

makelabel = function(par, text)
  local label = Instance.new("TextLabel", par)
  label.BackgroundTransparency = 1
  label.Size = UDim2.new(1, 0, 1, 0)
  label.Position = UDim2.new(0, 0, 0, 0)
  label.TextColor3 = Color3.new(255, 255, 255)
  label.TextStrokeTransparency = 0
  label.FontSize = Enum.FontSize.Size32
  label.Font = Enum.Font.SourceSansBold
  label.BorderSizePixel = 0
  label.TextScaled = true
  label.Text = text
end

framesk1 = makeframe(scrn, 0.5, UDim2.new(0.8, 0, 0.85, 0), UDim2.new(0.16, 0, 0.1, 0), skillcolorscheme)
framesk2 = makeframe(scrn, 0.5, UDim2.new(0.8, 0, 0.74, 0), UDim2.new(0.16, 0, 0.1, 0), skillcolorscheme)
framesk3 = makeframe(scrn, 0.5, UDim2.new(0.8, 0, 0.63, 0), UDim2.new(0.16, 0, 0.1, 0), skillcolorscheme)
framesk4 = makeframe(scrn, 0.5, UDim2.new(0.8, 0, 0.52, 0), UDim2.new(0.16, 0, 0.1, 0), skillcolorscheme)
bar1 = makeframe(framesk1, 0, UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0), skillcolorscheme)
bar2 = makeframe(framesk2, 0, UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0), skillcolorscheme)
bar3 = makeframe(framesk3, 0, UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0), skillcolorscheme)
bar4 = makeframe(framesk4, 0, UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0), skillcolorscheme)
text1 = Instance.new("TextLabel", framesk1)
text1.BackgroundTransparency = 1
text1.Size = UDim2.new(1, 0, 1, 0)
text1.Position = UDim2.new(0, 0, 0, 0)
text1.TextColor3 = Color3.new(255, 255, 255)
text1.TextStrokeTransparency = 0
text1.FontSize = Enum.FontSize.Size18
text1.Font = Enum.Font.SourceSansBold
text1.BorderSizePixel = 0
text1.TextScaled = true
text1.Text = "[Z]\n Spacial Wave"
text2 = Instance.new("TextLabel", framesk2)
text2.BackgroundTransparency = 1
text2.Size = UDim2.new(1, 0, 1, 0)
text2.Position = UDim2.new(0, 0, 0, 0)
text2.TextColor3 = Color3.new(255, 255, 255)
text2.TextStrokeTransparency = 0
text2.FontSize = Enum.FontSize.Size18
text2.Font = Enum.Font.SourceSansBold
text2.BorderSizePixel = 0
text2.TextScaled = true
text2.Text = "[X]\n Clockwork"
text3 = Instance.new("TextLabel", framesk3)
text3.BackgroundTransparency = 1
text3.Size = UDim2.new(1, 0, 1, 0)
text3.Position = UDim2.new(0, 0, 0, 0)
text3.TextColor3 = Color3.new(255, 255, 255)
text3.TextStrokeTransparency = 0
text3.FontSize = Enum.FontSize.Size18
text3.Font = Enum.Font.SourceSansBold
text3.BorderSizePixel = 0
text3.TextScaled = false
text3.Text = "[C]\n Counter Clockwork"
text4 = Instance.new("TextLabel", framesk4)
text4.BackgroundTransparency = 1
text4.Size = UDim2.new(1, 0, 1, 0)
text4.Position = UDim2.new(0, 0, 0, 0)
text4.TextColor3 = Color3.new(255, 255, 255)
text4.TextStrokeTransparency = 0
text4.FontSize = Enum.FontSize.Size18
text4.Font = Enum.Font.SourceSansBold
text4.BorderSizePixel = 0
text4.TextScaled = true
text4.Text = "[V]\n Spacial Trigger"
clerp = function(a, b, t)
  return a:lerp(b, t)
end

BPos = Instance.new("BodyPosition")
Gy = Instance.new("BodyGyro")
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
frame = 0.033333333333333
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

Bin = Instance.new("HopperBin")
Bin.Name = "Grandfather"
Bin.Parent = Player.Backpack
Handle = CreatePart(m, Enum.Material.Wood, 0, 1, "Nougat", "Handle", Vector3.new(0.477256775, 2.77322483, 0.358406067))
HandleWeld = CreateWeld(m, Character["Right Arm"], Handle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.917230606, -0.336982727, 0.0267496109, 0.0146199018, -0.999585748, -0.0247930363, -0.00398003776, 0.0247373134, -0.999686062, 0.999885201, 0.0147139886, -0.00361673185))
FakeHandle = CreatePart(m, Enum.Material.Wood, 0, 1, "Nougat", "FakeHandle", Vector3.new(0.477256775, 2.77322483, 0.358406067))
FakeHandleWeld = CreateWeld(m, Handle, FakeHandle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0, 0, 1.00000012, -5.89352567e-010, 0, -5.89352567e-010, 1, 0, 0, 0, 1))
HOH = CreatePart(m, Enum.Material.WoodPlanks, 0, 0, "Reddish brown", "HOH", Vector3.new(0.679864764, 0.46004653, 0.400796741))
HOHWeld = CreateWeld(m, FakeHandle, HOH, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00572681427, -1.64068174, 1.11921883, 7.35279173e-006, 1.11339614e-006, 1, -1.00000012, -3.61214916e-008, 7.35279173e-006, 3.73620423e-008, -1, 1.11339614e-006))
CreateMesh("SpecialMesh", HOH, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Blade = CreatePart(m, Enum.Material.SmoothPlastic, 0.050000000745058, 0, "Institutional white", "Blade", Vector3.new(0.200000003, 1, 0.353594959))
BladeWeld = CreateWeld(m, FakeHandle, Blade, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0050983429, -8.96669006, 0.228179216, 7.44499266e-006, 1.05332583e-006, 1, 3.48280082e-006, 1, -1.05379149e-006, -1.00000012, 3.48209869e-006, 7.44499266e-006))
CreateMesh("SpecialMesh", Blade, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.200000003, 1, 1))
Blade = CreatePart(m, Enum.Material.SmoothPlastic, 0.050000000745058, 0, "Institutional white", "Blade", Vector3.new(0.200000003, 1, 0.353594959))
BladeWeld = CreateWeld(m, FakeHandle, Blade, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0050983429, -4.9795022, 0.684683323, 7.44499266e-006, 1.05332583e-006, 1, 3.48280082e-006, 1, -1.05379149e-006, -1.00000012, 3.48209869e-006, 7.44499266e-006))
CreateMesh("SpecialMesh", Blade, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.200000003, 1, 1))
Blade = CreatePart(m, Enum.Material.SmoothPlastic, 0.050000000745058, 0, "Institutional white", "Blade", Vector3.new(5.57014322, 0.817294657, 0.200000003))
BladeWeld = CreateWeld(m, FakeHandle, Blade, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.68231773, 0.00500679016, -0.00487709045, 3.37510937e-006, 1, -9.31322575e-009, 1, -3.37597521e-006, 5.68106771e-008, 5.68106771e-008, -9.31322575e-009, -1))
CreateMesh("BlockMesh", Blade, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.200000003))
Blade = CreatePart(m, Enum.Material.SmoothPlastic, 0.050000000745058, 0, "Institutional white", "Blade", Vector3.new(1.57014322, 0.349998832, 0.200000003))
BladeWeld = CreateWeld(m, FakeHandle, Blade, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.69556332, -0.68505168, -0.00483703613, 3.37510937e-006, 1, -9.31322575e-009, 1, -3.37597521e-006, 5.68106771e-008, 5.68106771e-008, -9.31322575e-009, -1))
CreateMesh("BlockMesh", Blade, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.200000003))
Blade = CreatePart(m, Enum.Material.SmoothPlastic, 0.050000000745058, 0, "Institutional white", "Blade", Vector3.new(1.57014322, 0.349998832, 0.200000003))
BladeWeld = CreateWeld(m, FakeHandle, Blade, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.69665408, -0.695738554, 0.00509262085, 3.30659168e-006, 1, 1.90921128e-008, -1.00000012, 3.30550756e-006, -1.34110451e-007, -1.34110451e-007, -1.90921128e-008, 1))
CreateMesh("BlockMesh", Blade, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.200000003))
Blade = CreatePart(m, Enum.Material.SmoothPlastic, 0.050000000745058, 0, "Institutional white", "Blade", Vector3.new(0.200000003, 0.941481948, 0.860229492))
BladeWeld = CreateWeld(m, FakeHandle, Blade, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00510692596, 2.87387466, 6.09407234, 7.21216202e-006, 1.08126551e-006, 1, -0.866027534, -0.499996722, 6.7865476e-006, 0.499996692, -0.866027296, -2.6691705e-006))
CreateMesh("SpecialMesh", Blade, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.200000003, 1, 1))
Blade = CreatePart(m, Enum.Material.SmoothPlastic, 0.050000000745058, 0, "Institutional white", "Blade", Vector3.new(0.200000003, 0.641481936, 0.56022948))
BladeWeld = CreateWeld(m, FakeHandle, Blade, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00511646271, 3.48990178, 7.02666473, -7.13951886e-006, -1.13993883e-006, -1, 0.8660267, -0.499997914, -5.61401248e-006, -0.499997914, -0.86602658, 4.55672853e-006))
CreateMesh("SpecialMesh", Blade, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.200000003, 1, 1))
Blade = CreatePart(m, Enum.Material.SmoothPlastic, 0.050000000745058, 0, "Institutional white", "Blade", Vector3.new(0.200000003, 1, 0.353594959))
BladeWeld = CreateWeld(m, FakeHandle, Blade, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00511360168, -8.96674061, 0.237493038, -7.27642328e-006, -1.11525878e-006, -1, 3.48190224e-006, 1, -1.11525878e-006, 1.00000012, -3.48091271e-006, -7.27549195e-006))
CreateMesh("SpecialMesh", Blade, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.200000003, 1, 1))
Blade = CreatePart(m, Enum.Material.SmoothPlastic, 0.050000000745058, 0, "Institutional white", "Blade", Vector3.new(0.200000003, 0.641481936, 0.56022948))
BladeWeld = CreateWeld(m, FakeHandle, Blade, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0050945282, 3.47378445, 7.02349615, 7.21216202e-006, 1.08126551e-006, 1, -0.866027534, -0.499996722, 6.7865476e-006, 0.499996692, -0.866027296, -2.6691705e-006))
CreateMesh("SpecialMesh", Blade, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.200000003, 1, 1))
Blade = CreatePart(m, Enum.Material.SmoothPlastic, 0.050000000745058, 0, "Institutional white", "Blade", Vector3.new(0.200000003, 1, 0.353594959))
BladeWeld = CreateWeld(m, FakeHandle, Blade, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00488471985, -4.98064041, 0.698008537, -7.27642328e-006, -1.11525878e-006, -1, 3.35894219e-006, 1, -1.11525878e-006, 1, -3.36169614e-006, -7.27642328e-006))
CreateMesh("SpecialMesh", Blade, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.200000003, 1, 1))
Blade = CreatePart(m, Enum.Material.SmoothPlastic, 0.050000000745058, 0, "Institutional white", "Blade", Vector3.new(0.200000003, 0.941481948, 0.860229492))
BladeWeld = CreateWeld(m, FakeHandle, Blade, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0050983429, 2.88990903, 6.09728765, -7.13951886e-006, -1.13993883e-006, -1, 0.8660267, -0.499997914, -5.61401248e-006, -0.499997914, -0.86602658, 4.55672853e-006))
CreateMesh("SpecialMesh", Blade, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.200000003, 1, 1))
Brick = CreatePart(m, Enum.Material.WoodPlanks, 0, 0, "Dark orange", "Brick", Vector3.new(0.650844634, 0.250822067, 0.395874023))
BrickWeld = CreateWeld(m, FakeHandle, Brick, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.51098108, -0.880820751, -0.003865242, 0.173646629, -0.984808028, -1.53668225e-008, -0.984808087, -0.173646629, 1.95577741e-008, -2.14204192e-008, 1.21071935e-008, -1))
CreateMesh("BlockMesh", Brick, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.5))
Brick = CreatePart(m, Enum.Material.WoodPlanks, 0, 0, "Pastel brown", "Brick", Vector3.new(0.200000003, 2.21729469, 0.200000003))
BrickWeld = CreateWeld(m, FakeHandle, Brick, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.36750317, 0.00500869751, 0.307844162, 3.37510937e-006, 1, -9.31322575e-009, 1, -3.37597521e-006, 5.68106771e-008, 5.68106771e-008, -9.31322575e-009, -1))
CreateMesh("BlockMesh", Brick, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 0.5))
Brick = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Brick", Vector3.new(0.338651776, 0.200000048, 0.200000003))
BrickWeld = CreateWeld(m, FakeHandle, Brick, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.58918595, -0.825012684, -0.258746147, -0.422618717, 0.906307638, 9.31322575e-009, 0.906307578, 0.422618657, 5.12227416e-008, 4.28408384e-008, 3.02679837e-008, -1))
CreateMesh("BlockMesh", Brick, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.200000003, 1))
Brick = CreatePart(m, Enum.Material.WoodPlanks, 0, 0, "Reddish brown", "Brick", Vector3.new(0.650844634, 0.250822067, 0.395874023))
BrickWeld = CreateWeld(m, FakeHandle, Brick, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.47637272, -0.954310417, -0.00386238098, 0.173646629, -0.984808028, -1.53668225e-008, -0.984808087, -0.173646629, 1.95577741e-008, -2.14204192e-008, 1.21071935e-008, -1))
CreateMesh("BlockMesh", Brick, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Brick = CreatePart(m, Enum.Material.Neon, 0, 0, "Really black", "Brick", Vector3.new(0.200000003, 1.97606087, 0.380152881))
BrickWeld = CreateWeld(m, FakeHandle, Brick, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.97743416, -0.0480852127, -0.00672149658, 3.37510937e-006, 1, -9.31322575e-009, 1, -3.37597521e-006, 5.68106771e-008, 5.68106771e-008, -9.31322575e-009, -1))
CreateMesh("BlockMesh", Brick, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Brick = CreatePart(m, Enum.Material.WoodPlanks, 0, 0, "Reddish brown", "Brick", Vector3.new(0.317633063, 0.400239944, 0.689682007))
BrickWeld = CreateWeld(m, FakeHandle, Brick, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.23507023, -1.11952925, -0.0038433075, -1.00000012, 8.07631295e-010, -5.49480319e-008, 7.42147677e-010, 1, -3.63215804e-008, 5.49480319e-008, -3.63215804e-008, -1))
CreateMesh("BlockMesh", Brick, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Brick = CreatePart(m, Enum.Material.WoodPlanks, 0, 0, "Reddish brown", "Brick", Vector3.new(2.13286591, 2.21729469, 0.689682007))
BrickWeld = CreateWeld(m, FakeHandle, Brick, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.98552871, 0.00498652458, -0.00389671326, 3.37510937e-006, 1, -9.31322575e-009, 1, -3.37597521e-006, 5.68106771e-008, 5.68106771e-008, -9.31322575e-009, -1))
CreateMesh("BlockMesh", Brick, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Brick = CreatePart(m, Enum.Material.WoodPlanks, 0, 0, "Reddish brown", "Brick", Vector3.new(0.532866001, 2.21729469, 0.200000003))
BrickWeld = CreateWeld(m, FakeHandle, Brick, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.30028415, 0.00499033928, -0.249515533, 3.37510937e-006, 1, -9.31322575e-009, 1, -3.37597521e-006, 5.68106771e-008, 5.68106771e-008, -9.31322575e-009, -1))
CreateMesh("BlockMesh", Brick, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Brick = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Brick", Vector3.new(0.502778053, 0.200000048, 0.689682007))
BrickWeld = CreateWeld(m, FakeHandle, Brick, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.69430351, -0.00478291512, -0.013874054, 3.37510937e-006, 1, -9.31322575e-009, 1, -3.37597521e-006, 5.68106771e-008, 5.68106771e-008, -9.31322575e-009, -1))
CreateMesh("BlockMesh", Brick, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.200000003, 1))
Brick = CreatePart(m, Enum.Material.WoodPlanks, 0, 0, "Pastel brown", "Brick", Vector3.new(0.200000003, 2.21729469, 0.200000003))
BrickWeld = CreateWeld(m, FakeHandle, Brick, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.08614397, 0.00501132011, 0.307808876, 3.37510937e-006, 1, -9.31322575e-009, 1, -3.37597521e-006, 5.68106771e-008, 5.68106771e-008, -9.31322575e-009, -1))
CreateMesh("BlockMesh", Brick, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 0.5))
Brick = CreatePart(m, Enum.Material.WoodPlanks, 0, 0, "Reddish brown", "Brick", Vector3.new(0.524063587, 0.335916519, 0.200000003))
BrickWeld = CreateWeld(m, FakeHandle, Brick, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.30183053, -0.000645637512, 1.00398433, 3.37510937e-006, 1, -9.31322575e-009, -7.4384734e-006, -9.31322575e-009, -1, -1.00000012, 3.37594975e-006, 7.43940473e-006))
CreateMesh("BlockMesh", Brick, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Brick = CreatePart(m, Enum.Material.WoodPlanks, 0, 0, "Pastel brown", "Brick", Vector3.new(0.200000003, 2.21729469, 0.200000003))
BrickWeld = CreateWeld(m, FakeHandle, Brick, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.36755681, 0.00498557091, -0.312952995, 3.37510937e-006, 1, -9.31322575e-009, 1, -3.37597521e-006, 5.68106771e-008, 5.68106771e-008, -9.31322575e-009, -1))
CreateMesh("BlockMesh", Brick, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 0.5))
Brick = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Brick", Vector3.new(0.502778053, 0.200000048, 0.689682007))
BrickWeld = CreateWeld(m, FakeHandle, Brick, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.71072197, -0.00480389595, 0.0152854919, 3.37510937e-006, 1, -9.31322575e-009, 1, -3.37597521e-006, 5.68106771e-008, 5.68106771e-008, -9.31322575e-009, -1))
CreateMesh("BlockMesh", Brick, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.200000003, 1))
Brick = CreatePart(m, Enum.Material.WoodPlanks, 0, 0, "Pastel brown", "Brick", Vector3.new(0.200000003, 2.21729469, 0.200000003))
BrickWeld = CreateWeld(m, FakeHandle, Brick, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.08625245, 0.00499033928, -0.312912941, 3.37510937e-006, 1, -9.31322575e-009, 1, -3.37597521e-006, 5.68106771e-008, 5.68106771e-008, -9.31322575e-009, -1))
CreateMesh("BlockMesh", Brick, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 0.5))
Brick = CreatePart(m, Enum.Material.WoodPlanks, 0, 0, "Reddish brown", "Brick", Vector3.new(0.317633063, 0.400239944, 0.689682007))
BrickWeld = CreateWeld(m, FakeHandle, Brick, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.25177789, -1.1197319, 0.00385475159, 1.00000012, -1.0986696e-009, 1.27591193e-007, -9.09494702e-011, 1, 3.3993274e-008, -1.27591193e-007, -3.3993274e-008, 1))
CreateMesh("BlockMesh", Brick, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Brick = CreatePart(m, Enum.Material.WoodPlanks, 0, 0, "Reddish brown", "Brick", Vector3.new(1, 0.250822067, 0.399787903))
BrickWeld = CreateWeld(m, FakeHandle, Brick, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00904488564, 1.2808733, -0.00479793549, -1.00000012, 5.89352567e-010, 0, -5.89352567e-010, 1, 0, 0, 0, -1))
CreateMesh("BlockMesh", Brick, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Brick = CreatePart(m, Enum.Material.WoodPlanks, 0, 0, "Reddish brown", "Brick", Vector3.new(0.532866001, 2.21729469, 0.200000003))
BrickWeld = CreateWeld(m, FakeHandle, Brick, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.29951692, 0.00499510765, 0.240923882, 3.37510937e-006, 1, -9.31322575e-009, 1, -3.37597521e-006, 5.68106771e-008, 5.68106771e-008, -9.31322575e-009, -1))
CreateMesh("BlockMesh", Brick, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Brick = CreatePart(m, Enum.Material.WoodPlanks, 0, 0, "Dark orange", "Brick", Vector3.new(0.394547284, 0.250822067, 0.396949768))
BrickWeld = CreateWeld(m, FakeHandle, Brick, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.11045933, 1.03746223, -0.00482940674, -0.906309247, -0.422615081, -6.51925802e-008, -0.422615111, 0.906309187, 4.65661287e-009, 5.68106771e-008, 3.16649675e-008, -1))
CreateMesh("BlockMesh", Brick, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.5))
Brick = CreatePart(m, Enum.Material.WoodPlanks, 0, 0, "Dark orange", "Brick", Vector3.new(0.394547284, 0.250822067, 0.399414063))
BrickWeld = CreateWeld(m, FakeHandle, Brick, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.06145144, 1.04123783, -0.00479507446, -0.906308949, 0.422615945, -4.65661287e-008, 0.422616005, 0.906308949, 1.55996531e-008, 5.0291419e-008, -6.05359674e-009, -1))
CreateMesh("BlockMesh", Brick, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.5))
Brick = CreatePart(m, Enum.Material.Neon, 0, 0, "Really black", "Brick", Vector3.new(0.532866001, 0.335916519, 0.200000003))
BrickWeld = CreateWeld(m, FakeHandle, Brick, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.27660346, -0.000638008118, 0.986061931, 3.37510937e-006, 1, -9.31322575e-009, -7.4384734e-006, -9.31322575e-009, -1, -1.00000012, 3.37594975e-006, 7.43940473e-006))
CreateMesh("BlockMesh", Brick, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Brick = CreatePart(m, Enum.Material.WoodPlanks, 0, 0, "Dark orange", "Brick", Vector3.new(0.650844634, 0.250822067, 0.395874023))
BrickWeld = CreateWeld(m, FakeHandle, Brick, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.52000475, -0.858482838, -0.00385189056, 0.173652604, 0.984807014, 3.27127054e-008, 0.984807074, -0.173652589, 5.77419996e-008, 6.23986125e-008, 2.23517418e-008, -1))
CreateMesh("BlockMesh", Brick, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.5))
Brick = CreatePart(m, Enum.Material.WoodPlanks, 0, 0, "Reddish brown", "Brick", Vector3.new(0.532866001, 0.335916519, 0.200000003))
BrickWeld = CreateWeld(m, FakeHandle, Brick, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.29814005, -0.00063419342, -1.01576209, 3.37510937e-006, 1, -9.31322575e-009, -7.4384734e-006, -9.31322575e-009, -1, -1.00000012, 3.37594975e-006, 7.43940473e-006))
CreateMesh("BlockMesh", Brick, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Brick = CreatePart(m, Enum.Material.Neon, 0, 0, "Really black", "Brick", Vector3.new(0.532866001, 0.335916519, 0.200000003))
BrickWeld = CreateWeld(m, FakeHandle, Brick, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.29433632, -0.0006275177, -1.01307583, 3.37510937e-006, 1, -9.31322575e-009, -7.4384734e-006, -9.31322575e-009, -1, -1.00000012, 3.37594975e-006, 7.43940473e-006))
CreateMesh("BlockMesh", Brick, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Brick = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Brick", Vector3.new(0.338651776, 0.200000048, 0.200000003))
BrickWeld = CreateWeld(m, FakeHandle, Brick, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.60310125, -0.836060047, 0.262293816, -0.422618717, 0.906307638, 9.31322575e-009, 0.906307578, 0.422618657, 5.12227416e-008, 4.28408384e-008, 3.02679837e-008, -1))
CreateMesh("BlockMesh", Brick, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.200000003, 1))
Brick = CreatePart(m, Enum.Material.Neon, 0, 0, "Really black", "Brick", Vector3.new(0.504324436, 1.97606087, 0.200000003))
BrickWeld = CreateWeld(m, FakeHandle, Brick, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.31228089, -0.0480716228, 0.238947868, 3.37510937e-006, 1, -9.31322575e-009, 1, -3.37597521e-006, 5.68106771e-008, 5.68106771e-008, -9.31322575e-009, -1))
CreateMesh("BlockMesh", Brick, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Brick = CreatePart(m, Enum.Material.WoodPlanks, 0, 0, "Dark orange", "Brick", Vector3.new(1, 0.250822067, 0.399787903))
BrickWeld = CreateWeld(m, FakeHandle, Brick, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00905776024, 1.38823318, -0.00476646423, -1.00000012, 5.89352567e-010, 0, -5.89352567e-010, 1, 0, 0, 0, -1))
CreateMesh("BlockMesh", Brick, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.5))
Brick = CreatePart(m, Enum.Material.WoodPlanks, 0, 0, "Reddish brown", "Brick", Vector3.new(0.394547284, 0.250822067, 0.399414063))
BrickWeld = CreateWeld(m, FakeHandle, Brick, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.12802935, 0.965418816, -0.00479412079, -0.906308949, 0.422615945, -4.65661287e-008, 0.422616005, 0.906308949, 1.55996531e-008, 5.0291419e-008, -6.05359674e-009, -1))
CreateMesh("BlockMesh", Brick, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Brick = CreatePart(m, Enum.Material.WoodPlanks, 0, 0, "Reddish brown", "Brick", Vector3.new(0.650844634, 0.250822067, 0.395874023))
BrickWeld = CreateWeld(m, FakeHandle, Brick, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.48223686, -0.937196136, -0.00388908386, 0.173652604, 0.984807014, 3.27127054e-008, 0.984807074, -0.173652589, 5.77419996e-008, 6.23986125e-008, 2.23517418e-008, -1))
CreateMesh("BlockMesh", Brick, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Brick = CreatePart(m, Enum.Material.WoodPlanks, 0, 0, "Reddish brown", "Brick", Vector3.new(0.394547284, 0.250822067, 0.396949768))
BrickWeld = CreateWeld(m, FakeHandle, Brick, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.1423192, 0.957653999, -0.00475502014, -0.906309247, -0.422615081, -6.51925802e-008, -0.422615111, 0.906309187, 4.65661287e-009, 5.68106771e-008, 3.16649675e-008, -1))
CreateMesh("BlockMesh", Brick, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Brick = CreatePart(m, Enum.Material.Neon, 0, 0, "Really black", "Brick", Vector3.new(0.504324436, 1.97606087, 0.200000003))
BrickWeld = CreateWeld(m, FakeHandle, Brick, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.30716515, -0.0480690002, -0.246861458, 3.37510937e-006, 1, -9.31322575e-009, 1, -3.37597521e-006, 5.68106771e-008, 5.68106771e-008, -9.31322575e-009, -1))
CreateMesh("BlockMesh", Brick, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Cylinder = CreatePart(m, Enum.Material.SmoothPlastic, 0.30000001192093, 0, "Cool yellow", "Cylinder", Vector3.new(2.00100136, 0.200000003, 1.7352066))
CylinderWeld = CreateWeld(m, FakeHandle, Cylinder, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.94555283, -0.251501083, 0.0105466843, -3.37526581e-006, -1, -1.39698386e-009, -7.44219869e-006, 1.39698386e-009, -1, 1.00000012, -3.37593519e-006, -7.44313002e-006))
CreateMesh("CylinderMesh", Cylinder, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Cylinder = CreatePart(m, Enum.Material.WoodPlanks, 0, 0, "Reddish brown", "Cylinder", Vector3.new(1, 0.685348511, 1))
CylinderWeld = CreateWeld(m, FakeHandle, Cylinder, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.07691383, 0.00385665894, 0.643633127, 3.49858237e-006, 1, 2.56113708e-008, 7.38166273e-006, -2.60770321e-008, 1, 1.00000012, -3.49725451e-006, -7.38166273e-006))
CreateMesh("CylinderMesh", Cylinder, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Cylinder = CreatePart(m, Enum.Material.SmoothPlastic, 0.30000001192093, 0, "White", "Cylinder", Vector3.new(1.60100138, 0.200000003, 1.7352066))
CylinderWeld = CreateWeld(m, FakeHandle, Cylinder, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0105335712, 0.254835129, 1.94476843, -1.00000012, -1.51947461e-007, -5.12227416e-008, 5.12227416e-008, -1.05425715e-006, -1, 1.52009306e-007, -1.00000012, 1.05425715e-006))
CreateMesh("CylinderMesh", Cylinder, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Cylinder = CreatePart(m, Enum.Material.WoodPlanks, 0, 0, "Brown", "Cylinder", Vector3.new(0.300000012, 2.25878429, 0.399999976))
CylinderWeld = CreateWeld(m, FakeHandle, Cylinder, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.328536034, -2.43229818, -1.05787706, -7.44499266e-006, -1.05332583e-006, -1, 3.48280082e-006, 1, -1.05379149e-006, 1.00000012, -3.48209869e-006, -7.44499266e-006))
CreateMesh("CylinderMesh", Cylinder, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Cylinder = CreatePart(m, Enum.Material.WoodPlanks, 0, 0, "Brown", "Cylinder", Vector3.new(0.300000012, 2.25878429, 0.399999976))
CylinderWeld = CreateWeld(m, FakeHandle, Cylinder, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.344071388, -2.44002056, -1.05786562, -7.44499266e-006, -1.05332583e-006, -1, 3.48280082e-006, 1, -1.05379149e-006, 1.00000012, -3.48209869e-006, -7.44499266e-006))
CreateMesh("CylinderMesh", Cylinder, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Cylinder = CreatePart(m, Enum.Material.WoodPlanks, 0, 0, "Brown", "Cylinder", Vector3.new(0.300000012, 2.25878429, 0.399999976))
CylinderWeld = CreateWeld(m, FakeHandle, Cylinder, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.32850647, -2.43189478, 1.07039309, -7.44499266e-006, -1.05332583e-006, -1, 3.48280082e-006, 1, -1.05379149e-006, 1.00000012, -3.48209869e-006, -7.44499266e-006))
CreateMesh("CylinderMesh", Cylinder, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Cylinder = CreatePart(m, Enum.Material.SmoothPlastic, 0.30000001192093, 0, "Cool yellow", "Cylinder", Vector3.new(2.00100136, 0.200000003, 1.7352066))
CylinderWeld = CreateWeld(m, FakeHandle, Cylinder, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.9454124, 0.248693466, 0.0105507374, -3.37526581e-006, -1, -1.39698386e-009, -7.44219869e-006, 1.39698386e-009, -1, 1.00000012, -3.37593519e-006, -7.44313002e-006))
CreateMesh("CylinderMesh", Cylinder, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Cylinder = CreatePart(m, Enum.Material.Fabric, 0, 0, "Institutional white", "Cylinder", Vector3.new(0.477256775, 1.2820065, 0.358406067))
CylinderWeld = CreateWeld(m, FakeHandle, Cylinder, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.57356262e-005, 0.427619934, -2.28881836e-005, 1.00000012, -5.89352567e-010, 0, -5.89352567e-010, 1, 0, 0, 0, 1))
CreateMesh("CylinderMesh", Cylinder, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1.04999995))
Cylinder = CreatePart(m, Enum.Material.WoodPlanks, 0, 0, "Brown", "Cylinder", Vector3.new(0.254612744, 0.520800591, 0.399999976))
CylinderWeld = CreateWeld(m, FakeHandle, Cylinder, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.351241112, -1.32405615, -1.05791759, -7.44499266e-006, -1.05332583e-006, -1, 3.48280082e-006, 1, -1.05379149e-006, 1.00000012, -3.48209869e-006, -7.44499266e-006))
CreateMesh("CylinderMesh", Cylinder, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Cylinder = CreatePart(m, Enum.Material.WoodPlanks, 0, 0, "Reddish brown", "Cylinder", Vector3.new(1, 0.687797546, 1))
CylinderWeld = CreateWeld(m, FakeHandle, Cylinder, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.799618244, 0.00447368622, -0.00693869591, 3.49858237e-006, 1, 2.56113708e-008, 7.38166273e-006, -2.60770321e-008, 1, 1.00000012, -3.49725451e-006, -7.38166273e-006))
CreateMesh("CylinderMesh", Cylinder, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Cylinder = CreatePart(m, Enum.Material.WoodPlanks, 0, 0, "Reddish brown", "Cylinder", Vector3.new(1, 0.684585571, 1))
CylinderWeld = CreateWeld(m, FakeHandle, Cylinder, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.07605791, 0.00446128845, -0.63694787, 3.49858237e-006, 1, 2.56113708e-008, 7.38166273e-006, -2.60770321e-008, 1, 1.00000012, -3.49725451e-006, -7.38166273e-006))
CreateMesh("CylinderMesh", Cylinder, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Cylinder = CreatePart(m, Enum.Material.WoodPlanks, 0, 0, "Brown", "Cylinder", Vector3.new(0.300000012, 2.25878429, 0.399999976))
CylinderWeld = CreateWeld(m, FakeHandle, Cylinder, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.344062805, -2.43987536, 1.07040501, -7.44499266e-006, -1.05332583e-006, -1, 3.48280082e-006, 1, -1.05379149e-006, 1.00000012, -3.48209869e-006, -7.44499266e-006))
CreateMesh("CylinderMesh", Cylinder, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Cylinder = CreatePart(m, Enum.Material.SmoothPlastic, 0.30000001192093, 0, "White", "Cylinder", Vector3.new(1.60100138, 0.200000003, 1.7352066))
CylinderWeld = CreateWeld(m, FakeHandle, Cylinder, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.010532856, -0.255688667, 1.94716978, -1.00000012, -1.51947461e-007, -5.12227416e-008, 5.12227416e-008, -1.05425715e-006, -1, 1.52009306e-007, -1.00000012, 1.05425715e-006))
CreateMesh("CylinderMesh", Cylinder, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Cylinder = CreatePart(m, Enum.Material.WoodPlanks, 0, 0, "Brown", "Cylinder", Vector3.new(0.254612744, 0.520800591, 0.399999976))
CylinderWeld = CreateWeld(m, FakeHandle, Cylinder, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.321333885, -1.33161402, 1.07041049, -7.44499266e-006, -1.05332583e-006, -1, 3.48280082e-006, 1, -1.05379149e-006, 1.00000012, -3.48209869e-006, -7.44499266e-006))
CreateMesh("CylinderMesh", Cylinder, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Cylinder = CreatePart(m, Enum.Material.WoodPlanks, 0, 0, "Brown", "Cylinder", Vector3.new(0.254612744, 0.520800591, 0.399999976))
CylinderWeld = CreateWeld(m, FakeHandle, Cylinder, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.321304321, -1.3319068, -1.0578711, -7.44499266e-006, -1.05332583e-006, -1, 3.48280082e-006, 1, -1.05379149e-006, 1.00000012, -3.48209869e-006, -7.44499266e-006))
CreateMesh("CylinderMesh", Cylinder, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Cylinder = CreatePart(m, Enum.Material.WoodPlanks, 0, 0, "Brown", "Cylinder", Vector3.new(0.254612744, 0.520800591, 0.399999976))
CylinderWeld = CreateWeld(m, FakeHandle, Cylinder, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.351258278, -1.32376528, 1.07039571, -7.44499266e-006, -1.05332583e-006, -1, 3.48280082e-006, 1, -1.05379149e-006, 1.00000012, -3.48209869e-006, -7.44499266e-006))
CreateMesh("CylinderMesh", Cylinder, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Cylinder = CreatePart(m, Enum.Material.Wood, 0, 0, "Nougat", "Cylinder", Vector3.new(0.477256775, 2.77322483, 0.358406067))
CylinderWeld = CreateWeld(m, FakeHandle, Cylinder, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0, 0, 1.00000012, -5.89352567e-010, 0, -5.89352567e-010, 1, 0, 0, 0, 1))
CreateMesh("CylinderMesh", Cylinder, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Hitbox = CreatePart(m, Enum.Material.Neon, 0.20000000298023, 1, "Bright yellow", "Hitbox", Vector3.new(2.42902184, 0.429022253, 8.78902245))
HitboxWeld = CreateWeld(m, FakeHandle, Hitbox, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00939249992, 0.0151224136, -4.96933651, 1.00000012, 3.93913069e-007, 9.68575478e-008, 9.68575478e-008, -1.09896064e-006, -1, -3.94855306e-007, 1.00000012, -1.09896064e-006))
Detail = CreatePart(m, Enum.Material.SmoothPlastic, 0.10000000149012, 0, "Cool yellow", "Detail", Vector3.new(0.200000003, 0.826766074, 0.200000003))
DetailWeld = CreateWeld(m, FakeHandle, Detail, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.8901372, -6.20895386, -0.00454807281, -0.962290645, 0.272023559, -6.51925802e-008, 0.272023588, 0.962290645, 7.21338438e-008, 8.19563866e-008, 5.16884029e-008, -1))
CreateMesh("BlockMesh", Detail, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 0.300000012))
Detail = CreatePart(m, Enum.Material.SmoothPlastic, 0.10000000149012, 0, "Cool yellow", "Detail", Vector3.new(0.200000003, 0.42079258, 0.200000003))
DetailWeld = CreateWeld(m, FakeHandle, Detail, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00482368469, -4.63128948, 0.691884041, -7.27642328e-006, -1.11525878e-006, -1, 3.35894219e-006, 1, -1.11525878e-006, 1, -3.36169614e-006, -7.27642328e-006))
CreateMesh("SpecialMesh", Detail, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.300000012, 1, 0.5))
Detail = CreatePart(m, Enum.Material.SmoothPlastic, 0.10000000149012, 0, "Cool yellow", "Detail", Vector3.new(0.200000003, 0.338349551, 0.200000003))
DetailWeld = CreateWeld(m, FakeHandle, Detail, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.44308567, -3.56147957, -0.00407028198, -0.642789304, 0.766043067, 4.47034836e-008, 0.766043127, 0.642789185, -7.54371285e-008, -8.66129994e-008, -1.35041773e-008, -1))
CreateMesh("BlockMesh", Detail, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 0.300000012))
Detail = CreatePart(m, Enum.Material.SmoothPlastic, 0.10000000149012, 0, "Cool yellow", "Detail", Vector3.new(0.200000003, 0.338349551, 0.200000003))
DetailWeld = CreateWeld(m, FakeHandle, Detail, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.30929375, -2.61010194, -0.00407123566, -0.642789304, 0.766043067, 4.47034836e-008, 0.766043127, 0.642789185, -7.54371285e-008, -8.66129994e-008, -1.35041773e-008, -1))
CreateMesh("BlockMesh", Detail, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 0.300000012))
Detail = CreatePart(m, Enum.Material.SmoothPlastic, 0.10000000149012, 0, "Cool yellow", "Detail", Vector3.new(0.200000003, 0.446822524, 0.200000003))
DetailWeld = CreateWeld(m, FakeHandle, Detail, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.06919241, -5.98649693, -0.00459957123, -0.872794807, -0.488087445, 4.93600965e-008, -0.488087475, 0.872794747, 3.53902578e-008, -6.14672899e-008, 6.51925802e-009, -1))
CreateMesh("BlockMesh", Detail, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 0.300000012))
Detail = CreatePart(m, Enum.Material.SmoothPlastic, 0.10000000149012, 0, "Cool yellow", "Detail", Vector3.new(0.200000003, 0.452592313, 0.200000003))
DetailWeld = CreateWeld(m, FakeHandle, Detail, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.08613968, -5.9753437, -0.0046081543, -0.872795641, 0.488085896, 4.93600965e-008, 0.488085866, 0.872795641, 7.35744834e-008, -6.51925802e-009, 8.84756446e-008, -1))
CreateMesh("BlockMesh", Detail, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 0.300000012))
Detail = CreatePart(m, Enum.Material.SmoothPlastic, 0.10000000149012, 0, "Cool yellow", "Detail", Vector3.new(0.200000003, 0.42079258, 0.200000003))
DetailWeld = CreateWeld(m, FakeHandle, Detail, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00497627258, -7.96115589, 0.346496344, -7.27642328e-006, -1.11525878e-006, -1, 3.35894219e-006, 1, -1.11525878e-006, 1, -3.36169614e-006, -7.27642328e-006))
CreateMesh("SpecialMesh", Detail, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.300000012, 1, 0.5))
Detail = CreatePart(m, Enum.Material.SmoothPlastic, 0.10000000149012, 0, "Cool yellow", "Detail", Vector3.new(0.392947376, 0.200000003, 0.454014003))
DetailWeld = CreateWeld(m, FakeHandle, Detail, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0106084347, -0.0048418045, -7.1677351, 1.00000012, 3.93913069e-007, 9.68575478e-008, 9.68575478e-008, -1.0477379e-006, -1, -3.94105882e-007, 1.00000012, -1.0477379e-006))
CreateMesh("CylinderMesh", Detail, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.300000012, 1))
Detail = CreatePart(m, Enum.Material.SmoothPlastic, 0.10000000149012, 0, "Cool yellow", "Detail", Vector3.new(0.200000003, 0.42079258, 0.200000003))
DetailWeld = CreateWeld(m, FakeHandle, Detail, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00495243073, -7.96235943, 0.326696873, 7.21216202e-006, 1.08126551e-006, 1, 3.35943696e-006, 1, -1.08126551e-006, -1, 3.3619508e-006, 7.21216202e-006))
CreateMesh("SpecialMesh", Detail, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.300000012, 1, 0.5))
Detail = CreatePart(m, Enum.Material.SmoothPlastic, 0.10000000149012, 0, "Cool yellow", "Detail", Vector3.new(0.200000003, 0.42079258, 0.200000003))
DetailWeld = CreateWeld(m, FakeHandle, Detail, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00487709045, -4.62888336, 0.680601358, 7.21216202e-006, 1.08126551e-006, 1, 3.35943696e-006, 1, -1.08126551e-006, -1, 3.3619508e-006, 7.21216202e-006))
CreateMesh("SpecialMesh", Detail, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.300000012, 1, 0.5))
Detail = CreatePart(m, Enum.Material.SmoothPlastic, 0.10000000149012, 0, "Cool yellow", "Detail", Vector3.new(0.200000003, 4.77378082, 0.200000003))
DetailWeld = CreateWeld(m, FakeHandle, Detail, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0101885796, -4.51280022, -0.00344467163, -1.00000012, -1.5578189e-007, -2.42143869e-008, -1.5621481e-007, 1, 5.96046448e-008, 2.32830644e-008, 5.96046448e-008, -1))
CreateMesh("BlockMesh", Detail, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 0.300000012))
Detail = CreatePart(m, Enum.Material.SmoothPlastic, 0.10000000149012, 0, "Cool yellow", "Detail", Vector3.new(0.200000003, 0.868216038, 0.200000003))
DetailWeld = CreateWeld(m, FakeHandle, Detail, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.346824408, -7.32784176, -0.00456809998, -1.00000012, -1.5578189e-007, -2.42143869e-008, -1.5621481e-007, 1, 5.96046448e-008, 2.32830644e-008, 5.96046448e-008, -1))
CreateMesh("BlockMesh", Detail, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 0.300000012))
Detail = CreatePart(m, Enum.Material.SmoothPlastic, 0.10000000149012, 0, "Cool yellow", "Detail", Vector3.new(0.769021869, 0.769022226, 0.507312))
DetailWeld = CreateWeld(m, FakeHandle, Detail, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.010607481, -0.00482273102, -7.97545576, 1.00000012, 3.93913069e-007, 9.68575478e-008, 9.68575478e-008, -1.09896064e-006, -1, -3.94855306e-007, 1.00000012, -1.09896064e-006))
CreateMesh("CylinderMesh", Detail, "", "", Vector3.new(0, 0, 0), Vector3.new(0.385088414, 0.0588000044, 0.444933742))
Detail = CreatePart(m, Enum.Material.SmoothPlastic, 0.10000000149012, 0, "Cool yellow", "Detail", Vector3.new(0.200000003, 1.6369462, 0.200000003))
DetailWeld = CreateWeld(m, FakeHandle, Detail, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.691793442, -3.60471201, -0.00764465332, -1.00000012, -1.5578189e-007, -2.42143869e-008, -1.5621481e-007, 1, 5.96046448e-008, 2.32830644e-008, 5.96046448e-008, -1))
CreateMesh("BlockMesh", Detail, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 0.300000012))
Detail = CreatePart(m, Enum.Material.SmoothPlastic, 0.10000000149012, 0, "Cool yellow", "Detail", Vector3.new(0.769021869, 0.769022226, 0.769022167))
DetailWeld = CreateWeld(m, FakeHandle, Detail, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.010597229, -0.00483322144, -7.62803411, 1.00000012, 3.93913069e-007, 9.68575478e-008, 9.68575478e-008, -1.09896064e-006, -1, -3.94855306e-007, 1.00000012, -1.09896064e-006))
CreateMesh("CylinderMesh", Detail, "", "", Vector3.new(0, 0, 0), Vector3.new(0.385088414, 0.0588000044, 0.444933742))
Detail = CreatePart(m, Enum.Material.SmoothPlastic, 0.10000000149012, 0, "Cool yellow", "Detail", Vector3.new(0.200000003, 4.6369462, 0.200000003))
DetailWeld = CreateWeld(m, FakeHandle, Detail, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.239558697, -3.79226828, -0.00444602966, -1.00000012, -1.5578189e-007, -2.42143869e-008, -1.5621481e-007, 1, 5.96046448e-008, 2.32830644e-008, 5.96046448e-008, -1))
CreateMesh("BlockMesh", Detail, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 0.300000012))
Detail = CreatePart(m, Enum.Material.SmoothPlastic, 0.10000000149012, 0, "Cool yellow", "Detail", Vector3.new(0.200000003, 1.6369462, 0.200000003))
DetailWeld = CreateWeld(m, FakeHandle, Detail, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.679411888, -3.60749531, -0.00761604309, -1.00000012, -1.5578189e-007, -2.42143869e-008, -1.5621481e-007, 1, 5.96046448e-008, 2.32830644e-008, 5.96046448e-008, -1))
CreateMesh("BlockMesh", Detail, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 0.300000012))
Detail = CreatePart(m, Enum.Material.SmoothPlastic, 0.10000000149012, 0, "Cool yellow", "Detail", Vector3.new(0.200000003, 0.338349551, 0.200000003))
DetailWeld = CreateWeld(m, FakeHandle, Detail, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.07082224, -3.24916291, -0.00405979156, -0.642789304, 0.766043067, 4.47034836e-008, 0.766043127, 0.642789185, -7.54371285e-008, -8.66129994e-008, -1.35041773e-008, -1))
CreateMesh("BlockMesh", Detail, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 0.300000012))
Detail = CreatePart(m, Enum.Material.SmoothPlastic, 0.10000000149012, 0, "Cool yellow", "Detail", Vector3.new(0.200000003, 0.868216038, 0.200000003))
DetailWeld = CreateWeld(m, FakeHandle, Detail, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.325645924, -7.32937622, -0.00455284119, -1.00000012, -1.5578189e-007, -2.42143869e-008, -1.5621481e-007, 1, 5.96046448e-008, 2.32830644e-008, 5.96046448e-008, -1))
CreateMesh("BlockMesh", Detail, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 0.300000012))
Detail = CreatePart(m, Enum.Material.SmoothPlastic, 0.10000000149012, 0, "Cool yellow", "Detail", Vector3.new(0.200000003, 4.6369462, 0.200000003))
DetailWeld = CreateWeld(m, FakeHandle, Detail, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.219781399, -3.7941308, -0.00197505951, -1.00000012, -1.5578189e-007, -2.42143869e-008, -1.5621481e-007, 1, 5.96046448e-008, 2.32830644e-008, 5.96046448e-008, -1))
CreateMesh("BlockMesh", Detail, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 0.300000012))
Detail = CreatePart(m, Enum.Material.SmoothPlastic, 0.10000000149012, 0, "Cool yellow", "Detail", Vector3.new(0.200000003, 0.338349551, 0.200000003))
DetailWeld = CreateWeld(m, FakeHandle, Detail, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.42773342, -3.60531974, -0.00405311584, -0.642792106, -0.766040683, 2.32830644e-009, -0.766040742, 0.642792165, -8.38190317e-009, 5.58793545e-009, -7.4505806e-009, -1))
CreateMesh("BlockMesh", Detail, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 0.300000012))
Detail = CreatePart(m, Enum.Material.SmoothPlastic, 0.10000000149012, 0, "Cool yellow", "Detail", Vector3.new(0.200000003, 0.338349551, 0.200000003))
DetailWeld = CreateWeld(m, FakeHandle, Detail, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.05722141, -3.26159477, -0.00404071808, -0.642792106, -0.766040683, 2.32830644e-009, -0.766040742, 0.642792165, -8.38190317e-009, 5.58793545e-009, -7.4505806e-009, -1))
CreateMesh("BlockMesh", Detail, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 0.300000012))
Detail = CreatePart(m, Enum.Material.SmoothPlastic, 0.10000000149012, 0, "Cool yellow", "Detail", Vector3.new(0.200000003, 0.826766074, 0.200000003))
DetailWeld = CreateWeld(m, FakeHandle, Detail, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.87103868, -6.21462679, -0.00448989868, -0.96228987, -0.27202636, -2.70083547e-008, -0.27202642, 0.96228987, -3.0733645e-008, 3.35276127e-008, -2.23517418e-008, -1))
CreateMesh("BlockMesh", Detail, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 0.300000012))
Detail = CreatePart(m, Enum.Material.SmoothPlastic, 0.10000000149012, 0, "Cool yellow", "Detail", Vector3.new(0.200000003, 0.338349551, 0.200000003))
DetailWeld = CreateWeld(m, FakeHandle, Detail, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.29596138, -2.65033174, -0.00405502319, -0.642792106, -0.766040683, 2.32830644e-009, -0.766040742, 0.642792165, -8.38190317e-009, 5.58793545e-009, -7.4505806e-009, -1))
CreateMesh("BlockMesh", Detail, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 0.300000012))
Detail = CreatePart(m, Enum.Material.SmoothPlastic, 0.10000000149012, 0, "Cool yellow", "Detail", Vector3.new(0.200000003, 0.338349551, 0.200000003))
DetailWeld = CreateWeld(m, FakeHandle, Detail, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.66016912, -2.95595217, -0.0040473938, -0.642792106, -0.766040683, 2.32830644e-009, -0.766040742, 0.642792165, -8.38190317e-009, 5.58793545e-009, -7.4505806e-009, -1))
CreateMesh("BlockMesh", Detail, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 0.300000012))
Detail = CreatePart(m, Enum.Material.SmoothPlastic, 0.10000000149012, 0, "Cool yellow", "Detail", Vector3.new(0.200000003, 0.338349551, 0.200000003))
DetailWeld = CreateWeld(m, FakeHandle, Detail, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.67348218, -2.91571116, -0.00405597687, -0.642789304, 0.766043067, 4.47034836e-008, 0.766043127, 0.642789185, -7.54371285e-008, -8.66129994e-008, -1.35041773e-008, -1))
CreateMesh("BlockMesh", Detail, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 0.300000012))
Detail2 = CreatePart(m, Enum.Material.Neon, 0.20000000298023, 0, "Bright yellow", "Detail2", Vector3.new(0.769021869, 0.769022226, 0.491797626))
Detail2Weld = CreateWeld(m, FakeHandle, Detail2, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.010586977, -0.00482368469, -7.97520781, 1.00000012, 3.93913069e-007, 9.68575478e-008, 9.68575478e-008, -1.09896064e-006, -1, -3.94855306e-007, 1.00000012, -1.09896064e-006))
CreateMesh("CylinderMesh", Detail2, "", "", Vector3.new(0, 0, 0), Vector3.new(0.385088414, 0.068599999, 0.294868618))
Detail2 = CreatePart(m, Enum.Material.Neon, 0.20000000298023, 0, "Bright yellow", "Detail2", Vector3.new(0.769021869, 0.769022226, 0.769022167))
Detail2Weld = CreateWeld(m, FakeHandle, Detail2, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0105988979, -0.00487327576, -7.62933969, 1.00000012, 3.93913069e-007, 9.68575478e-008, 9.68575478e-008, -1.09896064e-006, -1, -3.94855306e-007, 1.00000012, -1.09896064e-006))
CreateMesh("CylinderMesh", Detail2, "", "", Vector3.new(0, 0, 0), Vector3.new(0.385088414, 0.068599999, 0.294868618))
Detail2 = CreatePart(m, Enum.Material.Neon, 0.20000000298023, 0, "Bright yellow", "Detail2", Vector3.new(0.392947376, 0.200000003, 0.300886333))
Detail2Weld = CreateWeld(m, FakeHandle, Detail2, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0106360912, -0.00486564636, -7.1693716, 1.00000012, 3.93913069e-007, 9.68575478e-008, 9.68575478e-008, -1.0477379e-006, -1, -3.94105882e-007, 1.00000012, -1.0477379e-006))
CreateMesh("CylinderMesh", Detail2, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.349999994, 1))
CreateMesh("CylinderMesh", FakeHandle, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Planet = CreatePart(m, Enum.Material.Neon, 0, 0, "Bright red", "Planet", Vector3.new(0.200000003, 0.200000048, 0.200000003))
PlanetWeld = CreateWeld(m, FakeHandle, Planet, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.15915966, 0.693719387, 0.163201332, -0.0874774307, 0.98630774, 0.139802977, -0.732194006, -0.158819407, 0.662320435, 0.675455153, -0.0444248058, 0.736061692))
CreateMesh("BlockMesh", Planet, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.5, 0.5))
Planet = CreatePart(m, Enum.Material.Neon, 0, 0, "Dark green", "Planet", Vector3.new(0.200000003, 0.200000048, 0.200000003))
PlanetWeld = CreateWeld(m, FakeHandle, Planet, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.0643065, -1.02388668, 0.139883041, 0.0232121199, 0.977178812, -0.211145908, -0.793613613, 0.146452308, 0.590533018, 0.607979178, 0.153860778, 0.778901935))
CreateMesh("BlockMesh", Planet, "", "", Vector3.new(0, 0, 0), Vector3.new(0.75, 0.75, 0.75))
Planet = CreatePart(m, Enum.Material.Neon, 0, 0, "Deep blue", "Planet", Vector3.new(0.200000003, 0.200000048, 0.200000003))
PlanetWeld = CreateWeld(m, FakeHandle, Planet, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.37638712, 0.35047555, 0.384620667, 0.186239839, 0.963513553, 0.192240521, -0.897882044, 0.0874688402, 0.431459457, 0.398902029, -0.252964228, 0.881411612))
CreateMesh("BlockMesh", Planet, "", "", Vector3.new(0, 0, 0), Vector3.new(0.699999988, 0.699999988, 0.699999988))
Stars = CreatePart(m, Enum.Material.Neon, 0, 0, "Bright violet", "Stars", Vector3.new(0.200000003, 0.200000048, 0.200000003))
StarsWeld = CreateWeld(m, FakeHandle, Stars, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.32202673, 0.372889519, -0.915979385, -0.141709134, 0.949285686, 0.280669332, 0.989908457, 0.135893896, 0.0401788019, -8.28877091e-008, 0.283530623, -0.958963215))
CreateMesh("BlockMesh", Stars, "", "", Vector3.new(0, 0, 0), Vector3.new(0.200000003, 0.200000003, 0.200000003))
Stars = CreatePart(m, Enum.Material.Neon, 0, 0, "Navy blue", "Stars", Vector3.new(0.200000003, 0.200000048, 0.200000003))
StarsWeld = CreateWeld(m, FakeHandle, Stars, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.77251244, -1.38336658, -0.145799637, 0.301025689, 0.934359789, 0.190670818, -0.821353495, 0.355629146, -0.445989251, -0.484522521, -0.0223539602, 0.874493122))
CreateMesh("BlockMesh", Stars, "", "", Vector3.new(0, 0, 0), Vector3.new(0.200000003, 0.200000003, 0.200000003))
Stars = CreatePart(m, Enum.Material.Neon, 0, 0, "Bright yellow", "Stars", Vector3.new(0.200000003, 0.200000048, 0.200000003))
StarsWeld = CreateWeld(m, FakeHandle, Stars, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.56974244, -1.75112343, -0.4702034, -0.47327736, 0.86003089, -0.190671086, 0.738700628, 0.505385935, 0.44598937, 0.479927152, 0.0702278242, -0.874493003))
CreateMesh("BlockMesh", Stars, "", "", Vector3.new(0, 0, 0), Vector3.new(0.200000003, 0.200000003, 0.200000003))
Stars = CreatePart(m, Enum.Material.Neon, 0, 0, "Cool yellow", "Stars", Vector3.new(0.200000003, 0.200000048, 0.200000003))
StarsWeld = CreateWeld(m, FakeHandle, Stars, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.50671315, -0.0358543396, 0.667007446, -0.125911102, 0.973545611, -0.190670982, 0.872366965, 0.200173393, 0.445989519, 0.472358406, -0.110180028, -0.874492943))
CreateMesh("BlockMesh", Stars, "", "", Vector3.new(0, 0, 0), Vector3.new(0.200000003, 0.200000003, 0.200000003))
Stars = CreatePart(m, Enum.Material.Neon, 0, 0, "Bright yellow", "Stars", Vector3.new(0.200000003, 0.200000048, 0.200000003))
StarsWeld = CreateWeld(m, FakeHandle, Stars, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.95790291, -1.39852285, 0.338871956, -0.208682552, 0.954918265, 0.211145982, 0.751260459, 0.294751495, -0.590533018, -0.626146436, 0.0353916846, -0.778901875))
CreateMesh("BlockMesh", Stars, "", "", Vector3.new(0, 0, 0), Vector3.new(0.200000003, 0.200000003, 0.200000003))
Stars = CreatePart(m, Enum.Material.Neon, 0, 0, "Bright yellow", "Stars", Vector3.new(0.200000003, 0.200000048, 0.200000003))
StarsWeld = CreateWeld(m, FakeHandle, Stars, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.7762351, -1.27792978, -0.989602089, -0.479107618, 0.831673622, 0.280669004, 0.871608496, 0.488553047, 0.0401808247, -0.103704393, 0.263884425, -0.958963215))
CreateMesh("BlockMesh", Stars, "", "", Vector3.new(0, 0, 0), Vector3.new(0.200000003, 0.200000003, 0.200000003))
Stars = CreatePart(m, Enum.Material.Neon, 0, 0, "Bright blue", "Stars", Vector3.new(0.200000003, 0.200000048, 0.200000003))
StarsWeld = CreateWeld(m, FakeHandle, Stars, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.94569564, -1.15383816, -1.00528812, 0.312143892, 0.90762949, -0.280668765, -0.948632121, 0.313819706, -0.0401813537, 0.0516095981, 0.278793722, 0.958963335))
CreateMesh("BlockMesh", Stars, "", "", Vector3.new(0, 0, 0), Vector3.new(0.200000003, 0.200000003, 0.200000003))
Stars = CreatePart(m, Enum.Material.Neon, 0, 0, "Bright yellow", "Stars", Vector3.new(0.200000003, 0.200000048, 0.200000003))
StarsWeld = CreateWeld(m, FakeHandle, Stars, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.6678791, -1.50939703, 1.35799694, 0.480169207, 0.875929773, 0.0467414632, -0.703557491, 0.352758497, 0.616902232, 0.52387464, -0.329102725, 0.785650611))
CreateMesh("BlockMesh", Stars, "", "", Vector3.new(0, 0, 0), Vector3.new(0.200000003, 0.200000003, 0.200000003))
Stars = CreatePart(m, Enum.Material.Neon, 0, 0, "Bright violet", "Stars", Vector3.new(0.200000003, 0.200000048, 0.200000003))
StarsWeld = CreateWeld(m, FakeHandle, Stars, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.24203873, -2.2360568, 1.74946117, -0.638034225, 0.768588066, -0.0467416123, 0.623602331, 0.480159193, -0.616901398, -0.451699674, -0.422752351, -0.785651326))
CreateMesh("BlockMesh", Stars, "", "", Vector3.new(0, 0, 0), Vector3.new(0.200000003, 0.200000003, 0.200000003))
HOH = CreatePart(m, Enum.Material.WoodPlanks, 0, 0, "Reddish brown", "HOH", Vector3.new(0.200000003, 0.96004653, 0.400796741))
HOHWeld = CreateWeld(m, FakeHandle, HOH, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.249457359, -0.625309706, 3.76517916, -7.23544508e-006, -1.08778477e-006, -1, 1.00000012, 3.56558303e-008, -7.23544508e-006, 3.69873305e-008, -1, 1.08778477e-006))
CreateMesh("SpecialMesh", HOH, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
HOH = CreatePart(m, Enum.Material.WoodPlanks, 0, 0, "Dark orange", "HOH", Vector3.new(0.200000003, 0.200000003, 0.900796771))
HOHWeld = CreateWeld(m, FakeHandle, HOH, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00228309631, -0.975172997, 4.02359915, -7.23544508e-006, -1.08778477e-006, -1, 1.00000012, 3.56558303e-008, -7.23544508e-006, 3.69873305e-008, -1, 1.08778477e-006))
CreateMesh("SpecialMesh", HOH, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 1))
HOH = CreatePart(m, Enum.Material.WoodPlanks, 0, 0, "Dark orange", "HOH", Vector3.new(0.200000003, 0.998284936, 0.63259232))
HOHWeld = CreateWeld(m, FakeHandle, HOH, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.249570847, -0.611064672, 3.84756422, 7.35279173e-006, 1.11339614e-006, 1, -1.00000012, -3.61214916e-008, 7.35279173e-006, 3.73620423e-008, -1, 1.11339614e-006))
CreateMesh("SpecialMesh", HOH, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 1))
HOH = CreatePart(m, Enum.Material.WoodPlanks, 0, 0, "Dark orange", "HOH", Vector3.new(0.200000003, 0.979684591, 0.63259232))
HOHWeld = CreateWeld(m, FakeHandle, HOH, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.249505997, -0.589035273, 3.84559846, -7.23544508e-006, -1.08778477e-006, -1, 1.00000012, 3.56558303e-008, -7.23544508e-006, 3.69873305e-008, -1, 1.08778477e-006))
CreateMesh("SpecialMesh", HOH, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 1))
HOH = CreatePart(m, Enum.Material.WoodPlanks, 0, 0, "Reddish brown", "HOH", Vector3.new(0.200000003, 0.96004653, 0.400796741))
HOHWeld = CreateWeld(m, FakeHandle, HOH, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.249505043, -0.632004738, 3.76424336, 7.35279173e-006, 1.11339614e-006, 1, -1.00000012, -3.61214916e-008, 7.35279173e-006, 3.73620423e-008, -1, 1.11339614e-006))
CreateMesh("SpecialMesh", HOH, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
HOH = CreatePart(m, Enum.Material.WoodPlanks, 0, 0, "Dark orange", "HOH", Vector3.new(0.200000003, 0.993745565, 0.63259232))
HOHWeld = CreateWeld(m, FakeHandle, HOH, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.240945816, -0.608797073, 3.84749889, 7.35279173e-006, 1.11339614e-006, 1, -1.00000012, -3.61214916e-008, 7.35279173e-006, 3.73620423e-008, -1, 1.11339614e-006))
CreateMesh("SpecialMesh", HOH, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 1))
HOH = CreatePart(m, Enum.Material.WoodPlanks, 0, 0, "Reddish brown", "HOH", Vector3.new(0.200000003, 0.200000003, 0.900796771))
HOHWeld = CreateWeld(m, FakeHandle, HOH, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00228786469, -1.00529277, 4.0125308, -7.23544508e-006, -1.08778477e-006, -1, 1.00000012, 3.56558303e-008, -7.23544508e-006, 3.69873305e-008, -1, 1.08778477e-006))
CreateMesh("SpecialMesh", HOH, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
HOH = CreatePart(m, Enum.Material.WoodPlanks, 0, 0, "Dark orange", "HOH", Vector3.new(0.200000003, 0.200000003, 0.900796771))
HOHWeld = CreateWeld(m, FakeHandle, HOH, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00228309631, -0.992087126, 4.03731441, 7.23544508e-006, 1.08778477e-006, 1, -1.00000012, -3.56558303e-008, 7.23544508e-006, 3.69873305e-008, -1, 1.08778477e-006))
CreateMesh("SpecialMesh", HOH, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 1))
HOH = CreatePart(m, Enum.Material.WoodPlanks, 0, 0, "Reddish brown", "HOH", Vector3.new(0.200000003, 0.96004653, 0.400796741))
HOHWeld = CreateWeld(m, FakeHandle, HOH, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.24290657, -0.625341892, 3.76259184, -7.23544508e-006, -1.08778477e-006, -1, 1.00000012, 3.56558303e-008, -7.23544508e-006, 3.69873305e-008, -1, 1.08778477e-006))
CreateMesh("SpecialMesh", HOH, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
HOH = CreatePart(m, Enum.Material.WoodPlanks, 0, 0, "Reddish brown", "HOH", Vector3.new(0.200000003, 0.200000003, 0.900796771))
HOHWeld = CreateWeld(m, FakeHandle, HOH, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00227737427, -1.0147543, 4.01116085, 7.23544508e-006, 1.08778477e-006, 1, -1.00000012, -3.56558303e-008, 7.23544508e-006, 3.69873305e-008, -1, 1.08778477e-006))
CreateMesh("SpecialMesh", HOH, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
HOH = CreatePart(m, Enum.Material.WoodPlanks, 0, 0, "Dark orange", "HOH", Vector3.new(0.200000003, 0.99015969, 0.63259232))
HOHWeld = CreateWeld(m, FakeHandle, HOH, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.240936279, -0.594239116, 3.84552884, -7.23544508e-006, -1.08778477e-006, -1, 1.00000012, 3.56558303e-008, -7.23544508e-006, 3.69873305e-008, -1, 1.08778477e-006))
CreateMesh("SpecialMesh", HOH, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 1))
HOH = CreatePart(m, Enum.Material.WoodPlanks, 0, 0, "Reddish brown", "HOH", Vector3.new(0.679864764, 0.46004653, 0.400796741))
HOHWeld = CreateWeld(m, FakeHandle, HOH, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00169086456, -1.62397337, 1.11902952, -7.41705298e-006, -1.06869265e-006, -1, 1.00000012, -7.35162757e-008, -7.41705298e-006, -7.32143235e-008, -1, 1.06869265e-006))
CreateMesh("SpecialMesh", HOH, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
HOH = CreatePart(m, Enum.Material.WoodPlanks, 0, 0, "Reddish brown", "HOH", Vector3.new(0.200000003, 0.96004653, 0.400796741))
HOHWeld = CreateWeld(m, FakeHandle, HOH, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.242881775, -0.6320436, 3.76163602, 7.35279173e-006, 1.11339614e-006, 1, -1.00000012, -3.61214916e-008, 7.35279173e-006, 3.73620423e-008, -1, 1.11339614e-006))
CreateMesh("SpecialMesh", HOH, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
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
  local EffectPart = CreatePart(workspace, "SmoothPlastic", 0, 1, BrickColor.new(Color), "Effect", vt(0, 0, 0))
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
  local prt = CreatePart(effect, "Neon", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
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

BreakEffect = function(brickcolor, cframe, x1, y1, z1)
  local prt = CreatePart(effect, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
  local msh = CreateMesh("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  local num = math.random(10, 50) / 1000
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Shatter", num, prt.CFrame, math.random() - math.random(), 0, math.random(50, 100) / 100})
end

GetX = function(Part, Point)
  local x, y, z = Part.CFrame:toObjectSpace(CFrame.new(Part.Position, Point)):toEulerAnglesXYZ()
  return math.deg(x)
end

GetY = function(Part, Point)
  local x, y, z = Part.CFrame:toObjectSpace(CFrame.new(Part.Position, Point)):toEulerAnglesXYZ()
  return math.deg(y)
end

LoopFunctions = {}
DoLoop = function(times, func)
  LoopFunctions[#LoopFunctions + 1] = {times, 0, func}
end

Effect1 = function(orig, adjj, radius, deg, parts, fade, wide, fadespeed, mindam, maxdam)
  local orig = orig
  if not adjj then
    local adjj = CFrame.new(0, 0, 0)
  end
  local radius = radius or 8
  local deg = deg or 65
  local parts = parts or 6
  local fade = fade or 1
  local wide = wide or 0.2
  local fadespeed = fadespeed or 0.05
  local part = {}
  for x = -deg / 2, deg / 2, deg / parts do
    local reframe = function(x, radius, wide, orig)
    local xa = x - deg / parts / 2
    local xb = x + deg / parts / 2
    local xxa = math.sin(math.rad(xa)) * radius * wide
    local zza = math.cos(math.rad(xa)) * radius
    local xxb = math.sin(math.rad(xb)) * radius * wide
    local zzb = math.cos(math.rad(xb)) * radius
    local xx = math.sin(math.rad(x)) * radius * wide
    local zz = math.cos(math.rad(x)) * radius
	local kek = CFrame.new(orig * CFrame.new(xxa, 0, zza).p, orig * CFrame.new(xxb, 0, zzb).p) * CFrame.new(0, 0, -(orig * CFrame.new(xxa, 0, zzb).p - orig * CFrame.new(xx, 0, zz).p).magnitude)
	local len = (orig * CFrame.new(xxa, 0, zza).p - orig * CFrame.new(xxb, 0, zzb).p).magnitude
    return kek, len
  end

    local kek, len = reframe(x, radius, wide, orig)
    local new = Instance.new("Part", Character)
    new.Anchored = true
    new.TopSurface = 10
    new.BottomSurface = 10
    new.CanCollide = false
    new.Size = Vector3.new(0.2, 0.2, 0.2)
    new.BrickColor = BrickColor.new("Deep orange")
    new.Transparency = 0
    new.CFrame = kek
    new.Material = "Neon"
    local PE1 = Create("ParticleEmitter")({Parent = new, Color = ColorSequence.new(BrickColor.new("Deep orange").Color), Transparency = NumberSequence.new(0.5), Size = NumberSequence.new(0.2), Texture = "rbxassetid://263433152", Lifetime = NumberRange.new(5), Rate = 100, VelocitySpread = 180, Rotation = NumberRange.new(100), Speed = NumberRange.new(3), LightEmission = 0.7})
    local newm = Instance.new("BlockMesh", new)
    newm.Scale = Vector3.new(0.5, 0.1, len) * 5
    part[#part + 1] = {new, newm, x, CFrame.new(fade * radius / (1 / fadespeed), 0, 0), reframe}
  end
  DoLoop(1 / fadespeed, function(i)
    orig = orig * adjj
    for x = 1, #part do
      local kek, len = part[x][5](part[x][3], radius + fade * radius * i, wide, orig)
      MagniDamage(part[x][1], 3, mindam, maxdam, "Normal")
      part[x][1].CFrame = kek
      part[x][2].Scale = Vector3.new(0.5, 0.1, 0.01 + len) * 5
      part[x][1].Transparency = 0 + 1 * i
      if i == 1 then
        part[x][1]:Remove()
      end
    end
  end
)
end

timewarp = function()
  attack = true
  Humanoid.WalkSpeed = 0
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2 + 0.1 * math.cos(sine / 9)) * angles(math.rad(-10), math.rad(10), math.rad(-70)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(15), math.rad(0), math.rad(70)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 - 0.1 * math.cos(sine / 9), 0.3 + 0.1 * math.cos(sine / 9) - 0.25) * angles(math.rad(-30), math.rad(0), math.rad(20)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 + 0.15 * math.cos(sine / 9), 0.2) * angles(math.rad(170), math.rad(0), math.rad(0)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1 - 0.1 * math.cos(sine / 9), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(-10)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1 - 0.1 * math.cos(sine / 9), 0) * LHCF * angles(math.rad(0), math.rad(30), math.rad(10)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)) * angles(math.rad(150), math.rad(0), math.rad(6)), 0.3)
  end
  for i = 0, 360, 20 do
    swait()
    SphereEffect(BrickColor.new("Pastel yellow"), RootPart.CFrame * CFrame.Angles(0, 0, math.rad(90)) * CFrame.Angles(math.rad(i), 0, 0) * CFrame.new(0, 0, -18), 1, 1, 1, 0.1, 0.1, 0.1, 0.01)
  end
  attack = true
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2 + 0.1 * math.cos(sine / 9)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 - 0.1 * math.cos(sine / 9), 0.3 + 0.1 * math.cos(sine / 9) - 0.25) * angles(math.rad(-30), math.rad(0), math.rad(20)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 + 0.15 * math.cos(sine / 9), 0.2) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1 - 0.1 * math.cos(sine / 9), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1 - 0.1 * math.cos(sine / 9), 0) * LHCF * angles(math.rad(0), math.rad(30), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)) * angles(math.rad(150), math.rad(0), math.rad(6)), 0.3)
  end
  CreateSound("http://www.roblox.com/asset/?id=200633780", Handle, 1, 1)
  MagniDamage(Torso, 20, 10, 15, 3, "Snare")
  SphereEffect(BrickColor.new("Pastel yellow"), RootPart.CFrame, 100, 100, 100, 5, 5, 5, 0.07)
  BlockEffect(BrickColor.new("White"), RootPart.CFrame, 80, 80, 80, 5, 5, 5, 0.07, 1)
  Humanoid.WalkSpeed = 16
  attack = false
end

findNearestTorso = function(pos, distance)
  local list = (game.Workspace:children())
  local torso = nil
  local dist = distance
  local temp, human, temp2 = nil, nil, nil
  for x = 1, #list do
    temp2 = list[x]
    canfind = true
    if game.Players:GetPlayerFromCharacter(temp2) ~= nil and game.Players:GetPlayerFromCharacter(temp2).TeamColor == Player.TeamColor and Player.Neutral == false then
      canfind = false
    end
    canfind = true
    if temp2.className == "Model" and temp2 ~= Character and canfind == true then
      temp = temp2:findFirstChild("Torso")
      human = temp2:findFirstChild("Humanoid")
      if temp ~= nil and human ~= nil and human.Health > 0 and temp.Position - pos.magnitude < dist then
        torso = temp
        dist = temp.Position - pos.magnitude
      end
    end
  end
  return torso, dist
end

tempus = function()
  attack = true
  Humanoid.WalkSpeed = 0
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2 + 0.1 * math.cos(sine / 9)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 - 0.1 * math.cos(sine / 9), 0.3 + 0.1 * math.cos(sine / 9) - 0.25) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 + 0.15 * math.cos(sine / 9), 0.2) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1 - 0.1 * math.cos(sine / 9), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1 - 0.1 * math.cos(sine / 9), 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  CreateSound("http://www.roblox.com/asset/?id=200633780", Handle, 1, 1)
  MagniDamage(Torso, 15, 10, 15, 3, "Snare")
  BPos.position = BPos.position - Vector3.new(0, 5, 0)
  BlockEffect(BrickColor.new("Cool yellow"), Handle.CFrame * cf(0, -3, 0), 20, 20, 20, 5, 5, 5, 0.07)
  SphereEffect(BrickColor.new("White"), Handle.CFrame * cf(0, -3, 0), 30, 30, 30, 10, 10, 10, 0.07)
  MagniDamage(Hitbox, 25, 10, 15, 30, "Knockdown")
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2 + 0.1 * math.cos(sine / 9)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.5 - 0.1 * math.cos(sine / 9), -1) * angles(math.rad(0), math.rad(150), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.2, 0.5 + 0.15 * math.cos(sine / 9), -1) * angles(math.rad(0), math.rad(-150), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1 - 0.1 * math.cos(sine / 9), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1 - 0.1 * math.cos(sine / 9), 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  BPos.position = BPos.position + Vector3.new(0, 5, 0)
  Humanoid.WalkSpeed = 20
  attack = false
end

swordblast = function()
  attack = true
  Humanoid.WalkSpeed = 0
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2 + 0.1 * math.cos(sine / 9)) * angles(math.rad(-10), math.rad(10), math.rad(-70)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(15), math.rad(0), math.rad(70)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 - 0.1 * math.cos(sine / 9), 0.3 + 0.1 * math.cos(sine / 9) - 0.25) * angles(math.rad(-30), math.rad(0), math.rad(20)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 + 0.15 * math.cos(sine / 9), 0.2) * angles(math.rad(170), math.rad(0), math.rad(0)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1 - 0.1 * math.cos(sine / 9), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(-10)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1 - 0.1 * math.cos(sine / 9), 0) * LHCF * angles(math.rad(0), math.rad(30), math.rad(10)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)) * angles(math.rad(150), math.rad(0), math.rad(6)), 0.3)
  end
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2 + 0.1 * math.cos(sine / 9)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 - 0.1 * math.cos(sine / 9), 0.3 + 0.1 * math.cos(sine / 9) - 0.25) * angles(math.rad(-30), math.rad(0), math.rad(20)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 + 0.15 * math.cos(sine / 9), 0.2) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1 - 0.1 * math.cos(sine / 9), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1 - 0.1 * math.cos(sine / 9), 0) * LHCF * angles(math.rad(0), math.rad(30), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)) * angles(math.rad(150), math.rad(0), math.rad(6)), 0.3)
  end
  tPos = mouse.Hit.p
  ref = CreatePart(effect, "SmoothPlastic", 0, 1, BrickColor.new("Black"), "Reference", vt())
  ref.Anchored = true
  ref.CFrame = Handle.CFrame * cf(0, -2, 0)
  game:GetService("Debris"):AddItem(ref, 1)
  BlockEffect(BrickColor.new("White"), cf(ref.Position) * angles(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 7, 7, 7, 1, 1, 1, 0.08, 2)
  local icepart1 = CreatePart(effect, "SmoothPlastic", 0.5, 0, BrickColor.new("White"), "Ice", vt(2, 4, 2))
  icepart1.Anchored = true
  icepart1.Material = Enum.Material.Neon
  i1msh = CreateMesh("SpecialMesh", icepart1, "FileMesh", "http://www.roblox.com/asset/?id=1778999", vt(0, 0, 0), vt(0.7, 2, 0.7))
  icepart1.CFrame = cf(ref.Position)
  game:GetService("Debris"):AddItem(icepart1, 20)
  MouseLook = cf(icepart1.Position, mouse.Hit.p)
  table.insert(ShootEffects, {MouseLook, "ShootIce", 50, icepart1.Position, 8, 27, 0, icepart1, 7, 2})
  Humanoid.WalkSpeed = 16
  attack = false
end

destroytime = function()
  attack = true
  Humanoid.WalkSpeed = 0
  ref = CreatePart(effect, "SmoothPlastic", 0, 1, BrickColor.new("Black"), "ref", Vector3.new())
  ref.Anchored = true
  ref.CanCollide = false
  ref.Parent = nil
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2 + 0.1 * math.cos(sine / 9)) * angles(math.rad(-10), math.rad(10), math.rad(-70)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(15), math.rad(0), math.rad(70)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 - 0.1 * math.cos(sine / 9), 0.3 + 0.1 * math.cos(sine / 9) - 0.25) * angles(math.rad(-30), math.rad(0), math.rad(20)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 + 0.15 * math.cos(sine / 9), 0.2) * angles(math.rad(170), math.rad(0), math.rad(0)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1 - 0.1 * math.cos(sine / 9), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(-10)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1 - 0.1 * math.cos(sine / 9), 0) * LHCF * angles(math.rad(0), math.rad(30), math.rad(10)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)) * angles(math.rad(150), math.rad(0), math.rad(6)), 0.3)
  end
  for i = 0, 360, 60 do
    SphereEffect(BrickColor.new("Daisy orange"), RootPart.CFrame * CFrame.Angles(0, 0, math.rad(90)) * CFrame.Angles(math.rad(i), 0, 0) * CFrame.new(0, 0, -18), 1, 1, 1, 0.1, 0.1, 0.1, 0.01)
  end
  for i = 360, 0, -60 do
    swait()
    SphereEffect(BrickColor.new("Cool yellow"), RootPart.CFrame * CFrame.Angles(0, 0, math.rad(90)) * CFrame.Angles(math.rad(i), 0, 0) * CFrame.new(0, 0, -18), 5, 5, 5, -0.1, -0.1, -0.1, 0.03)
  end
  attack = true
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 - 0.1 * math.cos(sine / 9), 0.3 + 0.1 * math.cos(sine / 9) - 0.25) * angles(math.rad(-30), math.rad(0), math.rad(20)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 + 0.15 * math.cos(sine / 9), 0.2) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1 - 0.1 * math.cos(sine / 9), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1 - 0.1 * math.cos(sine / 9), 0) * LHCF * angles(math.rad(0), math.rad(30), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)) * angles(math.rad(150), math.rad(0), math.rad(6)), 0.3)
  end
  ref.Parent = effect
  CreateSound("http://www.roblox.com/asset/?id=200633780", Handle, 1, 1)
  RingEffect(BrickColor.new("Cool yellow"), RootPart.CFrame * angles(math.rad(90), 0, 0), 40, 40, 8, 0.5, 0.5, 0, 0.07)
  for i = 0, 360, 60 do
    ref.CFrame = RootPart.CFrame * CFrame.Angles(0, 0, math.rad(90)) * CFrame.Angles(math.rad(i), 0, 0) * CFrame.new(0, 0, -18)
    MagniDamage(Torso, 10, 10, 15, 70, "Up")
    BlockEffect(BrickColor.new("Cool yellow"), RootPart.CFrame * CFrame.Angles(0, 0, math.rad(90)) * CFrame.Angles(math.rad(i), 0, 0) * CFrame.new(0, 0, -18), 5, 5, 5, 3, 3, 3, 0.07)
  end
  Humanoid.WalkSpeed = 16
  attack = false
end

slashone = function()
  attack = true
  for i = 0, 1, 0.5 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(100)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(25), math.rad(0), math.rad(-100)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0.3) * angles(math.rad(90), math.rad(0), math.rad(20)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, -0.5) * angles(math.rad(0), math.rad(-100), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1.2, -1, -1) * RHCF * angles(math.rad(0), math.rad(30), math.rad(-30)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0.3) * LHCF * angles(math.rad(0), math.rad(30), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-60), math.rad(0), math.rad(50)) * angles(math.rad(190), math.rad(0), math.rad(6)), 0.3)
  end
  CreateSound("http://www.roblox.com/asset/?id=235097614", Handle, 1, 2)
  Effect1(RootPart.CFrame * CFrame.Angles(0, 3.2, 1.5), CFrame.new(0, 0, 2), 5, 150, 10, 2, 0.85, 0.01, 12, 15)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(100)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(25), math.rad(0), math.rad(-100)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0.3) * angles(math.rad(180), math.rad(0), math.rad(20)), 0.5)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, -0.5) * angles(math.rad(0), math.rad(0), math.rad(-20)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1.2, -1, -1) * RHCF * angles(math.rad(0), math.rad(30), math.rad(-30)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0.3) * LHCF * angles(math.rad(0), math.rad(30), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-90), math.rad(0), math.rad(50)) * angles(math.rad(190), math.rad(0), math.rad(6)), 0.3)
  end
  attack = false
end

slashtwo = function()
  attack = true
  for i = 0, 1, 0.25 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2 + 0.1 * math.cos(sine / 9)) * angles(math.rad(-10), math.rad(10), math.rad(-70)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(15), math.rad(0), math.rad(70)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 - 0.1 * math.cos(sine / 9), 0.3 + 0.1 * math.cos(sine / 9) - 0.25) * angles(math.rad(-30), math.rad(0), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 + 0.15 * math.cos(sine / 9), 0.2) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1 - 0.1 * math.cos(sine / 9), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(-10)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1 - 0.1 * math.cos(sine / 9), 0) * LHCF * angles(math.rad(0), math.rad(30), math.rad(10)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)) * angles(math.rad(150), math.rad(0), math.rad(6)), 0.3)
  end
  for i = 0, 1, 0.25 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(100)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(25), math.rad(0), math.rad(-100)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0.3) * angles(math.rad(0), math.rad(50), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, -0.5) * angles(math.rad(0), math.rad(-180), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1.2, -1, -1) * RHCF * angles(math.rad(0), math.rad(30), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0.3) * LHCF * angles(math.rad(0), math.rad(30), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(50)) * angles(math.rad(190), math.rad(0), math.rad(6)), 0.3)
  end
  CreateSound("http://www.roblox.com/asset/?id=235097614", Handle, 1, 2.5)
  Effect1(RootPart.CFrame * CFrame.Angles(0, 3.2, 0), CFrame.new(0, 0, 2), 5, 150, 10, 2, 0.85, 0.01, 7, 12)
  for i = 0, 1, 0.25 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(150)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(25), math.rad(0), math.rad(-80)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0.3) * angles(math.rad(0), math.rad(50), math.rad(90)), 0.5)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, -0.5) * angles(math.rad(0), math.rad(-180), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1.2, -1, -1) * RHCF * angles(math.rad(0), math.rad(30), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0.3) * LHCF * angles(math.rad(0), math.rad(30), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(50)) * angles(math.rad(190), math.rad(0), math.rad(6)), 0.3)
  end
  attack = false
end

attackone = function()
  attack = true
  local con = Handle.Touched:connect(function(hit)
    Damagefunc(Hitbox, hit, 8, 13, math.random(1, 5), "Normal", RootPart, 0.2, "rbxassetid://199149221", 0.8)
  end
)
  for i = 0, 1, 0.25 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(50)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(-55)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0.3 + 0.1 * math.cos(sine / 9) - 0.25) * angles(math.rad(60), math.rad(0), math.rad(50)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0.2) * angles(math.rad(0), math.rad(-40), math.rad(-40)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, -0.5) * RHCF * angles(math.rad(0), math.rad(-30), math.rad(-50)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0.3) * LHCF * angles(math.rad(0), math.rad(30), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-50)) * angles(math.rad(190), math.rad(0), math.rad(6)), 0.3)
  end
  CreateSound("http://www.roblox.com/asset/?id=189505665", Handle, 1, 1)
  Torso.Velocity = RootPart.CFrame.lookVector * 100
  for i = 0, 1, 0.25 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(50)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(-55)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0.3 + 0.1 * math.cos(sine / 9) - 0.25) * angles(math.rad(60), math.rad(0), math.rad(50)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0.2) * angles(math.rad(0), math.rad(-40), math.rad(-40)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, -0.5) * RHCF * angles(math.rad(0), math.rad(-30), math.rad(-50)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0.3) * LHCF * angles(math.rad(0), math.rad(30), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-50)) * angles(math.rad(190), math.rad(0), math.rad(6)), 0.3)
  end
  con:disconnect()
  attack = false
end

spattackone = function()
  attack = true
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0 + 0.1 * math.cos(sine / 9)) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(15), math.rad(0), math.rad(80)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 + 0.1 * math.cos(sine / 9), 0.2) * angles(math.rad(90), math.rad(0), math.rad(0)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 + 0.1 * math.cos(sine / 9), 0.4) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1 - 0.1 * math.cos(sine / 9), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1 - 0.1 * math.cos(sine / 9), 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  for i = 0, 1, 0.15 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0 + 0.1 * math.cos(sine / 9)) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.5)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(15), math.rad(0), math.rad(-90)), 0.5)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 + 0.1 * math.cos(sine / 9), 0.2) * angles(math.rad(90), math.rad(0), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 + 0.1 * math.cos(sine / 9), 0.4) * angles(math.rad(50), math.rad(0), math.rad(0)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1 - 0.1 * math.cos(sine / 9), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1 - 0.1 * math.cos(sine / 9), 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  CreateSound("http://www.roblox.com/asset/?id=231917772", Handle, 1, 1)
  MagniDamage(RightArm, 5, 9, 14, 0, "Normal")
  BlockEffect(BrickColor.new("Cool yellow"), RightArm.CFrame * cf(0, -1, 0), 5, 5, 5, 3, 3, 3, 0.07)
  SphereEffect(BrickColor.new("White"), RightArm.CFrame * cf(0, -1, 0), 10, 10, 10, 3, 3, 3, 0.07)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0 + 0.1 * math.cos(sine / 9)) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.5)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(15), math.rad(0), math.rad(-90)), 0.5)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 + 0.1 * math.cos(sine / 9), 0.2) * angles(math.rad(90), math.rad(0), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 + 0.1 * math.cos(sine / 9), 0.4) * angles(math.rad(50), math.rad(0), math.rad(0)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1 - 0.1 * math.cos(sine / 9), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1 - 0.1 * math.cos(sine / 9), 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  attack = false
end

spattacktwo = function()
  attack = true
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0 + 0.1 * math.cos(sine / 9)) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(15), math.rad(0), math.rad(-80)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 + 0.1 * math.cos(sine / 9), 0.4) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 + 0.1 * math.cos(sine / 9), 0.2) * angles(math.rad(90), math.rad(0), math.rad(0)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1 - 0.1 * math.cos(sine / 9), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1 - 0.1 * math.cos(sine / 9), 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  for i = 0, 1, 0.15 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0 + 0.1 * math.cos(sine / 9)) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.5)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(15), math.rad(0), math.rad(90)), 0.5)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 + 0.1 * math.cos(sine / 9), 0.4) * angles(math.rad(50), math.rad(0), math.rad(0)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 + 0.1 * math.cos(sine / 9), 0.2) * angles(math.rad(90), math.rad(0), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1 - 0.1 * math.cos(sine / 9), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1 - 0.1 * math.cos(sine / 9), 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  CreateSound("http://www.roblox.com/asset/?id=231917772", Handle, 1, 1.2)
  MagniDamage(RightArm, 5, 9, 14, 0, "Normal")
  BlockEffect(BrickColor.new("Cool yellow"), LeftArm.CFrame * cf(0, -1, 0), 5, 5, 5, 3, 3, 3, 0.07)
  SphereEffect(BrickColor.new("White"), LeftArm.CFrame * cf(0, -1, 0), 10, 10, 10, 3, 3, 3, 0.07)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0 + 0.1 * math.cos(sine / 9)) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.5)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(15), math.rad(0), math.rad(90)), 0.5)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 + 0.1 * math.cos(sine / 9), 0.4) * angles(math.rad(50), math.rad(0), math.rad(0)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 + 0.1 * math.cos(sine / 9), 0.2) * angles(math.rad(90), math.rad(0), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1 - 0.1 * math.cos(sine / 9), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1 - 0.1 * math.cos(sine / 9), 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  attack = false
end

spattackthree = function()
  attack = true
  Humanoid.WalkSpeed = 5
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2 + 0.1 * math.cos(sine / 9)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.5 - 0.1 * math.cos(sine / 9), -1) * angles(math.rad(0), math.rad(150), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.2, 0.5 + 0.15 * math.cos(sine / 9), -1) * angles(math.rad(0), math.rad(-150), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1 - 0.1 * math.cos(sine / 9), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1 - 0.1 * math.cos(sine / 9), 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  CreateSound("http://www.roblox.com/asset/?id=231917772", Handle, 1, 0.8)
  MagniDamage(RightArm, 5, 9, 18, 0, "Normal")
  BlockEffect(BrickColor.new("Cool yellow"), LeftArm.CFrame * cf(0, -1, 0), 15, 15, 15, 3, 3, 3, 0.07)
  SphereEffect(BrickColor.new("White"), LeftArm.CFrame * cf(0, -1, 0), 20, 20, 20, 3, 3, 3, 0.07)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2 + 0.1 * math.cos(sine / 9)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 - 0.1 * math.cos(sine / 9), 0.3 + 0.1 * math.cos(sine / 9) - 0.25) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 + 0.15 * math.cos(sine / 9), 0.2) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1 - 0.1 * math.cos(sine / 9), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1 - 0.1 * math.cos(sine / 9), 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  Humanoid.WalkSpeed = 20
  attack = false
end

switch = function()
  attack = true
  Humanoid.WalkSpeed = 5
  if heal == false then
    heal = true
  else
    heal = false
  end
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2 + 0.1 * math.cos(sine / 9)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 - 0.1 * math.cos(sine / 9), 0.3 + 0.1 * math.cos(sine / 9) - 0.25) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 + 0.15 * math.cos(sine / 9), 0.2) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1 - 0.1 * math.cos(sine / 9), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1 - 0.1 * math.cos(sine / 9), 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  CreateSound("http://www.roblox.com/asset/?id=206083252", Handle, 1, 0.8)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2 + 0.1 * math.cos(sine / 9)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.5 - 0.1 * math.cos(sine / 9), -1) * angles(math.rad(0), math.rad(150), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.2, 0.5 + 0.15 * math.cos(sine / 9), -1) * angles(math.rad(0), math.rad(-150), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1 - 0.1 * math.cos(sine / 9), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1 - 0.1 * math.cos(sine / 9), 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  Humanoid.WalkSpeed = 20
  attack = false
end

Disappear = function(Mod)
  for _,v in pairs(Mod:children()) do
    if v.className == "Hat" then
      for _,i in pairs(v:children()) do
        if i.className == "Part" then
          coroutine.resume(coroutine.create(function(Part)
    for i = 0, 1, 0.1 do
      swait()
      Part.Transparency = i
    end
    Part.Transparency = 1
  end
), i)
        end
      end
    end
    do
      do
        if v.className == "Part" and v.Name ~= "HumanoidRootPart" then
          coroutine.resume(coroutine.create(function(Part)
    for i = 0, 1, 0.1 do
      swait()
      Part.Transparency = i
    end
    Part.Transparency = 1
  end
), v)
        end
        -- DECOMPILER ERROR at PC40: LeaveBlock: unexpected jumping out DO_STMT

      end
    end
  end
end

Reappear = function(Mod)
  for _,v in pairs(Mod:children()) do
    if v.className == "Hat" then
      for _,i in pairs(v:children()) do
        if i.className == "Part" and v.Name ~= "Handle" then
          coroutine.resume(coroutine.create(function(Part)
    for i = 1, 0, -0.1 do
      swait()
      Part.Transparency = i
    end
    Handle.Transparency = 1
    Hitbox.Transparency = 1
    Part.Transparency = 0
  end
), i)
        end
      end
    end
    do
      do
        if v.className == "Part" and v.Name ~= "HumanoidRootPart" and v.Name ~= "Handle" then
          coroutine.resume(coroutine.create(function(Partt)
    for i = 1, 0, -0.1 do
      swait()
      Partt.Transparency = i
    end
    FakeHandle.Transparency = 1
    Hitbox.Transparency = 1
    Partt.Transparency = 0
  end
), v)
          Hitbox.Transparency = 1
        end
        -- DECOMPILER ERROR at PC48: LeaveBlock: unexpected jumping out DO_STMT

      end
    end
  end
  Hitbox.Transparency = 1
end

Take = function()
  attack = true
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0 + 0.1 * math.cos(sine / 9)) * angles(math.rad(0), math.rad(0), math.rad(-20)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 + 0.1 * math.cos(sine / 9), 0.2) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 + 0.1 * math.cos(sine / 9), 0.2) * angles(math.rad(0), math.rad(0), math.rad(-10)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1 - 0.1 * math.cos(sine / 9), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1 - 0.1 * math.cos(sine / 9), 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  Disappear(m)
  CreateSound("http://www.roblox.com/asset/?id=206083252", Handle, 1, 1)
  SphereEffect(BrickColor.new("White"), Hitbox.CFrame, 20, 50, 20, 5, 5, 10, 0.07)
  for i = 0, 1, 0.05 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0 + 0.1 * math.cos(sine / 9)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 + 0.1 * math.cos(sine / 9), 0.2) * angles(math.rad(170), math.rad(0), math.rad(0)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 + 0.1 * math.cos(sine / 9), 0.2) * angles(math.rad(0), math.rad(0), math.rad(-10)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1 - 0.1 * math.cos(sine / 9), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1 - 0.1 * math.cos(sine / 9), 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  Reappear(m)
  BPos.Parent = nil
  Gy.Parent = nil
  HandleWeld.Parent = RightArm
  SphereEffect(BrickColor.new("White"), Hitbox.CFrame, 20, 20, 50, 5, 5, 10, 0.07)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0 + 0.1 * math.cos(sine / 9)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 + 0.1 * math.cos(sine / 9), 0.2) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 + 0.1 * math.cos(sine / 9), 0.2) * angles(math.rad(0), math.rad(0), math.rad(-10)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1 - 0.1 * math.cos(sine / 9), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1 - 0.1 * math.cos(sine / 9), 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  fathermode = false
  attack = false
end

Plant = function()
  attack = true
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2 + 0.1 * math.cos(sine / 9)) * angles(math.rad(-10), math.rad(10), math.rad(-70)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(15), math.rad(0), math.rad(70)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 - 0.1 * math.cos(sine / 9), 0.3 + 0.1 * math.cos(sine / 9) - 0.25) * angles(math.rad(-30), math.rad(0), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 + 0.15 * math.cos(sine / 9), 0.2) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1 - 0.1 * math.cos(sine / 9), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(-10)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1 - 0.1 * math.cos(sine / 9), 0) * LHCF * angles(math.rad(0), math.rad(30), math.rad(10)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)) * angles(math.rad(150), math.rad(0), math.rad(6)), 0.3)
  end
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(100)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(25), math.rad(0), math.rad(-100)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0.3) * angles(math.rad(0), math.rad(0), math.rad(190)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, -0.5) * angles(math.rad(0), math.rad(0), math.rad(-40)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1.2, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-90), math.rad(0), math.rad(0)), 0.3)
  end
  CreateSound("http://www.roblox.com/asset/?id=191395766", Handle, 1, 0.7)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(100)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(25), math.rad(0), math.rad(-100)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0.3) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.5)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, -0.5) * angles(math.rad(0), math.rad(0), math.rad(-10)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1.2, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-90), math.rad(0), math.rad(0)), 0.3)
  end
  HandleWeld.Parent = nil
  BPos.P = 50000
  BPos.D = 1000
  BPos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
  BPos.position = FakeHandle.Position
  BPos.Parent = FakeHandle
  Gy.maxTorque = vt(math.huge, math.huge, math.huge)
  Gy.P = 20000
  Gy.cframe = FakeHandle.CFrame
  Gy.Parent = FakeHandle
  for i = 0, 1, 0.1 do
    swait()
    BPos.position = BPos.position + Vector3.new(0, i, 0)
  end
  SphereEffect(BrickColor.new("White"), Handle.CFrame, 0, 0, 0, 2, 2, 2, 0.05)
  CreateSound("http://www.roblox.com/asset/?id=192410089", Handle, 1, 0.7)
  fathermode = true
  attack = false
end

attacktwo = function()
  attack = true
  local con = Hitbox.Touched:connect(function(hit)
    Damagefunc(Hitbox, hit, 8, 14, math.random(1, 5), "Normal", RootPart, 0.2, "rbxassetid://199149221", 0.8)
  end
)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2 + 0.1 * math.cos(sine / 9)) * angles(math.rad(-10), math.rad(10), math.rad(-70)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(15), math.rad(0), math.rad(70)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 - 0.1 * math.cos(sine / 9), 0.3 + 0.1 * math.cos(sine / 9) - 0.25) * angles(math.rad(-30), math.rad(0), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 + 0.15 * math.cos(sine / 9), 0.2) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1 - 0.1 * math.cos(sine / 9), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(-10)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1 - 0.1 * math.cos(sine / 9), 0) * LHCF * angles(math.rad(0), math.rad(30), math.rad(10)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)) * angles(math.rad(150), math.rad(0), math.rad(6)), 0.3)
  end
  CreateSound("http://www.roblox.com/asset/?id=231917961", Handle, 1, 1)
  for i = 0, 1, 0.25 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(100)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(25), math.rad(0), math.rad(-100)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0.3) * angles(math.rad(0), math.rad(50), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, -0.5) * angles(math.rad(0), math.rad(-180), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1.2, -1, -1) * RHCF * angles(math.rad(0), math.rad(30), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0.3) * LHCF * angles(math.rad(0), math.rad(30), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(50)) * angles(math.rad(190), math.rad(0), math.rad(6)), 0.3)
  end
  for i = 0, 1, 0.25 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(100)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(25), math.rad(0), math.rad(-100)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0.3) * angles(math.rad(0), math.rad(50), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, -0.5) * angles(math.rad(0), math.rad(-180), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1.2, -1, -1) * RHCF * angles(math.rad(0), math.rad(30), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0.3) * LHCF * angles(math.rad(0), math.rad(30), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(50)) * angles(math.rad(190), math.rad(0), math.rad(6)), 0.3)
  end
  con:disconnect()
  attack = false
end

attackthree = function()
  attack = true
  local con = Hitbox.Touched:connect(function(hit)
    Damagefunc(Hitbox, hit, 8, 14, math.random(1, 5), "Normal", RootPart, 0.2, "rbxassetid://199149221", 0.8)
  end
)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2 + 0.1 * math.cos(sine / 9)) * angles(math.rad(-10), math.rad(10), math.rad(-70)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(35), math.rad(0), math.rad(75)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 - 0.1 * math.cos(sine / 9), 0.3 + 0.1 * math.cos(sine / 9) - 0.25) * angles(math.rad(-30), math.rad(0), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 + 0.15 * math.cos(sine / 9), 0.2) * angles(math.rad(0), math.rad(0), math.rad(-40)), 0.3)
    RH.C0 = clerp(RH.C0, cf(0.8, -1, -0.5) * RHCF * angles(math.rad(0), math.rad(0), math.rad(-30)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1 - 0.1 * math.cos(sine / 9), 0) * LHCF * angles(math.rad(0), math.rad(30), math.rad(10)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(190), math.rad(0)), 0.3)
  end
  CreateSound("http://www.roblox.com/asset/?id=231917961", Handle, 1, 1.3)
  for i = 0, 1, 0.25 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(100)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(25), math.rad(0), math.rad(-100)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0.3) * angles(math.rad(0), math.rad(50), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, -0.5) * angles(math.rad(0), math.rad(-180), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1.2, -1, -1) * RHCF * angles(math.rad(0), math.rad(30), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0.3) * LHCF * angles(math.rad(0), math.rad(30), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(50)) * angles(math.rad(190), math.rad(0), math.rad(6)), 0.3)
  end
  for i = 0, 1, 0.25 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(100)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(25), math.rad(0), math.rad(-100)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0.3) * angles(math.rad(0), math.rad(50), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, -0.5) * angles(math.rad(0), math.rad(-180), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1.2, -1, -1) * RHCF * angles(math.rad(0), math.rad(30), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0.3) * LHCF * angles(math.rad(0), math.rad(30), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(50)) * angles(math.rad(190), math.rad(0), math.rad(6)), 0.3)
  end
  con:disconnect()
  attack = false
end

ob1u = function()
end

ob1d = function()
  if fathermode == false then
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
  else
    if attack == false and attacktype == 1 then
      attacktype = 2
      spattackone()
    else
      if attack == false and attacktype == 2 then
        attacktype = 3
        spattacktwo()
      else
        if attack == false and attacktype == 3 then
          attacktype = 1
          spattackthree()
        end
      end
    end
  end
end

local slashcomb = 1
key = function(k)
  k = k:lower()
  if attack == false and k == "z" and slashcomb == 1 and fathermode == false and cooldown1 >= 10 then
    cooldown1 = cooldown1 - 10
    slashcomb = 2
    slashone()
  else
    if attack == false and k == "z" and slashcomb == 2 and fathermode == false and cooldown1 >= 10 then
      cooldown1 = cooldown1 - 10
      slashtwo()
      slashcomb = 1
    else
      if attack == false and k == "z" and fathermode == true and cooldown1 >= 10 then
        cooldown1 = cooldown1 - 10
        swordblast()
      else
        if attack == false and k == "x" and fathermode == false and co2 <= cooldown2 then
          cooldown2 = 0
          timewarp()
        else
          if attack == false and k == "x" and fathermode == true and co2 <= cooldown2 then
            cooldown2 = 0
            tempus()
          else
            if attack == false and k == "c" and fathermode == false and co3 <= cooldown3 then
              cooldown3 = 0
              destroytime()
            else
              if attack == false and k == "c" and fathermode == true then
                switch()
              else
                if attack == false and k == "v" and fathermode == false then
                  Plant()
                else
                  if attack == false and k == "v" and fathermode == true then
                    Take()
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
local away = false
local debb = false
fatherly = function()
  if debb == true then
    return 
  end
  if cooldown4 <= 0 then
    away = true
    attack = true
    for i = 0, 1, 0.1 do
      swait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0 + 0.1 * math.cos(sine / 9)) * angles(math.rad(0), math.rad(0), math.rad(-20)), 0.3)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
      RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 + 0.1 * math.cos(sine / 9), 0.2) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 + 0.1 * math.cos(sine / 9), 0.2) * angles(math.rad(0), math.rad(0), math.rad(-10)), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -1 - 0.1 * math.cos(sine / 9), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -1 - 0.1 * math.cos(sine / 9), 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    end
    Disappear(m)
    SphereEffect(BrickColor.new("White"), Hitbox.CFrame, 20, 50, 20, 5, 5, 10, 0.07)
    for i = 0, 1, 0.05 do
      swait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0 + 0.1 * math.cos(sine / 9)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 + 0.1 * math.cos(sine / 9), 0.2) * angles(math.rad(170), math.rad(0), math.rad(0)), 0.3)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 + 0.1 * math.cos(sine / 9), 0.2) * angles(math.rad(0), math.rad(0), math.rad(-10)), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -1 - 0.1 * math.cos(sine / 9), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -1 - 0.1 * math.cos(sine / 9), 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    end
    Reappear(m)
    BPos.Parent = nil
    Gy.Parent = nil
    HandleWeld.Parent = RightArm
    SphereEffect(BrickColor.new("White"), Hitbox.CFrame, 20, 20, 50, 5, 5, 10, 0.07)
    cooldown4 = cooldown4 + 2
    for i = 0, 1, 0.1 do
      swait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0 + 0.1 * math.cos(sine / 9)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 + 0.1 * math.cos(sine / 9), 0.2) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 + 0.1 * math.cos(sine / 9), 0.2) * angles(math.rad(0), math.rad(0), math.rad(-10)), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -1 - 0.1 * math.cos(sine / 9), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -1 - 0.1 * math.cos(sine / 9), 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    end
    fathermode = false
    attack = false
    away = false
    debb = false
  end
  if fathermode == true then
    cooldown4 = cooldown4 - 1
    debb = true
    for i = 0, 1, 0.05 do
      swait()
    end
    if heal == true then
      MagniDamage(Handle, 20, -3, -1, 0, "Normal")
      SphereEffect(BrickColor.new("White"), Handle.CFrame * cf(0, -3, 0), 30, 30, 30, 10, 10, 10, 0.07)
    else
      MagniDamage(Handle, 20, 1, 3, 2, "Normal")
      SphereEffect(BrickColor.new("Persimmon"), Handle.CFrame * cf(0, -3, 0), 30, 30, 30, 10, 10, 10, 0.07)
    end
    debb = false
  end
end

updateskills = function()
  if fathermode == true then
    text1.Text = "[Z]\n Time blast"
    text2.Text = "[X]\n Over clock"
    text3.Text = "[C]\n Judgement"
  else
    text1.Text = "[Z]\n  Spacial Wave"
    text2.Text = "[X]\n Clockwork"
    text3.Text = "[C]\n Counter Clockwork"
  end
  if cooldown1 <= co1 then
    cooldown1 = cooldown1 + 0.033333333333333
  end
  if cooldown2 <= co2 then
    cooldown2 = cooldown2 + 0.033333333333333
  end
  if cooldown3 <= co3 then
    cooldown3 = cooldown3 + 0.033333333333333
  end
  if cooldown4 <= co4 and fathermode == false then
    cooldown4 = cooldown4 + 0.033333333333333
  end
end

while 1 do
  swait()
  updateskills()
  bar4:TweenSize(UDim2.new(1 * (cooldown4 / co4), 0, 1, 0), "Out", "Quad", 0.5)
  bar3:TweenSize(UDim2.new(1 * (cooldown3 / co3), 0, 1, 0), "Out", "Quad", 0.5)
  bar1:TweenSize(UDim2.new(1 * (cooldown1 / co1), 0, 1, 0), "Out", "Quad", 0.5)
  bar2:TweenSize(UDim2.new(1 * (cooldown2 / co2), 0, 1, 0), "Out", "Quad", 0.5)
  coroutine.resume(coroutine.create(function()
  if away == true then
    return 
  end
  fatherly()
end
))
  Torsovelocity = RootPart.Velocity * Vector3.new(1, 0, 1).magnitude
  velocity = RootPart.Velocity.y
  sine = sine + change
  local hit, pos = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 4, Character)
  if equipped == true or equipped == false then
    if attack == false and fathermode == true then
      BPos.position = BPos.position + Vector3.new(0, 0 + 0.05 * math.cos((sine) / 6), 0)
    end
    if 1 < RootPart.Velocity.y and hit == nil then
      Anim = "Jump"
      if attack == false then
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(30)), 0.3)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-30)), 0.3)
        RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
        LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      end
    else
      if RootPart.Velocity.y < -1 and hit == nil then
        Anim = "Fall"
        if attack == false then
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
          Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
          RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(50)), 0.3)
          LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-50)), 0.3)
          RH.C0 = clerp(RH.C0, cf(1, -1, -0.8) * RHCF * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
          LH.C0 = clerp(LH.C0, cf(-1, -0.7, -0.5) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
        end
      else
        if (math.abs(Torsovelocity.x) + math.abs(Torsovelocity.z)) < 1 and hit ~= nil then
          Anim = "Idle"
          if attack == false then
            if fathermode == false then
              change = 1
              RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2 + 0.1 * math.cos((sine) / 9)) * angles(math.rad(-10), math.rad(10), math.rad(-50)), 0.3)
              Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(15), math.rad(0), math.rad(55)), 0.3)
              RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 - 0.1 * math.cos((sine) / 9), 0.3 + 0.1 * math.cos((sine) / 9) - 0.25) * angles(math.rad(-30), math.rad(0), math.rad(0)), 0.3)
              LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 + 0.15 * math.cos((sine) / 9), 0.2) * angles(math.rad(0), math.rad(0), math.rad(-40)), 0.3)
              RH.C0 = clerp(RH.C0, cf(1, -1 - 0.1 * math.cos((sine) / 9), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(-10)), 0.3)
              LH.C0 = clerp(LH.C0, cf(-1, -1 - 0.1 * math.cos((sine) / 9), 0) * LHCF * angles(math.rad(0), math.rad(30), math.rad(10)), 0.3)
              FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)) * angles(math.rad(150), math.rad(0), math.rad(6)), 0.3)
            else
              change = 1
              RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0 + 0.1 * math.cos((sine) / 9)) * angles(math.rad(0), math.rad(0), math.rad(-10)), 0.3)
              Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(15), math.rad(0), math.rad(10)), 0.3)
              RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 + 0.1 * math.cos((sine) / 9), 0.2) * angles(math.rad(0), math.rad(0), math.rad(10)), 0.3)
              LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 + 0.1 * math.cos((sine) / 9), 0.2) * angles(math.rad(0), math.rad(0), math.rad(-10)), 0.3)
              RH.C0 = clerp(RH.C0, cf(1, -1 - 0.1 * math.cos((sine) / 9), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
              LH.C0 = clerp(LH.C0, cf(-1, -1 - 0.1 * math.cos((sine) / 9), 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
            end
          end
        else
          if 2 < (math.abs(Torsovelocity.x) + math.abs(Torsovelocity.z)) and hit ~= nil then
            Anim = "Walk"
            if attack == false then
              if fathermode == false then
                Humanoid.WalkSpeed = 15
                RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0 + 0.1 * math.cos((sine) / 9)) * angles(math.rad(0), math.rad(0), math.rad(-50)), 0.3)
                Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(15), math.rad(0), math.rad(55)), 0.3)
                RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 - 0.1 * math.cos((sine) / 9), 0.3 + 0.1 * math.cos((sine) / 9) - 0.25) * angles(math.rad(-30), math.rad(0), math.rad(0)), 0.3)
                LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5 + 0.15 * math.cos((sine) / 9), -0.5) * angles(math.rad(0), math.rad(-150), math.rad(-90)), 0.3)
                RH.C0 = clerp(RH.C0, cf(1, -1 - 0.1 * math.cos((sine) / 9), 0) * RHCF * angles(math.rad(0), math.rad(-20), math.rad(0 - 50 * math.cos((sine) / 5))), 0.3)
                LH.C0 = clerp(LH.C0, cf(-1, -1 - 0.1 * math.cos((sine) / 9), 0) * LHCF * angles(math.rad(0), math.rad(-20), math.rad(0 - 50 * math.cos((sine) / 5))), 0.3)
                FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)) * angles(math.rad(150), math.rad(0), math.rad(6)), 0.3)
              else
                Humanoid.WalkSpeed = 20
                RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0.1 + 0.1 * math.cos((sine) / 9)) * angles(math.rad(10), math.rad(0), math.rad(30)), 0.3)
                Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-10), math.rad(0), math.rad(-30)), 0.3)
                RW.C0 = clerp(RW.C0, CFrame.new(1, 1 + 0.15 * math.cos((sine) / 9), -0.8) * angles(math.rad(0), math.rad(160), math.rad(90)), 0.3)
                LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 + 0.15 * math.cos((sine) / 9), 0) * angles(math.rad(-10), math.rad(0), math.rad(-20)), 0.3)
                RH.C0 = clerp(RH.C0, cf(1, -1 + 0.1 * math.cos((sine) / 3), 0) * RHCF * angles(math.rad(-10), math.rad(0), math.rad(0 - 50 * math.cos((sine) / 3))), 0.3)
                LH.C0 = clerp(LH.C0, cf(-1, -1 - 0.1 * math.cos((sine) / 3), 0) * LHCF * angles(math.rad(10), math.rad(0), math.rad(0 - 50 * math.cos((sine) / 3))), 0.3)
                FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)) * angles(math.rad(150), math.rad(0), math.rad(6)), 0.3)
              end
            end
          end
        end
      end
    end
  end
  for i,v in pairs(LoopFunctions) do
    v[2] = v[2] + 1
    v[3](v[2] / v[1])
    if v[1] <= v[2] then
      LoopFunctions[i] = nil
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
    do
      if 0 < #ShootEffects then
        for e = 1, #ShootEffects do
          if ShootEffects[e] ~= nil then
            local Thing = ShootEffects[e]
            if Thing ~= nil then
              local Part = Thing[1]
              local Mode = Thing[2]
              local Delay = Thing[3]
              local IncX = Thing[4]
              local IncY = Thing[5]
              local IncZ = Thing[6]
              if Thing[2] == "ShootIce" then
                local Look = Thing[1]
                local hit, pos = rayCast(Thing[4], Look.lookVector, Thing[9], Character)
                local mag = Thing[4] - pos.magnitude
                Thing[8].CFrame = CFrame.new((Thing[4] + pos) / 2, pos) * angles(-1.57, 0, 0)
                Thing[4] = Thing[4] + Look.lookVector * Thing[9]
                Thing[3] = Thing[3] - 1
                BlockEffect(BrickColor.new("Cool yellow"), Thing[8].CFrame, 20, 20, 20, 5, 5, 5, 0.1)
                if hit ~= nil or Thing[3] <= 0 then
                  Thing[3] = 0
                  ref = CreatePart(effect, "SmoothPlastic", 0, 1, BrickColor.new("Really red"), "Reference", vt())
                  ref.Anchored = true
                  ref.CFrame = cf(pos)
                  game:GetService("Debris"):AddItem(ref, 1)
                  ref2 = CreatePart(effect, "SmoothPlastic", 0, 1, BrickColor.new("Really red"), "Reference", vt(5, 5, 5))
                  ref2.Anchored = true
                  ref2.CFrame = cf(pos)
                  game:GetService("Debris"):AddItem(ref2, 5)
                  size = 3
                  if Thing[10] == 2 then
                    freeze = true
                    size = 4
                    CreateSound("http://www.roblox.com/asset/?id=338594574", ref, 1, 1)
                  else
                    CreateSound("http://www.roblox.com/asset/?id=338594556", ref, 1, 1)
                  end
                  MagniDamage(ref, size, Thing[5], Thing[6], Thing[7], "Normal")
                  freeze = false
                  for i = 1, 8 do
                    BreakEffect(BrickColor.new("Cool yellow"), ref.CFrame * cf(math.random(-200, 200) / 100, math.random(-200, 200) / 100, math.random(-200, 200) / 100), math.random(20, 50) / 100, math.random(1, 5), math.random(20, 50) / 100)
                  end
                  if Thing[10] == 2 then
                    for i = 1, 5 do
                      BlockEffect(BrickColor.new("Cool yellow"), cf(ref.Position) * cf(math.random(-100, 100) / 100, math.random(-100, 100) / 100, math.random(-100, 100) / 100) * angles(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 30, 30, 30, 0.5, 0.5, 0.5, 0.05)
                    end
                  end
                end
                do
                  do
                    do
                      if Thing[3] <= 0 then
                        Thing[8].Transparency = 1
                        game:GetService("Debris"):AddItem(Thing[8], 5)
                        table.remove(ShootEffects, e)
                      end
                      Part.Parent = nil
                      table.remove(ShootEffects, e)
                      -- DECOMPILER ERROR at PC11569: LeaveBlock: unexpected jumping out DO_STMT

                      -- DECOMPILER ERROR at PC11569: LeaveBlock: unexpected jumping out DO_STMT

                      -- DECOMPILER ERROR at PC11569: LeaveBlock: unexpected jumping out IF_THEN_STMT

                      -- DECOMPILER ERROR at PC11569: LeaveBlock: unexpected jumping out IF_STMT

                      -- DECOMPILER ERROR at PC11569: LeaveBlock: unexpected jumping out IF_THEN_STMT

                      -- DECOMPILER ERROR at PC11569: LeaveBlock: unexpected jumping out IF_STMT

                      -- DECOMPILER ERROR at PC11569: LeaveBlock: unexpected jumping out IF_THEN_STMT

                      -- DECOMPILER ERROR at PC11569: LeaveBlock: unexpected jumping out IF_STMT

                    end
                  end
                end
              end
            end
          end
        end
      end
      -- DECOMPILER ERROR at PC11570: LeaveBlock: unexpected jumping out DO_STMT

    end
  end
end
