wait(0.016666666666667)
Effects = {}
local Player = game.Players.localPlayer
local Character = Player.Character
if game.Players:FindFirstChild("Qaeo") == nil then
  local Humanoid = Character.Humanoid
  local mouse = Player:GetMouse()
  local m = Instance.new("Model", Character)
  m.Name = "WeaponModel"
  local LeftArm = Character["Left Arm"]
  local RightArm = Character["Right Arm"]
  local LeftLeg = Character["Left Leg"]
  local RightLeg = Character["Right Leg"]
  vt = Vector3.new
  local Head = Character.Head
  local Torso = Character.Torso
  local cam = game.Workspace.CurrentCamera
  local RootPart = Character.HumanoidRootPart
  local RootJoint = RootPart.RootJoint
  local equipped = false
  local attack = false
  local Anim = "Idle"
  local idle = 0
  local mana = 100
  local mananu10m = 0
  local it = Instance.new
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
  xenabled = true
  cenabled = true
  venabled = true
  zenabled = true
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
  script:waitForChild("Heartbeat")
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
  local fenframe4a = Instance.new("TextLabel")
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
  swait = function(num)
  if num == 0 or num == nil then
    ArtificialHB.Event:wait()
  else
    for i = 0, num do
      ArtificialHB.Event:wait()
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

  Handle = CreatePart(m, Enum.Material.Plastic, 0, 1, "Really black", "FakeHandle", Vector3.new(0.278528392, 1.46879959, 0.270336539))
  HandleWeld = CreateWeld(m, Character["Right Arm"], Handle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.00272179, -0.124660492, 0.030002594, -0.0244322363, -0.999503016, -0.0199232623, 0.0913611501, -0.0220781919, 0.995573044, -0.995518088, 0.0225038622, 0.0918551609))
  CreateMesh("CylinderMesh", Handle, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
  FakeHandle = CreatePart(m, Enum.Material.Plastic, 0, 1, "Really black", "FakeFakeHandle", Vector3.new(0.278528392, 1.46879959, 0.270336539))
  FakeHandleWeld = CreateWeld(m, Handle, FakeHandle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0308365822, -0.000680923462, 0.000694274902, 1.00000012, 0, 0, 0, 1, 0, 0, 0, 1))
  CreateMesh("CylinderMesh", FakeHandle, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
  HITBOX1 = CreatePart(m, Enum.Material.Plastic, 0, 1, "Really black", "HITBOX1", Vector3.new(3.27852845, 3.46879959, 0.270336539))
  HITBOX1Weld = CreateWeld(m, FakeHandle, HITBOX1, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.510040641, -4.93006134, -0.0301055908, 0.99960649, 0.0168788806, -0.0224104822, -0.0166337639, 0.999800265, 0.0110794753, 0.0225930158, -0.0107023343, 0.999687493))
  HITBOX2 = CreatePart(m, Enum.Material.Plastic, 0, 1, "Really black", "HITBOX2", Vector3.new(3.27852845, 3.46879959, 0.270336539))
  HITBOX2Weld = CreateWeld(m, FakeHandle, HITBOX2, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.50161767, 5.46162987, -0.0243186951, 0.99960649, 0.0168788806, -0.0224104822, -0.0166337639, 0.999800265, 0.0110794753, 0.0225930158, -0.0107023343, 0.999687493))
  Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.278528392, 11.4687996, 0.270336539))
  PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0241863728, 0.00189781189, -0.0119628906, 0.99960655, 0.0168786608, -0.0224106368, -0.0166335367, 0.999800324, 0.0110796094, 0.0225931685, -0.0107024908, 0.999687433))
  CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
  Part = CreatePart(m, Enum.Material.Plastic, 0.1, 0, "Bright violet", "Part", Vector3.new(0.639999986, 0.639999986, 0.639999986))
  PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0201663971, -1.29000401, -4.26596546, 0.0227035228, -0.0105752572, 0.999686301, -0.999661446, -0.0129622128, 0.0225658324, 0.0127195092, -0.999860108, -0.0108659789))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.128000006, 0.921599567, 1.16479945))
  Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.639999986, 0.639999986, 0.639999986))
  PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.14912891, 0.0165176392, 1.54534245, 0.599008918, 0.800726295, -0.00509442389, -0.0227216464, 0.0106373802, -0.999685347, -0.800420105, 0.598936081, 0.0245657004))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.62559843, 0.140799999, 0.128000006))
  Part = CreatePart(m, Enum.Material.Plastic, 0.30000001192093, 0.30000001192093, "Alder", "Part", Vector3.new(0.200000003, 0.40959999, 0.40959999))
  PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.013261795, -4.60727882, -0.339059949, 0.0225750487, -0.0107027441, 0.99968797, 0.0166341309, -0.999800265, -0.0110795796, 0.999606848, 0.0168790594, -0.0223925058))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.348159999, 0.204799995, 0.204799995))
  Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(1.44998384, 0.315392375, 0.303104669))
  PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.27446938, -0.015411377, -0.0129051208, 0.0166362058, -0.999801278, -0.0109927356, 0.999603391, 0.0168807674, -0.0225428566, 0.022723943, -0.0106133521, 0.999685526))
  Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.639999986, 0.639999986, 0.639999986))
  PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(5.44541454, 0.0164871216, -1.78728485, -0.012718563, 0.999859452, 0.010928154, -0.0227042474, 0.0106374621, -0.999685705, -0.999661446, -0.0129626784, 0.0225657616))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5359987, 0.140799999, 0.128000006))
  Part = CreatePart(m, Enum.Material.Plastic, 0.30000001192093, 0.30000001192093, "Alder", "Part", Vector3.new(0.200000003, 0.40959999, 0.40959999))
  PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0132522583, -4.61135101, 0.328778744, 0.0225750487, -0.0107027441, 0.99968797, 0.0166341309, -0.999800265, -0.0110795796, 0.999606848, 0.0168790594, -0.0223925058))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.348159999, 0.204799995, 0.204799995))
  Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.339968324, 0.225281447, 0.299007952))
  PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0248787403, 5.26917553, -0.00995826721, 0.99960655, 0.0168786608, -0.0224106368, -0.0166335367, 0.999800324, 0.0110796094, 0.0225931685, -0.0107024908, 0.999687433))
  CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
  Part = CreatePart(m, Enum.Material.Plastic, 0.1, 0, "Bright violet", "Part", Vector3.new(0.639999986, 0.639999986, 0.639999986))
  PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.83888626, 5.57713032, -0.0198116302, 0.823908925, -0.566183984, -0.02469722, 0.566268146, 0.824210823, -0.00411397219, 0.0226849802, -0.010595724, 0.999686539))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.72799981, 1.26080024, 0.128000006))
  Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.639999986, 0.639999986, 0.639999986))
  PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0202522278, -0.014040947, -3.87723064, 0.0227068998, -0.0105738118, 0.999686241, -0.971659124, 0.235107839, 0.024557054, -0.235293761, -0.971911848, -0.00493557751))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.128000006, 0.198399991, 0.364800036))
  Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.639999986, 0.639999986, 0.639999986))
  PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.33338165, 0.0165367126, -1.06404459, -0.0380081609, 0.999211252, 0.0114979148, -0.022731157, 0.0106387213, -0.999685049, -0.999018967, -0.0382575393, 0.0223088693))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.62559843, 0.140799999, 0.128000006))
  Part = CreatePart(m, Enum.Material.Plastic, 0, 0.30000001192093, "Bright violet", "Part", Vector3.new(0.282624692, 0.245760009, 0.200000003))
  PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00758695602, -4.60336018, 0.134143829, -0.99960655, -0.0168786608, 0.0224109329, 0.0166335348, -0.999800205, -0.01107952, 0.0225934647, -0.0107023865, 0.999687552))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=24479544", Vector3.new(0, 0, 0), Vector3.new(0.0819200054, 0.0819200054, 0.0409600027))
  Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.905216038, 0.282624185, 0.303104669))
  PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00383234024, 4.60840225, -0.0132675171, 0.99960655, 0.0168786608, -0.0224106368, -0.0166335367, 0.999800324, 0.0110796094, 0.0225931685, -0.0107024908, 0.999687433))
  Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.876544178, 0.38502419, 0.303104669))
  PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.87163162, 4.17556381, -0.0079536438, 0.676859677, -0.735747278, -0.0231751688, 0.735763133, 0.67717278, -0.00947786868, 0.0226669069, -0.0106362477, 0.999686599))
  Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.876544178, 0.38502419, 0.303104669))
  PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.25849247, 4.70539284, -0.0131072998, 0.738025546, 0.674706399, -0.00947157294, -0.674394667, 0.738009095, 0.0231203213, 0.0225895364, -0.0106758028, 0.99968791))
  Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.876544178, 0.38502419, 0.303104669))
  PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.94990921, -0.0190079212, -0.012752533, 0.0166362058, -0.999801278, -0.0109927356, 0.999603391, 0.0168807674, -0.0225428566, 0.022723943, -0.0106133521, 0.999685526))
  Part = CreatePart(m, Enum.Material.Plastic, 0.1, 0, "Bright violet", "Part", Vector3.new(0.639999986, 0.639999986, 0.639999986))
  PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.2810812, 4.28752947, -0.019777298, 0.602520585, -0.797796488, -0.0221302509, 0.797780752, 0.602833867, -0.0117239766, 0.0226942133, -0.0105911493, 0.99968636))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.72799981, 1.26080024, 0.128000006))
  Part = CreatePart(m, Enum.Material.Plastic, 0.1, 0, "Bright violet", "Part", Vector3.new(0.639999986, 0.639999986, 0.639999986))
  PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.744754374, 6.35178661, -0.0198631287, 0.996429861, 0.081578888, -0.0217399951, -0.0813230053, 0.996610582, 0.0124070048, 0.0226784628, -0.010594748, 0.999686718))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.72799981, 0.851200402, 0.128000006))
  Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.639999986, 0.639999986, 0.639999986))
  PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.671079755, -0.017156601, -6.48370934, -0.99643141, -0.0815784484, 0.0216704402, 0.022625275, -0.0107981861, 0.999685764, -0.0813188106, 0.996608496, 0.0126053765))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.70239866, 0.160000011, 0.128000006))
  Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.639999986, 0.639999986, 0.639999986))
  PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(5.28482246, -0.0140609741, -1.55958557, -0.0864386559, -0.996218979, -0.00872563571, 0.0225348696, -0.0107112974, 0.999688745, -0.996002436, 0.0862151012, 0.0233755354))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(0.575999856, 0.140799999, 0.128000006))
  Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.876544178, 0.38502419, 0.303104669))
  PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.6109724, 4.00067329, -0.00797653198, -0.676860094, 0.735747695, 0.0231497772, -0.735768378, -0.677170217, 0.00925337523, 0.0224844888, -0.0107696205, 0.999689281))
  Part = CreatePart(m, Enum.Material.Plastic, 0, 0.30000001192093, "Bright violet", "Part", Vector3.new(0.282624692, 0.245760009, 0.200000003))
  PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0349338055, -4.29231453, 0.134126663, 0.999607265, 0.016878156, -0.0223756135, -0.0166333951, 0.999800205, 0.0110801831, 0.0225581564, -0.0107036382, 0.999688208))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=24479544", Vector3.new(0, 0, 0), Vector3.new(0.0819200054, 0.0819200054, 0.0409600027))
  Part = CreatePart(m, Enum.Material.Plastic, 0.1, 0, "Bright violet", "Part", Vector3.new(0.639999986, 0.639999986, 0.639999986))
  PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.00468636, 4.13867378, -0.019821167, -0.602519989, 0.797795892, 0.0221662484, -0.797787905, -0.602830589, 0.0114003643, 0.0224576611, -0.0108150244, 0.9996894))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.72799981, 1.26080024, 0.128000006))
  Part = CreatePart(m, Enum.Material.Plastic, 0.1, 0, "Bright violet", "Part", Vector3.new(0.639999986, 0.639999986, 0.639999986))
  PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.019487381, -1.67956877, 6.04910564, -0.0226733796, 0.010584265, -0.999686956, -0.999662042, -0.012968068, 0.0225355122, -0.0127254883, 0.999859929, 0.010874711))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.128000006, 0.300800025, 0.473599494))
  Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.639999986, 0.639999986, 0.639999986))
  PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(5.27752304, -0.0186462402, -3.1935358, 0.363626122, 0.93154335, 0.00175336003, 0.0225897431, -0.0106994808, 0.999687612, 0.931271136, -0.363472879, -0.0249339379))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(0.755199492, 0.140799999, 0.128000006))
  Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.876544178, 0.38502419, 0.303104669))
  PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.08443737, 4.44418716, -0.013130188, -0.738026381, -0.674706101, 0.00941471756, 0.674394667, -0.73800844, -0.0231415108, 0.0225618612, -0.0107298195, 0.99968791))
  Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.876544178, 0.38502419, 0.303104669))
  PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0301206112, 5.92878532, -0.0132675171, 0.99960655, 0.0168786608, -0.0224106368, -0.0166335367, 0.999800324, 0.0110796094, 0.0225931685, -0.0107024908, 0.999687433))
  Part = CreatePart(m, Enum.Material.Plastic, 0.1, 0, "Bright violet", "Part", Vector3.new(0.639999986, 0.639999986, 0.639999986))
  PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.65679073, 4.85071182, -0.0180168152, 0.738041818, 0.674688518, -0.00947169587, -0.674376905, 0.738025308, 0.0231207944, 0.0225896854, -0.0106766224, 0.99968785))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.72799981, 0.851200402, 0.128000006))
  Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.639999986, 0.639999986, 0.639999986))
  PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.92768764, -0.0231838226, -5.94807243, 0.813566625, -0.580955982, -0.0244857538, 0.0225242358, -0.0105915144, 0.999690235, -0.581035435, -0.813866019, 0.00446869433))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.80479836, 0.140799999, 0.147200003))
  Part = CreatePart(m, Enum.Material.Plastic, 0.1, 0, "Bright violet", "Part", Vector3.new(0.639999986, 0.639999986, 0.639999986))
  PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0174160004, 2.68622303, 4.80641937, 0.0223698635, -0.0108494535, 0.999691069, -0.754695058, -0.656003118, 0.00976816937, 0.655694366, -0.754680276, -0.0228627287))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.128000006, 0.422399938, 0.415999621))
  Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.905216038, 0.282624185, 0.303104669))
  PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0387475491, 4.29743195, -0.0132770538, -0.999607265, -0.0168783981, 0.0223758295, 0.0166336372, -0.999800265, -0.0110800862, 0.0225583743, -0.0107035264, 0.999688268))
  Part = CreatePart(m, Enum.Material.Plastic, 0.1, 0, "Bright violet", "Part", Vector3.new(0.639999986, 0.639999986, 0.639999986))
  PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.48275375, 4.58945465, -0.0180263519, -0.738043129, -0.674688041, 0.0094156377, 0.674376369, -0.738025129, -0.0231405795, 0.0225616489, -0.0107290596, 0.99968797))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.72799981, 0.851200402, 0.128000006))
  Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.639999986, 0.639999986, 0.639999986))
  PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(5.00587463, -0.0186576843, -3.03620529, -0.363626748, -0.931543052, -0.00177001953, 0.0225601178, -0.0107058063, 0.999688208, -0.931271613, 0.363473415, 0.0249086414))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(0.755199492, 0.140799999, 0.128000006))
  Part = CreatePart(m, Enum.Material.Plastic, 0.1, 0, "Bright violet", "Part", Vector3.new(0.639999986, 0.639999986, 0.639999986))
  PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0195178986, -1.72340822, 5.73826408, -0.0224767718, 0.0108216703, -0.999688923, 0.999666512, 0.0129654286, -0.0223359168, 0.0127196843, -0.999857426, -0.0111094713))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.128000006, 0.300800025, 0.473599494))
  Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.639999986, 0.639999986, 0.639999986))
  PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.70845032, -0.0232372284, -5.72330189, -0.813561976, 0.58095336, 0.0246993117, 0.0226269029, -0.0108152628, 0.999685585, 0.581037879, 0.813865006, -0.00434628874))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.80479836, 0.140799999, 0.147200003))
  Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.876544178, 0.38502419, 0.303104669))
  PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.63891983, 0.0235245228, -0.0127735138, -0.0166322645, 0.99979943, 0.0111668557, -0.999610245, -0.0168775525, 0.0222432669, 0.0224272721, -0.0107925385, 0.999690294))
  Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.639999986, 0.639999986, 0.639999986))
  PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(5.04481697, 0.0164604187, 0.68819046, 0.446531326, 0.89476788, -0.000637643039, -0.0227225069, 0.0106271952, -0.999685466, -0.894479573, 0.446405202, 0.0250767376))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(0.595198631, 0.140799999, 0.128000006))
  Part = CreatePart(m, Enum.Material.Plastic, 0.1, 0, "Bright violet", "Part", Vector3.new(0.639999986, 0.639999986, 0.639999986))
  PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.86165905, 5.21106339, -0.0180263519, 0.738041818, 0.674688518, -0.00947169587, -0.674376905, 0.738025308, 0.0231207944, 0.0225896854, -0.0106766224, 0.99968785))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.07519984, 0.320000529, 0.128000006))
  Part = CreatePart(m, Enum.Material.Plastic, 0.1, 0, "Bright violet", "Part", Vector3.new(0.639999986, 0.639999986, 0.639999986))
  PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.767071187, 6.03869438, -0.0198879242, -0.996434927, -0.0815766603, 0.0215171035, 0.081318669, -0.996608496, -0.0126058832, 0.0224724747, -0.0108112022, 0.999689102))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.72799981, 0.851200402, 0.128000006))
  Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.639999986, 0.639999986, 0.639999986))
  PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.71637535, -0.0205230713, -5.04844856, -0.738042414, -0.67468822, 0.00944807753, 0.0225850884, -0.0107066035, 0.999687612, -0.674376309, 0.738025248, 0.023139827))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.16479897, 0.140799999, 0.128000006))
  Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.639999986, 0.639999986, 0.639999986))
  PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.99022675, 0.0163631439, -4.48710394, 0.532199562, -0.84635675, -0.0210685432, -0.022428602, 0.010782145, -0.999690413, 0.846321821, 0.532507181, -0.013244357))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(0.537599385, 0.140799999, 0.128000006))
  Part = CreatePart(m, Enum.Material.Plastic, 0.1, 0, "Bright violet", "Part", Vector3.new(0.639999986, 0.639999986, 0.639999986))
  PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.1055851, 1.22750437, -0.019695282, -0.0127172954, 0.999857366, 0.0111179054, -0.999668121, -0.0129624708, 0.0222655609, 0.0224064998, -0.0108310506, 0.999690294))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(2.43199873, 1.26080024, 0.128000006))
  Part = CreatePart(m, Enum.Material.Plastic, 0.1, 0, "Bright violet", "Part", Vector3.new(0.639999986, 0.639999986, 0.639999986))
  PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0166378021, 3.15160847, 4.9506712, 0.0223963726, -0.0108793452, 0.999690056, -0.738049686, -0.674683988, 0.00919236615, 0.674374759, -0.738026619, -0.0231399648))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.128000006, 0.646399736, 0.313599676))
  Part = CreatePart(m, Enum.Material.Plastic, 0.1, 0, "Bright violet", "Part", Vector3.new(0.639999986, 0.639999986, 0.639999986))
  PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.41636276, 1.18369389, -0.0196781158, 0.0127228582, -0.999860048, -0.0108661875, 0.999660432, 0.0129660051, -0.0226075128, 0.0227452423, -0.0105748475, 0.999685466))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(2.43199873, 1.26080024, 0.128000006))
  Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.639999986, 0.639999986, 0.639999986))
  PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(5.58975887, -0.0140666962, -1.6339817, 0.0864379108, 0.996219218, 0.00870222598, 0.0226151887, -0.0106947497, 0.999687195, 0.996000588, -0.0862140507, -0.0234541111))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(0.575999856, 0.140799999, 0.128000006))
  Part = CreatePart(m, Enum.Material.Plastic, 0.1, 0, "Bright violet", "Part", Vector3.new(0.639999986, 0.639999986, 0.639999986))
  PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.631473064, 6.39081001, -0.0188388824, -0.996432126, -0.0815780237, 0.0216384642, 0.0813187286, -0.996608436, -0.0126056299, 0.0225934219, -0.0108010471, 0.999686539))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.68319941, 0.249600008, 0.128000006))
  Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.639999986, 0.639999986, 0.639999986))
  PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.27829742, 0.0163593292, -4.61179781, -0.532199681, 0.846356153, 0.0210917741, -0.0227220673, 0.0106249228, -0.999685407, -0.846314013, -0.532511353, 0.0135763846))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(0.537599385, 0.140799999, 0.128000006))
  Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.639999986, 0.639999986, 0.639999986))
  PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.89048862, -0.0205230713, -5.30978012, 0.738042474, 0.67468822, -0.00943930447, 0.0225657728, -0.0106984824, 0.999688089, 0.674376905, -0.738025308, -0.0231207982))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.16479897, 0.140799999, 0.128000006))
  Part = CreatePart(m, Enum.Material.Plastic, 0.30000001192093, 0.30000001192093, "Alder", "Part", Vector3.new(0.200000003, 0.40959999, 0.40959999))
  PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0214576721, -5.6212635, 0.0153613091, 0.022575099, -0.0107033104, 0.99968797, -0.0166341495, 0.999800265, 0.0110801458, -0.999606788, -0.016879091, 0.0223925449))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.40959999, 0.532479942, 0.40959999))
  Part = CreatePart(m, Enum.Material.Plastic, 0.1, 0, "Bright violet", "Part", Vector3.new(0.639999986, 0.639999986, 0.639999986))
  PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.68758774, 4.94975662, -0.0180206299, -0.738043129, -0.674688041, 0.0094156377, 0.674376369, -0.738025129, -0.0231405795, 0.0225616489, -0.0107290596, 0.99968797))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.07519984, 0.320000529, 0.128000006))
  Part = CreatePart(m, Enum.Material.Plastic, 0.1, 0, "Bright violet", "Part", Vector3.new(0.639999986, 0.639999986, 0.639999986))
  PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0165786743, 3.32561493, 5.21191692, 0.0227537453, -0.0105265006, 0.999685705, 0.738038182, 0.674689353, -0.0096940659, -0.674375296, 0.738026679, 0.0231206603))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.128000006, 0.646399736, 0.313599676))
  Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.639999986, 0.639999986, 0.639999986))
  PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.78858471, 0.0164794922, 0.506832123, -0.446537435, -0.8947649, 0.000371061265, -0.0224274453, 0.0107779726, -0.999690354, 0.894483924, -0.446407497, -0.0248800572))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(0.595198631, 0.140799999, 0.128000006))
  Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(1.44998384, 0.315392375, 0.303104669))
  PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.96345329, 0.0271673203, -0.0129337311, -0.0166322645, 0.99979943, 0.0111668557, -0.999610245, -0.0168775525, 0.0222432669, 0.0224272721, -0.0107925385, 0.999690294))
  Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.876544178, 0.38502419, 0.303104669))
  PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.68543434, 0.98712182, -0.00816726685, -0.046211876, 0.998861969, 0.0117974356, -0.998679221, -0.0464625359, 0.0219393112, 0.0224624854, -0.0107680038, 0.999689758))
  Part = CreatePart(m, Enum.Material.Plastic, 0, 0.30000001192093, "Bright violet", "Part", Vector3.new(0.282624692, 0.245760009, 0.200000003))
  PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0145523548, -4.60754395, 0.168962479, 0.999606729, 0.0168602653, -0.0224121325, 0.0166151188, -0.999800503, -0.0110797435, -0.0225944724, 0.0107029974, -0.999687552))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=24479544", Vector3.new(0, 0, 0), Vector3.new(0.0819200054, 0.0819200054, 0.0409600027))
  Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.639999986, 0.639999986, 0.639999986))
  PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.92942715, 0.0165061951, 1.32118607, -0.599015176, -0.800723374, 0.00481471419, -0.0224291012, 0.0107679442, -0.999690533, 0.800423682, -0.598937631, -0.0244096667))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.62559843, 0.140799999, 0.128000006))
  Part = CreatePart(m, Enum.Material.Plastic, 0.30000001192093, 0.30000001192093, "Alder", "Part", Vector3.new(0.200000003, 0.40959999, 0.40959999))
  PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0132637024, -4.30034637, 0.37135911, 0.022575099, -0.0107033104, 0.99968797, -0.0166341495, 0.999800265, 0.0110801458, -0.999606788, -0.016879091, 0.0223925449))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.348159999, 0.204799995, 0.204799995))
  Part = CreatePart(m, Enum.Material.Plastic, 0.1, 0, "Bright violet", "Part", Vector3.new(0.639999986, 0.639999986, 0.639999986))
  PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.14409447, 1.71730363, -0.0181808472, -0.0127175897, 0.999857545, 0.0111091733, -0.999668121, -0.0129625695, 0.0222655907, 0.0224064197, -0.010822311, 0.999690473))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.38240027, 0.294400513, 0.128000006))
  Part = CreatePart(m, Enum.Material.Plastic, 0.1, 0, "Bright violet", "Part", Vector3.new(0.639999986, 0.639999986, 0.639999986))
  PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0200424194, -1.68305254, -4.82889271, 0.0227035228, -0.0105752572, 0.999686301, -0.999661446, -0.0129622128, 0.0225658324, 0.0127195092, -0.999860108, -0.0108659789))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.128000006, 0.300800025, 0.595199585))
  Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.876544178, 0.38502419, 0.303104669))
  PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.99755001, 0.95374155, -0.0081615448, 0.0462142788, -0.99886328, -0.011678189, 0.998673916, 0.0464647301, -0.0221716873, 0.0226891115, -0.0106380582, 0.999686062))
  Part = CreatePart(m, Enum.Material.Plastic, 0, 0.30000001192093, "Bright violet", "Part", Vector3.new(0.282624692, 0.245760009, 0.200000003))
  PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0280539989, -4.29655457, 0.168968201, -0.999607563, -0.0168600157, 0.0223752148, -0.0166152827, 0.999800563, 0.0110789835, -0.0225575455, 0.0107028708, -0.999688268))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=24479544", Vector3.new(0, 0, 0), Vector3.new(0.0819200054, 0.0819200054, 0.0409600027))
  Part = CreatePart(m, Enum.Material.Plastic, 0.1, 0, "Bright violet", "Part", Vector3.new(0.639999986, 0.639999986, 0.639999986))
  PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0174770355, 2.85362244, 5.07192707, 0.0227802489, -0.0105565563, 0.999684811, 0.754684091, 0.656008005, -0.0102699436, -0.655692875, 0.754680097, 0.022910893))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.128000006, 0.422399938, 0.415999621))
  Part = CreatePart(m, Enum.Material.Plastic, 0.1, 0, "Bright violet", "Part", Vector3.new(0.639999986, 0.639999986, 0.639999986))
  PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.45490074, 1.67345572, -0.0181369781, 0.0127225863, -0.999859929, -0.0108750463, 0.999660373, 0.0129659381, -0.022607591, 0.0227454342, -0.0105837137, 0.999685407))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.38240027, 0.294400513, 0.128000006))
  Part = CreatePart(m, Enum.Material.Plastic, 0.1, 0, "Bright violet", "Part", Vector3.new(0.639999986, 0.639999986, 0.639999986))
  PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0201969147, -1.33382714, -3.9551754, 0.0224465374, -0.01083076, 0.9996894, 0.999667287, 0.0129599757, -0.0223056264, -0.0127143636, 0.999857426, 0.0111180544))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.128000006, 0.921599567, 1.16479945))
  Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.876544178, 0.38502419, 0.303104669))
  PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.012471199, 5.617733, -0.0132598877, -0.999607265, -0.0168783981, 0.0223758295, 0.0166336372, -0.999800265, -0.0110800862, 0.0225583743, -0.0107035264, 0.999688268))
  Part = CreatePart(m, Enum.Material.Plastic, 0.30000001192093, 0.30000001192093, "Alder", "Part", Vector3.new(0.200000003, 0.40959999, 0.40959999))
  PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.013261795, -4.29629898, -0.296474218, 0.022575099, -0.0107033104, 0.99968797, -0.0166341495, 0.999800265, 0.0110801458, -0.999606788, -0.016879091, 0.0223925449))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.348159999, 0.204799995, 0.204799995))
  Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.639999986, 0.639999986, 0.639999986))
  PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0202903748, -0.133496761, -3.58696175, 0.0224431381, -0.0108322352, 0.99968946, 0.971663535, -0.235109702, -0.0243615042, 0.23530063, 0.97190845, 0.00524868071))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.128000006, 0.198399991, 0.364800036))
  Part = CreatePart(m, Enum.Material.Plastic, 0.30000001192093, 0.30000001192093, "Alder", "Part", Vector3.new(0.200000003, 0.40959999, 0.40959999))
  PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0214653015, -5.93225384, -0.0272181034, 0.0225750487, -0.0107027441, 0.99968797, 0.0166341309, -0.999800265, -0.0110795796, 0.999606848, 0.0168790594, -0.0223925058))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.40959999, 0.532479942, 0.40959999))
  Part = CreatePart(m, Enum.Material.Plastic, 0.1, 0, "Bright violet", "Part", Vector3.new(0.639999986, 0.639999986, 0.639999986))
  PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.609172106, 6.70410347, -0.0188045502, 0.996432602, 0.0815780014, -0.0216193274, -0.0813233852, 0.996610582, 0.0124074444, 0.0225582253, -0.0106050298, 0.999689281))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.68319941, 0.249600008, 0.128000006))
  Part = CreatePart(m, Enum.Material.Plastic, 0.1, 0, "Bright violet", "Part", Vector3.new(0.639999986, 0.639999986, 0.639999986))
  PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.020072937, -1.72696197, -4.51804733, 0.0224465374, -0.01083076, 0.9996894, 0.999667287, 0.0129599757, -0.0223056264, -0.0127143636, 0.999857426, 0.0111180544))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.128000006, 0.300800025, 0.595199585))
  Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.339968324, 0.225281447, 0.299007952))
  PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0176646709, 4.95817947, -0.00996398926, -0.999607265, -0.0168783981, 0.0223758295, 0.0166336372, -0.999800265, -0.0110800862, 0.0225583743, -0.0107035264, 0.999688268))
  CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
  Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.639999986, 0.639999986, 0.639999986))
  PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.02155495, 0.0165500641, -1.10000825, 0.038005691, -0.99921, -0.011614345, -0.0224186815, 0.0107672289, -0.999690771, 0.99902612, 0.0382543132, -0.0219917558))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.62559843, 0.140799999, 0.128000006))
  Part = CreatePart(m, Enum.Material.Plastic, 0.1, 0, "Bright violet", "Part", Vector3.new(0.639999986, 0.639999986, 0.639999986))
  PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.62379932, 5.34848595, -0.0198459625, -0.823910177, 0.5661847, 0.0246389508, -0.56627512, -0.824207544, 0.00381340832, 0.0224666987, -0.0108105242, 0.999689221))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.72799981, 1.26080024, 0.128000006))
  Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.639999986, 0.639999986, 0.639999986))
  PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(5.13460541, 0.0164985657, -1.83118975, 0.0127157718, -0.999858022, -0.0110557973, -0.0224457663, 0.0107684806, -0.999690056, 0.999667227, 0.0129599851, -0.0223056469))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5359987, 0.140799999, 0.128000006))
  Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.639999986, 0.639999986, 0.639999986))
  PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.648713708, -0.0171279907, -6.79705429, 0.996433198, 0.0815778077, -0.0215870179, 0.0225260407, -0.0106078833, 0.999690056, 0.0813235268, -0.996610522, -0.0124076605))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.70239866, 0.160000011, 0.128000006))
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

  Damage = function(hit, damage, cooldown, Color1, Color2, HSound, HPitch)
  for i,v in pairs(hit:GetChildren()) do
    if v:IsA("Humanoid") and hit.Name ~= Character.Name then
      local find = v:FindFirstChild("Hitz")
      if not find then
        if v.Parent:findFirstChild("Head") then
          local BillG = Create("BillboardGui")({Parent = v.Parent.Head, Size = UDim2.new(1, 0, 1, 0), Adornee = v.Parent.Head, StudsOffset = Vector3.new(math.random(-3, 3), math.random(3, 5), math.random(-3, 3))})
          do
            local TL = Create("TextLabel")({Parent = BillG, Size = UDim2.new(3, 3, 3, 3), BackgroundTransparency = 1, Text = tostring(damage) .. "-", TextColor3 = Color1.Color, TextStrokeColor3 = Color2.Color, TextStrokeTransparency = 0, TextXAlignment = Enum.TextXAlignment.Center, TextYAlignment = Enum.TextYAlignment.Center, FontSize = Enum.FontSize.Size18, Font = "ArialBold"})
            coroutine.resume(coroutine.create(function()
    swait(1)
    for i = 0, 1, 0.1 do
      swait(0.1)
      BillG.StudsOffset = BillG.StudsOffset + Vector3.new(0, 0.1, 0)
    end
    BillG:Destroy()
  end
))
          end
        end
        do
          v.Health = v.Health - damage
          do
            local bool = Create("BoolValue")({Parent = v, Name = "Hitz"})
            if HSound ~= nil and HPitch ~= nil then
              CreateSound(HSound, hit, 1, HPitch)
            end
            game:GetService("Debris"):AddItem(bool, cooldown)
            -- DECOMPILER ERROR at PC140: LeaveBlock: unexpected jumping out DO_STMT

            -- DECOMPILER ERROR at PC140: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC140: LeaveBlock: unexpected jumping out IF_STMT

            -- DECOMPILER ERROR at PC140: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC140: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
    end
  end
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

  attackone = function()
  attack = true
  so("http://roblox.com/asset/?id=189505639", HITBOX1, 1, 1.1)
  local con = HITBOX1.Touched:connect(function(hit)
    Damagefunc(HITBOX1, hit, 7, 10, math.random(5, 10), "Normal", RootPart, 0.2, 1)
  end
)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * angles(math.rad(0), math.rad(0), math.rad(-70)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(70)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.4, 0.6, -0.2) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.4, 0.6, 0.3) * angles(math.rad(0), math.rad(-70), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, -0.5) * angles(math.rad(100), math.rad(70), math.rad(50)), 0.3)
  end
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * angles(math.rad(0), math.rad(0), math.rad(100)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(-20), math.rad(-100)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.4, 0.6, -0.2) * angles(math.rad(50), math.rad(50), math.rad(40)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.4, 0.3) * angles(math.rad(-60), math.rad(0), math.rad(40)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -0.8, -0.3) * angles(0, 1.3, 0), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -0.8, 0) * angles(-0.5, -1.4, 0), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, -0.5) * angles(math.rad(0), math.rad(0), math.rad(70)), 0.3)
  end
  con:disconnect()
  attack = false
