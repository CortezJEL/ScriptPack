Player = game:GetService("Players").LocalPlayer
--FIXED WITH TRIGECTORY's CheatSheet
cheatsheetplr = game.Players.LocalPlayer
i = Instance.new("NumberValue", cheatsheetplr )
i.Name = "FPSCH"
Bin = Instance.new("HopperBin", cheatsheetplr .Backpack)
script.Parent = Bin
local cf = CFrame.new
local RbxUtility = LoadLibrary("RbxUtility")
local Create = RbxUtility.Create
RW = Create("Weld")({Name = "Right Shoulder", Part0 = Tor, C0 = CFrame.new(1.5, 0.5, 0), C1 = CFrame.new(0, 0.5, 0), Part1 = RA, Parent = Tor})
LW = Create("Weld")({Name = "Left Shoulder", Part0 = Tor, C0 = CFrame.new(-1.5, 0.5, 0), C1 = CFrame.new(0, 0.5, 0), Part1 = LA, Parent = Tor})
Character = Player.Character
PlayerGui = Player.PlayerGui
Backpack = Player.Backpack
Torso = Character.Torso
Root = Character.HumanoidRootPart
Head = Character.Head
LeftArm = Character["Left Arm"]
LeftLeg = Character["Left Leg"]
RightArm = Character["Right Arm"]
RightLeg = Character["Right Leg"]
player = nil
RSH = nil
RW = Instance.new("Weld")
RW.Name = "Right Shoulder"
LW.Name = "Left Shoulder"
LH = Torso["Left Hip"]
RH = Torso["Right Hip"]
NK = Torso.Neck
ZHold = false
SK1Hold = false
Infusion = false
wh = false
movehold = false
dashing = false
skilluse = false
attack = false
EX01 = false
EX02 = false
EX022 = false
SK2EX1 = false
SK2EX2 = false
Mana = Instance.new("IntConstrainedValue")
Mana.MaxValue = 100
Mana.MinValue = 0
Mana.Value = 100
Mana.Parent = Character
Blood = Instance.new("IntConstrainedValue")
Blood.MaxValue = 50
Blood.MinValue = 0
Blood.Value = 0
Atik = Instance.new("IntConstrainedValue")
Atik.MaxValue = 30
Atik.MinValue = 0
Atik.Value = 0
MMouse = nil
combo = {}
rwait = function()
  game:service("RunService").RenderStepped:wait()
end

Weld = function(Part1, Part0, CFrame0, CFrame1, skippos)
  if not skippos then
    Part1.Position = Part0.Position
  end
  local we = Instance.new("Weld", Part1)
  we.Part1 = Part1
  we.Part0 = Part0
  if not CFrame0 then
    we.C0 = CFrame.new()
    if not CFrame1 then
      we.C1 = CFrame.new()
      Instance.new("BoolValue", we).Name = "Cancel"
      local c0o = Instance.new("CFrameValue", we)
      c0o.Name = "c0o"
      c0o.Value = we.C0
      local c1o = Instance.new("CFrameValue", we)
      c1o.Name = "c1o"
      c1o.Value = we.C1
      return we
    end
  end
end

Co = function(fun)
  Delay(0, fun)
end

CheckI = function(Item, Blacklist, Specific)
  for _,v in pairs(Item:children()) do
    if not Specific and (v:IsA(Blacklist) or v.Name:match(Blacklist)) then
      v:Destroy()
    end
    if v:IsA(Blacklist) or v.Name == Blacklist then
      v:Destroy()
    end
  end
end

Tween = function(weld, c0, c1, dur, canc)
  Co(function()
    if not weld:FindFirstChild("Cancel") then
      Instance.new("BoolValue", weld).Name = "Cancel"
    end
    if canc then
      weld.Cancel.Value = true
      rwait()
      weld.Cancel.Value = false
    end
    local c0sp, c0sa, c0p, c0a, c1sp, c1sa, c1p, c1a = nil, nil, nil, nil, nil, nil, nil, nil
    if c0 then
      c0sp = weld.C0.p
      c0sa = Vector3.new(weld.C0:toEulerAnglesXYZ())
      c0p = c0.p - c0sp
      c0a = Vector3.new(c0:toEulerAnglesXYZ()) - c0sa
    end
    if c1 then
      c1sp = weld.C1.p
      c1sa = Vector3.new(weld.C1:toEulerAnglesXYZ())
      c1p = c1.p - c1sp
      c1a = Vector3.new(c1:toEulerAnglesXYZ()) - c1sa
    end
    for ni = 0, 1, 0.016666666666667 / dur do
      if not weld.Cancel.Value then
        if c0 then
          weld.C0 = CFrame.new(c0sp.x + c0p.x * ni, c0sp.y + c0p.y * ni, c0sp.z + c0p.z * ni) * CFrame.Angles(c0sa.x + c0a.x * ni, c0sa.y + c0a.y * ni, c0sa.z + c0a.z * ni)
        end
        if c1 then
          weld.C1 = CFrame.new(c1sp.x + c1p.x * ni, c1sp.y + c1p.y * ni, c1sp.z + c1p.z * ni) * CFrame.Angles(c1sa.x + c1a.x * ni, c1sa.y + c1a.y * ni, c1sa.z + c1a.z * ni)
        end
        rwait()
      else
        return 
      end
    end
    if c0 ~= nil then
      weld.C0 = c0
    end
    if c1 ~= nil then
      weld.C1 = c1
    end
  end
)
end

if Character:findFirstChild("Moby", true) ~= nil then
  Character:findFirstChild("Moby", true).Parent = nil
end
if Character:findFirstChild("Dalevila", true) ~= nil then
  Character:findFirstChild("Dalevila", true).Parent = nil
end
if Character:findFirstChild("Remy", true) ~= nil then
  Character:findFirstChild("Remy", true).Parent = nil
end
if Player.PlayerGui:findFirstChild("Eve Battle HUD", true) ~= nil then
  Player.PlayerGui:findFirstChild("Eve Battle HUD", true).Parent = nil
end
if Character:findFirstChild("Effectuals", true) ~= nil then
  Character:findFirstChild("Effectuals", true).Parent = nil
end
Holde = Instance.new("Part", Character)
Holde.Name = "Holde"
Holde.FormFactor = 3
Holde.CanCollide = false
Holde.Size = Vector3.new(0.2, 0.2, 0.2)
Holde.Transparency = 1
HandR = Instance.new("Part", Character)
HandR.Name = "Holde"
HandR.FormFactor = 3
HandR.CanCollide = false
HandR.Size = Vector3.new(0.2, 0.2, 0.2)
HandR.Transparency = 1
HNR = Weld(RightArm, HandR, CFrame.new(0, 0, 1) * CFrame.fromEulerAnglesXYZ(math.pi / 2, 0, 0), CFrame.new(0, 0, 0), true)
HandL = Instance.new("Part", Character)
HandL.Name = "Holde"
HandL.FormFactor = 3
HandL.CanCollide = false
HandL.Size = Vector3.new(0.2, 0.2, 0.2)
HandL.Transparency = 1
HNL = Weld(LeftArm, HandL, CFrame.new(0, 0, 1) * CFrame.fromEulerAnglesXYZ(math.pi / 2, 0, 0), CFrame.new(0, 0, 0), true)
Effects = Instance.new("Model", Character)
Effects.Name = "Effectuals"
c20 = Instance.new("Model")
c20.Name = "Stuff"
c20.Parent = Effects
cl00 = Instance.new("Model")
cl00.Name = "Stuff"
cl00.Parent = Effects
cHR = Instance.new("Part", cl00)
cHR.FormFactor = 3
cHR.Name = "Root"
cHR.Size = Vector3.new(2, 2, 1)
cHR.BrickColor = BrickColor.new("Institutional white")
cHR.CanCollide = false
cHR.Transparency = 1
cHR.Material = "SmoothPlastic"
cHR.BottomSurface = "Smooth"
cHR.TopSurface = "Smooth"
cHL = Instance.new("Part", cl00)
cHL.FormFactor = 3
cHL.Name = "H"
cHL.Transparency = 1
cHL.Size = Vector3.new(1, 1, 1)
cHL.BrickColor = BrickColor.new("Institutional white")
cHL.CanCollide = false
cHL.Material = "SmoothPlastic"
cHL.BottomSurface = "Smooth"
cHL.TopSurface = "Smooth"
cTL = Instance.new("Part", cl00)
cTL.Name = "clTorso"
cTL.FormFactor = 3
cTL.Name = "T"
cTL.Transparency = 1
cTL.Size = Vector3.new(2, 2, 1)
cTL.BrickColor = BrickColor.new("Institutional white")
cTL.CanCollide = false
cTL.Material = "SmoothPlastic"
cTL.BottomSurface = "Smooth"
cTL.TopSurface = "Smooth"
cRA = Instance.new("Part", cl00)
cRA.FormFactor = 3
cRA.Name = "RA"
cRA.Transparency = 1
cRA.Size = Vector3.new(1, 2, 1)
cRA.BrickColor = BrickColor.new("Institutional white")
cRA.CanCollide = false
cRA.Material = "SmoothPlastic"
cRA.BottomSurface = "Smooth"
cRA.TopSurface = "Smooth"
cRL = Instance.new("Part", cl00)
cRL.FormFactor = 3
cRL.Name = "RL"
cRL.Transparency = 1
cRL.Size = Vector3.new(1, 2, 1)
cRL.BrickColor = BrickColor.new("Institutional white")
cRL.CanCollide = false
cRL.Material = "SmoothPlastic"
cRL.BottomSurface = "Smooth"
cRL.TopSurface = "Smooth"
cLA = Instance.new("Part", cl00)
cLA.FormFactor = 3
cLA.Name = "LA"
cLA.Transparency = 1
cLA.Size = Vector3.new(1, 2, 1)
cLA.BrickColor = BrickColor.new("Institutional white")
cLA.CanCollide = false
cLA.Material = "SmoothPlastic"
cLA.BottomSurface = "Smooth"
cLA.TopSurface = "Smooth"
cLL = Instance.new("Part", cl00)
cLL.FormFactor = 3
cLL.Name = "LL"
cLL.Transparency = 1
cLL.Size = Vector3.new(1, 2, 1)
cLL.BrickColor = BrickColor.new("Institutional white")
cLL.CanCollide = false
cLL.Material = "SmoothPlastic"
cLL.BottomSurface = "Smooth"
cLL.TopSurface = "Smooth"
ccl = Instance.new("PointLight", cTL)
ccl.Color = Color3.new(0.6078431372549, 0.6078431372549, 1)
cl00:BreakJoints()
for _,v in pairs(cl00:children()) do
  if v.className == "Part" then
    v.Material = "SmoothPlastic"
    v.BackSurface = "SmoothNoOutlines"
    v.BottomSurface = "SmoothNoOutlines"
    v.FrontSurface = "SmoothNoOutlines"
    v.LeftSurface = "SmoothNoOutlines"
    v.RightSurface = "SmoothNoOutlines"
    v.TopSurface = "SmoothNoOutlines"
  end
