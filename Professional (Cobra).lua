Player = game.Players.LocalPlayer
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
Head = Character.Head
Humanoid = Character.Humanoid
LeftArm = Character["Left Arm"]
LeftLeg = Character["Left Leg"]
MMouse = nil
RightArm = Character["Right Arm"]
RightLeg = Character["Right Leg"]
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
RH = Torso["Right Hip"]
Neck = Torso.Neck
attacktype = 1
vt = Vector3.new
cf = CFrame.new
mana = 100
euler = CFrame.fromEulerAnglesXYZ
angles = CFrame.Angles
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
equipped = true
local Anim = "Idle"
local Effects = {}
cam = workspace.CurrentCamera
ZTarget = nil
RocketTarget = nil
local RbxUtility = LoadLibrary("RbxUtility")
local Create = RbxUtility.Create
Humanoid.WalkSpeed = 20
local m = Create("Model")({Parent = Character, Name = "WeaponModel"})
mouse = Player:GetMouse()
RSH = nil
LH = Torso["Left Hip"]
RH = Torso["Right Hip"]
RSH = Torso["Right Shoulder"]
LSH = Torso["Left Shoulder"]
RSH.Parent = nil
LSH.Parent = nil
RW = Create("Weld")({Name = "Right Shoulder", Part0 = Torso, C0 = cf(1.5, 0.5, 0), C1 = cf(0, 0.5, 0), Part1 = RightArm, Parent = Torso})
LW = Create("Weld")({Name = "Left Shoulder", Part0 = Torso, C0 = cf(-1.5, 0.5, 0), C1 = cf(0, 0.5, 0), Part1 = LeftArm, Parent = Torso})
if PlayerGui:findFirstChild("manaGUI", true) ~= nil then
  PlayerGui:findFirstChild("manaGUI", true).Parent = nil
end
local fengui = Instance.new("GuiMain")
fengui.Parent = PlayerGui
fengui.Name = "manaGUI"
local fenframe = Instance.new("Frame")
fenframe.Parent = fengui
fenframe.BackgroundColor3 = Color3.new(255, 255, 255)
fenframe.BackgroundTransparency = 1
fenframe.BorderColor3 = Color3.new(17, 17, 17)
fenframe.Size = UDim2.new(0.0500000007, 0, 0.100000001, 0)
local fentext = Instance.new("TextLabel")
fentext.Parent = fenframe
fentext.Text = "Energy(" .. mana .. ")"
fentext.BackgroundTransparency = 1
fentext.SizeConstraint = "RelativeXY"
fentext.TextXAlignment = "Center"
fentext.TextYAlignment = "Center"
fentext.Position = UDim2.new(0, 80, 1, 200)
local fentext2 = Instance.new("TextLabel")
fentext2.Parent = fenframe
fentext2.Text = " "
fentext2.BackgroundTransparency = 0
fentext2.BackgroundColor3 = Color3.new(0, 0, 0)
fentext2.SizeConstraint = "RelativeXY"
fentext2.TextXAlignment = "Center"
fentext2.TextYAlignment = "Center"
fentext2.Position = UDim2.new(0, 10, 1, 170)
fentext2.Size = UDim2.new(2.79999995, 0, 0.210000306, 0)
local fentext3 = Instance.new("TextLabel")
fentext3.Parent = fenframe
fentext3.Text = " "
fentext3.BackgroundTransparency = 0
fentext3.BackgroundColor3 = Color3.new(1, 1, 0)
fentext3.SizeConstraint = "RelativeXY"
fentext3.TextXAlignment = "Center"
fentext3.TextYAlignment = "Center"
fentext3.Position = UDim2.new(0, 10, 1, 170)
fentext3.Size = UDim2.new(mana / 100, 0, 0.400000006, 0)
coroutine.resume(coroutine.create(function()
  while 1 do
    wait(0.1)
    fentext3.Size = UDim2.new(mana / 3, 0, 0.200000006, 0)
    fentext.Text = "Ammo..(" .. mana .. "%)"
    fentext3.BackgroundColor3 = Color3.new(0, 0, 1)
    fentext.TextStrokeTransparency = 0
    fentext.TextColor3 = Color3.new(0, 0, 1)
  end
end
))
coroutine.resume(coroutine.create(function()
  while 1 do
    wait(3.5)
    if mana <= 0 and attack == false then
      attack = false
    end
    if mana >= 10 or attack == false then
      mana = 10
    end
  end
end
))
NoOutline = function(Part)
  Part.TopSurface = 10
end

ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "Heartbeat"
script:WaitForChild("Heartbeat")
frame = 0.033333333333333
if game.Players.LocalPlayer.FPSCH.Value == true then
  frame = 0.016666666666667
else
  frame = 0.033333333333333
end
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

nooutline = function(part)
  part.TopSurface = 10
end

part = function(formfactor, parent, material, reflectance, transparency, brickcolor, name, size)
  local fp = Create("Part")({formFactor = formfactor, Parent = parent, Reflectance = reflectance, Transparency = transparency, CanCollide = false, Locked = true, BrickColor = BrickColor.new(tostring(brickcolor)), Name = name, Size = size, Position = Character.Torso.Position, Material = material})
  nooutline(fp)
  return fp
end

mesh = function(Mesh, part, meshtype, meshid, offset, scale)
  local Msh = Create(Mesh)({Parent = part, Offset = offset, Scale = scale})
  if Mesh == "SpecialMesh" then
    Msh.MeshType = meshtype
    Msh.MeshId = meshid
  end
  return Msh
end

weld = function(parent, part0, part1, c0, c1)
  local Weld = Create("Weld")({Parent = parent, Part0 = part0, Part1 = part1, C0 = c0, C1 = c1})
  return Weld
end

local CFrameFromTopBack = function(at, top, back)
  local right = top:Cross(back)
  return CFrame.new(at.x, at.y, at.z, right.x, top.x, back.x, right.y, top.y, back.y, right.z, top.z, back.z)
end

Triangle = function(a, b, c)
  local edg1 = c - a:Dot(b - a.unit)
  local edg2 = a - b:Dot(c - b.unit)
  local edg3 = b - c:Dot(a - c.unit)
  if edg1 <= (b - a).magnitude and edg1 >= 0 then
    a = a
  else
    -- DECOMPILER ERROR at PC35: Overwrote pending register: R1 in 'AssignReg'

    if edg2 <= (c - b).magnitude and edg2 >= 0 then
      a = b
    else
      -- DECOMPILER ERROR at PC46: Overwrote pending register: R2 in 'AssignReg'

      -- DECOMPILER ERROR at PC47: Overwrote pending register: R1 in 'AssignReg'

      if edg3 <= (a - c).magnitude and edg3 >= 0 then
        a = c
      else
        assert(false, "unreachable")
      end
    end
  end
  local len1 = c - a:Dot(b - a.unit)
  local len2 =( b - a).magnitude - len1
  local width = ((a + b - a.unit * len1) - c).magnitude
  local maincf = CFrameFromTopBack(a, b - a:Cross(c - b).unit, -b - a.unit)
  local list = {}
  local Color = BrickColor.new("Dark stone grey")
  if len1 > 0.01 then
    local w1 = Create("WedgePart", m)({Material = "SmoothPlastic", FormFactor = "Custom", BrickColor = Color, Transparency = 0, Reflectance = 0, Material = "SmoothPlastic", CanCollide = false, Anchored = true, Parent = workspace, Transparency = 0.3})
    game:GetService("Debris"):AddItem(w1, 5)
    NoOutline(w1)
    local sz = Vector3.new(0.2, width, len1)
    w1.Size = sz
    local sp = Create("SpecialMesh")({Parent = w1, MeshType = "Wedge", Scale = Vector3.new(0, 1, 1) * sz / w1.Size})
    w1:BreakJoints()
    table.insert(Effects, {w1, "Disappear", 0.03})
    w1.CFrame = maincf * CFrame.Angles(math.pi, 0, math.pi / 2) * CFrame.new(0, width / 2, len1 / 2)
    table.insert(list, w1)
  end
  do
    if len2 > 0.01 then
      local w2 = Create("WedgePart", m)({Material = "SmoothPlastic", FormFactor = "Custom", BrickColor = Color, Transparency = 0, Reflectance = 0, Material = "SmoothPlastic", CanCollide = false, Anchored = true, Parent = workspace, Transparency = 0.3})
      game:GetService("Debris"):AddItem(w2, 5)
      NoOutline(w2)
      local sz = Vector3.new(0.2, width, len2)
      w2.Size = sz
      local sp = Create("SpecialMesh")({Parent = w2, MeshType = "Wedge", Scale = Vector3.new(0, 1, 1) * sz / w2.Size})
      w2:BreakJoints()
      table.insert(Effects, {w2, "Disappear", 0.03})
      w2.CFrame = maincf * CFrame.Angles(math.pi, math.pi, -math.pi / 2) * CFrame.new(0, width / 2, -len1 - len2 / 2)
      table.insert(list, w2)
    end
    do
      return unpack(list)
    end
  end
end

so = function(id, par, vol, pit)
  coroutine.resume(coroutine.create(function()
    local sou = Create("Sound", par or workspace)({Volume = vol, Pitch = pit or 1, SoundId = id, Parent = par})
    sou:Play()
    swait()
    game:GetService("Debris"):AddItem(sou, 6)
  end
))
end

function clerp(a,b,t) 
local qa = {QuaternionFromCFrame(a)}
local qb = {QuaternionFromCFrame(b)} 
local ax, ay, az = a.x, a.y, a.z 
local bx, by, bz = b.x, b.y, b.z
local _t = 1-t
return QuaternionToCFrame(_t*ax + t*bx, _t*ay + t*by, _t*az + t*bz,QuaternionSlerp(qa, qb, t)) 
end 
 
function QuaternionFromCFrame(cf) 
local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components() 
local trace = m00 + m11 + m22 
if trace > 0 then 
local s = math.sqrt(1 + trace) 
local recip = 0.5/s 
return (m21-m12)*recip, (m02-m20)*recip, (m10-m01)*recip, s*0.5 
else 
local i = 0 
if m11 > m00 then
i = 1
end
if m22 > (i == 0 and m00 or m11) then 
i = 2 
end 
if i == 0 then 
local s = math.sqrt(m00-m11-m22+1) 
local recip = 0.5/s 
return 0.5*s, (m10+m01)*recip, (m20+m02)*recip, (m21-m12)*recip 
elseif i == 1 then 
local s = math.sqrt(m11-m22-m00+1) 
local recip = 0.5/s 
return (m01+m10)*recip, 0.5*s, (m21+m12)*recip, (m02-m20)*recip 
elseif i == 2 then 
local s = math.sqrt(m22-m00-m11+1) 
local recip = 0.5/s return (m02+m20)*recip, (m12+m21)*recip, 0.5*s, (m10-m01)*recip 
end 
end 
end
 