end

  attacktwo = function()
  attack = true
  so("http://roblox.com/asset/?id=189505639", Torso, 1, 1.1)
  for i = 0, 1, 0.1 do
    swait()
    MagniDamage(Handle, Handle, 5, 5, 8, 1, "Normal")
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * angles(math.rad(0), math.rad(0), math.rad(100)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(-20), math.rad(-100)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.4, 0.6, -0.2) * angles(math.rad(50), math.rad(50), math.rad(40)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.4, 0.3) * angles(math.rad(-60), math.rad(0), math.rad(40)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -0.8, -0.3) * angles(0, 1.3, 0), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -0.8, 0) * angles(-0.5, -1.4, 0), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, -0.5) * angles(math.rad(0), math.rad(70), math.rad(0 + 360 * i)), 0.3)
  end
  for i = 0, 1, 0.1 do
    swait()
    MagniDamage(Handle, Handle, 5, 2, 5, 1, "Normal")
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * angles(math.rad(0), math.rad(0), math.rad(-70)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(70)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.4, 0.6, -0.2) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.4, 0.6, 0.3) * angles(math.rad(0), math.rad(-70), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, -0.5) * angles(math.rad(0), math.rad(70), math.rad(0 + 360 * i)), 0.3)
  end
  attack = false
end

  so = function(id, par, vol, pit)
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

  DeathSlash = function()
  attack = true
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1) * angles(math.rad(40), math.rad(0), math.rad(-70)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-20), math.rad(-30), math.rad(70)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(20), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(-60)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(60), math.rad(-30)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, 0.2, 0) * angles(math.rad(0), math.rad(-40), math.rad(-60)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, -0.5) * angles(math.rad(0), math.rad(70), math.rad(0 + 360 * i)), 0.3)
  end
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1) * angles(math.rad(40), math.rad(0), math.rad(-70)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-20), math.rad(-30), math.rad(70)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(20), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(-60)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(60), math.rad(-30)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, 0.2, 0) * angles(math.rad(0), math.rad(-40), math.rad(-60)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, -0.5) * angles(math.rad(0), math.rad(70), math.rad(0 + 360 * i)), 0.3)
  end
  MagicCircle(BrickColor.new("Black"), RootPart.CFrame * angles(0, 0, 0), 25, 25, 25, 5, 5, 5, 0.08)
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
    for i,v in pairs(m:children()) do
      if v:IsA("BasePart") then
        v.Transparency = 1
      end
    end
  end
))
  for i = 1, 6 do
    for i = 0, 1, 0.1 do
      swait()
    end
    local ef = CreatePart(workspace, "SmoothPlastic", 0, 1, BrickColor.new("Black"), "Effect", vt())
    ef.Anchored = true
    ef.CFrame = RootPart.CFrame * cf(math.random(-10, 10), 0, -7.5 * i)
    so("http://www.roblox.com/asset/?id=210861478", ef, 1, 1)
    MagniDamage(ef, ef, 12, 7, 13, 10, "Knockdown")
    MagicCircle(BrickColor.new("Black"), ef.CFrame * angles(0, 0, 0), 50, 50, 50, -5, -5, -5, 0.08)
    game:GetService("Debris"):AddItem(ef, 0.5)
    MagicRing(BrickColor.new("Magenta"), ef.CFrame * angles(math.random(-50, 50), 0, 0), 5, 5, 1, 0.5, 0.5, 0, 0.03)
  end
  RootPart.CFrame = RootPart.CFrame * cf(0, 0, -35)
  MagicCircle(BrickColor.new("Black"), RootPart.CFrame * angles(0, 0, 0), 25, 25, 25, 5, 5, 5, 0.08)
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
    for i,v in pairs(m:children()) do
      if v:IsA("BasePart") then
        v.Transparency = 0
      end
    end
    HITBOX1.Transparency = 1
    HITBOX2.Transparency = 1
    Handle.Transparency = 1
  end
))
  attack = false
