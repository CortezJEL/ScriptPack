wait(1/60)
Effects = {}
local Player = game.Players.localPlayer
local Character = Player.Character
local Humanoid = Character.Humanoid
local mouse = Player:GetMouse()
local m = Instance.new("Model", Character)
m.Name = "WeaponModel"
local effect = Instance.new("Model", Character)
effect.Name = "Effect"
ShootEffects = {}
local LeftArm = Character["Left Arm"]
local RightArm = Character["Right Arm"]
local LeftLeg = Character["Left Leg"]
local RightLeg = Character["Right Leg"]
local Head = Character.Head
local Torso = Character.Torso
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
local vt = Vector3.new
local grabbed = false
local cf = CFrame.new
local mr = math.rad
local angles = CFrame.Angles
local ud = UDim2.new
local c3 = Color3.new
local hikyu = {}
local hikyuwelds = {}
local demon = false
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
local co1 = 10
local co2 = 20
local co3 = 15
local co4 = 100
local cooldown1 = 0
local cooldown2 = 0
local cooldown3 = 0
local cooldown4 = 0
local maxEnergy = 100
local Energy = 0
local skill1stam = 10
local skill2stam = 50
local skill3stam = 60
local skill4stam = 100
local recovermana = 5
local skillcolorscheme = BrickColor.new("Magenta").Color
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
text1.Text = "[Z]\n Dragon Zen"
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
text2.Text = "[X]\n Dragon Charge"
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
text3.Text = "[C]\n Shadowblast"
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
text4.Text = "[V]\n Devil Trigger"
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
end)
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
Bin = Instance.new("HopperBin")
Bin.Name = "Omnuro"
Bin.Parent = Player.Backpack
Handle = CreatePart(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Handle", Vector3.new(0.399999976, 0.869999945, 0.300000012))
HandleWeld = CreateWeld(m, Character["Right Arm"], Handle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.208029747, 0.0953121185, 1.06537342, 1, 0, 0, 0, 5.96046448e-08, -1, 0, 1, 5.96046448e-08))
FakeHandle = CreatePart(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "FakeHandle", Vector3.new(0.399999976, 0.869999945, 0.300000012))
FakeHandleWeld = CreateWeld(m, Handle, FakeHandle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.25, 0, "Really black", "Part", Vector3.new(0.219999999, 1.17999983, 1.86000025))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -4.07659245, 0.857691765, 1, 0, 0, 0, 0.965925872, -0.258818984, 0, 0.258818984, 0.965925872))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.200000003, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.399999976, 7.5, 0.300000012))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0.410000801, 0.60310936, 1, 0, 0, 0, 1, -5.96046448e-08, 0, 5.96046448e-08, 1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.399999976, 0.73999995, 0.300000012))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0.947307587, -1.09274721, 1, 0, 0, 0, 0.499999881, 0.866025507, 0, -0.866025507, 0.499999881))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.399999976, 4.67000008, 0.300000012))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -1.09999847, -1.90734863e-06, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.319999993, 0.399999946, 0.319999993))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 1.23499966, -0.0100002289, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.399999976, 0.509999871, 1.32000005))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -3.26311302, -0.668252945, 1, 0, 0, 0, 0.965925872, -0.258818835, 0, 0.258818835, 0.965925872))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.399999976, 0.509999871, 0.950000048))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -2.22827005, -2.02235126, 1, 0, 0, 0, 0.50000006, -0.866025329, 0, 0.866025329, 0.50000006))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.400000006, 0.360000014, 0.360000014))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -2.6616106, 0.48418808, 1, 0, 0, 0, 0.965925872, -0.258818984, 0, 0.258818984, 0.965925872))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.399999976, 0.549999893, 0.570000052))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -3.25119781, -1.35353184, 1, 0, 0, 0, 0.965925872, -0.258818984, 0, 0.258818984, 0.965925872))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.399999976, 0.549999893, 0.570000052))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 4.06925964, 0.614060402, 1, 0, 0, 0, 1, 8.94069672e-08, 0, -8.94069672e-08, 1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.25, 0, "Really black", "Part", Vector3.new(0.219999999, 1.47999978, 1.32000005))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -3.91232109, -0.71225071, 1, 0, 0, 0, 0.965925932, -0.258818895, 0, 0.258818895, 0.965925932))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(0.200000003, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.25, 0, "Really black", "Part", Vector3.new(0.219999999, 0.259999871, 1.33000016))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -1.50024986, 4.00721741, 1, 0, 0, 0, 0.258818895, 0.965925932, 0, -0.965925932, 0.258818895))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.200000003, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.25, 0, "Really black", "Part", Vector3.new(0.219999999, 1.23999989, 1.19000006))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 2.89333248, -0.571914673, 1, 0, 0, 0, -0.965925932, 0.258818716, 0, -0.258818716, -0.965925932))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.200000003, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.25, 0, "Really black", "Part", Vector3.new(0.219999999, 5.46000004, 1.09000003))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -0.343867302, 1.9057188, 1, 0, 0, 0, 1, 2.08616257e-07, 0, -2.08616257e-07, 1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(0.200000003, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.25, 0, "Really black", "Part", Vector3.new(0.219999999, 0.21999988, 5.27999973))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -2.50356007, -0.322682381, 1, 0, 0, 0, 2.68220901e-07, -1, 0, 1, 2.68220901e-07))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.200000003, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.25, 0, "Really black", "Part", Vector3.new(0.219999999, 1.0999999, 0.339999676))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -1.91355896, 2.5473156, 1, 0, 0, 0, 2.68220901e-07, -1, 0, 1, 2.68220901e-07))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.200000003, 1, 1))
Hitbox = CreatePart(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Hitbox", Vector3.new(0.219999999, 7.46000004, 1.8900001))
HitboxWeld = CreateWeld(m, FakeHandle, Hitbox, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -0.943867683, 1.50571918, 1, 0, 0, 0, 1, 2.08616257e-07, 0, -2.08616257e-07, 1))
for _,c in pairs(m:children()) do
  if c.className == "Part" then
    table.insert(hikyu, c)
  end
end
for _,c in pairs(m:children()) do
  if c.className == "Weld" then
    table.insert(hikyuwelds, c)
    print(c)
  end