function QuaternionToCFrame(px, py, pz, x, y, z, w) 
local xs, ys, zs = x + x, y + y, z + z 
local wx, wy, wz = w*xs, w*ys, w*zs 
local xx = x*xs 
local xy = x*ys 
local xz = x*zs 
local yy = y*ys 
local yz = y*zs 
local zz = z*zs 
return CFrame.new(px, py, pz,1-(yy+zz), xy - wz, xz + wy,xy + wz, 1-(xx+zz), yz - wx, xz - wy, yz + wx, 1-(xx+yy)) 
end
 
function QuaternionSlerp(a, b, t) 
local cosTheta = a[1]*b[1] + a[2]*b[2] + a[3]*b[3] + a[4]*b[4] 
local startInterp, finishInterp; 
if cosTheta >= 0.0001 then 
if (1 - cosTheta) > 0.0001 then 
local theta = math.acos(cosTheta) 
local invSinTheta = 1/math.sin(theta) 
startInterp = math.sin((1-t)*theta)*invSinTheta 
finishInterp = math.sin(t*theta)*invSinTheta  
else 
startInterp = 1-t 
finishInterp = t 
end 
else 
if (1+cosTheta) > 0.0001 then 
local theta = math.acos(-cosTheta) 
local invSinTheta = 1/math.sin(theta) 
startInterp = math.sin((t-1)*theta)*invSinTheta 
finishInterp = math.sin(t*theta)*invSinTheta 
else 
startInterp = t-1 
finishInterp = t 
end 
end 
return a[1]*startInterp + b[1]*finishInterp, a[2]*startInterp + b[2]*finishInterp, a[3]*startInterp + b[3]*finishInterp, a[4]*startInterp + b[4]*finishInterp 
end

rayCast = function(Pos, Dir, Max, Ignore)
  return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore)
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
    local c = Create("ObjectValue")({Name = "creator", Value = game:service("Players").LocalPlayer, Parent = h})
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
        Player:FindFirstChild("leaderstats").Spree.Value = Player.leaderstats.Spree.Value + 1
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
      local bodvol = Create("BodyVelocity")({velocity = angle * knockback, P = 5000, maxForce = Vector3.new(8000, 8000, 8000), Parent = hit})
      local rl = Create("BodyAngularVelocity")({P = 3000, maxTorque = Vector3.new(500000, 500000, 500000) * 50000000000000, angularvelocity = Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10)), Parent = hit})
      game:GetService("Debris"):AddItem(bodvol, 0.5)
      game:GetService("Debris"):AddItem(rl, 0.5)
    else
      do
        if Type == "Normal" then
          local vp = Create("BodyVelocity")({P = 500, maxForce = Vector3.new(math.huge, 0, math.huge)})
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
              local bodyVelocity = Create("BodyVelocity")({velocity = vt(0, 60, 0), P = 5000, maxForce = Vector3.new(8000, 8000, 8000), Parent = hit})
              game:GetService("Debris"):AddItem(bodyVelocity, 1)
              local rl = Create("BodyAngularVelocity")({P = 3000, maxTorque = Vector3.new(500000, 500000, 500000) * 50000000000000, angularvelocity = Vector3.new(math.random(-30, 30), math.random(-30, 30), math.random(-30, 30)), Parent = hit})
              game:GetService("Debris"):AddItem(rl, 0.5)
            else
              do
                if Type == "Snare" then
                  local bp = Create("BodyPosition")({P = 2000, D = 100, maxForce = Vector3.new(math.huge, math.huge, math.huge), position = hit.Parent.Torso.Position, Parent = hit.Parent.Torso})
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
                        local targetgui = Create("BillboardGui")({Parent = ZTarget, Size = UDim2.new(10, 100, 10, 100)})
                        local targ = Create("ImageLabel")({Parent = targetgui, BackgroundTransparency = 1, Image = "rbxassetid://4834067", Size = UDim2.new(1, 0, 1, 0)})
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
                      local debounce = Create("BoolValue")({Name = "DebounceHit", Parent = hit.Parent, Value = true})
                      game:GetService("Debris"):AddItem(debounce, Delay)
                      c = Create("ObjectValue")({Name = "creator", Value = Player, Parent = h})
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
  local EffectPart = part("Custom", workspace, "SmoothPlastic", 0, 1, BrickColor.new(Color), "Effect", vt(0, 0, 0))
  EffectPart.Anchored = true
  local BillboardGui = Create("BillboardGui")({Size = UDim2.new(3, 0, 3, 0), Adornee = EffectPart, Parent = EffectPart})
  local TextLabel = Create("TextLabel")({BackgroundTransparency = 1, Size = UDim2.new(1, 0, 1, 0), Text = Text, TextColor3 = Color, TextScaled = true, Font = Enum.Font.ArialBold, Parent = BillboardGui})
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

