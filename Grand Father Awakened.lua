wait(0.016666666666667)
Effects = {}
local Player = game.Players.localPlayer
local Character = Player.Character
local Humanoid = Character.Humanoid
local mouse = Player:GetMouse()
local m = Instance.new("Model", Character)
m.Name = "WeaponModel"
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
local grabbed = false
local cn = CFrame.new
local mr = math.rad
local angles = CFrame.Angles
local ud = UDim2.new
local c3 = Color3.new
cf = CFrame.new
vt = Vector3.new
local NeckCF = cn(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
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
RW.C0 = cn(1.5, 0.5, 0)
RW.C1 = cn(0, 0.5, 0)
RW.Part1 = RightArm
RW.Parent = Torso
LW.Name = "LW"
LW.Part0 = Torso
LW.C0 = cn(-1.5, 0.5, 0)
LW.C1 = cn(0, 0.5, 0)
LW.Part1 = LeftArm
LW.Parent = Torso
clerp = function(a, b, t)
  return a:lerp(b, t)
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

local RbxUtility = LoadLibrary("RbxUtility")
local Create = RbxUtility.Create
RemoveOutlines = function(part)
  part.TopSurface = 10
end

Bin = Instance.new("HopperBin")
Bin.Name = "Grandfather"
Bin.Parent = Player.Backpack
local co1 = 5
local co2 = 15
local co3 = 20
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
local skill2stam = 30
local skill3stam = 40
local skill4stam = 60
local recovermana = 5
local skillcolorscheme = BrickColor.new("Electric blue").Color
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
text1.Text = "[Z]\n Charging Phantom"
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
text2.Text = "[X]\n Burst"
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
text3.Text = "[C]\n Slayer"
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
text4.Text = "[V]\n Deathbringer"
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
      BlockEffect(BrickColor.new("Dark stone grey"), hit.Parent.Torso.CFrame, 5, 5, 5, 1, 1, 1, 0.08, 1)
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

Handle = CreatePart(m, Enum.Material.SmoothPlastic, 0, 1, "Dark stone grey", "Handle", Vector3.new(0.301086754, 1.6108675, 0.501086771))
HandleWeld = CreateWeld(m, Character["Right Arm"], Handle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.100143433, -0.0490188599, -0.948987007, 1, 3.96515679e-005, -4.57561896e-007, 4.59127648e-007, -3.94877134e-005, 1, 3.96515534e-005, -0.999999881, -3.94877352e-005))
CreateMesh("CylinderMesh", Handle, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 1))
FakeHandle = CreatePart(m, Enum.Material.SmoothPlastic, 0, 1, "Dark stone grey", "FakeHandle", Vector3.new(0.301086754, 1.01086748, 0.501086771))
FakeHandleWeld = CreateWeld(m, Handle, FakeHandle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0.100002289, -2.38418579e-007, 1, 0, -1.21810548e-013, 0, 1, 0, -1.21810548e-013, 0, 1))
CreateMesh("CylinderMesh", FakeHandle, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 1))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Electric blue", "Part", Vector3.new(4.96793175, 0.301086754, 0.301086754))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-7.15510941, -1.90734863e-005, 0.702292681, 4.57603875e-007, -1, 3.94877279e-005, -1, -4.59169627e-007, -3.96519026e-005, 3.96519208e-005, -3.94877097e-005, -1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 1))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Electric blue", "Part", Vector3.new(0.534429014, 0.301086754, 0.602173686))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-9.90629196, -0.00159835815, 0.551736951, 4.57603875e-007, -1, 3.94877279e-005, -1, -4.59169627e-007, -3.96519026e-005, 3.96519208e-005, -3.94877097e-005, -1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.609700918, 0.301086754, 0.301086754))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0284621716, -0.00449371338, -1.81086731, -5.12749975e-005, 3.94578965e-005, 1, -1, -3.49058809e-007, -5.1274983e-005, 3.47035609e-007, -1, 3.94579147e-005))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.575000048, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.301086754, 0.301086754, 0.301086754))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00508117676, 1.5098114, 0.11826086, 1, 0, -1.21810548e-013, 0, 1, 0, -1.21810548e-013, 0, 1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.574999988, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(1.50543368, 0.301086754, 1.8065207))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0426602364, 0.00109100342, 9.48926163, -0.000899777107, 0.000873938261, -0.999999285, -0.999999642, 3.91341673e-005, 0.000899811625, 3.99205201e-005, 0.999999702, 0.000873902754))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Really blue", "Part", Vector3.new(0.301086754, 0.316141129, 0.301086754))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.333436251, 0.000793457031, 8.35922623, -0.000899777107, 0.000873938261, -0.999999285, -0.999999642, 3.91341673e-005, 0.000899811625, 3.99205201e-005, 0.999999702, 0.000873902754))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 0.5))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(1.50543368, 0.451630175, 0.301086754))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.9184494, -2.67028809e-005, 0.70228529, 4.57603875e-007, -1, 3.94877279e-005, -1, -4.59169627e-007, -3.96519026e-005, 3.96519208e-005, -3.94877097e-005, -1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.999999642))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Electric blue", "Part", Vector3.new(0.752716839, 0.301086754, 1.35489058))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-10.0154343, -0.00157928467, -0.426794767, 4.57603875e-007, -1, 3.94877279e-005, -1, -4.59169627e-007, -3.96519026e-005, 3.96519208e-005, -3.94877097e-005, -1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 1))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Really blue", "Part", Vector3.new(0.301086754, 0.316141129, 0.301086754))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0425262451, 0.000827789307, 8.81126785, -0.000899777107, 0.000873938261, -0.999999285, -0.999999642, 3.91341673e-005, 0.000899811625, 3.99205201e-005, 0.999999702, 0.000873902754))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.5))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.301086754, 0.301086754, 0.301086754))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00466156006, 1.81087875, -0.333374381, 1, 0, -1.21810548e-013, 0, 1, 0, -1.21810548e-013, 0, 1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.574999988, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.308614165, 0.301086754, 0.301086754))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0284621716, -0.00449371338, -1.50976944, -5.12749975e-005, 3.94578965e-005, 1, -1, -3.49058809e-007, -5.1274983e-005, 3.47035609e-007, -1, 3.94579147e-005))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.575000048, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.301086754, 0.301086754, 0.301086754))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00520324707, 1.8109169, 0.268797398, 1, 0, -1.21810548e-013, 0, 1, 0, -1.21810548e-013, 0, 1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.574999988, 1, 1))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Electric blue", "Part", Vector3.new(0.301086754, 0.301086754, 1.27961898))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-10.5423431, -0.00157928467, -0.313881636, 4.57603875e-007, -1, 3.94877279e-005, -1, -4.59169627e-007, -3.96519026e-005, 3.96519208e-005, -3.94877097e-005, -1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 1))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Really blue", "Part", Vector3.new(0.451630175, 0.481738806, 0.602173507))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0487370491, -0.000247955322, 2.86176682, -0.000899777107, 0.000873938261, -0.999999285, -0.999999642, 3.91341673e-005, 0.000899811625, 3.99205201e-005, 0.999999702, 0.000873902754))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(6.32282209, 0.301086754, 1.50543368))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-6.32712173, -1.90734863e-005, -0.0505013466, 4.57603875e-007, -1, 3.94877279e-005, -1, -4.59169627e-007, -3.96519026e-005, 3.96519208e-005, -3.94877097e-005, -1))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Really blue", "Part", Vector3.new(0.331195503, 0.481738806, 0.451630056))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.70939636, -7.2479248e-005, -0.0504274368, 4.57603875e-007, -1, 3.94877279e-005, -1, -4.59169627e-007, -3.96519026e-005, 3.96519208e-005, -3.94877097e-005, -1))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Really blue", "Part", Vector3.new(0.451630175, 0.481738806, 0.602173507))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0490119457, -0.000259399414, 2.56068802, -0.000899777107, 0.000873938261, -0.999999285, -0.999999642, 3.91341673e-005, 0.000899811625, 3.99205201e-005, 0.999999702, 0.000873902754))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Really blue", "Part", Vector3.new(0.301086754, 0.316141129, 0.301086754))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.418473721, 0.000823974609, 9.26318741, -0.000899777107, 0.000873938261, -0.999999285, -0.999999642, 3.91341673e-005, 0.000899811625, 3.99205201e-005, 0.999999702, 0.000873902754))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 0.5))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.301086754, 0.301086754, 0.301086754))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000705718994, 2.03668594, -0.401076674, 1, 0, -1.21810548e-013, 0, 1, 0, -1.21810548e-013, 0, 1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.5, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.301086754, 0.301086754, 0.301086754))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00479888916, 1.50979996, -0.182814002, 1, 0, -1.21810548e-013, 0, 1, 0, -1.21810548e-013, 0, 1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.574999988, 1, 1))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Electric blue", "Part", Vector3.new(1.0538038, 0.301086754, 1.0538038))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.335342526, -0.00140380859, 10.1657486, -0.000899777107, 0.000873938261, -0.999999285, -0.999999642, 3.91341673e-005, 0.000899811625, 3.99205201e-005, 0.999999702, 0.000873902754))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.90326035, 0.451630175, 1.80652046))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.71409225, -1.90734863e-005, -0.0504274368, 4.57603875e-007, -1, 3.94877279e-005, -1, -4.59169627e-007, -3.96519026e-005, 3.96519208e-005, -3.94877097e-005, -1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(1.20434725, 0.301086754, 0.301086754))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.35922241, -0.000736236572, -0.12569809, 4.57603875e-007, -1, 3.94877279e-005, -1, -4.59169627e-007, -3.96519026e-005, 3.96519208e-005, -3.94877097e-005, -1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 0.5))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.90326035, 0.46668449, 0.602173507))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.048728466, -0.000244140625, 2.56388092, -0.000899777107, 0.000873938261, -0.999999285, -0.999999642, 3.91341673e-005, 0.000899811625, 3.99205201e-005, 0.999999702, 0.000873902754))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.90326035, 0.301086754, 0.301086754))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.71409225, 0.00185012817, 0.928104281, 4.57603875e-007, -1, 3.94877279e-005, -1, -4.59169627e-007, -3.96519026e-005, 3.96519208e-005, -3.94877097e-005, -1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.50000006, 0.5))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.301086754, 0.301086754, 0.301086754))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(7.62939453e-006, 0.125941753, -0.757068634, 1, 1.37518157e-008, -6.78005599e-005, 6.78005526e-005, -6.78751094e-005, 1, 9.14985776e-009, -1, -6.78751094e-005))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.5, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.90326035, 0.46668449, 0.602173507))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0487220287, -0.000247955322, 2.86184311, -0.000899777107, 0.000873938261, -0.999999285, -0.999999642, 3.91341673e-005, 0.000899811625, 3.99205201e-005, 0.999999702, 0.000873902754))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.301086754, 0.301086754, 0.301086754))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -0.0245597363, 2.70542908, 1, 1.37518157e-008, -6.78005599e-005, 6.78005526e-005, -6.78751094e-005, 1, 9.14985776e-009, -1, -6.78751094e-005))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.5, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.301086754, 0.301086754, 0.903260231))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.03665924, -1.90734863e-005, -0.0504274368, 4.57603875e-007, -1, 3.94877279e-005, -1, -4.59169627e-007, -3.96519026e-005, 3.96519208e-005, -3.94877097e-005, -1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.5, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.301086754, 0.301086754, 0.301086754))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(7.62939453e-006, -0.175084352, -0.305431366, 1, 1.37518157e-008, -6.78005599e-005, 6.78005526e-005, -6.78751094e-005, 1, 9.14985776e-009, -1, -6.78751094e-005))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.5, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.301086754, 1.20434701, 0.301086754))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000682830811, 1.3592453, 0.201077223, 1, 0, -1.21810548e-013, 0, 1, 0, -1.21810548e-013, 0, 1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(1.65597737, 0.301086754, 0.301086754))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.13341141, -0.000728607178, 0.175384045, 4.57603875e-007, -1, 3.94877279e-005, -1, -4.59169627e-007, -3.96519026e-005, 3.96519208e-005, -3.94877097e-005, -1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 0.5))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.301086754, 4.66684437, 0.301086754))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-7.62939453e-006, -0.372001648, 0.0505459309, 1, 0, -1.21810548e-013, 0, 1, 0, -1.21810548e-013, 0, 1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.301086754, 0.301086754, 0.301086754))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000690460205, 2.03668976, 0.502177, 1, 0, -1.21810548e-013, 0, 1, 0, -1.21810548e-013, 0, 1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.5, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.301086754, 0.301086754, 0.301086754))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.14440918e-005, 0.756229401, 0.201057196, 1, 4.53288976e-007, -0.000242933747, -4.62881871e-007, 1, -3.94877243e-005, 0.000242933733, 3.94878407e-005, 1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.5, 0.5))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.90326035, 0.301086754, 0.301086754))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.71409225, 3.81469727e-006, -1.02897382, 4.57603875e-007, -1, 3.94877279e-005, -1, -4.59169627e-007, -3.96519026e-005, 3.96519208e-005, -3.94877097e-005, -1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.50000006, 0.5))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.301086754, 0.301086754, 0.301086754))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00428390503, 2.18722153, 0.652512789, 1, 0, -1.21810548e-013, 0, 1, 0, -1.21810548e-013, 0, 1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.451630175, 0.301086754, 0.301086754))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.71954346, -1.90734863e-005, -0.930585861, -5.97323947e-007, 1, -3.94876188e-005, -1, -5.98872589e-007, -3.92196453e-005, -3.92196707e-005, 3.94875933e-005, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.50000006, 0.5))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.301086754, 1.65597713, 0.301086754))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000690460205, 1.13343048, -0.25054419, 1, 0, -1.21810548e-013, 0, 1, 0, -1.21810548e-013, 0, 1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.301086754, 0.301086754, 0.301086754))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00430297852, 2.18722153, -0.55182302, 1, 0, -1.21810548e-013, 0, 1, 0, -1.21810548e-013, 0, 1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.301086754, 0.301086754, 0.301086754))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0.304611206, -0.250566363, 1, 4.53288976e-007, -0.000242933747, -4.62881871e-007, 1, -3.94877243e-005, 0.000242933733, 3.94878407e-005, 1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.5, 0.5))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(4.66684532, 0.301086754, 0.301086754))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.372020721, -1.90734863e-005, 0.0248427391, 4.57603875e-007, -1, 3.94877279e-005, -1, -4.59169627e-007, -3.96519026e-005, 3.96519208e-005, -3.94877097e-005, -1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 0.5))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.451630175, 0.301086754, 0.301086754))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.71954346, 3.81469727e-006, -1.03216434, 4.57603875e-007, -1, 3.94877279e-005, -1, -4.59169627e-007, -3.96519026e-005, 3.96519208e-005, -3.94877097e-005, -1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.50000006, 0.5))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.301086754, 0.301086754, 0.301086754))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.90734863e-005, -2.70624924, 0.0505087376, 1, 4.53288976e-007, -0.000242933747, -4.62881871e-007, 1, -3.94877243e-005, 0.000242933733, 3.94878407e-005, 1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.5, 0.5))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.301086754, 0.301086754, 0.301086754))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -2.70625687, -0.100024939, 1, 4.53288976e-007, -0.000242933747, -4.62881871e-007, 1, -3.94877243e-005, 0.000242933733, 3.94878407e-005, 1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.5, 0.5))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.451630175, 0.46668449, 1.80652046))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.71692657, -1.90734863e-005, -0.0504274368, 4.57603875e-007, -1, 3.94877279e-005, -1, -4.59169627e-007, -3.96519026e-005, 3.96519208e-005, -3.94877097e-005, -1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.301086754, 3.01086736, 0.301086754))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -1.20000458, -0.0999996662, 1, 0, -1.21810548e-013, 0, 1, 0, -1.21810548e-013, 0, 1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 1))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Really blue", "Part", Vector3.new(0.301086754, 0.316141129, 0.301086754))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.334261298, 0.000827789307, 9.2624855, -0.000899777107, 0.000873938261, -0.999999285, -0.999999642, 3.91341673e-005, 0.000899811625, 3.99205201e-005, 0.999999702, 0.000873902754))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 0.5))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.301086754, 0.301086754, 1.20434701))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.18719864, -0.00431060791, -0.0504274368, 4.57603875e-007, -1, 3.94877279e-005, -1, -4.59169627e-007, -3.96519026e-005, 3.96519208e-005, -3.94877097e-005, -1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 1))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Electric blue", "Part", Vector3.new(6.47336626, 0.301086754, 0.301086754))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-6.40240479, -0.00157928467, -0.803154707, 4.57603875e-007, -1, 3.94877279e-005, -1, -4.59169627e-007, -3.96519026e-005, 3.96519208e-005, -3.94877097e-005, -1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.752716839, 0.451630175, 0.301086754))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.54207611, -1.90734863e-005, 0.476480961, 4.57603875e-007, -1, 3.94877279e-005, -1, -4.59169627e-007, -3.96519026e-005, 3.96519208e-005, -3.94877097e-005, -1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.5))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Wedge", Vector3.new(0.451630175, 0.301086754, 0.301086754))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.71826172, -0.155326843, 0.928016305, -4.03840176e-007, 1, -3.94877716e-005, 0.999999642, 3.67844393e-007, -0.000911563693, -0.000911563693, -3.94881281e-005, -0.999999702))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.525000036, 0.5))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Wedge", Vector3.new(0.90326035, 0.301086754, 0.301086754))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.71409225, -0.151596069, 1.02904379, 5.33462469e-007, -1, 3.94429662e-005, 0.999999642, 4.97507472e-007, -0.000911563693, 0.000911563693, 3.94434392e-005, 0.999999702))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 0.5))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Wedge", Vector3.new(0.451630175, 0.301086754, 0.301086754))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.71826935, -0.155357361, 1.02902567, 5.23053018e-007, -1, 3.9487677e-005, 0.999999642, 4.87057321e-007, -0.000911563693, 0.000911563693, 3.9488139e-005, 0.999999702))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.525000036, 0.5))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Wedge", Vector3.new(0.90326035, 0.301086754, 0.301086754))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.71409225, -0.149482727, 1.02903473, -5.33462469e-007, 1, -3.94429662e-005, -0.999999642, -4.97507472e-007, 0.000911563693, 0.000911563693, 3.94434392e-005, 0.999999702))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 0.5))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Wedge", Vector3.new(0.451630175, 0.301086754, 0.301086754))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.71826935, -0.153251648, 1.02901638, -5.33462469e-007, 1, -3.94429662e-005, -0.999999642, -4.97507472e-007, 0.000911563693, 0.000911563693, 3.94434392e-005, 0.999999702))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.525000036, 0.5))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Wedge", Vector3.new(0.90326035, 0.301086754, 0.301086754))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.71409225, -0.149520874, 0.928028941, 4.03840204e-007, -1, 3.94877716e-005, -0.999999642, -3.6784445e-007, 0.000911563693, -0.000911563693, -3.94881281e-005, -0.999999702))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 0.5))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Wedge", Vector3.new(0.90326035, 0.301086754, 0.301086754))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.71409225, -0.151580811, 0.928034782, -4.03840204e-007, 1, -3.94877716e-005, 0.999999642, 3.6784445e-007, -0.000911563693, -0.000911563693, -3.94881281e-005, -0.999999702))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 0.5))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Wedge", Vector3.new(0.451630175, 0.301086754, 0.301086754))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.71826935, -0.153282166, 0.928025723, 3.93224127e-007, -1, 3.93387672e-005, -0.999999642, -3.57364172e-007, 0.000911563693, -0.000911563693, -3.93391128e-005, -0.999999702))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.525000036, 0.5))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Wedge", Vector3.new(0.451630175, 0.301086754, 0.301086754))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000545501709, -4.74642563, -0.626800418, -0.999999642, -4.28963403e-007, 0.000911563693, 4.64959157e-007, -1, 3.94877243e-005, 0.000911563693, 3.94881354e-005, 0.999999702))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 0.5))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Wedge", Vector3.new(0.451630175, 0.301086754, 0.301086754))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000541687012, -4.74642563, 0.777341485, 0.999999642, 4.28269175e-007, -0.000911593495, 4.64266122e-007, -1, 3.94877243e-005, -0.000911593495, -3.94881354e-005, -0.999999702))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 0.5))
Wedge = CreatePart(m, Enum.Material.Neon, 0, 0, "Electric blue", "Wedge", Vector3.new(0.301086754, 0.301086754, 0.301086754))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0018157959, -10.5423431, 1.0290426, -0.999999642, -4.27670102e-007, 0.000911563693, 4.63665856e-007, -1, 3.94877243e-005, 0.000911563693, 3.94881354e-005, 0.999999702))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 0.5))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Wedge", Vector3.new(0.451630175, 0.301086754, 0.301086754))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000541687012, -3.99372101, -0.47625947, -0.999999642, -4.87055274e-007, 0.000911593495, 5.23011408e-007, -1, 3.94429735e-005, 0.000911593495, 3.94434355e-005, 0.999999702))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 0.5))
Wedge = CreatePart(m, Enum.Material.Neon, 0, 0, "Electric blue", "Wedge", Vector3.new(0.301086754, 0.301086754, 0.301086754))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0018119812, 9.48854065, 1.0290426, 0.999999642, 2.18837357e-007, -0.000911563693, -2.54833196e-007, 1, -3.94878916e-005, 0.000911563693, 3.94881099e-005, 0.999999702))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 0.5))
Hitbox = CreatePart(m, Enum.Material.SmoothPlastic, 0, 1, "Institutional white", "Hitbox", Vector3.new(7.72282219, 0.301086754, 2.30543375))
HitboxWeld = CreateWeld(m, FakeHandle, Hitbox, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-7.0271225, -1.90734863e-005, -0.0505013466, 4.57603875e-007, -1, 3.94877279e-005, -1, -4.59169627e-007, -3.96519026e-005, 3.96519208e-005, -3.94877097e-005, -1))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Really blue", "Part", Vector3.new(0.301086754, 0.316141129, 0.301086754))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.419298887, 0.000789642334, 8.35991287, -0.000899777107, 0.000873938261, -0.999999285, -0.999999642, 3.91341673e-005, 0.000899811625, 3.99205201e-005, 0.999999702, 0.000873902754))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 0.5))
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
  Humanoid.WalkSpeed = 0
  local con = Hitbox.Touched:connect(function(hit)
    Damagefunc(Hitbox, hit, 8, 18, math.random(1, 5), "Normal", RootPart, 0.2, "rbxassetid://199149221", 0.8)
  end
)
  for i = 0, 1, 0.13 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -0.1) * angles(math.rad(-20), math.rad(0), math.rad(-10)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(10)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.7, 0.2) * angles(math.rad(180), math.rad(-10), math.rad(5)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.5) * angles(math.rad(0), math.rad(-140), math.rad(-75)), 0.3)
    RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-3), math.rad(10), math.rad(-50)), 0.3)
    LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-2), math.rad(10), math.rad(20)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-30), math.rad(0), math.rad(0)), 0.3)
  end
  CreateSound("http://roblox.com/asset/?id=320557563", Hitbox, 1, 0.8)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -0.1) * angles(math.rad(20), math.rad(0), math.rad(0)), 0.5)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(15), math.rad(0), math.rad(0)), 0.5)
    RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.4, -0.3) * angles(math.rad(30), math.rad(0), math.rad(-20)), 0.5)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-40)), 0.5)
    RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-3), math.rad(0), math.rad(-10)), 0.5)
    LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-2), math.rad(0), math.rad(-20)), 0.5)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-20), math.rad(20), math.rad(3)), 0.5)
  end
  con:disconnect()
  Humanoid.WalkSpeed = 15
  attack = false
