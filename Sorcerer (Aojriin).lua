-- Gaster <3
-- Condolences To Asriel And Fang (sexy Mofo's)

wait(0.016666666666667)
Effects = {}
local Player = game.Players.localPlayer
local Character = Player.Character
local Humanoid = Character.Humanoid
local mouse = Player:GetMouse()
local m = Instance.new("Model", Character)
m.Name = "WeaponModel"
local effect = Instance.new("Model", Character)
effect.Name = "Effects"
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
vt = Vector3.new
local idle = 0
local attacktype = 1
local Torsovelocity = RootPart.Velocity * Vector3.new(1, 0, 1).magnitude
local velocity = RootPart.Velocity.y
local sine = 0
local change = 1
local mana = 100
local mananum = 0
local it = Instance.new
xenabled = true
cenabled = true
venabled = true
zenabled = true
local grabbed = false
local cf = CFrame.new
local mr = math.rad
local angles = CFrame.Angles
local ud = UDim2.new
local c3 = Color3.new
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
        if Type == "Debuff" then
            print'hi'
        else
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
fenbarmana3.BackgroundColor3 = BrickColor.new("Magenta").Color
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
MagicCylinder2 = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = CreatePart(effect, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.2, 0.2, 0.2))
  prt.Anchored = true
  prt.CFrame = cframe
  msh = CreateMesh("CylinderMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 5)
  Effects[#Effects + 1] = {prt, "Cylinder", delay, x3, y3, z3}
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

SlashEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = CreatePart(effect, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe
  msh = CreateMesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=448386996", vt(0, 0, 0), vt(x1, y1, z1))
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

HeadEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
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

Handle = CreatePart(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "FakeHandle", Vector3.new(1.49999952, 0.219999999, 0.25999999))
HandleWeld = CreateWeld(m, Character["Right Arm"], Handle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00998926163, -1.0048238, -0.00521278381, -3.05175781e-005, 3.05175781e-005, -1, 3.05175781e-005, -1, -3.05185094e-005, -1, -3.05185094e-005, 3.05166468e-005))
FakeHandle = CreatePart(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "FakeHandle", Vector3.new(1.49999952, 0.219999999, 0.25999999))
FakeHandleWeld = CreateWeld(m, Handle, FakeHandle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 1.00999999, 0.860000014))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.85998917, -0.0150715113, 4.76837158e-005, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Magenta", "Part", Vector3.new(0.200000003, 1.00999999, 0.790000081))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.69999313, -0.0150667429, 0.00504493713, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0.5, "Bright violet", "Part", Vector3.new(0.800000012, 0.800000012, 0.800000012))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.1099968, -0.020236969, 0.0101566315, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.599999905, 0.299999952, 0.399999976))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0196530819, -1.10002947, 0.00994300842, 3.05195063e-005, -1, 2.14517786e-006, 1, 3.05193462e-005, -7.3674797e-005, 7.36747315e-005, 2.14742613e-006, 1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=3270017", Vector3.new(0, 0, 0), Vector3.new(0.800000012, 0.800000012, 2))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Plum", "Part", Vector3.new(0.200000003, 0.709999979, 0.720000029))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(6.67572021e-005, -1.10500383, -0.0198179483, -6.10337593e-005, -6.10356219e-005, -1, 1, 4.65618655e-010, -6.10337593e-005, 4.1909658e-009, -1, 6.10356219e-005))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.400000036, 1.00999999, 0.699999988))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.29998541, -0.0150543451, 3.43322754e-005, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(1.49999952, 0.219999999, 0.25999999))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(1.71999991, 0.319999993, 0.359999985))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.86998796, 0.160014272, 0.0100288391, 1, 1.86264515e-009, -6.10351563e-005, -5.58793545e-009, 1, -6.10351563e-005, 6.10351563e-005, 6.10351563e-005, 1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 1.00999999, 0.790000081))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0150831938, -4.23999023, 0.00506019592, 9.31322575e-010, -1, 0, 1, 9.31322575e-010, 0, 0, 0, 1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "rbxassetid://448386996", Vector3.new(0, 0, 0), Vector3.new(0.0120000001, 0.0120000001, 0.0120000001))
Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(1.19999993, 1.29999995, 0.399999976))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0803631544, 3.18995714, 0.300125122, 3.05195063e-005, -1, 2.14517786e-006, 1, 3.05193462e-005, -7.3674797e-005, 7.36747315e-005, 2.14742613e-006, 1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=3270017", Vector3.new(0, 0, 0), Vector3.new(1.10000002, 1.10000002, 1))
Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(1.19999993, 1.29999995, 0.399999976))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0803436041, 3.18998289, -0.299877167, 3.05195063e-005, -1, 2.14517786e-006, 1, 3.05193462e-005, -7.3674797e-005, 7.36747315e-005, 2.14742613e-006, 1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=3270017", Vector3.new(0, 0, 0), Vector3.new(1.10000002, 1.10000002, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 1.00999999, 0.790000081))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00506019592, -4.23999023, 0.0150831938, 0, 0, -1, 1, 9.31322575e-010, 0, 9.31322575e-010, -1, 0))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "rbxassetid://448386996", Vector3.new(0, 0, 0), Vector3.new(0.0120000001, 0.0120000001, 0.0120000001))
Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Bright violet", "Part", Vector3.new(1.19999993, 1.29999995, 0.399999976))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0803533792, 3.18997002, 0.00012588501, 3.05195063e-005, -1, 2.14517786e-006, 1, 3.05193462e-005, -7.3674797e-005, 7.36747315e-005, 2.14742613e-006, 1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=3270017", Vector3.new(0, 0, 0), Vector3.new(1.10000002, 1.10000002, 1))
Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(1.19999993, 1.29999995, 0.399999976))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0803533792, 3.18997002, 0.00012588501, 3.05195063e-005, -1, 2.14517786e-006, 1, 3.05193462e-005, -7.3674797e-005, 7.36747315e-005, 2.14742613e-006, 1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=3270017", Vector3.new(0, 0, 0), Vector3.new(1, 1, 5))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.609999955, 0.319999993, 0.359999985))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.094997406, -0.959980011, 0.00995254517, 1.264202e-005, 1, 6.31808798e-005, -1, 1.26400919e-005, 3.05188951e-005, 3.05180947e-005, -6.31812654e-005, 1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(2.49999952, 0.219999999, 0.25999999))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.71000099, -6.74724579e-005, 8.20159912e-005, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.319999874, 0.319999993, 0.359999985))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.56999588, -0.260039806, 0.0099811554, 1, 1.86264515e-009, -6.10351563e-005, -5.58793545e-009, 1, -6.10351563e-005, 6.10351563e-005, 6.10351563e-005, 1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.319999874, 0.319999993, 0.359999985))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.3599968, -0.260046244, 0.009973526, 1, 1.86264515e-009, -6.10351563e-005, -5.58793545e-009, 1, -6.10351563e-005, 6.10351563e-005, 6.10351563e-005, 1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.599999905, 0.519999981, 0.560000002))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0999407768, 0.959987402, -3.81469727e-005, -1.26400264e-005, -1, 2.14649481e-006, 1, -1.26400919e-005, -3.05170342e-005, 3.05170615e-005, 2.14610918e-006, 1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.319999874, 0.319999993, 0.359999985))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0300308466, -1.36999273, 0.00995635986, 1.264202e-005, 1, 6.31808798e-005, -1, 1.26400919e-005, 3.05188951e-005, 3.05180947e-005, -6.31812654e-005, 1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 1.00999999, 0.860000014))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.53999329, -0.0150617361, 3.81469727e-005, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Bright violet", "Part", Vector3.new(0.819999874, 0.25, 0.359999985))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.01999855, -0.260010839, 0.00999450684, 1, 1.86264515e-009, -6.10351563e-005, -5.58793545e-009, 1, -6.10351563e-005, 6.10351563e-005, 6.10351563e-005, 1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.319999874, 0.319999993, 0.359999985))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.56999779, -0.260009289, 0.010011673, 1, 1.86264515e-009, -6.10351563e-005, -5.58793545e-009, 1, -6.10351563e-005, 6.10351563e-005, 6.10351563e-005, 1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Tip = CreatePart(m, Enum.Material.Neon, 0, 0.5, "Really black", "Tip", Vector3.new(1, 1, 1))
TipWeld = CreateWeld(m, FakeHandle, Tip, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.1099968, -0.020236969, 0.0101566315, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("SpecialMesh", Tip, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
IceMortar = function()
  local dacf = Tip.CFrame * angles(-1.57 + math.random(40, 80) / 100, 0, math.random(-80, 80) / 100)
  local icepart1 = CreatePart(effect, "SmoothPlastic", 0, 1, BrickColor.new("Cyan"), "Ice", vt())
  icepart1.Anchored = true
  i1msh = CreateMesh("SpecialMesh", icepart1, "Sphere", "", vt(0, 0, 0), vt(5, 5, 5))
  icepart1.CFrame = dacf
  for i = 0, 1, 0.1 do
    swait()
    icepart1.CFrame = dacf
  end
  local cfinc = 99999
  icepart1.Transparency = 1
  CreateSound("rbxassetid://192410089", icepart1, 1, 1)
  game:GetService("Debris"):AddItem(icepart1, 1)
  local spread = vt((math.random(-1, 0) + math.random()) * 16, (math.random(-1, 0) + math.random()) * 16, (math.random(-1, 0) + math.random()) * 16) * (icepart1.Position - (icepart1.Position + vt(0, -1, 0))).magnitude / 100
  local TheHit = mouse.Hit.p
  local MouseLook = cf((icepart1.Position + TheHit) / 2, TheHit + spread)
  local hit, pos = rayCast(icepart1.Position, MouseLook.lookVector, 999, Character)
  local target1, distance1 = rayCast(icepart1.Position, MouseLook.lookVector, 999, Character)
  local test1, dist1 = mouse.Hit.p, nil
  if target1 ~= nil then
    cfda = target1.Position + vt(math.random(-3000, 3000) / 100, 10, math.random(-3000, 3000) / 100)
    local hit2, pos2 = rayCast(icepart1.Position, MouseLook.lookVector, 999, Character)
    local d1 = CreatePart(effect, "SmoothPlastic", 0, 0.5, BrickColor.new("Magenta"), "Effect", vt())
    d1.Anchored = true
    d1.CFrame = cf(pos2)
    MagniDamage(d1, 20, 2, 5, -10, "Debuff")
    SphereEffect(BrickColor.new("Black"), cf(pos2), 100, 100, 100, 10, 10, 10, 0.07)
    msh = CreateMesh("CylinderMesh", d1, "", "", vt(0, 0, 0), vt(200, 5, 200))
    d2 = d1:Clone()
    d2.Parent = d1
    d2.CFrame = cf(d1.Position)
    d2.BrickColor = BrickColor.new("Black")
    d2.Mesh.Scale = vt(0, 5, 0)
    table.insert(Effects, {d1, "SatelliteStrike", d2, d2.Mesh, 0})
  end
end

local nr = NumberRange.new
local ns = NumberSequence.new
local cs = ColorSequence.new
local nsk = NumberSequenceKeypoint.new
particle = function(parent, col1, col2, lightemis, size, texture, transparency, zoffset, accel, drag, ltp, velinher, emisdir, enabled, lifetime, rate, rotation, rotspeed, speed, velspread)
  local fp = it("ParticleEmitter")
  fp.Parent = parent
  fp.Color = cs(col1, col2)
  fp.LightEmission = lightemis
  fp.Size = size
  fp.Texture = texture
  fp.Transparency = transparency
  fp.ZOffset = zoffset
  fp.Acceleration = accel
  fp.Drag = drag
  fp.LockedToPart = ltp
  fp.VelocityInheritance = velinher
  fp.EmissionDirection = emisdir
  fp.Enabled = enabled
  fp.Lifetime = lifetime
  fp.Rate = rate
  fp.Rotation = rotation
  fp.RotSpeed = rotspeed
  fp.Speed = speed
  fp.VelocitySpread = velspread
  return fp
end

sizeseq = ns({nsk(0, 4), nsk(0.027, 8.5), nsk(0.184, 9), nsk(1, 10)})
transseq = ns({nsk(0, 0.375), nsk(0.4, 1), nsk(1, 1)})
local icicleparti1 = particle(Torso, Color3.new(1, 1, 1), Color3.new(0.3921568627451, 0.3921568627451, 1), 0.2, sizeseq, "http://www.roblox.com/asset/?id=329766994", transseq, 0, vt(0, -0.5, 0), 0, false, 0, "Bottom", false, nr(7, 10), 15, nr(-360, 360), nr(-30, 30), nr(3), 20)
sizeseq = ns({nsk(0, 5), nsk(0.025, 7.7), nsk(0.192, 9), nsk(1, 10)})
transseq = ns({nsk(0, 0.8), nsk(0.3, 1), nsk(1, 1)})
local icicleparti2 = particle(Torso, Color3.new(1, 1, 1), Color3.new(0.3921568627451, 0.3921568627451, 1), 0.3, sizeseq, "http://www.roblox.com/asset/?id=241594419", transseq, 0, vt(0, -0.5, 0), 0, false, 0, "Bottom", false, nr(7, 10), 80, nr(-360, 360), nr(-30, 30), nr(3), 20)
sizeseq = ns({nsk(0, 0.328), nsk(0.075, 3.11), nsk(0.206, 4.97), nsk(1, 10)})
transseq = ns({nsk(0, 0.363), nsk(0.107, 1), nsk(1, 1)})
DarkMortar = function()
  for i = 1, math.random(3, 5) do
    local dacf = Tip.CFrame * angles(-1.57 + math.random(40, 80) / 100, 0, math.random(-80, 80) / 100)
    local icepart1 = CreatePart(effect, "SmoothPlastic", 0, 1, BrickColor.new("Cyan"), "Ice", vt())
    icepart1.Anchored = true
    i1msh = CreateMesh("SpecialMesh", icepart1, "Sphere", "", vt(0, 0, 0), vt(5, 5, 5))
    icepart1.CFrame = dacf
    for i = 0, 1, 0.1 do
      swait()
      icepart1.CFrame = dacf
    end
    local cfinc = 99999
    icepart1.Transparency = 1
    CreateSound("rbxassetid://192410089", icepart1, 1, 1.5)
    game:GetService("Debris"):AddItem(icepart1, 1)
    local spread = vt((math.random(-5, 5) + math.random()) * 16, (math.random(-5, 5) + math.random()) * 16, (math.random(-5, 5) + math.random()) * 16) * (icepart1.Position - (icepart1.Position + vt(0, -1, 0))).magnitude / 100
    local TheHit = mouse.Hit.p
    local MouseLook = cf((icepart1.Position + TheHit) / 2, TheHit + spread)
    local hit, pos = rayCast(icepart1.Position, MouseLook.lookVector, 999, Character)
    local target1, distance1 = rayCast(icepart1.Position, MouseLook.lookVector, 999, Character)
    local test1, dist1 = mouse.Hit.p, nil
    if target1 ~= nil then
      cfda = target1.Position + vt(math.random(-3000, 3000) / 100, 10, math.random(-3000, 3000) / 100)
      local hit2, pos2 = rayCast(icepart1.Position, MouseLook.lookVector, 999, Character)
      BlockEffect(BrickColor.new("Black"), LeftArm.CFrame * cf(0, -1, 0), 12, 12, 12, 0.5, 0.5, 0.5, 0.05)
      SphereEffect(BrickColor.new("Black"), LeftArm.CFrame * cf(0, -1, 0), 12, 12, 12, 0.5, 0.5, 0.5, 0.05)
      local d1 = CreatePart(effect, "SmoothPlastic", 0, 0.5, BrickColor.new("Magenta"), "Effect", vt())
      d1.Anchored = true
      d1.CFrame = cf(pos2)
      MagniDamage(d1, 20, 2, 5, -10, "Normal")
      SphereEffect(BrickColor.new("Black"), cf(pos2), 10, 10, 10, 10, 10, 10, 0.07)
      msh = CreateMesh("CylinderMesh", d1, "", "", vt(0, 0, 0), vt(50, 5, 50))
      d2 = d1:Clone()
      d2.Parent = d1
      d2.CFrame = cf(d1.Position)
      d2.BrickColor = BrickColor.new("Black")
      d2.Mesh.Scale = vt(0, 5, 0)
      table.insert(Effects, {d1, "MiniStrike", d2, d2.Mesh, 0})
    end
  end
end

Ravage = function()
  attack = true
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(100), math.rad(0), math.rad(0)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-20)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(30), math.rad(0), math.rad(0)), 0.3)
  end
  IceMortar()
  SphereEffect(BrickColor.new("Black"), Tip.CFrame, 10, 10, 10, 5, 5, 5, 0.07)
  RingEffect(BrickColor.new("Black"), Tip.CFrame * angles(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 10, 10, 2, 0.5, 0.5, 0, 0.07)
  RingEffect(BrickColor.new("Black"), Tip.CFrame * angles(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 10, 10, 2, 0.5, 0.5, 0, 0.08)
end

attackone = function()
  attack = true
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-70)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-1 + 1 * math.cos(sine / 9)), math.rad(0), math.rad(70)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(80), math.rad(0), math.rad(-20)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(30), math.rad(-30)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(50), math.rad(-70)), 0.3)
  end
  for i = 0, 1, 0.5 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-1 + 1 * math.cos(sine / 9)), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(90), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(80), math.rad(0), math.rad(-20)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(30), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(50), math.rad(0)), 0.3)
  end
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(70)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-1 + 1 * math.cos(sine / 9)), math.rad(0), math.rad(-70)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(80), math.rad(0), math.rad(-20)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(30), math.rad(30)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(50), math.rad(70)), 0.3)
  end
  CreateSound("rbxassetid://241816017", Tip, 1, 1)
  MagniDamage(Tip, 10, 7, 10, 1, "Normal")
  SphereEffect(BrickColor.new("Black"), Tip.CFrame, 10, 10, 10, 5, 5, 5, 0.07)
  RingEffect(BrickColor.new("Black"), Tip.CFrame * angles(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 10, 10, 2, 0.5, 0.5, 0, 0.07)
  RingEffect(BrickColor.new("Black"), Tip.CFrame * angles(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 10, 10, 2, 0.5, 0.5, 0, 0.08)
  attack = false
end

Nightmare = function()
  attack = true
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-70)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-1 + 1 * math.cos(sine / 9)), math.rad(0), math.rad(70)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(180), math.rad(0), math.rad(0)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(30), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(80), math.rad(50), math.rad(-70)), 0.3)
  end
  BlockEffect(BrickColor.new("Black"), LeftArm.CFrame * cf(0, -1, 0), 12, 12, 12, 0.5, 0.5, 0.5, 0.05)
  DarkMortar()
