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
Item = {"Normal", "Heal", "Missle", "Sonic", "Shotgun"}
Number = 1
shot = Item[Number]
local Head = Character.Head
local Torso = Character.Torso
local cam = game.Workspace.CurrentCamera
local RootPart = Character.HumanoidRootPart
local RootJoint = RootPart.RootJoint
local equipped = false
local attack = false
local Anim = "Idle"
local idle = 0
local vt = Vector3.new
local attacktype = 1
local Torsovelocity = RootPart.Velocity * Vector3.new(1, 0, 1).magnitude
local velocity = RootPart.Velocity.y
local sine = 0
local mana = 0
local mananum = 0
local change = 1
local grabbed = false
local cn = CFrame.new
local it = Instance.new
local mr = math.rad
local angles = CFrame.Angles
local ud = UDim2.new
local c3 = Color3.new
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
xenabled = true
cenabled = true
venabled = true
zenabled = true
local maxStamina = 100
local Stamina = 0
local recoverStamina = 25
local recoverMana = 10
local MaxMana = 100
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
  label.Size = ud(1, 0, 1, 0)
  label.Position = ud(0, 0, 0, 0)
  label.TextColor3 = c3(255, 255, 255)
  label.TextStrokeTransparency = 0
  label.FontSize = Enum.FontSize.Size32
  label.Font = Enum.Font.SourceSansBold
  label.BorderSizePixel = 0
  label.TextScaled = true
  label.Text = text
end

Staminabar = makeframe(scrn, 0.5, ud(0.375, 0, 0.125, 0), ud(0.26, 0, 0.03, 0), c3(1, 0.61960784313725, 0))
Staminacover = makeframe(Staminabar, 0, ud(0, 0, 0, 0), ud(1, 0, 1, 0), c3(1, 1, 0))
Staminatext = makelabel(Staminabar, "Stamina")
clerp = function(a, b, t)
  return a:lerp(b, t)
end

ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "Heartbeat"
script:WaitForChild("Heartbeat")
frame = 0.033333333333333
if Player == true then
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
fenframe2.Text = "<X"
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
fenframe3.Text = "C>"
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
  local EffectPart = CreatePart(effect, "SmoothPlastic", 0, 1, BrickColor.new(Color), "Effect", Vector3.new(0, 0, 0))
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