end
HTH = Weld(Holde, Root, CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), true)
cHT = Weld(cHR, Holde, CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), true)
cHT2 = Weld(cTL, cHR, CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), true)
cNK2 = Weld(cHL, cTL, CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), CFrame.new(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), true)
cRW = Weld(cRA, cTL, CFrame.new(1, 0.5, 0) * CFrame.fromAxisAngle(Vector3.new(0, -1, 0), -math.pi / 2) * CFrame.fromEulerAnglesXYZ(-math.pi / 18, 0, 0), CFrame.new(-0.5, 0.5, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), math.pi / 2), true)
cRW2 = Weld(cRL, cTL, CFrame.new(1, -1, 0) * CFrame.fromAxisAngle(Vector3.new(0, -1, 0), -math.pi / 2), CFrame.new(0.5, 1, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), math.pi / 2), true)
cLW = Weld(cLA, cTL, CFrame.new(-1, 0.5, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi / 2) * CFrame.fromEulerAnglesXYZ(-math.pi / 18, 0, 0), CFrame.new(0.5, 0.5, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi / 2), true)
cLW2 = Weld(cLL, cTL, CFrame.new(-1, -1, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi / 2), CFrame.new(-0.5, 1, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi / 2), true)
Holder = Instance.new("Part", Character)
Holder.Name = "Holder"
Holder.FormFactor = 3
Holder.CanCollide = false
Holder.Size = Vector3.new(0.2, 0.2, 0.2)
Holder.Transparency = 1
HRW = Weld(Root, Holder, CFrame.new(0, 0, 0), CFrame.new(0, 0, 0), true)
HandL = Instance.new("Part", Character)
HandL.Name = "Holder"
HandL.FormFactor = 3
HandL.CanCollide = false
HandL.Size = Vector3.new(0.2, 0.2, 0.2)
HandL.Transparency = 1
HNL = Weld(LeftArm, HandL, CFrame.new(0, 0, 1) * CFrame.fromEulerAnglesXYZ(math.pi / 2, 0, 0), CFrame.new(0, 0, 0), true)
HandR = Instance.new("Part", Character)
HandR.Name = "Holder"
HandR.FormFactor = 3
HandR.CanCollide = false
HandR.Size = Vector3.new(0.2, 0.2, 0.2)
HandR.Transparency = 1
HNR = Weld(RightArm, HandR, CFrame.new(0, 0, 1) * CFrame.fromEulerAnglesXYZ(math.pi / 2, 0, 0), CFrame.new(0, 0, 0), true)
Effects = Instance.new("Model", Character)
Effects.Name = "Effectuals"
local Staff = Instance.new("Model")
Staff.Name = "Dalevila"
Staff.Parent = Character
local msh1 = Instance.new("CylinderMesh")
msh1.Scale = Vector3.new(1, 1, 1)
local msh2 = Instance.new("CylinderMesh")
msh2.Scale = Vector3.new(1, 1, 1)
local msh3 = Instance.new("SpecialMesh")
msh3.Scale = Vector3.new(1, 1, 1)
msh3.MeshId = "http://www.roblox.com/asset/?id=3270017"
local msh3c = Instance.new("SpecialMesh")
msh3c.Scale = Vector3.new(5, 5, 5)
msh3c.MeshType = "Sphere"
local msh5 = Instance.new("SpecialMesh")
msh5.Scale = Vector3.new(0.1, 1, 0.1)
msh5.MeshId = "http://www.roblox.com/asset/?id=168892432"
local prt1 = Instance.new("Part")
prt1.formFactor = 3
prt1.CanCollide = false
prt1.Name = "Handle"
prt1.Locked = true
prt1.Size = Vector3.new(0.3, 5, 0.3)
prt1.Parent = Staff
msh1.Parent = prt1
prt1.BrickColor = BrickColor.new("Black")
local prt2 = Instance.new("Part")
prt2.formFactor = 3
prt2.CanCollide = false
prt2.Name = "Handle2"
prt2.Locked = true
prt2.Size = Vector3.new(0.5, 0.2, 0.5)
prt2.Parent = Staff
msh2.Parent = prt2
prt2.BrickColor = BrickColor.new("Black")
local prt3 = Instance.new("Part")
prt3.formFactor = 3
prt3.CanCollide = false
prt3.Name = "Ring1"
prt3.Locked = true
prt3.Size = Vector3.new(0.2, 0.2, 0.2)
prt3.Parent = Staff
msh3.Parent = prt3
prt3.BrickColor = BrickColor.new("Black")
local prt3c = Instance.new("Part")
prt3c.formFactor = 3
prt3c.Transparency = 0.5
prt3c.CanCollide = false
prt3c.Name = "Orb"
prt3c.Locked = true
prt3c.Size = Vector3.new(0.2, 0.2, 0.2)
prt3c.Parent = Staff
msh3c.Parent = prt3c
prt3c.BrickColor = BrickColor.new("Black")
local bld = Instance.new("Part")
bld.formFactor = 3
bld.CanCollide = false
bld.Name = "Blood"
bld.Locked = true
bld.Size = Vector3.new(0.2, 0.2, 0.2)
bld.Parent = Staff
mshbd = msh3c:Clone()
mshbd.Parent = bld
mshbd.Scale = Vector3.new(0, 0, 0)
bld.BrickColor = BrickColor.new("Bright red")
local prt5 = Instance.new("Part")
prt5.formFactor = 3
prt5.CanCollide = false
prt5.Name = "Wrap"
prt5.Locked = true
prt5.Size = Vector3.new(0.2, 0.2, 0.2)
prt5.Parent = Staff
msh5.Parent = prt5
prt5.BrickColor = BrickColor.new("Bright red")
local w1 = Instance.new("Weld")
w1.Parent = prt1
w1.Part0 = prt1
local w2 = Instance.new("Weld")
w2.Parent = prt2
w2.Part0 = prt2
w2.Part1 = prt1
w2.C1 = CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
w2.C0 = CFrame.new(0, 2.5, 0) * CFrame.Angles(0, 0, 0)
local w3 = Instance.new("Weld")
w3.Parent = prt3
w3.Part0 = prt3
w3.Part1 = prt1
w3.C1 = CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
w3.C0 = CFrame.new(0, 3.1, 0) * CFrame.Angles(0, 0, 0)
local w3c = Instance.new("Weld")
w3c.Parent = prt3c
w3c.Part0 = prt3
w3c.Part1 = prt3c
w3c.C1 = CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
w3c.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
local wbl = Instance.new("Weld")
wbl.Parent = bld
wbl.Part0 = prt3
wbl.Part1 = bld
wbl.C1 = CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
wbl.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
local w5 = Instance.new("Weld")
w5.Parent = prt5
w5.Part0 = prt5
w5.Part1 = prt1
w5.C1 = CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
w5.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, math.rad(0)) * CFrame.new(0, 0, 0)
for i = 1, 3 do
  local msh4 = Instance.new("SpecialMesh")
  msh4.Scale = Vector3.new(0.55, 0.55, 1)
  msh4.MeshId = "http://www.roblox.com/asset/?id=3270017"
  local msh4c = Instance.new("SpecialMesh")
  msh4c.Scale = Vector3.new(0.45, 0.05, 0.05)
  msh4c.MeshId = "http://www.roblox.com/Asset/?id=9756362"
  local prt4 = Instance.new("Part")
  prt4.formFactor = 3
  prt4.CanCollide = false
  prt4.Name = "Ring2"
  prt4.Locked = true
  prt4.Size = Vector3.new(0.2, 0.2, 0.2)
  prt4.Parent = Staff
  msh4.Parent = prt4
  prt4.BrickColor = BrickColor.new("Black")
  local prt4c = Instance.new("Part")
  prt4c.formFactor = 3
  prt4c.CanCollide = false
  prt4c.Name = "Ring2"
  prt4c.Locked = true
  prt4c.Size = Vector3.new(0.2, 0.2, 0.2)
  prt4c.Parent = Staff
  msh4c.Parent = prt4c
  prt4c.BrickColor = BrickColor.new("Bright red")
  local w4 = Instance.new("Weld")
  w4.Parent = prt4
  w4.Part0 = prt4
  w4.Part1 = prt3
  w4.C1 = CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
  w4.C0 = CFrame.new(0.8, 0, 0) * CFrame.Angles(0, 0, math.pi / 2 * i + math.pi / 2) * CFrame.new(0, 0, 0)
  local w4c = Instance.new("Weld")
  w4c.Parent = prt4c
  w4c.Part0 = prt4c
  w4c.Part1 = prt4
  w4c.C1 = CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
  w4c.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0) * CFrame.new(0, 0, 0)
end
for i = 1, 4 do
  local msh4 = Instance.new("SpecialMesh")
  msh4.Scale = Vector3.new(0.9, 0.15, 0.15)
  msh4.MeshId = "http://www.roblox.com/Asset/?id=9756362"
  local prt4 = Instance.new("Part")
  prt4.formFactor = 3
  prt4.CanCollide = false
  prt4.Name = "Ring2"
  prt4.Locked = true
  prt4.Size = Vector3.new(0.2, 0.2, 0.2)
  prt4.Parent = Staff
  msh4.Parent = prt4
  prt4.BrickColor = BrickColor.new("Really black")
  local w4 = Instance.new("Weld")
  w4.Parent = prt4
  w4.Part0 = prt4
  w4.Part1 = prt3
  w4.C1 = CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
  w4.C0 = CFrame.new(0.8, 0, 0) * CFrame.Angles(0, 0, math.rad(-i * 90 + 45)) * CFrame.new(0, 0, 0)
end
for _,v in pairs(Staff:children()) do
  if v.className == "Part" then
    v.Material = "SmoothPlastic"
    v.BackSurface = "SmoothNoOutlines"
    v.BottomSurface = "SmoothNoOutlines"
    v.FrontSurface = "SmoothNoOutlines"
    v.LeftSurface = "SmoothNoOutlines"
    v.RightSurface = "SmoothNoOutlines"
    v.TopSurface = "SmoothNoOutlines"
  end
end
w1 = Weld(HandL, prt1, CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(0, math.pi / 2, math.pi), CFrame.new(0, 0, 0), true)
HUD = Instance.new("ScreenGui", PlayerGui)
HUD.Name = "Eve Battle HUD"
BLF = Instance.new("Frame", HUD)
BLF.Name = "Blood"
BLF.BackgroundTransparency = 1
BLF.Position = UDim2.new(0.25, 0, 0.8, 0)
BLF.Size = UDim2.new(0.075, 0, 0.075, 0)
BLF.SizeConstraint = "RelativeXX"
BL1 = Instance.new("ImageLabel", BLF)
BL1.BackgroundTransparency = 1
BL1.ImageColor3 = Color3.new(0, 0, 0)
BL1.ImageTransparency = 0.5
BL1.Position = UDim2.new(-1, 0, -0.45, 0)
BL1.Size = UDim2.new(2, 2, 2, 2)
BL1.SizeConstraint = "RelativeXX"
BL1.Image = "http://www.roblox.com/asset/?id=117959738"
BL1.ZIndex = 1
BL2 = Instance.new("ImageLabel", BLF)
BL2.BackgroundTransparency = 1
BL2.ImageColor3 = Color3.new(0.79607843137255, 0.79607843137255, 0.79607843137255)
BL2.Position = UDim2.new(-1, 0, -0.45, 0)
BL2.Size = UDim2.new(2 * Blood.Value / 50, 0, 2 * Blood.Value / 50, 0)
BL2.SizeConstraint = "RelativeXX"
BL2.Image = "http://www.roblox.com/asset/?id=117959738"
BL2.ZIndex = 2
BL3 = Instance.new("ImageLabel", BLF)
BL3.BackgroundTransparency = 1
BL3.ImageColor3 = Color3.new(0, 0, 0)
BL3.ImageTransparency = 0.5
BL3.Position = UDim2.new(-1, 0, -0.45, 0)
BL3.Size = UDim2.new(2, 0, 2, 0)
BL3.SizeConstraint = "RelativeXX"
BL3.Image = "http://www.roblox.com/asset/?id=117959738"
BL3.ZIndex = 4
BLT = Instance.new("TextLabel", BLF)
BLT.Name = "CD#"
BLT.BackgroundTransparency = 1
BLT.Position = UDim2.new(-0.5, 0, 0, 0)
BLT.Size = UDim2.new(1, 0, 1, 0)
BLT.SizeConstraint = "RelativeXX"
BLT.Text = "" .. Blood.Value .. "/50"
BLT.Font = "Legacy"
BLT.FontSize = "Size14"
BLT.TextColor3 = Color3.new(0, 0, 0)
BLT.TextStrokeColor3 = Color3.new(1, 1, 1)
BLT.TextStrokeTransparency = 0
BLT.ZIndex = 3
SK1 = Instance.new("Frame", HUD)
SK1.Name = "Sk1"
SK1.BackgroundTransparency = 1
SK1.Position = UDim2.new(0.35, 0, 0.8, 0)
SK1.Size = UDim2.new(0.075, 0, 0.075, 0)
SK1.SizeConstraint = "RelativeXX"
SH1 = Instance.new("Frame", SK1)
SH1.Name = "Shadow"
SH1.Position = UDim2.new(-0.5, 0, 0, 0)
SH1.Size = UDim2.new(1.05, 0, 1.05, 0)
SH1.SizeConstraint = "RelativeXX"
SH1.Style = "RobloxSquare"
SH1.ZIndex = 1
CD1 = Instance.new("Frame", SK1)
CD1.Name = "Cooldown"
CD1.BackgroundTransparency = 0
CD1.Position = UDim2.new(-0.5, 0, 0, 0)
CD1.Size = UDim2.new(1, 0, 1, 0)
CD1.SizeConstraint = "RelativeXX"
CD1.Style = "RobloxSquare"
CD1.ZIndex = 3
CT1 = Instance.new("TextLabel", SK1)
CT1.Name = "CD#"
CT1.BackgroundTransparency = 1
CT1.Position = UDim2.new(-0.5, 0, 0, 0)
CT1.Size = UDim2.new(1, 0, 1, 0)
CT1.SizeConstraint = "RelativeXX"
CT1.Font = "Legacy"
CT1.TextScaled = true
CT1.TextColor3 = Color3.new(0, 0, 0)
CT1.Text = 5
CT1.TextStrokeColor3 = Color3.new(1, 1, 1)
CT1.TextStrokeTransparency = 0
CT1.ZIndex = 4
IL1 = Instance.new("ImageLabel", SK1)
IL1.BackgroundTransparency = 0
IL1.Position = UDim2.new(-0.5, 0, 0, 0)
IL1.Size = UDim2.new(1, 0, 1, 0)
IL1.SizeConstraint = "RelativeXX"
IL1.Image = "http://www.roblox.com/asset/?id=174998237"
IL1.ZIndex = 2
SK2 = SK1:Clone()
SK2.Parent = HUD
SK2.Position = UDim2.new(0.45, 0, 0.8, 0)
CD2 = SK2.Cooldown
CT2 = SK2["CD#"]
CT2.Text = 6
IL2 = SK2.ImageLabel
IL2.Image = "http://www.roblox.com/asset/?id=174998263"
SK3 = SK1:Clone()
SK3.Parent = HUD
SK3.Position = UDim2.new(0.55, 0, 0.8, 0)
CD3 = SK3.Cooldown
CT3 = SK3["CD#"]
CT3.Text = 9
IL3 = SK3.ImageLabel
IL3.Image = "http://www.roblox.com/asset/?id=174998294"
SK4 = SK1:Clone()
SK4.Parent = HUD
SK4.Position = UDim2.new(0.65, 0, 0.8, 0)
CD4 = SK4.Cooldown
CT4 = SK4["CD#"]
CT4.Text = 21
IL4 = SK4.ImageLabel
IL4.Image = "http://www.roblox.com/asset/?id=174998319"
MN = Instance.new("Frame", HUD)
MN.Name = "Mana"
MN.BackgroundTransparency = 1
MN.Position = UDim2.new(0.5, 0, 0.725, 0)
MN.Size = UDim2.new(0.5, 0, 0.05, 0)
MB = Instance.new("Frame", MN)
MB.BackgroundColor3 = Color3.new(0.6078431372549, 0.6078431372549, 1)
MB.Position = UDim2.new(-0.5, 0, 0, 0)
MB.Size = UDim2.new(1 * (Mana.Value / 100), 0, 1, 0)
MB.ZIndex = 2
MH = Instance.new("Frame", MN)
MH.Name = "Shadow"
MH.Position = UDim2.new(-0.5, 0, 0, 0)
MH.Size = UDim2.new(1, 2, 1, 2)
MH.Style = "RobloxSquare"
MH.ZIndex = 1
MT = Instance.new("TextLabel", MN)
MT.Name = "M#"
MT.BackgroundTransparency = 1
MT.Position = UDim2.new(-0.5, 0, 0, 0)
MT.Size = UDim2.new(1, 0, 1, 0)
MT.Text = "" .. Mana.Value .. "/100"
MT.Font = "Legacy"
MT.TextScaled = true
MT.TextColor3 = Color3.new(0, 0, 0)
MT.TextStrokeColor3 = Color3.new(1, 1, 1)
MT.TextStrokeTransparency = 0
MT.ZIndex = 3
if script.Parent.className ~= "HopperBin" then
  Tool = Instance.new("HopperBin")
  Tool.Parent = Backpack
  Tool.Name = "Dalevila"
  script.Parent = Tool
