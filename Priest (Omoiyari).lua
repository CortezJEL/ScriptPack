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
local grabbed = false
local cn = CFrame.new
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
clerp = function(a, b, t)
  return a:lerp(b, t)
end

local co1 = 5
local co2 = 25
local co3 = 30
local co4 = 30
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
local skillcolorscheme = BrickColor.new("Toothpaste").Color
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
bar1 = makeframe(framesk1, 0, UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0), skillcolorscheme)
bar2 = makeframe(framesk2, 0, UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0), skillcolorscheme)
bar3 = makeframe(framesk3, 0, UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0), skillcolorscheme)
bar4 = makeframe(framesk4, 0, UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0), skillcolorscheme)
text1 = makelabel(framesk1, "[Z] Heal")
text2 = makelabel(framesk2, "[X] Angel\'s Spears")
text3 = makelabel(framesk3, "[C] Lifestorm")
text4 = makelabel(framesk4, "[V] Deathstorm")
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

CreateBillBoardGui = function(Img, Pos, Siz)
  local billpar = Create("Part")({Transparency = 1, Size = Vector3.new(1, 1, 1), Anchored = true, CanCollide = false, CFrame = CFrame.new(Pos), Name = "BillboardGuiPart"})
  local bill = Create("BillboardGui")({Parent = billpar, Adornee = billpar, Size = UDim2.new(1, 0, 1, 0), SizeOffset = Vector2.new(Siz, Siz)})
  local d = Create("ImageLabel")({Parent = bill, BackgroundTransparency = 1, Size = UDim2.new(1, 0, 1, 0), Image = Img})
  return billpar
end

rayCast = function(Position, Direction, Range, Ignore)
  return game:service("Workspace"):FindPartOnRay(Ray.new(Position, Direction.unit * (Range or 999.999)), Ignore)
end

CreateSound = function(id, par, vol, pit)
  coroutine.resume(coroutine.create(function()
    local S = Create("Sound")({Volume = vol, Pitch = pit or 1, SoundId = id, Parent = par or workspace})
    swait()
    S:play()
    game:GetService("Debris"):AddItem(S, 6)
  end
))
end

local GetNearest = function(obj, distance)
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
      local find = v:FindFirstChild("DebounceHit")
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
            local bool = Create("BoolValue")({Parent = v, Name = "DebounceHit"})
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

MagnitudeDamage = function(Part, magni, mindam, maxdam, Color1, Color2, HSound, HPitch)
  for _,c in pairs(workspace:children()) do
    local hum = c:findFirstChild("Humanoid")
    if hum ~= nil then
      local head = c:findFirstChild("Torso")
      if head ~= nil then
        local targ = head.Position - Part.Position
        local mag = targ.magnitude
        if mag <= magni and c.Name ~= Player.Name then
          Damage(head.Parent, math.random(mindam, maxdam), 0, Color1, Color2, HSound, HPitch)
        end
      end
    end
  end
end