end

attacktwo = function()
  attack = true
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-1 + 1 * math.cos(sine / 9)), math.rad(0), math.rad(90)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(30), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(80), math.rad(50), math.rad(-70)), 0.3)
  end
  CreateSound("rbxassetid://241816017", Tip, 1, 1.5)
  MagniDamage(LeftArm, 3, 7, 12, 1, "Normal")
  BlockEffect(BrickColor.new("Black"), LeftArm.CFrame * cf(0, -1, 0), 12, 12, 12, 0.5, 0.5, 0.5, 0.05)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-1 + 1 * math.cos(sine / 9)), math.rad(0), math.rad(90)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-130)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(30), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(80), math.rad(50), math.rad(-70)), 0.3)
  end
  attack = false
end

local grabbing = false
Finale = function()
  attack = true
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-1 + 1 * math.cos(sine / 9)), math.rad(0), math.rad(-90)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(0)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(30), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(80), math.rad(50), math.rad(-70)), 0.3)
  end
  local ef = CreatePart(workspace, "SmoothPlastic", 0, 1, BrickColor.new("Black"), "ef", vt(0.5, 0.5, 0.5))
  con1 = LeftArm.Touched:connect(function(hit)
    local ht = hit.Parent
    coroutine.resume(coroutine.create(function()
      while grabbing do
        swait()
        ef.CFrame = LeftArm.CFrame * cf(0, -0.5, 0) * angles(1.57, 0, 1.57)
      end
    end
))
    local hum1 = ht:FindFirstChild("Humanoid")
    if hum1 ~= nil then
      grabbing = true
      coroutine.resume(coroutine.create(function()
      hum1.PlatformStand = true
      wait(3)
      hum1.PlatformStand = false
    end
))
      local asd = CreateWeld(ef, ef, ht:FindFirstChild("Torso"), CFrame.new(0, 0, 0), CFrame.new(0, 0, 0))
      asd.Parent = ef
      asd.Name = "asd"
      asd.C0 = asd.C0 * CFrame.Angles(math.rad(0), 0, 0)
    else
      do
        if hum1 == nil then
          con1:disconnect()
          wait()
          return 
        end
      end
    end
  end
)
  if grabbing == false then
    for i = 0, 1, 0.05 do
      swait()
      Torso.Velocity = RootPart.CFrame.lookVector * 30
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.3)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-1 + 1 * math.cos(sine / 9)), math.rad(0), math.rad(90)), 0.3)
      RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(0)), 0.3)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(30), math.rad(0)), 0.3)
      FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(80), math.rad(50), math.rad(0)), 0.3)
    end
  end
  do
    if grabbing == true then
      for i = 0, 1, 0.05 do
        swait()
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.3)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-20), math.rad(0), math.rad(90)), 0.3)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(0)), 0.3)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-120)), 0.3)
        RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
        LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(30), math.rad(0)), 0.3)
        FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(80), math.rad(50), math.rad(0)), 0.3)
        BlockEffect(BrickColor.new("Black"), LeftArm.CFrame, 10, 10, 10, -0.5, -0.5, -0.5, 0.07, 1)
      end
      mana = mana
      CreateSound("rbxassetid://188959258", LeftArm, 0.5, 1)
      for i = 0, 1 do
        BlockEffect(BrickColor.new("Black"), LeftArm.CFrame, 50, 50, 50, -0.5, -0.5, -0.5, 0.07, 1)
      end
      MagniDamage(LeftArm, 15, 20, 30, 1, "Normal")
      coroutine.resume(coroutine.create(function()
    for i = 0, 3 do
      swait()
      WaveEffect(BrickColor.new("Black"), RootPart.CFrame * cf(0, -1, 0) * angles(0, math.random(-50, 50), 0), 1, 1, 1, 1, 1, 1, 0.05)
    end
  end
))
    end
    grabbing = false
    con1:disconnect()
    ef.Parent = nil
    attack = false
  end
