Player = game:GetService("Players").LocalPlayer
Character = Player.Character
PlayerGui = Player.PlayerGui
Backpack = Player.Backpack
Torso = Character.Torso
Head = Character.Head
Humanoid = Character.Humanoid
LeftArm = Character["Left Arm"]
LeftLeg = Character["Left Leg"]
RightArm = Character["Right Arm"]
RightLeg = Character["Right Leg"]
LS = Torso["Left Shoulder"]
LH = Torso["Left Hip"]
RS = Torso["Right Shoulder"]
it = Instance.new
RH = Torso["Right Hip"]
Face = Head.face
Neck = Torso.Neck
xenabled = true
cenabled = true
venabled = true
zenabled = true
attacktype = 1
vt = Vector3.new
cf = CFrame.new
euler = CFrame.fromEulerAnglesXYZ
angles = CFrame.Angles
cloaked = false
necko = cf(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
necko2 = cf(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
LHC0 = cf(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
LHC1 = cf(-0.5, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
RHC0 = cf(1, -1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
RHC1 = cf(0.5, 1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
RootPart = Character.HumanoidRootPart
RootJoint = RootPart.RootJoint
RootCF = euler(-1.57, 0, 3.14)
attack = false
attackdebounce = false
deb = false
equipped = true
hand = false
MMouse = nil
combo = 0
mana = 100
trispeed = 0.2
attackmode = "none"
local idle = 0
local Anim = "Idle"
local Effects = {}
local gun = false
ZTarget = nil
RocketTarget = nil
local shoot = false
player = nil
mana = 100
cam = workspace.CurrentCamera
ZTarget = nil
RocketTarget = nil
local m = Instance.new("Model", Character)
m.Name = "WeaponModel"
Humanoid.JumpPower = 100
mouse = Player:GetMouse()
RSH = nil
RW = Instance.new("Weld")
RW.Name = "Right Shoulder"
LW = Instance.new("Weld")
LW.Name = "Left Shoulder"
LH = Torso["Left Hip"]
RH = Torso["Right Hip"]
TorsoColor = Torso.BrickColor
NoOutline = function(Part)
  Part.TopSurface = 10
end

player = Player
ch = Character
RSH = ch.Torso["Right Shoulder"]
LSH = ch.Torso["Left Shoulder"]
RSH.Parent = nil
LSH.Parent = nil
RW.Name = "Right Shoulder"
RW.Part0 = ch.Torso
RW.C0 = cf(1.5, 0.5, 0)
RW.C1 = cf(0, 0.5, 0)
RW.Part1 = ch["Right Arm"]
RW.Parent = ch.Torso
LW.Name = "Left Shoulder"
LW.Part0 = ch.Torso
LW.C0 = cf(-1.5, 0.5, 0)
LW.C1 = cf(0, 0.5, 0)
LW.Part1 = ch["Left Arm"]
LW.Parent = ch.Torso
RemoveOutlines = function(part)
  part.TopSurface = 10
end

CreatePart = function(FormFactor, Parent, Material, Reflectance, Transparency, BC, Name, Size)
  local Part = Instance.new("Part")
  Part.formFactor = FormFactor
  Part.Parent = Parent
  Part.Reflectance = Reflectance
  Part.Transparency = Transparency
  Part.CanCollide = false
  Part.Locked = true
  Part.BrickColor = BrickColor.new(tostring(BC))
  Part.Name = Name
  Part.Size = Size
  Part.Material = Material
  RemoveOutlines(Part)
  return Part
end

CreateMesh = function(Mesh, Part, MeshType, MeshId, OffSet, Scale)
  local Msh = Instance.new(Mesh)
  Msh.Parent = Part
  Msh.Offset = OffSet
  Msh.Scale = Scale
  if Mesh == "SpecialMesh" then
    Msh.MeshType = MeshType
    Msh.MeshId = MeshId
  end
  return Msh
end

CreateWeld = function(Parent, P0, P1, c0, c1)
  local W = Instance.new("Weld")
  W.Parent = Parent
  W.Part0 = P0
  W.Part1 = P1
  W.C0 = c0
  W.C1 = c1
  return W
end

it = Instance.new
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

clerp = function(a, b, t)
  return a:lerp(b, t)
end

makegui = function(ador, text)
  local a = math.random(-10, 10) / 100
  local bg = Instance.new("BillboardGui", m)
  bg.Adornee = ador
  bg.Size = UDim2.new(1, 0, 1, 0)
  bg.StudsOffset = Vector3.new(0, 0, 0)
  bg.AlwaysOnTop = false
  local tl = Instance.new("TextLabel", bg)
  tl.BackgroundTransparency = 1
  tl.Size = UDim2.new(1, 0, 1, 0)
  tl.Text = text
  tl.Font = "SourceSansBold"
  tl.FontSize = "Size42"
  tl.TextColor3 = Color3.new(255, 255, 255)
  tl.TextStrokeTransparency = 0
  tl.TextScaled = true
  tl.TextWrapped = true
  coroutine.wrap(function()
    for i = 1, 50 do
      swait()
      bg.StudsOffset = bg.StudsOffset + Vector3.new(a, 0.1, a)
    end
    wait(1)
    for i = 1, 10 do
      swait()
      tl.TextTransparency = tl.TextTransparency + 0.1
    end
    wait(5)
    bg:remove()
  end
)()
end

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
damage = function(hit, mind, maxd, knock, type, prop)
  if hit.Parent == nil then
    return 
  end
  local h = hit.Parent:FindFirstChild("Humanoid")
  for i,v in pairs(hit.Parent:children()) do
    if v:IsA("Humanoid") then
      h = v
    end
  end
  if hit.Parent.Parent:FindFirstChild("Torso") ~= nil then
    h = hit.Parent.Parent:FindFirstChild("Humanoid")
  end
  if hit.Parent:IsA("Hat") then
    hit = hit.Parent.Parent:findFirstChild("Head")
  end
  local D = math.random(mind, maxd)
  if h ~= nil and hit.Parent.Name ~= Character.Name and hit.Parent:FindFirstChild("Torso") ~= nil then
    if type == 1 then
      h.Health = h.Health - D
      makegui(h.Parent.Torso, tostring(D))
      so("http://www.roblox.com/asset/?id=169462037", hit, 1, math.random(150, 200) / 100)
      local vp = Instance.new("BodyVelocity")
      vp.P = 500
      vp.maxForce = Vector3.new(math.huge, 0, math.huge)
      vp.velocity = prop.CFrame.lookVector * knock + prop.Velocity / 1.05
      if knock > 0 then
        vp.Parent = hit.Parent.Torso
      end
      game:GetService("Debris"):AddItem(vp, 0.5)
    else
      do
        if type == 2 then
          so("http://www.roblox.com/asset/?id=169462037", hit, 1, math.random(150, 200) / 100)
          h.Health = h.Health - D
          makegui(h.Parent.Torso, tostring(D))
        end
      end
    end
  end
end

rayCast = function(Pos, Dir, Max, Ignore)
  return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore)
end

Handle = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, "Lime green", "Handle", Vector3.new(0.301632881, 2.05244946, 0.301632911))
Handleweld = CreateWeld(m, Character["Right Arm"], Handle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.900724411, 0.0686532855, 0.100441933, -9.87591953e-013, -0.999999881, 4.85088272e-012, 5.21260915e-007, -4.85088272e-012, -1, 1, -9.87589351e-013, 5.21260915e-007))
Handle2 = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, "Lime green", "Handle2", Vector3.new(0.301632881, 2.05244946, 0.301632911))
Handleweld2 = CreateWeld(m, Character["Left Arm"], Handle2, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.900724411, 0.0686532855, 0.100441933, -9.87591953e-013, -0.999999881, 4.85088272e-012, 5.21260915e-007, -4.85088272e-012, -1, 1, -9.87589351e-013, 5.21260915e-007))
CreateMesh("CylinderMesh", Handle2, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
FakeHandle = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, "Lime green", "FakeHandle", Vector3.new(0.301632881, 1.05244946, 0.301632911))
FakeHandleweld = CreateWeld(m, Handle, FakeHandle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -0.100000024, 0, 1, 0, 3.49105374e-020, 0, 1, 0, 3.49105374e-020, 0, 1))
FakeHandle2 = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0.3, "Lime green", "FakeHandle2", Vector3.new(0.301632881, 1.05244946, 0.301632911))
FakeHandleweld2 = CreateWeld(m, Handle2, FakeHandle2, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.12, -0.100000024, 1.25, 1, 0, 3.49105374e-020, 0, 1, 0, 3.49105374e-020, 0, 1))
CreateMesh("CylinderMesh", FakeHandle, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
CreateMesh("SpecialMesh", FakeHandle2, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=45728702", Vector3.new(0, 0, 0), Vector3.new(2, 3, 3))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.5, "Lime green", "Part", Vector3.new(0.200000003, 0.904898763, 1.50816441))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000781536102, 0.000250577927, 6.81403255, -1.49028878e-008, 9.31697571e-007, -0.999994278, 0.999994278, 1.89689118e-007, -1.49028523e-008, 1.89689047e-007, -0.999999702, -1.03599632e-006))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.123669446, 1, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.452449292, 0.200000003, 0.301632941))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000460863113, -0.000703811646, 5.1551156, 0.999994278, -2.56082499e-011, -8.24284271e-013, 7.24824226e-013, 6.13397333e-010, 0.999994278, -2.4641773e-011, -0.999999702, -1.0368808e-007))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.904898703, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.5, 0, "Light stone grey", "Part", Vector3.new(0.200000003, 0.603265822, 1.05571508))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000776290894, 0.00021648407, 6.58780527, -1.49040176e-008, 1.66174368e-006, -0.999994278, 0.999994278, 1.89681401e-007, -1.4903847e-008, 1.89681316e-007, -0.999999702, -1.76603862e-006))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.754082203, 1, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 4.67530966, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000900506973, -3.72235155, -0.000814437866, 0.999994278, -9.57904242e-011, -5.90481917e-012, 9.48240444e-011, 0.999999702, 7.09023971e-006, 5.73459726e-012, -6.98597478e-006, 0.999994278))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.754082203, 1, 0.829490483))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.452449292, 0.200000003, 0.301632941))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000506877899, -0.000769615173, 4.40096092, 0.999994278, -7.22328586e-011, -4.83882639e-012, 4.68256814e-012, -4.27471787e-006, 0.999994278, -7.12533782e-011, -0.999999702, -4.37899871e-006))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.904898703, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000766277313, -0.226443529, -3.57149124, 1.48977106e-008, 6.26339715e-006, -0.999994278, -0.999994278, -1.93668285e-007, -1.48987827e-008, -1.93668299e-007, 0.999999702, 6.36766708e-006))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.754082203, 0.754082263, 0.754082263))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Lime green", "Part", Vector3.new(0.200000003, 4.67530966, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000900506973, -3.72235155, -0.000761985779, 0.999994278, -9.81090348e-011, -6.22590998e-012, 9.71359521e-011, 0.999999702, 7.29890962e-006, 6.05515291e-012, -7.19464515e-006, 0.999994278))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.120653138, 1, 0.837031305))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.603265882, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.22638917, -3.94854045, -0.000765800476, 0.999994278, -7.93771299e-011, -4.7180081e-012, 7.83965046e-011, 0.999999702, 5.94327139e-006, 4.55733238e-012, -5.83899919e-006, 0.999994278))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.754082203, 1, 0.754082263))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.5, 0, "Light stone grey", "Part", Vector3.new(0.200000003, 1.65898108, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.22638917, -5.2304635, -0.000760555267, 0.999994278, -6.92162577e-011, -4.20806055e-012, 6.8235681e-011, 0.999999702, 5.52625534e-006, 4.04747373e-012, -5.42198086e-006, 0.999994278))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.754082203, 1, 0.754082263))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.5, 0, "Light stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000786304474, 0.226445198, -4.32553482, -1.48974175e-008, -5.79835444e-007, 0.999994278, 0.999994278, -1.89793411e-007, 1.4897128e-008, 1.89791407e-007, 0.999999702, 6.84136694e-007))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.754082203, 0.754082263, 0.754082263))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.5, 0, "Light stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000786304474, 0.226443529, 3.57149148, -1.49031347e-008, 8.27100678e-007, -0.999994278, 0.999994278, 1.89686276e-007, -1.49031187e-008, 1.89686205e-007, -0.999999702, -9.31400564e-007))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.754082203, 0.754082263, 0.754082263))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Lime green", "Part", Vector3.new(0.452449292, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000460863113, 0.00170040131, 3.48783398, 0.999994278, -6.29633429e-011, -4.78628595e-012, 4.66688624e-012, -3.23251811e-006, 0.999994278, -6.19969701e-011, -0.999999702, -3.33680305e-006))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.942602754, 0.754082263))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Lime green", "Part", Vector3.new(0.452449292, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000460863113, 0.00170660019, 5.14681053, 0.999994278, -6.29633429e-011, -4.78628595e-012, 4.66688624e-012, -3.23251811e-006, 0.999994278, -6.19969701e-011, -0.999999702, -3.33680305e-006))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.942602754, 0.754082263))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.5, 0, "Light stone grey", "Part", Vector3.new(0.301632881, 4.67530966, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000160694122, -3.72235155, -0.00077009201, 0.999994278, -7.02250896e-011, -3.89532287e-012, 6.9244506e-011, 0.999999702, 5.10900372e-006, 3.73475946e-012, -5.00472652e-006, 0.999994278))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.754082263))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Lime green", "Part", Vector3.new(0.452449292, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000460863113, 0.00170373917, 4.3927021, 0.999994278, -6.29633429e-011, -4.78628595e-012, 4.66688624e-012, -3.23251811e-006, 0.999994278, -6.19969701e-011, -0.999999702, -3.33680305e-006))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.942602754, 0.754082263))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000761985779, -0.226445198, 4.32553482, 1.49031258e-008, -6.22759217e-006, 0.999994278, -0.999994278, 1.9377616e-007, 1.49045132e-008, -1.93774227e-007, -0.999999702, -6.3318621e-006))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.754082203, 0.754082263, 0.754082263))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000786304474, -0.226062298, -3.57149124, 7.45085771e-008, -9.02447312e-007, 0.999994278, 0.999994278, -1.29337536e-007, -7.45088684e-008, 1.2933593e-007, 0.999999702, 1.00674674e-006))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.754082203, 0.754082263, 0.754082263))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.5, 0, "Light stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000760555267, 0.226063848, -4.32552719, -7.45085771e-008, 6.58613544e-006, -0.999994278, -0.999994278, -2.54132573e-007, 7.45070352e-008, -2.54131749e-007, 0.999999702, 6.69040401e-006))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.754082203, 0.754082263, 0.754082263))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.452449352, 0.301632941, 0.301632911))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.40486073, 2.28881836e-005, 4.76837158e-007, -7.4510659e-008, 0.999999642, -5.19771334e-007, -0.999999464, 8.94021142e-008, -4.55381871e-010, 1.08580016e-008, 4.77549349e-007, 0.999999642))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=3270017", Vector3.new(0, 0, 0), Vector3.new(0.463006377, 0.473563731, 1.8791728))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Lime green", "Part", Vector3.new(0.301632881, 0.452449381, 0.301632911))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0.5, 4.76837158e-007, 1, 0, 3.49105374e-020, 0, 1, 0, 3.49105374e-020, 0, 1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.301632881, 0.200000003, 0.301632911))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000160694122, -0.706498325, -0.000161170959, 0.999994278, -8.12544892e-011, -4.6401741e-012, 8.02827874e-011, 0.999999702, 5.73445595e-006, 4.46345478e-012, -5.63018284e-006, 0.999994278))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.754082263, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000784397125, -0.226063848, 4.32552719, -7.45085771e-008, 9.38253208e-007, -0.999994278, 0.999994278, 2.58115534e-007, -7.45084705e-008, 2.5811508e-007, -0.999999702, -1.04255219e-006))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.754082203, 0.754082263, 0.754082263))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Lime green", "Part", Vector3.new(0.301632881, 0.452449381, 0.301632911))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000160694122, -0.404852629, -0.000162601471, 0.999994278, -8.12544892e-011, -4.6401741e-012, 8.02827874e-011, 0.999999702, 5.73445595e-006, 4.46345478e-012, -5.63018284e-006, 0.999994278))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Lime green", "Part", Vector3.new(0.301632881, 0.200000003, 0.301632911))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.2649765e-005, 0.952409267, -5.24520874e-006, 1, -2.90482699e-012, -6.25005202e-013, 2.90482742e-012, 1, 3.1322088e-007, 6.25004334e-013, -3.13220937e-007, 1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.754082263, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.301632881, 0.200000003, 0.301632911))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000160694122, 0.198386788, -0.000166416168, 0.999994278, -8.12544892e-011, -4.6401741e-012, 8.02827874e-011, 0.999999702, 5.73445595e-006, 4.46345478e-012, -5.63018284e-006, 0.999994278))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.754082263, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.603265882, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.226004839, -3.94852328, 0.000782966614, -0.999994278, -6.44144791e-008, 7.45087902e-008, -6.44149978e-008, 0.999999702, 1.63986601e-006, -7.45087405e-008, 1.53557016e-006, -0.999994278))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.754082203, 1, 0.754082263))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.5, 0, "Light stone grey", "Part", Vector3.new(0.200000003, 1.65898108, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.226004839, -5.23044777, 0.000778198242, -0.999994278, -6.44043041e-008, 7.45087902e-008, -6.44047944e-008, 0.999999702, 2.05687343e-006, -7.45087618e-008, 1.95257962e-006, -0.999994278))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.754082203, 1, 0.754082263))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.301632822, 0.301632911, 0.301632941))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000160694122, -1.23431873, -0.000158309937, 0.999994278, -7.58783383e-011, -4.41249901e-012, 7.49053597e-011, 0.999999702, 5.52591155e-006, 4.24203684e-012, -5.42163707e-006, 0.999994278))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.301632881, 0.200000003, 0.301632911))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.2649765e-005, 0.801642776, -5.24520874e-006, 1, -2.90482699e-012, -6.25005202e-013, 2.90482742e-012, 1, 3.1322088e-007, 6.25004334e-013, -3.13220937e-007, 1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.754082263, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Lime green", "Part", Vector3.new(0.301632881, 0.200000003, 0.301632911))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000160694122, 0.047641933, -0.000165462494, 0.999994278, -8.12544892e-011, -4.6401741e-012, 8.02827874e-011, 0.999999702, 5.73445595e-006, 4.46345478e-012, -5.63018284e-006, 0.999994278))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.754082263, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.301632881, 0.200000003, 0.301632911))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000116825104, 1.10333133, -0.000106334686, 1, -8.73691189e-011, -7.57409153e-012, 8.73691744e-011, 1, 7.19496757e-006, 7.57346269e-012, -7.19496757e-006, 1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.754082263, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.5, 0, "Light stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000766277313, 0.226062536, 3.57149148, 7.45085771e-008, -6.33886475e-006, 0.999994278, -0.999994278, 1.25355314e-007, 7.45095434e-008, -1.25354148e-007, -0.999999702, -6.44313423e-006))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.754082203, 0.754082263, 0.754082263))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.452449292, 0.200000003, 0.301632941))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000506877899, -0.000774383545, 3.49609566, 0.999994278, -7.31991967e-011, -4.93830194e-012, 4.78204325e-012, -4.1704161e-006, 0.999994278, -7.22190502e-011, -0.999999702, -4.27469786e-006))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.904898703, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.5, "Lime green", "Part", Vector3.new(0.904898703, 4.67530966, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000299930573, -3.72235155, 0.000774860382, -0.999994278, -6.44028191e-008, 7.45117816e-008, -6.44031601e-008, 0.999999702, 3.93397568e-006, -7.45118669e-008, 3.82969256e-006, -0.999994278))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.0980306864))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.452449292, 0.200000003, 0.301632941))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000506877899, -0.000778675079, 2.74198365, 0.999994278, -7.27333055e-011, -4.87426852e-012, 4.67926956e-012, -3.96196538e-006, 0.999994278, -7.17527218e-011, -0.999999702, -4.06624804e-006))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.904898703, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.301632881, 0.301632911, 0.452449381))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000200271606, 1.23434317, 0.376773, 1.23888171e-008, 3.24624557e-006, -0.999994278, -8.94632066e-008, -0.999999702, -3.35053187e-006, -0.999994278, 8.94646988e-008, -1.23883597e-008))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.301632881, 0.301632911, 0.603265882))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000160217285, -0.301415563, -1.08350956, -1.19206696e-007, -3.91693493e-006, 0.999994278, 0.999994278, 2.97053617e-008, 1.19206646e-007, -2.97066389e-008, 0.999999702, 4.02121714e-006))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.301632881, 0.452449381, 0.301632911))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000160217285, 1.00810027, 0.301787853, -2.97987164e-008, -4.72161719e-006, 0.999994278, -7.00291214e-011, -0.999999702, -4.8258953e-006, 0.999994278, -7.11414885e-011, 2.9798553e-008))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.301632881, 0.200000003, 1.20653164))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(9.15527344e-005, -0.376680851, 1.98807502, 6.10957045e-007, 2.30473438e-006, -0.999994278, 0.999994278, -5.97264247e-008, 6.10956761e-007, -5.97237104e-008, -0.999999702, -2.40902614e-006))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.754082263, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.301632822, 0.316714555, 0.301632941))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.452566624, -0.000160217285, 1.23431873, 0.999994278, -6.81050077e-011, -3.46748129e-012, 3.30411198e-012, -3.64876109e-006, 0.999994278, -6.71349226e-011, -0.999999702, -3.75304512e-006))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.301632881, 0.200000003, 1.20653164))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000101566315, 0.225869298, 1.98805106, -5.51343817e-007, 2.41004295e-006, 0.999994278, -0.999994278, -5.97035381e-008, -5.51343476e-007, 5.97028773e-008, -0.999999702, 2.30572573e-006))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.754082263, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.301632911))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.22638917, -1.30971909, -0.000157833099, 0.999994278, -7.5721332e-011, -4.24837986e-012, 7.47407344e-011, 0.999999702, 5.4216589e-006, 4.08776485e-012, -5.31738306e-006, 0.999994278))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.754082203, 0.754082263, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.5, 0, "Light stone grey", "Part", Vector3.new(0.200000003, 2.11143041, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.226004958, -2.44035769, 0.000785827637, -0.999994278, -6.44114166e-008, 7.45090389e-008, -6.44119211e-008, 0.999999702, 1.84849864e-006, -7.45090034e-008, 1.7442037e-006, -0.999994278))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.754082203, 1, 0.754082263))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Lime green", "Part", Vector3.new(0.452449292, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000460863113, 0.00169754028, 2.73375678, 0.999994278, -6.29633429e-011, -4.78628595e-012, 4.66688624e-012, -3.23251811e-006, 0.999994278, -6.19969701e-011, -0.999999702, -3.33680305e-006))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.942602754, 0.754082263))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.301632881, 0.200000003, 0.301632911))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000160694122, -1.00806975, -0.000158786774, 0.999994278, -8.51322832e-011, -5.37915415e-012, 8.41605743e-011, 0.999999702, 6.15139652e-006, 5.21480515e-012, -6.04712568e-006, 0.999994278))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.754082263, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Lime green", "Part", Vector3.new(0.301632822, 0.331796169, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.452520609, -9.58442688e-005, 1.23446751, 0.999994278, -5.5805336e-011, -2.06513279e-012, 1.90487188e-012, -8.32826402e-007, 0.999994278, -5.48248356e-011, -0.999999702, -9.37126288e-007))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.754082322))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Lime green", "Part", Vector3.new(0.301632881, 0.200000003, 0.301632911))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000160694122, -0.857257009, -0.000160217285, 0.999994278, -8.12544892e-011, -4.6401741e-012, 8.02827874e-011, 0.999999702, 5.73445595e-006, 4.46345478e-012, -5.63018284e-006, 0.999994278))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.754082263, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.5, 0, "Light stone grey", "Part", Vector3.new(0.200000003, 2.11143041, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.22638917, -2.44035769, -0.000775337219, 0.999994278, -7.71317871e-011, -4.71892274e-012, 7.61511756e-011, 0.999999702, 6.04763136e-006, 4.55825265e-012, -5.94335961e-006, 0.999994278))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.754082203, 1, 0.754082263))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Lime green", "Part", Vector3.new(0.301632881, 0.301632911, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.2649765e-005, -4.76837158e-007, -1.40486121, -1, -4.85088315e-012, -9.87589459e-013, 9.87591953e-013, -5.21260915e-007, -1, 4.85088272e-012, -1, 5.21260915e-007))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.0935061872, 0.18248795, 0.334812433))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.301632881, 0.200000003, 0.301632911))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000160694122, -0.103231549, -0.00016450882, 0.999994278, -8.12544892e-011, -4.6401741e-012, 8.02827874e-011, 0.999999702, 5.73445595e-006, 4.46345478e-012, -5.63018284e-006, 0.999994278))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.754082263, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.301632881, 0.301632911, 0.452449381))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000157356262, -0.452600718, 1.46049201, 3.77276812e-012, -5.00457736e-006, 0.999994278, -0.999994278, 2.98778282e-008, 4.08561423e-012, -2.98766878e-008, -0.999999702, -5.10885457e-006))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Hitbox = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 1, "Lime green", "Hitbox", Vector3.new(0.904898703, 6.27530956, 0.200000003))
Hitboxweld = CreateWeld(m, FakeHandle, Hitbox, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000299930573, -4.52235365, 0.000774860382, -0.999994278, -6.44028191e-008, 7.45117816e-008, -6.44031601e-008, 0.999999702, 3.93397568e-006, -7.45118669e-008, 3.82969256e-006, -0.999994278))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.452449381))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00029706955, 0.00348496437, 6.28616476, -1.49025681e-008, 4.09715824e-007, -0.999994278, 0.999994278, 1.89689203e-007, -1.49026409e-008, 1.89689132e-007, -0.999999702, -5.14017074e-007))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.791786313, 0.754082263, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Lime green", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00029706955, 0.00348496437, 6.13534832, -1.49025681e-008, 4.0970491e-007, -0.999994278, 0.999994278, 1.89689203e-007, -1.49026409e-008, 1.89689132e-007, -0.999999702, -5.1400616e-007))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.806038439, 0.102555193, 0.754082263))
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