Handle = CreatePart(m, Enum.Material.SmoothPlastic, 0, 1, "Pastel light blue", "Handle", Vector3.new(1.12999964, 0.219999999, 0.219999999))
HandleWeld = CreateWeld(m, Character["Right Arm"], Handle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0808868408, 0.949850321, -0.0257873535, 4.37113883e-008, -3.0473866e-005, -1, 0, 1, -3.0473866e-005, 1, 1.33205502e-012, 4.37113883e-008))
FakeHandle = CreatePart(m, Enum.Material.SmoothPlastic, 0, 1, "Pastel light blue", "FakeHandle", Vector3.new(1.12999964, 0.219999999, 0.219999999))
FakeHandleweld = CreateWeld(m, Handle, FakeHandle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("SpecialMesh", FakeHandle, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
hitbox = CreatePart(m, Enum.Material.SmoothPlastic, 0, 1, "Pastel light blue", "hitbox", Vector3.new(4.5199995, 0.219999999, 1.13))
hitboxWeld = CreateWeld(m, FakeHandle, hitbox, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.43499947, 0, -0.0249938965, 1, 0, 0, 0, 1, 0, 0, 0, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Pastel light blue", "Part", Vector3.new(5.99999952, 0.219999999, 0.219999999))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.475000381, -1.52587891e-005, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Pastel light blue", "Part", Vector3.new(0.299999624, 0.319999993, 0.620000005))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.830001831, -0.0198690891, 4.11499977, -1.93781204e-007, -3.0430163e-005, 1, -3.04301611e-005, 1, 3.04301575e-005, -1, -3.04301539e-005, -1.94707184e-007))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.5, 1))
Part = CreatePart(m, Enum.Material.Neon, 0.25, 0, "Bright yellow", "Part", Vector3.new(0.399999619, 0.219999999, 0.219999999))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.524999619, -0.000106811523, -0.0799865723, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(15, 0.5, 0.5))
Part = CreatePart(m, Enum.Material.Neon, 0.5, 0, "Bright yellow", "Part", Vector3.new(0.200000003, 0.579999804, 0.510000408))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0298321247, 2.39893341, -1.80484009, -3.03329853e-005, 1, -3.77476397e-008, -0.866025329, -2.62502599e-005, 0.500000238, 0.500000238, 1.5199189e-005, 0.866025329))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.200000003, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Pastel light blue", "Part", Vector3.new(0.69999969, 0.319999993, 0.200000018))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.811264038, -0.019919157, 3.69800186, 0.499999821, -1.52150824e-005, 0.866025507, -1.52150824e-005, 1, 2.63532929e-005, -0.866025507, -2.63532911e-005, 0.499999821))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Pastel light blue", "Part", Vector3.new(0.299999624, 0.419999987, 0.319999993))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.32499886, -0.0399932861, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.Neon, 0.25, 0, "Bright yellow", "Part", Vector3.new(0.399999619, 0.219999999, 0.219999999))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.524999619, -0.000106811523, 0.0700073242, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(15, 0.5, 0.5))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Pastel light blue", "Part", Vector3.new(0.499999672, 0.319999993, 0.200000018))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.83405304, -0.0199813843, 1.35035706, 0.965925813, -1.03688399e-006, 0.258819044, -1.03688001e-006, 1, 7.87590488e-006, -0.258819044, -7.87590488e-006, 0.965925813))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Pastel light blue", "Part", Vector3.new(1.09999967, 0.319999993, 0.200000018))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.42999268, -0.0198602676, 4.31500053, -1.93781204e-007, -3.0430163e-005, 1, -3.04301611e-005, 1, 3.04301575e-005, -1, -3.04301539e-005, -1.94707184e-007))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Pastel light blue", "Part", Vector3.new(0.299999624, 0.419999987, 0.319999993))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.49499893, 0.00016784668, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.Neon, 0.5, 0, "Bright yellow", "Part", Vector3.new(0.200000003, 1.17999983, 0.610000432))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00999569893, -1.35498047, -3.95651245, 3.05175781e-005, -1, 4.37100525e-008, 7.54992371e-008, -4.37077503e-008, -1, 1, 3.05175781e-005, 7.54979013e-008))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.200000003, 1, 1))
Part = CreatePart(m, Enum.Material.Neon, 0.5, 0, "Bright yellow", "Part", Vector3.new(0.200000003, 0.979999781, 0.710000396))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00999355316, -4.14052963, 0.891418457, -3.04680107e-005, 1, 2.18570282e-008, 0.866025388, 2.63969978e-005, -0.500000119, -0.500000119, -1.52150778e-005, -0.866025388))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.200000003, 1, 1))
Part = CreatePart(m, Enum.Material.Neon, 0.5, 0, "Bright yellow", "Part", Vector3.new(0.200000003, 0.779999793, 0.610000432))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00998592377, 0.850570679, -3.29831696, 3.05394315e-005, -1, 3.7853841e-008, -0.499999881, -1.53024957e-005, -0.866025507, 0.866025507, 2.64290011e-005, -0.499999881))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.200000003, 1, 1))
Part = CreatePart(m, Enum.Material.Neon, 0.5, 0, "Bright yellow", "Part", Vector3.new(0.200000003, 0.879999757, 0.510000348))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00998306274, -2.46774292, 2.48577881, -3.04520108e-005, 1, 3.78565055e-008, 0.49999994, 1.52587882e-005, -0.866025448, -0.866025448, -2.63532893e-005, -0.49999994))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.200000003, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Pastel light blue", "Part", Vector3.new(0.299999624, 0.319999993, 0.620000005))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.13405609, -0.0199830532, 1.15034485, 0.965925813, -1.03688399e-006, 0.258819044, -1.03688001e-006, 1, 7.87590488e-006, -0.258819044, -7.87590488e-006, 0.965925813))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.5, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Pastel light blue", "Part", Vector3.new(0.299999624, 0.319999993, 0.620000005))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.21127319, -0.0199306011, 3.4980011, 0.499999821, -1.52150824e-005, 0.866025507, -1.52150824e-005, 1, 2.63532929e-005, -0.866025507, -2.63532911e-005, 0.499999821))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.5, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Pastel light blue", "Part", Vector3.new(1.09999967, 0.319999993, 0.200000018))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.45843506, 0.0199475288, 4.31500053, -2.83059592e-007, 3.04301484e-005, -1, 3.05493559e-005, -1, -3.04301575e-005, -1, -3.05493631e-005, 2.82129974e-007))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 1))
Part = CreatePart(m, Enum.Material.Neon, 0.5, 0, "Bright yellow", "Part", Vector3.new(0.200000003, 1.17999983, 0.610000432))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0298318863, -1.38340759, -3.95651245, -3.05175781e-005, 1, -7.54965725e-008, 1.62918383e-007, 7.55015321e-008, 1, 1, 3.05175781e-005, -1.62920685e-007))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.200000003, 1, 1))
Part = CreatePart(m, Enum.Material.Neon, 0.5, 0, "Bright yellow", "Part", Vector3.new(0.200000003, 0.879999757, 0.510000348))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0298192501, -2.49237061, 2.47156525, 3.05116155e-005, -1, -6.53844339e-008, 0.5, 1.51991835e-005, 0.866025448, -0.866025448, -2.64565278e-005, 0.5))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.200000003, 1, 1))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Bright yellow", "Part", Vector3.new(1.19999993, 1.0999999, 0.399999976))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00999450684, -4.00502586, -0.000290632248, -1.07285381e-007, 3.17819264e-008, 1, 1, 3.03228699e-005, 1.07284414e-007, -3.03228699e-005, 1, -3.17851807e-008))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.5))
Part = CreatePart(m, Enum.Material.Neon, 0.5, 0, "Bright yellow", "Part", Vector3.new(0.200000003, 0.579999804, 0.510000408))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00999498367, 2.41314697, -1.78022003, 3.05554313e-005, -1, 2.18543654e-008, -0.866025329, -2.64727078e-005, -0.500000119, 0.500000119, 1.52587945e-005, -0.866025329))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.200000003, 1, 1))
Part = CreatePart(m, Enum.Material.Neon, 0.5, 0, "Bright yellow", "Part", Vector3.new(0.200000003, 0.979999781, 0.710000396))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0298302174, -4.15474701, 0.866783142, 3.04839814e-005, -1, -3.77502865e-008, 0.866025388, 2.63810271e-005, 0.5, -0.5, -1.52746834e-005, 0.866025388))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.200000003, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Pastel light blue", "Part", Vector3.new(0.299999624, 0.319999993, 0.620000005))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.858428955, 0.0199506283, 4.11499977, -2.83059592e-007, 3.04301484e-005, -1, 3.05493559e-005, -1, -3.04301575e-005, -1, -3.05493631e-005, 2.82129974e-007))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.5, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Pastel light blue", "Part", Vector3.new(0.69999969, 0.319999993, 0.200000018))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.786659241, 0.0199005604, 3.71221924, 0.499999762, 4.570483e-005, -0.866025507, 4.57644346e-005, -1, -2.63532929e-005, -0.866025507, -2.64565297e-005, -0.499999762))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Pastel light blue", "Part", Vector3.new(0.299999624, 0.319999993, 0.620000005))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.12669945, 0.0198228359, 1.17779541, 0.965925813, 5.99385749e-005, -0.258819103, 5.99426348e-005, -1, -7.8759067e-006, -0.258819103, -7.90675858e-006, -0.965925813))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.5, 1))
Part = CreatePart(m, Enum.Material.Neon, 0.5, 0, "Bright yellow", "Part", Vector3.new(0.200000003, 0.779999793, 0.610000432))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0298228264, 0.825950623, -3.31253815, -3.03606193e-005, 1, -6.53817835e-008, -0.49999994, -1.51236854e-005, 0.866025448, 0.866025448, 2.63257607e-005, 0.49999994))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.200000003, 1, 1))
Part = CreatePart(m, Enum.Material.Neon, 0.5, 0, "Bright yellow", "Part", Vector3.new(0.200000003, 0.579999745, 0.410000354))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0298287868, -0.343475342, 3.06836319, 3.05493631e-005, -1, -7.549923e-008, -1.58909472e-008, -7.54997345e-008, 1, -1, -3.05493631e-005, -1.58932565e-008))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.200000003, 1, 1))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Pastel light blue", "Part", Vector3.new(1.19999993, 0.299999952, 0.399999976))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00999450684, -4.00502586, -0.000290632248, -1.07285381e-007, 3.17819264e-008, 1, 1, 3.03228699e-005, 1.07284414e-007, -3.03228699e-005, 1, -3.17851807e-008))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=3270017", Vector3.new(0, 0, 0), Vector3.new(1.10000002, 1.10000002, 2))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Pastel light blue", "Part", Vector3.new(0.299999624, 0.319999993, 0.620000005))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.18665314, 0.0198876858, 3.51222229, 0.499999762, 4.570483e-005, -0.866025507, 4.57644346e-005, -1, -2.63532929e-005, -0.866025507, -2.64565297e-005, -0.499999762))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.5, 1))
Part = CreatePart(m, Enum.Material.Neon, 0.5, 0, "Bright yellow", "Part", Vector3.new(0.200000003, 0.579999745, 0.410000354))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00999283791, -0.315048218, 3.06836319, -3.04301539e-005, 1, 4.3712717e-008, -1.03317355e-007, 4.37095764e-008, -1, -1, -3.04301539e-005, 1.03316033e-007))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.200000003, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Pastel light blue", "Part", Vector3.new(0.499999672, 0.319999993, 0.200000018))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.82669258, 0.0198395252, 1.37780762, 0.965925813, 5.99385749e-005, -0.258819103, 5.99426348e-005, -1, -7.8759067e-006, -0.258819103, -7.90675858e-006, -0.965925813))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 1))
Center = CreatePart(m, Enum.Material.Neon, 0, 0, "Pastel light blue", "Center", Vector3.new(1.19999993, 0.299999952, 0.399999976))
CenterWeld = CreateWeld(m, FakeHandle, Center, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00999450684, -4.00502586, -0.000290632248, -1.07285381e-007, 3.17819264e-008, 1, 1, 3.03228699e-005, 1.07284414e-007, -3.03228699e-005, 1, -3.17851807e-008))
CreateMesh("SpecialMesh", Center, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=3270017", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.5, 2))
BlockEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type)
  local prt = CreatePart(effect, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
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
  local prt = CreatePart(effect, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = CreateMesh("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end

SphereEffectII = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, push)
  local prt = CreatePart(effect, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = CreateMesh("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Blood", delay, x3, y3, z3, msh, push})
end

RingEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = CreatePart(effect, "Neon", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe * CFrame.new(x1, y1, z1)
  local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "rbxassetid://3270017", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end

CylinderEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = CreatePart(effect, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = CreateMesh("CylinderMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end

WaveEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = CreatePart(effect, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "rbxassetid://20329976", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end

SpecialEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = CreatePart(effect, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "rbxassetid://24388358", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end

BreakEffect = function(brickcolor, cframe, x1, y1, z1)
  local prt = CreatePart(effect, "Neon", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
  local msh = CreateMesh("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  local num = math.random(10, 50) / 1000
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Shatter", num, prt.CFrame, math.random() - math.random(), 0, math.random(50, 100) / 100})
end

spread = 0
range = 20
rangepower = 5
HomingShot = function(mouse, baseprt)
  coroutine.resume(coroutine.create(function(v)
    local spreadvector = Vector3.new(math.random(-spread, spread), math.random(-spread, spread), math.random(-spread, spread)) * baseprt.Position - mouse.Hit.p.magnitude / 100
    local dir = CFrame.new((baseprt.Position + mouse.Hit.p) / 2, mouse.Hit.p + spreadvector)
    local hit, pos = rayCast(baseprt.Position, dir.lookVector, 10, Character)
    local rangepos = range * 50
    local drawtrail = function(From, To)
      local effectsmsh = Instance.new("SpecialMesh")
      effectsmsh.Scale = Vector3.new(1, 1, 1)
      effectsmsh.Name = "Mesh"
      effectsmsh.MeshType = "Sphere"
      local effectsg = Instance.new("Part")
      effectsg.formFactor = 3
      effectsg.CanCollide = false
      effectsg.Material = "Neon"
      effectsg.Name = "Eff"
      effectsg.Locked = true
      effectsg.Anchored = true
      effectsg.Size = Vector3.new(1, 1, 1)
      effectsg.Parent = effect
      effectsmsh.Parent = effectsg
      effectsg.BrickColor = BrickColor.new("New Yeller")
      effectsg.Transparency = 0.5
      local LP = From
      local point1 = To
      local mg = LP - point1.magnitude
      effectsmsh.Scale = Vector3.new(2, 2, 2)
      effectsg.CFrame = CFrame.new((LP + point1) / 2, point1) * CFrame.Angles(math.rad(90), 0, 0)
      coroutine.resume(coroutine.create(function()
        swait()
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
      local list = (game.Workspace:children())
      local torso = nil
      local dist = 10
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
          local hum = hit.Parent.Humanoid
          local tTorso = hit.Parent.Torso
          MagnitudeDamage(tTorso, 10, 3, 5, BrickColor.new("Navy blue"), BrickColor.new("New Yeller"), "", 1)
        else
          do
            if hit.Parent.Parent ~= nil and hit.Parent.Parent:FindFirstChild("Humanoid") ~= nil then
              local hum = hit.Parent.Parent.Humanoid
              local tTorso = hit.Parent.Parent.Torso
              MagnitudeDamage(tTorso, 10, 3, 5, BrickColor.new("Navy blue"), BrickColor.new("New Yeller"), "", 1)
            end
            do
              CreateSound("http://roblox.com/asset/?id=300916105", hit, 1, math.random() + math.random() + 1)
              CreateSound("http://roblox.com/asset/?id=301031757", hit, 1, math.random() + math.random() + 1)
              SphereEffect(BrickColor.new("New Yeller"), CFrame.new(newpos), 2, 2, 2, 3, 3, 3, 0.05)
              BlockEffect(BrickColor.new("New Yeller"), CFrame.new(newpos), 2, 2, 2, 2, 2, 2, 0.07, 1)
            end
          end
        end
      end
    until rangepos <= 0
  end
))
end

attackone = function()
  attack = true
  local HitCon = Center.Touched:connect(function(hit)
    Damage(hit, math.random(15, 20), 0.3, BrickColor.new("Navy blue"), BrickColor.new("New Yeller"), "", 1)
  end
)
  for i = 0, 1, 0.15 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-30)), 0.33)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(30)), 0.33)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.7, 0) * angles(math.rad(150), math.rad(0), math.rad(0)), 0.33)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-5)), 0.33)
    RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(30), math.rad(0)), 0.33)
    LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(30), math.rad(0)), 0.33)
    FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-40)), 0.33)
  end
  CreateSound("rbxassetid://263609809", Center, 1, 1.3)
  CreateSound("http://roblox.com/asset/?id=206083107", Center, 1, 1)
  SphereEffect(BrickColor.new("New Yeller"), Center.CFrame, 2, 2, 2, 3, 3, 3, 0.08)
  HomingShot(mouse, Center)
  for i = 0, 1, 0.13 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(30)), 0.35)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(-30)), 0.35)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.4, 0) * angles(math.rad(20), math.rad(-30), math.rad(0)), 0.35)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-10)), 0.35)
    RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(-30), math.rad(0)), 0.35)
    LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(-30), math.rad(0)), 0.35)
    FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(70)), 0.35)
  end
  HitCon:disconnect()
  attack = false