end

local attackready = false
finale = function()
  attack = true
  attackready = true
  Humanoid.WalkSpeed = 0
  for i = 0, 1, 0.13 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -0.1) * angles(math.rad(-20), math.rad(0), math.rad(-10)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(10)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.7, 0.2) * angles(math.rad(180), math.rad(-10), math.rad(5)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.5) * angles(math.rad(0), math.rad(-140), math.rad(-75)), 0.3)
    RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-3), math.rad(10), math.rad(-50)), 0.3)
    LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-2), math.rad(10), math.rad(20)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-30), math.rad(0), math.rad(0)), 0.3)
  end
  ref = CreatePart(workspace, "SmoothPlastic", 0, 0, BrickColor.new("Dark stone grey"), "ref", Vector3.new())
  ref.Anchored = true
  ref.CanCollide = false
  ref.CFrame = LeftArm.CFrame * CFrame.new(0, -0.5, 0)
  coroutine.resume(coroutine.create(function()
    for i = 0, 5, 0.1 do
      swait()
      ref.CFrame = LeftArm.CFrame * CFrame.new(0, -0.5 - 5 * i, 0)
    end
  end
))
  coroutine.resume(coroutine.create(function()
    while attackready do
      wait(0.15)
      BlockEffect(BrickColor.new("Electric blue"), ref.CFrame, 50, 50, 50, -0.5, -0.5, -0.5, 0.07, 1)
      SphereEffect(BrickColor.new("Electric blue"), ref.CFrame, 50, 50, 50, -0.5, -0.5, -0.5, 0.07)
    end
  end
))
  CreateSound("http://roblox.com/asset/?id=320557563", Hitbox, 1, 0.8)
  for i = 0, 2, 0.05 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -0.1) * angles(math.rad(-20), math.rad(0), math.rad(-90)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(90)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.7, 0.2) * angles(math.rad(180), math.rad(-10), math.rad(5)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.5) * angles(math.rad(0), math.rad(0), math.rad(-95)), 0.3)
    RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-3), math.rad(10), math.rad(-20)), 0.3)
    LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-2), math.rad(10), math.rad(-20)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(30), math.rad(0), math.rad(0)), 0.3)
  end
  for i = 0, 2, 0.05 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -0.1) * angles(math.rad(-20), math.rad(0), math.rad(-90)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(90)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.7, 0.2) * angles(math.rad(180), math.rad(-10), math.rad(5)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.5) * angles(math.rad(0), math.rad(0), math.rad(-95)), 0.3)
    RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-3), math.rad(10), math.rad(-20)), 0.3)
    LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-2), math.rad(10), math.rad(-20)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(30), math.rad(0), math.rad(0)), 0.3)
  end
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -0.1) * angles(math.rad(0), math.rad(0), math.rad(-30)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(30)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.7, 0.2) * angles(math.rad(180), math.rad(-10), math.rad(5)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.5) * angles(math.rad(0), math.rad(0), math.rad(-45)), 0.3)
    RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-3), math.rad(10), math.rad(-20)), 0.3)
    LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-2), math.rad(10), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(30), math.rad(0), math.rad(0)), 0.3)
  end
  ref.CFrame = RootPart.CFrame * CFrame.new(0, -0.5, -25)
  MagniDamage(ref, 100, 30, 40, 10, "Knockdown")
  BlockEffect(BrickColor.new("Electric blue"), ref.CFrame, 150, 150, 150, 15, 15, 15, 0.07, 1)
  SphereEffect(BrickColor.new("Electric blue"), ref.CFrame, 150, 150, 150, 51, 51, 51, 0.07)
  SphereEffect(BrickColor.new("Electric blue"), ref.CFrame, 20, 100, 20, 10, 100, 10, 0.07)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -0.1) * angles(math.rad(0), math.rad(0), math.rad(-30)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(30)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.7, 0.2) * angles(math.rad(180), math.rad(-10), math.rad(5)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.5) * angles(math.rad(0), math.rad(0), math.rad(-45)), 0.3)
    RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-3), math.rad(10), math.rad(-20)), 0.3)
    LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-2), math.rad(10), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(30), math.rad(0), math.rad(0)), 0.3)
  end
  ref.Parent = nil
  Humanoid.WalkSpeed = 15
  attack = false
  attackready = false