end

  UltSlash = function()
  attack = true
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1) * angles(math.rad(40), math.rad(0), math.rad(-70)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-20), math.rad(-30), math.rad(70)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(20), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(-60)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(60), math.rad(-30)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, 0.2, 0) * angles(math.rad(0), math.rad(-40), math.rad(-60)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, -0.5) * angles(math.rad(0), math.rad(70), math.rad(0 + 360 * i)), 0.3)
  end
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1) * angles(math.rad(40), math.rad(0), math.rad(-70)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-20), math.rad(-30), math.rad(70)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(20), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(-60)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(60), math.rad(-30)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, 0.2, 0) * angles(math.rad(0), math.rad(-40), math.rad(-60)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, -0.5) * angles(math.rad(0), math.rad(70), math.rad(0 + 360 * i)), 0.3)
  end
  MagicCircle(BrickColor.new("Black"), RootPart.CFrame * angles(0, 0, 0), 25, 25, 25, 5, 5, 5, 0.08)
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
    for i,v in pairs(m:children()) do
      if v:IsA("BasePart") then
        v.Transparency = 1
      end
    end
  end
))
  for i = 1, 15 do
    for i = 0, 1, 0.25 do
      swait()
    end
    local ef = CreatePart(workspace, "SmoothPlastic", 0, 1, BrickColor.new("Black"), "Effect", vt())
    ef.Anchored = true
    ef.CFrame = RootPart.CFrame * cf(math.random(-15, 15), math.random(0, 15), math.random(-15, 15))
    so("http://www.roblox.com/asset/?id=210861478", ef, 1, 1)
    MagniDamage(ef, ef, 10, 10, 15, 10, "Knockdown")
    MagicCircle(BrickColor.new("Black"), ef.CFrame * angles(0, 0, 0), 50, 50, 50, -5, -5, -5, 0.08)
    game:GetService("Debris"):AddItem(ef, 0.5)
    MagicRing(BrickColor.new("Magenta"), ef.CFrame * angles(math.random(-50, 50), 0, 0), 5, 5, 1, 0.5, 0.5, 0, 0.03)
  end
  MagicCircle(BrickColor.new("Black"), RootPart.CFrame * angles(0, 0, 0), 25, 25, 25, 5, 5, 5, 0.08)
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
    for i,v in pairs(m:children()) do
      if v:IsA("BasePart") then
        v.Transparency = 0
      end
    end
    HITBOX1.Transparency = 1
    HITBOX2.Transparency = 1
    Handle.Transparency = 1
  end
))
  attack = false