end
local scythn = (Instance.new("Model"))
scythn.Parent = nil
scythn.Name = "Scythnara"
DBlade = {}
DBladeWelds = {}
Handle2 = CreatePart(scythn, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Handle2", Vector3.new(0.399999976, 1.68000007, 0.300000012))
HandleWeld2 = CreateWeld(scythn, Character["Right Arm"], Handle2, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.123840332, -0.350254059, 0.976046801, 1, 0, 0, 0, 0, -1, 0, 1, 0))
FakeHandle2 = CreatePart(scythn, Enum.Material.SmoothPlastic, 0, 1, "Really black", "FakeHandle2", Vector3.new(0.399999976, 1.68000007, 0.300000012))
FakeHandleWeld2 = CreateWeld(scythn, Handle2, FakeHandle2, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
Hitbox1 = CreatePart(scythn, Enum.Material.SmoothPlastic, 0.25, 1, "Really black", "Hitbox1", Vector3.new(0.219999999, 7.17000008, 1.09000003))
HitboxWeld = CreateWeld(scythn, FakeHandle2, Hitbox, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000198364258, -1.6038084, 4.89488792, 1, -3.9999999e-05, 0, 2.07545563e-05, 0.518863916, 0.854856908, -3.41942759e-05, -0.854856908, 0.518863916))
Part = CreatePart(scythn, Enum.Material.SmoothPlastic, 0.25, 0, "Really black", "Part", Vector3.new(0.219999999, 0.949999809, 1.86000025))
PartWeld = CreateWeld(scythn, FakeHandle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000259399414, -5.49339867, 3.54178715, 1, -3.9999999e-05, 0, 2.88973588e-05, 0.722433984, 0.691439986, -2.76575993e-05, -0.691439986, 0.722433984))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.200000003, 1, 1))
Part = CreatePart(scythn, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.399999976, 7.5, 0.300000012))
PartWeld = CreateWeld(scythn, FakeHandle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -1.61000061, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(scythn, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.399999976, 0.549999893, 0.570000052))
PartWeld = CreateWeld(scythn, FakeHandle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000106811523, -5.04621124, -2.45902061, 1, -2.59999997e-05, 3.40000006e-05, 3.39145663e-05, 0.965919375, -0.258843094, -2.61113419e-05, 0.258843094, 0.965919495))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(scythn, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.399999976, 0.549999893, 0.570000052))
PartWeld = CreateWeld(scythn, FakeHandle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-7.62939453e-05, 2.049263, 0.0110206604, 1, -3.09999996e-05, 2.99999992e-05, 3.10008982e-05, 1, -2.99999992e-05, -2.99990697e-05, 3.00009287e-05, 1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(scythn, Enum.Material.SmoothPlastic, 0.25, 0, "Really black", "Part", Vector3.new(0.219999999, 1.26999974, 1.32000005))
PartWeld = CreateWeld(scythn, FakeHandle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000213623047, -5.33908844, 1.97184277, 1, -3.9999999e-05, 0, 2.88973588e-05, 0.722433984, 0.691439986, -2.76575993e-05, -0.691439986, 0.722433984))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(0.200000003, 1, 1))
Part = CreatePart(scythn, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.399999976, 0.509999871, 1.32000005))
PartWeld = CreateWeld(scythn, FakeHandle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000122070313, -5.0581398, -1.77374744, 1, -2.59999997e-05, 3.40000006e-05, 3.39145663e-05, 0.965919375, -0.258843094, -2.61113419e-05, 0.258843094, 0.965919495))
Part = CreatePart(scythn, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.399999976, 0.73999995, 0.300000012))
PartWeld = CreateWeld(scythn, FakeHandle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.52587891e-05, -0.585006714, 0.355051041, 1, -4.19999997e-05, 1.10000001e-05, 1.14751729e-05, 0.500030041, 0.866008103, -4.18726668e-05, -0.866008103, 0.500030041))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(scythn, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.399999976, 0.509999871, 0.950000048))
PartWeld = CreateWeld(scythn, FakeHandle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(7.62939453e-05, -2.71579361, -4.07339287, 1, -1.10000001e-05, 4.19999997e-05, 4.18735726e-05, 0.499962181, -0.866047323, -1.14718914e-05, 0.866047323, 0.499962181))
Part = CreatePart(scythn, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.399999976, 4.67000008, 0.300000012))
PartWeld = CreateWeld(scythn, FakeHandle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(7.62939453e-05, -3.11997795, -0.603192568, 1, -3.09999996e-05, 2.99999992e-05, 3.10008982e-05, 1, -2.99999992e-05, -2.99990697e-05, 3.00009287e-05, 1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(scythn, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.400000006, 0.360000014, 0.360000014))
PartWeld = CreateWeld(scythn, FakeHandle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000137329102, -4.45667458, -0.621294975, 1, -2.59999997e-05, 3.40000006e-05, 3.39145663e-05, 0.965919375, -0.258843094, -2.61113419e-05, 0.258843094, 0.965919495))
Part = CreatePart(scythn, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.319999993, 0.399999946, 0.319999993))
PartWeld = CreateWeld(scythn, FakeHandle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -0.784980774, -0.613133669, 1, -3.09999996e-05, 2.99999992e-05, 3.10008982e-05, 1, -2.99999992e-05, -2.99990697e-05, 3.00009287e-05, 1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(scythn, Enum.Material.SmoothPlastic, 0.25, 0, "Really black", "Part", Vector3.new(0.219999999, 0.259999871, 1.07000017))
PartWeld = CreateWeld(scythn, FakeHandle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000198364258, 1.18389225, 5.40895081, 1, -4.09999993e-05, 0, -2.83492482e-05, -0.691445053, 0.722429037, -2.96195904e-05, -0.722429037, -0.691445053))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.200000003, 1, 1))
Part = CreatePart(scythn, Enum.Material.SmoothPlastic, 0.25, 0, "Really black", "Part", Vector3.new(0.219999999, 1.23999989, 1.19000006))
PartWeld = CreateWeld(scythn, FakeHandle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.05175781e-05, 4.42512321, -3.2560463, 1, 0, 3.9999999e-05, 2.76576393e-05, -0.722432971, -0.691441, 2.88973188e-05, 0.691441, -0.722432971))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.200000003, 1, 1))
Part = CreatePart(scythn, Enum.Material.SmoothPlastic, 0.25, 0, "Really black", "Part", Vector3.new(0.219999999, 0.21999988, 5.27999973))
PartWeld = CreateWeld(scythn, FakeHandle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000213623047, -5.49272156, -1.10766506, 1, -3.9999999e-05, 0, 3.41942286e-05, 0.854855716, -0.518865824, 2.07546327e-05, 0.518865824, 0.854855716))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.200000003, 1, 1))
Part = CreatePart(scythn, Enum.Material.SmoothPlastic, 0.25, 0, "Really black", "Part", Vector3.new(0.219999999, 1.0999999, 0.339999676))
PartWeld = CreateWeld(scythn, FakeHandle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000137329102, -4.90282059, 1.76236153, 1, -3.9999999e-05, 0, 3.41942286e-05, 0.854855716, -0.518865824, 2.07546327e-05, 0.518865824, 0.854855716))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.200000003, 1, 1))
Part = CreatePart(scythn, Enum.Material.SmoothPlastic, 0.25, 0, "Really black", "Part", Vector3.new(0.219999999, 5.46000004, 1.09000003))
PartWeld = CreateWeld(scythn, FakeHandle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000198364258, -1.12881565, 4.8948822, 1, -3.9999999e-05, 0, 2.07545563e-05, 0.518863916, 0.854856908, -3.41942759e-05, -0.854856908, 0.518863916))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(0.200000003, 1, 1))
Part = CreatePart(scythn, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.399999976, 0.549999893, 0.570000052))
PartWeld = CreateWeld(scythn, FakeHandle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000183105469, -5.10651207, 0.736515045, 1, -4.09999993e-05, 0, 3.35104087e-05, 0.817327023, 0.576174021, -2.36231353e-05, -0.576174021, 0.817327023))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(scythn, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.399999976, 0.509999871, 1.49000001))
PartWeld = CreateWeld(scythn, FakeHandle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000244140625, -5.11039925, 1.53912449, 1, -4.09999993e-05, 0, 3.35104087e-05, 0.817327023, 0.576174021, -2.36231353e-05, -0.576174021, 0.817327023))
Handoo = CreatePart(scythn, Enum.Material.Neon, 0, 0, "Dark indigo", "Handoo", Vector3.new(0.200000003, 0.200000003, 0.200000003))
HandooWeld = CreateWeld(scythn, Character.Torso, Handoo, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.549995422, -0.0703735352, 0.742510319, 0, 0, -1, 0.999976993, -0.00678399997, 0, -0.00678399997, -0.999976993, 0))
Part = CreatePart(scythn, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(1.20000005, 2.42000008, 0.340000063))
PartWeld = CreateWeld(scythn, Handoo, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.529996872, -1.16970825, 0.0359344482, 1, 0, 0, 0, 0.926496327, -0.376303971, 0, 0.376304001, 0.926496327))
Part = CreatePart(scythn, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(1.21000004, 2.5, 0.340000063))
PartWeld = CreateWeld(scythn, Handoo, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.534996033, 1.31703186, 0.0337257385, 1, 0, 0, 0, 0.960309505, 0.278936714, 0, -0.278936714, 0.960309505))
Part = CreatePart(scythn, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.280000001, 0.979999959, 0.440000057))
PartWeld = CreateWeld(scythn, Handoo, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.571136475, -0.70470047, -0.0287780762, 0.177076906, 0.911854029, -0.370359361, -0.98419708, 0.164057702, -0.0666431114, -8.48459604e-06, 0.376307517, 0.926494837))
Part = CreatePart(scythn, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.280000001, 0.979999959, 0.440000057))
PartWeld = CreateWeld(scythn, Handoo, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.65512085, -0.71869278, 0.0800170898, -0.163214013, 0.981107414, 0.103872582, -0.982761979, -0.152410492, -0.104642466, -0.0868342221, -0.119161136, 0.989070594))
Part = CreatePart(scythn, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(1.72000003, 0.200000003, 0.200000003))
PartWeld = CreateWeld(scythn, Handoo, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0189056396, -1.04454994, 0.143669367, 0.0165939927, 0.999540389, -0.0253714547, -0.997865617, 0.0149526633, -0.063566871, -0.0631582737, 0.026372131, 0.997655034))
Part = CreatePart(scythn, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 2.5, 0.200000003))
PartWeld = CreateWeld(scythn, Handoo, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0299968719, 1.27052307, 0.0375461578, 1, 0, 0, 0, 0.995324552, 0.0965868831, 0, -0.0965868831, 0.995324552))
Part = CreatePart(scythn, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 2.5, 0.200000003))
PartWeld = CreateWeld(scythn, Handoo, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0299968719, 1.27461243, -0.0556087494, 1, 0, 0, 0, 0.99260658, -0.121376649, 0, 0.121376656, 0.99260658))
Part = CreatePart(scythn, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 2.42000008, 0.200000003))
PartWeld = CreateWeld(scythn, Handoo, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.14680481, -1.6463623, -0.0551834106, 0.725230813, 0.677007318, -0.125304669, -0.688505828, 0.713119924, -0.131983832, 3.23662107e-06, 0.181991741, 0.983300149))
Part = CreatePart(scythn, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 2.42000008, 0.200000003))
PartWeld = CreateWeld(scythn, Handoo, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.336021423, 1.74919128, -0.0882720947, 0.836325169, -0.540382743, -0.0924481899, 0.548233688, 0.824347734, 0.141033888, -2.81614098e-06, -0.168633416, 0.985678852))
Part = CreatePart(scythn, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 2.42000008, 0.200000003))
PartWeld = CreateWeld(scythn, Handoo, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.371582031, 1.69494629, -0.452550888, 0.836325169, -0.540382743, -0.0924481899, 0.548233688, 0.824347734, 0.141033888, -2.81614098e-06, -0.168633416, 0.985678852))
Part = CreatePart(scythn, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 2.42000008, 0.200000003))
PartWeld = CreateWeld(scythn, Handoo, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.191467285, -1.59931946, -0.419454575, 0.725230813, 0.677007318, -0.125304669, -0.688505828, 0.713119924, -0.131983832, 3.23662107e-06, 0.181991741, 0.983300149))
Part = CreatePart(scythn, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 2.42000008, 0.200000003))
PartWeld = CreateWeld(scythn, Handoo, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.404266357, 1.64509583, -0.787281036, 0.836325169, -0.540382743, -0.0924481899, 0.548233688, 0.824347734, 0.141033888, -2.81614098e-06, -0.168633416, 0.985678852))
Part = CreatePart(scythn, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 2.42000008, 0.200000003))
PartWeld = CreateWeld(scythn, Handoo, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.232513428, -1.55609131, -0.754188538, 0.725230813, 0.677007318, -0.125304669, -0.688505828, 0.713119924, -0.131983832, 3.23662107e-06, 0.181991741, 0.983300149))
Part = CreatePart(scythn, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 2.42000008, 0.200000003))
PartWeld = CreateWeld(scythn, Handoo, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.27596283, -1.51032257, -1.10861206, 0.725230813, 0.677007318, -0.125304669, -0.688505828, 0.713119924, -0.131983832, 3.23662107e-06, 0.181991741, 0.983300149))
Part = CreatePart(scythn, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 2.42000008, 0.200000003))
PartWeld = CreateWeld(scythn, Handoo, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.438865662, 1.59230042, -1.14170647, 0.836325169, -0.540382743, -0.0924481899, 0.548233688, 0.824347734, 0.141033888, -2.81614098e-06, -0.168633416, 0.985678852))
Part = CreatePart(scythn, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 2.42000008, 0.200000003))
PartWeld = CreateWeld(scythn, Handoo, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.478271484, 1.53219604, -1.54536057, 0.836325169, -0.540382743, -0.0924481899, 0.548233688, 0.824347734, 0.141033888, -2.81614098e-06, -0.168633416, 0.985678852))
Part = CreatePart(scythn, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 2.42000008, 0.200000003))
PartWeld = CreateWeld(scythn, Handoo, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.325454712, -1.45819092, -1.51226234, 0.725230813, 0.677007318, -0.125304669, -0.688505828, 0.713119924, -0.131983832, 3.23662107e-06, 0.181991741, 0.983300149))
Part = CreatePart(scythn, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 2.42000008, 0.200000003))
PartWeld = CreateWeld(scythn, Handoo, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0299968719, -1.10217285, -0.0320129395, 1, 0, 0, 0, 0.990234196, 0.139414385, 0, -0.13941437, 0.990234196))
Part = CreatePart(scythn, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 2.42000008, 0.200000003))
PartWeld = CreateWeld(scythn, Handoo, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0299968719, -1.09291077, -0.0551891327, 1, 0, 0, 0, 0.98330009, -0.181991905, 0, 0.18199189, 0.98330009))
Hindoo = CreatePart(scythn, Enum.Material.Neon, 0, 1, "Dark indigo", "Hindoo", Vector3.new(0.200000003, 0.200000003, 0.200000003))
HindooWeld = CreateWeld(scythn, Character.Head, Hindoo, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.519994736, -0.264099121, 0.193834782, 0, 0, -1, 0.999976993, -0.00678399997, 0, -0.00678399997, -0.999976993, 0))
Part = CreatePart(scythn, Enum.Material.Neon, 0, 0, "Dark indigo", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld = CreateWeld(scythn, Hindoo, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
Part = CreatePart(scythn, Enum.Material.Neon, 0, 0, "Dark indigo", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld = CreateWeld(scythn, Hindoo, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0.489974976, -0.00332403183, 1, 0, 0, 0, 1, 0, 0, 0, 1))
for _,c in pairs(scythn:children()) do
  if c.className == "Part" then
    table.insert(DBlade, c)
  end
end
for _,c in pairs(scythn:children()) do
  if c.className == "Weld" then
    table.insert(DBladeWelds, c)
    print(c)
  end
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
  end))
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
  end), hum)
      local angle = hit.Position - Property.Position + Vector3.new(0, 0, 0).unit
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
  end))
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
  end), hit.Parent.Torso)
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
  do
    if not Pos then
      local Pos = Vector3.new(0, 0, 0)
    end
    local Text = Text or ""
    local Time = Time or 2
    do
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
  end)
    end
  end
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
  local prt = CreatePart(effect, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe * CFrame.new(x1, y1, z1)
  local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "rbxassetid://3270017", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
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
DragonEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = CreatePart(effect, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "rbxassetid://420077883", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
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
attackone = function()
  attack = true
  local con = Hitbox.Touched:connect(function(hit)
    Damagefunc(Hitbox, hit, 8, 13, math.random(1, 5), "Normal", RootPart, 0.2, "rbxassetid://199149221", 0.8)
  end)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-30)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(30)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0.25) * angles(math.rad(0), math.rad(30), math.rad(-40)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(40), math.rad(-60)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * LHCF * angles(math.rad(-200), math.rad(100), math.rad(100)), 0.3)
  end
  CreateSound("http://roblox.com/asset/?id=320557563", Hitbox, 1, 1.2)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0.25) * angles(math.rad(0), math.rad(0), math.rad(40)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.2, 0.5, 1) * angles(math.rad(-30), math.rad(40), math.rad(60)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * LHCF * angles(math.rad(-170), math.rad(100), math.rad(120)), 0.3)
  end
  con:disconnect()
  attack = false