end

attacktwo = function()
  attack = true
  local HitCon = Center.Touched:connect(function(hit)
    Damage(hit, math.random(15, 20), 0.3, BrickColor.new("Navy blue"), BrickColor.new("New Yeller"), "", 1)
  end
)
  for i = 0, 1, 0.15 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(60)), 0.33)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(-60)), 0.33)
    RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, -0.5) * angles(math.rad(0), math.rad(120), math.rad(90)), 0.33)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-10)), 0.33)
    RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(-30), math.rad(0)), 0.33)
    LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(-30), math.rad(0)), 0.33)
    FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-50)), 0.33)
  end
  CreateSound("rbxassetid://263609809", Center, 1, 1.3)
  CreateSound("http://roblox.com/asset/?id=206083107", Center, 1, 0.8)
  SphereEffect(BrickColor.new("New Yeller"), Center.CFrame, 2, 2, 2, 3, 3, 3, 0.08)
  HomingShot(mouse, Center)
  for i = 0, 1, 0.13 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-60)), 0.33)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(60)), 0.33)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(20), math.rad(90)), 0.33)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(50), math.rad(0), math.rad(-10)), 0.33)
    RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(30), math.rad(0)), 0.33)
    LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(30), math.rad(0)), 0.33)
    FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-70)), 0.33)
  end
  HitCon:disconnect()
  attack = false
end