end

  local many = 0
  local winding = false
  DeathWind = function()
  attack = true
  winding = true
  coroutine.resume(coroutine.create(function()
    while winding do
      wait(2)
      if many > 5 or mana > 0 then
        SphereEffect(BrickColor.new("Black"), Torso.CFrame, 10, 10, 10, 5, 5, 5, 0.07)
        many = many + 1
        mana = mana - 5
      end
    end
  end
))
  coroutine.resume(coroutine.create(function()
    while winding do
      swait()
      coroutine.resume(coroutine.create(function()
      for i = 1, 1 do
        swait()
        local ef = CreatePart(workspace, "SmoothPlastic", 0, 1, BrickColor.new("Black"), "Effect", vt())
        so("http://www.roblox.com/asset/?id=192410062", ef, 1, 1)
        ef.Anchored = true
        ef.CFrame = RootPart.CFrame * cf(0, 0, -7.5)
        MagicRing(BrickColor.new("Bright violet"), RootPart.CFrame * cf(0, 0, -7.5) * angles(0, 0, 0), 0.5, 0.5, 1, 0.5, 0.5, 0, 0.05)
        game:GetService("Debris"):AddItem(ef, 0.5)
        MagicRing(BrickColor.new("Alder"), RootPart.CFrame * cf(0, 0, -7.5) * angles(0, 0, 0), 5, 5, 1, 0.5, 0.5, 0, 0.03)
      end
    end
))
      for i = 1, 0, -0.1 do
        swait()
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * angles(math.rad(0), math.rad(0), math.rad(100)), 0.3)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(-20), math.rad(-100)), 0.3)
        RW.C0 = clerp(RW.C0, CFrame.new(1.4, 0.6, -0.2) * angles(math.rad(0), math.rad(0), math.rad(100)), 0.3)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.4, 0.3) * angles(math.rad(-60), math.rad(0), math.rad(40)), 0.3)
        RH.C0 = clerp(RH.C0, cf(1, -0.8, -0.3) * angles(0, 1.3, 0), 0.3)
        LH.C0 = clerp(LH.C0, cf(-1, -0.8, 0) * angles(-0.5, -1.4, 0), 0.3)
        FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, -0.5) * angles(math.rad(0), math.rad(70), math.rad(0 + 360 * i)), 0.3)
      end
    end
  end
))
end

  local keafy = false
  UnDeathWind = function()
  if zenabled == true then
    return 
  end
  if keafy == true then
    return 
  end
  winding = false
  keafy = true
  coroutine.resume(coroutine.create(function()
    for i = 1, 1 + many do
      swait()
      local ef = CreatePart(workspace, "SmoothPlastic", 0, 1, BrickColor.new("Black"), "Effect", vt())
      so("http://www.roblox.com/asset/?id=233856130", ef, 1, 1)
      ef.Anchored = true
      ef.CFrame = RootPart.CFrame * cf(0, 0, -10 * i)
      MagniDamage(ef, ef, 10, 8, 15, 50, "Normal")
      MagicRing(BrickColor.new("Bright violet"), RootPart.CFrame * cf(0, 0, -10 * i) * angles(0, 0, 0), 5, 5, 5, 1, 1, 5, 0.05)
      game:GetService("Debris"):AddItem(ef, 0.5)
    end
  end
))
  many = 0
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * angles(math.rad(0), math.rad(0), math.rad(-70)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(70)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.4, 0.6, -0.2) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.4, 0.6, 0.3) * angles(math.rad(0), math.rad(-70), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, -0.5) * angles(math.rad(0), math.rad(70), math.rad(70)), 0.3)
  end
  wait(5)
  keafy = false
  attack = false
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
          if knockback > 0 then
            vp.Parent = hit.Parent.Torso
          end
          game:GetService("Debris"):AddItem(vp, 0.5)
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
                if Type == "Death" then
                  so("http://www.roblox.com/asset/?id=210861478", hit.Parent.Torso, 1, 1)
                  MagniDamage(hit.Parent.Torso, hit.Parent.Torso, 12, 20, 20, 10, "Knockdown")
                  MagicCircle(BrickColor.new("Black"), hit.Parent.Torso.CFrame * angles(0, 0, 0), 50, 50, 50, -5, -5, -5, 0.08)
                  MagicRing(BrickColor.new("Magenta"), hit.Parent.Torso.CFrame * angles(math.random(-50, 50), 0, 0), 5, 5, 1, 0.5, 0.5, 0, 0.03)
                else
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

  MagicCircle = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = CreatePart(workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = CreateMesh("SpecialMesh", prt, "Sphere", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 2)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end

  MagicBlock = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = CreatePart(workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  msh = CreateMesh("BlockMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 5)
  table.insert(Effects, {prt, "Block1", delay, x3, y3, z3})
end

  MagicRing = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = CreatePart(workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
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

  attackthree = function()
  attack = true
  MagicCircle(BrickColor.new("Black"), RootPart.CFrame * cf(0, 0, -5), 50, 50, 50, -5, -5, -5, 0.08)
  so("http://www.roblox.com/asset/?id=210861478", RootPart, 1, 1)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * angles(math.rad(0), math.rad(0), math.rad(-70)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(70)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.4, 0.6, -0.2) * angles(math.rad(0), math.rad(-10), math.rad(20)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.4, 0.3) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -0.8, -0.3) * angles(0, 1.3, 0), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -0.8, 0) * angles(-0.5, -1.4, 0), 0.3)
    FakeHandleWeld.C0 = clerp(HandleWeld.C0, cf(0, 0, 0) * angles(math.rad(70), math.rad(90), math.rad(70)), 0.3)
  end
  MagniDamage(RootPart, RootPart, 15, 8, 15, 10, "Normal")
  MagicRing(BrickColor.new("Magenta"), RootPart.CFrame * cf(0, 0, -5) * angles(math.random(-50, 50), 0, 0), 5, 5, 1, 0.5, 0.5, 0, 0.03)
  MagicCircle(BrickColor.new("Black"), RootPart.CFrame * cf(0, 0, -5), 15, 15, 15, 5, 5, 5, 0.08)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * angles(math.rad(0), math.rad(0), math.rad(70)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(-70)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.4, 0.6, -0.2) * angles(math.rad(0), math.rad(-70), math.rad(20)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.4, 0.3) * angles(math.rad(0), math.rad(-70), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -0.8, -0.3) * angles(0, 1.3, 0), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -0.8, 0) * angles(-0.5, -1.4, 0), 0.3)
    FakeHandleWeld.C0 = clerp(HandleWeld.C0, cf(0, 0, 0) * angles(math.rad(70), math.rad(90), math.rad(70)), 0.3)
  end
  attack = false
