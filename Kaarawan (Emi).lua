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

local co1 = 10
local co2 = 30
local co3 = 30
local co4 = 60
local cooco = 3
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
local skillcolorscheme = BrickColor.new("Really black").Color
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

framesk1 = makeframe(scrn, 0.5, UDim2.new(0.8, 0, 0.93, 0), UDim2.new(0.16, 0, 0.06, 0), skillcolorscheme)
framesk2 = makeframe(scrn, 0.5, UDim2.new(0.8, 0, 0.86, 0), UDim2.new(0.16, 0, 0.06, 0), skillcolorscheme)
framesk3 = makeframe(scrn, 0.5, UDim2.new(0.8, 0, 0.79, 0), UDim2.new(0.16, 0, 0.06, 0), skillcolorscheme)
framesk4 = makeframe(scrn, 0.5, UDim2.new(0.8, 0, 0.72, 0), UDim2.new(0.16, 0, 0.06, 0), skillcolorscheme)
framesk5 = makeframe(scrn, 0.5, UDim2.new(0.8, 0, 0.6, 0), UDim2.new(0.16, 0, 0.06, 0), skillcolorscheme)
bar1 = makeframe(framesk1, 0, UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0), skillcolorscheme)
bar2 = makeframe(framesk2, 0, UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0), skillcolorscheme)
bar3 = makeframe(framesk3, 0, UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0), skillcolorscheme)
bar4 = makeframe(framesk4, 0, UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0), skillcolorscheme)
bar5 = makeframe(framesk5, 0, UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0), skillcolorscheme)
text1 = makelabel(framesk1, "[Z] Hello!")
text2 = makelabel(framesk2, "[X] Cake")
text3 = makelabel(framesk3, "[C] Confetti")
text4 = makelabel(framesk4, "[V] ZOOP")
text5 = Instance.new("TextLabel", framesk5)
text5.BackgroundTransparency = 1
text5.Size = UDim2.new(1, 0, 1, 0)
text5.Position = UDim2.new(0, 0, 0, 0)
text5.TextColor3 = Color3.new(255, 255, 255)
text5.TextStrokeTransparency = 0
text5.FontSize = Enum.FontSize.Size32
text5.Font = Enum.Font.SourceSansBold
text5.BorderSizePixel = 0
text5.TextScaled = true
text5.Text = "[F] Aim]"
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

makeconfetti = function(place)
  local cp = Instance.new("Part")
  cp.Name = "Effect"
  cp.FormFactor = "Custom"
  cp.Size = Vector3.new(0, 0, 0)
  cp.CanCollide = false
  cp.Transparency = 1
  cp.CFrame = place.CFrame
  cp.Velocity = Vector3.new(math.random() - 0.5, math.random(), math.random() - 0.5).unit * 20
  delay(0.25 + math.random() * 0.2, function()
    if cp ~= nil then
      cp.Velocity = cp.Velocity * 0.1
      wait(0.5)
    end
    if cp ~= nil then
      cp.Velocity = Vector3.new(0, -1, 0)
      wait(1)
    end
    if cp ~= nil then
      cp.Velocity = Vector3.new(0, -2, 0)
    end
  end
)
  local cbbg = Instance.new("BillboardGui")
  cbbg.Adornee = cp
  cbbg.Size = UDim2.new(7, 0, 4, 0)
  local cil = Instance.new("ImageLabel")
  cil.BackgroundTransparency = 1
  cil.BorderSizePixel = 0
  cil.Size = UDim2.new(1, 0, 1, 0)
  cil.Image = "http://www.roblox.com/asset/?id=104606998"
  cil.Parent = cbbg
  cbbg.Parent = cp
  local bf = Instance.new("BodyForce")
  bf.force = Vector3.new(0, cp:GetMass() * 196.2, 0)
  bf.Parent = cp
  game.Debris:AddItem(cp, 7 + math.random())
  cp.Parent = game.Workspace
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