AoETrue = {}
MagnetDmg = function(plart)
  local target = nil
  local c = game.Workspace:GetChildren()
  for i = 1, #c do
    local hum = c[i]:findFirstChild("Humanoid")
    if hum ~= nil and hum.Health ~= 0 then
      local head = c[i]:findFirstChild("Head")
      if head ~= nil then
        local mag = head.Position - plart.Position.magnitude
        if mag <= 25 and c[i].Name ~= Character.Name then
          local foundd = false
          for ii = 1, #AoETrue do
            if AoETrue[ii] == c[i].Name then
              foundd = true
            end
          end
          do
            if not foundd or not foundd and target == nil then
              if game.Players:findFirstChild(c[i].Name) ~= nil then
                local plyr = game.Players[c[i].Name]
                if plyr.TeamColor == Player.TeamColor and plyr.Neutral == false then
                  target = c[i]
                else
                  if plyr.Neutral == true then
                    target = c[i]
                  end
                end
              else
                do
                  do
                    if game.Players:findFirstChild(c[i].Name) == nil then
                      target = c[i]
                    end
                    -- DECOMPILER ERROR at PC92: LeaveBlock: unexpected jumping out DO_STMT

                    -- DECOMPILER ERROR at PC92: LeaveBlock: unexpected jumping out IF_ELSE_STMT

                    -- DECOMPILER ERROR at PC92: LeaveBlock: unexpected jumping out IF_STMT

                    -- DECOMPILER ERROR at PC92: LeaveBlock: unexpected jumping out IF_THEN_STMT

                    -- DECOMPILER ERROR at PC92: LeaveBlock: unexpected jumping out IF_STMT

                    -- DECOMPILER ERROR at PC92: LeaveBlock: unexpected jumping out DO_STMT

                    -- DECOMPILER ERROR at PC92: LeaveBlock: unexpected jumping out IF_THEN_STMT

                    -- DECOMPILER ERROR at PC92: LeaveBlock: unexpected jumping out IF_STMT

                    -- DECOMPILER ERROR at PC92: LeaveBlock: unexpected jumping out IF_THEN_STMT

                    -- DECOMPILER ERROR at PC92: LeaveBlock: unexpected jumping out IF_STMT

                    -- DECOMPILER ERROR at PC92: LeaveBlock: unexpected jumping out IF_THEN_STMT

                    -- DECOMPILER ERROR at PC92: LeaveBlock: unexpected jumping out IF_STMT

                  end
                end
              end
            end
          end
        end
      end
    end
  end
  if target == nil then
    return 
  end
  if Torso.Position - target.Torso.Position.magnitude > 95 then
    return 
  end
  local msh1z = Instance.new("CylinderMesh")
  local prt1z = Instance.new("Part")
  prt1z.formFactor = 3
  prt1z.Name = "HealRay"
  prt1z.Locked = true
  prt1z.Size = Vector3.new(0.2, 0.2, 0.2)
  prt1z.Parent = effect
  msh1z.Parent = prt1z
  prt1z.BrickColor = BrickColor.new("Mid gray")
  prt1z.CanCollide = false
  prt1z.Anchored = true
  light7 = Instance.new("PointLight")
  light7.Parent = prt1z
  light7.Brightness = 15
  light7.Range = 5
  light7.Color = BrickColor.new("White").Color
  local msh2z = Instance.new("CylinderMesh")
  local prt2z = Instance.new("Part")
  prt2z.formFactor = 3
  prt2z.Name = "HealRay"
  prt2z.Locked = true
  prt2z.Size = Vector3.new(0.2, 0.2, 0.2)
  prt2z.Parent = effect
  msh2z.Parent = prt2z
  prt2z.BrickColor = BrickColor.new("Mid gray")
  prt2z.CanCollide = false
  prt2z.Anchored = true
  light8 = Instance.new("PointLight")
  light8.Parent = prt2z
  light8.Brightness = 15
  light8.Range = 5
  light8.Color = BrickColor.new("White").Color
  local msh3z = Instance.new("CylinderMesh")
  local prt3z = Instance.new("Part")
  prt3z.formFactor = 3
  prt3z.Name = "HealRay"
  prt3z.Locked = true
  prt3z.Size = Vector3.new(0.2, 0.2, 0.2)
  prt3z.Parent = effect
  msh3z.Parent = prt3z
  prt3z.BrickColor = BrickColor.new("Mid gray")
  prt3z.CanCollide = false
  prt3z.Anchored = true
  light9 = Instance.new("PointLight")
  light9.Parent = prt3z
  light9.Brightness = 15
  light9.Range = 5
  light9.Color = BrickColor.new("White").Color
  local msh4z = Instance.new("CylinderMesh")
  local prt4z = Instance.new("Part")
  prt4z.formFactor = 3
  prt4z.Name = "HealRay"
  prt4z.Locked = true
  prt4z.Size = Vector3.new(0.2, 0.2, 0.2)
  prt4z.Parent = effect
  msh4z.Parent = prt4z
  prt4z.BrickColor = BrickColor.new("Mid gray")
  prt4z.CanCollide = false
  prt4z.Anchored = true
  light10 = Instance.new("PointLight")
  light10.Parent = prt4z
  light10.Brightness = 15
  light10.Range = 5
  light10.Color = BrickColor.new("White").Color
  wait(0.15)
  local start = plart.CFrame * CFrame.new(0, -plart.Size.y / 2, 0)
  local oristrpos1 = Vector3.new(math.random(-2, 2), math.random(-2, 2), math.random(-2, 2)) + (start.p + target.Torso.Position) / 2
  local oristrpos2 = Vector3.new(math.random(-2, 2), math.random(-2, 2), math.random(-2, 2)) + (oristrpos1 + target.Torso.Position) / 2
  local oristrpos3 = Vector3.new(math.random(-2, 2), math.random(-2, 2), math.random(-2, 2)) + (oristrpos2 + target.Torso.Position) / 2
  local oristrpos4 = target.Torso.Position
  local mg1 = start.p - oristrpos1.magnitude
  local mg2 = oristrpos1 - oristrpos2.magnitude
  local mg3 = oristrpos2 - oristrpos3.magnitude
  local mg4 = oristrpos3 - oristrpos4.magnitude
  prt1z.Size = Vector3.new(0.5, mg1, 0.5)
  prt1z.CFrame = CFrame.new((start.p + oristrpos1) / 2, oristrpos1) * CFrame.Angles(math.rad(90), 0, 0)
  prt2z.Size = Vector3.new(0.75, mg2, 0.75)
  prt2z.CFrame = CFrame.new((oristrpos1 + oristrpos2) / 2, oristrpos2) * CFrame.Angles(math.rad(90), 0, 0)
  prt3z.Size = Vector3.new(1, mg3, 1)
  prt3z.CFrame = CFrame.new((oristrpos2 + oristrpos3) / 2, oristrpos3) * CFrame.Angles(math.rad(90), 0, 0)
  prt4z.Size = Vector3.new(1.25, mg4, 1.25)
  prt4z.CFrame = CFrame.new((oristrpos3 + oristrpos4) / 2, oristrpos4) * CFrame.Angles(math.rad(90), 0, 0)
  if target.Humanoid.Health <= 100 then
    target.Humanoid:TakeDamage(-7.5)
  end
  coroutine.resume(coroutine.create(function()
    for i = 0.1, 1, 0.1 do
      swait()
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
    swait()
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

BadMagnetDmg = function(plart)
  local target = nil
  local c = game.Workspace:GetChildren()
  for i = 1, #c do
    local hum = c[i]:findFirstChild("Humanoid")
    if hum ~= nil and hum.Health ~= 0 then
      local head = c[i]:findFirstChild("Head")
      if head ~= nil then
        local mag = head.Position - plart.Position.magnitude
        if mag <= 15 and c[i].Name ~= Character.Name then
          local foundd = false
          for ii = 1, #AoETrue do
            if AoETrue[ii] == c[i].Name then
              foundd = true
            end
          end
          do
            if not foundd or not foundd and target == nil then
              if game.Players:findFirstChild(c[i].Name) ~= nil then
                local plyr = game.Players[c[i].Name]
                if plyr.TeamColor == Player.TeamColor and plyr.Neutral == false then
                  target = c[i]
                else
                  if plyr.Neutral == true then
                    target = c[i]
                  end
                end
              else
                do
                  do
                    if game.Players:findFirstChild(c[i].Name) == nil then
                      target = c[i]
                    end
                    -- DECOMPILER ERROR at PC92: LeaveBlock: unexpected jumping out DO_STMT

                    -- DECOMPILER ERROR at PC92: LeaveBlock: unexpected jumping out IF_ELSE_STMT

                    -- DECOMPILER ERROR at PC92: LeaveBlock: unexpected jumping out IF_STMT

                    -- DECOMPILER ERROR at PC92: LeaveBlock: unexpected jumping out IF_THEN_STMT

                    -- DECOMPILER ERROR at PC92: LeaveBlock: unexpected jumping out IF_STMT

                    -- DECOMPILER ERROR at PC92: LeaveBlock: unexpected jumping out DO_STMT

                    -- DECOMPILER ERROR at PC92: LeaveBlock: unexpected jumping out IF_THEN_STMT

                    -- DECOMPILER ERROR at PC92: LeaveBlock: unexpected jumping out IF_STMT

                    -- DECOMPILER ERROR at PC92: LeaveBlock: unexpected jumping out IF_THEN_STMT

                    -- DECOMPILER ERROR at PC92: LeaveBlock: unexpected jumping out IF_STMT

                    -- DECOMPILER ERROR at PC92: LeaveBlock: unexpected jumping out IF_THEN_STMT

                    -- DECOMPILER ERROR at PC92: LeaveBlock: unexpected jumping out IF_STMT

                  end
                end
              end
            end
          end
        end
      end
    end
  end
  if target == nil then
    return 
  end
  if Torso.Position - target.Torso.Position.magnitude > 95 then
    return 
  end
  local msh1z = Instance.new("CylinderMesh")
  local prt1z = Instance.new("Part")
  prt1z.formFactor = 3
  prt1z.Name = "HealRay"
  prt1z.Locked = true
  prt1z.Size = Vector3.new(0.2, 0.2, 0.2)
  prt1z.Parent = effect
  msh1z.Parent = prt1z
  prt1z.BrickColor = BrickColor.new("Really red")
  prt1z.CanCollide = false
  prt1z.Anchored = true
  light7 = Instance.new("PointLight")
  light7.Parent = prt1z
  light7.Brightness = 15
  light7.Range = 5
  light7.Color = BrickColor.new("Bright red").Color
  local msh2z = Instance.new("CylinderMesh")
  local prt2z = Instance.new("Part")
  prt2z.formFactor = 3
  prt2z.Name = "HealRay"
  prt2z.Locked = true
  prt2z.Size = Vector3.new(0.2, 0.2, 0.2)
  prt2z.Parent = effect
  msh2z.Parent = prt2z
  prt2z.BrickColor = BrickColor.new("Really red")
  prt2z.CanCollide = false
  prt2z.Anchored = true
  light8 = Instance.new("PointLight")
  light8.Parent = prt2z
  light8.Brightness = 15
  light8.Range = 5
  light8.Color = BrickColor.new("Bright red").Color
  local msh3z = Instance.new("CylinderMesh")
  local prt3z = Instance.new("Part")
  prt3z.formFactor = 3
  prt3z.Name = "HealRay"
  prt3z.Locked = true
  prt3z.Size = Vector3.new(0.2, 0.2, 0.2)
  prt3z.Parent = effect
  msh3z.Parent = prt3z
  prt3z.BrickColor = BrickColor.new("Really red")
  prt3z.CanCollide = false
  prt3z.Anchored = true
  light9 = Instance.new("PointLight")
  light9.Parent = prt3z
  light9.Brightness = 15
  light9.Range = 5
  light9.Color = BrickColor.new("Bright red").Color
  local msh4z = Instance.new("CylinderMesh")
  local prt4z = Instance.new("Part")
  prt4z.formFactor = 3
  prt4z.Name = "HealRay"
  prt4z.Locked = true
  prt4z.Size = Vector3.new(0.2, 0.2, 0.2)
  prt4z.Parent = effect
  msh4z.Parent = prt4z
  prt4z.BrickColor = BrickColor.new("Really red")
  prt4z.CanCollide = false
  prt4z.Anchored = true
  light10 = Instance.new("PointLight")
  light10.Parent = prt4z
  light10.Brightness = 15
  light10.Range = 5
  light10.Color = BrickColor.new("Bright red").Color
  wait(0.15)
  local start = plart.CFrame * CFrame.new(0, -plart.Size.y / 2, 0)
  local oristrpos1 = Vector3.new(math.random(-2, 2), math.random(-2, 2), math.random(-2, 2)) + (start.p + target.Torso.Position) / 2
  local oristrpos2 = Vector3.new(math.random(-2, 2), math.random(-2, 2), math.random(-2, 2)) + (oristrpos1 + target.Torso.Position) / 2
  local oristrpos3 = Vector3.new(math.random(-2, 2), math.random(-2, 2), math.random(-2, 2)) + (oristrpos2 + target.Torso.Position) / 2
  local oristrpos4 = target.Torso.Position
  local mg1 = start.p - oristrpos1.magnitude
  local mg2 = oristrpos1 - oristrpos2.magnitude
  local mg3 = oristrpos2 - oristrpos3.magnitude
  local mg4 = oristrpos3 - oristrpos4.magnitude
  prt1z.Size = Vector3.new(0.5, mg1, 0.5)
  prt1z.CFrame = CFrame.new((start.p + oristrpos1) / 2, oristrpos1) * CFrame.Angles(math.rad(90), 0, 0)
  prt2z.Size = Vector3.new(0.75, mg2, 0.75)
  prt2z.CFrame = CFrame.new((oristrpos1 + oristrpos2) / 2, oristrpos2) * CFrame.Angles(math.rad(90), 0, 0)
  prt3z.Size = Vector3.new(1, mg3, 1)
  prt3z.CFrame = CFrame.new((oristrpos2 + oristrpos3) / 2, oristrpos3) * CFrame.Angles(math.rad(90), 0, 0)
  prt4z.Size = Vector3.new(1.25, mg4, 1.25)
  prt4z.CFrame = CFrame.new((oristrpos3 + oristrpos4) / 2, oristrpos4) * CFrame.Angles(math.rad(90), 0, 0)
  target.Humanoid:TakeDamage(7.5)
  coroutine.resume(coroutine.create(function()
    for i = 0.1, 1, 0.1 do
      swait()
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
    swait()
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

MagnetBall = function()
  counter = 0
  local bawlofdewm1 = Instance.new("Part")
  bawlofdewm1.Parent = Character
  bawlofdewm1.CanCollide = false
  bawlofdewm1.Transparency = 0.5
  bawlofdewm1.BrickColor = BrickColor.new("White")
  bawlofdewm1.Name = "Light Sphere"
  bawlofdewm1.Size = Vector3.new(1, 1, 1)
  bawlofdewm1.Position = Torso.Position
  bawlofdewm1.Material = "Neon"
  light97 = Instance.new("PointLight")
  light97.Parent = bawlofdewm1
  light97.Brightness = 15
  light97.Range = 5
  light97.Color = BrickColor.new("White").Color
  local bawlofdewm2 = Instance.new("Part")
  bawlofdewm2.Parent = Character
  bawlofdewm2.Material = "Neon"
  bawlofdewm2.CanCollide = false
  bawlofdewm2.Transparency = 0.2
  bawlofdewm2.BrickColor = BrickColor.new("White")
  bawlofdewm2.Name = "Dark Sphere"
  bawlofdewm2.Size = Vector3.new(1, 1, 1)
  bawlofdewm2.Position = Torso.Position
  local bawlmesh1 = Instance.new("SpecialMesh")
  bawlmesh1.Parent = bawlofdewm1
  bawlmesh1.MeshId = "http://www.roblox.com/asset/?id=1185246"
  bawlmesh1.Scale = Vector3.new(5, 5, 5)
  local bawlmesh2 = Instance.new("SpecialMesh")
  bawlmesh2.Parent = bawlofdewm2
  bawlmesh2.MeshId = "http://www.roblox.com/asset/?id=1185246"
  bawlmesh2.Scale = Vector3.new(0.75, 0.75, 0.75)
  local bawlweld1 = Instance.new("Weld")
  bawlweld1.Parent = bawlofdewm1
  bawlweld1.Part0 = bawlofdewm1
  bawlweld1.Part1 = Center
  bawlweld1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, -0.9) * CFrame.new(0, 0, 0)
  bawlweld1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0)
  local bawlweld2 = Instance.new("Weld")
  bawlweld2.Parent = bawlofdewm2
  bawlweld2.Part0 = bawlofdewm2
  bawlweld2.Part1 = bawlofdewm1
  bawlweld2.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0)
  bawlweld2.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0)
  wait(0.5)
  for i = 0, 1, 0.1 do
    swait()
    bawlmesh1.Scale = bawlmesh1.Scale + Vector3.new(0.2, 0.2, 0.2)
    bawlmesh2.Scale = bawlmesh2.Scale + Vector3.new(0.2, 0.2, 0.2)
  end
  bawlweld1.Parent = nil
  local vel2 = Instance.new("BodyVelocity")
  vel2.Parent = bawlofdewm1
  vel2.maxForce = Vector3.new(400000, 4000000, 400000) * 1
  vel2.velocity = Player.Character.Head.CFrame.lookVector * 10
  coroutine.resume(coroutine.create(function()
    repeat
      MagnetDmg(bawlofdewm1)
      wait(0.1)
      counter = counter + 1
    until counter == 50
    for i = 0, 1, 0.1 do
      swait()
      bawlofdewm1.Transparency = bawlofdewm1.Transparency + 0.125
      bawlofdewm2.Transparency = bawlofdewm2.Transparency + 0.2
    end
    bawlofdewm1.Parent = nil
    bawlofdewm2.Parent = nil
  end
))
end