end
Bin = script.Parent
SKP2 = function()
  clproc = false
  skilluse = true
  local attatch = false
  Character.Humanoid.WalkSpeed = 4
  Tween(HT, CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, 0, math.pi), CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, 0, math.pi / 1.7142857142857), 0.2, true)
  Tween(NK2, CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, 0, math.pi / 2.4), CFrame.new(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, 0, math.pi), 0.2, true)
  Tween(RW, CFrame.new(1, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(math.pi / 2, 0, math.pi / 2.75), CFrame.new(-0.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0), 0.2, true)
  Tween(LW, CFrame.new(-1.5, 0.5, 0.5) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi / 2) * CFrame.fromEulerAnglesXYZ(0, -math.pi / 2, math.pi / 16), CFrame.new(0.5, 0.5, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi / 2), 0.2, true)
  Tween(w1, CFrame.new(0, -1.75, 0) * CFrame.fromEulerAnglesXYZ(0, 0, math.pi / 2), CFrame.new(0, 0, 0), 0.2, true)
  local Puddy = Instance.new("Part")
  Puddy.Parent = c20
  Puddy.BrickColor = BrickColor.new("Really black")
  Puddy.FormFactor = 3
  Puddy.Name = "Pootis"
  Puddy.Size = Vector3.new(0.2, 0.2, 0.2)
  Puddy.Material = "SmoothPlastic"
  Puddy.CanCollide = false
  Puddy.Anchored = true
  Puddy.CFrame = Root.CFrame + Root.CFrame.lookVector * 15 - Vector3.new(0, 3, 0)
  Puddy:BreakJoints()
  Puddy.BackSurface = "SmoothNoOutlines"
  Puddy.BottomSurface = "SmoothNoOutlines"
  Puddy.FrontSurface = "SmoothNoOutlines"
  Puddy.LeftSurface = "SmoothNoOutlines"
  Puddy.RightSurface = "SmoothNoOutlines"
  Puddy.TopSurface = "SmoothNoOutlines"
  local PDmsh = Instance.new("CylinderMesh")
  PDmsh.Parent = Puddy
  PDmsh.Scale = Vector3.new(0, 1, 0)
  for i = 0, 1, 0.16666666666667 do
    rwait()
    PDmsh.Scale = Vector3.new(30 * i, 1, 30 * i)
  end
  cNK2.C0 = CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0) * CFrame.fromEulerAnglesXYZ(-math.pi / 9, 0, 0)
  cRW.C0 = CFrame.new(1, 0.5, 0) * CFrame.fromAxisAngle(Vector3.new(0, -1, 0), -math.pi / 2) * CFrame.fromEulerAnglesXYZ(-math.pi / 18, 0, -math.pi / 18)
  cLW.C0 = CFrame.new(-1, 0.5, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi / 2) * CFrame.fromEulerAnglesXYZ(-math.pi / 18, 0, math.pi / 18)
  cRW2.C0 = CFrame.new(1, -1, 0) * CFrame.fromAxisAngle(Vector3.new(0, -1, 0), -math.pi / 2) * CFrame.fromEulerAnglesXYZ(-math.pi / 18, 0, -math.pi / 18)
  cLW2.C0 = CFrame.new(-1, -1, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi / 2) * CFrame.fromEulerAnglesXYZ(-math.pi / 18, 0, math.pi / 18)
  cHT2.C0 = CFrame.new(0, -2, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
  cHT2.C1 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0) * CFrame.fromEulerAnglesXYZ(math.pi / 36, 0, 0)
  HTH.Part0 = nil
  Holde.CFrame = Puddy.CFrame * CFrame.fromEulerAnglesXYZ(0, math.pi, 0)
  Holde.Anchored = true
  local hitboxLOL = function(part, size, dur)
    local myArray = {"hi"}
    coroutine.resume(coroutine.create(function()
      for i = 0, 1, 0.016666666666667 / dur do
        rwait()
        local c = game.Workspace:GetChildren()
        for i = 1, #c do
          do
            local hum = c[i]:findFirstChild("Humanoid")
            if hum ~= nil and hum.Health ~= 0 then
              local head = c[i]:findFirstChild("Head")
              if head ~= nil then
                local targ = head.Position - part.Position
                local mag = targ.magnitude
                if mag <= size and c[i] ~= Character then
                  do
                    rwait()
                    coroutine.resume(coroutine.create(function(Part, BodPos)
        if myArray[i] ~= Part.Parent.Name then
          print(myArray[i])
          table.insert(myArray, i, Part.Parent.Name)
          attatch = true
          local bewm = cl00:Clone()
          bewm.Parent = Part.Parent
          bewm:BreakJoints()
          bewm.T.Transparency = 0
          bewm.H.Transparency = 0
          bewm.RA.Transparency = 0
          bewm.RL.Transparency = 0
          bewm.LA.Transparency = 0
          bewm.LL.Transparency = 0
          script.GrabDmgs:Clone().Parent = bewm
          bewm.GrabDmgs.Disabled = false
          local fHT = Weld(bewm.Root, Part.Parent.HumanoidRootPart, CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), true)
          local fHT2 = Weld(bewm.T, bewm.Root, CFrame.new(0, 1, 1.2, -1, 0, 0, 0, 0, 1, 0, 1, 0) * CFrame.fromEulerAnglesXYZ(math.pi / 18, 0, 0), CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), true)
          local fNK2 = Weld(bewm.H, bewm.T, CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0) * CFrame.fromEulerAnglesXYZ(math.pi / 9 - math.pi / 18, 0, 0), CFrame.new(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), true)
          local fRW = Weld(bewm.RA, bewm.T, CFrame.new(1, 0.5, 0) * CFrame.fromAxisAngle(Vector3.new(0, -1, 0), -math.pi / 2) * CFrame.fromEulerAnglesXYZ(0, math.pi / 9, math.pi / 2 + math.pi / 18), CFrame.new(-0.5, 0.5, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), math.pi / 2), true)
          local fRW2 = Weld(bewm.RL, bewm.T, CFrame.new(1, -1, 0) * CFrame.fromAxisAngle(Vector3.new(0, -1, 0), -math.pi / 2) * CFrame.fromEulerAnglesXYZ(-math.pi / 18, 0, -math.pi / 18), CFrame.new(0.5, 1, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), math.pi / 2), true)
          local fLW = Weld(bewm.LA, bewm.T, CFrame.new(-1, 0.5, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi / 2) * CFrame.fromEulerAnglesXYZ(0, -math.pi / 9, -math.pi / 2 - math.pi / 18), CFrame.new(0.5, 0.5, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi / 2), true)
          local fLW2 = Weld(bewm.LL, bewm.T, CFrame.new(-1, -1, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi / 2) * CFrame.fromEulerAnglesXYZ(-math.pi / 18, 0, math.pi / 18), CFrame.new(-0.5, 1, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi / 2), true)
        end
      end
), head, fb)
                    -- DECOMPILER ERROR at PC56: LeaveBlock: unexpected jumping out IF_THEN_STMT

                    -- DECOMPILER ERROR at PC56: LeaveBlock: unexpected jumping out IF_STMT

                    -- DECOMPILER ERROR at PC56: LeaveBlock: unexpected jumping out IF_THEN_STMT

                    -- DECOMPILER ERROR at PC56: LeaveBlock: unexpected jumping out IF_STMT

                    -- DECOMPILER ERROR at PC56: LeaveBlock: unexpected jumping out IF_THEN_STMT

                    -- DECOMPILER ERROR at PC56: LeaveBlock: unexpected jumping out IF_STMT

                  end
                end
              end
            end
          end
        end
      end
    end
))
  end

  Tween(cHT2, CFrame.new(0, 3, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0) * CFrame.fromEulerAnglesXYZ(math.pi / 36, 0, 0), 0.5, true)
  hitboxLOL(cTL, 5, 0.5)
  for i = 0, 1, 0.033333333333333 do
    rwait()
    cHL.Transparency = 1 - 1 * i
    cTL.Transparency = 1 - 1 * i
    cRA.Transparency = 1 - 1 * i
    cRL.Transparency = 1 - 1 * i
    cLA.Transparency = 1 - 1 * i
    cLL.Transparency = 1 - 1 * i
  end
  Tween(cHT2, CFrame.new(0, -1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0) * CFrame.fromEulerAnglesXYZ(-math.pi / 36, 0, 0), 0.5, true)
  Tween(cNK2, CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0) * CFrame.fromEulerAnglesXYZ(math.pi / 9, 0, 0), CFrame.new(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), 0.5, true)
  Tween(cRW, CFrame.new(1, 0, 0) * CFrame.fromAxisAngle(Vector3.new(0, -1, 0), -math.pi / 2) * CFrame.fromEulerAnglesXYZ(-math.pi / 2, 0, -math.pi / 18), CFrame.new(-0.5, 0.5, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), math.pi / 2), 0.5, true)
  Tween(cLW, CFrame.new(-1, 0, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi / 2) * CFrame.fromEulerAnglesXYZ(-math.pi / 2, 0, math.pi / 18), CFrame.new(0.5, 0.5, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi / 2), 0.5, true)
  Tween(cRW2, CFrame.new(1, -1, 0) * CFrame.fromAxisAngle(Vector3.new(0, -1, 0), -math.pi / 2) * CFrame.fromEulerAnglesXYZ(-math.pi / 18, 0, -math.pi / 18), CFrame.new(0.5, 1, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), math.pi / 2), 0.5, true)
  Tween(cLW2, CFrame.new(-1, -1, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi / 2) * CFrame.fromEulerAnglesXYZ(-math.pi / 18, 0, math.pi / 18), CFrame.new(-0.5, 1, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi / 2), 0.5, true)
  Tween(HT, CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), 0.2, true)
  Tween(NK2, CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), CFrame.new(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), 0.2, true)
  Tween(RW, CFrame.new(1, 0.5, -0.25) * CFrame.fromAxisAngle(Vector3.new(0, -1, 0), -math.pi / 2) * CFrame.fromEulerAnglesXYZ(math.pi / 8, 0, math.pi / 3.7), CFrame.new(-0.5, 0.5, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), math.pi / 2), 0.2, true)
  Tween(LW, CFrame.new(-1, 0.5, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi / 2) * CFrame.fromEulerAnglesXYZ(-math.pi / 8, 0, -math.pi / 2.25), CFrame.new(0.5, 0.5, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi / 2), 0.2, true)
  Tween(RW2, CFrame.new(1, -1, 0) * CFrame.fromAxisAngle(Vector3.new(0, -1, 0), -math.pi / 2) * CFrame.fromEulerAnglesXYZ(0, 0, 0), CFrame.new(0.5, 1, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), math.pi / 2), 0.2, true)
  Tween(LW2, CFrame.new(-1, -1, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi / 2) * CFrame.fromEulerAnglesXYZ(0, 0, 0), CFrame.new(-0.5, 1, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi / 2), 0.2, true)
  Tween(w1, CFrame.new(0, -1.75, 0) * CFrame.fromEulerAnglesXYZ(0, 0, math.pi / 2), CFrame.new(0, 0, 0), 0.2, true)
  Character.Humanoid.WalkSpeed = 16
  for i = 0, 1, 0.083333333333333 do
    rwait()
    Puddy.Transparency = 1 * i
    cHL.Transparency = 1 * i
    cTL.Transparency = 1 * i
    cRA.Transparency = 1 * i
    cRL.Transparency = 1 * i
    cLA.Transparency = 1 * i
    cLL.Transparency = 1 * i
  end
  Puddy:Destroy()
  HTH.Part0 = Root
  Holde.Anchored = false
  skilluse = false
  SK1CD()
end