end

  local cursing = false
  Curse = function()
  attack = true
  MagicCircle(BrickColor.new("Black"), RootPart.CFrame * cf(0, -3, 0), 50, 50, 50, -5, -5, -5, 0.08)
  so("http://www.roblox.com/asset/?id=238319531", RootPart, 1, 1)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * angles(math.rad(0), math.rad(0), math.rad(-70)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(70)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.4, 0.6, -0.2) * angles(math.rad(0), math.rad(-10), math.rad(100)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.4, 0.3) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -0.8, -0.3) * angles(0, 1.3, 0), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -0.8, 0) * angles(-0.5, -1.4, 0), 0.3)
    FakeHandleWeld.C0 = clerp(HandleWeld.C0, cf(0, 0, 0) * angles(math.rad(70), math.rad(90), math.rad(70)), 0.3)
  end
  coroutine.resume(coroutine.create(function()
    Cursefield()
  end
))
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * angles(math.rad(0), math.rad(0), math.rad(-70)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(70)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.4, 0.6, -0.2) * angles(math.rad(0), math.rad(-10), math.rad(100)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.4, 0.3) * angles(math.rad(0), math.rad(-70), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -0.8, -0.3) * angles(0, 1.3, 0), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -0.8, 0) * angles(-0.5, -1.4, 0), 0.3)
    FakeHandleWeld.C0 = clerp(HandleWeld.C0, cf(0, 0, 0) * angles(math.rad(70), math.rad(90), math.rad(70)), 0.3)
  end
  attack = false