Handle = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Handle", Vector3.new(0.700000048, 0.369999945, 0.280000091))
HandleWeld = CreateWeld(m, Character["Right Arm"], Handle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.318675995, -0.93935442, -0.100952148, -0.000336287718, -2.69723296e-005, -1.0000006, 0.000396225107, -1.0000006, 2.75748262e-005, -1.00000048, -0.00039631853, 0.000336177269))
CreateMesh("SpecialMesh", Handle, Enum.MeshType.Cylinder, "http://www.roblox.com/asset/?id=3270017", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.5))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.700000048, 0.369999945, 0.280000091))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0, 0, 1.00000131, -7.35742219e-007, 1.21101039e-007, -7.35742219e-007, 1.00000131, 1.02765625e-007, 1.21101039e-007, 1.02765625e-007, 1.00000119))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.5))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(1, 1.19999993, 1.20000005))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.885063887, -0.850027084, 0.139083862, -2.97360093e-005, -1.00000131, -1.88207196e-005, 1.00000095, -3.11220283e-005, -0.000637698569, 0.000637928257, -1.86453399e-005, 1.00000095))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.200000018, 0.919999897, 0.929999948))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.65007019, -1.12043953, 1.41934061, 0.000366366556, -0.000121983321, 1.00000107, 1.00000107, -0.000305830443, -0.000366173568, 0.000304477202, 1.00000131, 0.000122066587))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1.10000002, 1.10000002))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Royal purple", "Part", Vector3.new(0.600000024, 0.299999893, 0.300000012))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.685011983, -1.30000305, -0.310913086, -2.97360093e-005, -1.00000131, -1.88207196e-005, 1.00000095, -3.11220283e-005, -0.000637698569, 0.000637928257, -1.86453399e-005, 1.00000095))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Barrel = CreatePart(m, Enum.Material.Neon, 0, 0, "Black", "Barrel", Vector3.new(0.299999952, 0.299999952, 0.49999997))
BarrelWeld = CreateWeld(m, Handle, Barrel, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.149612427, -0.839944839, -1.62507761, 0.000366321998, -0.000366120541, 1.00000095, 1.00000119, -6.16857869e-005, -0.000366114022, 6.04219967e-005, 1.00000119, 0.000366293127))
CreateMesh("SpecialMesh", Barrel, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=3270017", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.5, 2))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Black", "Part", Vector3.new(0.299999952, 0.299999952, 0.49999997))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.15965271, -0.839952469, -1.31507254, 0.000366321998, -0.000366120541, 1.00000095, 1.00000119, -6.16857869e-005, -0.000366114022, 6.04219967e-005, 1.00000119, 0.000366293127))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=3270017", Vector3.new(0, 0, 0), Vector3.new(1.10000002, 1.10000002, 2))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Black", "Part", Vector3.new(0.299999952, 0.299999952, 0.49999997))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.47496772, -1.08996964, -0.560287476, -2.99031944e-005, -1.00000119, -0.000364157662, 1.00000119, -3.11631775e-005, -0.00037874296, 0.00037896217, -0.000363974337, 1.00000095))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=3270017", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Black", "Part", Vector3.new(0.299999952, 0.299999952, 0.49999997))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.159637451, -0.839942932, -1.66506422, 0.000366321998, -0.000366120541, 1.00000095, 1.00000119, -6.16857869e-005, -0.000366114022, 6.04219967e-005, 1.00000119, 0.000366293127))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=3270017", Vector3.new(0, 0, 0), Vector3.new(1.29999995, 1.29999995, 2))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Royal purple", "Part", Vector3.new(0.300000012, 0.299999893, 0.300000012))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.38499403, -1.29999924, -0.31072998, -2.97360093e-005, -1.00000131, -1.88207196e-005, 1.00000095, -3.11220283e-005, -0.000637698569, 0.000637928257, -1.86453399e-005, 1.00000095))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Royal purple", "Part", Vector3.new(0.299999952, 0.299999952, 0.49999997))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.315048695, -1.19999695, 0.139648438, -2.99031944e-005, -1.00000119, -0.000364157662, 1.00000119, -3.11631775e-005, -0.00037874296, 0.00037896217, -0.000363974337, 1.00000095))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=3270017", Vector3.new(0, 0, 0), Vector3.new(1, 1, 2))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Royal purple", "Part", Vector3.new(0.400000006, 0.299999893, 0.300000012))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.09998894, 0.985217929, -0.310440063, -1.00000107, 3.09870593e-005, 0.000671288697, -3.00194297e-005, -1.00000107, -0.000640959595, 0.000671499758, -0.000640785322, 1.00000072))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Royal purple", "Part", Vector3.new(0.299999952, 0.299999952, 0.49999997))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.315003157, -1.15942001, 0.391784668, -1.05658009e-005, -1.00000119, -0.000331618445, 0.866236687, -0.000175954381, 0.49963668, -0.499636561, -0.000281113171, 0.866236448))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=3270017", Vector3.new(0, 0, 0), Vector3.new(1, 1, 2))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Royal purple", "Part", Vector3.new(0.299999952, 0.299999952, 0.49999997))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.315113783, -1.3240509, -0.106765747, -3.80144447e-005, -1.00000119, -0.000286904746, 0.86581111, 0.000109338136, -0.500373363, 0.500373662, -0.000267956813, 0.86581111))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=3270017", Vector3.new(0, 0, 0), Vector3.new(1, 1, 2))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(1.23000002, 1.24000001, 1.20000005))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.144668579, -0.849945068, -0.335066319, 0.000366321998, -0.000366120541, 1.00000095, 1.00000119, -6.16857869e-005, -0.000366114022, 6.04219967e-005, 1.00000119, 0.000366293127))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Royal purple", "Part", Vector3.new(0.300000012, 0.299999893, 0.300000012))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.985000253, -1.29999733, -0.310958862, -2.97360093e-005, -1.00000131, -1.88207196e-005, 1.00000095, -3.11220283e-005, -0.000637698569, 0.000637928257, -1.86453399e-005, 1.00000095))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Royal purple", "Part", Vector3.new(2.21000004, 0.299999893, 0.300000012))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.12000227, -1.06999397, -0.380722046, -2.97360093e-005, -1.00000131, -1.88207196e-005, 1.00000095, -3.11220283e-005, -0.000637698569, 0.000637928257, -1.86453399e-005, 1.00000095))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 1))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Black", "Part", Vector3.new(1, 0.789999902, 0.709999919))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.140090942, -1.10543823, 1.39955378, 0.000366366556, -0.000121983321, 1.00000107, 1.00000107, -0.000305830443, -0.000366173568, 0.000304477202, 1.00000131, 0.000122066587))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(1.04999995, 6, 2.29999995))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Black", "Part", Vector3.new(0.220000029, 0.919999897, 0.929999948))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.459915161, -1.09041786, 1.47965384, 0.000366366556, -0.000121983321, 1.00000107, 1.00000107, -0.000305830443, -0.000366173568, 0.000304477202, 1.00000131, 0.000122066587))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(1.48000002, 0.819999933, 1.20000005))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.424940348, -0.660030365, 0.139541626, -2.97360093e-005, -1.00000131, -1.88207196e-005, 1.00000095, -3.11220283e-005, -0.000637698569, 0.000637928257, -1.86453399e-005, 1.00000095))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(1, 0.789999902, 0.709999919))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.140090942, -1.10543823, 1.39955378, 0.000366366556, -0.000121983321, 1.00000107, 1.00000107, -0.000305830443, -0.000366173568, 0.000304477202, 1.00000131, 0.000122066587))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(1, 5, 2.5))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Black", "Part", Vector3.new(0.299999952, 0.299999952, 0.49999997))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.41492677, -1.12001801, 0.6197052, -2.99031944e-005, -1.00000119, -0.000364157662, 1.00000119, -3.11631775e-005, -0.00037874296, 0.00037896217, -0.000363974337, 1.00000095))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=3270017", Vector3.new(0, 0, 0), Vector3.new(1.79999995, 1.79999995, 2))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Black", "Part", Vector3.new(0.299999952, 0.299999952, 0.49999997))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.4149673, -1.11997604, -0.360290527, -2.99031944e-005, -1.00000119, -0.000364157662, 1.00000119, -3.11631775e-005, -0.00037874296, 0.00037896217, -0.000363974337, 1.00000095))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=3270017", Vector3.new(0, 0, 0), Vector3.new(1.79999995, 1.79999995, 2))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Black", "Part", Vector3.new(0.299999952, 0.299999952, 0.49999997))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.15965271, -0.839946747, -1.48507142, 0.000366321998, -0.000366120541, 1.00000095, 1.00000119, -6.16857869e-005, -0.000366114022, 6.04219967e-005, 1.00000119, 0.000366293127))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=3270017", Vector3.new(0, 0, 0), Vector3.new(1.20000005, 1.20000005, 2))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.200000018, 0.919999897, 0.929999948))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.509918213, -1.09041595, 1.4796629, 0.000366366556, -0.000121983321, 1.00000107, 1.00000107, -0.000305830443, -0.000366173568, 0.000304477202, 1.00000131, 0.000122066587))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1.10000002, 1.10000002))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(1.18999994, 1.11999989, 0.49999997))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.154647827, -0.809949875, -1.31507277, 0.000366321998, -0.000366120541, 1.00000095, 1.00000119, -6.16857869e-005, -0.000366114022, 6.04219967e-005, 1.00000119, 0.000366293127))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0.5, "Really black", "Part", Vector3.new(1.13, 1.11999989, 0.49999997))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.1746521, -0.809955597, -1.38508785, 0.000366321998, -0.000366120541, 1.00000095, 1.00000119, -6.16857869e-005, -0.000366114022, 6.04219967e-005, 1.00000119, 0.000366293127))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0.5, "Really black", "Part", Vector3.new(1.18999994, 1.11999989, 0.49999997))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.154647827, -0.809947968, -1.45508766, 0.000366321998, -0.000366120541, 1.00000095, 1.00000119, -6.16857869e-005, -0.000366114022, 6.04219967e-005, 1.00000119, 0.000366293127))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(1, 1.19999993, 1.20000005))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.885063887, -0.850027084, 0.139083862, -2.97294828e-005, -1.00000131, -1.88043923e-005, 1.00000095, -3.11155127e-005, -0.00063769205, 0.000637921738, -1.86290417e-005, 1.00000095))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.700000048, 0.369999945, 0.280000091))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.349996567, -0.606202126, 0, 0.866040528, 0.499982536, 0.000292716955, -0.499987632, 0.866041303, 0.000282988942, -0.000108518783, -0.000385537889, 1.00000477))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.5))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.220000058, 0.619999945, 0.710000098))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.290046692, -0.834992409, 0.184677124, 1.00000131, -7.35742219e-007, 1.21101039e-007, -7.35742219e-007, 1.00000131, 1.02765625e-007, 1.21101039e-007, 1.02765625e-007, 1.00000119))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(2.1500001, 0.819999933, 0.780000031))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.409978628, -0.559999466, 0.124420166, -2.96669386e-005, -1.00000143, 6.75041229e-005, 1.00000095, -3.1113872e-005, -0.000724008365, 0.000724240555, 6.76767959e-005, 1.00000083))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
BlockEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type)
  local prt = CreatePart(workspace, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
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
  local prt = CreatePart(workspace, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
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
  local prt = CreatePart(workspace, "Neon", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
  local msh = CreateMesh("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  local num = math.random(10, 50) / 1000
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Shatter", num, prt.CFrame, math.random() - math.random(), 0, math.random(50, 100) / 100})
end

MagicCylinder2 = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = CreatePart(effect, "Neon", 0, 0, brickcolor, "Effect", vt(0.2, 0.2, 0.2))
  prt.Anchored = true
  prt.CFrame = cframe
  msh = CreateMesh("CylinderMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 5)
  Effects[#Effects + 1] = {prt, "Cylinder", delay, x3, y3, z3}
end

MagniCamShake = function(Part, magni, cam, intens)
  for _,c in pairs(workspace:children()) do
    if game.Players:GetPlayerFromCharacter(c) ~= nil and c:findFirstChild("Torso") ~= nil then
      local targ = c.Torso.Position - Part.Position
      local mag = targ.magnitude
      if mag <= magni then
        camshake = script[cam]:Clone()
        camshake.Intensity.Value = mag / intens
        camshake.Parent = game.Players.LocalPlayer.Backpack
        camshake.Disabled = false
      end
    end
  end
end

ShootCannon = function(asd, mindam, maxdam)
  local r = {BrickColor.new("Bright violet"), BrickColor.new("Bright green"), BrickColor.new("Really black"), BrickColor.new("Bright blue"), BrickColor.new("Maroon")}
  CreateSound("rbxassetid://263623156", asd, 0.5, 0.5)
  CreateSound("rbxassetid://263610152", asd, 0.5, 0.5)
  CreateSound("rbxassetid://263623139", asd, 0.5, 0.8)
  local MainPos = asd.Position
  local MainPos2 = mouse.Hit.p
  local MouseLook = cf((MainPos + MainPos2) / 2, MainPos2)
  num = 30
  coroutine.resume(coroutine.create(function()
    repeat
      wait()
      local hit, pos = rayCast(MainPos, MouseLook.lookVector, 10, Character)
      local mag = (MainPos - pos).magnitude
      MagicCylinder2(r[math.random(1, 3)], CFrame.new((MainPos + pos) / 2, pos) * angles(1.57, 0, 0), 3, mag * 5, 3, 0.5, 0, 0.5, 0.03)
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
        BlockEffect(r[math.random(1, 2)], cf(pos), 5, 5, 5, 5, 5, 5, 0.05)
        SphereEffect(r[math.random(1, 2)], cf(pos), 5, 5, 5, 10, 10, 10, 0.05)
        BreakEffect(r[math.random(1, 2)], cf(pos), 1, 10, 1)
        BreakEffect(r[math.random(1, 2)], cf(pos), 1, 10, 1)
        BreakEffect(r[math.random(1, 2)], cf(pos), 1, 10, 1)
        BreakEffect(r[math.random(1, 2)], cf(pos), 1, 10, 1)
        RingEffect(r[math.random(1, 2)], cf(pos) * angles(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 5, 5, 5, 5, 5, 0, 0.05)
        game:GetService("Debris"):AddItem(ref, 1)
        MagniDamage(ref, 10, mindam, maxdam, 10, "Normal")
      end
    until num <= 0
  end
))
end

Confetti = function()
  attack = true
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0 - 0.1 * math.cos(sine / 9)) * angles(math.rad(0), math.rad(0), math.rad(-60)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(60)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 - 0.1 * math.cos(sine / 9), -0.5) * angles(math.rad(180), math.rad(0), math.rad(0)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-0.8, 0.5 - 0.1 * math.cos(sine / 9), -0.5) * angles(math.rad(0), math.rad(0), math.rad(-40)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1 + 0.1 * math.cos(sine / 9), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1 + 0.1 * math.cos(sine / 9), 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  makeconfetti(Barrel)
  for i = 1, 30 do
    local confetti = CreatePart(workspace, "SmoothPlastic", 0, 0, BrickColor.Random(), "Confetti", vt())
    local cmsh = CreateMesh("BlockMesh", confetti, "", "", vt(0, 0, 0), vt(3, 1, 3))
    confetti.CFrame = Barrel.CFrame * cf(math.random(-300, 300) / 100, math.random(-300, 300) / 100, math.random(-300, 300) / 100)
    confetti.Velocity = RootPart.CFrame.lookVector * math.random(40, 60) + vt(math.random(-100, 100) / 100, 1, math.random(-100, 100) / 100) * math.random(60, 80)
    game:GetService("Debris"):AddItem(confetti, 5)
  end
  CreateSound("http://www.roblox.com/asset/?id=104605494", RootPart, 1, 1)
  CreateSound("rbxassetid://263610152", RootPart, 0.5, 0.5)
  SphereEffect(BrickColor.new("White"), Barrel.CFrame, 5, 5, 5, 10, 10, 10, 0.05)
  MagniDamage(RootPart, 15, -30, -10, "Normal")
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0 - 0.1 * math.cos(sine / 9)) * angles(math.rad(0), math.rad(0), math.rad(-60)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(60)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 - 0.1 * math.cos(sine / 9), -0.5) * angles(math.rad(200), math.rad(0), math.rad(0)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-0.8, 0.5 - 0.1 * math.cos(sine / 9), -0.5) * angles(math.rad(0), math.rad(0), math.rad(60)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1 + 0.1 * math.cos(sine / 9), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1 + 0.1 * math.cos(sine / 9), 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  attack = false
end

Party = function()
  attack = true
  Humanoid.JumpPower = 250
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0 - 0.1 * math.cos(sine / 9)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 - 0.1 * math.cos(sine / 9), -0.5) * angles(math.rad(0), math.rad(0), math.rad(-40)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-0.8, 0.5 - 0.1 * math.cos(sine / 9), -0.5) * angles(math.rad(0), math.rad(0), math.rad(-40)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1 + 0.1 * math.cos(sine / 9), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1 + 0.1 * math.cos(sine / 9), 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  makeconfetti(Barrel)
  for i = 1, 30 do
    local confetti = CreatePart(workspace, "SmoothPlastic", 0, 0, BrickColor.Random(), "Confetti", vt())
    local cmsh = CreateMesh("BlockMesh", confetti, "", "", vt(0, 0, 0), vt(3, 1, 3))
    confetti.CFrame = Barrel.CFrame * cf(math.random(-300, 300) / 100, math.random(-300, 300) / 100, math.random(-300, 300) / 100)
    confetti.Velocity = RootPart.CFrame.lookVector * math.random(40, 60) + vt(math.random(-100, 100) / 100, 1, math.random(-100, 100) / 100) * math.random(60, 80)
    game:GetService("Debris"):AddItem(confetti, 5)
  end
  Humanoid.Jump = true
  CreateSound("http://www.roblox.com/asset/?id=104605494", RootPart, 1, 1)
  CreateSound("rbxassetid://263610152", RootPart, 0.5, 0.5)
  SphereEffect(BrickColor.Random(), Barrel.CFrame, 5, 5, 5, 10, 10, 10, 0.05)
  RingEffect(BrickColor.Random(), RootPart.CFrame * angles(1.47, 0, 0), 5, 5, 5, 1, 1, 3, 0.01)
  RingEffect(BrickColor.Random(), RootPart.CFrame * angles(1.47, 0, 0), 8, 8, 8, 2, 2, 3, 0.01)
  RingEffect(BrickColor.Random(), RootPart.CFrame * angles(1.47, 0, 0), 9, 9, 9, 3, 3, 3, 0.01)
  MagniDamage(RootPart, 30, 30, 50, "Knockdown")
  wait(2)
  Humanoid.JumpPower = 50
  attack = false
end

local aiming = false
Aim = function()
  attack = true
  aiming = true
  Humanoid.WalkSpeed = 0
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0 - 0.1 * math.cos(sine / 9)) * angles(math.rad(0), math.rad(0), math.rad(-60)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(60)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 - 0.1 * math.cos(sine / 9), -0.5) * angles(math.rad(90), math.rad(0), math.rad(-60)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-0.8, 0.5 - 0.1 * math.cos(sine / 9), -0.5) * angles(math.rad(90), math.rad(0), math.rad(60)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1 + 0.1 * math.cos(sine / 9), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1 + 0.1 * math.cos(sine / 9), 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
end

local blast = false
Shot = function()
  Humanoid.WalkSpeed = 16

  if blast == false then
    blast = true
    ShootCannon(Barrel, 20, 30)
  end
  SphereEffect(BrickColor.new("White"), Barrel.CFrame, 5, 5, 5, 1, 1, 1, 0.05)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0 - 0.1 * math.cos(sine / 9)) * angles(math.rad(0), math.rad(0), math.rad(-60)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(60)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 - 0.1 * math.cos(sine / 9), -0.5) * angles(math.rad(120), math.rad(0), math.rad(-60)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-0.8, 0.5 - 0.1 * math.cos(sine / 9), -0.5) * angles(math.rad(120), math.rad(0), math.rad(60)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1 + 0.1 * math.cos(sine / 9), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1 + 0.1 * math.cos(sine / 9), 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  blast = false
  attack = false
  aiming = false
end

taunt = function()
  attack = true
  for i = 0, 1, 0.2 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0.2) * angles(math.rad(0), math.rad(0), math.rad(-50)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(50)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(50), math.rad(0), math.rad(-50)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.8, 0) * angles(math.rad(0), math.rad(0), math.rad(-180)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
  end
  for i = 0, 1, 0.2 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0.2) * angles(math.rad(0), math.rad(0), math.rad(-50)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(50)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(50), math.rad(0), math.rad(-50)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.8, 0.8, 0.2) * angles(math.rad(0), math.rad(0), math.rad(-130)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
  end
  for i = 0, 1, 0.2 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0.2) * angles(math.rad(0), math.rad(0), math.rad(-50)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(50)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(50), math.rad(0), math.rad(-50)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.8, 0.2) * angles(math.rad(0), math.rad(0), math.rad(-180)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
  end
  for i = 0, 1, 0.2 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0.2) * angles(math.rad(0), math.rad(0), math.rad(-50)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(50)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(50), math.rad(0), math.rad(-50)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.8, 0.8, 0.2) * angles(math.rad(0), math.rad(0), math.rad(-130)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
  end
  for i = 0, 1, 0.2 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0.2) * angles(math.rad(0), math.rad(0), math.rad(-50)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(50)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(50), math.rad(0), math.rad(-50)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.8, 0.2) * angles(math.rad(0), math.rad(0), math.rad(-180)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
  end
  attack = false
end

EatMuffin = function()
  attack = true
  CreateSound("http://www.roblox.com/asset/?id=130776108", RootPart, 1, 1)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0.2) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(50)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(80)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.8, 0.8, 0.2) * angles(math.rad(-30), math.rad(0), math.rad(50)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  print("Muffins")
  local Muffin = Instance.new("Part")
  Muffin.formFactor = 1
  Muffin.CanCollide = false
  Muffin.Name = "Muffin"
  Muffin.Locked = true
  Muffin.Size = Vector3.new(1, 1, 1)
  Muffin.Parent = effect
  local Muffinmesh = Instance.new("SpecialMesh")
  Muffinmesh.Parent = Muffin
  Muffinmesh.MeshId = "http://www.roblox.com/asset/?id=16211718"
  Muffinmesh.TextureId = "http://www.roblox.com/asset/?id=16211592"
  Muffinmesh.Scale = Vector3.new(1, 1, 1)
  local Muffinweld = Instance.new("Weld")
  Muffinweld.Parent = Muffin
  Muffinweld.Part0 = Muffin
  Muffinweld.Part1 = LeftArm
  Muffinweld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), 0, math.rad(-60)) * CFrame.new(0, 1, 0.5)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0.2) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(50)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(30)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-50)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0.2) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(5), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(30)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, -0.5) * angles(math.rad(90), math.rad(0), math.rad(120)), 0.1)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  for i = 1, 5 do
    wait(0.45)
    Character.Humanoid.Health = Character.Humanoid.Health + 5
  end
  Muffin.Parent = nil
  attack = false