SKP = function()
  clproc = false
  skilluse = true
  Character.Humanoid.WalkSpeed = 4
  Tween(HT, CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, 0, math.pi / 1.7142857142857), 1, true)
  Tween(NK2, CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, 0, math.pi / 2.4), CFrame.new(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), 1, true)
  Tween(RW, CFrame.new(1, 0.5, -0.25) * CFrame.fromEulerAnglesXYZ(math.pi / 2, math.pi / 16, -math.pi / 2.75), CFrame.new(-0.5, 0.5, 0), 1, true)
  Tween(LW, CFrame.new(-1.5, 0, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi / 2) * CFrame.fromEulerAnglesXYZ(-math.pi / 2, 0, 0), CFrame.new(0.5, 0.5, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi / 2), 1, true)
  Tween(w1, CFrame.new(0, -1.75, 0) * CFrame.fromEulerAnglesXYZ(0, 0, math.pi / 2), CFrame.new(0, 0, 0), 0.2, true)
  local Pud01 = Instance.new("Part")
  Pud01.Parent = c20
  Pud01.BrickColor = BrickColor.new("Really black")
  Pud01.FormFactor = 3
  Pud01.Name = "Pootis"
  Pud01.Size = Vector3.new(0.2, 0.2, 0.2)
  Pud01.Material = "SmoothPlastic"
  Pud01.CanCollide = false
  Pud01:BreakJoints()
  Pud01.BackSurface = "SmoothNoOutlines"
  Pud01.BottomSurface = "SmoothNoOutlines"
  Pud01.FrontSurface = "SmoothNoOutlines"
  Pud01.LeftSurface = "SmoothNoOutlines"
  Pud01.RightSurface = "SmoothNoOutlines"
  Pud01.TopSurface = "SmoothNoOutlines"
  local PDmsh = Instance.new("CylinderMesh")
  PDmsh.Parent = Pud01
  PDmsh.Scale = Vector3.new(0, 1, 0)
  local PDwld = Instance.new("Weld")
  PDwld.Parent = Pud01
  PDwld.Part0 = Root
  PDwld.Part1 = Pud01
  PDwld.C0 = CFrame.new(0, -3, 0)
  for i = 0, 1, 0.16666666666667 do
    rwait()
    PDmsh.Scale = Vector3.new(30 * i, 1, 30 * i)
  end
  local Pud02 = Instance.new("Part")
  Pud02.Parent = c20
  Pud02.BrickColor = BrickColor.new("Really black")
  Pud02.FormFactor = 3
  Pud02.Name = "Pootis"
  Pud02.Size = Vector3.new(0.2, 0.2, 0.2)
  Pud02.Material = "SmoothPlastic"
  Pud02.CanCollide = false
  Pud02:BreakJoints()
  Pud02.BackSurface = "SmoothNoOutlines"
  Pud02.BottomSurface = "SmoothNoOutlines"
  Pud02.FrontSurface = "SmoothNoOutlines"
  Pud02.LeftSurface = "SmoothNoOutlines"
  Pud02.RightSurface = "SmoothNoOutlines"
  Pud02.TopSurface = "SmoothNoOutlines"
  local PDmsh2 = Instance.new("CylinderMesh")
  PDmsh2.Parent = Pud02
  PDmsh2.Scale = Vector3.new(30, 1, 30)
  local PDwld2 = Instance.new("Weld")
  PDwld2.Parent = Pud02
  PDwld2.Part0 = Pud01
  PDwld2.Part1 = Pud02
  PDwld2.C0 = CFrame.new(0, 0, 0)
  local Pud03 = Instance.new("Part")
  Pud03.Parent = c20
  Pud03.BrickColor = BrickColor.new("Really black")
  Pud03.FormFactor = 3
  Pud03.Name = "Pootis"
  Pud03.Size = Vector3.new(0.2, 0.2, 0.2)
  Pud03.Material = "SmoothPlastic"
  Pud03.CanCollide = false
  Pud03.Anchored = true
  Pud03:BreakJoints()
  Pud03.BackSurface = "SmoothNoOutlines"
  Pud03.BottomSurface = "SmoothNoOutlines"
  Pud03.FrontSurface = "SmoothNoOutlines"
  Pud03.LeftSurface = "SmoothNoOutlines"
  Pud03.RightSurface = "SmoothNoOutlines"
  Pud03.TopSurface = "SmoothNoOutlines"
  local PDmsh3 = Instance.new("BlockMesh")
  PDmsh3.Parent = Pud03
  PDmsh3.Scale = Vector3.new(30, 1, 1)
  coroutine.resume(coroutine.create(function()
    while Pud03.Parent == c20 do
      rwait()
      Pud03.CFrame = CFrame.new(Vector3.new((Pud01.CFrame.x + Pud02.CFrame.x) / 2, (Pud01.CFrame.y + Pud02.CFrame.y) / 2, (Pud01.CFrame.z + Pud02.CFrame.z) / 2), Pud02.CFrame.p) * CFrame.fromEulerAnglesXYZ(math.pi / 2, 0, 0)
      PDmsh3.Scale = Vector3.new(30, math.sqrt(Pud01.CFrame.x - Pud02.CFrame.x ^ 2 + Pud01.CFrame.y - Pud02.CFrame.y ^ 2 + Pud01.CFrame.z - Pud02.CFrame.z ^ 2) * 5, 1)
    end
  end
))
  local Slider = function()
    for i = 0, 1, 0.0066666666666667 do
      rwait()
      if ZHold == true then
        PDwld2.C0 = CFrame.new(0, 0, -50 * i)
      end
      if ZHold == false then
        return 
      end
    end
  end

  Slider()
  Tween(HT, CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, 0, math.pi), CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, 0, math.pi / 1.7142857142857), 0.2, true)
  Tween(NK2, CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, 0, math.pi / 2.4), CFrame.new(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, 0, math.pi), 0.2, true)
  Tween(RW, CFrame.new(1, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(math.pi / 2, 0, math.pi / 2.75), CFrame.new(-0.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0), 0.2, true)
  Tween(LW, CFrame.new(-1.5, 0.5, 0.5) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi / 2) * CFrame.fromEulerAnglesXYZ(0, -math.pi / 2, math.pi / 16), CFrame.new(0.5, 0.5, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi / 2), 0.2, true)
  Tween(w1, CFrame.new(0, -1.75, 0) * CFrame.fromEulerAnglesXYZ(0, 0, math.pi / 2), CFrame.new(0, 0, 0), 0.2, true)
  cHT2.C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0) * CFrame.fromEulerAnglesXYZ(math.pi / 4, 0, 0)
  cNK2.C0 = CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0) * CFrame.fromEulerAnglesXYZ(-math.pi / 4, 0, 0)
  cRW.C0 = CFrame.new(1, 0, 0) * CFrame.fromAxisAngle(Vector3.new(0, -1, 0), -math.pi / 2) * CFrame.fromEulerAnglesXYZ(-math.pi / 4, 0, -math.pi / 9)
  cLW.C0 = CFrame.new(-1, 0, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi / 2) * CFrame.fromEulerAnglesXYZ(-math.pi / 4, 0, math.pi / 9)
  cRW2.C0 = CFrame.new(1, -1, 0) * CFrame.fromAxisAngle(Vector3.new(0, -1, 0), -math.pi / 2) * CFrame.fromEulerAnglesXYZ(-math.pi / 9, 0, -math.pi / 9)
  cLW2.C0 = CFrame.new(-1, -1, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi / 2) * CFrame.fromEulerAnglesXYZ(-math.pi / 9, 0, math.pi / 9)
  cHL.Transparency = 0
  cTL.Transparency = 0
  cRA.Transparency = 0
  cRL.Transparency = 0
  cLA.Transparency = 0
  cLL.Transparency = 0
  hitbox(cTL, 5, 10, 0.5)
  for i = 0, 1, 0.033333333333333 do
    rwait()
    cHT.C0 = CFrame.new(0, 0, -math.sqrt(Pud01.CFrame.x - Pud02.CFrame.x ^ 2 + Pud01.CFrame.y - Pud02.CFrame.y ^ 2 + Pud01.CFrame.z - Pud02.CFrame.z ^ 2) * i, -1, 0, 0, 0, 0, 1, 0, 1, 0)
  end
  Tween(cHT2, CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0), CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), 0.2, true)
  Tween(cNK2, CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0), CFrame.new(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), 0.2, true)
  Tween(cRW, CFrame.new(1, 0.5, 0) * CFrame.fromAxisAngle(Vector3.new(0, -1, 0), -math.pi / 2) * CFrame.fromEulerAnglesXYZ(-math.pi / 18, 0, 0), CFrame.new(-0.5, 0.5, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), math.pi / 2), 0.2, true)
  Tween(cLW, CFrame.new(-1, 0.5, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi / 2) * CFrame.fromEulerAnglesXYZ(-math.pi / 18, 0, 0), CFrame.new(0.5, 0.5, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi / 2), 0.2, true)
  Tween(cRW2, CFrame.new(1, -1, 0) * CFrame.fromAxisAngle(Vector3.new(0, -1, 0), -math.pi / 2) * CFrame.fromEulerAnglesXYZ(0, 0, 0), CFrame.new(0.5, 1, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), math.pi / 2), 0.2, true)
  Tween(cLW2, CFrame.new(-1, -1, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi / 2) * CFrame.fromEulerAnglesXYZ(0, 0, 0), CFrame.new(-0.5, 1, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi / 2), 0.2, true)
  Pud01.Anchored = true
  Pud02.Anchored = true
  Pud01:BreakJoints()
  Pud02:BreakJoints()
  HTH.Part0 = nil
  Holde.Anchored = true
  Tween(HT, CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), 0.2, true)
  Tween(NK2, CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), CFrame.new(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), 0.2, true)
  Tween(RW, CFrame.new(1, 0.5, -0.25) * CFrame.fromAxisAngle(Vector3.new(0, -1, 0), -math.pi / 2) * CFrame.fromEulerAnglesXYZ(math.pi / 8, 0, math.pi / 3.7), CFrame.new(-0.5, 0.5, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), math.pi / 2), 0.2, true)
  Tween(LW, CFrame.new(-1, 0.5, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi / 2) * CFrame.fromEulerAnglesXYZ(-math.pi / 8, 0, -math.pi / 2.25), CFrame.new(0.5, 0.5, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi / 2), 0.2, true)
  Tween(RW2, CFrame.new(1, -1, 0) * CFrame.fromAxisAngle(Vector3.new(0, -1, 0), -math.pi / 2) * CFrame.fromEulerAnglesXYZ(0, 0, 0), CFrame.new(0.5, 1, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), math.pi / 2), 0.2, true)
  Tween(LW2, CFrame.new(-1, -1, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi / 2) * CFrame.fromEulerAnglesXYZ(0, 0, 0), CFrame.new(-0.5, 1, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi / 2), 0.2, true)
  Tween(w1, CFrame.new(0, -1.75, 0) * CFrame.fromEulerAnglesXYZ(0, 0, math.pi / 2), CFrame.new(0, 0, 0), 0.2, true)
  Character.Humanoid.WalkSpeed = 16
  for i = 0, 1, 0.083333333333333 do
    rwait()
    cHL.Transparency = 1 * i
    cTL.Transparency = 1 * i
    cRA.Transparency = 1 * i
    cRL.Transparency = 1 * i
    cLA.Transparency = 1 * i
    cLL.Transparency = 1 * i
    Pud01.Transparency = 1 * i
    Pud02.Transparency = 1 * i
    Pud03.Transparency = 1 * i
  end
  cHT.C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
  Pud01:Destroy()
  Pud02:Destroy()
  Pud03:Destroy()
  HTH.Part0 = Root
  Holde.Anchored = false
  skilluse = false
  SK1CD()
end

SK1CD = function()
  coroutine.resume(coroutine.create(function()
    for i = 0, 1, 0.0033333333333333 do
      CD1.Size = UDim2.new(1, 0, 1 - i, 0)
      CD1.Position = UDim2.new(-0.5, 0, i, 0)
      Time1 = i
      CT1.Text = math.ceil(5 - Time1 * 5)
      rwait()
    end
    Time1 = 0
    CT1.Text = ""
  end
))
end

MMMAGIC = function(part, x1, y1, z1, x2, y2, z2, color)
  local msh1 = Instance.new("SpecialMesh")
  msh1.MeshType = "Sphere"
  msh1.Scale = Vector3.new(0, 0, 0)
  S = Instance.new("Part")
  S.Name = "Effect"
  S.formFactor = 0
  S.Size = Vector3.new(x1, y1, z1)
  S.BrickColor = color
  S.Reflectance = 0
  S.TopSurface = 0
  S.BottomSurface = 0
  S.Transparency = 0
  S.Anchored = true
  S.CanCollide = false
  S.CFrame = part.CFrame * CFrame.new(x2, y2, z2) * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
  S.Parent = Effects
  msh1.Parent = S
  coroutine.resume(coroutine.create(function(Part, CF)
    for i = 0, 1, 0.075 do
      Part.Mesh.Scale = Vector3.new(x1 / 2 * i, y1 / 2 * i, z1 / 2 * i)
      Part.Transparency = 0 + 1 * i
      rwait()
    end
    game:GetService("Debris"):AddItem(Part, 0)
  end
), S, S.CFrame)
end

MMMAGIC2 = function(part, x1, y1, z1, x2, y2, z2, color)
  local msh1 = Instance.new("BlockMesh")
  msh1.Scale = Vector3.new(0.5, 0.5, 0.5)
  S = Instance.new("Part")
  S.Name = "Effect"
  S.formFactor = 0
  S.Size = Vector3.new(x1, y1, z1)
  S.BrickColor = color
  S.Reflectance = 0
  S.TopSurface = 0
  S.BottomSurface = 0
  S.Transparency = 0
  S.Anchored = true
  S.CanCollide = false
  S.CFrame = part.CFrame * CFrame.new(x2, y2, z2) * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
  S.Parent = Effects
  msh1.Parent = S
  coroutine.resume(coroutine.create(function(Part, CF)
    for i = 1, 9 do
      Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.1, 0.1, 0.1)
      Part.CFrame = Part.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
      Part.Transparency = i * 0.1
      rwait()
    end
    game:GetService("Debris"):AddItem(Part, 0)
  end
), S, S.CFrame)
end

MMMAGICB = function(part, x1, y1, z1, x2, y2, z2, color)
  local msh1 = Instance.new("SpecialMesh")
  msh1.MeshType = "Sphere"
  msh1.Scale = Vector3.new(0, 0, 0)
  S = Instance.new("Part")
  S.Name = "Effect"
  S.formFactor = 0
  S.Size = Vector3.new(x1, y1, z1)
  S.BrickColor = color
  S.Reflectance = 0
  S.TopSurface = 0
  S.BottomSurface = 0
  S.Transparency = 0
  S.Anchored = true
  S.CanCollide = false
  S.CFrame = part.CFrame * CFrame.new(x2, y2, z2) * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
  S.Parent = Effects
  msh1.Parent = S
  coroutine.resume(coroutine.create(function(Part, CF)
    for i = 0, 1, 0.075 do
      Part.Mesh.Scale = Vector3.new(x1 / 2 * i, y1 / 2 * i, z1 / 2 * i)
      Part.Transparency = 0 + 1 * i
      rwait()
    end
    game:GetService("Debris"):AddItem(Part, 0)
  end
), S, S.CFrame)
  coroutine.resume(coroutine.create(function()
    local c = game.Workspace:GetChildren()
    for i = 1, #c do
      local hum = c[i]:findFirstChild("Humanoid")
      if hum ~= nil and hum.Health ~= 0 then
        local head = c[i]:findFirstChild("Head")
        if head ~= nil then
          local targ = head.Position - S.Position
          local mag = targ.magnitude
          if mag <= 10 and c[i] ~= Character then
            coroutine.resume(coroutine.create(function(Part, BodPos)
      clproc = true
      HitHealth = Part.Parent.Humanoid.Health
      Part.Parent.Humanoid:TakeDamage(3)
      if HitHealth ~= Part.Parent.Humanoid.Health and HitHealth ~= 0 and Part.Parent.Humanoid.Health <= 0 and Part.Parent.Humanoid.Parent.Name ~= "Lost Soul" then
        print("gained spree")
        Player:FindFirstChild("leaderstats").Spree.Value = Player.leaderstats.Spree.Value + 1
      end
      if not Part.Parent:findFirstChild("Bleed") then
        local poot = script.Bleed:Clone()
        poot.Parent = Part.Parent
        poot.Disabled = false
      end
    end
), head, fb)
          end
        end
      end
    end
    MMMAGIC2(S, 3, 3, 3, x2, y2, z2, BrickColor.new("Bright red"))
  end
))
end

hitbox = function(part, size, damage, dur, givemana, deletion, delwut, bewmie, var1, var2, color, splash, splashsize, bleed)
  local myArray = {"hi"}
  coroutine.resume(coroutine.create(function()
    for i = 0, 1, 0.016666666666667 / dur do
      rwait()
      local c = game.Workspace:GetChildren()
      for i = 1, #c do
        do
          local hum = c[i]:findFirstChild("Humanoid")
          if hum ~= nil and hum.Health ~= 0 then
            local head = c[i]:findFirstChild("Head")
            if head ~= nil then
              local targ = head.Position - part.Position
              local mag = targ.magnitude
              if mag <= size and c[i] ~= Character then
                do
                  rwait()
                  coroutine.resume(coroutine.create(function(Part, BodPos)
      if myArray[i] ~= Part.Parent.Name then
        print(myArray[i])
        table.insert(myArray, i, Part.Parent.Name)
        if splash ~= true then
          Part.Parent.Humanoid:TakeDamage(damage)
          HitHealth = Part.Parent.Humanoid.Health
          if HitHealth ~= Part.Parent.Humanoid.Health and HitHealth ~= 0 and Part.Parent.Humanoid.Health <= 0 and Part.Parent.Humanoid.Parent.Name ~= "Lost Soul" then
            print("gained spree")
            Player:FindFirstChild("leaderstats").Spree.Value = Player.leaderstats.Spree.Value + 1
          end
          do
            if bleed == true and not Part.Parent:findFirstChild("Bleed") then
              local poot = script.Bleed:Clone()
              poot.Parent = Part.Parent
              poot.Disabled = false
            end
            if givemana == true then
              Blood.Value = Blood.Value + 1
            end
            if bewmie == true then
              MMMAGIC(part, var1, var1, var1, 0, 0, 0, BrickColor.new(color))
              MMMAGIC2(part, var2, var2, var2, 0, 0, 0, BrickColor.new(color))
            end
            if deletion == true then
              delwut.Parent = nil
            end
            if splash == true then
              hitbox(part, splashsize, damage, dur, givemana, deletion, delwut, bewmie, var1, var2, color, false, splashsize, bleed)
            end
          end
        end
      end
    end
), head, fb)
                  -- DECOMPILER ERROR at PC68: LeaveBlock: unexpected jumping out IF_THEN_STMT

                  -- DECOMPILER ERROR at PC68: LeaveBlock: unexpected jumping out IF_STMT

                  -- DECOMPILER ERROR at PC68: LeaveBlock: unexpected jumping out IF_THEN_STMT

                  -- DECOMPILER ERROR at PC68: LeaveBlock: unexpected jumping out IF_STMT

                  -- DECOMPILER ERROR at PC68: LeaveBlock: unexpected jumping out IF_THEN_STMT

                  -- DECOMPILER ERROR at PC68: LeaveBlock: unexpected jumping out IF_STMT

                end
              end
            end
          end
        end
      end
    end
  end
))
end