end

  Cursefield = function()
  cursing = true
  local ef = CreatePart(workspace, "SmoothPlastic", 0, 1, BrickColor.new("Black"), "Effect", vt())
  ef.Anchored = true
  ef.CFrame = RootPart.CFrame * cf(0, -3, 0)
  coroutine.resume(coroutine.create(function()
    while cursing do
      wait(0.5)
      SphereEffect(BrickColor.new("Black"), ef.CFrame * angles(0, 0, 0), 55, 55, 55, 13, 13, 13, 0.05)
      MagniDamage(ef, ef, 20, 3, 3, 2, "Normal")
      so("http://www.roblox.com/asset/?id=192410077", RootPart, 1, 1)
      MagicRing(BrickColor.new("Black"), ef.CFrame * angles(math.rad(90), 0, 0), 5, 5, 1, 2, 2, 0, 0.03)
    end
  end
))
  for i = 0, 1, 0.005 do
    swait()
  end
  game.Debris:AddItem(ef, 0.1)
  cursing = false
end

  ob1u = function()
end

  ob1d = function()
  if attack == false and attacktype == 1 and zenabled == true then
    attacktype = 2
    attackone()
  else
    if attack == false and attacktype == 2 and zenabled == true then
      attacktwo()
      attacktype = 3
    else
      if attack == false and attacktype == 3 and zenabled == true then
        attackthree()
        attacktype = 1
      end
    end
  end