Handle = CreatePart(m, Enum.Material.SmoothPlastic, 0, 1, "Mid gray", "Handle", Vector3.new(0.200000003, 0.800000012, 0.200000003))
HandleWeld = CreateWeld(m, Character["Right Arm"], Handle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.111289978, -0.0457115173, 0.98500371, -1, 0, 0, 0, 0, 1, 0, 1, 0))
CreateMesh("CylinderMesh", Handle, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 0.5))
FakeHandle = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "FakeHandle", Vector3.new(0.200000003, 0.800000012, 0.200000003))
FakeHandleWeld = CreateWeld(m, Handle, FakeHandle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.90734863e-005, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("CylinderMesh", FakeHandle, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 0.5))
Barrel = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Barrel", Vector3.new(0.200000003, 0.200000003, 0.200000003))
BarrelWeld = CreateWeld(m, FakeHandle, Barrel, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00499343872, -4.45502472, -0.0400004387, -1, 0, 0, 0, -1, 0, 0, 0, 1))
CreateMesh("CylinderMesh", Barrel, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 1))
BoltPrt = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Royal purple", "BoltPrt", Vector3.new(0.200000003, 0.205000013, 0.200000003))
BoltPrtWeld = CreateWeld(m, FakeHandle, BoltPrt, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(7.62939453e-006, -1.7025032, -0.450000286, -1, 8.88178367e-016, 8.8817842e-016, 0, -0.99999994, 2.98023224e-008, 8.8817842e-016, 2.98023206e-008, 1))
CreateMesh("CylinderMesh", BoltPrt, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
ElementPrt = CreatePart(m, Enum.Material.Neon, 0, 0, "Lily white", "ElementPrt", Vector3.new(0.200000003, 0.200000018, 0.200000003))
ElementPrtWeld = CreateWeld(m, FakeHandle, ElementPrt, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00498962402, -1.5, -0.435000181, -1, 8.88178367e-016, 8.8817842e-016, 0, -0.99999994, 2.98023224e-008, 8.8817842e-016, 2.98023206e-008, 1))
CreateMesh("CylinderMesh", ElementPrt, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.850000083))
Hitbox = CreatePart(m, Enum.Material.SmoothPlastic, 0, 1, "Royal purple", "Hitbox", Vector3.new(1, 1.20000005, 0.699999988))
HitboxWeld = CreateWeld(m, FakeHandle, Hitbox, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.35000229, -0.149999857, 0, 0, -1, 0, 0, 0, 1, -1, 0, 0))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.5, 0.200000003, 0.314999998))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0500030518, -0.5, -0.00249481201, -1.19847783e-007, -1, 2.98022584e-008, 1.4338345e-015, 2.98023899e-008, 1, -1, 1.19847783e-007, -1.43382688e-015))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.50000006, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0.450000763, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.5, 0.5))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Royal purple", "Part", Vector3.new(0.200000003, 0.300000012, 0.200000003))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.599998474, -3.81469727e-006, 0.0499999523, 0, -1, 0, 1, 0, 0, 0, 0, 1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.99999994))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Royal purple", "Part", Vector3.new(1.0999999, 0.400000006, 0.300000012))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0499954224, -0.549999714, 0, 0, -1, 0, 0, 0, 1, -1, 0, 0))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.300000012, 0.200000003))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.08990479, 0, -0.362804413, -5.71178418e-007, 0.92847681, -0.371390373, -0.99999994, 2.20809127e-007, 2.08997085e-006, 2.02249544e-006, 0.371390373, 0.92847681))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.305000007, 0.200000003))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.789432526, 0.00138473511, 0.628980637, 0, -0.866025448, 0.49999994, -1, 0, 0, 0, -0.49999994, -0.866025448))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.200000018, 1.03278685, 0.899999976))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.324999988, 0.200000003))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.340003967, -0.00249481201, -0.700000048, 2.33203423e-007, 1, -7.10040752e-007, -1, 2.33203423e-007, -5.04185018e-013, -8.50164448e-013, 7.10040524e-007, 1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 0.25))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.305000007, 0.200000003))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.23942947, 0.00138473511, -0.150442123, 0, 0.866025448, 0.50000006, -1, 0, 0, 0, -0.50000006, 0.866025448))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.200000018, 1.03278685, 0.899999976))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.314999998, 0.200000003))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.300003052, -0.00249481201, -0.550000429, 2.33203423e-007, 1, -7.10040752e-007, -1, 2.33203423e-007, -5.04185018e-013, -8.50164448e-013, 7.10040524e-007, 1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.504999995, 0.200000003))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.19998932, 0.0013885498, -0.549999237, 0, 1, 0, -1, 0, 0, 0, 0, 1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.299999237))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.445317984, 1.34514236, 0, 0, 0.00358040701, -0.999993563, 0, -0.999993563, -0.00358040701, -1, 0, 0))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.5, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.700000048, 0.200000003, 0.314999998))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0500030518, -0.599999905, -0.00249481201, -1.19847783e-007, -1, 2.98022051e-008, 1.14839922e-015, 2.98024432e-008, 1, -1, 1.19847783e-007, -1.14838525e-015))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.50000006, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.314999998, 0.200000003))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.199996948, -0.00249481201, -0.549999952, 2.33203423e-007, 1, -7.10040752e-007, -1, 2.33203423e-007, -5.04185018e-013, -8.50164448e-013, 7.10040524e-007, 1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.314999998, 0.200000003))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.199996948, -0.00249481201, -0.649999857, 2.33203423e-007, 1, -7.10040752e-007, -1, 2.33203423e-007, -5.04185018e-013, -8.50164448e-013, 7.10040524e-007, 1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -0.674419403, 0.198852539, 1, 0, 0, 0, 0.866025388, 0.5, 0, -0.5, 0.866025388))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.5, 0.5))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Royal purple", "Part", Vector3.new(1.70000005, 0.5, 0.300000012))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.45000458, -0.200000286, 0, 0, -1, 0, 0, 0, 1, -1, 0, 0))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.5, 0.200000003, 0.314999998))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0500030518, -0.699999809, -0.00249481201, -1.19847783e-007, -1, 2.98023224e-008, 1.77635684e-015, 2.98023259e-008, 1, -1, 1.19847783e-007, -1.77635684e-015))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.50000006, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.540000081, 0.300000012))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.42415237, -0.203493118, 0, -1.15561839e-007, -0.928476572, -0.371390939, -2.2255195e-008, -0.371390939, 0.928476572, -1, 1.15561839e-007, 2.2255195e-008))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.324999988, 0.200000003))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.249992371, -0.00249481201, -0.690000296, 2.33203423e-007, 1, -7.10040752e-007, -1, 2.33203423e-007, -5.04185018e-013, -8.50164448e-013, 7.10040524e-007, 1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 0.25))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Royal purple", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.350006104, -1.04999924, -0.650000095, -1, 8.88178367e-016, 8.8817842e-016, 0, -0.99999994, 2.98023224e-008, 8.8817842e-016, 2.98023206e-008, 1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Royal purple", "Part", Vector3.new(0.200000003, 0.200000018, 0.200000003))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.350006104, -1.70000458, -0.650000095, -1, 8.88178367e-016, 8.8817842e-016, 0, -0.99999994, 2.98023224e-008, 8.8817842e-016, 2.98023206e-008, 1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(0.200000018, 0.24500002, 0.200000003))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.40000534, -0.127500057, 0, 0, -1, 0, 0, 0, 1, -1, 0, 0))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.5))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000018))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.40000916, 0.0949997902, 0.0100059509, 0, -1, 0, 0, 0, 1, -1, 0, 0))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.999999762, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.300000012, 0.200000003))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.350006104, -1.45000458, -0.650000334, -1, 8.88178367e-016, 8.8817842e-016, 0, -0.99999994, 2.98023224e-008, 8.8817842e-016, 2.98023206e-008, 1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.799999952))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(0.200000018, 0.200000003, 0.200000003))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.40000534, -0.0549998283, 0.150001526, 0, -1, 0, 0, 0, 1, -1, 0, 0))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Royal purple", "Part", Vector3.new(0.400000006, 0.200000003, 0.400000006))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.550003052, -2.95000076, 0.0499999523, -1, 8.88178367e-016, 8.8817842e-016, 0, -0.99999994, 2.98023224e-008, 8.8817842e-016, 2.98023206e-008, 1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Royal purple", "Part", Vector3.new(0.699999988, 0.200000003, 0.200000003))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.3500061, -0.0549998283, 0.150001526, 0, -1, 0, 0, 0, 1, -1, 0, 0))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Royal purple", "Part", Vector3.new(0.200000003, 0.400000006, 0.200000003))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.95000076, 0.0499997139, -0.450000763, 0, -1, 0, 0, 0, 1, -1, 0, 0))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 0.99999994))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Royal purple", "Part", Vector3.new(0.400000006, 0.200000003, 0.300000012))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.550003052, -2.95000076, -0.399999619, -1, 8.88178367e-016, 8.8817842e-016, 0, -0.99999994, 2.98023224e-008, 8.8817842e-016, 2.98023206e-008, 1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Royal purple", "Part", Vector3.new(0.400000006, 0.200000003, 0.400000006))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.550003052, -2.95000076, 0.0499999523, -1, 8.88178367e-016, 8.8817842e-016, 0, -0.99999994, 2.98023224e-008, 8.8817842e-016, 2.98023206e-008, 1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.5, 0.200000003))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.20000076, 0.457920074, -0.213832855, 0, 1, 0, -0.707106769, 0, -0.707106829, -0.707106829, 0, 0.707106769))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.5))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.519999981, 0.200000003))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.34999084, 3.81469727e-006, -0.0299999714, 2.33203423e-007, 1, -7.10040752e-007, -1, 2.33203423e-007, -5.04185018e-013, -8.50164448e-013, 7.10040524e-007, 1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 0.25))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.519999981))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.65000153, 0.029999733, 3.81469727e-006, -1.19847783e-007, -1, 2.98022584e-008, 1.4338345e-015, 2.98023899e-008, 1, -1, 1.19847783e-007, -1.43382688e-015))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.800000072, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Royal purple", "Part", Vector3.new(0.200000003, 0.300000012, 0.200000003))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.95000076, -0.399999857, -0.450000763, 0, -1, 0, 0, 0, 1, -1, 0, 0))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 0.99999994))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.504999995, 0.200000003))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.99998474, 0.0013885498, -0.349999428, 0, 1, 0, -1, 0, 0, 0, 0, 1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.305000007, 0.200000003))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.00000763, 0.00138473511, -0.749999523, 0, 1, 0, -1, 0, 0, 0, 0, 1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Royal purple", "Part", Vector3.new(0.200000003, 0.400000006, 0.300000012))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.549995422, -0.149999619, 0, 0, -1, 0, 0, 0, 1, -1, 0, 0))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.324999988, 0.200000003))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.244991302, -0.00249481201, -0.499997854, 2.33203423e-007, 1, -7.10040752e-007, -1, 2.33203423e-007, -5.04185018e-013, -8.50164448e-013, 7.10040524e-007, 1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 0.25))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.300000012, 0.200000003))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.42415237, 0, -0.473495483, 2.28917116e-007, 0.928476572, 0.371390939, -1, 2.20809511e-007, 6.43548574e-008, -2.22551524e-008, -0.371390939, 0.928476572))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.314999998, 0.200000003))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.300003052, -0.00249481201, -0.650000334, 2.33203423e-007, 1, -7.10040752e-007, -1, 2.33203423e-007, -5.04185018e-013, -8.50164448e-013, 7.10040524e-007, 1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.305000007, 0.200000003))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.00000763, 0.00138473511, -0.149999619, 0, 1, 0, -1, 0, 0, 0, 0, 1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.540000081, 0.300000012))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.0899086, -0.632804871, -7.62939453e-006, -5.02695957e-006, -0.92847681, 0.371390462, 2.02249544e-006, 0.371390462, 0.92847681, -1, 5.41855115e-006, 1.08748281e-008))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Part", Vector3.new(0.200000003, 0.300000012, 0.200000003))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -0.474422455, 0.198854446, 1, 0, 0, 0, 0.866025388, 0.5, 0, -0.5, 0.866025388))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 0.5))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Royal purple", "Part", Vector3.new(0.599999845, 0.50000006, 0.300000012))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.800003052, -0.5, 0, 0, -1, 0, 0, 0, 1, -1, 0, 0))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.324999988, 0.200000003))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.345001221, -0.00249481201, -0.499998331, 2.33203423e-007, 1, -7.10040752e-007, -1, 2.33203423e-007, -5.04185018e-013, -8.50164448e-013, 7.10040524e-007, 1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 0.25))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Royal purple", "Part", Vector3.new(0.200000003, 1.20000005, 0.699999988))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.95000076, -0.149999857, 0, 0, -1, 0, 0, 0, 1, -1, 0, 0))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Royal purple", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.350006104, -1, -0.650000095, -1, 8.88178367e-016, 8.8817842e-016, 0, -0.99999994, 2.98023224e-008, 8.8817842e-016, 2.98023206e-008, 1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.5, 0.200000003))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.70000458, 0.457920074, -0.213832855, 0, 1, 0, -0.707106769, 0, -0.707106829, -0.707106829, 0, 0.707106769))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.5))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000018, 0.200000003))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.350006104, -1.20000076, -0.650000095, -1, 8.88178367e-016, 8.8817842e-016, 0, -0.99999994, 2.98023224e-008, 8.8817842e-016, 2.98023206e-008, 1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.600000024, 0.24500002, 0.200000003))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.00000381, -0.127500057, 0, 0, -1, 0, 0, 0, 1, -1, 0, 0))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.5))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.599999964, 0.200000003, 0.200000018))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.00000763, 0.0949997902, 0.0100059509, 0, -1, 0, 0, 0, 1, -1, 0, 0))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.600000024, 0.200000003, 0.200000003))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.00000381, -0.0549998283, 0.150001526, 0, -1, 0, 0, 0, 1, -1, 0, 0))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.600000024, 0.200000003, 0.200000003))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.00000381, -0.0549998283, -0.150001526, 0, -1, 0, 0, 0, 1, -1, 0, 0))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(0.200000018, 0.200000003, 0.200000003))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.40000534, -0.0549998283, -0.150001526, 0, -1, 0, 0, 0, 1, -1, 0, 0))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Royal purple", "Part", Vector3.new(0.699999988, 0.200000003, 0.200000018))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.05000305, 0.244999647, 0.0100059509, 0, -0.999999762, 0, 0, 0, 0.999999762, -1, 0, 0))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Royal purple", "Part", Vector3.new(0.200000003, 0.400000006, 0.200000003))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.95000076, 0.0499997139, 0.450004578, 0, -1, 0, 0, 0, 1, -1, 0, 0))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 0.99999994))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Royal purple", "Part", Vector3.new(0.200000003, 0.300000012, 0.200000003))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.95000076, -0.399999857, 0.450004578, 0, -1, 0, 0, 0, 1, -1, 0, 0))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 0.99999994))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Royal purple", "Part", Vector3.new(0.699999988, 0.200000003, 0.200000018))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.3500061, 0.0949997902, 0.0100059509, 0, -1, 0, 0, 0, 1, -1, 0, 0))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Royal purple", "Part", Vector3.new(0.699999988, 0.200000003, 0.200000003))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.3500061, -0.0549998283, -0.150001526, 0, -1, 0, 0, 0, 1, -1, 0, 0))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Royal purple", "Part", Vector3.new(0.400000006, 0.200000003, 0.300000012))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.550003052, -2.95000076, -0.399999619, -1, 8.88178367e-016, 8.8817842e-016, 0, -0.99999994, 2.98023224e-008, 8.8817842e-016, 2.98023206e-008, 1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.519999981))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.49499893, 0.0599997044, 3.81469727e-006, -1.19847783e-007, -1, 2.98022584e-008, 1.4338345e-015, 2.98023899e-008, 1, -1, 1.19847783e-007, -1.43382688e-015))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.5, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Royal purple", "Part", Vector3.new(0.699999988, 0.24500002, 0.200000003))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.3500061, -0.127500057, 0, 0, -1, 0, 0, 0, 1, -1, 0, 0))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.5))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.504999995, 0.200000003))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.180040359, 0.00138473511, -2.0242157, 0, 0.258819014, 0.965925932, -1, 0, 0, 0, -0.965925932, 0.258819014))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.200000018, 1.03278685, 0.899999976))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Royal purple", "Part", Vector3.new(0.600000024, 0.699999988, 0.5))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.60000229, -0.0999999046, 0, 0, -1, 0, 0, 0, 1, -1, 0, 0))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Royal purple", "Part", Vector3.new(0.5, 0.5, 0.5))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.05000305, -0.5, 0, 0, -1, 0, 0, 0, 1, -1, 0, 0))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Royal purple", "Part", Vector3.new(0.200000003, 0.200000018, 0.200000003))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(7.62939453e-006, -1.30000305, -0.450000286, -1, 8.88178367e-016, 8.8817842e-016, 0, -0.99999994, 2.98023224e-008, 8.8817842e-016, 2.98023206e-008, 1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.519999981, 0.200000003))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.74999237, 0, -0.189999104, 2.33203423e-007, 1, -7.10040752e-007, -1, 2.33203423e-007, -5.04185018e-013, -8.50164448e-013, 7.10040524e-007, 1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 0.25))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.519999981, 0.200000003))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.74999237, 3.81469727e-006, 0.11000061, 2.33203423e-007, 1, -7.10040752e-007, -1, 2.33203423e-007, -5.04185018e-013, -8.50164448e-013, 7.10040524e-007, 1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 0.25))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.519999981, 0.200000003))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.34999084, 3.81469727e-006, 0.110000372, 2.33203423e-007, 1, -7.10040752e-007, -1, 2.33203423e-007, -5.04185018e-013, -8.50164448e-013, 7.10040524e-007, 1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 0.25))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.5, 0.200000018, 0.50999999))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.54999542, 0.0499997139, 3.81469727e-006, -1.19847783e-007, -1, 2.98022584e-008, 1.4338345e-015, 2.98023899e-008, 1, -1, 1.19847783e-007, -1.43382688e-015))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.504999995, 0.200000003))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.98446274, 0.00138473511, -1.10113621, 0, 0.965925872, 0.258819103, -1, 0, 0, 0, -0.258819103, 0.965925872))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.200000018, 1.03278685, 0.899999976))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Royal purple", "Wedge", Vector3.new(0.299999952, 0.5, 0.200000077))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.81469727e-006, 0.199996471, 1.20000839, -1, 5.30740999e-006, -2.68220788e-007, 2.68233578e-007, 2.40896179e-006, -1, -5.30740954e-006, -1, -2.40896316e-006))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Royal purple", "Wedge", Vector3.new(0.299999952, 0.5, 0.200000077))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -0.699999094, 1.20000839, 1, -2.08616257e-007, 2.10380577e-007, -2.1038062e-007, -2.15859615e-007, 1, -2.086162e-007, -1, -2.15859657e-007))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Royal purple", "Wedge", Vector3.new(0.299999952, 0.400000036, 0.600000083))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -0.649999142, 0.899997711, -1, 1.2922257e-007, 1.1920929e-007, 1.1920929e-007, 4.04325462e-008, 1, 1.2922257e-007, 1, -4.04325604e-008))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Royal purple", "Wedge", Vector3.new(0.299999952, 0.200000003, 0.200000018))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0.249999523, -0.399993896, -1, -5.96046448e-008, 1.16054075e-007, -1.16054046e-007, -4.63321726e-007, -1, 5.96047016e-008, -1, 4.63321726e-007))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Royal purple", "Wedge", Vector3.new(0.299999952, 0.200000018, 0.600000083))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -0.849999428, -0.800006866, -1, 1.2922257e-007, 1.1920929e-007, 1.1920929e-007, 4.04325462e-008, 1, 1.2922257e-007, 1, -4.04325604e-008))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Royal purple", "Wedge", Vector3.new(0.299999952, 0.400000006, 0.200000003))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0.149999619, -0.449996948, -1, -5.96046448e-008, 1.16054075e-007, -1.16054046e-007, -4.63321726e-007, -1, 5.96047016e-008, -1, 4.63321726e-007))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.5))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Royal purple", "Wedge", Vector3.new(0.299999952, 0.200000018, 1.20000005))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -0.849998951, 7.62939453e-006, 1, -2.38418551e-007, 4.71621945e-007, -4.71622002e-007, -2.76052759e-007, 1, -2.38418409e-007, -1, -2.76052873e-007))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Royal purple", "Wedge", Vector3.new(0.299999952, 0.200000003, 1))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0.299999237, 3.81469727e-006, -1, -5.96046448e-008, 1.16054075e-007, -1.16054046e-007, -4.63321726e-007, -1, 5.96047016e-008, -1, 4.63321726e-007))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 1))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Royal purple", "Wedge", Vector3.new(0.299999952, 0.200000003, 1))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0.299999237, -3.81469727e-006, 1, -5.96046377e-008, -1.33989246e-007, -1.33989289e-007, -6.00143153e-007, -1, 5.96045524e-008, 1, -6.00143153e-007))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 1))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Royal purple", "Wedge", Vector3.new(0.200000003, 0.200000003, 0.200000003))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.94999695, -0.200000048, 0.399997711, 2.38418551e-007, -1, -8.99536445e-008, -1.77939672e-008, -8.99536516e-008, 1, -1, -2.38418551e-007, -1.77939885e-008))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.5, 0.5))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Royal purple", "Wedge", Vector3.new(0.200000003, 0.200000003, 0.200000003))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.94999695, 0.199999809, 0.399997711, 5.96046448e-008, 1, 5.46628298e-010, 5.17199217e-009, 5.46627965e-010, -1, -1, 5.96046448e-008, -5.17199217e-009))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.5, 0.5))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Wedge", Vector3.new(0.200000018, 0.200000003, 0.200000003))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.40000916, -0.154999733, 0.100002289, 0, -1, 0, 0, 0, 1, -1, 0, 0))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 0.5))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Royal purple", "Wedge", Vector3.new(0.200000003, 0.200000003, 0.200000003))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.94999695, 0.200000048, 0.400005341, -1.83194864e-008, -1, -8.94069672e-008, 1.26219799e-008, 8.94069672e-008, -1, 1, -1.83194881e-008, 1.26219781e-008))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.5, 0.5))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Wedge", Vector3.new(0.200000018, 0.200000003, 0.200000003))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.40000534, -0.160003662, 0.0449995995, 0, -1, 0, 1, 0, -5.96046377e-008, 5.96046377e-008, 0, 1))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 0.5))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Royal purple", "Wedge", Vector3.new(0.200000003, 0.200000003, 0.699999988))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -0.300000668, 3.34999847, -1, 0, 0, 0, 0, 1, 0, 1, 0))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.5, 1))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Royal purple", "Wedge", Vector3.new(0.200000003, 0.200000018, 0.200000003))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.94999695, -0.349998951, 0.450004578, 0, -1, -8.94069814e-008, 7.34519823e-009, 8.94069814e-008, -1, 1, -6.56712003e-016, 7.34519823e-009))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 1))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Royal purple", "Wedge", Vector3.new(0.200000003, 0.200000018, 0.200000003))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.94999695, -0.649999857, 0.450004578, -1.49011612e-007, 1, 0, 0, 0, 1, 1, 1.49011612e-007, 0))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 1))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Royal purple", "Wedge", Vector3.new(0.699999988, 0.200000003, 0.200000003))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.3500061, -0.139995575, 0.0449981689, -5.96046412e-008, 1, 4.31944983e-007, -1, -5.96048721e-008, 5.41748932e-007, 5.41748932e-007, -4.31944954e-007, 1))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 0.5))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Royal purple", "Wedge", Vector3.new(0.699999988, 0.200000003, 0.200000003))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.3500061, -0.154999733, 0.0999984741, 8.94069743e-008, 1, 0, 0, 0, 1, 1, -8.94069743e-008, 0))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 0.5))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Royal purple", "Wedge", Vector3.new(0.699999988, 0.200000003, 0.200000003))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.3500061, -0.154999733, 0.100002289, 0, -1, 0, 0, 0, 1, -1, 0, 0))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 0.5))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Wedge", Vector3.new(0.200000018, 0.200000003, 0.200000003))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.40000534, -0.139995575, 0.0449981689, -5.96046412e-008, 1, 4.31944983e-007, -1, -5.96048721e-008, 5.41748932e-007, 5.41748932e-007, -4.31944954e-007, 1))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 0.5))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Royal purple", "Wedge", Vector3.new(0.49999994, 0.5, 0.200000003))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -9.53674316e-007, -2.19998932, -1, -5.96046448e-008, 1.16054075e-007, -1.16054046e-007, -4.63321726e-007, -1, 5.96047016e-008, -1, 4.63321726e-007))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.99999994))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Royal purple", "Wedge", Vector3.new(0.299999952, 0.5, 0.400000095))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -0.699999332, 0.799995422, -1, 1.2922257e-007, 1.1920929e-007, 1.1920929e-007, 4.04325462e-008, 1, 1.2922257e-007, 1, -4.04325604e-008))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Royal purple", "Wedge", Vector3.new(0.299999952, 0.300000012, 0.600000083))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0.100000381, -0.800006866, 1, -5.96046377e-008, -1.33989246e-007, -1.33989289e-007, -6.00143153e-007, -1, 5.96045524e-008, 1, -6.00143153e-007))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Royal purple", "Wedge", Vector3.new(0.299999952, 0.200000003, 0.799999952))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -0.0999999046, 1, 1, 2.98023206e-008, -1.5333173e-008, 0, -8.94069672e-008, -1, -2.98023224e-008, 1, -8.94069672e-008))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 1))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Wedge", Vector3.new(0.600000024, 0.200000003, 0.200000003))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.00000381, -0.160003662, 0.0449995995, 0, -1, 0, 1, 0, -5.96046377e-008, 5.96046377e-008, 0, 1))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 0.5))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Wedge", Vector3.new(0.600000024, 0.200000003, 0.200000003))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.00000763, -0.154999733, 0.100002289, 0, -1, 0, 0, 0, 1, -1, 0, 0))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 0.5))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Wedge", Vector3.new(0.600000024, 0.200000003, 0.200000003))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.00000381, -0.139995575, 0.0449984074, -5.96046412e-008, 1, 4.31944983e-007, -1, -5.96048721e-008, 5.41748932e-007, 5.41748932e-007, -4.31944954e-007, 1))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 0.5))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Royal purple", "Wedge", Vector3.new(0.200000003, 0.200000003, 0.400000006))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -0.35000062, 3.20000076, -1, 0, 0, 0, 0, 1, 0, 1, 0))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 1))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Wedge", Vector3.new(0.600000024, 0.200000003, 0.200000003))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.00000763, -0.154999733, 0.0999984741, 8.94069743e-008, 1, 0, 0, 0, 1, 1, -8.94069743e-008, 0))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 0.5))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Royal purple", "Wedge", Vector3.new(0.200000003, 0.200000003, 0.200000003))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0100021362, -0.244999647, -2.65000153, -1, 0, -5.96046377e-008, 5.96046377e-008, 0, -1, 0, -1, 0))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 0.5))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Royal purple", "Wedge", Vector3.new(0.699999988, 0.200000003, 0.200000003))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.3500061, -0.160003662, 0.0449995995, 0, -1, 0, 1, 0, -5.96046377e-008, 5.96046377e-008, 0, 1))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 0.5))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Royal purple", "Wedge", Vector3.new(0.200000003, 0.200000018, 0.200000003))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.94999695, -0.649999857, 0.449996948, 5.96046377e-008, -1, 0, 0, 0, 1, -1, -5.96046377e-008, 0))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 1))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Royal purple", "Wedge", Vector3.new(0.200000003, 0.200000018, 0.200000003))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.94999695, -0.349999428, 0.449996948, 1.82183886e-008, 1, -8.94069672e-008, -7.34519912e-009, -8.94069672e-008, -1, -1, 1.82183886e-008, 7.34519734e-009))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 1))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Royal purple", "Wedge", Vector3.new(0.49999994, 0.200000018, 0.5))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0.149998665, -2.04998779, -1, -5.96046448e-008, 1.16054075e-007, -1.16054046e-007, -4.63321726e-007, -1, 5.96047016e-008, -1, 4.63321726e-007))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Royal purple", "Wedge", Vector3.new(0.49999994, 0.300000012, 0.299999982))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0.099998951, -2.14999008, -1, -5.96046448e-008, 1.16054075e-007, -1.16054046e-007, -4.63321726e-007, -1, 5.96047016e-008, -1, 4.63321726e-007))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Royal purple", "Wedge", Vector3.new(0.200000003, 0.300000012, 0.200000003))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0100059509, -3.55000305, 0.244999409, -1, -2.23511698e-008, 1.76574866e-010, 2.23511698e-008, -1, -5.96046448e-008, 1.76576198e-010, -5.96046448e-008, 1))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.5))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Wedge", Vector3.new(0.200000018, 0.200000003, 0.200000003))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.40000916, -0.154999733, 0.0999984741, 8.94069743e-008, 1, 0, 0, 0, 1, 1, -8.94069743e-008, 0))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 0.5))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Royal purple", "Wedge", Vector3.new(0.200000003, 0.200000003, 0.200000003))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.94999695, -0.199999809, 0.400005341, -1.49011612e-007, 1, 0, 0, 0, 1, 1, 1.49011612e-007, 0))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.5, 0.5))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Wedge", Vector3.new(0.509999931, 0.200000018, 0.50000006))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-7.62939453e-006, -0.150000095, -2.54999542, 1, -1.2922257e-007, 1.1920929e-007, -1.19209304e-007, -4.04325426e-008, 1, -1.2922257e-007, -1, -4.04325533e-008))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Royal purple", "Wedge", Vector3.new(0.49999994, 0.300000012, 0.600000024))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -0.600000858, 2.59999847, -1, 0, 0, 0, 0, 1, 0, 1, 0))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Royal purple", "Wedge", Vector3.new(0.49999994, 0.200000018, 0.5))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -0.85000062, 2.05000305, -1, -5.96046377e-008, 0, 0, 0, 1, -5.96046377e-008, 1, 0))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Wedge", Vector3.new(0.519999921, 0.200000003, 0.200000003))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -0.0399990082, -2.49500275, 1, -1.2922257e-007, 1.1920929e-007, -1.19209304e-007, -4.04325426e-008, 1, -1.2922257e-007, -1, -4.04325533e-008))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 0.5))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Wedge", Vector3.new(0.519999921, 0.200000003, 0.200000003))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -0.0999999046, -2.64999008, 1, -1.2922257e-007, 1.1920929e-007, -1.19209304e-007, -4.04325426e-008, 1, -1.2922257e-007, -1, -4.04325533e-008))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 0.5))
gyro = Instance.new("BodyGyro")
gyro.Parent = RootPart
gyro.P = 10000000
gyro.D = 1000
gyro.MaxTorque = Vector3.new(0, 10000000, 0)
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