cl0 = Instance.new("Model")
clr = Instance.new("Part", cl0)
clr.FormFactor = 3
clr.Size = Vector3.new(2, 2, 1)
clr.Anchored = true
clr.CanCollide = false
clr.Transparency = 1
clr.Material = "SmoothPlastic"
clr.BottomSurface = "Smooth"
clr.TopSurface = "Smooth"
cl1 = Instance.new("Part", cl0)
cl1.FormFactor = 3
cl1.Size = Vector3.new(1, 1, 1)
cl1.BrickColor = BrickColor.new("Medium blue")
cl1.Anchored = true
cl1.CanCollide = false
cl1.Transparency = 0.4
cl1.Material = "SmoothPlastic"
cl1.BottomSurface = "Smooth"
cl1.TopSurface = "Smooth"
cl2 = Instance.new("Part", cl0)
cl2.FormFactor = 3
cl2.Size = Vector3.new(2, 2, 1)
cl2.BrickColor = BrickColor.new("Medium blue")
cl2.Anchored = true
cl2.CanCollide = false
cl2.Transparency = 0.4
cl2.Material = "SmoothPlastic"
cl2.BottomSurface = "Smooth"
cl2.TopSurface = "Smooth"
cl3 = Instance.new("Part", cl0)
cl3.FormFactor = 3
cl3.Size = Vector3.new(1, 2, 1)
cl3.BrickColor = BrickColor.new("Medium blue")
cl3.Anchored = true
cl3.CanCollide = false
cl3.Transparency = 0.4
cl3.Material = "SmoothPlastic"
cl3.BottomSurface = "Smooth"
cl3.TopSurface = "Smooth"
cl4 = Instance.new("Part", cl0)
cl4.FormFactor = 3
cl4.Size = Vector3.new(1, 2, 1)
cl4.BrickColor = BrickColor.new("Medium blue")
cl4.Anchored = true
cl4.CanCollide = false
cl4.Transparency = 0.4
cl4.Material = "SmoothPlastic"
cl4.BottomSurface = "Smooth"
cl4.TopSurface = "Smooth"
cl5 = Instance.new("Part", cl0)
cl5.FormFactor = 3
cl5.Size = Vector3.new(1, 2, 1)
cl5.BrickColor = BrickColor.new("Medium blue")
cl5.Anchored = true
cl5.CanCollide = false
cl5.Transparency = 0.4
cl5.Material = "SmoothPlastic"
cl5.BottomSurface = "Smooth"
cl5.TopSurface = "Smooth"
cl6 = Instance.new("Part", cl0)
cl6.FormFactor = 3
cl6.Size = Vector3.new(1, 2, 1)
cl6.BrickColor = BrickColor.new("Medium blue")
cl6.Anchored = true
cl6.CanCollide = false
cl6.Transparency = 0.4
cl6.Material = "SmoothPlastic"
cl6.BottomSurface = "Smooth"
cl6.TopSurface = "Smooth"
cll = Instance.new("PointLight", cl2)
cll.Color = Color3.new(0.6078431372549, 0.6078431372549, 1)
cl0:BreakJoints()
beameff = function(color, part, Part)
  local Coluh = BrickColor.new(color)
  local msh1z = Instance.new("CylinderMesh")
  local prt1z = Instance.new("Part")
  prt1z.formFactor = 3
  prt1z.Name = "HealRay"
  prt1z.Locked = true
  prt1z.Size = Vector3.new(0.2, 0.2, 0.2)
  prt1z.Parent = Character
  msh1z.Parent = prt1z
  prt1z.BrickColor = BrickColor.new(color)
  prt1z.CanCollide = false
  prt1z.Anchored = true
  light7 = Instance.new("PointLight")
  light7.Parent = prt1z
  light7.Brightness = 15
  light7.Range = 5
  light7.Color = Coluh.Color
  local msh2z = Instance.new("CylinderMesh")
  local prt2z = Instance.new("Part")
  prt2z.formFactor = 3
  prt2z.Name = "HealRay"
  prt2z.Locked = true
  prt2z.Size = Vector3.new(0.2, 0.2, 0.2)
  prt2z.Parent = Character
  msh2z.Parent = prt2z
  prt2z.BrickColor = BrickColor.new(color)
  prt2z.CanCollide = false
  prt2z.Anchored = true
  light8 = Instance.new("PointLight")
  light8.Parent = prt2z
  light8.Brightness = 15
  light8.Range = 5
  light8.Color = Coluh.Color
  local msh3z = Instance.new("CylinderMesh")
  local prt3z = Instance.new("Part")
  prt3z.formFactor = 3
  prt3z.Name = "HealRay"
  prt3z.Locked = true
  prt3z.Size = Vector3.new(0.2, 0.2, 0.2)
  prt3z.Parent = Character
  msh3z.Parent = prt3z
  prt3z.BrickColor = BrickColor.new(color)
  prt3z.CanCollide = false
  prt3z.Anchored = true
  light9 = Instance.new("PointLight")
  light9.Parent = prt3z
  light9.Brightness = 15
  light9.Range = 5
  light9.Color = Coluh.Color
  local msh4z = Instance.new("CylinderMesh")
  local prt4z = Instance.new("Part")
  prt4z.formFactor = 3
  prt4z.Name = "HealRay"
  prt4z.Locked = true
  prt4z.Size = Vector3.new(0.2, 0.2, 0.2)
  prt4z.Parent = Character
  msh4z.Parent = prt4z
  prt4z.BrickColor = BrickColor.new(color)
  prt4z.CanCollide = false
  prt4z.Anchored = true
  light10 = Instance.new("PointLight")
  light10.Parent = prt4z
  light10.Brightness = 15
  light10.Range = 5
  light10.Color = Coluh.Color
  wait(0.15)
  local start = part.CFrame * CFrame.new(0, -part.Size.y / 2, 0)
  local oristrpos1 = Vector3.new(math.random(-2, 2), math.random(-2, 2), math.random(-2, 2)) + (start.p + Part.Position) / 2
  local oristrpos2 = Vector3.new(math.random(-2, 2), math.random(-2, 2), math.random(-2, 2)) + (oristrpos1 + Part.Position) / 2
  local oristrpos3 = Vector3.new(math.random(-2, 2), math.random(-2, 2), math.random(-2, 2)) + (oristrpos2 + Part.Position) / 2
  local oristrpos4 = Part.Position
  local mg1 = (start.p - oristrpos1).magnitude
  local mg2 = (oristrpos1 - oristrpos2).magnitude
  local mg3 = (oristrpos2 - oristrpos3).magnitude
  local mg4 = (oristrpos3 - oristrpos4).magnitude
  prt1z.Size = Vector3.new(0.5, mg1, 0.5)
  prt1z.CFrame = CFrame.new((start.p + oristrpos1) / 2, oristrpos1) * CFrame.Angles(math.rad(90), 0, 0)
  prt2z.Size = Vector3.new(0.75, mg2, 0.75)
  prt2z.CFrame = CFrame.new((oristrpos1 + oristrpos2) / 2, oristrpos2) * CFrame.Angles(math.rad(90), 0, 0)
  prt3z.Size = Vector3.new(1, mg3, 1)
  prt3z.CFrame = CFrame.new((oristrpos2 + oristrpos3) / 2, oristrpos3) * CFrame.Angles(math.rad(90), 0, 0)
  prt4z.Size = Vector3.new(1.25, mg4, 1.25)
  prt4z.CFrame = CFrame.new((oristrpos3 + oristrpos4) / 2, oristrpos4) * CFrame.Angles(math.rad(90), 0, 0)
  coroutine.resume(coroutine.create(function()
    for i = 0.1, 1, 0.1 do
      wait()
      msh1z.Scale = Vector3.new(1 - 0.75 * i, 1, 1 - 0.75 * i)
      msh2z.Scale = Vector3.new(1 - 0.75 * i, 1, 1 - 0.75 * i)
      msh3z.Scale = Vector3.new(1 - 0.75 * i, 1, 1 - 0.75 * i)
      msh4z.Scale = Vector3.new(1 - 0.75 * i, 1, 1 - 0.75 * i)
      prt1z.Transparency = 1 * i
      prt2z.Transparency = 1 * i
      prt3z.Transparency = 1 * i
      prt4z.Transparency = 1 * i
    end
  end
))
  for i = 0.1, 1, 0.1 do
    wait()
    msh1z.Scale = Vector3.new(0.5 - 0.5 * i, 1, 0.5 - 0.5 * i)
    msh2z.Scale = Vector3.new(0.5 - 0.5 * i, 1, 0.5 - 0.5 * i)
    msh3z.Scale = Vector3.new(0.5 - 0.5 * i, 1, 0.5 - 0.5 * i)
    msh4z.Scale = Vector3.new(0.5 - 0.5 * i, 1, 0.5 - 0.5 * i)
    prt1z.Transparency = 0.5 + 0.5 * i
    prt2z.Transparency = 0.5 + 0.5 * i
    prt3z.Transparency = 0.5 + 0.5 * i
    prt4z.Transparency = 0.5 + 0.5 * i
  end
  prt1z.Parent = nil
  prt2z.Parent = nil
  prt3z.Parent = nil
  prt4z.Parent = nil
end

SK1 = function()
  attack = true
  Character.Humanoid.WalkSpeed = 4
  coroutine.resume(coroutine.create(function()
    if dashing == true then
      movehold = false
      dashing = false
      Character.Humanoid.WalkSpeed = 4
      Tween(HT, CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), 0.2, true)
      Tween(NK2, CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), CFrame.new(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), 0.2, true)
      Tween(RW, CFrame.new(1, 0.5, -0.25) * CFrame.fromAxisAngle(Vector3.new(0, -1, 0), -math.pi / 2) * CFrame.fromEulerAnglesXYZ(math.pi / 8, 0, math.pi / 3.7), CFrame.new(-0.5, 0.5, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), math.pi / 2), 0.2, true)
      Tween(LW, CFrame.new(-1, 0.5, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi / 2) * CFrame.fromEulerAnglesXYZ(-math.pi / 8, 0, -math.pi / 2.25), CFrame.new(0.5, 0.5, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi / 2), 0.2, true)
      Tween(RW2, CFrame.new(1, -1, 0) * CFrame.fromAxisAngle(Vector3.new(0, -1, 0), -math.pi / 2) * CFrame.fromEulerAnglesXYZ(0, 0, 0), CFrame.new(0.5, 1, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), math.pi / 2), 0.2, true)
      Tween(LW2, CFrame.new(-1, -1, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi / 2) * CFrame.fromEulerAnglesXYZ(0, 0, 0), CFrame.new(-0.5, 1, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi / 2), 0.2, true)
      Tween(w1, CFrame.new(0, -1.75, 0) * CFrame.fromEulerAnglesXYZ(0, 0, math.pi / 2), CFrame.new(0, 0, 0), 0.2, true)
    end
  end
))
  Tween(RW, CFrame.new(1, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.pi / 1.5, 0, -math.pi / 4), CFrame.new(-0.5, 0.5, 0), 0.2, true)
  Tween(LW, CFrame.new(-1, 0, 0) * CFrame.fromEulerAnglesXYZ(0, -math.pi / 3, -math.pi / 2), CFrame.new(0.5, 0.5, 0), 0.2, true)
  Tween(w1, CFrame.new(0, -1.25, 0) * CFrame.fromEulerAnglesXYZ(0, -math.pi / 1.5, math.pi / 1.5), CFrame.new(0, 0, 0), 0.2, true)
  for i = 0, 1, 0.055555555555556 do
    rwait()
  end
  do
    while 1 do
      while 1 do
        while 1 do
          while 1 do
            if SK1Hold == true then
              if Infusion == false then
                if Blood.Value < 50 then
                  if Blood.Value > 46 then
                    Character.Humanoid:TakeDamage(50 - Blood.Value)
                    Blood.Value = Blood.Value + 50 - Blood.Value
                  else
                    if Blood.Value <= 46 then
                      Character.Humanoid:TakeDamage(4)
                      Blood.Value = Blood.Value + 4
                    end
                  end
                  beameff("Black", bld, HandR)
                  -- DECOMPILER ERROR at PC157: LeaveBlock: unexpected jumping out IF_THEN_STMT

                  -- DECOMPILER ERROR at PC157: LeaveBlock: unexpected jumping out IF_STMT

                  -- DECOMPILER ERROR at PC157: LeaveBlock: unexpected jumping out IF_THEN_STMT

                  -- DECOMPILER ERROR at PC157: LeaveBlock: unexpected jumping out IF_STMT

                  -- DECOMPILER ERROR at PC157: LeaveBlock: unexpected jumping out IF_THEN_STMT

                  -- DECOMPILER ERROR at PC157: LeaveBlock: unexpected jumping out IF_STMT

                end
              end
            end
          end
          if Blood.Value == 50 then
            SK1Hold = false
          end
        end
        if Infusion == true then
          if Character.Humanoid.Health < Character.Humanoid.MaxHealth and Blood.Value >= 4 then
            Blood.Value = Blood.Value - 4
            Character.Humanoid:TakeDamage(-2)
            beameff("Bright red", HandR, bld)
            -- DECOMPILER ERROR at PC195: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC195: LeaveBlock: unexpected jumping out IF_STMT

            -- DECOMPILER ERROR at PC195: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC195: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
      SK1Hold = false
    end
    Tween(w1, CFrame.new(0, -1.75, 0) * CFrame.fromEulerAnglesXYZ(0, 0, math.pi / 2), CFrame.new(0, 0, 0), 0.2, true)
    Tween(RW, CFrame.new(1, 0.5, -0.25) * CFrame.fromAxisAngle(Vector3.new(0, -1, 0), -math.pi / 2) * CFrame.fromEulerAnglesXYZ(math.pi / 8, 0, math.pi / 3.7), CFrame.new(-0.5, 0.5, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), math.pi / 2), 0.2, true)
    Tween(LW, CFrame.new(-1, 0.5, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi / 2) * CFrame.fromEulerAnglesXYZ(-math.pi / 8, 0, -math.pi / 2.25), CFrame.new(0.5, 0.5, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi / 2), 0.2, true)
    Character.Humanoid.WalkSpeed = 16
    for i = 0, 1, 0.055555555555556 do
      rwait()
    end
    attack = false
  end
end