end

attackthree = function()
  attack = true
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-1 + 1 * math.cos(sine / 9)), math.rad(0), math.rad(90)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(0)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(30), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(80), math.rad(50), math.rad(-70)), 0.3)
  end
  MagniDamage(LeftArm, 5, 10, 10, 1, "Normal")
  CreateSound("rbxassetid://241816017", LeftArm, 1, 0.8)
  SlashEffect(BrickColor.new("Black"), RootPart.CFrame * cf(0, 1, -5) * angles(math.rad(90), math.rad(-50, 50), 0), 0.001, 0.1, 0.1, 0, 0.001, 0.001, 0.05)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-1 + 1 * math.cos(sine / 9)), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(30), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(80), math.rad(50), math.rad(-70)), 0.3)
  end
  attack = false
end

ShootCannon = function(asd, mindam, maxdam, x, y, z, magn)
  CreateSound("rbxassetid://263623156", asd, 0.5, 1)
  CreateSound("rbxassetid://263610152", asd, 0.5, 1)
  CreateSound("rbxassetid://263623139", asd, 0.5, 1)
  local MainPos = asd.Position
  local MainPos2 = mouse.Hit.p
  local MouseLook = cf((MainPos + MainPos2) / 2, MainPos2)
  num = 30
  coroutine.resume(coroutine.create(function()
    repeat
      wait()
      local hit, pos = rayCast(MainPos, MouseLook.lookVector, 10, Character)
      local mag = (MainPos - pos).magnitude
      MagicCylinder2(BrickColor.new("Magenta"), CFrame.new((MainPos + pos) / 2, pos) * angles(1.57, 0, 0), 0.1, mag * 5, 0.1, 0.2, 0, 0.2, 0.03)
      MainPos = MainPos + MouseLook.lookVector * 10
      num = num - 1
      if hit ~= nil then
        num = 0
        local ref = CreatePart(effect, "SmoothPlastic", 0, 1, BrickColor.new("Magenta"), "Reference", vt())
        ref.Anchored = true
        ref.CFrame = cf(pos)
        game.Debris:AddItem(ref, 3)
        MagniDamage(ref, mag, mindam, maxdam, 1, "Normal")
        CreateSound("rbxassetid://263610039", ref, 1, 1)
        CreateSound("rbxassetid://263610111", ref, 1, 1)
        BlockEffect(BrickColor.new("Magenta"), cf(pos), 5, 5, 5, 0.5, 0.5, 0.5, 0.05)
        game:GetService("Debris"):AddItem(ref, 1)
        MagniDamage(ref, magn, mindam, maxdam, 10, "Normal")
      end
    until num <= 0
  end
))
end