BreakEffect = function(brickcolor, cframe, x1, y1, z1)
  local prt = CreatePart(effect, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
  local msh = CreateMesh("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  local num = math.random(10, 50) / 1000
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Shatter", num, prt.CFrame, math.random() - math.random(), 0, math.random(50, 100) / 100})
end

local walkforw = false
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
      effectsmsh.MeshType = "FileMesh"
      effectsmsh.MeshId = "http://www.roblox.com/asset/?id=10146028"
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
      effectsg.BrickColor = BrickColor.new("Really red")
      effectsg.Reflectance = 0.25
      local LP = From
      local point1 = To
      local mg = LP - point1.magnitude
      effectsmsh.Scale = Vector3.new(0.1, 0.1, 0.1)
      effectsg.CFrame = CFrame.new((LP + point1) / 2, point1) * CFrame.Angles(math.rad(-90), 0, 0)
      coroutine.resume(coroutine.create(function()
        swait()
        CylinderEffect(BrickColor.new(ElementPrt.BrickColor.Color), effectsg.CFrame, 2, 5, 2, 0.5, 0.5, 0.5, 0.1)
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
      local dist = 30
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
            MagniDamage(hit.Parent.Parent.Torso, 10, 10, 15, 0, "Up")
            attackdebounce = false
          end
        end
        for i = 1, math.random(3, 6) do
          BreakEffect(BrickColor.new("Really red"), CFrame.new(newpos), 0.5, math.random(5, 20), 0.5)
        end
        CreateSound("http://roblox.com/asset/?id=3264793", hit, 1, math.random() + math.random() + 1)
        SphereEffect(BrickColor.new("Bright red"), CFrame.new(newpos), 2, 2, 2, 3, 3, 3, 0.07)
        BlockEffect(BrickColor.new("Br. yellowish orange"), CFrame.new(newpos), 2, 2, 2, 2, 2, 2, 0.07, 1)
      end
    until rangepos <= 0
  end
))
end

Shoot = function(asd, spread1, spread2)
  local MainPos = asd.Position
  local MainPos2 = mouse.Hit.p
  local spread = Vector3.new((math.random(-spread1, 0) + math.random()) * spread2, (math.random(-spread1, 0) + math.random()) * spread2, (math.random(-spread1, 0) + math.random()) * spread2) * (asd.Position - mouse.Hit.p).magnitude / 100
  local MouseLook = cn((MainPos + MainPos2) / 2, MainPos2 + spread)
  num = 50
  coroutine.resume(coroutine.create(function(Spreaded)
    repeat
      swait()
      local hit, pos = rayCast(MainPos, MouseLook.lookVector, 50, RootPart.Parent)
      local TheHit = mouse.Hit.p
      local mag = (MainPos - pos).magnitude
      CylinderEffect(BrickColor.new(ElementPrt.BrickColor.Color), CFrame.new((MainPos + pos) / 2, pos) * angles(1.57, 0, 0), 3, mag * 5, 3, 0.5, 0, 1.5, 0.1)
      MainPos = MainPos + MouseLook.lookVector * 50
      num = num - 1
      if hit ~= nil then
        num = 0
        Damagefunc(hit, hit, 8, 15, 0, "Normal", RootPart, 0, "rbxassetid://199149221", 0.8)
      end
    until num <= 0
  end
))
end

SonicShoot = function(asd, spread1, spread2)
  local MainPos = asd.Position
  local MainPos2 = mouse.Hit.p
  local spread = Vector3.new((math.random(-spread1, 0) + math.random()) * spread2, (math.random(-spread1, 0) + math.random()) * spread2, (math.random(-spread1, 0) + math.random()) * spread2) * (asd.Position - mouse.Hit.p).magnitude / 100
  local MouseLook = cn((MainPos + MainPos2) / 2, MainPos2 + spread)
  num = 50
  coroutine.resume(coroutine.create(function(Spreaded)
    repeat
      swait()
      local hit, pos = rayCast(MainPos, MouseLook.lookVector, 50, RootPart.Parent)
      local TheHit = mouse.Hit.p
      local mag = (MainPos - pos).magnitude
      RingEffect(BrickColor.new(ElementPrt.BrickColor.Color), CFrame.new((MainPos + pos) / 2, pos) * angles(0, 0, 0), 3, 3, 0, 1, 1, 0, 0.1)
      CylinderEffect(BrickColor.new(ElementPrt.BrickColor.Color), CFrame.new((MainPos + pos) / 2, pos) * angles(1.57, 0, 0), 3, mag * 5, 3, 0.5, 0, 1.5, 0.1)
      MainPos = MainPos + MouseLook.lookVector * 50
      num = num - 1
      if hit ~= nil then
        num = 0
        Damagefunc(hit, hit, 15, 20, math.random(10, 15), "Knockdown", RootPart, 0.2, "rbxassetid://199149221", 0.8)
      end
    until num <= 0
  end
))
end

HealShoot = function(asd, spread1, spread2)
  local MainPos = asd.Position
  local MainPos2 = mouse.Hit.p
  local spread = Vector3.new((math.random(-spread1, 0) + math.random()) * spread2, (math.random(-spread1, 0) + math.random()) * spread2, (math.random(-spread1, 0) + math.random()) * spread2) * (asd.Position - mouse.Hit.p).magnitude / 100
  local MouseLook = cn((MainPos + MainPos2) / 2, MainPos2 + spread)
  num = 50
  coroutine.resume(coroutine.create(function(Spreaded)
    repeat
      swait()
      local hit, pos = rayCast(MainPos, MouseLook.lookVector, 50, RootPart.Parent)
      local TheHit = mouse.Hit.p
      local mag = (MainPos - pos).magnitude
      CylinderEffect(BrickColor.new("Medium green"), CFrame.new((MainPos + pos) / 2, pos) * angles(1.57, 0, 0), 3, mag * 5, 3, 0.5, 0, 1.5, 0.1)
      MainPos = MainPos + MouseLook.lookVector * 50
      num = num - 1
      if hit ~= nil then
        num = 0
        Damagefunc(hit, hit, -25, -15, 0, "Normal", RootPart, 0.2, "rbxassetid://199149221", 0.8)
      end
    until num <= 0
  end
))
end

AirDash = function()
  attack = true
  gyro.Parent = nil
  local AntiJump = Humanoid.Changed:connect(function()
    Humanoid.Jump = false
  end
)
  RootPart.Velocity = RootPart.CFrame.lookVector * 120
  for i = 0, 1, 0.13 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -0.1) * angles(math.rad(40), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, -0.5) * angles(math.rad(20), math.rad(50), math.rad(-2)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.1, 0.5, -0.5) * angles(math.rad(0), math.rad(-140), math.rad(-50)), 0.3)
    RH.C0 = clerp(RH.C0, cn(1, -0.8, -0.3) * RHCF * angles(math.rad(-2), math.rad(0), math.rad(-70)), 0.2)
    LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-2), math.rad(0), math.rad(50)), 0.2)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    BoltPrtWeld.C0 = clerp(BoltPrtWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  local hitfloor = nil
  while hitfloor == nil do
    swait()
    hitfloor = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 6, Character)
  end
  for i = 0, 1, 0.1 do
    swait()
    RootPart.Velocity = RootPart.CFrame.lookVector * 50
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -1.3) * angles(6 * i, math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, -0.5) * angles(math.rad(20), math.rad(50), math.rad(-2)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.1, 0.5, -0.5) * angles(math.rad(0), math.rad(-140), math.rad(-50)), 0.3)
    RH.C0 = clerp(RH.C0, cn(1, 0, -1) * RHCF * angles(math.rad(-2), math.rad(0), math.rad(-20)), 0.2)
    LH.C0 = clerp(LH.C0, cn(-1, 0, -1) * LHCF * angles(math.rad(-2), math.rad(0), math.rad(20)), 0.2)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    BoltPrtWeld.C0 = clerp(BoltPrtWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  AntiJump:disconnect()
  gyro.Parent = RootPart
  attack = false
end

R0LL = function()
  attack = true
  gyro.Parent = nil
  local AntiJump = Humanoid.Changed:connect(function()
    Humanoid.Jump = false
  end
)
  for i = 0, 1, 0.1 do
    swait()
    RootPart.Velocity = RootPart.CFrame.lookVector * 50
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -1.3) * angles(6 * i, math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, -0.5) * angles(math.rad(20), math.rad(50), math.rad(-2)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.1, 0.5, -0.5) * angles(math.rad(0), math.rad(-140), math.rad(-50)), 0.3)
    RH.C0 = clerp(RH.C0, cn(1, 0, -1) * RHCF * angles(math.rad(-2), math.rad(0), math.rad(-20)), 0.2)
    LH.C0 = clerp(LH.C0, cn(-1, 0, -1) * LHCF * angles(math.rad(-2), math.rad(0), math.rad(20)), 0.2)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    BoltPrtWeld.C0 = clerp(BoltPrtWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  AntiJump:disconnect()
  gyro.Parent = RootPart
  attack = false
end

Fire = function()
  attack = true
  local AntiJump = Humanoid.Changed:connect(function()
    Humanoid.Jump = false
  end
)
  if shot == "Normal" then
    CreateSound("http://www.roblox.com/asset/?id=385470847", Barrel, 1, 1)
    Shoot(Barrel, 0.5, 0.5)
  else
    if shot == "Heal" and mana >= 10 then
      CreateSound("http://www.roblox.com/asset/?id=384105511", Barrel, 1, 1)
      mana = mana - 10
      HealShoot(Barrel, 0, 0)
    else
      if shot == "Missle" and mana >= 15 then
        CreateSound("http://www.roblox.com/asset/?id=133227923", Barrel, 1, 1)
        mana = mana - 15
        shoottrail3(mouse, Barrel)
      else
        if shot == "Sonic" and mana >= 20 then
          CreateSound("http://www.roblox.com/asset/?id=240799315", Barrel, 1, 1)
          mana = mana - 20
          SonicShoot(Barrel, 0, 0)
        else
          if shot == "Shotgun" and mana >= 25 then
            CreateSound("http://www.roblox.com/asset/?id=385470847", Barrel, 1, 0.8)
            mana = mana - 25
            for i = 0, math.random(3, 5) do
              Shoot(Barrel, 1, 1)
            end
          end
        end
      end
    end
  end
  do
    for i = 0, 1, 0.17 do
      swait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -0.1) * angles(math.rad(0), math.rad(0), math.rad(-50)), 0.3)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(50)), 0.3)
      RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, -0.5) * angles(math.rad(0), math.rad(30), math.rad(10)), 0.7)
      LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.3) * angles(math.rad(0), math.rad(-150), math.rad(-90)), 0.7)
      FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-30), math.rad(-20), math.rad(20)), 0.7)
      BoltPrtWeld.C0 = clerp(BoltPrtWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      if Torsovelocity.z > 2 or Torsovelocity.x > 2 then
        if walkforw == true then
          RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-3), math.rad(30), math.rad(40)), 0.2)
          LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-3), math.rad(30), math.rad(40)), 0.2)
        else
          RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(3), math.rad(30), math.rad(-40)), 0.2)
          LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(3), math.rad(30), math.rad(-40)), 0.2)
        end
      end
    end
    for i = 0, 1, 0.5 do
      swait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -0.1) * angles(math.rad(0), math.rad(0), math.rad(-50)), 0.3)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(50)), 0.3)
      RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, -0.5) * angles(math.rad(20), math.rad(50), math.rad(-2)), 0.3)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.1, 0.5, -0.5) * angles(math.rad(0), math.rad(-140), math.rad(-50)), 0.3)
      FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(13), math.rad(0), math.rad(0)), 0.3)
      BoltPrtWeld.C0 = clerp(BoltPrtWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      if Torsovelocity.x > 2 or Torsovelocity.z >2 then
        if walkforw == true then
          RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-3), math.rad(30), math.rad(40)), 0.2)
          LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-3), math.rad(30), math.rad(40)), 0.2)
        else
          RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(3), math.rad(30), math.rad(-40)), 0.2)
          LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(3), math.rad(30), math.rad(-40)), 0.2)
        end
      end
    end
    AntiJump:disconnect()
    attack = false
  end