Handle = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Handle", Vector3.new(0.253175676, 0.588633299, 0.246846244))
Handleweld = weld(m, Character["Right Arm"], Handle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.126804352, -0.233089447, -0.955924273, -0.999948442, 0.00970173907, 0.00306767737, -0.0030676804, 1.47513847e-005, -0.999996543, -0.00970171299, -0.999952316, 1.50370824e-005))
FakeHandle = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "FakeHandle", Vector3.new(0.253175676, 0.588633299, 0.246846244))
FakeHandleweld = weld(m, Handle, FakeHandle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.86102295e-006, 2.67028809e-005, -4.76837158e-007, 1.00000036, -2.37487257e-008, 3.92581256e-007, 2.14204192e-008, 1.0000025, -2.65044946e-008, -4.32576428e-007, -2.54158294e-008, 0.999998987))
BarrelA = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "BarrelA", Vector3.new(0.253175676, 0.200000003, 0.200000003))
BarrelAweld = weld(m, FakeHandle, BarrelA, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00215339661, 2.81016588, -0.679691315, 1.00000644, -0.000117851188, -0.000355327938, -0.000355351658, -1.73531589e-009, -0.999998689, 0.000117856776, 1.00000906, -1.03853381e-007))
mesh("CylinderMesh", BarrelA, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.332292944, 0.94940865))
BarrelB = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "BarrelB", Vector3.new(0.253175676, 0.200000003, 0.200000003))
BarrelBweld = weld(m, FakeHandle, BarrelB, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00297927856, 2.80971742, -0.393089294, 1.00000656, -4.6070898e-005, -0.000128114261, -0.000128135609, -2.84817361e-008, -0.999998748, 4.60767187e-005, 1.00000906, -9.46238288e-008))
mesh("CylinderMesh", BarrelB, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.332292944, 0.933585286))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.33522701, 0.235336304, 0.0417299271, -0.0207215287, -2.923799e-005, 0.999783814, -0.000413810369, -1.00000906, -3.776011e-005, 0.999791503, -0.000414500944, 0.0207213722))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.632939398, 0.316469491, 0.31646955))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.316469312))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0601425171, 0.235803604, -2.61929059, -0.999793649, 0.000419610878, -0.0207200497, -0.000418922398, -1.00001073, -3.78352306e-005, -0.0207202174, -2.92077821e-005, 0.99978435))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.63293916, 0.316469491, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.33585453, -0.805799484, 0.0970172882, 0.00131847756, -2.67218638e-007, 0.999997616, 0.000414136797, 1.00000894, -3.39018698e-007, -1.00000536, 0.000414132373, 0.0013184452))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.632939398, 0.316469491, 0.31646955))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.316469669, 0.200000003, 0.200000003))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.62066889, -0.805784225, 0.094909668, 0.00131851574, -2.67215e-007, 0.999997616, 0.000414139125, 1.0000037, -3.56746568e-007, -0.999999583, 0.000414144248, 0.00131857279))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.316469491, 0.31646955))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.33377934, -0.80566597, 0.0893392563, -0.00131858164, -3.83767838e-005, -0.999997616, -0.00654956326, 0.999982297, -2.98171653e-005, 0.999978244, 0.00654953532, -0.00131886196))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.632939637, 0.316469491, 0.31646955))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000250816345, -0.805568695, -2.33514857, 0.999999523, -0.000419221353, -0.00131787139, 0.000419216231, 1.0000037, -3.15711986e-007, 0.00131781469, -3.14648787e-007, 0.999997616))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.63293916, 0.316469491, 0.632937968))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.316469669, 0.200000003, 0.200000003))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.61788821, 0.235261917, 0.15650177, 0.0207205229, 6.78795477e-005, -0.999784112, 0.00654927408, -0.999988496, 6.79000077e-005, -0.999771416, -0.00654929783, -0.0207203794))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.316469491, 0.31646955))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.253175706, 0.200000003, 0.200000003))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00242042542, 0.231046677, 0.0917644501, -0.999812782, 0.000483197859, -0.0194047187, 0.000482602976, 1.00001109, 3.88100962e-005, 0.019404849, 2.95427599e-005, -0.999806702))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.632938981, 0.31646955))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.379763395))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.102196693, -0.839551926, -0.0595064163, 0.999999166, -0.000525944633, -0.00163693342, 0.000525932992, 1.0000037, -4.48350875e-006, 0.00163688057, 3.56229611e-006, 0.999997199))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.31646958, 0.648762405, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.759526789))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0939426422, -0.839508057, -0.629040003, 0.999999166, -0.000529598445, -0.00165220152, 0.000529593788, 1.0000037, -4.69715815e-007, 0.00165214634, -4.65610356e-007, 0.999997139))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.31646958, 0.648762405, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.253175706, 0.200000003, 0.200000003))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00397872925, -0.838012695, -0.18564415, 0.999999225, -0.000508233206, -0.00158826832, 0.00050822855, 1.0000037, -4.20256583e-007, 0.00158821314, -4.47254934e-007, 0.999997258))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.632939041, 0.6329391))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.154092789, -0.839509964, -1.04045248, 0.999999166, -0.00053049298, -0.00165473553, 0.000530488556, 1.0000037, -4.71247404e-007, 0.00165468047, -4.668982e-007, 0.999997139))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.31646958, 0.648762405, 0.31646955))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.379763573, 0.253175586, 0.506351233))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00783157349, -0.58531189, 0.829131842, 0.999999762, -0.000384737737, -0.0012139139, 0.00038473215, 1.00000358, -2.68339136e-007, 0.00121385849, -3.21568223e-007, 0.999997616))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.373434126, 0.200000003, 0.379763395))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00403022766, -0.83798027, -0.0595018864, 0.999999166, -0.000521293608, -0.00162268034, 0.000521281036, 1.00000346, -4.52060976e-006, 0.00162263215, 3.52446295e-006, 0.99999696))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.632938981, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.185806274, -0.0988779068, -0.901325226, -0.00155679451, -1.68599981e-005, -0.99999696, -0.999999225, 0.000480473042, 0.00155683653, 0.000480440212, 1.00000346, -1.77582042e-005))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.63293916, 0.316469491, 0.6329391))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.379763395))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0939817429, -0.839551926, -0.059491396, 0.999999106, -0.000525587471, -0.00163591723, 0.000525574666, 1.00000346, -4.52791664e-006, 0.00163586915, 3.51784729e-006, 0.999996901))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.31646958, 0.648762405, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.373434126, 0.200000003, 0.819656134))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00410461426, -0.837978363, -0.659051895, 0.999999046, -0.000533003593, -0.00166298973, 0.000532997772, 1.00000346, -5.2048199e-007, 0.00166293955, -5.16196451e-007, 0.999996841))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.632938981, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.759526789))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.102247238, -0.839500427, -0.629066944, 0.999999166, -0.000532461097, -0.00166054501, 0.000532456674, 1.00000358, -5.02135663e-007, 0.00166049844, -4.97217115e-007, 0.999996901))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.31646958, 0.648762405, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.379763395))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.154230118, -0.584842682, -0.439127684, 0.999999344, -0.000502875075, -0.00157324143, 0.000502870418, 1.00000358, -4.39167707e-007, 0.00157319452, -4.67131031e-007, 0.999997079))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.31646958, 0.632938981, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.379763573, 0.200000003, 0.200000003))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00398254395, -0.711421967, 0.130382061, 0.999999285, -0.000521925976, -0.00163025025, 0.000521921786, 1.00000358, -4.70413397e-007, 0.00163020229, -4.95618224e-007, 0.99999702))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.632938981, 0.632939279))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.18581605, 0.0910644531, -0.901327133, -0.0015567973, -1.68775623e-005, -0.99999702, -0.999999344, 0.000480472343, 0.0015568356, 0.000480440911, 1.00000358, -1.77406437e-005))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.63293916, 0.316469491, 0.6329391))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.253175676, 0.316469491, 0.200000003))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00702667236, -0.490217209, 0.385505915, 0.999999762, -0.000391439768, -0.00122567732, 0.000391436042, 1.0000037, -3.07035407e-007, 0.0012256304, -2.87916919e-007, 0.999997497))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.632939279))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(0.379763573, 0.200000003, 1.13929045))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00401592255, -0.711420059, -0.502290964, 0.999999344, -0.000508958008, -0.00159047265, 0.000508953119, 1.00000358, -4.49184881e-007, 0.00159042596, -4.75454726e-007, 0.999997079))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.632938981, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00432777405, -0.806547165, -1.16633892, 0.999999583, -0.000498779118, -0.00156349433, 0.000498774927, 1.0000037, -4.8513084e-007, 0.00156345253, -3.74717274e-007, 0.999997199))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.63293916, 0.316469491, 0.949407756))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.162312508, -0.839599609, -1.04043412, 0.999999404, -0.000535148196, -0.00166929583, 0.000535144238, 1.0000037, -4.88199476e-007, 0.00166925485, -4.8513175e-007, 0.999997079))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.31646958, 0.648762405, 0.31646955))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.253175676, 0.506351173, 0.506351113))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00422668457, -0.521696091, -1.00804353, 0.999999762, -0.000455797184, -0.00142797269, 0.000455793692, 1.00000381, -3.59419573e-007, 0.00142793078, -3.71452188e-007, 0.999997377))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.379763573, 0.200000003, 0.200000003))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00721073151, 0.555006027, -0.546396732, 1, -0.000384197105, -0.00121572253, -0.000384192215, -1.0000037, 1.14932845e-007, -0.0012156798, 4.94703272e-007, -0.999997556))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.949408472, 0.31646955))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.379763573, 0.200000003, 0.200000003))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00745105743, -0.680278778, -0.544320107, -1, 0.00037993025, 0.00120887556, 0.000379925361, 1.0000037, -2.70945748e-007, -0.00120883493, 3.30901457e-007, -0.999997556))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.316469491, 0.31646955))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(0.379763573, 0.200000003, 0.316469461))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00402545929, -0.584838867, -0.0909211636, 0.999999702, -0.000500370981, -0.00156531227, 0.000500367256, 1.00000381, -4.177964e-007, 0.00156527071, -4.45434125e-007, 0.999997318))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.632938981, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.31646961, 0.200000003, 0.379763395))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0356550217, -0.584846497, -0.439112663, 0.999999583, -0.000502517214, -0.00157210627, 0.000502513023, 1.0000037, -4.21038749e-007, 0.00157206471, -4.48966603e-007, 0.999997258))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.632938981, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.25723362, 0.597276688, -0.584844589, 1.00000954, -0.000496422639, -0.00155257841, -0.00155252253, 4.23668098e-007, -1.00000346, 0.000496412395, 1.00000656, -4.26846782e-007))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.63293916, 0.316469491, 0.6329391))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.379763573, 0.200000003, 0.200000003))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00877285004, -0.680276871, 1.11404014, 0.99999994, -0.000378295779, -0.00121141248, 0.00037829089, 1.0000037, -2.68495569e-007, 0.00121137092, -3.32338459e-007, 0.999997497))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.316469491, 0.31646955))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00260543823, -0.83946991, -0.977151871, 0.999999404, -0.00053568976, -0.00167084928, 0.000535686035, 1.0000037, -4.91897481e-007, 0.00167080737, -4.83170879e-007, 0.999997079))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.680409729, 0.648762405, 0.31646955))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.379763573, 0.200000003, 0.200000003))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00426864624, -0.711380005, 0.257278919, 0.999999344, -0.000538330991, -0.0016810667, 0.000538320513, 1.00000381, -4.5128636e-006, 0.00168102677, 3.52790812e-006, 0.99999702))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.632938981, 0.63293916))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.379763573, 0.200000003, 0.253175676))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00426197052, -0.584779739, 0.193880796, 0.999999285, -0.000541021582, -0.00169264583, 0.000541017856, 1.00000381, -4.83931217e-007, 0.00169260346, -5.11839971e-007, 0.99999696))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.632938981, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.16557884, -0.805673599, 0.0980272293, -0.000204314318, -0.000345961365, -0.999998391, 5.26930671e-005, 1.00000381, -0.000346050219, 1.00000083, -5.27666416e-005, -0.000204340089))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.94940871, 0.316469491, 0.31646955))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.253175676, 0.200000003, 0.379763454))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00253772736, 2.80870223, -0.394735336, 1.00000656, -0.000189693645, -0.000583698333, -0.000583737507, 4.92018444e-008, -0.99999851, 0.000189699931, 1.00000906, -1.41451892e-007))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.316469491, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(0.379763573, 0.200000003, 0.316469461))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00424480438, -0.616500854, -0.91397047, 0.999998987, -0.000521556707, -0.00163153268, 0.000521552749, 1.00000346, -4.66357051e-007, 0.00163143163, -4.64564437e-007, 0.999996901))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.316469491, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.379763573, 0.200000003, 0.200000003))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0052690506, -0.744037628, -1.39934874, -1.00000012, 0.000380261568, 0.00120868091, 0.000380258309, 1.00000381, -2.62050889e-007, -0.00120863831, 2.7758324e-007, -0.999997795))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.316469491, 0.63293916))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.379763573, 0.200000003, 0.200000003))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0154876709, 0.553672791, 1.10770559, -0.999788344, 0.000377169345, -0.0206035189, -0.000376480399, -1.0000037, -3.6918671e-005, -0.0206036251, -2.92966233e-005, 0.99978596))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.949408472, 0.31646955))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(0.379763573, 0.200000003, 0.200000003))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00402450562, -0.584842682, -0.692234278, 0.999999583, -0.000501086703, -0.00156757631, 0.000501082744, 1.0000037, -4.18870513e-007, 0.00156753568, -4.46611011e-007, 0.999997258))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.632938981, 0.632938504))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(0.253175676, 0.200000003, 0.200000003))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00411701202, -0.872737885, -1.04044247, 0.999999404, -0.000532282284, -0.00166003755, 0.000532278325, 1.0000037, -4.84281372e-007, 0.00165999553, -4.79334631e-007, 0.999997079))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.316469491, 0.31646955))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.22557354, -0.584844589, -0.597300291, 1.0000062, -0.000499660615, -0.00156306126, 0.000499651767, 1.0000056, -4.16594958e-007, 0.00156300946, -4.44253601e-007, 1.00000143))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.31646958, 0.632938981, 0.31646955))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.16603017, -0.806951523, 0.0910015106, 0.0014401821, -0.000346068438, 0.999997437, 0.000107042491, 1.00000393, 0.000345832697, -0.999999821, 0.000106547493, 0.00144026114))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.94940871, 0.316469491, 0.31646955))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.253175676, 0.316469491, 0.759526789))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00814914703, -0.490310669, 0.829042196, 1, -0.000389440451, -0.00122217275, 0.000389436958, 1.00000381, -2.84300768e-007, 0.00122212956, -2.71675162e-007, 0.999997735))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Part", Vector3.new(0.382928163, 0.200000003, 0.200000003))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00295829773, -0.553510666, -0.723438978, 0.999999583, -0.000490234466, -0.00153373403, 0.00049022492, 1.00000381, -4.46594822e-006, 0.00153369538, 3.63407162e-006, 0.999997318))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.316469491, 0.31646955))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.253175676, 0.200000003, 0.200000003))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000706672668, 0.205863953, 0.199816704, -1.00000083, 0.000478833681, 0.000105670289, -0.000478830421, -1.00000381, -3.97266376e-007, 0.000105623272, -5.27878001e-007, 0.999998391))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.632939041, 0.632939279))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.443057477, 0.200000003, 0.240516856))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.279232264, -0.206943512, -0.00298118591, -0.000796075386, -8.97907739e-008, 0.999997973, -0.000247266144, 1.00000381, -3.1480522e-007, -1.00000048, -0.000247264514, -0.000796028064))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=3270017", Vector3.new(0, 0, 0), Vector3.new(0.354445964, 0.322798938, 1.50006592))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.253175706, 0.253175676, 0.569645226))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00389385223, 0.205747604, -0.925108433, 1.00000012, -0.000374833122, -0.0012015684, -0.000374829629, -1.00000381, 2.67670657e-007, -0.00120152568, 2.62731191e-007, -0.999997795))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.253175676, 0.200000003, 1.07599652))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00398159027, -0.300109863, -0.217233419, 0.999999702, -0.000474758213, -0.00148420094, 0.000474754721, 1.00000381, -3.88333319e-007, 0.00148415903, -3.96312316e-007, 0.999997318))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.316469491, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.253175676, 0.506351173, 0.31646958))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00226020813, -0.520721436, -2.61991787, 1.00000656, -0.000156912487, -0.000487482001, 0.000156918541, 1.00000906, -6.25477696e-008, 0.000487519952, -9.38744051e-008, 0.99999851))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.253175706, 0.379763484, 0.31646952))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00392913818, 0.142469406, -1.05169654, 1.00000012, -0.000374163035, -0.00120039028, -0.000374159543, -1.00000381, 2.65924427e-007, -0.00120034756, 2.63231414e-007, -0.999997735))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(1.0127027, 0.200000003, 0.200000003))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.76639271, -0.80727005, 0.0904636383, 0.0012062696, -0.000345987704, 0.999997616, 7.08191656e-005, 1.00000906, 0.00034581896, -1.00000596, 7.03958794e-005, 0.00120624923))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.316469491, 0.31646955))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.253175676, 0.200000003, 0.253175616))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00172615051, -0.0802326202, -0.0677595139, 1.00000215, -2.22004019e-006, -3.60265494e-006, -9.65083018e-007, 0.707102001, -0.707112849, 4.06918116e-006, 0.707119048, 0.707095683))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.632939041, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.253175676, 0.200000003, 0.31646955))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00177764893, 2.4308722, -0.679933548, 1.00000584, -0.000409069704, -0.00127759273, -0.00127763685, 2.75062121e-007, -0.999997735, 0.000409075059, 1.00000906, -3.27489033e-007))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.316469491, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(0.379763573, 0.253175586, 0.31646958))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00424194336, 0.458267212, 0.913977146, 0.999999523, -0.000521552516, -0.00163157831, -0.000521548791, -1.0000037, 4.52364475e-007, -0.00163153687, 4.78599759e-007, -0.999997139))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.253175676, 0.398751616, 0.200000003))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000610351563, 0.0949077606, 0.031639576, 1.00000107, 1.54366717e-007, -7.14659564e-007, -1.5925616e-007, 1.00000513, -6.79456207e-008, 6.45882892e-007, -5.55883162e-008, 0.999997854))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.917761683))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.379763573, 0.200000003, 0.200000003))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00860404968, -0.205316544, -1.39933252, 1, -0.000379117904, -0.00120476098, -0.000379114412, -1.00000381, 2.55049599e-007, -0.00120471825, 2.81710527e-007, -0.999997735))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.316469491, 0.63293916))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Part", Vector3.new(0.386092901, 0.200000003, 0.200000003))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00433635712, -0.490215302, -0.596788645, 0.999999583, -0.000503412215, -0.00157724996, 0.000503401272, 1.0000037, -4.48485389e-006, 0.00157721096, 3.61087586e-006, 0.999997258))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.316469491, 0.31646955))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Part", Vector3.new(0.386092931, 0.200000003, 1.07599664))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00383377075, -0.363477707, -0.217586279, 0.999999583, -0.000503078802, -0.00157187996, 0.000503075076, 1.0000037, -4.45784281e-007, 0.00157183746, -4.25008693e-007, 0.999997199))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.316469491, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 1.01270235))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0051240921, -0.806119919, -1.76616836, 1.00000572, -0.000419280725, -0.00131856895, 0.00041928608, 1.00000906, -3.2670232e-007, 0.00131861551, -3.06070433e-007, 0.999997556))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.63293916, 0.316469491, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(1.01270258, 0.200000003, 0.200000003))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.76639986, -0.805118561, 0.100095749, -0.00129397365, -0.000345726585, -0.999997616, 0.00041113887, 1.00000906, -0.000346335029, 1.00000584, -0.000411581248, -0.00129378564))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.316469491, 0.31646955))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.253175676, 0.200000003, 0.200000003))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00281620026, -0.0719718933, -0.341794968, 0.999986827, -0.00452291034, 0.002758872, 0.00529640075, 0.866029859, -0.499969363, -0.000127990963, 0.499979407, 0.866036832))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.949408472, 0.158234775))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Part", Vector3.new(0.253175706, 0.200000003, 0.200000003))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00544261932, -0.0789928436, -1.27258873, 1.00000012, -0.000375170261, -0.00120216631, -0.000375167001, -1.00000381, 2.68559234e-007, -0.00120212266, 2.62471076e-007, -0.999997795))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.316469789, 0.632938862))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.256340384, 0.200000003, 0.253175616))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000133514404, -0.175178528, -0.0677566528, 1.00000155, -2.21375376e-006, -3.60358649e-006, -9.61590558e-007, 0.707101464, -0.707113504, 4.07081097e-006, 0.707118511, 0.707096338))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.316469491, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Part", Vector3.new(0.382928193, 0.200000003, 0.200000003))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00293636322, -0.458452225, -0.724108696, 0.999999523, -0.00051115104, -0.00159854547, 0.000511147315, 1.00000381, -4.73800355e-007, 0.00159850239, -4.23311576e-007, 0.999997139))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.632938981, 0.31646955))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.316469312))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00025177002, -0.805561066, -2.61996937, 0.999999881, -0.00041925488, -0.00131827279, 0.000419250689, 1.0000037, -3.26211193e-007, 0.00131822913, -3.24054781e-007, 0.999997556))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.63293916, 0.316469491, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.253175676, 0.506351173, 0.200000003))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00314712524, -0.521814346, -2.33619571, 1.00000608, -0.000322065549, -0.00100909744, 0.000322071137, 1.00000906, -1.63273398e-007, 0.00100914051, -2.41647285e-007, 0.999997973))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.632939279))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.379763573, 0.886114717, 0.200000003))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00499248505, -0.269319534, 1.39928484, 1, -0.00037944247, -0.00120603503, 0.000379439211, 1.00000381, -2.65670678e-007, 0.0012059923, -2.71964382e-007, 0.999997735))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.632938862))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Part", Vector3.new(0.382928193, 0.200000003, 0.200000003))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.002866745, -0.426689148, -0.597486734, 0.999999464, -0.000512457686, -0.00160160579, 0.000512453727, 1.0000037, -4.61965101e-007, 0.0016015619, -4.3880209e-007, 0.999997139))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.316469491, 0.31646955))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(0.379763573, 0.200000003, 1.07599664))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00374031067, -0.42669487, -0.217225075, 1, -0.000394753413, -0.0012314897, 0.000394749921, 1.00000381, -2.97884981e-007, 0.00123144651, -2.68262738e-007, 0.999997675))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.949408472, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.253175676, 0.200000003, 0.253175616))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00116062164, -0.205852509, 0.00865292549, 1.00000083, -3.57264653e-005, -0.000107917731, 3.57239041e-005, 1.00000381, -6.43103704e-008, 0.000107873675, -1.95523171e-008, 0.999998391))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.632939041, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.253175676, 0.253175586, 1.01270235))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00470161438, -0.648044586, -1.76669383, 1.00000584, -0.000387078384, -0.00121720054, 0.000387083972, 1.00000906, -2.6685575e-007, 0.00121724466, -2.84217094e-007, 0.999997675))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Part", Vector3.new(0.253175676, 0.696233034, 0.200000003))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00384902954, -0.300741196, 1.27262878, 1, -0.000381424325, -0.00120951526, 0.000381421065, 1.00000381, -2.70656528e-007, 0.00120947359, -2.70692908e-007, 0.999997735))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.632938862))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.253175676, 0.398751616, 0.200000003))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000612258911, 0.0949077606, 0.15506196, 1.00000107, 1.54599547e-007, -7.13728241e-007, -1.5902333e-007, 1.00000501, -6.79465302e-008, 6.46814271e-007, -5.55874067e-008, 0.999997914))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.31646955))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.253175676, 0.200000003, 0.31646955))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00212287903, 2.80894852, -0.679607391, 1.00000656, -0.000225796597, -0.000698092103, -0.000698132091, 7.61738193e-008, -0.99999845, 0.000225802884, 1.00000906, -1.6138074e-007))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.316469491, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0555238724, 0.235569, -2.33452106, -0.99979192, 0.000419530552, -0.0207191594, -0.000418840675, -1.00000906, -3.78208169e-005, -0.0207193084, -2.92150853e-005, 0.999783814))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.63293916, 0.316469491, 0.632937968))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.3331461, 0.23503685, 0.15192318, 0.0206767302, 6.75732008e-005, -0.999784589, 0.00653480599, -0.999987781, 6.76400959e-005, -0.999771476, -0.0065348288, -0.0206765924))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.632939637, 0.316469491, 0.31646955))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.316469669, 0.200000003, 0.200000003))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.61998868, 0.235582352, 0.0350198746, -0.0207206011, -2.92479381e-005, 0.999784291, -0.000413753325, -1.00001073, -3.77487086e-005, 0.999793947, -0.000414440874, 0.0207204428))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.316469491, 0.31646955))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.316469669, 0.200000003, 0.200000003))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.61860609, -0.805664063, 0.089345932, -0.00131845498, -3.8365637e-005, -0.999997556, -0.00654954929, 0.999982357, -2.98266423e-005, 0.999978602, 0.00654952042, -0.00131872331))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.316469491, 0.31646955))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.253175676, 0.200000003, 0.31646955))
Partweld = weld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0028629303, 2.43087435, -0.36346817, 1.00000775, -0.000409050612, -0.00127734221, -0.00127741334, 2.74636477e-007, -0.999998152, 0.000409058062, 1.00001061, -3.27772796e-007))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.316469491, 1))
PumpConnector = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "PumpConnector", Vector3.new(0.253175676, 0.253175616, 1.01270247))
PumpConnectorweld = weld(m, FakeHandle, PumpConnector, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00457191467, -0.394981384, -1.76718998, 1.00000548, -0.000473189866, -0.0014859864, 0.000473195454, 1.00000906, -4.67973223e-007, 0.00148603355, -3.15103534e-007, 0.999997318))
PumpHandle = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "PumpHandle", Vector3.new(0.253175676, 0.253175616, 0.696232915))
PumpHandleweld = weld(m, PumpConnector, PumpHandle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00811004639, 5.7220459e-006, -0.0953073502, 1.00001121, -0.000218219124, -0.000691315043, 0.000218238914, 1.00001061, -7.41114491e-007, 0.000691521389, 6.25690518e-007, 0.999999762))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, PumpHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.157253265, -0.0634880066, -0.316317439, -1.00001073, -0.00129064033, 0.000183447744, 0.001290621, -1.00000978, -3.79022822e-006, 0.000183670403, -3.5180019e-006, 1.00000012))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.31646958, 0.632939041, 0.31646955))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, PumpHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.159186363, -0.0632915497, -0.315506697, -1.00001085, -0.00129064405, 0.000206141282, 0.00129062473, -1.00000978, -3.80806159e-006, 0.000206361423, -3.50655137e-006, 1.00000012))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.31646958, 0.632939041, 0.31646955))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, PumpHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.158708572, -0.0632896423, -0.316618443, 1.00001168, -6.27769623e-005, -0.000194763765, -6.27962872e-005, -1.00001073, 4.92951767e-006, -0.000194981301, -4.95283712e-006, -1.00000012))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.31646958, 0.632939041, 0.31646955))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, PumpHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.381263018, -0.189670563, 0.157283783, 0.000493958709, -2.53328835e-006, -1, 0.000151888235, -1.00001299, 2.62154208e-006, -1.00001514, -0.000151919667, -0.000494200736))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.31646958, 0.632939041, 0.31646955))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Part", Vector3.new(0.379763573, 0.253175616, 0.200000003))
Partweld = weld(m, PumpHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00104141235, 0.000324249268, -0.379030228, 1.00001168, 2.89033633e-005, 9.224924e-005, -2.88828742e-005, 1.00001073, 4.74210538e-008, -9.20349048e-005, -1.4595571e-008, 1.00000012))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.31646955))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Part", Vector3.new(0.253175676, 0.200000003, 0.200000003))
Partweld = weld(m, PumpHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000842094421, 0.190042496, -0.378431678, 1.00001156, 9.00141895e-005, 0.000285300834, -8.99939332e-005, 1.00001061, 3.24798748e-008, -0.000285089598, -2.26718839e-008, 1.00000012))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.63293916, 0.31646955))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Part", Vector3.new(0.253175676, 0.200000003, 0.200000003))
Partweld = weld(m, PumpHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000408172607, 0.190048218, 0.381075144, 1.00001168, 9.35823191e-005, 0.00029639469, -9.35620628e-005, 1.00001073, 3.96703399e-008, -0.000296183629, -3.19196261e-008, 1.00000012))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.63293916, 0.31646955))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, PumpHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.378592491, -0.189874649, 0.157202721, 7.87446115e-005, -2.92346704e-006, -1.00000012, 1.98835041e-005, -1.00001061, 2.88951014e-006, -1.00001156, -1.99046917e-005, -7.89594633e-005))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.31646958, 0.632939041, 0.31646955))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Part", Vector3.new(0.379763573, 0.253175616, 0.200000003))
Partweld = weld(m, PumpHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000222206116, 0.000381469727, 0.380491257, 1.00001168, 2.53100879e-005, 8.08704135e-005, -2.52898317e-005, 1.00001073, 4.085814e-008, -8.06568059e-005, -7.41783879e-009, 1.00000024))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.31646955))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.253175676, 0.200000003, 0.696232915))
Partweld = weld(m, PumpHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000480651855, 0.189878464, -4.14848328e-005, 1.00001156, -8.17235559e-008, -9.06604839e-007, 1.02212653e-007, 1.00001073, 1.75932655e-008, 1.12182749e-006, 1.78952178e-008, 1.00000012))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.63293916, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, PumpHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.377965927, -0.189758301, 0.158499718, -0.000249022327, 5.08589801e-006, 1, 7.88865145e-005, -1.00001073, 5.07002369e-006, 1.00001156, 7.89077021e-005, 0.000249234668))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.31646958, 0.632939041, 0.31646955))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, PumpHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.380588293, -0.189929962, 0.157842636, -2.1808597e-005, 4.97501969e-006, 1, 6.82752579e-006, -1.00001061, 4.93962398e-006, 1.00001156, 6.84824772e-006, 2.20224065e-005))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.31646958, 0.632939041, 0.31646955))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, PumpHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.157729149, -0.0635128021, -0.317326069, 1.00001168, -6.27734698e-005, -0.000194734894, -6.27925619e-005, -1.00001073, 4.9268001e-006, -0.000194952445, -4.95011955e-006, -1.00000012))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.31646958, 0.632939041, 0.31646955))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Part", Vector3.new(0.379763573, 0.200000003, 0.696233034))
Partweld = weld(m, PumpHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000833511353, -0.0628852844, 0.00106692314, 1.00001156, 4.6872301e-005, 0.000149078158, -4.68520448e-005, 1.00001073, 2.52566679e-008, -0.000148865074, 3.24689609e-009, 1.00000012))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.63293916, 1))
local L1 = Create("PointLight")({Parent = BarrelA, Color = Color3.new(255, 255, 0), Range = 5, Brightness = 10, Enabled = false})
local L2 = L1:Clone()
L2.Parent = BarrelB
effect = function(Color, Ref, LP, P1, returnn)
  local effectsg = Create("Part")({Material = "Neon", formFactor = 3, CanCollide = false, Name = "Eff", Locked = true, Anchored = true, Size = Vector3.new(0.5, 1, 0.5), Parent = workspace, BrickColor = BrickColor.new(Color), Reflectance = Ref})
  local effectsmsh = Create("BlockMesh")({Scale = Vector3.new(0.2, 1, 0.2), Name = "Mesh", Parent = effectsg})
  local point1 = P1
  local mg = (LP.p - point1.p).magnitude
  effectsg.Size = Vector3.new(0.5, mg, 0.5)
  effectsg.CFrame = CFrame.new((LP.p + point1.p) / 2, point1.p) * CFrame.Angles(math.rad(90), 0, 0)
  if returnn then
    return effectsg
  end
  coroutine.resume(coroutine.create(function(Part, Mesh)
    if not returnn then
      for i = 0, 1, 0.2 do
        wait()
        Part.Transparency = 1 * i
        Mesh.Scale = Vector3.new(0.2 - 0.2 * i, 1, 0.2 - 0.2 * i)
      end
      wait()
      Part.Parent = nil
    end
  end
), effectsg, effectsmsh)
end