end
attacktwo = function()
  attack = true
  local con = Hitbox.Touched:connect(function(hit)
    Damagefunc(Hitbox, hit, 8, 15, math.random(1, 5), "Normal", RootPart, 0.2, "rbxassetid://199149221", 0.8)
  end)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(70)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(-70)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0.25) * angles(math.rad(0), math.rad(30), math.rad(-40)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(40), math.rad(-60)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * LHCF * angles(math.rad(-200), math.rad(100), math.rad(100)), 0.3)
  end
  CreateSound("http://roblox.com/asset/?id=320557563", Hitbox, 1, 1)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0 - 360 * i)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0.25) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.2, 0.5, 1) * angles(math.rad(-30), math.rad(40), math.rad(60)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * LHCF * angles(math.rad(-90), math.rad(100), math.rad(100)), 0.3)
  end
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(70)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-20), math.rad(0), math.rad(-70)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0.25) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(-100), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, -1) * RHCF * angles(math.rad(0), math.rad(20), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * LHCF * angles(math.rad(-90), math.rad(100), math.rad(100)), 0.3)
  end
  con:disconnect()
  attack = false
end
attacktwo = function()
  attack = true
  local con = Hitbox.Touched:connect(function(hit)
    Damagefunc(Hitbox, hit, 8, 13, math.random(1, 5), "Normal", RootPart, 0.2, "rbxassetid://199149221", 0.8)
  end)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(70)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(-70)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0.25) * angles(math.rad(0), math.rad(30), math.rad(-40)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(40), math.rad(-60)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * LHCF * angles(math.rad(-200), math.rad(100), math.rad(100)), 0.3)
  end
  CreateSound("http://roblox.com/asset/?id=320557563", Hitbox, 1, 1.3)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0 - 360 * i)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0.25) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.2, 0.5, 1) * angles(math.rad(-30), math.rad(40), math.rad(60)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * LHCF * angles(math.rad(-90), math.rad(100), math.rad(100)), 0.3)
  end
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(70)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-20), math.rad(0), math.rad(-70)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0.25) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(-100), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, -1) * RHCF * angles(math.rad(0), math.rad(20), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * LHCF * angles(math.rad(-90), math.rad(100), math.rad(100)), 0.3)
  end
  con:disconnect()
  attack = false