end

Escape = function()
  attack = true
  local AntiJump = Humanoid.Changed:connect(function()
    Humanoid.Jump = false
  end
)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -0.1) * angles(math.rad(0), math.rad(0), math.rad(-50)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(30), math.rad(0), math.rad(50)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, -0.5) * angles(math.rad(0), math.rad(30), math.rad(100)), 0.7)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.3) * angles(math.rad(0), math.rad(-150), math.rad(-90)), 0.7)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-30), math.rad(-20), math.rad(20)), 0.7)
    BoltPrtWeld.C0 = clerp(BoltPrtWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    if Torsovelocity.x > 2 or Torsovelocity.z > 2 then
      if walkforw == true then
        RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-3), math.rad(30), math.rad(100)), 0.2)
        LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-3), math.rad(30), math.rad(50)), 0.2)
      else
        RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(3), math.rad(30), math.rad(-50)), 0.2)
        LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(3), math.rad(30), math.rad(-50)), 0.2)
      end
    end
  end
  CreateSound("http://www.roblox.com/asset/?id=288233304", Barrel, 1, 0.8)
  MagniDamage(Barrel, 10, 10, 15, 10, "Knockdown")
  SphereEffect(BrickColor.new("Bright blue"), Barrel.CFrame, 15, 15, 15, 5, 5, 5, 0.05)
  WaveEffect(BrickColor.new("Bright blue"), Barrel.CFrame, 1, 1, 1, 2, 2, 2, 0.07)
  Humanoid.JumpPower = 100
  Humanoid.Jump = true
  Torso.Velocity = Head.CFrame.lookVector * -200
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -0.1) * angles(math.rad(0), math.rad(0), math.rad(-50)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(50)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, -0.5) * angles(math.rad(20), math.rad(50), math.rad(-2)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.1, 0.5, -0.5) * angles(math.rad(0), math.rad(-140), math.rad(-50)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(13), math.rad(0), math.rad(0)), 0.3)
    BoltPrtWeld.C0 = clerp(BoltPrtWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    if Torsovelocity.z > 2 or Torsovelocity.x > 2 then
      if walkforw == true then
        RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-3), math.rad(30), math.rad(40)), 0.2)
        LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-3), math.rad(30), math.rad(40)), 0.2)
      else
        RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(3), math.rad(30), math.rad(-40)), 0.2)
        LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(3), math.rad(30), math.rad(-40)), 0.2)
      end
    end
  end
  Humanoid.JumpPower = 10
  AntiJump:disconnect()
  attack = false