local Explode = false
Bullet = function(Cf)
  for i = 1, 2 do
    local Bullet = Create("Part")({Parent = workspace, Material = "SmoothPlastic", Name = "Bullet", BrickColor = BrickColor.new("Really black"), Material = "Neon", FormFactor = "Custom", Size = Vector3.new(0.2, 0.2, 0.2), CFrame = Cf.CFrame * CFrame.new(0, 0, 0) * CFrame.new(math.random(-750, 750) / 1000, math.random(-750, 750) / 1000, math.random(-750, 750) / 1000), Elasticity = 0, Friction = 0, CanCollide = true})
    do
      Create("SpecialMesh")({Parent = Bullet, MeshType = "Sphere"})
      local BodyVelocity = Create("BodyVelocity")({Parent = Bullet, maxForce = Vector3.new(math.huge, math.huge, math.huge), velocity = mouse.Hit.p - Cf.Position.unit * 200 + Vector3.new(math.random(-9000, 9000) / 1000, math.random(-9000, 9000) / 1000, math.random(-9000, 9000) / 1000)})
      local Con1 = Bullet.Touched:connect(function(hit)
    for i,v in pairs(hit.Parent:GetChildren()) do
      if v:IsA("Humanoid") then
        if Explode == false then
          Damagefunc(Bullet, hit, 10, 20, 10, "Normal", RootPart, 1, "Hit1", 1)
          so("http://www.roblox.com/asset/?id=257976060", Bullet, 1, 1)
        else
          if Explode == true then
            local S = Create("Explosion")({Parent = workspace, Position = Bullet.Position, BlastPressure = 5, BlastRadius = 5, ExplosionType = 2})
            so("http://www.roblox.com/asset/?id=257976060", Bullet, 1, 1)
          end
        end
        do
          do
            Bullet:remove()
            -- DECOMPILER ERROR at PC58: LeaveBlock: unexpected jumping out DO_STMT

            -- DECOMPILER ERROR at PC58: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC58: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
    end
  end
)
      local LastPoint = Bullet.CFrame * CFrame.new(0, Bullet.Size.Y / 1.5, 0)
      coroutine.resume(coroutine.create(function()
    repeat
      wait()
      local Point = Bullet.CFrame * CFrame.new(0, Bullet.Size.Y / 1.5, 0)
      effect("Really black", 0.5, LastPoint, Point)
      LastPoint = Point
    until Bullet.Parent == nil
  end
))
      game:GetService("Debris"):AddItem(Bullet, 2)
    end
  end