end
attackthree = function()
  attack = true
  local con = Hitbox.Touched:connect(function(hit)
    Damagefunc(Hitbox, hit, 8, 13, math.random(1, 5), "Normal", RootPart, 0.2, "rbxassetid://199149221", 0.8)
  end)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(70)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-20), math.rad(0), math.rad(-70)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0.25) * angles(math.rad(0), math.rad(100), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(-100), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, -1) * RHCF * angles(math.rad(0), math.rad(20), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * LHCF * angles(math.rad(-90), math.rad(100), math.rad(100)), 0.3)
  end
  CreateSound("http://roblox.com/asset/?id=320557563", Hitbox, 1, 1)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-70)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(70)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0.25) * angles(math.rad(0), math.rad(100), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(-100), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, -1) * RHCF * angles(math.rad(0), math.rad(20), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * LHCF * angles(math.rad(-90), math.rad(100), math.rad(100)), 0.3)
  end
  con:disconnect()
  attack = false
end
local count = 1
local barra = false
local keafy = false
Love = function()
  attack = true
  barra = true
  if keafy == true then
    return 
  end
  keafy = true
  coroutine.resume(coroutine.create(function()
    while barra do
      wait(0.5)
      SphereEffect(BrickColor.new("Black"), RootPart.CFrame * cf(math.random(-10, 10), -2, math.random(-10, 10)), 5, 1, 5, 0, 5, 0, 0.05)
    end
  end))
  coroutine.resume(coroutine.create(function()
    while count <= 2 do
      wait(1)
      count = count + 1
      SphereEffect(BrickColor.new("Black"), RootPart.CFrame, 15, 15, 15, 2, 2, 2, 0.05)
    end
  end))
  coroutine.resume(coroutine.create(function()
    while barra do
      wait(0.1)
      SphereEffect(BrickColor.new("Black"), RootPart.CFrame * cf(0, -3, 0) * angles(0, math.rad(math.random(0, 360)), 0), 5, 1, 3, 5, 0, 10, 0.05)
      BlockEffect(BrickColor.new("Black"), LeftArm.CFrame, 5, 5, 5, 0.5, 0.5, 0.5, 0.05, 1)
    end
  end))
  for i = 0, 1, 0.05 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1) * angles(math.rad(40), math.rad(0), math.rad(-70)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-20), math.rad(-30), math.rad(70)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-20), math.rad(100), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(-60)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(60), math.rad(-30)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, 0.2, 0) * angles(math.rad(0), math.rad(-40), math.rad(-60)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * LHCF * angles(math.rad(-100), math.rad(100), math.rad(100)), 0.3)
  end