end

local slashndash = false
Slashy = function()
  attack = true
  Humanoid.WalkSpeed = 0
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -0.1) * angles(math.rad(-20), math.rad(0), math.rad(-50)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(50)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.7, 0.2) * angles(math.rad(180), math.rad(-10), math.rad(5)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-0.8, 0.5, -0.5) * angles(math.rad(0), math.rad(-140), math.rad(-85)), 0.3)
    RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-3), math.rad(10), math.rad(-50)), 0.3)
    LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-2), math.rad(10), math.rad(20)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-30), math.rad(0), math.rad(0)), 0.3)
  end
  CreateSound("http://roblox.com/asset/?id=320557563", Hitbox, 1, 0.8)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -0.1) * angles(math.rad(20), math.rad(0), math.rad(0)), 0.5)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(15), math.rad(0), math.rad(0)), 0.5)
    RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.4, -0.3) * angles(math.rad(30), math.rad(0), math.rad(-20)), 0.5)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-40)), 0.5)
    RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-3), math.rad(0), math.rad(-10)), 0.5)
    LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-2), math.rad(0), math.rad(-20)), 0.5)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-20), math.rad(20), math.rad(3)), 0.5)
  end
  ref = CreatePart(workspace, "SmoothPlastic", 0, 0, BrickColor.new("Dark stone grey"), "ref", Vector3.new())
  ref.Anchored = true
  ref.CanCollide = false
  ref.CFrame = RootPart.CFrame * CFrame.new(0, -0.5, -5)
  game.Debris:AddItem(ref, 1)
  for i = 0, 10, 0.5 do
    swait()
    CreateSound("http://www.roblox.com/asset/?id=192410089", Handle, 1, 0.7)
    SphereEffect(BrickColor.new("Electric blue"), ref.CFrame, 2, 10 * i * 2, 2, 0.5, 5, 0.5, 0.05)
    BlockEffect(BrickColor.new("Electric blue"), ref.CFrame * CFrame.new(0, -0.5, 0), 10, 10, 10, 0.5 * i, 0.5 * i, 0.5 * i, 0.05)
    MagniDamage(ref, 6, 5, 13, 0, "Normal")
    ref.CFrame = RootPart.CFrame * CFrame.new(0, -0.5, -5 * i)
  end
  if slashndash == true then
    RootPart.CFrame = RootPart.CFrame * CFrame.new(0, 0, -50)
    BlockEffect(BrickColor.new("Electric blue"), RootPart.CFrame, 10, 10, 10, 5, 5, 5, 0.05)
    for i = 0, 1, 0.13 do
      swait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-70)), 0.3)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(70)), 0.3)
      RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(-140), math.rad(-90)), 0.3)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-40)), 0.3)
      RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(10), math.rad(0)), 0.3)
      LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(10), math.rad(0)), 0.3)
      FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(10)), 0.3)
    end
    CreateSound("http://roblox.com/asset/?id=320557563", Hitbox, 1, 1)
    for i = 0, 1, 0.13 do
      swait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(70)), 0.3)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(-70)), 0.3)
      RW.C0 = clerp(RW.C0, CFrame.new(1.1, 0.5, -0.3) * angles(math.rad(0), math.rad(-50), math.rad(-90)), 0.3)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-40)), 0.3)
      RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(10), math.rad(0)), 0.3)
      LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(10), math.rad(0)), 0.3)
      FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-90), math.rad(0), math.rad(10)), 0.3)
    end
  end
  do
    wait(1)
    Humanoid.WalkSpeed = 15
    slashndash = false
    attack = false
  end