trail = function(color, part)
  trailling = true
  local lastPoint = part.Position
  coroutine.resume(coroutine.create(function()
    while trailling do
      swait()
      local mag = (lastPoint - part.Position).magnitude
      do
        local p = Instance.new("Part", m)
        p.Anchored = true
        p.CanCollide = false
        p.Transparency = 0.2
        p.BrickColor = BrickColor.new(color)
        p.Material = "Neon"
        p.FormFactor = "Custom"
        p.Size = Vector3.new(1, 1, 1)
        p.CFrame = CFrame.new(lastPoint, part.Position) * CFrame.new(0, 0, -mag / 2)
        local mesh = Instance.new("BlockMesh", p)
        mesh.Scale = Vector3.new(0.1, 0.1, mag + 0.2)
        lastPoint = part.Position
        coroutine.wrap(function()
      for x = 1, 10 do
        swait()
        mesh.Scale = mesh.Scale - Vector3.new(0.01, 0.01, 0)
      end
      p:remove()
    end
)()
      end
    end
  end
))
end

DoubleJump = function()
  attack = true
  Torso.Velocity = vt(0, 100, 0)
  Humanoid.WalkSpeed = 50
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(6 * i, math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(10), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(120), math.rad(0), math.rad(0)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(120), math.rad(0), math.rad(0)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(-50)) * angles(math.rad(-6), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-80), math.rad(50)) * angles(math.rad(-6), math.rad(0), math.rad(0)), 0.3)
    FakeHandleweld.C0 = clerp(FakeHandleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(180), math.rad(230)), 0.3)
  end
  for i = 0, 1, 0.06 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(10), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(50)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-40)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-80), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
    FakeHandleweld.C0 = clerp(FakeHandleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(180), math.rad(230)), 0.3)
  end
  attack = false
  Humanoid.WalkSpeed = 16