SK2 = function(Bloody)
  attack = true
  Character.Humanoid.WalkSpeed = 4
  coroutine.resume(coroutine.create(function()
    if dashing == true then
      movehold = false
      dashing = false
      Character.Humanoid.WalkSpeed = 4
      Tween(HT, CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), 0.2, true)
      Tween(NK2, CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), CFrame.new(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), 0.2, true)
      Tween(RW, CFrame.new(1, 0.5, -0.25) * CFrame.fromAxisAngle(Vector3.new(0, -1, 0), -math.pi / 2) * CFrame.fromEulerAnglesXYZ(math.pi / 8, 0, math.pi / 3.7), CFrame.new(-0.5, 0.5, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), math.pi / 2), 0.2, true)
      Tween(LW, CFrame.new(-1, 0.5, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi / 2) * CFrame.fromEulerAnglesXYZ(-math.pi / 8, 0, -math.pi / 2.25), CFrame.new(0.5, 0.5, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi / 2), 0.2, true)
      Tween(RW2, CFrame.new(1, -1, 0) * CFrame.fromAxisAngle(Vector3.new(0, -1, 0), -math.pi / 2) * CFrame.fromEulerAnglesXYZ(0, 0, 0), CFrame.new(0.5, 1, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), math.pi / 2), 0.2, true)
      Tween(LW2, CFrame.new(-1, -1, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi / 2) * CFrame.fromEulerAnglesXYZ(0, 0, 0), CFrame.new(-0.5, 1, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi / 2), 0.2, true)
      Tween(w1, CFrame.new(0, -1.75, 0) * CFrame.fromEulerAnglesXYZ(0, 0, math.pi / 2), CFrame.new(0, 0, 0), 0.2, true)
    end
  end
))
  local BE2 = Instance.new("Part", Effects)
  BE2.formFactor = 3
  BE2.Transparency = 0.5
  BE2.Anchored = false
  if Bloody == false then
    BE2.BrickColor = BrickColor.new("Really black")
  else
    if Bloody == true then
      BE2.BrickColor = BrickColor.new("Black")
    end
  end
  BE2.CanCollide = false
  BE2.Size = Vector3.new(0.2, 0.2, 0.2)
  BE2.CFrame = HandR.CFrame
  BE2:BreakJoints()
  local BEW2 = Instance.new("Weld")
  BEW2.Parent = BE2
  BEW2.Part0 = BE2
  BEW2.Part1 = HandR
  BEW2.C0 = CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
  BEW2.C1 = CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
  local BEM2 = Instance.new("SpecialMesh", BE2)
  BEM2.MeshId = "http://www.roblox.com/asset/?id=1185246"
  BEM2.Scale = Vector3.new(-1.5, -1.5, -1.5)
  local BE3 = Instance.new("Part", Effects)
  BE3.Name = "Test"
  BE3.formFactor = 3
  BE3.Transparency = 0.2
  BE3.Anchored = false
  if Bloody == false then
    BE3.BrickColor = BrickColor.new("Black")
  else
    if Bloody == true then
      BE3.BrickColor = BrickColor.new("Bright red")
    end
  end
  BE3.CanCollide = false
  BE3.Size = Vector3.new(1, 1, 1)
  BE3.CFrame = HandR.CFrame
  BE3.Material = "SmoothPlastic"
  BE3:BreakJoints()
  local BEW3 = Instance.new("Weld")
  BEW3.Parent = BE3
  BEW3.Part0 = BE3
  BEW3.Part1 = BE2
  BEW3.C0 = CFrame.new(1, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
  BEW3.C1 = CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
  local BE4 = Instance.new("Part", Effects)
  BE4.Name = "Test"
  BE4.formFactor = 3
  BE4.Transparency = 0.2
  BE4.Anchored = false
  if Bloody == false then
    BE4.BrickColor = BrickColor.new("Black")
  else
    if Bloody == true then
      BE4.BrickColor = BrickColor.new("Bright red")
    end
  end
  BE4.CanCollide = false
  BE4.Size = Vector3.new(1, 1, 1)
  BE4.CFrame = HandR.CFrame
  BE4.Material = "SmoothPlastic"
  BE4:BreakJoints()
  local BEW4 = Instance.new("Weld")
  BEW4.Parent = BE4
  BEW4.Part0 = BE4
  BEW4.Part1 = BE2
  BEW4.C0 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
  BEW4.C1 = CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
  local BE5 = Instance.new("Part", Effects)
  BE5.Name = "Test"
  BE5.formFactor = 3
  BE5.Transparency = 0.2
  BE5.Anchored = false
  if Bloody == false then
    BE5.BrickColor = BrickColor.new("Black")
  else
    if Bloody == true then
      BE5.BrickColor = BrickColor.new("Bright red")
    end
  end
  BE5.CanCollide = false
  BE5.Size = Vector3.new(1, 1, 1)
  BE5.CFrame = HandR.CFrame
  BE5.Material = "SmoothPlastic"
  BE5:BreakJoints()
  local BEW5 = Instance.new("Weld")
  BEW5.Parent = BE5
  BEW5.Part0 = BE5
  BEW5.Part1 = BE2
  BEW5.C0 = CFrame.new(0, 0, 1) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
  BEW5.C1 = CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
  coroutine.resume(coroutine.create(function()
    while BE2.Parent == Effects do
      rwait()
      for i = 0, 1, 0.05 do
        rwait()
        BEW3.C0 = CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(0, math.pi * 2 * i, 0)
        BEW4.C0 = CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, math.pi * 2 * i)
        BEW5.C0 = CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(math.pi * 2 * i, 0, 0)
      end
    end
  end
))
  Tween(HT, CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, 0, math.pi / 1.7142857142857), 1, true)
  Tween(NK2, CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, 0, math.pi / 2.4), CFrame.new(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), 1, true)
  Tween(RW, CFrame.new(1, 0.5, -0.25) * CFrame.fromEulerAnglesXYZ(math.pi / 2, math.pi / 16, -math.pi / 2.75), CFrame.new(-0.5, 0.5, 0), 1, true)
  Tween(LW, CFrame.new(-1.5, 0, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi / 2) * CFrame.fromEulerAnglesXYZ(-math.pi / 2, 0, 0), CFrame.new(0.5, 0.5, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi / 2), 1, true)
  Tween(w1, CFrame.new(0, -1.75, 0) * CFrame.fromEulerAnglesXYZ(0, 0, math.pi / 2), CFrame.new(0, 0, 0), 0.2, true)
  for i = 0, 1, 0.015151515151515 do
    rwait()
  end
  Tween(HT, CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, 0, math.pi), CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, 0, math.pi / 1.7142857142857), 0.2, true)
  Tween(NK2, CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, 0, math.pi / 2.4), CFrame.new(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, 0, math.pi), 0.2, true)
  Tween(RW, CFrame.new(1, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(math.pi / 2, 0, math.pi / 2.75), CFrame.new(-0.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0), 0.2, true)
  Tween(LW, CFrame.new(-1.5, 0.5, 0.5) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi / 2) * CFrame.fromEulerAnglesXYZ(0, -math.pi / 2, math.pi / 16), CFrame.new(0.5, 0.5, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi / 2), 0.2, true)
  Tween(w1, CFrame.new(0, -1.75, 0) * CFrame.fromEulerAnglesXYZ(0, 0, math.pi / 2), CFrame.new(0, 0, 0), 0.2, true)
  for i = 0, 1, 0.083333333333333 do
    rwait()
  end
  coroutine.resume(coroutine.create(function()
    if Bloody == false then
      EBS(HandR, "Really black", "Black", false)
    else
      if Bloody == true then
        EBS(HandR, "Black", "Bright red", true)
      end
    end
  end
))
  BE2:Destroy()
  BE3:Destroy()
  BE4:Destroy()
  BE5:Destroy()
  for i = 0, 1, 0.16666666666667 do
    rwait()
  end
  SK2CD()
  Tween(HT, CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), 0.2, true)
  Tween(NK2, CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), CFrame.new(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), 0.2, true)
  Tween(RW, CFrame.new(1, 0.5, -0.25) * CFrame.fromAxisAngle(Vector3.new(0, -1, 0), -math.pi / 2) * CFrame.fromEulerAnglesXYZ(math.pi / 8, 0, math.pi / 3.7), CFrame.new(-0.5, 0.5, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), math.pi / 2), 0.2, true)
  Tween(LW, CFrame.new(-1, 0.5, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi / 2) * CFrame.fromEulerAnglesXYZ(-math.pi / 8, 0, -math.pi / 2.25), CFrame.new(0.5, 0.5, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi / 2), 0.2, true)
  Tween(RW2, CFrame.new(1, -1, 0) * CFrame.fromAxisAngle(Vector3.new(0, -1, 0), -math.pi / 2) * CFrame.fromEulerAnglesXYZ(0, 0, 0), CFrame.new(0.5, 1, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), math.pi / 2), 0.2, true)
  Tween(LW2, CFrame.new(-1, -1, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi / 2) * CFrame.fromEulerAnglesXYZ(0, 0, 0), CFrame.new(-0.5, 1, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi / 2), 0.2, true)
  Tween(w1, CFrame.new(0, -1.75, 0) * CFrame.fromEulerAnglesXYZ(0, 0, math.pi / 2), CFrame.new(0, 0, 0), 0.2, true)
  Character.Humanoid.WalkSpeed = 16
  for i = 0, 1, 0.055555555555556 do
    rwait()
  end
  attack = false
end

SK2CD = function()
  coroutine.resume(coroutine.create(function()
    for i = 0, 1, 0.0033333333333333 do
      CD2.Size = UDim2.new(1, 0, 1 - i, 0)
      CD2.Position = UDim2.new(-0.5, 0, i, 0)
      Time2 = i
      CT2.Text = math.ceil(5 - Time2 * 5)
      rwait()
    end
    Time2 = 0
    CT2.Text = ""
  end
))
end

SK3 = function(Bloody)
  attack = true
  local charging = true
  Character.Humanoid.WalkSpeed = 12
  coroutine.resume(coroutine.create(function()
    if dashing == true then
      movehold = false
      dashing = false
      Character.Humanoid.WalkSpeed = 4
      Tween(HT, CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), 0.2, true)
      Tween(NK2, CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), CFrame.new(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), 0.2, true)
      Tween(RW, CFrame.new(1, 0.5, -0.25) * CFrame.fromAxisAngle(Vector3.new(0, -1, 0), -math.pi / 2) * CFrame.fromEulerAnglesXYZ(math.pi / 8, 0, math.pi / 3.7), CFrame.new(-0.5, 0.5, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), math.pi / 2), 0.2, true)
      Tween(LW, CFrame.new(-1, 0.5, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi / 2) * CFrame.fromEulerAnglesXYZ(-math.pi / 8, 0, -math.pi / 2.25), CFrame.new(0.5, 0.5, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi / 2), 0.2, true)
      Tween(RW2, CFrame.new(1, -1, 0) * CFrame.fromAxisAngle(Vector3.new(0, -1, 0), -math.pi / 2) * CFrame.fromEulerAnglesXYZ(0, 0, 0), CFrame.new(0.5, 1, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), math.pi / 2), 0.2, true)
      Tween(LW2, CFrame.new(-1, -1, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi / 2) * CFrame.fromEulerAnglesXYZ(0, 0, 0), CFrame.new(-0.5, 1, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi / 2), 0.2, true)
      Tween(w1, CFrame.new(0, -1.75, 0) * CFrame.fromEulerAnglesXYZ(0, 0, math.pi / 2), CFrame.new(0, 0, 0), 0.2, true)
    end
  end
))
  local BE1 = Instance.new("Part", Effects)
  BE1.formFactor = 3
  BE1.Transparency = 1
  BE1.Anchored = false
  BE1.CanCollide = false
  BE1.Size = Vector3.new(0.2, 0.2, 0.2)
  BE1.CFrame = bld.CFrame
  BE1:BreakJoints()
  local BEW1 = Instance.new("Weld")
  BEW1.Parent = BE1
  BEW1.Part0 = BE1
  BEW1.Part1 = bld
  BEW1.C1 = CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
  BEM1 = Instance.new("SpecialMesh", BE1)
  if Bloody == true then
    BE1.BrickColor = BrickColor.new("Bright red")
    BEW1.C0 = CFrame.new(0, -2.5, 0) * CFrame.fromEulerAnglesXYZ(math.pi, math.pi / 2, 0)
    BEM1.MeshId = "http://www.roblox.com/asset/?id=96026548"
    BEM1.Scale = Vector3.new(1, 1, 1)
  else
    if Bloody == false then
      BE1.BrickColor = BrickColor.new("Really black")
      BEW1.C0 = CFrame.new(0, 0, -2.5) * CFrame.fromEulerAnglesXYZ(-math.pi / 2, 0, 0)
      BEM1.MeshId = "http://www.roblox.com/asset/?id=68253413"
      BEM1.Scale = Vector3.new(0.5, 0.5, 0.75)
    end
  end
  local BE2 = Instance.new("Part", Effects)
  BE2.formFactor = 3
  BE2.Transparency = 1
  BE2.Anchored = false
  BE2.BrickColor = BrickColor.new("Really black")
  BE2.CanCollide = false
  BE2.Size = Vector3.new(0.2, 0.2, 0.2)
  BE2.CFrame = bld.CFrame
  BE2:BreakJoints()
  local BEW2 = Instance.new("Weld")
  BEW2.Parent = BE2
  BEW2.Part0 = BE2
  BEW2.Part1 = bld
  BEW2.C0 = CFrame.new(0, 0, -5) * CFrame.fromEulerAnglesXYZ(-math.pi / 2, 0, 0)
  BEW2.C1 = CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
  Tween(HRW, CFrame.new(0, 0, 0), CFrame.new(0, 0, 0), 0.2, true)
  Tween(HT, CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), 0.2, true)
  Tween(NK2, CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), CFrame.new(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), 0.2, true)
  Tween(RW, CFrame.new(1, 0.25, -0.55) * CFrame.fromAxisAngle(Vector3.new(0, -1, 0), -math.pi / 2) * CFrame.fromEulerAnglesXYZ(math.pi / 8 + math.pi / 16, math.pi / 8, math.pi / 3.7 + math.pi / 16), CFrame.new(-0.5, 0.5, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), math.pi / 2), 0.2, true)
  Tween(LW, CFrame.new(-1, 0.5, 0.5) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi / 2) * CFrame.fromEulerAnglesXYZ(-math.pi / 8, math.pi / 8, -math.pi / 2.25), CFrame.new(0.5, 0.5, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi / 2), 0.2, true)
  Tween(RW2, CFrame.new(1, -1, 0) * CFrame.fromAxisAngle(Vector3.new(0, -1, 0), -math.pi / 2) * CFrame.fromEulerAnglesXYZ(0, 0, 0), CFrame.new(0.5, 1, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), math.pi / 2), 0.2, true)
  Tween(LW2, CFrame.new(-1, -1, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi / 2) * CFrame.fromEulerAnglesXYZ(0, 0, 0), CFrame.new(-0.5, 1, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi / 2), 0.2, true)
  Tween(w1, CFrame.new(0, -1.75, 0) * CFrame.fromEulerAnglesXYZ(0, math.pi / 2, math.pi / 2), CFrame.new(0, 0, 0), 0.2, true)
  coroutine.resume(coroutine.create(function()
    while charging == true do
      for i = 0, 1, 0.16666666666667 do
        rwait()
      end
      MMMAGIC(bld, 3, 3, 3, 0, 0, 0, BrickColor.new("Black"))
      MMMAGIC2(bld, 2, 2, 2, 0, 0, 0, BrickColor.new("Black"))
    end
  end
))
  for i = 0, 1, 0.055555555555556 do
    rwait()
    BE1.Transparency = 1 - 0.8 * i
  end
  Tween(HT, CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, 0, math.pi / 1.7142857142857), 0.2, true)
  Tween(RW, CFrame.new(1, 0.25, 0) * CFrame.fromAxisAngle(Vector3.new(0, -1, 0), -math.pi / 2) * CFrame.fromEulerAnglesXYZ(math.pi / 8 + math.pi / 4, math.pi / 8, math.pi / 3.7 + math.pi / 16), CFrame.new(-0.5, 0.5, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), math.pi / 2), 0.2, true)
  Tween(LW, CFrame.new(-1, 0.5, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi / 2) * CFrame.fromEulerAnglesXYZ(-math.pi / 8, math.pi / 8, -math.pi / 3), CFrame.new(0.5, 0.5, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi / 2) * CFrame.fromEulerAnglesXYZ(-math.pi / 3, 0, 0), 0.2, true)
  Tween(w1, CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(0, math.pi / 2, math.pi / 2.5), CFrame.new(0, 0, 0), 0.2, true)
  hitbox(BE1, 3, 15, 0.2, false, false, delwut, false, var1, var2, color, false, splashsize, false)
  hitbox(BE2, 3, 10, 0.2, false, false, delwut, false, var1, var2, color, false, splashsize, false)
  hitbox(bld, 3, 10, 0.2, false, false, delwut, false, var1, var2, color, false, splashsize, false)
  if Bloody == true then
    coroutine.resume(coroutine.create(function()
    for i = 0, 1, 0.13333333333333 do
      for i = 0, 1, 0.83333333333333 do
        rwait()
      end
      MMMAGICB(BE1, 1, 1, 1, math.random(-2, 2), math.random(-2, 2), math.random(-2, 2), BrickColor.new("Black"))
    end
  end
))
  end
  for i = 0, 1, 0.041666666666667 do
    rwait()
  end
  Tween(HT, CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), 0.5, true)
  Tween(NK2, CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), CFrame.new(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), 0.5, true)
  Tween(RW, CFrame.new(1, 0.5, -0.25) * CFrame.fromAxisAngle(Vector3.new(0, -1, 0), -math.pi / 2) * CFrame.fromEulerAnglesXYZ(math.pi / 8, 0, math.pi / 3.7), CFrame.new(-0.5, 0.5, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), math.pi / 2), 0.5, true)
  Tween(LW, CFrame.new(-1, 0.5, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi / 2) * CFrame.fromEulerAnglesXYZ(-math.pi / 8, 0, -math.pi / 2.25), CFrame.new(0.5, 0.5, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi / 2), 0.5, true)
  Tween(RW2, CFrame.new(1, -1, 0) * CFrame.fromAxisAngle(Vector3.new(0, -1, 0), -math.pi / 2) * CFrame.fromEulerAnglesXYZ(0, 0, 0), CFrame.new(0.5, 1, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), math.pi / 2), 0.5, true)
  Tween(LW2, CFrame.new(-1, -1, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi / 2) * CFrame.fromEulerAnglesXYZ(0, 0, 0), CFrame.new(-0.5, 1, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi / 2), 0.5, true)
  Tween(w1, CFrame.new(0, -1.75, 0) * CFrame.fromEulerAnglesXYZ(0, 0, math.pi / 2), CFrame.new(0, 0, 0), 0.5, true)
  for i = 0, 1, 0.033333333333333 do
    rwait()
    if Bloody == true then
      BEM1.Scale = Vector3.new(1, 1 - 1 * i, 1)
      BEW1.C0 = CFrame.new(0, -2.5 + 2.5 * i, 0) * CFrame.fromEulerAnglesXYZ(math.pi, math.pi / 2, 0)
    else
      if Bloody == false then
        BEM1.Scale = Vector3.new(0.5, 0.5, 0.75 - 0.75 * i)
        BEW1.C0 = CFrame.new(0, 0, -2.5 + 2.5 * i) * CFrame.fromEulerAnglesXYZ(-math.pi / 2, 0, 0)
      end
    end
  end
  BE1:Destroy()
  BE2:Destroy()
  charging = false
  Character.Humanoid.WalkSpeed = 16
  SK3CD()
  for i = 0, 1, 0.16666666666667 do
    rwait()
  end
  attack = false