BadMagnetBall = function()
  counter = 0
  local bawlofdewm1 = Instance.new("Part")
  bawlofdewm1.Parent = Character
  bawlofdewm1.CanCollide = false
  bawlofdewm1.Transparency = 0.5
  bawlofdewm1.BrickColor = BrickColor.new("Bright red")
  bawlofdewm1.Name = "Light Sphere"
  bawlofdewm1.Size = Vector3.new(1, 1, 1)
  bawlofdewm1.Position = Torso.Position
  bawlofdewm1.Material = "Neon"
  light97 = Instance.new("PointLight")
  light97.Parent = bawlofdewm1
  light97.Brightness = 15
  light97.Range = 5
  light97.Color = BrickColor.new("Bright red").Color
  local bawlofdewm2 = Instance.new("Part")
  bawlofdewm2.Parent = Character
  bawlofdewm2.Material = "Neon"
  bawlofdewm2.CanCollide = false
  bawlofdewm2.Transparency = 0.2
  bawlofdewm2.BrickColor = BrickColor.new("Bright red")
  bawlofdewm2.Name = "Dark Sphere"
  bawlofdewm2.Size = Vector3.new(1, 1, 1)
  bawlofdewm2.Position = Torso.Position
  local bawlmesh1 = Instance.new("SpecialMesh")
  bawlmesh1.Parent = bawlofdewm1
  bawlmesh1.MeshId = "http://www.roblox.com/asset/?id=1185246"
  bawlmesh1.Scale = Vector3.new(5, 5, 5)
  local bawlmesh2 = Instance.new("SpecialMesh")
  bawlmesh2.Parent = bawlofdewm2
  bawlmesh2.MeshId = "http://www.roblox.com/asset/?id=1185246"
  bawlmesh2.Scale = Vector3.new(0.75, 0.75, 0.75)
  local bawlweld1 = Instance.new("Weld")
  bawlweld1.Parent = bawlofdewm1
  bawlweld1.Part0 = bawlofdewm1
  bawlweld1.Part1 = Center
  bawlweld1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, -0.9) * CFrame.new(0, 0, 0)
  bawlweld1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0)
  local bawlweld2 = Instance.new("Weld")
  bawlweld2.Parent = bawlofdewm2
  bawlweld2.Part0 = bawlofdewm2
  bawlweld2.Part1 = bawlofdewm1
  bawlweld2.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0)
  bawlweld2.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0)
  wait(0.5)
  for i = 0, 1, 0.1 do
    swait()
    bawlmesh1.Scale = bawlmesh1.Scale + Vector3.new(0.2, 0.2, 0.2)
    bawlmesh2.Scale = bawlmesh2.Scale + Vector3.new(0.2, 0.2, 0.2)
  end
  bawlweld1.Parent = nil
  local vel2 = Instance.new("BodyVelocity")
  vel2.Parent = bawlofdewm1
  vel2.maxForce = Vector3.new(400000, 4000000, 400000) * 1
  vel2.velocity = Player.Character.Head.CFrame.lookVector * 10
  coroutine.resume(coroutine.create(function()
    repeat
      BadMagnetDmg(bawlofdewm1)
      wait(0.1)
      counter = counter + 1
    until counter == 50
    for i = 0, 1, 0.1 do
      swait()
      bawlofdewm1.Transparency = bawlofdewm1.Transparency + 0.125
      bawlofdewm2.Transparency = bawlofdewm2.Transparency + 0.2
    end
    bawlofdewm1.Parent = nil
    bawlofdewm2.Parent = nil
  end
))
end