end

spinattack = function()
  attack = true
  Humanoid.WalkSpeed = 5
  for i = 0, 1, 0.13 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -0.5) * angles(math.rad(0), math.rad(0), math.rad(70)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(-70)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.4, 0) * angles(math.rad(0), math.rad(60), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(60), math.rad(0), math.rad(-30)), 0.3)
    RH.C0 = clerp(RH.C0, cn(1, -0.5, 0) * RHCF * angles(math.rad(-3), math.rad(-30), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-2), math.rad(-30), math.rad(50)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(10)), 0.3)
  end
  for i = 0, 3 do
    swait()
    MagniDamage(RootPart, 15, 10, 15, 0, "Normal")
    CreateSound("http://roblox.com/asset/?id=320557563", Hitbox, 1, 0.9)
    for i = 0, 1, 0.1 do
      swait()
      Torso.Velocity = RootPart.CFrame.lookVector * 75
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -0.25) * angles(math.rad(0), math.rad(0), math.rad(0 - 360 * i)), 0.3)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(60)), 0.3)
      RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.4, 0.1) * angles(math.rad(0), math.rad(-20), math.rad(90)), 0.3)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(40)), 0.3)
      RH.C0 = clerp(RH.C0, cn(1, -0.9, 0) * RHCF * angles(math.rad(-3), math.rad(40), math.rad(-10)), 0.3)
      LH.C0 = clerp(LH.C0, cn(-1, -0.7, 0) * LHCF * angles(math.rad(-2), math.rad(30), math.rad(-10)), 0.3)
      FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-50), math.rad(0), math.rad(-10)), 0.3)
    end
  end
  Humanoid.WalkSpeed = 15
  attack = false