end

attackone = function()
  attack = true
  for i = 0, 1, 0.16 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(0, 0, 1), 0.4)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(0, 0, -1), 0.4)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -0.2) * angles(0, 1.3, 1.3), 0.4)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.4, 0.3) * angles(-0.6, 0, -0.5), 0.4)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0.3) * angles(0, 0.7, 0) * angles(0, 0, 0), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, -0.3) * angles(0, -2.3, 0) * angles(0, 0, 0.2), 0.3)
    FakeHandleweld.C0 = clerp(FakeHandleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.5)
  end
  local Con1 = Hitbox.Touched:connect(function(hit)
    Damagefunc(Hitbox, hit, 10, 15, math.random(5, 10), "Normal", RootPart, 0.1, "Hit2", 1)
  end
)
  trail("Lime green", Hitbox)
  so("http://roblox.com/asset/?id=320557413", Hitbox, 1, 1)
  for i = 0, 1, 0.16 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(0, 0, -1), 0.4)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(0.1, 0.1, 1), 0.4)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -0.2) * angles(0, -0.5, 1), 0.4)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.4, 0.3) * angles(0.8, 0, -0.5), 0.4)
    RH.C0 = clerp(RH.C0, cf(1, -1, -0.3) * angles(0, 2.3, 0) * angles(0, 0, -0.2), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0.3) * angles(0, -0.7, 0) * angles(0, 0, -0.1), 0.3)
    FakeHandleweld.C0 = clerp(FakeHandleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-30)), 0.5)
  end
  trailling = false
  attack = false
  Con1:disconnect()