end

MagicRing = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, movnum)
  local prt = part("Custom", workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe
  msh = mesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=3270017", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 2)
  table.insert(Effects, {prt, "Ring", delay, x3, y3, z3, msh, movnum})
  coroutine.resume(coroutine.create(function(Part, Mesh, num)
    for i = 0, 1, delay do
      swait()
      Part.CFrame = Part.CFrame * cf(0, 0, -num)
      Part.Transparency = i
      Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
    end
    Part.Parent = nil
  end
), prt, msh, (math.random(0, 1) + math.random()) / 5)
end

local aim = false
Fire = function()
  attack = true
  aim = true
  Humanoid.WalkSpeed = 7
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.1, 0.5, 0.2) * angles(math.rad(90), math.rad(0), math.rad(-20)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-0.5, 0.5, -1.2) * angles(math.rad(90), math.rad(0), math.rad(40)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.3)
    FakeHandleweld.C0 = clerp(FakeHandleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(-20), math.rad(0)), 0.3)
  end
  L1 = true
  if Explode == false then
    so("http://www.roblox.com/asset/?id=269408478", Handle, 0.5, 1)
  else
    if Explode == true then
      for i = 1, 20 do
        so("http://www.roblox.com/asset/?id=130815729", Handle, 0.5, 1)
      end
    end
  end
  do
    Bullet(BarrelA)
    Bullet(BarrelB)
    for i = 0, 1, 0.1 do
      swait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
      RW.C0 = clerp(RW.C0, CFrame.new(1.1, 0.5, 0.2) * angles(math.rad(120), math.rad(0), math.rad(-20)), 0.5)
      LW.C0 = clerp(LW.C0, CFrame.new(-0.5, 1, -1.2) * angles(math.rad(140), math.rad(0), math.rad(40)), 0.5)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.3)
      FakeHandleweld.C0 = clerp(FakeHandleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(-20), math.rad(0)), 0.3)
      PumpHandleweld.C0 = clerp(PumpHandleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.5)
    end
    L1 = false
    for i = 0, 1, 0.1 do
      swait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, 0.2) * angles(math.rad(90), math.rad(0), math.rad(-20)), 0.3)
      LW.C0 = clerp(LW.C0, CFrame.new(-0.5, 0.5, -1.2) * angles(math.rad(90), math.rad(0), math.rad(40)), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.3)
      FakeHandleweld.C0 = clerp(FakeHandleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(-20), math.rad(0)), 0.3)
      PumpHandleweld.C0 = clerp(PumpHandleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.5)
    end
    for i = 0, 1, 0.1 do
      swait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(10), math.rad(0), math.rad(0)), 0.3)
      RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, 0.2) * angles(math.rad(70), math.rad(0), math.rad(-20)), 0.3)
      LW.C0 = clerp(LW.C0, CFrame.new(-0.5, 0.5, -1.2) * angles(math.rad(100), math.rad(0), math.rad(30)), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.3)
      FakeHandleweld.C0 = clerp(FakeHandleweld.C0, cf(0, -0.5, 0) * angles(math.rad(-50), math.rad(0), math.rad(0)), 0.3)
      PumpHandleweld.C0 = clerp(PumpHandleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.5)
    end
    so("http://www.roblox.com/asset/?id=229859347", Handle, 1, 1)
    for i = 0, 1, 0.1 do
      swait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(10), math.rad(0), math.rad(0)), 0.3)
      RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, 0.2) * angles(math.rad(70), math.rad(0), math.rad(-20)), 0.3)
      LW.C0 = clerp(LW.C0, CFrame.new(-0.5, 0.5, -1) * angles(math.rad(90), math.rad(0), math.rad(30)), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.3)
      FakeHandleweld.C0 = clerp(FakeHandleweld.C0, cf(0, -0.5, 0) * angles(math.rad(-50), math.rad(0), math.rad(0)), 0.3)
      PumpHandleweld.C0 = clerp(PumpHandleweld.C0, cf(0, 0, -0.5) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.5)
    end
    for i = 0, 1, 0.1 do
      swait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, 0.2) * angles(math.rad(70), math.rad(0), math.rad(-20)), 0.3)
      LW.C0 = clerp(LW.C0, CFrame.new(-0.5, 0.5, -1.2) * angles(math.rad(100), math.rad(0), math.rad(30)), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.3)
      FakeHandleweld.C0 = clerp(FakeHandleweld.C0, cf(0, -0.5, 0) * angles(math.rad(-50), math.rad(0), math.rad(0)), 0.3)
      PumpHandleweld.C0 = clerp(PumpHandleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.5)
    end
    Humanoid.WalkSpeed = 20
    attack = false
  end