Debuff = function()
  attack = true
  for i = 0, 1, 0.1 do
    swait()
    BlockEffect(BrickColor.new("Black"), Tip.CFrame, 10, 10, 10, -0.5, -0.5, -0.5, 0.07, 1)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-1 + 1 * math.cos(sine / 9)), math.rad(0), math.rad(90)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(0)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(30), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(80), math.rad(50), math.rad(-70)), 0.3)
  end
  SphereEffect(BrickColor.new("Black"), Tip.CFrame, 10, 10, 10, 0.5, 0.5, 0.5, 0.07)
  ShootCannon(Tip, 10, 15, 5, 5, 5, 2)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-1 + 1 * math.cos(sine / 9)), math.rad(0), math.rad(90)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(30), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(80), math.rad(50), math.rad(-70)), 0.3)
  end
  attack = false
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
        attacktype = 1
        attackthree()
      end
    end
  end
end

key = function(k)
  k = k:lower()
  if attack == false and k == "z" and mana >= 10 and zenabled == true then
    zenabled = false
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
    Debuff()
  else
    if attack == false and k == "x" and mana >= 20 and xenabled == true then
      mana = mana
      xenabled = false
      Ravage()
    else
      if attack == false and k == "c" and mana >= 30 and cenabled == true then
        cenabled = false
        mana = mana
        coroutine.resume(coroutine.create(function()
    for i = 1, 0, -0.003 do
      swait()
      fenframe3a.Size = UDim2.new(0.05 * i, 0, 0.1, 0)
    end
    cenabled = true
    fenframe3a.Size = UDim2.new(0, 0, 0.1, 0)
  end
))
        Nightmare()
      else
        if attack == false and k == "v" and mana >= 45 and venabled == true then
          venabled = false
          coroutine.resume(coroutine.create(function()
    for i = 1, 0, -0.005 do
      swait()
      fenframe4a.Size = UDim2.new(0.05 * i, 0, 0.1, 0)
    end
    venabled = true
    fenframe4a.Size = UDim2.new(0, 0, 0.1, 0)
  end
))
          Finale()
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
coroutine.resume(coroutine.create(function()
  while 1 do
    for i = 0, 1, 0.1 do
      swait()
    end
    BlockEffect(BrickColor.new("Black"), LeftArm.CFrame * cf(0, -1, 0), 2, 2, 2, 0.5, 0.5, 0.5, 0.05)
  end
end
))
while 1 do
  while 1 do
    while 1 do
      swait()
      Torsovelocity = RootPart.Velocity * Vector3.new(1, 0, 1).magnitude
      velocity = RootPart.Velocity.y
      sine = sine + change
      local hit, pos = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 4, Character)
      if equipped == true or equipped == false then
        if 1 < RootPart.Velocity.y and hit == nil then
          Anim = "Jump"
          if attack == false then
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.3)
            RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(50)), 0.3)
            LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-10)), 0.3)
            RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
            LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
            FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(-80), math.rad(50), math.rad(80)), 0.3)
          end
        else
          if RootPart.Velocity.y < -1 and hit == nil then
            Anim = "Fall"
            if attack == false then
              RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
              Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
              RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(80)), 0.3)
              LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-40), math.rad(0), math.rad(-20)), 0.3)
              RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
              LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
              FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(-80), math.rad(50), math.rad(80)), 0.3)
            end
          else
            if Torsovelocity.x < 1 or Torsovelocity.z < 1 and hit ~= nil then
              Anim = "Idle"
              if attack == false then
                change = 1
                RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0 - 0.1 * math.cos((sine) / 9)) * angles(math.rad(0), math.rad(0), math.rad(-40)), 0.3)
                Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-1 + 1 * math.cos((sine) / 9)), math.rad(0), math.rad(40)), 0.3)
                RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(70)), 0.3)
                LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 - 0.1 * math.cos((sine) / 9), 0) * angles(math.rad(20), math.rad(0), math.rad(-20)), 0.3)
                RH.C0 = clerp(RH.C0, cf(1, -1 + 0.1 * math.cos((sine) / 9), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
                LH.C0 = clerp(LH.C0, cf(-1, -1 + 0.1 * math.cos((sine) / 9), 0) * LHCF * angles(math.rad(0), math.rad(30), math.rad(0)), 0.3)
                FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(-70), math.rad(50), math.rad(80)), 0.3)
              end
            else
              if 2 < Torsovelocity.x or 2 < Torsovelocity.z and hit ~= nil then
                Anim = "Walk"
                if attack == false then
                  RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
                  Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(0)), 0.3)
                  RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(70)), 0.3)
                  LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-20)), 0.3)
                  RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
                  LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
                  FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(-80), math.rad(50), math.rad(80)), 0.3)
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
                if Thing[2] == "MiniStrike" then
                  if Thing[5] < 50 then
                    Thing[5] = Thing[5] + 1
                    Thing[4].Scale = vt(Thing[5], 5, Thing[5])
                  else
                    refda = CreatePart(effect, "SmoothPlastic", 0, 1, BrickColor.new("Black"), "Reference", vt())
                    refda.Anchored = true
                    refda.CFrame = cf(Thing[1].Position)
                    game:GetService("Debris"):AddItem(refda, 1)
                    CreateSound("rbxassetid://334325056", refda, 1, 1.5)
                    CreateSound("rbxassetid://243711369", refda, 0.8, 2)
                    MagniDamage(refda, 20, 8, 10, 0, "Normal.")
                    HeadEffect(BrickColor.new("Black"), cf(refda.Position), 20, 99999, 20, -4, 1, -4, 0.1)
                    BlockEffect(BrickColor.new("Black"), cf(refda.Position), 80, 80, 80, -5, -5, -5, 0.07, 1)
                    RingEffect(BrickColor.new("Black"), cf(refda.Position) * angles(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 3, 3, 0, 3, 3, 0, 0.07)
                    attack = false
                    Thing[1].Parent = nil
                    table.remove(Effects, e)
                  end
                end
                if Thing[2] == "SatelliteStrike" then
                  if Thing[5] < 200 then
                    Thing[5] = Thing[5] + 2
                    Thing[4].Scale = vt(Thing[5], 5, Thing[5])
                  else
                    refda = CreatePart(effect, "SmoothPlastic", 0, 1, BrickColor.new("Black"), "Reference", vt())
                    refda.Anchored = true
                    refda.CFrame = cf(Thing[1].Position)
                    game:GetService("Debris"):AddItem(refda, 1)
                    CreateSound("rbxassetid://334325056", refda, 1, 1)
                    CreateSound("rbxassetid://243711369", refda, 0.8, 1)
                    MagniDamage(refda, 20, 20, 30, 0, "Debuff")
                    HeadEffect(BrickColor.new("Black"), cf(refda.Position), 50, 99999, 50, -4, 1, -4, 0.1)
                    BlockEffect(BrickColor.new("Black"), cf(refda.Position), 120, 120, 120, -5, -5, -5, 0.07, 1)
                    RingEffect(BrickColor.new("Black"), cf(refda.Position) * angles(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 10, 10, 0, 3, 3, 0, 0.07)
                    coroutine.resume(coroutine.create(function()
  for i = 1, 0, -0.0075 do
    swait()
    fenframe2a.Size = UDim2.new(0.05 * i, 0, 0.1, 0)
  end
  xenabled = true
  fenframe2a.Size = UDim2.new(0, 0, 0.1, 0)
end
))
                    attack = false
                    Thing[1].Parent = nil
                    table.remove(Effects, e)
                  end
                end
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
        fenbarmana4.Text = "[Mana]  <{[  " .. mana .. "  ]}> [Mana]"
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