end

attacktwo = function()
  attack = true
  local con = Hitbox.Touched:connect(function(hit)
    Damagefunc(Hitbox, hit, 8, 18, math.random(1, 5), "Normal", RootPart, 0.2, "rbxassetid://199149221", 0.8)
  end
)
  Humanoid.WalkSpeed = 5
  for i = 0, 1, 0.13 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -0.5) * angles(math.rad(0), math.rad(0), math.rad(70)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(-70)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.4, 0) * angles(math.rad(0), math.rad(60), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-30)), 0.3)
    RH.C0 = clerp(RH.C0, cn(1, -0.5, 0) * RHCF * angles(math.rad(-3), math.rad(-30), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-2), math.rad(-30), math.rad(50)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(10)), 0.3)
  end
  CreateSound("http://roblox.com/asset/?id=320557563", Hitbox, 1, 0.9)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -0.25) * angles(math.rad(10), math.rad(0), math.rad(-60)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-10), math.rad(0), math.rad(60)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.4, 0.1) * angles(math.rad(0), math.rad(-20), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-40)), 0.3)
    RH.C0 = clerp(RH.C0, cn(1, -0.9, 0) * RHCF * angles(math.rad(-3), math.rad(40), math.rad(-10)), 0.3)
    LH.C0 = clerp(LH.C0, cn(-1, -0.7, 0) * LHCF * angles(math.rad(-2), math.rad(30), math.rad(-10)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-50), math.rad(0), math.rad(-10)), 0.3)
  end
  con:disconnect()
  Humanoid.WalkSpeed = 15
  attack = false