end
Hate = function()
  barra = false
  dd = math.random(-50, 50)
  dd2 = math.random(-50, 50)
  dd3 = math.random(-50, 50)
  if count == 1 then
    MagniDamage(RootPart, 17, 5, 10, 0, "Normal")
    CreateSound("http://roblox.com/asset/?id=63719813", Hitbox, 1, 0.6)
    coroutine.resume(coroutine.create(function()
    for i = 0, 360, 10 do
      swait()
      SphereEffect(BrickColor.new("Black"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd, math.rad(i), 0) * cf(0, -2, 10), 3, 3, 3, 1, 1, 1, 0.03)
      DragonEffect(BrickColor.new("Magenta"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd, math.rad(i), 0) * cf(0, -2, 10) * angles(1.57, -1.57, 0), 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.1)
      DragonEffect(BrickColor.new("Black"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd, math.rad(i), 0) * cf(0, -2, 10) * angles(1.57, -1.57, 0), 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.08)
    end
  end))
  else
    if count == 2 then
      MagniDamage(RootPart, 17, 10, 15, 0, "Normal")
      CreateSound("http://roblox.com/asset/?id=63719813", Hitbox, 1, 0.5)
      coroutine.resume(coroutine.create(function()
    for i = 0, 360, 10 do
      swait()
      SphereEffect(BrickColor.new("Black"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd, math.rad(i), 0) * cf(0, -2, 10), 3, 3, 3, 1, 1, 1, 0.05)
      DragonEffect(BrickColor.new("Magenta"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd, math.rad(i), 0) * cf(0, -2, 10) * angles(1.57, -1.57, 0), 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.1)
      DragonEffect(BrickColor.new("Black"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd, math.rad(i), 0) * cf(0, -2, 10) * angles(1.57, -1.57, 0), 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.08)
    end
  end))
      coroutine.resume(coroutine.create(function()
    for i = 0, 360, 10 do
      swait()
      SphereEffect(BrickColor.new("Black"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd2, math.rad(i), 0) * cf(0, -2, 10), 3, 3, 3, 1, 1, 1, 0.05)
      DragonEffect(BrickColor.new("Magenta"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd2, math.rad(i), 0) * cf(0, -2, 10) * angles(1.57, -1.57, 0), 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.1)
      DragonEffect(BrickColor.new("Black"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd2, math.rad(i), 0) * cf(0, -2, 10) * angles(1.57, -1.57, 0), 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.08)
    end
  end))
    else
      if count == 3 then
        CreateSound("http://roblox.com/asset/?id=63719813", Hitbox, 1, 0.2)
        MagniDamage(RootPart, 17, 20, 20, 0, "Normal")
        coroutine.resume(coroutine.create(function()
    for i = 0, 360, 10 do
      swait()
      SphereEffect(BrickColor.new("Black"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd2, math.rad(i), 0) * cf(0, -2, 10), 3, 3, 3, 1, 1, 1, 0.06)
      DragonEffect(BrickColor.new("Magenta"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd2, math.rad(i), 0) * cf(0, -2, 10) * angles(1.57, -1.57, 0), 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.1)
      DragonEffect(BrickColor.new("Black"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd2, math.rad(i), 0) * cf(0, -2, 10) * angles(1.57, -1.57, 0), 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.08)
    end
  end))
        coroutine.resume(coroutine.create(function()
    for i = 0, 360, 10 do
      swait()
      SphereEffect(BrickColor.new("Black"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd3, math.rad(i), 0) * cf(0, -2, 10), 3, 3, 3, 1, 1, 1, 0.06)
      DragonEffect(BrickColor.new("Magenta"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd3, math.rad(i), 0) * cf(0, -2, 10) * angles(1.57, -1.57, 0), 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.1)
      DragonEffect(BrickColor.new("Black"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd3, math.rad(i), 0) * cf(0, -2, 10) * angles(1.57, -1.57, 0), 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.08)
    end
  end))
        coroutine.resume(coroutine.create(function()
    for i = 0, 360, 10 do
      swait()
      SphereEffect(BrickColor.new("Black"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd, math.rad(i), 0) * cf(0, -2, 10), 3, 3, 3, 1, 1, 1, 0.06)
      DragonEffect(BrickColor.new("Magenta"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd, math.rad(i), 0) * cf(0, -2, 10) * angles(1.57, -1.57, 0), 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.1)
      DragonEffect(BrickColor.new("Black"), RootPart.CFrame * cf(0, 0, math.rad(i)) * angles(dd, math.rad(i), 0) * cf(0, -2, 10) * angles(1.57, -1.57, 0), 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.08)
    end
  end))
      end
    end
  end
  count = 1
  wait(2)
  keafy = false
  attack = false
end
BlackBlast = function()
  attack = true
  Humanoid.WalkSpeed = 5
  for i = 0, 1, 0.05 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(-90)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0.25) * angles(math.rad(0), math.rad(30), math.rad(-30)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(-120), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * LHCF * angles(math.rad(-230), math.rad(100), math.rad(100)), 0.3)
  end
  for i = 0, 1, 0.13 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.5)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(90)), 0.5)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0.25) * angles(math.rad(0), math.rad(30), math.rad(-30)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * LHCF * angles(math.rad(-230), math.rad(100), math.rad(100)), 0.3)
  end
  tPos = mouse.Hit.p
  ref = CreatePart(effect, "SmoothPlastic", 0, 1, BrickColor.new("Black"), "Reference", vt())
  ref.Anchored = true
  ref.CFrame = LeftArm.CFrame * cf(0, -2, 0)
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
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(90)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0.25) * angles(math.rad(0), math.rad(30), math.rad(-30)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * LHCF * angles(math.rad(-230), math.rad(100), math.rad(100)), 0.3)
  end
  Humanoid.WalkSpeed = 16
  attack = false