end

SK3CD = function()
  coroutine.resume(coroutine.create(function()
    for i = 0, 1, 0.0018518518518519 do
      CD3.Size = UDim2.new(1, 0, 1 - i, 0)
      CD3.Position = UDim2.new(-0.5, 0, i, 0)
      Time3 = i
      CT3.Text = math.ceil(9 - Time3 * 9)
      rwait()
    end
    Time3 = 0
    CT3.Text = ""
  end
))
end

Z = function()
  Character.Humanoid.WalkSpeed = 12
  Tween(HT, CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, 0, math.pi / 1.7142857142857), 0.2, true)
  Tween(NK2, CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, 0, math.pi / 2.4), CFrame.new(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), 0.2, true)
  Tween(RW, CFrame.new(1, 0.5, -0.25) * CFrame.fromAxisAngle(Vector3.new(0, -1, 0), -math.pi / 2) * CFrame.fromEulerAnglesXYZ(math.pi / 8, -math.pi / 4, math.pi / 3.7), CFrame.new(-0.5, 0.5, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), math.pi / 2), 0.2, true)
  Tween(LW, CFrame.new(-1, 0.5, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi / 2) * CFrame.fromEulerAnglesXYZ(-math.pi / 8 + math.pi / 16, 0, -math.pi / 2.25 + math.pi / 16), CFrame.new(0.5, 0.5, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi / 2) * CFrame.fromEulerAnglesXYZ(-math.pi / 4, 0, 0), 0.2, true)
  Tween(RW2, CFrame.new(1, -1, 0) * CFrame.fromAxisAngle(Vector3.new(0, -1, 0), -math.pi / 2) * CFrame.fromEulerAnglesXYZ(0, 0, 0), CFrame.new(0.5, 1, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), math.pi / 2), 0.2, true)
  Tween(LW2, CFrame.new(-1, -1, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi / 2) * CFrame.fromEulerAnglesXYZ(0, 0, 0), CFrame.new(-0.5, 1, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi / 2), 0.2, true)
  Tween(w1, CFrame.new(0, -1.75, 0) * CFrame.fromEulerAnglesXYZ(math.pi / 6, math.pi / 2 - math.pi / 2, math.pi / 2 + math.pi / 16), CFrame.new(0, 0, 0), 0.2, true)
  for i = 0, 1, 0.055555555555556 do
    rwait()
  end
  Tween(HT, CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, 0, math.pi / 2.4), 0.2, true)
  Tween(RW, CFrame.new(0.5, 0.5, -0.5) * CFrame.fromAxisAngle(Vector3.new(0, -1, 0), -math.pi / 2) * CFrame.fromEulerAnglesXYZ(math.pi / 8, math.pi / 6, math.pi / 3.7), CFrame.new(-0.5, 0.5, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), math.pi / 2), 0.2, true)
  Tween(LW, CFrame.new(-1, 0.5, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi / 2) * CFrame.fromEulerAnglesXYZ(-math.pi / 8 + math.pi / 16, 0, -math.pi / 2.25 + math.pi / 8), CFrame.new(0.5, 0.5, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi / 2) * CFrame.fromEulerAnglesXYZ(math.pi / 4, 0, 0), 0.2, true)
  Tween(w1, CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(-math.pi / 6, math.pi / 2 - math.pi / 2, math.pi / 2 - math.pi / 16), CFrame.new(0, 0, 0), 0.2, true)
  hitbox(prt3, 3, 8, 0.2, true, false, delwut, false, var1, var2, false, false)
  for i = 0, 1, 0.066666666666667 do
    rwait()
  end
  Tween(HT, CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), 0.2, true)
  Tween(NK2, CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), CFrame.new(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), 0.2, true)
  Tween(RW, CFrame.new(1, 0.5, -0.25) * CFrame.fromAxisAngle(Vector3.new(0, -1, 0), -math.pi / 2) * CFrame.fromEulerAnglesXYZ(math.pi / 8, 0, math.pi / 3.7), CFrame.new(-0.5, 0.5, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), math.pi / 2), 0.2, true)
  Tween(LW, CFrame.new(-1, 0.5, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi / 2) * CFrame.fromEulerAnglesXYZ(-math.pi / 8, 0, -math.pi / 2.25), CFrame.new(0.5, 0.5, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi / 2), 0.2, true)
  Tween(RW2, CFrame.new(1, -1, 0) * CFrame.fromAxisAngle(Vector3.new(0, -1, 0), -math.pi / 2) * CFrame.fromEulerAnglesXYZ(0, 0, 0), CFrame.new(0.5, 1, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), math.pi / 2), 0.2, true)
  Tween(LW2, CFrame.new(-1, -1, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi / 2) * CFrame.fromEulerAnglesXYZ(0, 0, 0), CFrame.new(-0.5, 1, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi / 2), 0.2, true)
  Tween(w1, CFrame.new(0, -1.75, 0) * CFrame.fromEulerAnglesXYZ(0, 0, math.pi / 2), CFrame.new(0, 0, 0), 0.2, true)
  Character.Humanoid.WalkSpeed = 16
  for i = 0, 1, 0.055555555555556 do
    rwait()
  end
  attack = false
end

X = function()
  Atik.Value = 30
  attack = true
  Mana.Value = Mana.Value - 5
  Tween(HT, CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0), CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), 0.2, true)
  Tween(HRW, CFrame.new(0, 0, 0), CFrame.new(0, 0, 0), 0.2, true)
  Tween(NK2, CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0), CFrame.new(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), 0.2, true)
  Tween(RW, CFrame.new(1, 0.5, 0) * CFrame.fromAxisAngle(Vector3.new(0, -1, 0), -math.pi / 2) * CFrame.fromEulerAnglesXYZ(0, 0, math.pi / 2), CFrame.new(-0.5, 0.5, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), math.pi / 2), 0.2, true)
  Tween(LW, CFrame.new(-1, 0.5, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi / 2) * CFrame.fromEulerAnglesXYZ(-math.pi / 18, 0, 0), CFrame.new(0.5, 0.5, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi / 2), 0.2, true)
  Tween(RW2, CFrame.new(1, -1, 0) * CFrame.fromAxisAngle(Vector3.new(0, -1, 0), -math.pi / 2) * CFrame.fromEulerAnglesXYZ(0, 0, 0), CFrame.new(0.5, 1, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), math.pi / 2), 0.2, true)
  Tween(LW2, CFrame.new(-1, -1, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi / 2) * CFrame.fromEulerAnglesXYZ(0, 0, 0), CFrame.new(-0.5, 1, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi / 2), 0.2, true)
  Tween(wld1m, CFrame.new(3, -2, -3), CFrame.new(0, 0, 0), 0.2, true)
  Tween(wld1r, CFrame.new(-3, -2, -3), CFrame.new(0, 0, 0), 0.2, true)
  for i = 0, 1, 0.055555555555556 do
    rwait()
  end
  Tween(HT, CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, 0, math.pi / 10), 0.2, true)
  Tween(RW, CFrame.new(1, 0.5, 0) * CFrame.fromAxisAngle(Vector3.new(0, -1, 0), -math.pi / 2) * CFrame.fromEulerAnglesXYZ(0, 0, math.pi / 2), CFrame.new(-0.5, 0.5, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), math.pi / 2) * CFrame.fromEulerAnglesXYZ(-math.pi / 10, 0, 0), 0.2, true)
  Tween(LW, CFrame.new(-1, 0.5, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi / 2) * CFrame.fromEulerAnglesXYZ(-math.pi / 18, 0, 0), CFrame.new(0.5, 0.5, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi / 2), 0.2, true)
  coroutine.resume(coroutine.create(function()
    EBS(HandR)
  end
))
  for i = 0, 1, 0.055555555555556 do
    rwait()
  end
  table.insert(combo, 1, "X")
  didatk = true
  attack = false
end

EBS = function(part, Color1, Color2, Bloody)
  local EB1 = Instance.new("Model", Effects)
  local BE0 = Instance.new("Part", EB1)
  BE0.formFactor = 3
  BE0.Transparency = 1
  BE0.Anchored = true
  BE0.BrickColor = BrickColor.new("Institutional white")
  BE0.CanCollide = false
  BE0.Size = Vector3.new(0.2, 0.2, 0.2)
  BE0.CFrame = part.CFrame
  BE0:BreakJoints()
  local BE00 = Instance.new("Part", EB1)
  BE00.formFactor = 3
  BE00.Transparency = 1
  BE00.Anchored = false
  BE00.BrickColor = BrickColor.new("Institutional white")
  BE00.CanCollide = false
  BE00.Size = Vector3.new(0.2, 0.2, 0.2)
  BE00.CFrame = part.CFrame
  BE00:BreakJoints()
  local BEW0 = Instance.new("Weld")
  BEW0.Parent = BE00
  BEW0.Part0 = BE00
  BEW0.Part1 = BE0
  BEW0.C0 = CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
  BEW0.C1 = CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
  local BE1 = Instance.new("Part", EB1)
  BE1.formFactor = 3
  BE1.Transparency = 1
  BE1.Anchored = false
  BE1.BrickColor = BrickColor.new("Really black")
  BE1.CanCollide = false
  BE1.Size = Vector3.new(0.2, 0.2, 0.2)
  BE1.CFrame = part.CFrame
  BE1:BreakJoints()
  local BEW1 = Instance.new("Weld")
  BEW1.Parent = BE1
  BEW1.Part0 = BE1
  BEW1.Part1 = BE00
  BEW1.C0 = CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
  BEW1.C1 = CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
  BEM1 = Instance.new("SpecialMesh", BE1)
  BEM1.MeshId = "http://www.roblox.com/asset/?id=1185246"
  BEM1.Scale = Vector3.new(1, 1, 1)
  local BE2 = Instance.new("Part", EB1)
  BE2.formFactor = 3
  BE2.Transparency = 0.5
  BE2.Anchored = false
  BE2.BrickColor = BrickColor.new(Color1)
  BE2.CanCollide = false
  BE2.Size = Vector3.new(0.2, 0.2, 0.2)
  BE2.CFrame = part.CFrame
  BE2:BreakJoints()
  local BEW2 = Instance.new("Weld")
  BEW2.Parent = BE2
  BEW2.Part0 = BE2
  BEW2.Part1 = BE1
  BEW2.C0 = CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
  BEW2.C1 = CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
  local BEM2 = Instance.new("SpecialMesh", BE2)
  BEM2.MeshId = "http://www.roblox.com/asset/?id=1185246"
  BEM2.Scale = Vector3.new(-3, -3, -3)
  local BE3 = Instance.new("Part", EB1)
  BE3.Name = "Test"
  BE3.formFactor = 3
  BE3.Transparency = 0.2
  BE3.Anchored = false
  BE3.BrickColor = BrickColor.new(Color2)
  BE3.CanCollide = false
  BE3.Size = Vector3.new(2, 2, 2)
  BE3.CFrame = part.CFrame
  BE3.Material = "SmoothPlastic"
  BE3:BreakJoints()
  local BEW3 = Instance.new("Weld")
  BEW3.Parent = BE3
  BEW3.Part0 = BE3
  BEW3.Part1 = BE2
  BEW3.C0 = CFrame.new(1, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
  BEW3.C1 = CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
  local BE4 = Instance.new("Part", EB1)
  BE4.Name = "Test"
  BE4.formFactor = 3
  BE4.Transparency = 0.2
  BE4.Anchored = false
  BE4.BrickColor = BrickColor.new(Color2)
  BE4.CanCollide = false
  BE4.Size = Vector3.new(2, 2, 2)
  BE4.CFrame = part.CFrame
  BE4.Material = "SmoothPlastic"
  BE4:BreakJoints()
  local BEW4 = Instance.new("Weld")
  BEW4.Parent = BE4
  BEW4.Part0 = BE4
  BEW4.Part1 = BE2
  BEW4.C0 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
  BEW4.C1 = CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
  local BE5 = Instance.new("Part", EB1)
  BE5.Name = "Test"
  BE5.formFactor = 3
  BE5.Transparency = 0.2
  BE5.Anchored = false
  BE5.BrickColor = BrickColor.new(Color2)
  BE5.CanCollide = false
  BE5.Size = Vector3.new(2, 2, 2)
  BE5.CFrame = part.CFrame
  BE5.Material = "SmoothPlastic"
  BE5:BreakJoints()
  local BEW5 = Instance.new("Weld")
  BEW5.Parent = BE5
  BEW5.Part0 = BE5
  BEW5.Part1 = BE2
  BEW5.C0 = CFrame.new(0, 0, 1) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
  BEW5.C1 = CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
  coroutine.resume(coroutine.create(function()
    while 1 do
      rwait()
      for i = 0, 1, 0.05 do
        rwait()
        BEW3.C0 = CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(0, math.pi * 2 * i, 0)
        BEW4.C0 = CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, math.pi * 2 * i)
        BEW5.C0 = CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(math.pi * 2 * i, 0, 0)
      end
    end
  end
))
  if Bloody ~= true then
    hitbox(BE1, 5, 15, 1, false, true, EB1, true, 5, 4, "Black", true, 10, false)
  else
    if Bloody == true then
      hitbox(BE1, 7.5, 15, 1, false, true, EB1, true, 6, 5, "Bright red", true, 15, true)
    end
  end
  for i = 0, 1, 0.016666666666667 do
    rwait()
    BEW1.C0 = CFrame.new(0, 0, 72 * i) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
  end
  if EB1.Parent == Effects then
    MMMAGIC(BE1, 3, 3, 3, 0, 0, 0, BrickColor.new("Black"))
    MMMAGIC2(BE1, 2, 2, 2, 0, 0, 0, BrickColor.new("Black"))
    EB1.Parent = nil
  end