end

Lightning = function(p0, p1, tym, ofs, col, th, tra)
  local magz = (p0 - p1).magnitude
  local curpos = p0
  local trz = {-ofs, ofs}
  for i = 1, tym do
    local li = Instance.new("Part", workspace)
    li.Material = "Neon"
    li.TopSurface = 0
    li.BottomSurface = 0
    li.Anchored = true
    li.Transparency = tra or 0.4
    li.BrickColor = BrickColor.new(col)
    li.formFactor = "Custom"
    li.CanCollide = false
    li.Size = Vector3.new(th, th, magz / tym)
    local ofz = Vector3.new(trz[math.random(1, 2)], trz[math.random(1, 2)], trz[math.random(1, 2)])
    local trolpos = CFrame.new(curpos, p1) * CFrame.new(0, 0, magz / tym).p + ofz
    if tym == i then
      local magz2 = (curpos - p1).magnitude
      li.Size = Vector3.new(th, th, magz2)
      li.CFrame = CFrame.new(curpos, p1) * CFrame.new(0, 0, -magz2 / 2)
    else
      do
        do
          li.CFrame = CFrame.new(curpos, trolpos) * CFrame.new(0, 0, magz / tym / 2)
          curpos = li.CFrame * CFrame.new(0, 0, magz / tym / 2).p
          game.Debris:AddItem(li, 0.5)
          -- DECOMPILER ERROR at PC129: LeaveBlock: unexpected jumping out DO_STMT

          -- DECOMPILER ERROR at PC129: LeaveBlock: unexpected jumping out IF_ELSE_STMT

          -- DECOMPILER ERROR at PC129: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
  end
end