end

MagicBlock = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = CreatePart(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  msh = CreateMesh("BlockMesh", prt, "", "", vt(), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 5)
  table.insert(Effects, {prt, "Block1", delay, x3, y3, z3})
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
  local EffectPart = CreatePart("Custom", workspace, "SmoothPlastic", 0, 1, BrickColor.new(Color), "Effect", vt(0, 0, 0))
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

MagicCylinder2 = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = CreatePart(3, Character, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.2, 0.2, 0.2))
  prt.Anchored = true
  prt.CFrame = cframe
  msh = CreateMesh("CylinderMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 5)
  Effects[#Effects + 1] = {prt, "Cylinder", delay, x3, y3, z3}
end

ShootCannon = function(asd, mindam, maxdam, x, y, z, mag)
  so("rbxassetid://263623156", asd, 0.5, 1)
  so("rbxassetid://263610152", asd, 0.5, 1)
  so("rbxassetid://263623139", asd, 0.5, 1)
  local MainPos = asd.Position
  local MainPos2 = mouse.Hit.p
  local MouseLook = cf((MainPos + MainPos2) / 2, MainPos2)
  num = 30
  coroutine.resume(coroutine.create(function()
    repeat
      wait()
      local hit, pos = rayCast(MainPos, MouseLook.lookVector, 10, Character)
      local mag = MainPos - pos.magnitude
      MagicCylinder2(BrickColor.new("Lime green"), CFrame.new((MainPos + pos) / 2, pos) * angles(1.57, 0, 0), 0.1, mag * 8, 0.1, 0.2, 0, 0.2, 0.03)
      MainPos = MainPos + MouseLook.lookVector * 10
      num = num - 1
      if hit ~= nil then
        num = 0
        local ref = CreatePart(3, workspace, "SmoothPlastic", 0, 1, BrickColor.new("Lime green"), "Reference", vt())
        ref.Anchored = true
        ref.CFrame = cf(pos)
        game.Debris:AddItem(ref, 3)
        MagniDamage(ref, hit, 1, mindam, maxdam, 1, "Normal")
        so("rbxassetid://263610039", ref, 1, 1)
        so("rbxassetid://263610111", ref, 1, 1)
        MagicBlock(BrickColor.new("Lime green"), cf(pos), 5, 5, 5, 0.5, 0.5, 0.5, 0.05)
        game:GetService("Debris"):AddItem(ref, 1)
        MagniDamage(ref, ref, 5, mindam, maxdam, 10, "Normal")
      end
    until num <= 0
  end
))
end

Spin = function()
  attack = true
  mana = mana
  for i = 0, 1, 0.16 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.4)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(90)), 0.4)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -0.2) * angles(0, 1.3, 1.3), 0.4)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.4, 0.3) * angles(-0.6, 0, -0.5), 0.4)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0.3) * angles(0, 0.7, 0) * angles(0, 0, 0), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, -0.3) * angles(0, -2.3, 0) * angles(0, 0, 0.2), 0.3)
    FakeHandleweld.C0 = clerp(FakeHandleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.5)
  end
  local Con1 = Hitbox.Touched:connect(function(hit)
    Damagefunc(Hitbox, hit, 10, 15, math.random(5, 10), "Normal", RootPart, 0.1, "Hit2", 1)
  end
)
  trail("Lime green", Hitbox)
  so("http://roblox.com/asset/?id=320557413", Hitbox, 1, 1)
  coroutine.resume(coroutine.create(function()
    for i = 0, 1, 0.05 do
      swait()
      if i >= 0.1 and i >= 0.3 and i <= 0.8 and i <= 0.5 then
        so("http://roblox.com/asset/?id=161006212", FakeHandle, 1, 0.7)
      end
    end
  end
))
  coroutine.resume(coroutine.create(function()
    for i = 0, 4, 0.2 do
      swait()
      FakeHandleweld.C0 = clerp(FakeHandleweld.C0, cf(0, 0, 0) * angles(math.rad(0 + 360 * i), math.rad(-60), math.rad(0)), 0.5)
    end
  end
))
  for i = 0, 1, 0.05 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.4)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.4)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -0.2) * angles(math.rad(0), math.rad(0), math.rad(100)), 0.4)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.4, 0.3) * angles(0.8, 0, -0.5), 0.4)
    RH.C0 = clerp(RH.C0, cf(1, -1, -0.3) * angles(0, 2.3, 0) * angles(0, 0, -0.2), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0.3) * angles(0, -0.7, 0) * angles(0, 0, -0.1), 0.3)
  end
  trailling = false
  attack = false
  Con1:disconnect()