Magnet = function()
  attack = true
  local HitCon = Center.Touched:connect(function(hit)
    Damage(hit, math.random(15, 20), 0.3, BrickColor.new("Navy blue"), BrickColor.new("New Yeller"), "", 1)
  end
)
  for i = 0, 1, 0.15 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-30)), 0.33)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(30)), 0.33)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.7, 0) * angles(math.rad(150), math.rad(0), math.rad(0)), 0.33)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-5)), 0.33)
    RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(30), math.rad(0)), 0.33)
    LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(30), math.rad(0)), 0.33)
    FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-40)), 0.33)
  end
  CreateSound("rbxassetid://263609809", Center, 1, 1.3)
  CreateSound("http://roblox.com/asset/?id=206083107", Center, 1, 1)
  SphereEffect(BrickColor.new("White"), Center.CFrame, 2, 2, 2, 3, 3, 3, 0.08)
  MagnetBall()
  for i = 0, 1, 0.13 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(30)), 0.35)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(-30)), 0.35)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.4, 0) * angles(math.rad(20), math.rad(-30), math.rad(0)), 0.35)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-10)), 0.35)
    RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(-30), math.rad(0)), 0.35)
    LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(-30), math.rad(0)), 0.35)
    FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(70)), 0.35)
  end
  HitCon:disconnect()
  attack = false
end