MagicBlock = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3)
  local prt = part("Custom", workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("BlockMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
  coroutine.resume(coroutine.create(function()
    for i = 0, 1, 0.1 do
      swait()
      prt.CFrame = prt.CFrame * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
      prt.Transparency = i
      msh.Scale = msh.Scale + vt(x3, y3, z3)
    end
    prt.Parent = nil
  end
))
end

MagicCircle = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3)
  local prt = part("Custom", workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "Sphere", "", vt(0, 0, 0), vt(x1, y1, z1))
  coroutine.resume(coroutine.create(function()
    for i = 0, 1, 0.1 do
      swait()
      prt.CFrame = prt.CFrame
      prt.Transparency = i
      msh.Scale = msh.Scale + vt(x3, y3, z3)
    end
    prt.Parent = nil
  end
))
end

attackdebounce = false
spread = 0
range = 100
rangepower = 200
shoottrail = function(mouse, baseprt)
  coroutine.resume(coroutine.create(function(v)
    local spreadvector = Vector3.new(math.random(-spread, spread), math.random(-spread, spread), math.random(-spread, spread)) * (baseprt.Position - MMouse.Hit.p).magnitude / 100
    local dir = CFrame.new((baseprt.Position + MMouse.Hit.p) / 2, MMouse.Hit.p + spreadvector)
    local hit, pos = rayCast(baseprt.Position, dir.lookVector, 10, Character)
    local rangepos = range
    local drawtrail = function(From, To)
      local effectsmsh = Instance.new("CylinderMesh")
      effectsmsh.Scale = Vector3.new(1, 1, 1)
      effectsmsh.Name = "Mesh"
      local effectsg = Instance.new("Part")
      effectsg.formFactor = 3
      effectsg.CanCollide = false
      effectsg.Name = "Eff"
      effectsg.Locked = true
      effectsg.Anchored = true
      effectsg.Size = Vector3.new(0.2, 0.2, 0.2)
      effectsg.Parent = workspace
      effectsmsh.Parent = effectsg
      effectsg.BrickColor = BrickColor.new("Bright blue")
      effectsg.Material = "Neon"
      effectsg.Reflectance = 0.25
      local LP = From
      local point1 = To
      local mg = (LP - point1).magnitude
      effectsmsh.Scale = Vector3.new(5, mg * 5, 5)
      Lightning(LP, point1, 5, 1, "Bright blue", 0.3, 0.1)
      effectsg.CFrame = CFrame.new((LP + point1) / 2, point1) * CFrame.Angles(math.rad(90), 0, 0)
      coroutine.resume(coroutine.create(function()
        for i = 0, 1, 0.2 do
          swait()
          effectsg.Transparency = 1 * i
          effectsmsh.Scale = Vector3.new(3 - 3 * i, mg * 5, 3 - 3 * i)
        end
        effectsg:Destroy()
      end
))
    end

    local newpos = baseprt.Position
    local inc = rangepower
    repeat
      swait()
      rangepos = rangepos - 10
      hit = rayCast(newpos, dir.lookVector, inc, Character)
      drawtrail(newpos, pos)
      newpos = newpos + dir.lookVector * inc
      if hit ~= nil then
        if hit.Parent:FindFirstChild("Humanoid") ~= nil then
          hum = hit.Parent.Humanoid
          tTorso = hit.Parent.Torso
          Damagefunc(Bullet, hit, 20, 20, 10, "Normal", RootPart, 1, "Hit1", 1)
          MagicCircle(BrickColor.new("Cyan"), tTorso.CFrame, 2, 2, 2, 0.5, 0.5, 0.5)
          MagicBlock(BrickColor.new("Cyan"), tTorso.CFrame, 2, 2, 2, 0.3, 0.3, 0.3)
          attackdebounce = false
        else
          if hit.Parent.Parent ~= nil and hit.Parent.Parent:FindFirstChild("Humanoid") ~= nil then
            hum = hit.Parent.Parent.Humanoid
            tTorso = hit.Parent.Parent.Torso
            Damagefunc(Bullet, hit, 20, 20, 10, "Normal", RootPart, 1, "Hit1", 1)
            attackdebounce = false
          end
        end
        MagicCircle(BrickColor.new("Bright blue"), CFrame.new(newpos), 2, 2, 2, 10, 10, 10)
        MagicBlock(BrickColor.new("Bright blue"), CFrame.new(newpos), 2, 2, 2, 10, 10, 10)
      end
    until rangepos <= 0
  end
))
end

spread2 = 5
range2 = 100
rangepower2 = 10
shoottrail2 = function(mouse, baseprt)
  coroutine.resume(coroutine.create(function(v)
    local spreadvector = Vector3.new(math.random(-spread2, spread2), math.random(-spread2, spread2), math.random(-spread2, spread2)) * (baseprt.Position - MMouse.Hit.p).magnitude / 100
    local dir = CFrame.new((baseprt.Position + MMouse.Hit.p) / 2, MMouse.Hit.p + spreadvector)
    local hit, pos = rayCast(baseprt.Position, dir.lookVector, 10, Character)
    local rangepos2 = range2
    local drawtrail = function(From, To)
      local effectsmsh = Instance.new("CylinderMesh")
      effectsmsh.Scale = Vector3.new(1, 1, 1)
      effectsmsh.Name = "Mesh"
      local effectsg = Instance.new("Part")
      effectsg.formFactor = 3
      effectsg.CanCollide = false
      effectsg.Name = "Eff"
      effectsg.Locked = true
      effectsg.Anchored = true
      effectsg.Size = Vector3.new(0.2, 0.2, 0.2)
      effectsg.Parent = workspace
      effectsmsh.Parent = effectsg
      effectsg.BrickColor = BrickColor.new("Bright blue")
      effectsg.Material = "Neon"
      effectsg.Reflectance = 0.25
      local LP = From
      local point1 = To
      local mg = (LP - point1).magnitude
      effectsmsh.Scale = Vector3.new(5, mg * 5, 5)
      effectsg.CFrame = CFrame.new((LP + point1) / 2, point1) * CFrame.Angles(math.rad(90), 0, 0)
      coroutine.resume(coroutine.create(function()
        for i = 0, 1, 0.2 do
          swait()
          effectsg.Transparency = 1 * i
          effectsmsh.Scale = Vector3.new(3 - 3 * i, mg * 5, 3 - 3 * i)
        end
        effectsg:Destroy()
      end
))
    end

    local newpos = baseprt.Position
    local inc = rangepower2
    repeat
      swait()
      rangepos2 = rangepos2 - 10
      hit = rayCast(newpos, dir.lookVector, inc, Character)
      drawtrail(newpos, pos)
      newpos = newpos + dir.lookVector * inc
      if hit ~= nil then
        if hit.Parent:FindFirstChild("Humanoid") ~= nil then
          hum = hit.Parent.Humanoid
          tTorso = hit.Parent.Torso
          Damagefunc(Bullet, hit, 20, 20, 10, "Normal", RootPart, 1, "Hit1", 1)
          MagicCircle(BrickColor.new("Cyan"), tTorso.CFrame, 2, 2, 2, 10, 10, 10)
          MagicBlock(BrickColor.new("Cyan"), tTorso.CFrame, 2, 2, 2, 10, 10, 10)
          attackdebounce = false
        else
          if hit.Parent.Parent ~= nil and hit.Parent.Parent:FindFirstChild("Humanoid") ~= nil then
            hum = hit.Parent.Parent.Humanoid
            tTorso = hit.Parent.Parent.Torso
            attackdebounce = false
          end
        end
        MagniDamage(hit, newpos, 5, 10, 20, 10, "Knockdown")
        MagicCircle(BrickColor.new("Bright blue"), CFrame.new(newpos), 2, 2, 2, 5, 5, 5)
        MagicBlock(BrickColor.new("Bright blue"), CFrame.new(newpos), 2, 2, 2, 5, 5, 5)
      end
    until rangepos2 <= 0
  end
))
end

spread3 = 0
range3 = 10000
rangepower3 = 1
shoottrail3 = function(mouse, baseprt)
  coroutine.resume(coroutine.create(function(v)
    local spreadvector = Vector3.new(math.random(-spread3, spread3), math.random(-spread3, spread3), math.random(-spread3, spread3)) * (baseprt.Position - MMouse.Hit.p).magnitude / 100
    local dir = CFrame.new((baseprt.Position + MMouse.Hit.p) / 2, MMouse.Hit.p + spreadvector)
    local hit, pos = rayCast(baseprt.Position, dir.lookVector, 10, Character)
    local rangepos3 = range3
    local drawtrail = function(From, To)
      local effectsmsh = Instance.new("CylinderMesh")
      effectsmsh.Scale = Vector3.new(1, 1, 1)
      effectsmsh.Name = "Mesh"
      local effectsg = Instance.new("Part")
      effectsg.formFactor = 3
      effectsg.CanCollide = false
      effectsg.Name = "Eff"
      effectsg.Locked = true
      effectsg.Anchored = true
      effectsg.Size = Vector3.new(0.5, 0.5, 0.5)
      effectsg.Parent = workspace
      effectsmsh.Parent = effectsg
      effectsg.BrickColor = BrickColor.new("Bright blue")
      effectsg.Material = "Neon"
      effectsg.Reflectance = 0.25
      local LP = From
      local point1 = To
      local mg = (LP - point1).magnitude
      effectsmsh.Scale = Vector3.new(7, mg * 7, 7)
      effectsg.CFrame = CFrame.new((LP + point1) / 2, point1) * CFrame.Angles(math.rad(90), 0, 0)
      coroutine.resume(coroutine.create(function()
        for i = 0, 1, 0.05 do
          swait()
          effectsg.Transparency = 1 * i
          effectsmsh.Scale = Vector3.new(3 - 3 * i, mg * 5, 3 - 3 * i)
        end
        effectsg:Destroy()
      end
))
    end

    local newpos = baseprt.Position
    local inc = rangepower3
    repeat
      swait()
      rangepos3 = rangepos3 - 10
      hit = rayCast(newpos, dir.lookVector, inc, Character)
      drawtrail(newpos, pos)
      newpos = newpos + dir.lookVector * inc
      if hit ~= nil then
        if hit.Parent:FindFirstChild("Humanoid") ~= nil then
          hum = hit.Parent.Humanoid
          tTorso = hit.Parent.Torso
          Damagefunc(Bullet, hit, 20, 20, 10, "Normal", RootPart, 1, "Hit1", 1)
          MagniDamage(hit, newpos, 15, 10, 20, 10, "Knockdown")
          MagicCircle(BrickColor.new("Cyan"), tTorso.CFrame, 2, 2, 2, 10, 10, 10)
          MagicBlock(BrickColor.new("Cyan"), tTorso.CFrame, 2, 2, 2, 10, 10, 10)
          attackdebounce = false
        else
          if hit.Parent.Parent ~= nil and hit.Parent.Parent:FindFirstChild("Humanoid") ~= nil then
            hum = hit.Parent.Parent.Humanoid
            tTorso = hit.Parent.Parent.Torso
            attackdebounce = false
          end
        end
        MagniDamage(hit, newpos, 15, 10, 20, 10, "Knockdown")
        MagicCircle(BrickColor.new("Bright blue"), CFrame.new(newpos), 2, 2, 2, 15, 15, 15)
        MagicBlock(BrickColor.new("Bright blue"), CFrame.new(newpos), 2, 2, 2, 15, 15, 15)
        MagicCircle(BrickColor.new("Bright blue"), CFrame.new(newpos), 2, 2, 2, 15, 15, 15)
        MagicBlock(BrickColor.new("Bright blue"), CFrame.new(newpos), 2, 2, 2, 15, 15, 15)
        MagicCircle(BrickColor.new("Bright blue"), CFrame.new(newpos), 2, 2, 2, 15, 15, 15)
        MagicBlock(BrickColor.new("Bright blue"), CFrame.new(newpos), 2, 2, 2, 15, 15, 15)
      end
    until rangepos3 <= 0
  end
))
end

MagniDamage = function(Hit, Part, magni, mindam, maxdam, knock, Type)
  for _,c in pairs(workspace:children()) do
    local hum = c:findFirstChild("Humanoid")
    if hum ~= nil then
      local head = c:findFirstChild("Torso")
      if head ~= nil then
        local targ = head.Position - Part
        local mag = targ.magnitude
        if mag <= magni and c.Name ~= Player.Name then
          Damagefunc(Hit, head, mindam, maxdam, knock, Type, RootPart, 0.2, 1, 3)
        end
      end
    end
  end
end

boom = function()
  if mana >= 1 then
    mana = 10
  else
    return 
  end
  attack = true
  aim = true
  Humanoid.WalkSpeed = 7
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.1, 0.5, 0.2) * angles(math.rad(90), math.rad(0), math.rad(-20)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-0.5, 0.5, -1.2) * angles(math.rad(90), math.rad(0), math.rad(40)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.3)
    FakeHandleweld.C0 = clerp(FakeHandleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(-20), math.rad(0)), 0.3)
  end
  L1 = true
  if Explode == false then
    so("http://www.roblox.com/asset/?id=269408478", Handle, 0.5, 1)
  else
    if Explode == true then
      for i = 1, 20 do
        so("http://www.roblox.com/asset/?id=130815729", Handle, 0.5, 1)
      end
    end
  end
  do
    shoottrail(mouse, BarrelA)
    for i = 0, 1, 0.1 do
      swait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
      RW.C0 = clerp(RW.C0, CFrame.new(1.1, 0.5, 0.2) * angles(math.rad(120), math.rad(0), math.rad(-20)), 0.5)
      LW.C0 = clerp(LW.C0, CFrame.new(-0.5, 1, -1.2) * angles(math.rad(140), math.rad(0), math.rad(40)), 0.5)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.3)
      FakeHandleweld.C0 = clerp(FakeHandleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(-20), math.rad(0)), 0.3)
      PumpHandleweld.C0 = clerp(PumpHandleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.5)
    end
    L1 = false
    for i = 0, 1, 0.1 do
      swait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, 0.2) * angles(math.rad(90), math.rad(0), math.rad(-20)), 0.3)
      LW.C0 = clerp(LW.C0, CFrame.new(-0.5, 0.5, -1.2) * angles(math.rad(90), math.rad(0), math.rad(40)), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.3)
      FakeHandleweld.C0 = clerp(FakeHandleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(-20), math.rad(0)), 0.3)
      PumpHandleweld.C0 = clerp(PumpHandleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.5)
    end
    for i = 0, 1, 0.1 do
      swait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(10), math.rad(0), math.rad(0)), 0.3)
      RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, 0.2) * angles(math.rad(70), math.rad(0), math.rad(-20)), 0.3)
      LW.C0 = clerp(LW.C0, CFrame.new(-0.5, 0.5, -1.2) * angles(math.rad(100), math.rad(0), math.rad(30)), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.3)
      FakeHandleweld.C0 = clerp(FakeHandleweld.C0, cf(0, -0.5, 0) * angles(math.rad(-50), math.rad(0), math.rad(0)), 0.3)
      PumpHandleweld.C0 = clerp(PumpHandleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.5)
    end
    so("http://www.roblox.com/asset/?id=229859347", Handle, 1, 1)
    for i = 0, 1, 0.1 do
      swait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(10), math.rad(0), math.rad(0)), 0.3)
      RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, 0.2) * angles(math.rad(70), math.rad(0), math.rad(-20)), 0.3)
      LW.C0 = clerp(LW.C0, CFrame.new(-0.5, 0.5, -1) * angles(math.rad(90), math.rad(0), math.rad(30)), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.3)
      FakeHandleweld.C0 = clerp(FakeHandleweld.C0, cf(0, -0.5, 0) * angles(math.rad(-50), math.rad(0), math.rad(0)), 0.3)
      PumpHandleweld.C0 = clerp(PumpHandleweld.C0, cf(0, 0, -0.5) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.5)
    end
    for i = 0, 1, 0.1 do
      swait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, 0.2) * angles(math.rad(70), math.rad(0), math.rad(-20)), 0.3)
      LW.C0 = clerp(LW.C0, CFrame.new(-0.5, 0.5, -1.2) * angles(math.rad(100), math.rad(0), math.rad(30)), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.3)
      FakeHandleweld.C0 = clerp(FakeHandleweld.C0, cf(0, -0.5, 0) * angles(math.rad(-50), math.rad(0), math.rad(0)), 0.3)
      PumpHandleweld.C0 = clerp(PumpHandleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.5)
    end
    Humanoid.WalkSpeed = 20
    attack = false
  end
end