end

Throw = function()
  attack = true
  mana = mana
  Humanoid.WalkSpeed = 10
  coroutine.resume(coroutine.create(function()
    for i = 0, 4, 0.2 do
      swait()
      FakeHandleweld2.C0 = clerp(FakeHandleweld.C0, cf(0, 0, 0) * angles(math.rad(360), math.rad(0), math.rad(0)), 0.5)
    end
  end
))
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.4)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.4)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -0.2) * angles(math.rad(0), math.rad(20), math.rad(100)), 0.4)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.4, 0.3) * angles(-0.6, 0, -0.5), 0.4)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0.3) * angles(0, 0.7, 0) * angles(0, 0, 0), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, -0.3) * angles(0, -2.3, 0) * angles(0, 0, 0.2), 0.3)
  end
  trail("Lime green", Hitbox)
  MagicCircle(BrickColor.new("Lime green"), FakeHandle2.CFrame, 5, 5, 5, 0.5, 0.5, 0.5, 0.06)
  so("http://roblox.com/asset/?id=320557413", Hitbox, 1, 1)
  do
    for i = 0, 1, 0.05 do
      swait()
      local FireColors = {"Lime green", "Really black"}
      local p = Instance.new("Part", Character.Torso)
      p.Transparency = 0.5
      p.BrickColor = BrickColor.new(FireColors[math.random(1, #FireColors)])
      p.FormFactor = "Custom"
      p.Size = Vector3.new(0.8, 0.8, 0.8)
      p.CanCollide = false
      p.Anchored = true
      p.Locked = true
      p.CFrame = FakeHandle2.CFrame * CFrame.Angles(math.random(0, 3), math.random(0, 3), math.random(0, 3))
      Instance.new("BlockMesh", p)
      coroutine.wrap(function()
    for i = 1, 10 do
      p.Mesh.Scale = p.Mesh.Scale - Vector3.new(0.1, 0.1, 0.1)
      p.CFrame = p.CFrame * CFrame.new(0, -0.15, 0)
      wait()
    end
  end
)()
      game:service("Debris"):AddItem(p, 2)
      if i == 0.2 then
        MagicCircle(BrickColor.new("Lime green"), FakeHandle2.CFrame, 15, 15, 15, 2, 2, 2, 0.2)
        FakeHandle2.Transparency = 1
        ShootCannon(LeftArm, 10, 15, 5, 5, 5, 3)
      end
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.4)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(90)), 0.4)
      RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -0.2) * angles(math.rad(0), math.rad(0), math.rad(100)), 0.4)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.4, 0.3) * angles(math.rad(0), math.rad(20), math.rad(-100)), 0.4)
      RH.C0 = clerp(RH.C0, cf(1, -1, -0.3) * angles(0, 2.3, 0) * angles(0, 0, -0.2), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0.3) * angles(0, -0.7, 0) * angles(0, 0, -0.1), 0.3)
    end
  end
  trailling = false
  FakeHandle2.Transparency = 0.5
  Humanoid.WalkSpeed = 16
  attack = false
end