end

ob1u = function()
end

ob1d = function()
  if attack == true and aiming == true and cooco <= coolcool then
    Shot()
    coolcool = 0
    aiming = false
    attack = false
  end
end

key = function(k)
  k = k:lower()
  if attack == false and k == "f" then
    Aim()
  else
    if attack == false and co1 <= cooldown1 and k == "z" then
      cooldown1 = 0
      taunt()
    else
      if attack == false and co2 <= cooldown2 and k == "x" then
        cooldown2 = 0
        EatMuffin()
      else
        if attack == false and co3 <= cooldown3 and k == "c" then
          cooldown3 = 0
          Confetti()
        else
          if attack == false and co4 <= cooldown4 and k == "v" then
            cooldown4 = 0
            Party()
          end
        end
      end
    end
  end
end

Bin = Instance.new("HopperBin", game.Players.LocalPlayer.Backpack)
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
updateskills = function()
  if coolcool <= cooco then
    coolcool = coolcool + 0.033333333333333
    text5.Text = "Reloading"
  else
    text5.Text = "[F] Aim"
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
  bar5:TweenSize(UDim2.new(1 * (coolcool / cooco), 0, 1, 0), "Out", "Bounce", 0.5)
  Torsovelocity = RootPart.Velocity * Vector3.new(1, 0, 1).magnitude
  velocity = RootPart.Velocity.y
  sine = sine + change
  local hit, pos = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 4, Character)
  if equipped == true or equipped == false then
    if 1 < RootPart.Velocity.y and hit == nil then
      Anim = "Jump"
      if attack == false then
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0 - 0.1 * math.cos((sine) / 9)) * angles(math.rad(0), math.rad(0), math.rad(-50)), 0.3)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(30), math.rad(0), math.rad(50)), 0.3)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 - 0.1 * math.cos((sine) / 9), 0) * angles(math.rad(50), math.rad(0), math.rad(-50)), 0.3)
        LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5 - 0.1 * math.cos((sine) / 9), -0.5) * angles(math.rad(50), math.rad(0), math.rad(50)), 0.3)
        RH.C0 = clerp(RH.C0, cf(1, -1 + 0.1 * math.cos((sine) / 9), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(30)), 0.3)
        LH.C0 = clerp(LH.C0, cf(-1, -1 + 0.1 * math.cos((sine) / 9), 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      end
    else
      if RootPart.Velocity.y < -1 and hit == nil then
        Anim = "Fall"
        if attack == false then
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0 - 0.1 * math.cos((sine) / 9)) * angles(math.rad(0), math.rad(0), math.rad(-50)), 0.3)
          Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-30), math.rad(0), math.rad(50)), 0.3)
          RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 - 0.1 * math.cos((sine) / 9), 0) * angles(math.rad(50), math.rad(0), math.rad(-50)), 0.3)
          LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5 - 0.1 * math.cos((sine) / 9), -0.5) * angles(math.rad(50), math.rad(0), math.rad(50)), 0.3)
          RH.C0 = clerp(RH.C0, cf(1, -1 + 0.1 * math.cos((sine) / 9), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
          LH.C0 = clerp(LH.C0, cf(-1, -1 + 0.1 * math.cos((sine) / 9), 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
        end
      else
        if Torsovelocity.x < 1 or Torsovelocity.z < 1 and hit ~= nil then
          Anim = "Idle"
          if attack == false then
            change = 1
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0 - 0.1 * math.cos((sine) / 9)) * angles(math.rad(0), math.rad(0), math.rad(-50)), 0.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(50)), 0.3)
            RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 - 0.1 * math.cos((sine) / 9), 0) * angles(math.rad(50), math.rad(0), math.rad(-50)), 0.3)
            LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5 - 0.1 * math.cos((sine) / 9), -0.5) * angles(math.rad(50), math.rad(0), math.rad(50)), 0.3)
            RH.C0 = clerp(RH.C0, cf(1, -1 + 0.1 * math.cos((sine) / 9), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
            LH.C0 = clerp(LH.C0, cf(-1, -1 + 0.1 * math.cos((sine) / 9), 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
          end
        else
          if 2 < Torsovelocity.x or Torsovelocity.z > 2 and hit ~= nil then
            Anim = "Walk"
            if attack == false then
              RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0 - 0.1 * math.cos((sine) / 9)) * angles(math.rad(0), math.rad(0), math.rad(-50)), 0.3)
              Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(50)), 0.3)
              RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 - 0.1 * math.cos((sine) / 9), 0) * angles(math.rad(40), math.rad(0), math.rad(-40)), 0.3)
              LW.C0 = clerp(LW.C0, CFrame.new(-0.8, 0.5 - 0.1 * math.cos((sine) / 9), -0.5) * angles(math.rad(40), math.rad(0), math.rad(40)), 0.3)
              RH.C0 = clerp(RH.C0, cf(1, -1 + 0.1 * math.cos((sine) / 9), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
              LH.C0 = clerp(LH.C0, cf(-1, -1 + 0.1 * math.cos((sine) / 9), 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
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