shakalaka = function()
  if mana >= 2 then
    mana = 10
  else
    return 
  end
  attack = true
  aim = true
  Humanoid.WalkSpeed = 7
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.1, 0.5, 0.2) * angles(math.rad(90), math.rad(0), math.rad(-20)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-0.5, 0.5, -1.2) * angles(math.rad(90), math.rad(0), math.rad(40)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.3)
    FakeHandleweld.C0 = clerp(FakeHandleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(-20), math.rad(0)), 0.3)
  end
  L1 = true
  if Explode == false then
    so("http://www.roblox.com/asset/?id=269408478", Handle, 0.5, 1)
  else
    if Explode == true then
      for i = 1, 20 do
        so("http://www.roblox.com/asset/?id=130815729", Handle, 0.5, 1)
      end
    end
  end
  do
    for i = 1, 2 do
      shoottrail2(mouse, BarrelA)
      shoottrail2(mouse, BarrelB)
    end
    for i = 0, 1, 0.1 do
      swait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
      RW.C0 = clerp(RW.C0, CFrame.new(1.1, 0.5, 0.2) * angles(math.rad(120), math.rad(0), math.rad(-20)), 0.5)
      LW.C0 = clerp(LW.C0, CFrame.new(-0.5, 1, -1.2) * angles(math.rad(140), math.rad(0), math.rad(40)), 0.5)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.3)
      FakeHandleweld.C0 = clerp(FakeHandleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(-20), math.rad(0)), 0.3)
      PumpHandleweld.C0 = clerp(PumpHandleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.5)
    end
    L1 = false
    for i = 0, 1, 0.1 do
      swait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, 0.2) * angles(math.rad(90), math.rad(0), math.rad(-20)), 0.3)
      LW.C0 = clerp(LW.C0, CFrame.new(-0.5, 0.5, -1.2) * angles(math.rad(90), math.rad(0), math.rad(40)), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.3)
      FakeHandleweld.C0 = clerp(FakeHandleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(-20), math.rad(0)), 0.3)
      PumpHandleweld.C0 = clerp(PumpHandleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.5)
    end
    for i = 0, 1, 0.1 do
      swait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(10), math.rad(0), math.rad(0)), 0.3)
      RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, 0.2) * angles(math.rad(70), math.rad(0), math.rad(-20)), 0.3)
      LW.C0 = clerp(LW.C0, CFrame.new(-0.5, 0.5, -1.2) * angles(math.rad(100), math.rad(0), math.rad(30)), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.3)
      FakeHandleweld.C0 = clerp(FakeHandleweld.C0, cf(0, -0.5, 0) * angles(math.rad(-50), math.rad(0), math.rad(0)), 0.3)
      PumpHandleweld.C0 = clerp(PumpHandleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.5)
    end
    so("http://www.roblox.com/asset/?id=229859347", Handle, 1, 1)
    for i = 0, 1, 0.1 do
      swait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(10), math.rad(0), math.rad(0)), 0.3)
      RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, 0.2) * angles(math.rad(70), math.rad(0), math.rad(-20)), 0.3)
      LW.C0 = clerp(LW.C0, CFrame.new(-0.5, 0.5, -1) * angles(math.rad(90), math.rad(0), math.rad(30)), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.3)
      FakeHandleweld.C0 = clerp(FakeHandleweld.C0, cf(0, -0.5, 0) * angles(math.rad(-50), math.rad(0), math.rad(0)), 0.3)
      PumpHandleweld.C0 = clerp(PumpHandleweld.C0, cf(0, 0, -0.5) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.5)
    end
    for i = 0, 1, 0.1 do
      swait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, 0.2) * angles(math.rad(70), math.rad(0), math.rad(-20)), 0.3)
      LW.C0 = clerp(LW.C0, CFrame.new(-0.5, 0.5, -1.2) * angles(math.rad(100), math.rad(0), math.rad(30)), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.3)
      FakeHandleweld.C0 = clerp(FakeHandleweld.C0, cf(0, -0.5, 0) * angles(math.rad(-50), math.rad(0), math.rad(0)), 0.3)
      PumpHandleweld.C0 = clerp(PumpHandleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.5)
    end
    Humanoid.WalkSpeed = 20
    attack = false
  end
end

shabang = function()
  if mana >= 4 then
    mana = 10
  else
    return 
  end
  attack = true
  aim = true
  Humanoid.WalkSpeed = 7
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.1, 0.5, 0.2) * angles(math.rad(90), math.rad(0), math.rad(-20)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-0.5, 0.5, -1.2) * angles(math.rad(90), math.rad(0), math.rad(40)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.3)
    FakeHandleweld.C0 = clerp(FakeHandleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(-20), math.rad(0)), 0.3)
  end
  L1 = true
  if Explode == false then
    so("http://www.roblox.com/asset/?id=269408478", Handle, 0.5, 1)
  else
    if Explode == true then
      for i = 1, 20 do
        so("http://www.roblox.com/asset/?id=130815729", Handle, 0.5, 1)
      end
    end
  end
  do
    for i = 1, 3, 0.1 do
      wait()
      MagicBlock(BrickColor.new("Bright blue"), BarrelA.CFrame, 2, 2, 2, 0.5, 0.5, 0.5)
    end
    MagicRing(BrickColor.new("Bright blue"), BarrelA.CFrame * euler(1.57, 0, 0), 1, 1, 1, 0.5, 0.5, 0.5, 0.05, 0.4)
    MagicRing(BrickColor.new("Bright blue"), BarrelA.CFrame * euler(1.57, 0, 0), 1, 1, 1, 0.3, 0.3, 0.3, 0.05, 0.6)
    MagicRing(BrickColor.new("Bright blue"), BarrelA.CFrame * euler(1.57, 0, 0), 1, 1, 1, 0.1, 0.1, 0.1, 0.05, 0.8)
    shoottrail3(mouse, BarrelA)
    for i = 0, 1, 0.1 do
      swait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
      RW.C0 = clerp(RW.C0, CFrame.new(1.1, 0.5, 0.2) * angles(math.rad(120), math.rad(0), math.rad(-20)), 0.5)
      LW.C0 = clerp(LW.C0, CFrame.new(-0.5, 1, -1.2) * angles(math.rad(140), math.rad(0), math.rad(40)), 0.5)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.3)
      FakeHandleweld.C0 = clerp(FakeHandleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(-20), math.rad(0)), 0.3)
      PumpHandleweld.C0 = clerp(PumpHandleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.5)
    end
    L1 = false
    for i = 0, 1, 0.1 do
      swait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, 0.2) * angles(math.rad(90), math.rad(0), math.rad(-20)), 0.3)
      LW.C0 = clerp(LW.C0, CFrame.new(-0.5, 0.5, -1.2) * angles(math.rad(90), math.rad(0), math.rad(40)), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.3)
      FakeHandleweld.C0 = clerp(FakeHandleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(-20), math.rad(0)), 0.3)
      PumpHandleweld.C0 = clerp(PumpHandleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.5)
    end
    for i = 0, 1, 0.1 do
      swait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(10), math.rad(0), math.rad(0)), 0.3)
      RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, 0.2) * angles(math.rad(70), math.rad(0), math.rad(-20)), 0.3)
      LW.C0 = clerp(LW.C0, CFrame.new(-0.5, 0.5, -1.2) * angles(math.rad(100), math.rad(0), math.rad(30)), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.3)
      FakeHandleweld.C0 = clerp(FakeHandleweld.C0, cf(0, -0.5, 0) * angles(math.rad(-50), math.rad(0), math.rad(0)), 0.3)
      PumpHandleweld.C0 = clerp(PumpHandleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.5)
    end
    so("http://www.roblox.com/asset/?id=229859347", Handle, 1, 1)
    for i = 0, 1, 0.1 do
      swait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(10), math.rad(0), math.rad(0)), 0.3)
      RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, 0.2) * angles(math.rad(70), math.rad(0), math.rad(-20)), 0.3)
      LW.C0 = clerp(LW.C0, CFrame.new(-0.5, 0.5, -1) * angles(math.rad(90), math.rad(0), math.rad(30)), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.3)
      FakeHandleweld.C0 = clerp(FakeHandleweld.C0, cf(0, -0.5, 0) * angles(math.rad(-50), math.rad(0), math.rad(0)), 0.3)
      PumpHandleweld.C0 = clerp(PumpHandleweld.C0, cf(0, 0, -0.5) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.5)
    end
    for i = 0, 1, 0.1 do
      swait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, 0.2) * angles(math.rad(70), math.rad(0), math.rad(-20)), 0.3)
      LW.C0 = clerp(LW.C0, CFrame.new(-0.5, 0.5, -1.2) * angles(math.rad(100), math.rad(0), math.rad(30)), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.3)
      FakeHandleweld.C0 = clerp(FakeHandleweld.C0, cf(0, -0.5, 0) * angles(math.rad(-50), math.rad(0), math.rad(0)), 0.3)
      PumpHandleweld.C0 = clerp(PumpHandleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.5)
    end
    Humanoid.WalkSpeed = 20
    attack = false
  end
end

Bin = script.Parent
ob1u = function(mouse)
end

ob1d = function(mouse)
  if attack == false then
    Fire()
  end
end

key = function(k)
  k = k:lower()
  if attack == false then
    if k == "z" then
      boom()
    end
    if k == "x" then
      shakalaka()
    end
    if k == "c" then
      shabang()
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
  MMouse = mouse
end

Bin.Selected:connect(s)
Bin.Deselected:connect(ds)
local sine = 0
local change = 1
local val = 0
local donum = 0
local idle = 0
while 1 do
  swait()
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
    if 0.5 <= donum then
      handidle = true
    else
      if donum <= 0 then
        handidle = false
      end
    end
    if handidle == false then
      donum = donum + 0.003
    else
      donum = donum - 0.003
    end
    if 1 < RootPart.Velocity.y and hitfloor == nil then
      Anim = "Jump"
      if attack == false then
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(-5), math.rad(0), math.rad(-15)), 0.3)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-5), math.rad(0), math.rad(15)), 0.3)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(15)), 0.3)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-20)), 0.3)
        RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(20)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.3)
        LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-75), math.rad(-10)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.3)
        FakeHandleweld.C0 = clerp(FakeHandleweld.C0, cf(0, 1, -1) * angles(math.rad(-170), math.rad(0), math.rad(0)), 0.3)
      end
    else
      if RootPart.Velocity.y < -1 and hitfloor == nil then
        Anim = "Fall"
        if attack == false then
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(5), math.rad(0), math.rad(-15)), 0.3)
          Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(5), math.rad(0), math.rad(15)), 0.3)
          RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(15)), 0.3)
          LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-30)), 0.3)
          RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(20)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.3)
          LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-75), math.rad(-10)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.3)
          FakeHandleweld.C0 = clerp(FakeHandleweld.C0, cf(0, 1, -1) * angles(math.rad(-170), math.rad(0), math.rad(0)), 0.3)
        end
      else
        if torvel.x < 1 or torvel.z < 1 and hitfloor ~= nil then
          Anim = "Idle"
          if attack == false then
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(5), math.rad(0), math.rad(-15)), 0.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(5), math.rad(0), math.rad(15)), 0.3)
            RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(10)), 0.3)
            LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-10)), 0.3)
            RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.3)
            LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-75), math.rad(-10)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.3)
            FakeHandleweld.C0 = clerp(FakeHandleweld.C0, cf(0, 1, -1) * angles(math.rad(-170), math.rad(0), math.rad(0)), 0.3)
          end
        else
          if 2 < torvel.x or torvel.z > 2 and hitfloor ~= nil then
            Anim = "Walk"
            if attack == false then
              change = 3
              RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.3)
              Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
              RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(40), math.rad(0), math.rad(10)), 0.3)
              LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30 * math.cos((sine) / 15)), math.rad(0), math.rad(-10)), 0.3)
              RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.3)
              LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.3)
              FakeHandleweld.C0 = clerp(FakeHandleweld.C0, cf(0, 1, -1) * angles(math.rad(-170), math.rad(0), math.rad(0)), 0.3)
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
end