VisionDash = function()
  attack = true
  Humanoid.WalkSpeed = 0
  mana = mana
  coroutine.resume(coroutine.create(function()
    for i = 0, 4, 0.2 do
      swait()
      FakeHandleweld2.C0 = clerp(FakeHandleweld.C0, cf(0, 0, 0) * angles(math.rad(360), math.rad(0), math.rad(0)), 0.5)
    end
  end
))
  for i = 0, 1, 0.05 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(90)), 0.4)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(30), math.rad(0), math.rad(-90)), 0.4)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -0.2) * angles(math.rad(20), math.rad(20), math.rad(100)), 0.4)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.4, 0.3) * angles(-0.6, 0, -0.5), 0.4)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0.3) * angles(0, 0.7, 0) * angles(0, 0, 0), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, -0.3) * angles(0, -2.3, 0) * angles(0, 0, 0.2), 0.3)
  end
  trail("Lime green", Hitbox)
  MagicCircle(BrickColor.new("Lime green"), Torso.CFrame, 35, 35, 35, 5, 5, 5, 0.06)
  MagicBlock(BrickColor.new("Really black"), Torso.CFrame, 25, 25, 25, 0.5, 0.5, 0.5, 0.06)
  MagicBlock(BrickColor.new("Lime green"), Torso.CFrame, 25, 25, 25, 0.5, 0.5, 0.5, 0.06)
  so("http://roblox.com/asset/?id=320557413", Hitbox, 1, 1)
  for i = 0, 1, 0.2 do
    swait()
    if i == 0.4 then
      MagicCircle(BrickColor.new("Lime green"), Torso.CFrame, 35, 35, 35, 5, 5, 5, 0.06)
      MagicBlock(BrickColor.new("Really black"), Torso.CFrame, 25, 25, 25, 0.5, 0.5, 0.5, 0.06)
      so("http://roblox.com/asset/?id=233856146", Torso, 1, 0.8)
      MagniDamage(Torso, Torso, 20, 10, 20, 5, "Normal")
      MagicBlock(BrickColor.new("Lime green"), Torso.CFrame, 25, 25, 25, 0.5, 0.5, 0.5, 0.06)
    end
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(10, -5, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.4)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(90)), 0.4)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -0.2) * angles(math.rad(0), math.rad(0), math.rad(100)), 0.4)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.4, 0.3) * angles(math.rad(0), math.rad(20), math.rad(-100)), 0.4)
    RH.C0 = clerp(RH.C0, cf(1, -1, -0.3) * angles(0, 2.3, 0) * angles(0, 0, -0.2), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0.3) * angles(0, -0.7, 0) * angles(0, 0, -0.1), 0.3)
  end
  for i = 0, 1, 0.2 do
    swait()
    if i == 0.4 then
      MagicCircle(BrickColor.new("Lime green"), Torso.CFrame, 35, 35, 35, 5, 5, 5, 0.06)
      MagicBlock(BrickColor.new("Really black"), Torso.CFrame, 25, 25, 25, 0.5, 0.5, 0.5, 0.06)
      so("http://roblox.com/asset/?id=233856146", Torso, 1, 0.8)
      MagniDamage(Torso, Torso, 20, 10, 20, 5, "Normal")
      MagicBlock(BrickColor.new("Lime green"), Torso.CFrame, 25, 25, 25, 0.5, 0.5, 0.5, 0.06)
    end
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(-10, -10, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.4)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(90)), 0.4)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -0.2) * angles(math.rad(0), math.rad(50), math.rad(100)), 0.4)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.4, 0.3) * angles(math.rad(0), math.rad(20), math.rad(-100)), 0.4)
    RH.C0 = clerp(RH.C0, cf(1, -1, -0.3) * angles(0, 2.3, 0) * angles(0, 0, -0.2), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0.3) * angles(0, -0.7, 0) * angles(0, 0, -0.1), 0.3)
  end
  for i = 0, 1, 0.2 do
    swait()
    if i == 0.4 then
      MagicCircle(BrickColor.new("Lime green"), Torso.CFrame, 35, 35, 35, 5, 5, 5, 0.06)
      MagniDamage(Torso, Torso, 20, 10, 20, 5, "Normal")
      so("http://roblox.com/asset/?id=233856146", Torso, 1, 0.8)
      MagicBlock(BrickColor.new("Really black"), Torso.CFrame, 25, 25, 25, 0.5, 0.5, 0.5, 0.06)
      MagicBlock(BrickColor.new("Lime green"), Torso.CFrame, 25, 25, 25, 0.5, 0.5, 0.5, 0.06)
    end
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(10, -15, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.4)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(90)), 0.4)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -0.2) * angles(math.rad(0), math.rad(0), math.rad(100)), 0.4)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.4, 0.3) * angles(math.rad(0), math.rad(20), math.rad(-100)), 0.4)
    RH.C0 = clerp(RH.C0, cf(1, -1, -0.3) * angles(0, 2.3, 0) * angles(0, 0, -0.2), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0.3) * angles(0, -0.7, 0) * angles(0, 0, -0.1), 0.3)
  end
  RootPart.CFrame = RootPart.CFrame * cf(0, 0, -15)
  Humanoid.WalkSpeed = 16
  trailling = false
  FakeHandle2.Transparency = 0.5
  attack = false
end

Illusion = function()
  attack = true
  mana = mana
  hitdebounce = false
  local Con1 = Hitbox.Touched:connect(function(hit)
    local ht = hit.Parent
    local hum1 = ht:FindFirstChild("Humanoid")
    if hum1 ~= nil and hitdebounce == false then
      hitdebounce = true
      mana = mana
      Humanoid.WalkSpeed = 0
      trail("Lime green", Hitbox)
      MagicCircle(BrickColor.new("Lime green"), Torso.CFrame, 35, 35, 35, 5, 5, 5, 0.06)
      MagicBlock(BrickColor.new("Really black"), Torso.CFrame, 25, 25, 25, 0.5, 0.5, 0.5, 0.06)
      MagicBlock(BrickColor.new("Lime green"), Torso.CFrame, 25, 25, 25, 0.5, 0.5, 0.5, 0.06)
      so("http://roblox.com/asset/?id=233856146", Torso, 1, 0.6)
      so("http://roblox.com/asset/?id=320557413", Hitbox, 1, 1)
      for i = 0, 1, 0.2 do
        swait()
        if i == 0.4 then
          MagniDamage(Torso, Torso, 10, 5, 10, 5, "Normal")
          so("http://roblox.com/asset/?id=233856146", Torso, 1, 0.6)
          MagicCircle(BrickColor.new("Lime green"), Torso.CFrame, 35, 35, 35, 5, 5, 5, 0.06)
          MagicBlock(BrickColor.new("Really black"), Torso.CFrame, 25, 25, 25, 0.5, 0.5, 0.5, 0.06)
          MagicBlock(BrickColor.new("Lime green"), Torso.CFrame, 25, 25, 25, 0.5, 0.5, 0.5, 0.06)
        end
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(10, -10, 0) * angles(math.rad(0), math.rad(0), math.rad(30)), 0.4)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(90)), 0.4)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -0.2) * angles(math.rad(0), math.rad(0), math.rad(100)), 0.4)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.4, 0.3) * angles(math.rad(0), math.rad(20), math.rad(-100)), 0.4)
        RH.C0 = clerp(RH.C0, cf(1, -1, -0.3) * angles(0, 2.3, 0) * angles(0, 0, -0.2), 0.3)
        LH.C0 = clerp(LH.C0, cf(-1, -1, 0.3) * angles(0, -0.7, 0) * angles(0, 0, -0.1), 0.3)
      end
      for i = 0, 1, 0.2 do
        swait()
        if i == 0.4 then
          MagniDamage(Torso, Torso, 10, 5, 10, 5, "Normal")
          so("http://roblox.com/asset/?id=233856146", Torso, 1, 0.6)
          MagicCircle(BrickColor.new("Lime green"), Torso.CFrame, 35, 35, 35, 5, 5, 5, 0.06)
          MagicBlock(BrickColor.new("Really black"), Torso.CFrame, 25, 25, 25, 0.5, 0.5, 0.5, 0.06)
          MagicBlock(BrickColor.new("Lime green"), Torso.CFrame, 25, 25, 25, 0.5, 0.5, 0.5, 0.06)
        end
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(10, 10, 0) * angles(math.rad(0), math.rad(0), math.rad(-30)), 0.4)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(90)), 0.4)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -0.2) * angles(math.rad(0), math.rad(50), math.rad(100)), 0.4)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.4, 0.3) * angles(math.rad(0), math.rad(20), math.rad(-100)), 0.4)
        RH.C0 = clerp(RH.C0, cf(1, -1, -0.3) * angles(0, 2.3, 0) * angles(0, 0, -0.2), 0.3)
        LH.C0 = clerp(LH.C0, cf(-1, -1, 0.3) * angles(0, -0.7, 0) * angles(0, 0, -0.1), 0.3)
      end
      for i = 0, 1, 0.2 do
        swait()
        if i == 0.4 then
          MagniDamage(Torso, Torso, 10, 5, 10, 5, "Normal")
          MagicCircle(BrickColor.new("Lime green"), Torso.CFrame, 35, 35, 35, 5, 5, 5, 0.06)
          so("http://roblox.com/asset/?id=233856146", Torso, 1, 0.6)
          MagicBlock(BrickColor.new("Really black"), Torso.CFrame, 25, 25, 25, 0.5, 0.5, 0.5, 0.06)
          MagicBlock(BrickColor.new("Lime green"), Torso.CFrame, 25, 25, 25, 0.5, 0.5, 0.5, 0.06)
        end
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(-15, -7.5, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.4)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(90)), 0.4)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -0.2) * angles(math.rad(0), math.rad(0), math.rad(100)), 0.4)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.4, 0.3) * angles(math.rad(0), math.rad(20), math.rad(-100)), 0.4)
        RH.C0 = clerp(RH.C0, cf(1, -1, -0.3) * angles(0, 2.3, 0) * angles(0, 0, -0.2), 0.3)
        LH.C0 = clerp(LH.C0, cf(-1, -1, 0.3) * angles(0, -0.7, 0) * angles(0, 0, -0.1), 0.3)
      end
      for i = 0, 1, 0.2 do
        swait()
        if i == 0.4 then
          MagniDamage(Torso, Torso, 10, 5, 10, 5, "Normal")
          MagicCircle(BrickColor.new("Lime green"), Torso.CFrame, 35, 35, 35, 5, 5, 5, 0.06)
          so("http://roblox.com/asset/?id=233856146", Torso, 1, 0.6)
          MagicBlock(BrickColor.new("Really black"), Torso.CFrame, 25, 25, 25, 0.5, 0.5, 0.5, 0.06)
          MagicBlock(BrickColor.new("Lime green"), Torso.CFrame, 25, 25, 25, 0.5, 0.5, 0.5, 0.06)
        end
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(15, -7.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.4)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(90)), 0.4)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -0.2) * angles(math.rad(0), math.rad(0), math.rad(100)), 0.4)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.4, 0.3) * angles(math.rad(0), math.rad(20), math.rad(-100)), 0.4)
        RH.C0 = clerp(RH.C0, cf(1, -1, -0.3) * angles(0, 2.3, 0) * angles(0, 0, -0.2), 0.3)
        LH.C0 = clerp(LH.C0, cf(-1, -1, 0.3) * angles(0, -0.7, 0) * angles(0, 0, -0.1), 0.3)
      end
      for i = 0, 1, 0.2 do
        swait()
        if i == 0.4 then
          MagniDamage(Torso, Torso, 10, 5, 10, 5, "Normal")
          MagicCircle(BrickColor.new("Lime green"), Torso.CFrame, 35, 35, 35, 5, 5, 5, 0.06)
          so("http://roblox.com/asset/?id=233856146", Torso, 1, 0.6)
          MagicBlock(BrickColor.new("Really black"), Torso.CFrame, 25, 25, 25, 0.5, 0.5, 0.5, 0.06)
          MagicBlock(BrickColor.new("Lime green"), Torso.CFrame, 25, 25, 25, 0.5, 0.5, 0.5, 0.06)
        end
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(-10, 10, 0) * angles(math.rad(0), math.rad(0), math.rad(50)), 0.4)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(90)), 0.4)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -0.2) * angles(math.rad(0), math.rad(0), math.rad(100)), 0.4)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.4, 0.3) * angles(math.rad(0), math.rad(20), math.rad(-100)), 0.4)
        RH.C0 = clerp(RH.C0, cf(1, -1, -0.3) * angles(0, 2.3, 0) * angles(0, 0, -0.2), 0.3)
        LH.C0 = clerp(LH.C0, cf(-1, -1, 0.3) * angles(0, -0.7, 0) * angles(0, 0, -0.1), 0.3)
      end
    end
  end
)
  for i = 0, 1, 0.05 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(90)), 0.4)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(30), math.rad(0), math.rad(-90)), 0.4)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -0.2) * angles(math.rad(20), math.rad(20), math.rad(100)), 0.4)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.4, 0.3) * angles(-0.6, 0, -0.5), 0.4)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0.3) * angles(0, 0.7, 0) * angles(0, 0, 0), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, -0.3) * angles(0, -2.3, 0) * angles(0, 0, 0.2), 0.3)
  end
  Humanoid.WalkSpeed = 16
  trailling = false
  FakeHandle2.Transparency = 0.5
  attack = false
  Con1:disconnect()