end

  key = function(k)
  k = k:lower()
  if attack == false and k == "z" and zenabled == true and mana >= 15 then
    zenabled = false
    DeathWind()
  else
    if attack == false and k == "x" and mana >= 25 and xenabled == true then
      xenabled = false
      mana = mana
      coroutine.resume(coroutine.create(function()
    for i = 1, 0, -0.005 do
      swait()
      fenframe2a.Size = UDim2.new(0.05 * i, 0, 0.1, 0)
    end
    xenabled = true
    fenframe2a.Size = UDim2.new(0, 0, 0.1, 0)
  end
))
      DeathSlash()
    else
      if attack == false and k == "c" and cursing == false and mana >= 35 and cenabled == true then
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
        Curse()
      else
        if attack == false and k == "v" and mana >= 45 and venabled == true then
          venabled = false
          mana = mana
          coroutine.resume(coroutine.create(function()
    for i = 1, 0, -0.0015 do
      swait()
      fenframe4a.Size = UDim2.new(0.05 * i, 0, 0.1, 0)
    end
    venabled = true
    fenframe4a.Size = UDim2.new(0, 0, 0.1, 0)
  end
))
          UltSlash()
        end
      end
    end
  end
end

  keydown = function(k)
  k = k:lower()
  if attack == true and k == "z" and zenabled == false then
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
    UnDeathWind()
  end