BadMagnet = function()
  attack = true
  local HitCon = Center.Touched:connect(function(hit)
    Damage(hit, math.random(15, 20), 0.3, BrickColor.new("Navy blue"), BrickColor.new("New Yeller"), "", 1)
  end
)
  for i = 0, 1, 0.15 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-30)), 0.33)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(30)), 0.33)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.7, 0) * angles(math.rad(150), math.rad(0), math.rad(0)), 0.33)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-5)), 0.33)
    RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(30), math.rad(0)), 0.33)
    LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(30), math.rad(0)), 0.33)
    FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-40)), 0.33)
  end
  CreateSound("rbxassetid://263609809", Center, 1, 1.3)
  CreateSound("http://roblox.com/asset/?id=206083107", Center, 1, 1)
  SphereEffect(BrickColor.new("White"), Center.CFrame, 2, 2, 2, 3, 3, 3, 0.08)
  BadMagnetBall()
  for i = 0, 1, 0.13 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(30)), 0.35)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(-30)), 0.35)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.4, 0) * angles(math.rad(20), math.rad(-30), math.rad(0)), 0.35)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-10)), 0.35)
    RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(-30), math.rad(0)), 0.35)
    LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(-30), math.rad(0)), 0.35)
    FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(70)), 0.35)
  end
  HitCon:disconnect()
  attack = false
end

Heal = function()
  attack = true
  Humanoid.WalkSpeed = 5
  change = 1
  for i = 1, 2 do
    for i = 0, 1, 0.15 do
      swait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.33)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.33)
      RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.7, 0) * angles(math.rad(150), math.rad(0), math.rad(0)), 0.33)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-5)), 0.33)
      FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), -6 * i), 0.33)
      if Torsovelocity.x < 1 or Torsovelocity.z < 1 then
        RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.33)
        LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.33)
      else
        if Torsovelocity.x > 2 or Torsovelocity.z > 2 then
          RH.C0 = clerp(RH.C0, cn(1, -1 - 0.3 * math.cos(sine / 8) / 2, -0.03 + math.sin(sine / 8) / 2) * RHCF * angles(math.rad(-2), math.rad(0), math.rad(-10) - math.sin(sine / 8)), 0.3)
          LH.C0 = clerp(LH.C0, cn(-1, -1 + 0.3 * math.cos(sine / 8) / 2, -0.03 - math.sin(sine / 8) / 2) * LHCF * angles(math.rad(-2), math.rad(0), math.rad(10) - math.sin(sine / 8)), 0.3)
        end
      end
    end
  end
  local targ, hum = nil, nil
  if mouse.Target ~= nil and mouse.Target.Parent:findFirstChild("Humanoid") ~= nil and mouse.Target.Parent:findFirstChild("Torso") ~= nil then
    print(mouse.Target.Parent)
    targ = mouse.Target.Parent.Torso
    hum = mouse.Target.Parent.Humanoid
  end
  if targ ~= nil and hum.Health <= 100 then
    cooldown1 = 0
    for i = 0, 1, 0.15 do
      swait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.33)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.33)
      RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.7, 0) * angles(math.rad(90), math.rad(0), math.rad(0)), 0.33)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-5)), 0.33)
      FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-70)), 0.33)
      if Torsovelocity < 1 then
        RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.33)
        LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.33)
      else
        if Torsovelocity > 2 then
          RH.C0 = clerp(RH.C0, cn(1, -1 - 0.3 * math.cos(sine / 8) / 2, -0.03 + math.sin(sine / 8) / 2) * RHCF * angles(math.rad(-2), math.rad(0), math.rad(-10) - math.sin(sine / 8)), 0.3)
          LH.C0 = clerp(LH.C0, cn(-1, -1 + 0.3 * math.cos(sine / 8) / 2, -0.03 - math.sin(sine / 8) / 2) * LHCF * angles(math.rad(-2), math.rad(0), math.rad(10) - math.sin(sine / 8)), 0.3)
        end
      end
    end
    local BodGy = Instance.new("BodyGyro", RootPart)
    BodGy.maxTorque = Vector3.new(0, math.huge, 0)
    BodGy.P = 9000
    BodGy.D = 300
    BodGy.cframe = CFrame.new(Torso.Position, targ.Position)
    local ref = CreatePart(effect, "Neon", 0, 1, BrickColor.new("Black"), "Reference", Vector3.new())
    ref.Anchored = true
    ref.CFrame = CFrame.new(RootPart.Position)
    game:GetService("Debris"):AddItem(ref, 10)
    local healthdam = math.floor(Humanoid.Health * 0.2)
    CreateSound("rbxassetid://206082357", RootPart, 1, 1.3)
    CreateSound("rbxassetid://263609809", Torso, 1, 0.6)
    CreateSound("rbxassetid://206082357", targ, 1, 1.5)
    if mouse.Target ~= nil and game.Players:GetPlayerFromCharacter(mouse.Target.Parent) ~= nil and Player.Neutral == false then
      if game.Players:GetPlayerFromCharacter(mouse.Target.Parent).TeamColor == Player.TeamColor then
        hum.Health = hum.Health + healthdam
      else
        hum.Health = hum.Health - healthdam
      end
    end
    for i = 0, 50 do
      swait()
      if Torsovelocity < 1 then
        RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.33)
        LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.33)
      else
        if Torsovelocity > 2 then
          RH.C0 = clerp(RH.C0, cn(1, -1 - 0.3 * math.cos(sine / 8) / 2, -0.03 + math.sin(sine / 8) / 2) * RHCF * angles(math.rad(-2), math.rad(0), math.rad(-10) - math.sin(sine / 8)), 0.3)
          LH.C0 = clerp(LH.C0, cn(-1, -1 + 0.3 * math.cos(sine / 8) / 2, -0.03 - math.sin(sine / 8) / 2) * LHCF * angles(math.rad(-2), math.rad(0), math.rad(10) - math.sin(sine / 8)), 0.3)
        end
      end
      hum.Health = hum.Health + 0.5
      BlockEffect(BrickColor.new("New Yeller"), Center.CFrame, 0.2, 0.2, 0.2, 0.7, 0.7, 0.7, 0.08, 1)
      local mag = RootPart.Position - targ.Position.magnitude
      ref.CFrame = CFrame.new(RootPart.Position, targ.Position)
      BodGy.cframe = CFrame.new(Torso.Position, targ.Position)
      BlockEffect(BrickColor.new("New Yeller"), CFrame.new(targ.Position) * CFrame.new(math.random(-500, 500) / 100, math.random(-500, 500) / 100, math.random(-500, 500) / 100), 1, 1, 1, 0.5, 0.5, 0.5, 0.05, 1)
      SphereEffectII(BrickColor.new("New Yeller"), ref.CFrame * CFrame.fromEulerAnglesXYZ(1.57, 0, 0) * CFrame.new(math.random(-400, 400) / 100, 0, math.random(-400, 400) / 100), 2, 10, 2, -0.1, mag / 20, -0.1, 0.05, -mag / 20)
    end
    ref.Parent = nil
    BodGy.Parent = nil
  end
  do
    attack = false
    Humanoid.WalkSpeed = 16
  end
end