end

cs = function(parent, p)
  local SlashSound = Instance.new("Sound")
  SlashSound.SoundId = "http://www.roblox.com/asset/?id=2101137"
  SlashSound.Parent = parent
  SlashSound.Volume = 0.7
  SlashSound.Pitch = p
  SlashSound.PlayOnRemove = true
  coroutine.resume(coroutine.create(function()
    wait()
    SlashSound.Parent = nil
  end
))
end

manaregen = 4
manalight = BrickColor.new("Bright red")
AddMana = function(add)
  Mana.Value = Mana.Value + add
end

ManaCharge = function()
  attack = true
  Tween(RW, CFrame.new(1, 0.5, -0.5) * CFrame.Angles(math.pi / 2, 0, -math.pi / 4), CFrame.new(0, 0.5, 0) * CFrame.Angles(-math.pi / 4, 0, 0), 0.5, true)
  Tween(LW, CFrame.new(-1, 0.5, -0.5) * CFrame.Angles(math.pi / 2, math.rad(0), math.pi / 4), CFrame.new(0, 0.5, 0) * CFrame.Angles(-math.pi / 4, 0, 0), 0.5, true)
  Tween(w1, CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, math.pi / 2), CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, -math.pi / 2), 0.5, true)
  Tween(NK2, CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0) * CFrame.fromEulerAnglesXYZ(-math.pi / 9, 0, math.pi / 9), CFrame.new(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0), 0.5, true)
  for i = 0, 1, 0.027777777777778 do
    rwait()
  end
  Tween(RW, CFrame.new(1, 0.5, -0.5) * CFrame.Angles(math.pi / 2, math.rad(0), -math.pi / 4), CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0), 0.25, true)
  Tween(LW, CFrame.new(-1, 0.5, -0.5) * CFrame.Angles(math.pi / 2, math.rad(0), math.pi / 4), CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0), 0.25, true)
  Tween(w1, CFrame.new(0, -1, 0) * CFrame.fromEulerAnglesXYZ(0, 0, math.pi / 2), CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, -math.pi / 2), 0.25, true)
  Tween(NK2, CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0), CFrame.new(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0), 0.25, true)
  for i = 0, 1, 0.047619047619048 do
    rwait()
  end
  ii = 0
  d = false
  Character.Humanoid.WalkSpeed = 5
  cs(Head, 0.5)
  repeat
    wait(0.1)
    ii = ii + 10
    AddMana(manaregen)
    coroutine.resume(coroutine.create(function()
    local meshb1 = Instance.new("SpecialMesh")
    meshb1.Scale = Vector3.new(3, 2, 3)
    meshb1.MeshId = "http://www.roblox.com/asset/?id=20329976"
    local shellb1 = Instance.new("Part")
    meshb1.Parent = shellb1
    shellb1.Anchored = true
    shellb1.formFactor = 3
    shellb1.Size = Vector3.new(1, 1, 1)
    shellb1.CFrame = CFrame.new(Torso.Position) * CFrame.new(0, -2, 0) * CFrame.Angles(0, math.rad(ii), 0)
    shellb1.Parent = Effects
    shellb1.Transparency = 1
    shellb1.BrickColor = BrickColor.new("Really black")
    shellb1.CanCollide = false
    light6 = Instance.new("PointLight")
    light6.Parent = shellb1
    light6.Brightness = 14
    light6.Range = 10
    light6.Color = manalight.Color
    for i = 0, 1, 0.05 do
      wait()
      shellb1.Transparency = 1 - 1 * i
      meshb1.Scale = Vector3.new(3 + 1 * i, 2 - 0.5 * i, 3 + 1 * i)
    end
    for i = 0, 1, 0.05 do
      wait()
      shellb1.Transparency = 1 * i
      meshb1.Scale = Vector3.new(4 + 1 * i, 1.5 - 1.5 * i, 4 + 1 * i)
    end
    shellb1.Parent = nil
  end
))
    coroutine.resume(coroutine.create(function()
    if not d then
      local meshb = Instance.new("SpecialMesh")
      meshb.Scale = Vector3.new(0, 0, 0)
      meshb.MeshId = "http://www.roblox.com/Asset/?id=9756362"
      local shellb = Instance.new("Part")
      meshb.Parent = shellb
      shellb.Anchored = true
      shellb.formFactor = 3
      shellb.Size = Vector3.new(1, 1, 1)
      shellb.CFrame = CFrame.new(Torso.Position) * CFrame.new(math.random(-5, 5), math.random(-2, 5), math.random(-5, 5))
      shellb.Parent = Effects
      shellb.Reflectance = 0.2
      shellb.Transparency = 1
      if math.random(1, 2) == 1 then
        shellb.BrickColor = BrickColor.new("Black")
      else
        shellb.BrickColor = BrickColor.new("Bright red")
      end
      shellb.CanCollide = false
      d = true
      coroutine.resume(coroutine.create(function()
      wait(0.1)
      d = false
    end
))
      for i = 0, 1, 0.1 do
        wait()
        meshb.Scale = Vector3.new(0.5 * i, 1 * i, 0.5 * i)
        shellb.Transparency = 1 - 1 * i
      end
      for i = 0, 1, 0.1 do
        wait()
        meshb.Scale = Vector3.new(0.5 + 0.5 * i, 1 + 1 * i, 0.5 + 0.5 * i)
        shellb.Transparency = 1 * i
      end
      shellb.Parent = nil
    end
  end
))
  until not buttonhold or Mana.MaxValue <= Mana.Value
  Character.Humanoid.WalkSpeed = 16
  buttonhold = false
  Tween(RW, CFrame.new(1, 0.5, -0.25) * CFrame.fromAxisAngle(Vector3.new(0, -1, 0), -math.pi / 2) * CFrame.fromEulerAnglesXYZ(math.pi / 8, 0, math.pi / 3.7), CFrame.new(-0.5, 0.5, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), math.pi / 2), 0.5, true)
  Tween(LW, CFrame.new(-1, 0.5, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi / 2) * CFrame.fromEulerAnglesXYZ(-math.pi / 8, 0, -math.pi / 2.25), CFrame.new(0.5, 0.5, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi / 2), 0.5, true)
  Tween(w1, CFrame.new(0, -1.75, 0) * CFrame.fromEulerAnglesXYZ(0, 0, math.pi / 2), CFrame.new(0, 0, 0), 0.5, true)
  attack = false
end

ob1d = function(mouse)
  if attack == false and skilluse == false and dashing == false then
    attack = true
    Z()
  end
end

ob1u = function(mouse)
end

ob2d = function(mouse)
end

ob2u = function(mouse)
end

key = function(key)
  if key == "f" and attack == false then
    buttonhold = true
    ManaCharge()
  end
  if key == "q" and attack == false then
    if Infusion == false then
      Infusion = true
      BL3.Visible = false
    else
      if Infusion == true then
        Infusion = false
        BL3.Visible = true
      end
    end
  end
  if key == "e" and skilluse == false and attack == false then
    SK1Hold = true
    SK1()
  end
  if key == "z" and Time1 == 0 and skilluse == false and attack == false and Mana.Value >= 15 then
    if Infusion == true and Blood.Value >= 15 then
      Mana.Value = Mana.Value - 15
      SKP2()
      Blood.Value = Blood.Value - 15
    else
      Mana.Value = Mana.Value - 15
      ZHold = true
      SKP()
    end
  end
  if key == "x" and Time2 == 0 and skilluse == false and attack == false and Mana.Value >= 15 then
    Mana.Value = Mana.Value - 15
    if Infusion == true and Blood.Value >= 15 then
      Blood.Value = Blood.Value - 15
      SK2(true)
    else
      SK2(false)
    end
  end
  if key == "c" and Time3 == 0 and skilluse == false and attack == false and Mana.Value >= 25 then
    Mana.Value = Mana.Value - 25
    if Infusion == true and Blood.Value >= 25 then
      Blood.Value = Blood.Value - 25
      SK3(true)
    else
      SK3(false)
    end
  end
end

key2 = function(key)
  if key == "e" then
    SK1Hold = false
  end
  if key == "z" then
    ZHold = false
  end
  if key == "f" then
    buttonhold = false
  end
end

s = function(mouse)
  mouse.Button1Down:connect(function()
    ob1d(mouse)
  end
)
  mouse.Button1Up:connect(function()
    ob1u(mouse)
  end
)
  mouse.Button2Down:connect(function()
    ob2d(mouse)
  end
)
  mouse.Button2Up:connect(function()
    ob2u(mouse)
  end
)
  mouse.KeyDown:connect(key)
  mouse.KeyUp:connect(key2)
  unsheathed = true
  player = Player
  ch = Character
  MMouse = mouse
  RSH = ch.Torso["Right Shoulder"]
  LSH = ch.Torso["Left Shoulder"]
  RSH.Parent = nil
  LSH.Parent = nil
  RH.Parent = nil
  LH.Parent = nil
  NK.Parent = nil
  HT = Weld(ch.Torso, ch.HumanoidRootPart, CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), true)
  NK2 = Weld(ch.Head, ch.Torso, CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), CFrame.new(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), true)
  RW = Weld(ch["Right Arm"], ch.Torso, CFrame.new(1, 0.5, -0.25) * CFrame.fromAxisAngle(Vector3.new(0, -1, 0), -math.pi / 2) * CFrame.fromEulerAnglesXYZ(math.pi / 8, 0, math.pi / 3.7), CFrame.new(-0.5, 0.5, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), math.pi / 2), true)
  RW2 = Weld(ch["Right Leg"], ch.Torso, CFrame.new(1, -1, 0) * CFrame.fromAxisAngle(Vector3.new(0, -1, 0), -math.pi / 2), CFrame.new(0.5, 1, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), math.pi / 2), true)
  LW = Weld(ch["Left Arm"], ch.Torso, CFrame.new(-1, 0.5, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi / 2) * CFrame.fromEulerAnglesXYZ(-math.pi / 8, 0, -math.pi / 2.25), CFrame.new(0.5, 0.5, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi / 2), true)
  LW2 = Weld(ch["Left Leg"], ch.Torso, CFrame.new(-1, -1, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi / 2), CFrame.new(-0.5, 1, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi / 2), true)
  w1.C0 = CFrame.new(0, -1.75, 0) * CFrame.fromEulerAnglesXYZ(0, 0, math.pi / 2)
end

ds = function(mouse)
  wait()
  RW.Parent = nil
  LW.Parent = nil
  RW2.Parent = nil
  LW2.Parent = nil
  NK2.Parent = nil
  RSH.Parent = Character.Torso
  LSH.Parent = Character.Torso
  RH.Parent = Character.Torso
  LH.Parent = Character.Torso
  NK.Parent = Character.Torso
end

Bin.Selected:connect(s)
Bin.Deselected:connect(ds)
SK1CD()
SK2CD()
SK3CD()
coroutine.resume(coroutine.create(function()
  while 1 do
    rwait()
    MT.Text = "" .. Mana.Value .. "/100"
    BLT.Text = "" .. Blood.Value .. "/50"
    MB.Size = UDim2.new(1 * (Mana.Value / 100), 0, 1, 0)
    BL2.Size = UDim2.new(2 * Blood.Value / 50, 0, 2 * Blood.Value / 50, 0)
    BL2.Position = UDim2.new(-1 * Blood.Value / 50, 0, -0.45 * Blood.Value / 50, 0)
    mshbd.Scale = Vector3.new(5 * Blood.Value / 50, 5 * Blood.Value / 50, 5 * Blood.Value / 50)
  end
end
))
coroutine.resume(coroutine.create(function()
  while 1 do
    rwait()
    if attack == false then
      Atik.Value = Atik.Value - 1
      if Atik.Value == 0 then
        if skilluse == false and dashing == false and didatk == true then
          didatk = false
          Tween(HRW, CFrame.new(0, 0, 0), CFrame.new(0, 0, 0), 0.2, true)
          Tween(HT, CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0), CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), 0.2, true)
          Tween(NK2, CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0), CFrame.new(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), 0.2, true)
          Tween(RW, CFrame.new(1, 0.5, 0) * CFrame.fromAxisAngle(Vector3.new(0, -1, 0), -math.pi / 2) * CFrame.fromEulerAnglesXYZ(-math.pi / 18, 0, 0), CFrame.new(-0.5, 0.5, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), math.pi / 2), 0.2, true)
          Tween(LW, CFrame.new(-1, 0.5, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi / 2) * CFrame.fromEulerAnglesXYZ(-math.pi / 18, 0, 0), CFrame.new(0.5, 0.5, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi / 2), 0.2, true)
          Tween(RW2, CFrame.new(1, -1, 0) * CFrame.fromAxisAngle(Vector3.new(0, -1, 0), -math.pi / 2) * CFrame.fromEulerAnglesXYZ(0, 0, 0), CFrame.new(0.5, 1, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), math.pi / 2), 0.2, true)
          Tween(LW2, CFrame.new(-1, -1, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi / 2) * CFrame.fromEulerAnglesXYZ(0, 0, 0), CFrame.new(-0.5, 1, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi / 2), 0.2, true)
        end
        for i = 1, #combo do
          table.remove(combo, i)
        end
      end
    end
  end
end
))