end

attackthree = function()
  attack = true
  local con = Hitbox.Touched:connect(function(hit)
    Damagefunc(Hitbox, hit, 8, 18, math.random(1, 5), "Normal", RootPart, 0.2, "rbxassetid://199149221", 0.8)
  end
)
  Humanoid.WalkSpeed = 5
  for i = 0, 1, 0.13 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-70)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(70)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(-140), math.rad(-90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-40)), 0.3)
    RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(10), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(10), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(10)), 0.3)
  end
  CreateSound("http://roblox.com/asset/?id=320557563", Hitbox, 1, 1)
  for i = 0, 1, 0.13 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(70)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(-70)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.1, 0.5, -0.3) * angles(math.rad(0), math.rad(-50), math.rad(-90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-40)), 0.3)
    RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(10), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(10), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-90), math.rad(0), math.rad(10)), 0.3)
  end
  con:disconnect()
  Humanoid.WalkSpeed = 15
  attack = false
end

Naildrive = function()
  attack = true
  Humanoid.WalkSpeed = 5
  local con = Hitbox.Touched:connect(function(hit)
    Damagefunc(Hitbox, hit, 8, 28, math.random(1, 5), "Normal", RootPart, 0.2, "rbxassetid://199149221", 0.8)
  end
)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(-90)), 0.4)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(90)), 0.4)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(-140), math.rad(-90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cn(1, -1, -0.5) * RHCF * angles(math.rad(-5), math.rad(10), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(10), math.rad(20)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(160), math.rad(0), math.rad(10)), 0.3)
  end
  CreateSound("http://roblox.com/asset/?id=320557563", Hitbox, 1, 1)
  for i = 0, 1, 0.1 do
    Torso.Velocity = RootPart.CFrame.lookVector * 50
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(90)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-20), math.rad(0), math.rad(-90)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -0.5) * angles(math.rad(0), math.rad(200), math.rad(-90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(10), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cn(-1, -1, -0.5) * LHCF * angles(math.rad(-5), math.rad(10), math.rad(-10)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(260), math.rad(0), math.rad(0)), 0.3)
  end
  CreateSound("http://roblox.com/asset/?id=320557563", Hitbox, 1, 0.8)
  for i = 0, 1, 0.08 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-70)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(10), math.rad(70)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(250), math.rad(-90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(-100), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(10), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(10), math.rad(-10)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(400), math.rad(0), math.rad(0)), 0.3)
  end
  CreateSound("http://roblox.com/asset/?id=320557563", Hitbox, 1, 1.2)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(100)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(-100)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(300), math.rad(-90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -1) * angles(math.rad(0), math.rad(-200), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(10), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(10), math.rad(-10)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(260), math.rad(0), math.rad(0)), 0.3)
  end
  con:disconnect()
  Humanoid.WalkSpeed = 15
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
  if attack == false and k == "z" and co1 <= cooldown1 then
    cooldown1 = 0
    Naildrive()
  else
    if attack == false and k == "x" and co2 <= cooldown2 then
      cooldown2 = cooldown2 / 2
      Slashy()
    else
      if attack == true and k == "x" then
        cooldown2 = 0
        slashndash = true
      else
        if attack == false and k == "c" and co3 <= cooldown3 then
          cooldown3 = 0
          spinattack()
        else
          if attack == false and k == "v" and co4 <= cooldown4 then
            cooldown4 = 0
            finale()
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
local walk = 0
local walkforw = false
updateskills = function()
  if cooldown1 <= co1 then
    cooldown1 = cooldown1 + 0.033333333333333
  end
  if cooldown2 <= co2 then
    cooldown2 = cooldown2 + 0.033333333333333
  end
  if cooldown3 <= co3 then
    cooldown3 = cooldown3 + 0.033333333333333
  end
  if cooldown4 <= co4 then
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
  for i,v in pairs(Character:GetChildren()) do
    if v:IsA("Part") then
      v.Material = "SmoothPlastic"
    else
      if v:IsA("Hat") then
        v:WaitForChild("Handle").Material = "SmoothPlastic"
      end
    end
  end
  walk = walk + 1.2
  if 15 - 5 * (Humanoid.WalkSpeed / 16) <= walk then
    walk = 0
    if walkforw == true then
      walkforw = false
    else
      if walkforw == false then
        walkforw = true
      end
    end
  end
  Torsovelocity = RootPart.Velocity * Vector3.new(1, 0, 1).magnitude
  velocity = RootPart.Velocity.y
  sine = sine + change
  local hit, pos = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 4, Character)
  if equipped == true or equipped == false then
    if 1 < RootPart.Velocity.y and hit == nil then
      Anim = "Jump"
      if attack == false then
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
        RW.C0 = clerp(RW.C0, CFrame.new(1.4, 0.7, 0) * angles(math.rad(0), math.rad(115), math.rad(205)), 0.3)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-30)), 0.3)
        RH.C0 = clerp(RH.C0, cn(1, -0.5, -0.4) * RHCF * angles(math.rad(-3), math.rad(0), math.rad(-30)), 0.3)
        LH.C0 = clerp(LH.C0, cn(-1, -0.8, 0) * LHCF * angles(math.rad(-3), math.rad(0), math.rad(20)), 0.3)
        FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(20), math.rad(-20), math.rad(0)), 0.3)
      end
    else
      if RootPart.Velocity.y < -1 and hit == nil then
        Anim = "Fall"
        if attack == false then
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
          Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
          RW.C0 = clerp(RW.C0, CFrame.new(1.4, 0.7, 0) * angles(math.rad(0), math.rad(120), math.rad(205)), 0.3)
          LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-60)), 0.3)
          RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-3), math.rad(0), math.rad(30)), 0.3)
          LH.C0 = clerp(LH.C0, cn(-1, -1, -0.3) * LHCF * angles(math.rad(-3), math.rad(0), math.rad(-20)), 0.3)
          FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(-20), math.rad(0)), 0.3)
        end
      else
        if (math.abs(Torsovelocity.x) + math.abs(Torsovelocity.z)) < 1 and hit ~= nil then
          Anim = "Idle"
          if attack == false then
            change = 1
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -0.1 + 0.1 * math.cos((sine) / 25)) * angles(math.rad(0), math.rad(0), math.rad(-20)), 0.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(5 + 3 * math.cos((sine) / 23)), math.rad(0), math.rad(20)), 0.3)
            RW.C0 = clerp(RW.C0, CFrame.new(1.4, 0.7, 0) * angles(math.rad(0), math.rad(110 - 3 * math.cos((sine) / 23)), math.rad(205 + 3 * math.cos((sine) / 23))), 0.3)
            LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-10 - 5 * math.cos((sine) / 23))), 0.3)
            RH.C0 = clerp(RH.C0, cn(1, -0.9 - 0.1 * math.cos((sine) / 25), 0) * RHCF * angles(math.rad(-3 - 1 * math.cos((sine) / 25)), math.rad(20), math.rad(-7)), 0.3)
            LH.C0 = clerp(LH.C0, cn(-1, -0.9 - 0.1 * math.cos((sine) / 25), 0) * LHCF * angles(math.rad(-3 - 1 * math.cos((sine) / 25)), math.rad(20), math.rad(5)), 0.3)
            FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(20), math.rad(-20), math.rad(0)), 0.3)
          end
        else
          if 2 < (math.abs(Torsovelocity.x) + math.abs(Torsovelocity.z)) and hit ~= nil then
            Anim = "Walk"
            if attack == false then
              change = 2
              RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(2 * math.cos((sine) / 7))), 0.3)
              Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(5 + 3 * math.cos((sine) / 23)), math.rad(0), math.rad(-2 * math.cos((sine) / 7))), 0.3)
              RW.C0 = clerp(RW.C0, CFrame.new(1.4, 0.7, 0) * angles(math.rad(0), math.rad(110), math.rad(205)), 0.3)
              LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30 * math.cos((sine) / 10)), math.rad(0), math.rad(-5)), 0.3)
              RH.C0 = clerp(RH.C0, cn(1, -1 - 0.3 * math.cos((sine) / 8) / 2, -0.03 + math.sin((sine) / 8) / 2) * RHCF * angles(math.rad(-2), math.rad(0), math.rad(-10) - math.sin((sine) / 8)), 0.3)
              LH.C0 = clerp(LH.C0, cn(-1, -1 + 0.3 * math.cos((sine) / 8) / 2, -0.03 - math.sin((sine) / 8) / 2) * LHCF * angles(math.rad(-2), math.rad(0), math.rad(10) - math.sin((sine) / 8)), 0.3)
              FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(23), math.rad(-20), math.rad(0)), 0.3)
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
end