CelestialStorm = function()
  local n = 2
  attack = true
  for i = 1, 5 do
    for i = 0, 1, 0.1 do
      swait()
      BlockEffect(BrickColor.new("New Yeller"), Center.CFrame, 5, 5, 5, 2, 2, 2, 0.2)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.33)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.33)
      RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.8, 0) * angles(math.rad(170), math.rad(0), math.rad(0)), 0.33)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-5)), 0.33)
      FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(90), 0, 6 * i), 0.33)
      if Torsovelocity.x < 1 or Torsovelocity.z < 1 then
        RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.33)
        LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.33)
      else
        if Torsovelocity.x > 2 or Torsovelocity.z >2 then
          RH.C0 = clerp(RH.C0, cn(1, -1 - 0.3 * math.cos(sine / 8) / 2, -0.03 + math.sin(sine / 8) / 2) * RHCF * angles(math.rad(-2), math.rad(0), math.rad(-10) - math.sin(sine / 8)), 0.3)
          LH.C0 = clerp(LH.C0, cn(-1, -1 + 0.3 * math.cos(sine / 8) / 2, -0.03 - math.sin(sine / 8) / 2) * LHCF * angles(math.rad(-2), math.rad(0), math.rad(10) - math.sin(sine / 8)), 0.3)
        end
      end
    end
    local orb = CreatePart(Character, "Neon", 0, 0.5, BrickColor.new("New Yeller"), "Orb", Vector3.new())
    orb.Anchored = true
    local omsh = CreateMesh("SpecialMesh", orb, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(10, 10, 10))
    orb.CFrame = CFrame.new(Torso.Position + Vector3.new(math.random(-10, 10), math.random(5, 10), math.random(-10, 10)))
    SphereEffect(BrickColor.new("New Yeller"), orb.CFrame, 10, 10, 10, 1, 1, 1, 0.1)
    CreateSound("rbxassetid://263609809", Torso, 1, 1)
    coroutine.resume(coroutine.create(function(Part, Mesh, Weld)
    wait(0.5)
    Part.Parent = nil
    local spread = Vector3.new((math.random(-1, 0) + math.random()) * 16, (math.random(-1, 0) + math.random()) * 16, (math.random(-1, 0) + math.random()) * 16) * (Part.Position - (Part.Position + Vector3.new(0, -1, 0))).magnitude / 100
    local TheHit = mouse.Hit.p
    local MouseLook = CFrame.new((Part.Position + TheHit) / 2, TheHit + spread)
    local hit, pos = rayCast(Part.Position, MouseLook.lookVector, 999, Character)
    local mag = Part.Position - pos.magnitude
    CylinderEffect(BrickColor.new("New Yeller"), CFrame.new((Part.Position + pos) / 2, pos) * angles(1.57, 0, 0), 1, mag * 5, 1, 0.5, 0, 0.5, 0.05)
    BlockEffect(BrickColor.new("New Yeller"), Part.CFrame, 8, 8, 8, 0.5, 0.5, 0.5, 0.1)
    BlockEffect(BrickColor.new("New Yeller"), CFrame.new(pos), 15, 15, 15, 6, 6, 6, 0.1)
    RingEffect(BrickColor.new("New Yeller"), CFrame.new(pos) * CFrame.fromEulerAnglesXYZ(1.57, math.random(-100, 100) / 100, math.random(-100, 100) / 100), 1, 1, 1, 2, 2, 2, 0.05)
    local ref = CreatePart(effect, "Neon", 0, 1, BrickColor.new("New Yeller"), "Effect", Vector3.new())
    ref.CFrame = CFrame.new(pos)
    CreateSound("http://roblox.com/asset/?id=231917788", ref, 1, 1.4)
    coroutine.resume(coroutine.create(function(Part)
      wait(1)
      Part.Parent = nil
    end
), ref)
    MagnitudeDamage(ref, 10, 10, 15, BrickColor.new("Navy blue"), BrickColor.new("New Yeller"), "", 1)
  end
), orb, omsh)
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
      attacktype = 1
      attacktwo()
    end
  end
end

key = function(k)
  k = k:lower()
  if attack == false and co1 <= cooldown1 and k == "z" then
    Heal()
  else
    if attack == false and co2 <= cooldown2 and k == "x" then
      cooldown2 = 0
      CelestialStorm()
    else
      if attack == false and co3 <= cooldown3 and k == "c" then
        cooldown3 = 0
        Magnet()
      else
        if attack == false and co4 <= cooldown4 and k == "v" then
          cooldown4 = 0
          BadMagnet()
        end
      end
    end
  end
end

Bin = Instance.new("HopperBin", Player.Backpack)
Bin.Name = "TrigFixedAgain"
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
  Torsovelocity = RootPart.Velocity * Vector3.new(1, 0, 1).magnitude
  velocity = RootPart.Velocity.y
  sine = sine + change
  local hit, pos = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 4, Character)
  if equipped == true or equipped == false then
    if 1 < RootPart.Velocity.y and hit == nil then
      Anim = "Jump"
      if attack == false then
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.3)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(40)), 0.3)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-20)), 0.3)
        RH.C0 = clerp(RH.C0, cn(1, -0.7, -0.5) * RHCF * angles(math.rad(-5), math.rad(0), math.rad(-20)), 0.3)
        LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(0), math.rad(10)), 0.3)
        FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-20)), 0.3)
      end
    else
      if RootPart.Velocity.y < -1 and hit == nil then
        Anim = "Fall"
        if attack == false then
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
          Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
          RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(60)), 0.3)
          LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(-40)), 0.3)
          RH.C0 = clerp(RH.C0, cn(1, -0.9, -0.3) * RHCF * angles(math.rad(-5), math.rad(0), math.rad(10)), 0.3)
          LH.C0 = clerp(LH.C0, cn(-1, -0.9, -0.2) * LHCF * angles(math.rad(-5), math.rad(0), math.rad(-30)), 0.3)
          FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
        end
      else
        if Torsovelocity.z < 1 or 1 > Torsovelocity.x and hit ~= nil then
          Anim = "Idle"
          if attack == false then
            change = 1
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -0.1 + 0.1 * math.sin((sine) / 27)) * angles(math.rad(0), math.rad(0), math.rad(-20)), 0.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0 + 2 * math.cos((sine) / 23)), math.rad(0), math.rad(20)), 0.3)
            RW.C0 = clerp(RW.C0, CFrame.new(1.4, 0.5, -0.2) * angles(math.rad(80 + 5 * math.cos((sine) / 23)), math.rad(0), math.rad(10)), 0.3)
            LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-5), math.rad(0), math.rad(-5 + 5 * math.cos((sine) / 23))), 0.3)
            RH.C0 = clerp(RH.C0, cn(1, -0.9 - 0.1 * math.sin((sine) / 27), 0) * RHCF * angles(math.rad(-3 + 1 * math.cos((sine) / 23)), math.rad(20), math.rad(0)), 0.3)
            LH.C0 = clerp(LH.C0, cn(-1, -0.9 - 0.1 * math.sin((sine) / 27), 0) * LHCF * angles(math.rad(-3 + 1 * math.cos((sine) / 23)), math.rad(20), math.rad(0)), 0.3)
            FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(10 + 5 * math.cos((sine) / 23))), 0.3)
          end
        else
          if 2 < Torsovelocity.z or Torsovelocity.x > 2 and hit ~= nil then
            Anim = "Walk"
            if attack == false then
              change = 2.5
              RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(10 + 2 * math.cos((sine) / 23)), math.rad(0), math.rad(-10)), 0.3)
              Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-5 - 2 * math.cos((sine) / 23)), math.rad(0), math.rad(10)), 0.3)
              RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-20 - 2 * math.cos((sine) / 23)), math.rad(0), math.rad(10)), 0.3)
              LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(10 + 2 * math.cos((sine) / 23)), math.rad(0), math.rad(-10)), 0.3)
              RH.C0 = clerp(RH.C0, cn(1, -1 - 0.3 * math.cos((sine) / 8) / 2, -0.03 + math.sin((sine) / 8) / 2) * RHCF * angles(math.rad(-2), math.rad(10), math.rad(-10) - math.sin((sine) / 8)), 0.3)
              LH.C0 = clerp(LH.C0, cn(-1, -1 + 0.3 * math.cos((sine) / 8) / 2, -0.03 - math.sin((sine) / 8) / 2) * LHCF * angles(math.rad(-2), math.rad(10), math.rad(10) - math.sin((sine) / 8)), 0.3)
              FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-20)), 0.3)
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
                    Thing[1].CFrame = Thing[1].CFrame * CFrame.new(0, Thing[8], 0)
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