end

attacktwo = function()
  attack = true
  for i = 0, 1, 0.16 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(0, 0, -1), 0.4)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(0.1, 0.1, 1), 0.4)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -0.2) * angles(0, -0.5, 1), 0.4)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.4, 0.3) * angles(0.8, 0, -0.5), 0.4)
    RH.C0 = clerp(RH.C0, cf(1, -1, -0.3) * angles(0, 2.3, 0) * angles(0, 0, -0.2), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0.3) * angles(0, -0.7, 0) * angles(0, 0, -0.1), 0.3)
    FakeHandleweld.C0 = clerp(FakeHandleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-30)), 0.5)
  end
  so("http://roblox.com/asset/?id=320557413", Hitbox, 1, 1.2)
  local Con1 = Hitbox.Touched:connect(function(hit)
    Damagefunc(Hitbox, hit, 10, 15, math.random(5, 10), "Normal", RootPart, 0.1, "Hit2", 1)
  end
)
  trail("Lime green", Hitbox)
  so("http://roblox.com/asset/?id=320557413", Hitbox, 1, 1)
  for i = 0, 1, 0.16 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(0, 0, 1.5), 0.4)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(-0.1, -0.1, -1.5), 0.4)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -0.2) * angles(0, 1.3, 2), 0.4)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.4, 0.3) * angles(-0.6, 0, -0.5), 0.4)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0.3) * angles(0, 0.7, 0) * angles(0, 0, 0), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, -0.3) * angles(0, -2.3, 0) * angles(0, 0, 0.2), 0.3)
    FakeHandleweld.C0 = clerp(FakeHandleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(180), math.rad(0)), 1)
  end
  trailling = false
  attack = false
  Con1:disconnect()
end

attackthree = function()
  attack = true
  for i = 0, 1, 0.16 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(0, 0, -1), 0.4)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(0, 0, 1), 0.4)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -0.2) * angles(1.6, -1.4, 0) * angles(1, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.4, -0.2) * angles(0.7, 0, -0.5), 0.4)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(0, 1.6, 0) * angles(0, 0.5, 0), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(0, -1.6, 0) * angles(0, 0.5, -0.2), 0.3)
    FakeHandleweld.C0 = clerp(FakeHandleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(50)), 0.5)
  end
  local Con1 = Hitbox.Touched:connect(function(hit)
    Damagefunc(Hitbox, hit, 10, 15, math.random(5, 10), "Normal", RootPart, 0.1, "Hit2", 1)
  end
)
  trail("Lime green", Hitbox)
  so("http://roblox.com/asset/?id=320557413", Hitbox, 1, 1.2)
  for i = 0, 1, 0.16 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(0, 0, 1), 0.4)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(0, 0, -1), 0.4)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.6) * angles(1.6, -1.4, 0) * angles(-1, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.4, -0.2) * angles(-0.7, 0, -0.3), 0.4)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(0, 1.6, 0) * angles(0, -0.5, 0), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(0, -1.6, 0) * angles(0, -0.5, 0.2), 0.3)
    FakeHandleweld.C0 = clerp(FakeHandleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-50)), 0.5)
  end
  trailling = false
  attack = false
  Con1:disconnect()
end

attackfour = function()
  attack = true
  for i = 0, 1, 0.16 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(0, 0, 1), 0.4)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(0, 0, -1), 0.4)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.6) * angles(1.6, -1.4, 0) * angles(-1, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.4, -0.2) * angles(-0.7, 0, -0.3), 0.4)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(0, 1.6, 0) * angles(0, -0.5, 0), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(0, -1.6, 0) * angles(0, -0.5, 0.2), 0.3)
    FakeHandleweld.C0 = clerp(FakeHandleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-50)), 0.5)
  end
  trail("Lime green", Hitbox)
  so("http://roblox.com/asset/?id=320557413", Hitbox, 1, 1)
  so("http://roblox.com/asset/?id=320557413", Hitbox, 1, 1)
  local Con1 = Hitbox.Touched:connect(function(hit)
    Damagefunc(Hitbox, hit, 10, 15, math.random(5, 10), "Normal", RootPart, 0.1, "Hit2", 1)
  end
)
  for i = 0, 1, 0.16 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(0, 0, -1), 0.4)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(0.1, 0.1, 1), 0.4)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(1.6, -1.4, 0) * angles(2, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.4, 0.4, -0.3) * angles(0.8, 0, -0.5), 0.4)
    RH.C0 = clerp(RH.C0, cf(1, -1, -0.3) * angles(0, 2.3, 0) * angles(0, 0, -0.2), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0.3) * angles(0, -0.7, 0) * angles(0, 0, -0.1), 0.3)
    FakeHandleweld.C0 = clerp(FakeHandleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-30)), 0.5)
  end
  trailling = false
  attack = false
  Con1:disconnect()