end

changeitemleft = function()
  if Number > 1 then
    Number = Number - 1
    shot = Item[Number]
  end
end

changeitemright = function()
  if Number < #Item then
    Number = Number + 1
    shot = Item[Number]
  end
end

updateskills = function()
  if Stamina <= maxStamina then
    Stamina = Stamina + recoverStamina / 30
    if maxStamina <= Stamina then
      Stamina = 100
    end
  end
end

updatemana = function()
  if mana <= MaxMana then
    mana = mana + recoverMana / 30
    if MaxMana <= mana then
      mana = 100
    end
  end
end

ob1u = function()
end

ob1d = function()
  if attack == false and Humanoid.Jump == false then
    Fire()
  end
end

key = function(k)
  k = k:lower()
  if attack == false and k == " " and Anim == "Jump" and Stamina >= 70 then
    Stamina = Stamina - 70
    AirDash()
  else
    if attack == false and k == "z" and Humanoid.Jump == false and Stamina >= 40 and zenabled == true then
      Stamina = Stamina - 30
      zenabled = false
      coroutine.resume(coroutine.create(function()
    for i = 1, 0, -0.05 do
      swait()
      fenframe1a.Size = UDim2.new(0.05 * i, 0, 0.1, 0)
    end
    zenabled = true
    fenframe1a.Size = UDim2.new(0, 0, 0.1, 0)
  end
))
      R0LL()
    else
      if attack == false and k == "v" and Humanoid.Jump == false and Stamina >= 40 and mana >= 40 and venabled == true then
        Stamina = Stamina - 40
        mana = mana - 40
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
        Escape()
      else
        if k == "x" then
          changeitemleft()
        else
          if k == "c" then
            changeitemright()
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
local walk = 0
while 1 do
  swait()
  updatemana()
  updateskills()
  Staminacover:TweenSize(ud(1 * (Stamina / maxStamina), 0, 1, 0), "Out", "Quad", 0.5)
  fenbarmana2:TweenSize(ud(4 * (mana / MaxMana), 0, 0.2, 0), "Out", "Quad", 0.5)
  gyro.CFrame = CFrame.new(Vector3.new(), mouse.Hit.p - RootPart.CFrame.p.unit * 100)
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
  velocity = RootPart.Velocity
  sine = sine + change
  local hit, pos = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 4, Character)
  if equipped == true or equipped == false then
    if 1 < RootPart.Velocity.y and hit == nil then
      Anim = "Jump"
      if attack == false then
        gyro.Parent = Character
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -0.1 + 0.05 * math.cos((sine) / 25)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
        RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5 - 0.1 * math.cos((sine) / 25), -0.5) * angles(math.rad(60), math.rad(50), math.rad(-2)), 0.3)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.1, 0.5 - 0.1 * math.cos((sine) / 25), -0.5) * angles(math.rad(0), math.rad(-140), math.rad(-90)), 0.3)
        RH.C0 = clerp(RH.C0, cn(1, -0.9 - 0.05 * math.cos((sine) / 25), 0) * RHCF * angles(math.rad(-5), math.rad(0), math.rad(-30)), 0.3)
        LH.C0 = clerp(LH.C0, cn(-1, -0.9 - 0.05 * math.cos((sine) / 25), 0) * LHCF * angles(math.rad(-5), math.rad(0), math.rad(10)), 0.3)
        FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(13), math.rad(0), math.rad(0)), 0.3)
        BoltPrtWeld.C0 = clerp(BoltPrtWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      end
    else
      if RootPart.Velocity.y < -1 and hit == nil then
        Anim = "Fall"
        if attack == false then
          gyro.Parent = Character
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -0.1 + 0.05 * math.cos((sine) / 25)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
          Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(0)), 0.3)
          RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5 - 0.1 * math.cos((sine) / 25), -0.5) * angles(math.rad(90), math.rad(50), math.rad(-2)), 0.3)
          LW.C0 = clerp(LW.C0, CFrame.new(-1.1, 0.5 - 0.1 * math.cos((sine) / 25), -0.5) * angles(math.rad(0), math.rad(-140), math.rad(-130)), 0.3)
          RH.C0 = clerp(RH.C0, cn(1, -0.9 - 0.05 * math.cos((sine) / 25), 0) * RHCF * angles(math.rad(-5), math.rad(0), math.rad(30)), 0.3)
          LH.C0 = clerp(LH.C0, cn(-1, -0.9 - 0.05 * math.cos((sine) / 25), 0) * LHCF * angles(math.rad(-5), math.rad(0), math.rad(-20)), 0.3)
          FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(13), math.rad(0), math.rad(0)), 0.3)
          BoltPrtWeld.C0 = clerp(BoltPrtWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
        end
      else
        if Torsovelocity.x < 1 or Torsovelocity.z < 1 and hit ~= nil then
          Anim = "Idle"
          if attack == false then
            change = 1
            gyro.Parent = RootPart
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -0.1 + 0.05 * math.cos((sine) / 25)) * angles(math.rad(0), math.rad(0), math.rad(-50)), 0.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(1 - 3 * math.cos((sine) / 26)), math.rad(1 - 3 * math.cos((sine) / 26)), math.rad(50)), 0.3)
            RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5 - 0.1 * math.cos((sine) / 25), -0.5) * angles(math.rad(20), math.rad(50), math.rad(-2)), 0.3)
            LW.C0 = clerp(LW.C0, CFrame.new(-1.1, 0.5 - 0.1 * math.cos((sine) / 25), -0.5) * angles(math.rad(0), math.rad(-140), math.rad(-50)), 0.3)
            RH.C0 = clerp(RH.C0, cn(1, -0.9 - 0.05 * math.cos((sine) / 25), 0) * RHCF * angles(math.rad(-3 - 1 * math.cos((sine) / 25)), math.rad(30), math.rad(-3)), 0.3)
            LH.C0 = clerp(LH.C0, cn(-1, -0.9 - 0.05 * math.cos((sine) / 25), 0) * LHCF * angles(math.rad(-3 - 1 * math.cos((sine) / 25)), math.rad(30), math.rad(0)), 0.3)
            FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(13), math.rad(0), math.rad(0)), 0.3)
            BoltPrtWeld.C0 = clerp(BoltPrtWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
          end
        else
          if 2 < Torsovelocity.x or 2 < Torsovelocity.z and hit ~= nil then
            Anim = "Walk"
            if attack == false then
              RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -0.1 + 0.1 * math.cos((sine) / 25)) * angles(math.rad(0), math.rad(0), math.rad(-50)), 0.3)
              Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(1 - 3 * math.cos((sine) / 26)), math.rad(1 - 3 * math.cos((sine) / 26)), math.rad(50)), 0.3)
              RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5 - 0.08 * math.cos((sine) / 25), -0.5) * angles(math.rad(20), math.rad(50), math.rad(-2)), 0.3)
              LW.C0 = clerp(LW.C0, CFrame.new(-1.1, 0.5 - 0.08 * math.cos((sine) / 25), -0.5) * angles(math.rad(0), math.rad(-140), math.rad(-50)), 0.3)
              FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(13), math.rad(0), math.rad(0)), 0.3)
              BoltPrtWeld.C0 = clerp(BoltPrtWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
              if walkforw == true then
                RH.C0 = clerp(RH.C0, cn(1, -0.9 - 0.1 * math.cos((sine) / 25), 0) * RHCF * angles(math.rad(-3), math.rad(30), math.rad(40)), 0.2)
                LH.C0 = clerp(LH.C0, cn(-1, -0.9 - 0.1 * math.cos((sine) / 25), 0) * LHCF * angles(math.rad(-3), math.rad(30), math.rad(40)), 0.2)
              else
                RH.C0 = clerp(RH.C0, cn(1, -0.9 - 0.1 * math.cos((sine) / 25), 0) * RHCF * angles(math.rad(3), math.rad(30), math.rad(-40)), 0.2)
                LH.C0 = clerp(LH.C0, cn(-1, -0.9 - 0.1 * math.cos((sine) / 25), 0) * LHCF * angles(math.rad(3), math.rad(30), math.rad(-40)), 0.2)
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
      fenbarmana4.Text = "[" .. shot .. " Ammo]"
      -- DECOMPILER ERROR at PC11413: LeaveBlock: unexpected jumping out DO_STMT

    end
  end
end