end

--[[  Bin = script.Parent
  ds = function(mouse)
end]]

 -- s = function(mouse)
  --print("Selected")
  mouse.Button1Down:connect(function()
    ob1d(mouse)
  end
)
  mouse.Button1Up:connect(function()
    ob1u(mouse)
  end
)
  mouse.KeyDown:connect(key)
  mouse.KeyUp:connect(keydown)
--[[end

  Bin.Selected:connect(s)
  Bin.Deselected:connect(ds)]]
  pwait = function(num)
  if num == 0 or num == nil then
    game:service("RunService").Heartbeat:wait(0)
  else
    for i = 0, num do
      game:service("RunService").Heartbeat:wait(0)
    end
  end
end

  while 1 do
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
                Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
                RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
                LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
                RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
                LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
              end
            else
              if RootPart.Velocity.y < -1 and hit == nil then
                Anim = "Fall"
                if attack == false then
                  RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
                  Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(0)), 0.3)
                  RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(30)), 0.3)
                  LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-30)), 0.3)
                  RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
                  LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
                end
              else
                if Torsovelocity.x < 1 and Torsovelocity.z < 1 and hit ~= nil then
                  Anim = "Idle"
                  if attack == false then
                    change = 1
                    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * angles(math.rad(0), math.rad(0), math.rad(-50)), 0.3)
                    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(50)), 0.3)
                    RW.C0 = clerp(RW.C0, CFrame.new(1.4, 0.6, -0.2) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
                    LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.4, 0.3) * angles(math.rad(0), math.rad(0), math.rad(-20)), 0.3)
                    RH.C0 = clerp(RH.C0, cf(1, -0.8, -0.3) * angles(0, 1.3, 0), 0.3)
                    LH.C0 = clerp(LH.C0, cf(-1, -0.8, 0) * angles(-0.5, -1.4, 0), 0.3)
                    FakeHandleWeld.C0 = clerp(HandleWeld.C0, cf(0, 0, 0) * angles(math.rad(70), math.rad(90), math.rad(70)), 0.3)
                  end
                else
                  if 2 < Torsovelocity.x and Torsovelocity.z > 2 and hit ~= nil then
                    Anim = "Walk"
                    if attack == false then
                      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.05 + 0.1 * math.cos((sine) / 3)) * angles(math.rad(5), math.rad(0) + RootPart.RotVelocity.Y / 30, math.rad(5 * math.cos((sine) / 5))), 0.2)
                      Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(5), math.rad(0), math.rad(-5 * math.cos((sine) / 5)) + RootPart.RotVelocity.Y / 9), 0.2)
                      RW.C0 = clerp(RW.C0, CFrame.new(1.4, 0.6, -0.2) * angles(math.rad(0), math.rad(-20), math.rad(20)), 0.3)
                      LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.4, 0.3) * angles(math.rad(0), math.rad(20), math.rad(-20)), 0.3)
                      RH.C0 = clerp(RH.C0, cf(1, -0.8, 0) * angles(0, 1.6, 0) * angles(-0.06, 0, 0), 0.3)
                      LH.C0 = clerp(LH.C0, cf(-1, -0.8, 0) * angles(0, -1.6, 0) * angles(-0.06, 0, 0), 0.3)
                      FakeHandleWeld.C0 = clerp(HandleWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(90), math.rad(70)), 0.3)
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
          end
        end
        if attack ~= true or 100 <= mana then
          mana = 100        end
      end
      if mananum <= 8 then
        mananum = mananum + 1
     end
    end
    mananum = 0
    mana = mana + 1
  end
end