end

MagicCircle = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = CreatePart(3, workspace, "Neon", 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = CreateMesh("SpecialMesh", prt, "Sphere", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 2)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3})
end

ob1u = function()
end

ob1d = function()
  if attack == false and attacktype == 1 then
    attacktype = 2
    attackone()
  else
    if attack == false and attacktype == 2 then
      attacktype = 3
      attacktwo()
    else
      if attack == false and attacktype == 3 then
        attacktype = 4
        attackthree()
      else
        if attack == false and attacktype == 4 then
          attacktype = 1
          attackfour()
        end
      end
    end
  end
end

key = function(k)
  k = k:lower()
  if attack == false and k == "z" and mana >= 15 and zenabled == true then
    zenabled = false
    coroutine.resume(coroutine.create(function()
    for i = 1, 0, -0.01 do
      swait()
      fenframe1a.Size = UDim2.new(0.05 * i, 0, 0.1, 0)
    end
    zenabled = true
    fenframe1a.Size = UDim2.new(0, 0, 0.1, 0)
  end
))
    Spin()
  else
    if attack == false and k == "x" and mana >= 10 and xenabled == true then
      xenabled = false
      coroutine.resume(coroutine.create(function()
    for i = 1, 0, -0.1 do
      swait()
      fenframe2a.Size = UDim2.new(0.05 * i, 0, 0.1, 0)
    end
    xenabled = true
    fenframe2a.Size = UDim2.new(0, 0, 0.1, 0)
  end
))
      Throw()
    else
      if attack == false and k == "c" and mana >= 20 and cenabled == true then
        cenabled = false
        coroutine.resume(coroutine.create(function()
    for i = 1, 0, -0.01 do
      swait()
      fenframe3a.Size = UDim2.new(0.05 * i, 0, 0.1, 0)
    end
    cenabled = true
    fenframe3a.Size = UDim2.new(0, 0, 0.1, 0)
  end
))
        VisionDash()
      else
        if attack == false and k == "v" and mana >= 45 and venabled == true then
          venabled = false
          coroutine.resume(coroutine.create(function()
    for i = 1, 0, -0.001 do
      swait()
      fenframe4a.Size = UDim2.new(0.05 * i, 0, 0.1, 0)
    end
    venabled = true
    fenframe4a.Size = UDim2.new(0, 0, 0.1, 0)
  end
))
          Illusion()
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
local sine = 0
local change = 1
local val = 0
local mananum = 0
while 1 do
  while 1 do
    while 1 do
      pwait()
      sine = sine + change
      local torvel = RootPart.Velocity * Vector3.new(1, 0, 1).magnitude
      local velderp = RootPart.Velocity.y
      hitfloor = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 4, Character)
      if equipped == true or equipped == false then
        if attack == false then
          idle = idle + 1
        else
          idle = 0
        end
        if ((500 <= idle and attack ~= false) or 1 < RootPart.Velocity.y) and hitfloor == nil then
          Anim = "Jump"
          if attack == false then
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(0.5, 0, 0), 0.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(0.3, 0, 0), 0.3)
            RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(0.7, 0, 0.3), 0.3)
            LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(-0.6, 0, -0.5), 0.3)
            RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(0, 1.6, 0) * angles(-0.1, 0, 0.3), 0.3)
            LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(0, -1.6, 0) * angles(-0.1, 0, -0.3), 0.3)
            FakeHandleweld.C0 = clerp(FakeHandleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(180), math.rad(200)), 0.3)
            Handleweld.C0 = clerp(Handleweld.C0, cf(0, 0, 0) * angles(0, 0, 0), 1)
          end
        else
          if RootPart.Velocity.y < -1 and hitfloor == nil then
            Anim = "Fall"
            if attack == false then
              RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(0.3, 0, 0), 0.3)
              Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(0.2, 0, 0), 0.3)
              RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(0.2, 0, 0.3), 0.3)
              LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(-1, 0, -0.6), 0.3)
              RH.C0 = clerp(RH.C0, cf(1, -0.8, -0.5) * angles(0, 1.6, 0) * angles(0, 0, 0.3), 0.3)
              LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(0, -1.6, 0) * angles(-0.1, 0, 0.5), 0.3)
              FakeHandleweld.C0 = clerp(FakeHandleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(180), math.rad(200)), 0.3)
              Handleweld.C0 = clerp(Handleweld.C0, cf(0, 0, 0) * angles(0, 0, 0), 1)
            end
          else
            if torvel.x < 1 and torvel.z < 1 and hitfloor ~= nil then
              Anim = "Idle"
              if attack == false then
                RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * angles(0, 0, 0.5), 0.3)
                Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(0.1, -0.1, -0.5), 0.3)
                RW.C0 = clerp(RW.C0, CFrame.new(1.4, 0.6, -0.2) * angles(0.5, 0.3, 0.4), 0.3)
                LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.4, 0.3) * angles(-0.6, 0, 0.3), 0.3)
                RH.C0 = clerp(RH.C0, cf(1, -0.8, -0.3) * angles(0, 1.3, 0), 0.3)
                LH.C0 = clerp(LH.C0, cf(-1, -0.8, 0) * angles(-0.5, -1.4, 0), 0.3)
                FakeHandleweld.C0 = clerp(FakeHandleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(180), math.rad(230)), 0.3)
                FakeHandleweld2.C0 = clerp(FakeHandleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
                Handleweld.C0 = clerp(Handleweld.C0, cf(0, 0, 0) * angles(0, 0, 0), 1)
              end
            else
              if 2 < torvel.x and torvel.z > 2 and hitfloor ~= nil then
                Anim = "Walk"
                if attack == false then
                  change = 3
                  RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * angles(0.5, 0, 0), 0.3)
                  Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(-0.3, 0, 0), 0.3)
                  RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(0.6, 0, 0.2), 0.3)
                  LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(-0.5, 0, -0.3), 0.3)
                  RH.C0 = clerp(RH.C0, cf(1, -0.8, 0) * angles(0, 1.6, 0) * angles(-0.06, 0, 0.4), 0.3)
                  LH.C0 = clerp(LH.C0, cf(-1, -0.8, 0) * angles(0, -1.6, 0) * angles(-0.06, 0, -0.4), 0.3)
                  FakeHandleweld.C0 = clerp(FakeHandleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(180), math.rad(200)), 0.3)
                  Handleweld.C0 = clerp(Handleweld.C0, cf(0, 0, 0) * angles(0, 0, 0), 1)
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
                  Thing[1].CFrame = Thing[1].CFrame * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
                  Mesh = Thing[1].Mesh
                  Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
                  Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                else
                  if Thing[2] == "Cylinder" then
                    Mesh = Thing[1].Mesh
                    Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
                    Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                  else
                    if Thing[2] == "Blood" then
                      Mesh = Thing[7]
                      Thing[1].CFrame = Thing[1].CFrame * cf(0, 0.5, 0)
                      Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
                      Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                    else
                      if Thing[2] == "Elec" then
                        Mesh = Thing[1].Mesh
                        Mesh.Scale = Mesh.Scale + vt(Thing[7], Thing[8], Thing[9])
                        Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                      else
                        if Thing[2] == "Disappear" then
                          Thing[1].Transparency = Thing[1].Transparency + Thing[3]
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
        fenbarmana4.Text = "[Power]  <{[  " .. mana .. "  ]}> [Power]"
        if 100 <= mana then
          mana = 100
        end
      end
    end
    if attack == false then
      if mananum <= 8 then
        mananum = mananum + 1
      end
    end
  end
  mananum = 0
  mana = mana + 1
end