end
spattackone = function()
  attack = true
  local con = Hitbox1.Touched:connect(function(hit)
    Damagefunc(Hitbox1, hit, 10, 23, math.random(1, 5), "Normal", RootPart, 0.2, "rbxassetid://199149221", 0.8)
  end)
  Humanoid.WalkSpeed = 5
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(90)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0.25) * angles(math.rad(0), math.rad(0), math.rad(180)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(-120), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    FakeHandleWeld2.C0 = clerp(FakeHandleWeld2.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(-30), math.rad(-100)), 0.3)
  end
  CreateSound("http://www.roblox.com/asset/?id=231917961", RootPart, 1, 0.9)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(-90)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0.25) * angles(math.rad(0), math.rad(0), math.rad(50)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    FakeHandleWeld2.C0 = clerp(FakeHandleWeld2.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(60), math.rad(-100)), 0.3)
  end
  con:disconnect()
  Humanoid.WalkSpeed = 16
  attack = false
end
spattacktwo = function()
  attack = true
  local con = Hitbox1.Touched:connect(function(hit)
    Damagefunc(Hitbox1, hit, 10, 23, math.random(1, 5), "Normal", RootPart, 0.2, "rbxassetid://199149221", 0.8)
  end)
  Humanoid.WalkSpeed = 5
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(90)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0.25) * angles(math.rad(-20), math.rad(0), math.rad(50)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(-120), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    FakeHandleWeld2.C0 = clerp(FakeHandleWeld2.C0, cf(0, 0, 0) * angles(math.rad(50), math.rad(-30), math.rad(-160)), 0.3)
  end
  CreateSound("http://www.roblox.com/asset/?id=231917961", RootPart, 1, 1)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(-90)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0.25) * angles(math.rad(0), math.rad(40), math.rad(100)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(-30), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    FakeHandleWeld2.C0 = clerp(FakeHandleWeld2.C0, cf(0, 0, 0) * angles(math.rad(50), math.rad(50), math.rad(-160)), 0.3)
  end
  con:disconnect()
  Humanoid.WalkSpeed = 16
  attack = false
end
Face = Head.face
Shirt = Character:FindFirstChild("Shirt")
Pants = Character:FindFirstChild("Pants")
Cloak = function()
  Face.Parent = nil
  cloaked = true
  if Shirt ~= nil then
    Shirt.Parent = nil
  end
  if Pants ~= nil then
    Pants.Parent = nil
  end
  for _,v in pairs(Torso.Parent:children()) do
    do
      if v.className == "Part" and v.Name ~= "HumanoidRootPart" then
        coroutine.resume(coroutine.create(function()
    for i = 0, 0.7, 0.2 do
      swait()
      v.Transparency = i
    end
    v.Transparency = 0
    v.BrickColor = BrickColor.new("Really black")
  end))
      end
      if v.className == "Hat" then
        do
          hatp = v.Handle
          coroutine.resume(coroutine.create(function(derp)
    for i = 0, 0.7, 0.2 do
      swait()
      derp.Transparency = i
    end
    derp.Transparency = 0
    derp.Mesh.VertexColor = vt(0, 0, 0)
  end), hatp)
          -- DECOMPILER ERROR at PC49: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC49: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
  end
end
UnCloak = function()
  CreateSound("http://roblox.com/asset/?id=2767090", Torso, 1, 1.1)
  Face.Parent = Head
  Shirt.Parent = Character
  Pants.Parent = Character
  cloaked = false
  for _,v in pairs(Torso.Parent:children()) do
    do
      if v.className == "Part" and v.Name ~= "HumanoidRootPart" then
        coroutine.resume(coroutine.create(function()
    for i = 0, 1, 0.1 do
      swait()
      v.Transparency = v.Transparency - 0.1
    end
    v.Transparency = 0
  end))
      end
      if v.className == "Hat" then
        do
          hatp = v.Handle
          coroutine.resume(coroutine.create(function(derp)
    for i = 0, 1, 0.1 do
      swait()
      derp.Transparency = derp.Transparency - 0.1
    end
    derp.Transparency = 0
    derp.Mesh.VertexColor = vt(1, 1, 1)
  end), hatp)
          -- DECOMPILER ERROR at PC52: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC52: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
  end
end
RagingCharge = function()
  attack = true
  local con = LeftArm.Touched:connect(function(hit)
    Damagefunc(Hitbox, hit, 10, 23, math.random(1, 5), "Normal", RootPart, 0.2, "rbxassetid://199149221", 0.8)
  end)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(90)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0.25) * angles(math.rad(0), math.rad(30), math.rad(-30)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(-100), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * LHCF * angles(math.rad(-230), math.rad(100), math.rad(100)), 0.3)
  end
  CreateSound("http://roblox.com/asset/?id=63719813", Hitbox, 1, 0.6)
  for i = 0, 1, 0.1 do
    swait()
    MagniDamage(RootPart, 10, 5, 8, 0, "Normal")
    DragonEffect(BrickColor.new("Black"), Torso.CFrame * cf(0, 5, 0) * angles(0, 1.57, 0), 10, 10, 10, 0.5, 0.5, 0.5, 0.07)
    DragonEffect(BrickColor.new("Magenta"), Torso.CFrame * cf(0, 5, 0) * angles(0, 1.57, 0), 10, 10, 10, 0.5, 0.5, 0.5, 0.09)
    SphereEffect(BrickColor.new("Black"), Torso.CFrame, 50, 50, 50, 0.5, 0.5, 0.5, 0.09)
    BlockEffect(BrickColor.new("Black"), Torso.CFrame, 10, 10, 10, 5, 5, 5, 0.07)
    Torso.Velocity = RootPart.CFrame.lookVector * 100
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(30), math.rad(0), math.rad(90)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0.25) * angles(math.rad(0), math.rad(30), math.rad(-30)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(-100), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, -0.5) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * LHCF * angles(math.rad(-230), math.rad(100), math.rad(100)), 0.3)
  end
  con:disconnect()
  attack = false
end
local demin = false
Demonmode = function()
  attack = true
  demin = true
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
  m.Parent = nil
  attacktype = 1
  CreateSound("http://www.roblox.com/asset/?id=200633780", RootPart, 1, 1)
  MagniDamage(Torso, 15, 10, 15, 3, "Snare")
  coroutine.resume(coroutine.create(function()
    while demin do
      wait(0.1)
      BlockEffect(BrickColor.new("Magenta"), RootPart.CFrame, 20, 20, 20, 5, 5, 5, 0.07)
      SphereEffect(BrickColor.new("Black"), RootPart.CFrame, 30, 30, 30, 10, 10, 10, 0.07)
    end
  end))
  for i = 0, 1, 0.05 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2 + 0.1 * math.cos(sine / 9)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.5 - 0.1 * math.cos(sine / 9), -1) * angles(math.rad(0), math.rad(150), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.2, 0.5 + 0.15 * math.cos(sine / 9), -1) * angles(math.rad(0), math.rad(-150), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1 - 0.1 * math.cos(sine / 9), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1 - 0.1 * math.cos(sine / 9), 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  for i = 0, 1, 0.05 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2 + 0.1 * math.cos(sine / 9)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.5 - 0.1 * math.cos(sine / 9), -1) * angles(math.rad(0), math.rad(150), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.2, 0.5 + 0.15 * math.cos(sine / 9), -1) * angles(math.rad(0), math.rad(-150), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1 - 0.1 * math.cos(sine / 9), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1 - 0.1 * math.cos(sine / 9), 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  scythn.Parent = Character
  demon = true
  Cloak()
  BlockEffect(BrickColor.new("Magenta"), RootPart.CFrame * cf(0, -3, 0), 20, 20, 20, 5, 5, 5, 0.04)
  SphereEffect(BrickColor.new("Black"), RootPart.CFrame * cf(0, -3, 0), 30, 30, 30, 10, 10, 10, 0.04)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2 + 0.1 * math.cos(sine / 9)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.5 - 0.1 * math.cos(sine / 9), -1) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.2, 0.5 + 0.15 * math.cos(sine / 9), -1) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1 - 0.1 * math.cos(sine / 9), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1 - 0.1 * math.cos(sine / 9), 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  demin = false
  Humanoid.WalkSpeed = 16
  attack = false
end
Hikyumode = function()
  attack = true
  demin = true
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
  scythn.Parent = nil
  CreateSound("http://www.roblox.com/asset/?id=200633780", RootPart, 1, 1)
  MagniDamage(Torso, 15, 10, 15, 3, "Snare")
  coroutine.resume(coroutine.create(function()
    while demin do
      wait(0.1)
      BlockEffect(BrickColor.new("Magenta"), RootPart.CFrame * cf(0, 0, 0), 20, 20, 20, 5, 5, 5, 0.07)
      SphereEffect(BrickColor.new("Black"), RootPart.CFrame * cf(0, 0, 0), 30, 30, 30, 10, 10, 10, 0.07)
    end
  end))
  for i = 0, 1, 0.05 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2 + 0.1 * math.cos(sine / 9)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.5 - 0.1 * math.cos(sine / 9), -1) * angles(math.rad(0), math.rad(150), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.2, 0.5 + 0.15 * math.cos(sine / 9), -1) * angles(math.rad(0), math.rad(-150), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1 - 0.1 * math.cos(sine / 9), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1 - 0.1 * math.cos(sine / 9), 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  for i = 0, 1, 0.05 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2 + 0.1 * math.cos(sine / 9)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.5 - 0.1 * math.cos(sine / 9), -1) * angles(math.rad(0), math.rad(150), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.2, 0.5 + 0.15 * math.cos(sine / 9), -1) * angles(math.rad(0), math.rad(-150), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1 - 0.1 * math.cos(sine / 9), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1 - 0.1 * math.cos(sine / 9), 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  m.Parent = Character
  demon = false
  UnCloak()
  BlockEffect(BrickColor.new("Magenta"), RootPart.CFrame * cf(0, -3, 0), 20, 20, 20, 5, 5, 5, 0.04)
  SphereEffect(BrickColor.new("Black"), RootPart.CFrame * cf(0, -3, 0), 30, 30, 30, 10, 10, 10, 0.04)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2 + 0.1 * math.cos(sine / 9)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.5 - 0.1 * math.cos(sine / 9), -1) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.2, 0.5 + 0.15 * math.cos(sine / 9), -1) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1 - 0.1 * math.cos(sine / 9), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1 - 0.1 * math.cos(sine / 9), 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  demin = false
  Humanoid.WalkSpeed = 16
  attack = false
end
ob1u = function()
end
ob1d = function()
  if demon == false then
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
        attacktype = 1
        spattacktwo()
      end
    end
  end
end
DarkDash = function()
  attack = true
  Torso.Velocity = Torso.Velocity * 10
  BlockEffect(BrickColor.new("Black"), Torso.CFrame, 10, 10, 10, 5, 5, 5, 0.07)
  attack = false
end
key = function(k)
  k = k:lower()
  if attack == false and k == "z" and demon == false and co1 <= cooldown1 then
    Love()
  else
    if attack == false and k == "z" and demon == true and cooldown1 >= 2 then
      cooldown1 = cooldown1 - 2
      DarkDash()
    else
      if attack == false and k == "x" and co2 <= cooldown2 then
        cooldown2 = 0
        RagingCharge()
      else
        if attack == false and k == "c" and co3 <= cooldown3 then
          cooldown3 = 0
          BlackBlast()
        else
          if attack == false and k == "v" and demon == false then
            Demonmode()
          else
            if attack == false and k == "v" and demon == true then
              Hikyumode()
            end
          end
        end
      end
    end
  end
end
keyup = function(k)
  k = k:lower()
  if attack == true and k == "z" and co1 <= cooldown1 then
    cooldown1 = 0
    Hate()
  end
end
ds = function(mouse)
end
s = function(mouse)
  print("Selected")
  mouse.Button1Down:connect(function()
    ob1d(mouse)
  end)
  mouse.Button1Up:connect(function()
    ob1u(mouse)
  end)
  mouse.KeyDown:connect(key)
  mouse.KeyUp:connect(keyup)
end
Bin.Selected:connect(s)
Bin.Deselected:connect(ds)
local away = false
local debb = false
fatherly = function()
  if debb == true then
    return 
  end
  if cooldown4 <= 0 and demon == true then
    attack = true
    demin = true
    cooldown4 = 0
    away = true
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
    scythn.Parent = nil
    CreateSound("http://www.roblox.com/asset/?id=200633780", RootPart, 1, 1)
    MagniDamage(Torso, 15, 10, 15, 3, "Snare")
    for i = 0, 1, 0.05 do
      swait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2 + 0.1 * math.cos(sine / 9)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
      RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.5 - 0.1 * math.cos(sine / 9), -1) * angles(math.rad(0), math.rad(150), math.rad(90)), 0.3)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.2, 0.5 + 0.15 * math.cos(sine / 9), -1) * angles(math.rad(0), math.rad(-150), math.rad(-90)), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -1 - 0.1 * math.cos(sine / 9), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -1 - 0.1 * math.cos(sine / 9), 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    end
    for i = 0, 1, 0.05 do
      swait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2 + 0.1 * math.cos(sine / 9)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
      RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.5 - 0.1 * math.cos(sine / 9), -1) * angles(math.rad(0), math.rad(150), math.rad(90)), 0.3)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.2, 0.5 + 0.15 * math.cos(sine / 9), -1) * angles(math.rad(0), math.rad(-150), math.rad(-90)), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -1 - 0.1 * math.cos(sine / 9), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -1 - 0.1 * math.cos(sine / 9), 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    end
    m.Parent = Character
    demon = false
    UnCloak()
    BlockEffect(BrickColor.new("Magenta"), RootPart.CFrame * cf(0, -3, 0), 20, 20, 20, 5, 5, 5, 0.04)
    SphereEffect(BrickColor.new("Black"), RootPart.CFrame * cf(0, -3, 0), 30, 30, 30, 10, 10, 10, 0.04)
    for i = 0, 1, 0.1 do
      swait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2 + 0.1 * math.cos(sine / 9)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
      RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.5 - 0.1 * math.cos(sine / 9), -1) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.2, 0.5 + 0.15 * math.cos(sine / 9), -1) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -1 - 0.1 * math.cos(sine / 9), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -1 - 0.1 * math.cos(sine / 9), 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    end
    demin = false
    Humanoid.WalkSpeed = 16
    demon = false
    attack = false
    away = false
    debb = false
  end
  if demon == true then
    cooldown4 = cooldown4 - 2
    debb = true
    for i = 0, 1, 0.05 do
      swait()
    end
    debb = false
  end
end
updateskills = function()
  if demon == true then
    text1.Text = "[Z]\n Dash"
  else
    text1.Text = "[Z]\n  Dragon Zen"
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
  if cooldown4 <= co4 and demon == false then
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
end))
  Torsovelocity = RootPart.Velocity * Vector3.new(1, 0, 1).magnitude
  velocity = RootPart.Velocity.y
  sine = sine + change
  local hit, pos = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 4, Character)
  if equipped == true or equipped == false then
    if 1 < RootPart.Velocity.y and hit == nil then
      Anim = "Jump"
      if attack == false then
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0.25) * angles(math.rad(0), math.rad(30), math.rad(-30)), 0.3)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(40), math.rad(-50)), 0.3)
        RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
        LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
        FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * LHCF * angles(math.rad(-230), math.rad(100), math.rad(100)), 0.3)
      end
    else
      if RootPart.Velocity.y < -1 and hit == nil then
        Anim = "Fall"
        if attack == false then
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
          Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(0)), 0.3)
          RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0.25) * angles(math.rad(0), math.rad(30), math.rad(-30)), 0.3)
          LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(40), math.rad(-50)), 0.3)
          RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
          LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
          FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * LHCF * angles(math.rad(-230), math.rad(100), math.rad(100)), 0.3)
        end
      else
        if math.abs(Torsovelocity.x) + math.abs(Torsovelocity.z) < 1 and hit ~= nil then
          Anim = "Idle"
          if attack == false then
            if demon == false then
              change = 1
              RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(50)), 0.3)
              Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(-50)), 0.3)
              RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0.25) * angles(math.rad(0), math.rad(30), math.rad(-30)), 0.3)
              LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(40), math.rad(-50)), 0.3)
              RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
              LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
              FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * LHCF * angles(math.rad(-230), math.rad(100), math.rad(100)), 0.3)
            else
              RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(50)), 0.3)
              Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(-50)), 0.3)
              RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0.25) * angles(math.rad(0), math.rad(0), math.rad(150)), 0.3)
              LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
              RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
              LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
              FakeHandleWeld2.C0 = clerp(FakeHandleWeld2.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(-30), math.rad(-100)), 0.3)
            end
          end
        else
          if 2 < math.abs(Torsovelocity.x) + math.abs(Torsovelocity.z) and hit ~= nil then
            Anim = "Walk"
            if attack == false then
              if demon == false then
                RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
                Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
                RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0.25) * angles(math.rad(0), math.rad(30), math.rad(-30)), 0.3)
                LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(40), math.rad(-80)), 0.3)
                RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
                LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
                FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * LHCF * angles(math.rad(-120), math.rad(100), math.rad(0)), 0.3)
              else
                RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
                Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(0)), 0.3)
                RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0.25) * angles(math.rad(0), math.rad(0), math.rad(150)), 0.3)
                LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
                RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
                LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
                FakeHandleWeld2.C0 = clerp(FakeHandleWeld2.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(-30), math.rad(-100)), 0.3)
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
                local mag = Thing[4] - pos.Magnitude
                Thing[8].CFrame = CFrame.new((Thing[4] + pos) / 2, pos) * angles(-1.57, 0, 0)
                Thing[4] = Thing[4] + Look.lookVector * Thing[9]
                Thing[3] = Thing[3] - 1
                BlockEffect(BrickColor.new("Black"), Thing[8].CFrame, 20, 20, 20, 5, 5, 5, 0.1)
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
                    CreateSound("http://www.roblox.com/asset/?id=338594574", ref, 1, 0.6)
                  else
                    CreateSound("http://www.roblox.com/asset/?id=338594556", ref, 1, 0.6)
                  end
                  if demon == false then
                    MagniDamage(ref, size, Thing[5], Thing[6], Thing[7], "Normal")
                  else
                    MagniDamage(ref, size, Thing[5], 10, 25, "Knockdown")
                  end
                  freeze = false
                  for i = 1, 8 do
                    BreakEffect(BrickColor.new("Black"), ref.CFrame * cf(math.random(-200, 200) / 100, math.random(-200, 200) / 100, math.random(-200, 200) / 100), math.random(20, 50) / 100, math.random(1, 5), math.random(20, 50) / 100)
                  end
                  if Thing[10] == 2 then
                    for i = 1, 3 do
                      BlockEffect(BrickColor.new("Black"), cf(ref.Position) * cf(math.random(-100, 100) / 100, math.random(-100, 100) / 100, math.random(-100, 100) / 100) * angles(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 30, 30, 30, 5, 5, 5, 0.05)
                    end
                  end
                end
                do
                  do
                    if Thing[3] <= 0 then
                      Thing[8].Transparency = 1
                      game:GetService("Debris"):AddItem(Thing[8], 5)
                      table.remove(ShootEffects, e)
                    end
                    Part.Parent = nil
                    table.remove(ShootEffects, e)
                    -- DECOMPILER ERROR at PC7024: LeaveBlock: unexpected jumping out DO_STMT

                    -- DECOMPILER ERROR at PC7024: LeaveBlock: unexpected jumping out IF_THEN_STMT

                    -- DECOMPILER ERROR at PC7024: LeaveBlock: unexpected jumping out IF_STMT

                    -- DECOMPILER ERROR at PC7024: LeaveBlock: unexpected jumping out IF_THEN_STMT

                    -- DECOMPILER ERROR at PC7024: LeaveBlock: unexpected jumping out IF_STMT

                    -- DECOMPILER ERROR at PC7024: LeaveBlock: unexpected jumping out IF_THEN_STMT

                    -- DECOMPILER ERROR at PC7024: LeaveBlock: unexpected jumping out IF_STMT

                  end
                end
              end
            end
          end
        end
      end
      -- DECOMPILER ERROR at PC7025: LeaveBlock: unexpected jumping out DO_STMT

    end
  end
end

