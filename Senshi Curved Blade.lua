wait(0.016666666666667)
Effects = {}
local Player = game.Players.LocalPlayer
local Character = Player.Character
local Humanoid = Character.Humanoid
local mouse = Player:GetMouse()
local m = Instance.new("Model", Character)
m.Name = "WeaponModel"
local do2target = nil
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
local Torsovelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude
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
local Color = "Medium stone gey"
local NeckCF = cf(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
Humanoid.Animator:Destroy()
Character.Animate:Destroy()
local BodyColors = Character["Body Colors"]
BodyColors.Parent = nil
dragon = false
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

local co1 = 5
local co2 = 10
local co3 = 4
local co4 = 20
local cooldown1 = 100
local cooldown2 = 100
local cooldown3 = 100
local cooldown4 = 100
local maxEnergy = 100
local Energy = 0
local skill1stam = 10
local skill2stam = 50
local skill3stam = 60
local skill4stam = 100
local recovermana = 5
local skillcolorscheme = BrickColor.new("White").Color
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
  label.Font = Enum.Font.SourceSansLight
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
text1 = makelabel(framesk1, "[z] Hurricane")
text2 = makelabel(framesk2, "[x] Stormwave")
text3 = makelabel(framesk3, "[c] Mirror")
text4 = makelabel(framesk4, "[v] Eye of the Storm")

print("fixed by kent911t")

ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "Heartbeat"

script:WaitForChild("Heartbeat")

frame = 1 / 30
tf = 0
allowframeloss = true
tossremainder = false
lastframe = tick()
script.Heartbeat:Fire()

game:GetService("RunService").Heartbeat:connect(function(s, p)
    tf = tf + s
    if tf >= frame then
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

function swait(num)
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
      local dist = (t.Position - obj.Position).magnitude
      if dist <= distance and dist < last then
        last = dist
        lastx = v
      end
    end
  end
  return lastx
end

CreatePart2 = function(Parent, Material, Reflectance, Transparency, PartType, BColor, Name, Size)
  
  if PartType == "Part" then
    local Part = Create("Part")({Parent = Parent, Reflectance = Reflectance, Transparency = Transparency, CanCollide = false, Locked = true, BrickColor = BrickColor.new(tostring(BColor)), Name = Name, Size = Size, Material = Material})
    RemoveOutlines(Part)
    return Part
  else
    do
      if PartType == "WedgePart" then
        local Part = Create("WedgePart")({Parent = Parent, Reflectance = Reflectance, Transparency = Transparency, CanCollide = false, Locked = true, BrickColor = BrickColor.new(tostring(BColor)), Name = Name, Size = Size, Material = Material})
        RemoveOutlines(Part)
        return Part
      end
    end
  end
end

Handle = CreatePart(m, Enum.Material.Fabric, 0, 1, "Really black", "FakeHandle", Vector3.new(1.50781393, 0.247813985, 0.24781388))
HandleWeld = CreateWeld(m, Character["Right Arm"], Handle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0907840729, -1.14567566, 0.153656006, 0.0239430089, 0.0220890082, 0.99946934, -0.0976730362, -0.994921207, 0.0243283194, 0.994930506, -0.0982036814, -0.0216639042))
FakeHandle = CreatePart2(m, Enum.Material.Fabric, 0, 1, "Part", "Really black", "FakeHandle", Vector3.new(1.50781393, 0.247813985, 0.24781388))
FakeHandleWeld = CreateWeld(m, Handle, FakeHandle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0, 0, 1.00000012, 0, 0, 0, 1.00000012, -7.4505806e-09, 0, -7.4505806e-09, 1))
Wedge = CreatePart2(m, Enum.Material.Foil, 0, 0, "WedgePart", "Lily white", "Wedge", Vector3.new(0.960979283, 0.24781397, 0.247813866))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.26192474, -0.475849152, 0.0401000977, -0.994520247, -0.104544967, 5.86733222e-07, -0.104544975, 0.994520247, -4.09781933e-06, -1.52736902e-07, -4.12762165e-06, -1.00000012))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.32315284, 0.323152989))
Wedge = CreatePart2(m, Enum.Material.Foil, 0, 0, "WedgePart", "Lily white", "Wedge", Vector3.new(0.920938551, 0.24781397, 0.247813866))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.08982849, -0.805312157, 0.0400238037, -0.974360883, -0.224991694, 2.52039172e-06, -0.224991679, 0.974360704, 2.73436308e-06, -3.06963921e-06, 2.09361315e-06, -1))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.32315284, 0.323152989))
Wedge = CreatePart2(m, Enum.Material.Metal, 0, 0, "WedgePart", "Fossil", "Wedge", Vector3.new(0.24781397, 0.480490714, 0.320327193))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.100097656, 0.870386124, 0.480649948, -9.74163413e-07, 2.69711018e-06, -1.00000012, 1.00000012, 3.18163075e-06, -9.70438123e-07, 3.18256207e-06, -1.00000012, -2.6896596e-06))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.161576062, 1, 1))
Wedge = CreatePart2(m, Enum.Material.Foil, 0, 0, "WedgePart", "White", "Wedge", Vector3.new(0.920938611, 0.247813985, 0.24781388))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.87695122, -1.22844696, 0.0400695801, -0.939671278, -0.342078775, 6.88247383e-07, -0.342078835, 0.939671397, 3.98606062e-06, -2.01165676e-06, 3.52412462e-06, -1.00000012))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.32315284, 0.323152989))
Wedge = CreatePart2(m, Enum.Material.Foil, 0, 0, "WedgePart", "Lily white", "Wedge", Vector3.new(1.28130639, 0.24781397, 0.24781391))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.44558716, -2.35443497, 0.0400238037, -0.828980088, -0.55927825, 1.89617276e-06, -0.559278309, 0.828980029, 8.27014446e-07, -2.03587115e-06, -3.7997961e-07, -1))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.32315284, 0.323152989))
Wedge = CreatePart2(m, Enum.Material.Foil, 0, 0, "WedgePart", "Lily white", "Wedge", Vector3.new(1.28130639, 0.24781397, 0.24781391))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(5.44562531, -2.35441875, 0.0400238037, 0.828980088, 0.55927825, -1.89617276e-06, -0.55927825, 0.828980088, 1.82539225e-06, 2.59280205e-06, -4.61935997e-07, 1))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.32315284, 0.323152989))
Wedge = CreatePart2(m, Enum.Material.Metal, 0, 0, "WedgePart", "Fossil", "Wedge", Vector3.new(0.247814089, 0.24781397, 0.520531714))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0600280762, -1.05068207, 0.500759125, 9.74163413e-07, -2.69711018e-06, 1.00000012, -1.00000012, -1.09244138e-06, 9.74163413e-07, 1.0910444e-06, -1.00000012, -2.6896596e-06))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.161576062, 0.48472926, 1))
Wedge = CreatePart2(m, Enum.Material.Ice, 0, 0, "WedgePart", "Fossil", "Wedge", Vector3.new(0.347814083, 0.357329518, 0.440449834))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.52587891e-05, -5.90473366, -2.09404945, -9.74163413e-07, 2.69711018e-06, -1.00000012, -0.828978896, -0.559279919, -7.00354576e-07, -0.559280038, 0.828978896, 2.78651714e-06))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.400000006, 1, 1))
Wedge = CreatePart2(m, Enum.Material.Foil, 0, 0, "WedgePart", "Lily white", "Wedge", Vector3.new(0.920938551, 0.24781397, 0.247813866))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.08991432, -0.804924011, 0.0399932861, 0.974360883, 0.224991694, -2.52039172e-06, -0.224991679, 0.974360704, 2.73436308e-06, 3.06963921e-06, -2.09361315e-06, 1))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.32315284, 0.323152989))
Wedge = CreatePart2(m, Enum.Material.Foil, 0, 0, "WedgePart", "Lily white", "Wedge", Vector3.new(0.920938611, 0.247813985, 0.24781388))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.87660217, -1.22958565, 0.0400695801, 0.939671278, 0.342078775, -6.88247383e-07, -0.342078835, 0.939671397, 3.98606062e-06, 2.01165676e-06, -3.52412462e-06, 1.00000012))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.32315284, 0.323152989))
Wedge = CreatePart2(m, Enum.Material.Metal, 0, 0, "WedgePart", "Fossil", "Wedge", Vector3.new(0.24781397, 0.247813985, 0.24781388))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000106811523, -0.458526611, 0.735326767, 9.74163413e-07, -2.69711018e-06, 1.00000012, 0.382538021, 0.923939884, 2.11596489e-06, -0.923939884, 0.382537991, 1.93715096e-06))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.323152125, 0.161576435, 0.484729469))
Wedge = CreatePart2(m, Enum.Material.Foil, 0, 0, "WedgePart", "Lily white", "Wedge", Vector3.new(0.920938611, 0.247813985, 0.24781388))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.60262871, -1.74556351, 0.0399627686, 0.890966058, 0.45407024, -5.01982868e-06, -0.45407024, 0.890966058, -1.83284283e-06, 3.63774598e-06, 3.88920307e-06, 1))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.32315284, 0.323152989))
Wedge = CreatePart2(m, Enum.Material.Foil, 0, 0, "WedgePart", "Lily white", "Wedge", Vector3.new(0.920938551, 0.24781397, 0.247813866))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.37110519, -0.280426025, 0.0399475098, 1.00000012, 1.09244138e-06, -8.95932317e-07, -1.09360553e-06, 1.00000012, 7.4505806e-09, 8.97794962e-07, -1.49011612e-08, 1.00000012))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.32315284, 0.323152989))
Wedge = CreatePart2(m, Enum.Material.Foil, 0, 0, "WedgePart", "Lily white", "Wedge", Vector3.new(0.840856791, 0.24781394, 0.247813836))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.08923531, 0.307304382, 0.0400695801, 0.974359572, 0.22499682, -3.9980514e-06, 0.22499685, -0.974359632, -7.4505806e-07, -4.06429172e-06, -1.63912773e-07, -1))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.161576435, 0.323152989))
Wedge = CreatePart2(m, Enum.Material.Foil, 0, 0, "WedgePart", "Lily white", "Wedge", Vector3.new(0.920938551, 0.24781397, 0.247813866))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.37109184, -0.280412674, 0.0400848389, -1.00000012, -1.09244138e-06, 8.95932317e-07, -1.09360553e-06, 1.00000012, 7.4505806e-09, -8.97794962e-07, 1.49011612e-08, -1.00000012))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.32315284, 0.323152989))
Wedge = CreatePart2(m, Enum.Material.Metal, 0, 0, "WedgePart", "Fossil", "Wedge", Vector3.new(0.247814089, 0.24781397, 0.24781391))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.57763672e-05, 0.615095139, -0.418563843, -9.74163413e-07, 2.69711018e-06, -1.00000012, -0.923862636, 0.382724494, 1.92597508e-06, 0.382724524, 0.923862576, 2.12341547e-06))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.323152125, 0.48472926, 0.161576495))
Wedge = CreatePart2(m, Enum.Material.Foil, 0, 0, "WedgePart", "Lily white", "Wedge", Vector3.new(0.880897522, 0.24781397, 0.247813866))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.43111038, -0.220315933, 0.0400695801, 1.00000012, 3.08360904e-06, -7.00354576e-07, 3.08430754e-06, -1.00000012, 9.31322575e-07, -7.00354576e-07, -9.16421413e-07, -1.00000012))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.161576435, 0.323152989))
Wedge = CreatePart2(m, Enum.Material.Foil, 0, 0, "WedgePart", "White", "Wedge", Vector3.new(0.920938611, 0.247813985, 0.24781388))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.60424614, -1.742342, 0.0400848389, -0.890967488, -0.45406732, 4.3399632e-06, -0.45406732, 0.890967369, -8.27014446e-07, -3.49245965e-06, -2.69711018e-06, -1))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.32315284, 0.323152989))
Wedge = CreatePart2(m, Enum.Material.Metal, 0, 0, "WedgePart", "Fossil", "Wedge", Vector3.new(0.247813895, 0.247813925, 0.247813821))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.52587891e-05, -0.487564087, -0.671710968, 9.74163413e-07, -2.69711018e-06, 1.00000012, -0.000113321934, 1.00000012, 2.69711018e-06, -1, -0.000113321934, 9.72300768e-07))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.323152125, 0.48472926, 0.484729469))
Wedge = CreatePart2(m, Enum.Material.Metal, 0, 0, "WedgePart", "Fossil", "Wedge", Vector3.new(0.24781397, 0.400408953, 0.24781388))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.100097656, -0.440513611, -0.870275497, -9.74163413e-07, 2.69711018e-06, -1.00000012, 0.000113321934, -1.00000012, -2.69711018e-06, -1, -0.000113321934, 9.72300768e-07))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.161576062, 1, 0.969458938))
Wedge = CreatePart2(m, Enum.Material.Foil, 0, 0, "WedgePart", "Lily white", "Wedge", Vector3.new(0.880897045, 0.247813836, 0.247813731))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.85593033, 0.730741501, 0.0400543213, -0.93967092, -0.342079848, 2.57976353e-06, 0.342079908, -0.93967104, -3.93390656e-06, 3.76999378e-06, -2.82377005e-06, 1))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.161576435, 0.323152989))
Wedge = CreatePart2(m, Enum.Material.Marble, 0, 0, "WedgePart", "Maroon", "Wedge", Vector3.new(0.247813895, 0.247813925, 0.247813821))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.05175781e-05, 0.870445251, 0.200283051, -9.74163413e-07, 2.69711018e-06, -1.00000012, 1.00000012, 1.09244138e-06, -9.74163413e-07, 1.0910444e-06, -1.00000012, -2.6896596e-06))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.969456434, 0.96945858, 0.969458938))
Wedge = CreatePart2(m, Enum.Material.Foil, 0, 0, "WedgePart", "Lily white", "Wedge", Vector3.new(1.00101924, 0.247813791, 0.247813687))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.60350609, 1.24342728, 0.0401153564, 0.890966058, 0.45407024, -5.01982868e-06, 0.45407024, -0.890966058, 1.83284283e-06, -3.63774598e-06, -3.88920307e-06, -1))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.161576435, 0.323152989))
Wedge = CreatePart2(m, Enum.Material.Foil, 0, 0, "WedgePart", "Lily white", "Wedge", Vector3.new(0.840856373, 0.247813821, 0.247813717))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.30555725, 1.85376167, 0.0400695801, -0.82897836, -0.559280872, 2.58535147e-06, 0.559280992, -0.82897836, 1.28895044e-06, 1.4193356e-06, 2.51084566e-06, 1))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.161576435, 0.323152989))
Wedge = CreatePart2(m, Enum.Material.Marble, 0, 0, "WedgePart", "Maroon", "Wedge", Vector3.new(0.247813985, 0.247814015, 0.520531714))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.52587891e-05, -1.09069252, 0.500701904, 9.74163413e-07, -2.69711018e-06, 1.00000012, -1.00000012, -3.18163075e-06, 9.70438123e-07, 3.18256207e-06, -1.00000012, -2.6896596e-06))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.323152125, 0.807882071, 1))
Wedge = CreatePart2(m, Enum.Material.Metal, 0, 0, "WedgePart", "Fossil", "Wedge", Vector3.new(0.24781397, 0.480490714, 0.320327193))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.100128174, 0.870386124, 0.480670929, -9.74163413e-07, 2.69711018e-06, -1.00000012, 1.00000012, 3.18163075e-06, -9.70438123e-07, 3.18256207e-06, -1.00000012, -2.6896596e-06))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.161576062, 1, 1))
Wedge = CreatePart2(m, Enum.Material.Metal, 0, 0, "WedgePart", "Fossil", "Wedge", Vector3.new(0.24781397, 0.247813985, 0.24781388))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.100097656, -1.17070961, -0.380556107, -9.74163413e-07, 2.69711018e-06, -1.00000012, -1.00000012, -3.18163075e-06, 9.70438123e-07, -3.18256207e-06, 1.00000012, 2.6896596e-06))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.161576062, 0.48472926, 0.484729469))
Wedge = CreatePart2(m, Enum.Material.Metal, 0, 0, "WedgePart", "Fossil", "Wedge", Vector3.new(0.24781394, 0.24781397, 0.247813866))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.05175781e-05, -0.870424271, -0.200288773, -9.74163413e-07, 2.69711018e-06, -1.00000012, -1.00000012, -3.18163075e-06, 9.70438123e-07, -3.18256207e-06, 1.00000012, 2.6896596e-06))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.969456434, 0.96945858, 0.969458938))
Wedge = CreatePart2(m, Enum.Material.Metal, 0, 0, "WedgePart", "Fossil", "Wedge", Vector3.new(0.247813985, 0.360368103, 0.440449864))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.52587891e-05, 0.810230255, 0.540802002, -9.74163413e-07, 2.69711018e-06, -1.00000012, 1.00000012, 3.18163075e-06, -9.70438123e-07, 3.18256207e-06, -1.00000012, -2.6896596e-06))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.64630425, 1, 1))
Wedge = CreatePart2(m, Enum.Material.Foil, 0, 0, "WedgePart", "Lily white", "Wedge", Vector3.new(0.840856791, 0.24781394, 0.247813836))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.08924103, 0.307307243, 0.0400238037, -0.974359572, -0.22499682, 3.9980514e-06, 0.22499685, -0.974359632, -7.4505806e-07, 4.06429172e-06, 1.63912773e-07, 1))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.161576435, 0.323152989))
Wedge = CreatePart2(m, Enum.Material.Foil, 0, 0, "WedgePart", "Lily white", "Wedge", Vector3.new(1.00101924, 0.247813791, 0.247813687))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.60351181, 1.24343014, 0.0400085449, -0.890966058, -0.45407024, 5.01982868e-06, 0.45407024, -0.890966117, -1.56462193e-07, 4.53926623e-06, 2.13831663e-06, 1))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.161576435, 0.323152989))
Wedge = CreatePart2(m, Enum.Material.Metal, 0, 0, "WedgePart", "Fossil", "Wedge", Vector3.new(0.247813985, 0.247814015, 0.24781391))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.100097656, -1.23083878, 0.58082962, 9.74163413e-07, -2.69711018e-06, 1.00000012, -1.00000012, -3.18163075e-06, 9.70438123e-07, 3.18256207e-06, -1.00000012, -2.6896596e-06))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.161576062, 0.96945858, 0.484729469))
Wedge = CreatePart2(m, Enum.Material.Foil, 0, 0, "WedgePart", "Lily white", "Wedge", Vector3.new(0.880897045, 0.247813836, 0.247813731))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.8559227, 0.73072052, 0.0400848389, 0.93967092, 0.342079848, -2.57976353e-06, 0.342079908, -0.93967104, -3.93390656e-06, -3.76999378e-06, 2.82377005e-06, -1))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.161576435, 0.323152989))
Wedge = CreatePart2(m, Enum.Material.Metal, 0, 0, "WedgePart", "Fossil", "Wedge", Vector3.new(0.247813985, 0.247814015, 0.520531714))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0600738525, -1.05063629, 0.500736237, 9.74163413e-07, -2.69711018e-06, 1.00000012, -1.00000012, -3.18163075e-06, 9.70438123e-07, 3.18256207e-06, -1.00000012, -2.6896596e-06))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.161576062, 0.48472926, 1))
Wedge = CreatePart2(m, Enum.Material.Metal, 0, 0, "WedgePart", "Fossil", "Wedge", Vector3.new(0.24781394, 0.560572565, 0.247813866))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0.0401325226, -0.690164566, -9.74163413e-07, 2.69711018e-06, -1.00000012, 0.000113321934, -1.00000012, -2.69711018e-06, -1, -0.000113321934, 9.72300768e-07))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.969456434, 1, 0.484729469))
Wedge = CreatePart2(m, Enum.Material.Foil, 0, 0, "WedgePart", "Lily white", "Wedge", Vector3.new(0.840856373, 0.247813821, 0.247813717))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(5.3055687, 1.85376835, 0.0400695801, 0.82897675, 0.559283137, -2.33948231e-06, 0.559283197, -0.82897681, 1.45286322e-06, -1.13248825e-06, -2.50339508e-06, -1))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.161576435, 0.323152989))
Wedge = CreatePart2(m, Enum.Material.Metal, 0, 0, "WedgePart", "Fossil", "Wedge", Vector3.new(0.24781397, 0.247813985, 0.24781388))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.100128174, -1.23091888, 0.580795288, 9.74163413e-07, -2.69711018e-06, 1.00000012, -1.00000012, -3.18163075e-06, 9.70438123e-07, 3.18256207e-06, -1.00000012, -2.6896596e-06))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.161576062, 0.96945858, 0.484729469))
Wedge = CreatePart2(m, Enum.Material.Foil, 0, 0, "WedgePart", "Lily white", "Wedge", Vector3.new(0.920938551, 0.24781397, 0.247813866))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.28187752, -0.0248222351, 0.0400390625, -0.994520247, -0.104544967, 5.86733222e-07, 0.104544975, -0.994520247, 4.09781933e-06, 1.52736902e-07, 4.12762165e-06, 1.00000012))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.161576435, 0.323152989))
Wedge = CreatePart2(m, Enum.Material.Marble, 0, 0, "WedgePart", "Maroon", "Wedge", Vector3.new(0.24781394, 0.920940518, 0.280286312))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.05175781e-05, -0.762878418, -0.711168289, -9.74163413e-07, 2.69711018e-06, -1.00000012, -0.382542551, -0.923938036, -2.12341547e-06, -0.923938036, 0.382542521, 1.92970037e-06))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.64630425, 1, 1))
Wedge = CreatePart2(m, Enum.Material.Metal, 0, 0, "WedgePart", "Fossil", "Wedge", Vector3.new(0.247813985, 0.247814015, 0.24781391))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.100067139, -1.17071342, -0.380496979, -9.74163413e-07, 2.69711018e-06, -1.00000012, -1.00000012, -3.18163075e-06, 9.70438123e-07, -3.18256207e-06, 1.00000012, 2.6896596e-06))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.161576062, 0.48472926, 0.484729469))
Wedge = CreatePart2(m, Enum.Material.Foil, 0, 0, "WedgePart", "Lily white", "Wedge", Vector3.new(0.920938551, 0.24781397, 0.247813866))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.28186798, -0.0248565674, 0.0400238037, 0.994520247, 0.104544967, -5.86733222e-07, 0.104544975, -0.994520247, 4.09781933e-06, -1.52736902e-07, -4.12762165e-06, -1.00000012))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.161576435, 0.323152989))
Wedge = CreatePart2(m, Enum.Material.Metal, 0, 0, "WedgePart", "Fossil", "Wedge", Vector3.new(0.247813895, 0.247813925, 0.247813821))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.52587891e-05, 0.870340347, -0.120128632, -9.74163413e-07, 2.69711018e-06, -1.00000012, 1.00000012, 2.08918937e-06, -9.76026058e-07, 2.0863954e-06, -1.00000012, -2.69711018e-06))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.969456434, 0.96945858, 0.969458938))
Wedge = CreatePart2(m, Enum.Material.Metal, 0, 0, "WedgePart", "Fossil", "Wedge", Vector3.new(0.247813895, 0.400408864, 0.247813821))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.100112915, -0.440496445, -0.870271683, -9.74163413e-07, 2.69711018e-06, -1.00000012, 0.000113321934, -1.00000012, -2.69711018e-06, -1, -0.000113321934, 9.72300768e-07))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.161576062, 1, 0.969458938))
Wedge = CreatePart2(m, Enum.Material.Foil, 0, 0, "WedgePart", "Lily white", "Wedge", Vector3.new(0.960979283, 0.24781397, 0.247813866))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.26190567, -0.475915909, 0.0399475098, 0.994520128, 0.104545966, -4.87081707e-07, -0.104545951, 0.994520128, -5.07384539e-06, -4.65661287e-08, 5.10364771e-06, 1.00000012))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.32315284, 0.323152989))
Hitbox = CreatePart2(m, Enum.Material.Fabric, 0, 1, "Part", "Really black", "Hitbox", Vector3.new(5.45781374, 1.05965734, 0.239657223))
HitboxWeld = CreateWeld(m, FakeHandle, Hitbox, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.69422531, -0.684581757, 0, 0.938750744, 0.344597191, 3.37138772e-07, -0.344597191, 0.938750684, -6.63101673e-07, -5.45755029e-07, 4.91738319e-07, 1))
Part = CreatePart2(m, Enum.Material.Marble, 0, 0, "Part", "Maroon", "Part", Vector3.new(0.247813925, 0.24781394, 0.247813836))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.05175781e-05, 0.0285816193, 4.44252586, 4.65661287e-08, 1.7285347e-06, -1.00000012, -0.104624301, 0.994511902, 1.71363354e-06, 0.994511902, 0.104624294, 2.25380063e-07))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(0.649535775, 0.649537206, 0.649537444))
Part = CreatePart2(m, Enum.Material.Marble, 0, 0, "Part", "Maroon", "Part", Vector3.new(0.247813925, 0.24781394, 0.247813836))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(6.10351563e-05, 0.117921829, 4.62295341, 4.65661287e-08, 1.7285347e-06, -1.00000012, -0.104624301, 0.994511902, 1.71363354e-06, 0.994511902, 0.104624294, 2.25380063e-07))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(0.649535775, 0.649537206, 0.649537444))
Part = CreatePart2(m, Enum.Material.Marble, 0, 0, "Part", "Maroon", "Part", Vector3.new(0.247813895, 0.247813925, 0.247813821))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.05175781e-05, -0.211713791, 3.58319092, 4.65661287e-08, 1.7285347e-06, -1.00000012, -0.104624301, 0.994511902, 1.71363354e-06, 0.994511902, 0.104624294, 2.25380063e-07))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(0.649535775, 0.649537206, 0.649537444))
Part = CreatePart2(m, Enum.Material.Marble, 0, 0, "Part", "Maroon", "Part", Vector3.new(0.247813895, 0.247813925, 0.247813821))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.52587891e-05, 0.00259590149, 3.60581207, 4.65661287e-08, 1.7285347e-06, -1.00000012, -0.104624301, 0.994511902, 1.71363354e-06, 0.994511902, 0.104624294, 2.25380063e-07))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(0.649535775, 0.649537206, 0.649537444))
Part = CreatePart2(m, Enum.Material.Marble, 0, 0, "Part", "Maroon", "Part", Vector3.new(0.24781394, 0.24781397, 0.247813866))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0232696533, -0.0201759338, 1.80485153, -9.74163413e-07, 2.69711018e-06, -1.00000012, -0.000113321934, 1.00000012, 2.69711018e-06, 1, 0.000113321934, -9.72300768e-07))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(0.649535775, 0.649537206, 0.649537444))
Part = CreatePart2(m, Enum.Material.Marble, 0, 0, "Part", "Maroon", "Part", Vector3.new(0.24781394, 0.24781397, 0.247813866))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0233154297, -0.0201148987, 1.11083412, -9.74163413e-07, 2.69711018e-06, -1.00000012, -0.000113321934, 1.00000012, 2.69711018e-06, 1, 0.000113321934, -9.72300768e-07))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(0.649535775, 0.649537206, 0.649537444))
Part = CreatePart2(m, Enum.Material.Ice, 0, 0, "Part", "Gold", "Part", Vector3.new(0.695909023, 0.24781397, 0.200000003))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.45886612, -0.0223712921, -0.0238647461, -1.00000012, -1.09244138e-06, 8.95932317e-07, -1.09360553e-06, 1.00000012, 7.4505806e-09, -8.97794962e-07, 1.49011612e-08, -1.00000012))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.807882071, 0.675389767))
Part = CreatePart2(m, Enum.Material.Ice, 0, 0, "Part", "Gold", "Part", Vector3.new(0.24781394, 0.24781397, 0.247813866))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00190734863, -0.0202064514, 1.8048439, -9.74163413e-07, 2.69711018e-06, -1.00000012, -0.000113321934, 1.00000012, 2.69711018e-06, 1, 0.000113321934, -9.72300768e-07))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(0.799801588, 0.799803257, 0.799803674))
Part = CreatePart2(m, Enum.Material.Marble, 0, 0, "Part", "Maroon", "Part", Vector3.new(0.247813925, 0.24781394, 0.247813836))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.05175781e-05, 0.246086121, 4.46543121, 4.65661287e-08, 1.7285347e-06, -1.00000012, -0.104624301, 0.994511902, 1.71363354e-06, 0.994511902, 0.104624294, 2.25380063e-07))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(0.649535775, 0.649537206, 0.649537444))
Part = CreatePart2(m, Enum.Material.Metal, 0, 0, "Part", "Fossil", "Part", Vector3.new(0.280285776, 0.24781397, 0.24781391))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.298238754, 0.695181847, 9.15527344e-05, -0.382537991, -0.923939884, -1.93715096e-06, -0.923939824, 0.382537961, -4.61935997e-07, 1.16601586e-06, 1.61677599e-06, -1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.161576435, 0.323152989))
Part = CreatePart2(m, Enum.Material.Marble, 0, 0, "Part", "Maroon", "Part", Vector3.new(0.24000001, 0.24000001, 0.24000001))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0649929047, 0.705287933, 0.00408935547, -0.382537991, -0.923939884, -1.93715096e-06, -0.923939824, 0.382537961, -4.61935997e-07, 1.16601586e-06, 1.61677599e-06, -1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart2(m, Enum.Material.Ice, 0, 0, "Part", "Gold", "Part", Vector3.new(0.24781394, 0.24781397, 0.247813866))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00164794922, -0.0201435089, 1.11081886, -9.74163413e-07, 2.69711018e-06, -1.00000012, -0.000113321934, 1.00000012, 2.69711018e-06, 1, 0.000113321934, -9.72300768e-07))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(0.801417291, 0.80141902, 0.801419377))
Part = CreatePart2(m, Enum.Material.Metal, 0, 0, "Part", "Fossil", "Part", Vector3.new(0.640652835, 0.24781397, 0.247813866))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.354620934, 0.458593369, 4.57763672e-05, 0.923866153, -0.382716089, -4.1872263e-06, -0.382716089, -0.923866153, -1.40815973e-06, -3.33599746e-06, 2.90572643e-06, -1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.161576435, 0.323152989))
Part = CreatePart2(m, Enum.Material.Marble, 0, 0, "Part", "Maroon", "Part", Vector3.new(0.24781394, 0.24781397, 0.247813866))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0195770264, -0.0202255249, 1.80488014, 4.65661287e-08, 1.7285347e-06, -1.00000012, -0.00011434406, 1.00000012, 1.72108412e-06, 1.00000012, 0.000114344526, 4.65661287e-08))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(0.649535775, 0.649537206, 0.649537444))
Part = CreatePart2(m, Enum.Material.Marble, 0, 0, "Part", "Maroon", "Part", Vector3.new(0.24781394, 0.24781397, 0.247813866))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0195617676, -0.020116806, 1.1108532, 4.65661287e-08, 1.7285347e-06, -1.00000012, -0.00011434406, 1.00000012, 1.72108412e-06, 1.00000012, 0.000114344526, 4.65661287e-08))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(0.649535775, 0.649537206, 0.649537444))
Part = CreatePart2(m, Enum.Material.Marble, 0, 0, "Part", "Maroon", "Part", Vector3.new(0.247813895, 0.247813925, 0.247813821))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(6.10351563e-05, -0.121149063, 3.77516174, 4.65661287e-08, 1.7285347e-06, -1.00000012, -0.104624301, 0.994511902, 1.71363354e-06, 0.994511902, 0.104624294, 2.25380063e-07))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(0.649535775, 0.649537206, 0.649537444))
Part = CreatePart2(m, Enum.Material.Ice, 0, 0, "Part", "Fossil", "Part", Vector3.new(1.06590891, 0.547813952, 0.207813859))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.19857788, -2.10122013, -1.52587891e-05, -0.828294814, -0.56029278, -1.62795186e-06, -0.56029284, 0.828294694, 1.82464719e-05, -8.87922943e-06, 1.60261989e-05, -1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.807882071, 0.675389767))
Part = CreatePart2(m, Enum.Material.Ice, 0, 0, "Part", "Fossil", "Part", Vector3.new(0.885908961, 0.547813952, 0.217813864))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.867239, -0.945817947, -0.00248718262, -0.941812456, -0.336139321, 3.09664756e-06, -0.336139321, 0.941812396, 4.91738319e-06, -4.5709312e-06, 3.59117985e-06, -1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.807882071, 0.675389767))
Part = CreatePart2(m, Enum.Material.Marble, 0, 0, "Part", "Maroon", "Part", Vector3.new(0.247813925, 0.24781394, 0.247813836))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.05175781e-05, -0.102952957, 2.54921722, 4.65661287e-08, 1.7285347e-06, -1.00000012, -0.104624301, 0.994511902, 1.71363354e-06, 0.994511902, 0.104624294, 2.25380063e-07))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(0.649535775, 0.649537206, 0.649537444))
Part = CreatePart2(m, Enum.Material.Marble, 0, 0, "Part", "Maroon", "Part", Vector3.new(0.247813925, 0.24781394, 0.247813836))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.52587891e-05, -0.329200745, 2.52548981, 4.65661287e-08, 1.7285347e-06, -1.00000012, -0.104624301, 0.994511902, 1.71363354e-06, 0.994511902, 0.104624294, 2.25380063e-07))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(0.649535775, 0.649537206, 0.649537444))
Part = CreatePart2(m, Enum.Material.Marble, 0, 0, "Part", "Maroon", "Part", Vector3.new(0.247813895, 0.247813925, 0.247813821))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0401954651, -0.87030983, 6.10351563e-05, 0.000110394554, -1.00000012, 2.90572643e-07, -1, -0.000110395486, 4.28408384e-06, -4.28408384e-06, -2.83122063e-07, -1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.323152125, 0.96945858, 0.969458938))
Part = CreatePart2(m, Enum.Material.Ice, 0, 0, "Part", "Fossil", "Part", Vector3.new(1.00590897, 0.547813952, 0.207813859))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.29172897, -0.217262268, 0.00859069824, -0.994451582, -0.105196655, -7.1991235e-07, -0.105196662, 0.994451523, 9.91672277e-06, -3.27825546e-07, 9.93162394e-06, -1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.807882071, 0.675389767))
Part = CreatePart2(m, Enum.Material.Ice, 0, 0, "Part", "Fossil", "Part", Vector3.new(0.885908961, 0.547813952, 0.217813864))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.12658501, -0.514419556, 0.00314331055, -0.976785958, -0.214218199, -1.50408596e-07, -0.214218199, 0.976785958, 4.66406345e-06, -8.53091478e-07, 4.60445881e-06, -1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.807882071, 0.675389767))
Part = CreatePart2(m, Enum.Material.Ice, 0, 0, "Part", "Fossil", "Part", Vector3.new(0.965908945, 0.557813942, 0.207813859))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.57389832, -1.45414925, -0.00228881836, -0.894132912, -0.447802037, 4.05870378e-06, -0.447802037, 0.894132912, 9.42498446e-06, -7.85477459e-06, 6.61611557e-06, -1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.807882071, 0.675389767))
Part = CreatePart2(m, Enum.Material.Fabric, 0, 0, "Part", "Really black", "Part", Vector3.new(0.927814007, 0.247813985, 0.24781388))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.29000473, 1.90734863e-06, 0, 1.00000012, 0, 0, 0, 1.00000012, -7.4505806e-09, 0, -7.4505806e-09, 1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(0.969456434, 0.96945858, 0.969458938))
Part = CreatePart2(m, Enum.Material.Fabric, 0, 0, "Part", "Really black", "Part", Vector3.new(0.24781394, 0.24781397, 0.247813866))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.321260452, -0.078037262, -4.57763672e-05, 0.923863888, -0.382721335, -6.63101673e-07, 0.382721305, 0.923863947, 9.68575478e-08, 5.69969416e-07, -3.50177288e-07, 1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(0.969456434, 0.96945858, 0.969458938))
Part = CreatePart2(m, Enum.Material.Fabric, 0, 0, "Part", "Really black", "Part", Vector3.new(0.24781394, 0.24781397, 0.247813866))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.561691284, -0.0780735016, -6.10351563e-05, 0.923864305, -0.382720381, -1.55717134e-06, 0.382720441, 0.923864365, 1.10268593e-06, 1.01327896e-06, -1.61677599e-06, 1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(0.969456434, 0.96945858, 0.969458938))
Part = CreatePart2(m, Enum.Material.Marble, 0, 0, "Part", "Maroon", "Part", Vector3.new(0.247813925, 0.24781394, 0.247813836))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(6.10351563e-05, -0.228551865, 2.72089195, 4.65661287e-08, 1.7285347e-06, -1.00000012, -0.104624301, 0.994511902, 1.71363354e-06, 0.994511902, 0.104624294, 2.25380063e-07))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(0.649535775, 0.649537206, 0.649537444))
Part = CreatePart2(m, Enum.Material.Metal, 0, 0, "Part", "Fossil", "Part", Vector3.new(0.988206923, 0.247813925, 0.247813821))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.277650833, -0.407361984, -3.05175781e-05, 1.00000012, 3.08360904e-06, -7.00354576e-07, -3.08430754e-06, 1.00000012, -9.31322575e-07, 7.00354576e-07, 9.16421413e-07, 1.00000012))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.161576435, 0.323152989))
Part = CreatePart2(m, Enum.Material.Fabric, 0, 0, "Part", "Really black", "Part", Vector3.new(0.24000001, 0.24000001, 0.24000001))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0729160309, 0.175881386, -0.00381469727, -0.382537991, -0.923939884, -1.93715096e-06, -0.923939824, 0.382537961, -4.61935997e-07, 1.16601586e-06, 1.61677599e-06, -1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart2(m, Enum.Material.Ice, 0, 0, "Part", "Fossil", "Part", Vector3.new(0.885908961, 0.557813942, 0.207813859))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.38141632, -0.0177497864, -0.000991821289, -1.00000012, -1.09244138e-06, 8.95932317e-07, -1.09360553e-06, 1.00000012, 7.4505806e-09, -8.97794962e-07, 1.49011612e-08, -1.00000012))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.807882071, 0.675389767))
Wedge = CreatePart2(m, Enum.Material.Foil, 0, 0, "WedgePart", "Lily white", "Wedge", Vector3.new(0.880897522, 0.24781397, 0.219999999))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.43015289, -0.224208832, 0.0341033936, -1.00000012, -3.08360904e-06, 7.00354576e-07, 3.08430754e-06, -1.00000012, 9.31322575e-07, 7.00354576e-07, 9.16421413e-07, 1.00000012))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.161576435, 0.323152989))
Wedge = CreatePart2(m, Enum.Material.Marble, 0, 0, "WedgePart", "Maroon", "Wedge", Vector3.new(0.247813925, 0.24781394, 0.247813836))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.05175781e-05, -0.870378494, 0.120162964, -9.74163413e-07, 2.69711018e-06, -1.00000012, -1.00000012, -1.09244138e-06, 9.74163413e-07, -1.0910444e-06, 1.00000012, 2.6896596e-06))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.969456434, 0.96945858, 0.969458938))
Handle2 = CreatePart(m, Enum.Material.Plastic, 0.40000000596046, 1, "Quill grey", "Handle2", Vector3.new(0.200000003, 0.200000003, 1.03999996))
Handle2Weld = CreateWeld(m, Character["Left Arm"], Handle2, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.959990025, -0.250030518, 0.0100040436, 0, -1, 0, 1, 0, 0, 0, 0, 1))
BaHandle = CreatePart2(m, Enum.Material.Plastic, 0.40000000596046, 1, "Part", "Quill grey", "BaHandle", Vector3.new(0.200000003, 0.200000003, 1.03999996))
BaHandleWeld = CreateWeld(m, Handle2, BaHandle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
Blade = CreatePart2(m, Enum.Material.Plastic, 0.28999999165535, 1, "Part", "Quill grey", "Blade", Vector3.new(0.200000003, 0.200000003, 3.03999996))
BladeWeld = CreateWeld(m, BaHandle, Blade, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0, -1, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("SpecialMesh", Blade, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=22771612", Vector3.new(0, 0, 0), Vector3.new(0.349999994, 0.349999994, 0.25))
Hitbox2 = CreatePart2(m, Enum.Material.Plastic, 0.28999999165535, 1, "Part", "Quill grey", "Hitbox2", Vector3.new(0.779999971, 0.200000003, 3.03999996))
Hitbox2Weld = CreateWeld(m, BaHandle, Hitbox2, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0300006866, 0, -1, 1, 0, 0, 0, 1, 0, 0, 0, 1))
BladeHandle = CreatePart(m, Enum.Material.SmoothPlastic, 0, 1, "Dirt brown", "BladeHandle", Vector3.new(2, 2, 1))
BladeHandleWeld = CreateWeld(m, Character.Torso, BladeHandle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -0.0349273682, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
Blade1 = CreatePart(m, Enum.Material.Neon, 0, 1, "Institutional white", "Blade1", Vector3.new(0.200000003, 0.200000003, 5))
Blade1Weld = CreateWeld(m, BladeHandle, Blade1, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.5110817, -2.12277222, -1.05124283, 0.0744840056, -0.704896033, -0.705389082, 0.96517998, 0.228827, -0.126751006, 0.25075835, -0.67138654, 0.697395504))
CreateMesh("SpecialMesh", Blade1, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=11442510", Vector3.new(0, 0, 0), Vector3.new(1.89999998, 1.89999998, 1.89999998))
Blade2 = CreatePart(m, Enum.Material.Neon, 0, 1, "Institutional white", "Blade2", Vector3.new(0.200000003, 0.200000003, 5))
Blade2Weld = CreateWeld(m, BladeHandle, Blade2, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.57322502, -0.999954224, -1.05597115, 0, -0.64278698, -0.766044974, 1, 0, 0, 0, -0.766044974, 0.64278698))
CreateMesh("SpecialMesh", Blade2, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=11442510", Vector3.new(0, 0, 0), Vector3.new(1.89999998, 1.89999998, 1.89999998))
Blade3 = CreatePart(m, Enum.Material.Neon, 0, 1, "Institutional white", "Blade3", Vector3.new(0.200000003, 0.200000003, 5))
Blade3Weld = CreateWeld(m, BladeHandle, Blade3, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.57322502, 0.880050659, -1.05597115, 0, -0.64278698, -0.766044974, 1, 0, 0, 0, -0.766044974, 0.64278698))
CreateMesh("SpecialMesh", Blade3, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=11442510", Vector3.new(0, 0, 0), Vector3.new(1.89999998, 1.89999998, 1.89999998))
Blade4 = CreatePart(m, Enum.Material.Neon, 0, 1, "Institutional white", "Blade4", Vector3.new(0.200000003, 0.200000003, 5))
Blade4Weld = CreateWeld(m, BladeHandle, Blade4, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.52743816, 2.01983643, -1.22538757, -0.059386991, -0.758021891, -0.64951992, 0.939693213, -0.26199922, 0.219847918, -0.336823225, -0.597293317, 0.727867246))
CreateMesh("SpecialMesh", Blade4, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=11442510", Vector3.new(0, 0, 0), Vector3.new(1.89999998, 1.89999998, 1.89999998))
Mask1 = CreatePart(m, Enum.Material.Plastic, 0, 1, "Institutional white", "Mask1", Vector3.new(1, 0.800000012, 1))
MaskWeld = CreateWeld(m, Character.Head, Mask1, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -0.108923912, -0.130903244, 1, 0, 0, 0, 0.984808743, -0.173642948, 0, 0.173642933, 0.984808743))
CreateMesh("SpecialMesh", Mask1, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=1365696", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1.14999998))
Mask = CreatePart(m, Enum.Material.Plastic, 0, 1, "Bright red", "Mask", Vector3.new(1, 0.800000012, 1))
MaskWeld = CreateWeld(m, Mask1, Mask, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0, 0, 1, 0, 0, 0, 1.00000012, -1.49011612e-08, 0, -1.49011612e-08, 1.00000012))
CreateMesh("SpecialMesh", Mask, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=1365696", Vector3.new(0, 0, 0), Vector3.new(0.980000019, 0.899999976, 1.11000001))
Eyes = CreatePart(m, Enum.Material.Neon, 0, 1, "Really red", "Eyes", Vector3.new(0.200000003, 0.200000003, 0.200000003))
EyesWeld = CreateWeld(m, Mask1, Eyes, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00445556641, -0.0400009155, 0.626235962, 0.939692736, -0.0593893453, 0.336824208, 0, 0.984808743, 0.173642933, -0.342019886, -0.163171023, 0.925417602))
MagniHit = CreatePart(m, Enum.Material.Plastic, 0, 1, "Medium stone grey", "MagniHit", Vector3.new(0.200000003, 0.200000003, 0.200000003))
MagniHitWeld = CreateWeld(m, Character.HumanoidRootPart, MagniHit, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.01003361, -0.230025291, 0.070048213, 0, 0, -1, 0, 1, 0, 1, 0, 0))
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
      HitHealth = h.Health
      h.Health = h.Health - Damage
      if HitHealth ~= h.Health and HitHealth ~= 0 and h.Health <= 0 and h.Parent.Name ~= "Lost Soul" then
        print("gained spree")
        game.Players.LocalPlayer:FindFirstChild("leaderstats").Spree.Value = game.Players.LocalPlayer.leaderstats.Spree.Value + 1
      end
      if HitHealth ~= h.Health and HitHealth ~= 0 and h.Health <= 0 then
        print("gained kill")
        script.Kills.Value = script.Kills.Value + 1
      end
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
  prt.CFrame = cframe
  msh = CreateMesh("SpecialMesh", prt, "FileMesh", "rbxassetid://3270017", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
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
  
  local prt = CreatePart(effect, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe
  msh = CreateMesh("SpecialMesh", prt, "FileMesh", "rbxassetid://20329976", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
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

SlashEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  
  local prt = CreatePart(effect, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe
  msh = CreateMesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=448386996", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 2)
  coroutine.resume(coroutine.create(function(Part, Mesh, num)
    
    for i = 0, 1, delay do
      swait()
      Part.Transparency = i
      Mesh.Scale = Mesh.Scale + Vector3.new(x3, y3, z3)
    end
    Part.Parent = nil
  end
), prt, msh, (math.random(0, 1) + math.random()) / 5)
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
  Blade1.Transparency = 0.2
  Blade2.Transparency = 0.2
  Blade3.Transparency = 0.2
  Blade4.Transparency = 0.2
  Eyes.Transparency = 0
  Mask.Transparency = 0
  Mask1.Transparency = 0
  for _,v in pairs(Torso.Parent:children()) do
    do
      if v.className == "Part" and v.Name ~= "HumanoidRootPart" then
        coroutine.resume(coroutine.create(function()
    
    for i = 0, 0.7, 0.2 do
      swait()
      v.Transparency = i
    end
    v.Transparency = 0
    v.BrickColor = BrickColor.new("Institutional white")
  end
))
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
    if derp.Mesh ~= nil then
      derp.Mesh.Name = derp.Mesh.TextureId
    end
    for _,v in pairs(derp:GetChildren()) do
      if v:IsA("SpecialMesh") then
        v.TextureId = ""
      end
    end
    derp.BrickColor = BrickColor.new("Institutional white")
  end
), hatp)
          -- DECOMPILER ERROR at PC62: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC62: LeaveBlock: unexpected jumping out IF_STMT

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
  Blade1.Transparency = 1
  Blade2.Transparency = 1
  Blade3.Transparency = 1
  Blade4.Transparency = 1
  Eyes.Transparency = 1
  Mask.Transparency = 1
  Mask1.Transparency = 1
  BodyColors.Parent = Character
  for _,v in pairs(Torso.Parent:children()) do
    do
      if v.className == "Part" and v.Name ~= "HumanoidRootPart" then
        coroutine.resume(coroutine.create(function()
    
    for i = 0, 1, 0.1 do
      swait()
      v.Transparency = v.Transparency - 0.1
    end
    v.Transparency = 0
  end
))
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
    coroutine.resume(coroutine.create(function()
      
      for _,ss in pairs(derp:GetChildren()) do
        if ss:IsA("SpecialMesh") then
          ss.TextureId = ss.Name
        end
      end
    end
))
  end
), hatp)
          -- DECOMPILER ERROR at PC68: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC68: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
  end
end

attackone = function()
  
  attack = true
  local con = Hitbox.Touched:connect(function(hit)
    
    Damagefunc(Hitbox, hit, 10, 15, math.random(1, 5), "Normal", RootPart, 0.2, "rbxassetid://199149221", 0.8)
  end
)
  for i = 0, 1, 0.2 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(-5), math.rad(0), math.rad(-100)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(100)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.7 - 0.1 * math.cos(sine / 8), 0) * angles(math.rad(90), math.rad(0), math.rad(30)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-0.4, 0.7 - 0.1 * math.cos(sine / 8), -0.5) * angles(math.rad(90), math.rad(0), math.rad(70)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1 + 0.1 * math.cos(sine / 10), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(-20)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1 + 0.1 * math.cos(sine / 10), 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(90), math.rad(90), math.rad(-80)), 0.3)
  end
  for i = 0, 1, 0.5 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(5), math.rad(0), math.rad(-30)), 0.4)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(30)), 0.4)
    RW.C0 = clerp(RW.C0, CFrame.new(1.4, 0.5 - 0.1 * math.cos(sine / 8), 0) * angles(math.rad(90), math.rad(0), math.rad(-30)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-0.7, 0.5 - 0.1 * math.cos(sine / 8), -0.5) * angles(math.rad(90), math.rad(0), math.rad(70)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1 + 0.1 * math.cos(sine / 10), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1 + 0.1 * math.cos(sine / 10), 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(90), math.rad(-90)), 0.5)
  end
  CreateSound("http://www.roblox.com/asset/?id=320557413", RootPart, 1, 1)
  coroutine.resume(coroutine.create(function()
    
    if dragon == true then
      Torso.Velocity = RootPart.CFrame.lookVector * 75
      SphereEffect(BrickColor.new("White"), Blade1.CFrame, 1, 5, 1, 0.5, 2, 0.5, 0.07)
      Blade1.Transparency = 1
      SphereEffect(BrickColor.new("White"), Blade2.CFrame, 1, 5, 1, 0.5, 2, 0.5, 0.07)
      Blade2.Transparency = 1
      SphereEffect(BrickColor.new("White"), Blade3.CFrame, 1, 5, 1, 0.5, 2, 0.5, 0.07)
      Blade3.Transparency = 1
      SphereEffect(BrickColor.new("White"), Blade4.CFrame, 1, 5, 1, 0.5, 2, 0.5, 0.07)
      Blade4.Transparency = 1
      for i = 1, 3 do
        swait()
        for i = 0, 1, 0.2 do
          swait()
        end
        MagniDamage(MagniHit, 5, 5, 10, 0, "Normal")
        CreateSound("http://www.roblox.com/asset/?id=338586331", RootPart, 1, 2)
        SlashEffect(BrickColor.new("Institutional white"), RootPart.CFrame * cf(0, -1, -5) * angles(math.rad(90), math.random(-50, 50), 0), 0.001, 0.1, 0.1, 0, 0.001, 0.001, 0.07)
      end
      SphereEffect(BrickColor.new("White"), Blade1.CFrame, 1, 5, 1, 0.5, 2, 0.5, 0.07)
      Blade1.Transparency = 0.2
      SphereEffect(BrickColor.new("White"), Blade2.CFrame, 1, 5, 1, 0.5, 2, 0.5, 0.07)
      Blade2.Transparency = 0.2
      SphereEffect(BrickColor.new("White"), Blade3.CFrame, 1, 5, 1, 0.5, 2, 0.5, 0.07)
      Blade3.Transparency = 0.2
      SphereEffect(BrickColor.new("White"), Blade4.CFrame, 1, 5, 1, 0.5, 2, 0.5, 0.07)
      Blade4.Transparency = 0.2
    end
  end
))
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(15), math.rad(0), math.rad(50)), 0.5)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-15), math.rad(0), math.rad(-50)), 0.5)
    RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.4 - 0.1 * math.cos(sine / 8), 0) * angles(math.rad(90), math.rad(0), math.rad(-50)), 0.4)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.1, 0.4 - 0.1 * math.cos(sine / 8), -0.5) * angles(math.rad(90), math.rad(0), math.rad(50)), 0.4)
    RH.C0 = clerp(RH.C0, cf(1, -1 + 0.1 * math.cos(sine / 10), 0) * RHCF * angles(math.rad(0), math.rad(-50), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1 + 0.1 * math.cos(sine / 10), 0) * LHCF * angles(math.rad(0), math.rad(50), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(90), math.rad(-90)), 0.5)
  end
  con:disconnect()
  attack = false
end

attacktwo = function()
  
  attack = true
  local con = Hitbox.Touched:connect(function(hit)
    
    Damagefunc(Hitbox, hit, 10, 15, math.random(1, 5), "Normal", RootPart, 0.2, "rbxassetid://199149221", 0.8)
  end
)
  for i = 0, 1, 0.2 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(15), math.rad(0), math.rad(50)), 0.5)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-15), math.rad(0), math.rad(-50)), 0.5)
    RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.4 - 0.1 * math.cos(sine / 8), 0) * angles(math.rad(60), math.rad(0), math.rad(-50)), 0.4)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.1, 0.4 - 0.1 * math.cos(sine / 8), -0.5) * angles(math.rad(60), math.rad(0), math.rad(50)), 0.4)
    RH.C0 = clerp(RH.C0, cf(1, -1 + 0.1 * math.cos(sine / 10), 0) * RHCF * angles(math.rad(0), math.rad(-50), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1 + 0.1 * math.cos(sine / 10), 0) * LHCF * angles(math.rad(0), math.rad(50), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(-90), math.rad(-90)), 0.5)
  end
  for i = 0, 1, 0.5 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(5), math.rad(0), math.rad(-30)), 0.4)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(30)), 0.4)
    RW.C0 = clerp(RW.C0, CFrame.new(1.4, 0.5 - 0.1 * math.cos(sine / 8), 0) * angles(math.rad(90), math.rad(0), math.rad(-30)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-0.7, 0.5 - 0.1 * math.cos(sine / 8), -0.5) * angles(math.rad(90), math.rad(0), math.rad(70)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1 + 0.1 * math.cos(sine / 10), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1 + 0.1 * math.cos(sine / 10), 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(-90), math.rad(-90)), 0.5)
  end
  CreateSound("http://www.roblox.com/asset/?id=320557413", RootPart, 1, 1.4)
  coroutine.resume(coroutine.create(function()
    
    if dragon == true then
      Torso.Velocity = RootPart.CFrame.lookVector * 75
      SphereEffect(BrickColor.new("White"), Blade1.CFrame, 1, 5, 1, 0.5, 2, 0.5, 0.07)
      Blade1.Transparency = 1
      SphereEffect(BrickColor.new("White"), Blade2.CFrame, 1, 5, 1, 0.5, 2, 0.5, 0.07)
      Blade2.Transparency = 1
      SphereEffect(BrickColor.new("White"), Blade3.CFrame, 1, 5, 1, 0.5, 2, 0.5, 0.07)
      Blade3.Transparency = 1
      SphereEffect(BrickColor.new("White"), Blade4.CFrame, 1, 5, 1, 0.5, 2, 0.5, 0.07)
      Blade4.Transparency = 1
      for i = 1, 3 do
        swait()
        for i = 0, 1, 0.2 do
          swait()
        end
        MagniDamage(MagniHit, 5, 5, 10, 0, "Normal")
        SlashEffect(BrickColor.new("Institutional white"), RootPart.CFrame * cf(0, -1, -5) * angles(math.rad(90), math.random(-50, 50), 0), 0.001, 0.1, 0.1, 0, 0.001, 0.001, 0.07)
        CreateSound("http://www.roblox.com/asset/?id=338586331", RootPart, 1, 2)
      end
      SphereEffect(BrickColor.new("White"), Blade1.CFrame, 1, 5, 1, 0.5, 2, 0.5, 0.07)
      Blade1.Transparency = 0.2
      SphereEffect(BrickColor.new("White"), Blade2.CFrame, 1, 5, 1, 0.5, 2, 0.5, 0.07)
      Blade2.Transparency = 0.2
      SphereEffect(BrickColor.new("White"), Blade3.CFrame, 1, 5, 1, 0.5, 2, 0.5, 0.07)
      Blade3.Transparency = 0.2
      SphereEffect(BrickColor.new("White"), Blade4.CFrame, 1, 5, 1, 0.5, 2, 0.5, 0.07)
      Blade4.Transparency = 0.2
    end
  end
))
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(-5), math.rad(0), math.rad(-100)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(100)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.7 - 0.1 * math.cos(sine / 8), 0) * angles(math.rad(130), math.rad(0), math.rad(30)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-0.4, 0.7 - 0.1 * math.cos(sine / 8), -0.5) * angles(math.rad(130), math.rad(0), math.rad(70)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1 + 0.1 * math.cos(sine / 10), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(-20)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1 + 0.1 * math.cos(sine / 10), 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(90), math.rad(-100), math.rad(-80)), 0.5)
  end
  con:disconnect()
  attack = false
end

WindBind = function()
  
  attack = true
  Humanoid.WalkSpeed = 0
  cam.CameraType = "Attach"
  local con = Hitbox.Touched:connect(function(hit)
    
    Damagefunc(Hitbox, hit, 20, 25, math.random(1, 5), "Normal", RootPart, 0.2, "rbxassetid://199149221", 0.8)
  end
)
  for i = 0, 1, 0.2 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(-5), math.rad(0), math.rad(-100)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(100)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.7 - 0.1 * math.cos(sine / 8), 0) * angles(math.rad(90), math.rad(0), math.rad(30)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-0.4, 0.7 - 0.1 * math.cos(sine / 8), -0.5) * angles(math.rad(90), math.rad(0), math.rad(70)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1 + 0.1 * math.cos(sine / 10), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(-20)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1 + 0.1 * math.cos(sine / 10), 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(90), math.rad(90), math.rad(-80)), 0.3)
  end
  BlockEffect(BrickColor.new("White"), RootPart.CFrame, 10, 10, 10, 3, 3, 3, 0.07)
  MagniDamage(Torso, 15, 10, 20, 0, "Normal")
  CreateSound("http://www.roblox.com/asset/?id=300915947", RootPart, 1, 1)
  RootPart.CFrame = RootPart.CFrame * cf(0, 0, -20)
  RootPart.CFrame = RootPart.CFrame * cf(0, 0, 0) * angles(math.rad(0), math.rad(180), math.rad(0))
  for i = 0, 1, 0.5 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(5), math.rad(0), math.rad(-30)), 0.4)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(30)), 0.4)
    RW.C0 = clerp(RW.C0, CFrame.new(1.4, 0.5 - 0.1 * math.cos(sine / 8), 0) * angles(math.rad(90), math.rad(0), math.rad(-30)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-0.7, 0.5 - 0.1 * math.cos(sine / 8), -0.5) * angles(math.rad(90), math.rad(0), math.rad(70)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1 + 0.1 * math.cos(sine / 10), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1 + 0.1 * math.cos(sine / 10), 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(90), math.rad(-90)), 0.5)
  end
  CreateSound("http://www.roblox.com/asset/?id=320557413", RootPart, 1, 1.4)
  for i = 0, 1, 0.5 do
    swait()
  end
  for i = 0, 1, 0.1 do
    swait()
    Torso.Velocity = RootPart.CFrame.lookVector * 50
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(15), math.rad(0), math.rad(50)), 0.5)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-15), math.rad(0), math.rad(-50)), 0.5)
    RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.4 - 0.1 * math.cos(sine / 8), 0) * angles(math.rad(90), math.rad(0), math.rad(-50)), 0.4)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.1, 0.4 - 0.1 * math.cos(sine / 8), -0.5) * angles(math.rad(90), math.rad(0), math.rad(50)), 0.4)
    RH.C0 = clerp(RH.C0, cf(1, -1 + 0.1 * math.cos(sine / 10), 0) * RHCF * angles(math.rad(0), math.rad(-50), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1 + 0.1 * math.cos(sine / 10), 0) * LHCF * angles(math.rad(0), math.rad(50), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(90), math.rad(-90)), 0.5)
  end
  Humanoid.WalkSpeed = 16
  cam.CameraType = "Custom"
  con:disconnect()
  attack = false
end

WindBlades = function()
  
  attack = true
  for i = 0, 1, 0.2 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(-5), math.rad(0), math.rad(-100)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(100)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.7 - 0.1 * math.cos(sine / 8), 0) * angles(math.rad(20), math.rad(0), math.rad(30)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-0.4, 0.7 - 0.1 * math.cos(sine / 8), -0.5) * angles(math.rad(20), math.rad(0), math.rad(70)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1 + 0.1 * math.cos(sine / 10), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(-20)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1 + 0.1 * math.cos(sine / 10), 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(90), math.rad(90), math.rad(-80)), 0.3)
  end
  for i = 0, 1, 0.5 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(5), math.rad(0), math.rad(-30)), 0.4)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(30)), 0.4)
    RW.C0 = clerp(RW.C0, CFrame.new(1.4, 0.5 - 0.1 * math.cos(sine / 8), 0) * angles(math.rad(90), math.rad(0), math.rad(-30)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-0.7, 0.5 - 0.1 * math.cos(sine / 8), -0.5) * angles(math.rad(90), math.rad(0), math.rad(70)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1 + 0.1 * math.cos(sine / 10), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1 + 0.1 * math.cos(sine / 10), 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(90), math.rad(-90)), 0.5)
  end
  ref = CreatePart(effect, "SmoothPlastic", 0, 1, BrickColor.new("Black"), "ref", Vector3.new())
  ref.Anchored = true
  ref.CanCollide = false
  ref.CFrame = RootPart.CFrame * CFrame.new(0, -0.5, -5)
  game.Debris:AddItem(ref, 1)
  coroutine.resume(coroutine.create(function()
    
    for i = 0, 10, 2 do
      swait()
      CreateSound("http://www.roblox.com/asset/?id=192410089", Handle, 1, 0.7)
      SphereEffect(BrickColor.new("White"), ref.CFrame * angles(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 2, 10 * i * 2, 2, 0.5, 5, 0.5, 0.05)
      BlockEffect(BrickColor.new("White"), ref.CFrame * CFrame.new(0, -0.5, 0), 10, 10, 10, 0.5 * i, 0.5 * i, 0.5 * i, 0.05)
      MagniDamage(ref, 6, 10, 20, 0, "Up")
      ref.CFrame = RootPart.CFrame * CFrame.new(0, -0.5, -5 * i)
      for i = 0, 1, 0.5 do
        swait()
      end
    end
  end
))
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(15), math.rad(0), math.rad(50)), 0.5)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-15), math.rad(0), math.rad(-50)), 0.5)
    RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.4 - 0.1 * math.cos(sine / 8), 0) * angles(math.rad(140), math.rad(0), math.rad(-50)), 0.4)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.1, 0.4 - 0.1 * math.cos(sine / 8), -0.5) * angles(math.rad(140), math.rad(0), math.rad(50)), 0.4)
    RH.C0 = clerp(RH.C0, cf(1, -1 + 0.1 * math.cos(sine / 10), 0) * RHCF * angles(math.rad(0), math.rad(-50), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1 + 0.1 * math.cos(sine / 10), 0) * LHCF * angles(math.rad(0), math.rad(50), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(90), math.rad(-90)), 0.5)
  end
  attack = false
end

WindBreak = function()
  
  attack = true
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(15), math.rad(0), math.rad(70)), 0.5)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(-15), math.rad(-70)), 0.5)
    RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.4 - 0.1 * math.cos(sine / 8), 0) * angles(math.rad(60), math.rad(0), math.rad(-50)), 0.4)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.1, 0.4 - 0.1 * math.cos(sine / 8), -0.5) * angles(math.rad(60), math.rad(0), math.rad(50)), 0.4)
    RH.C0 = clerp(RH.C0, cf(1, -1 + 0.1 * math.cos(sine / 10), 0) * RHCF * angles(math.rad(0), math.rad(-50), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1 + 0.1 * math.cos(sine / 10), 0) * LHCF * angles(math.rad(0), math.rad(50), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(-90), math.rad(-90)), 0.5)
  end
  CreateSound("http://www.roblox.com/asset/?id=315743350", RootPart, 1, 1)
  MagniDamage(RootPart, 20, 10, 10, 20, "Normal")
  WaveEffect(BrickColor.new("White"), RootPart.CFrame * cf(0, -0.5, 0), 10, 1, 10, 2, 0, 2, 0.07)
  for i = 0, 1, 0.5 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(5), math.rad(0), math.rad(0)), 0.4)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
    RW.C0 = clerp(RW.C0, CFrame.new(1.4, 0.5 - 0.1 * math.cos(sine / 8), 0) * angles(math.rad(90), math.rad(0), math.rad(-30)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-0.7, 0.5 - 0.1 * math.cos(sine / 8), -0.5) * angles(math.rad(90), math.rad(0), math.rad(70)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1 + 0.1 * math.cos(sine / 10), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1 + 0.1 * math.cos(sine / 10), 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(-90), math.rad(-90)), 0.5)
  end
  CreateSound("http://www.roblox.com/asset/?id=315743298", RootPart, 1, 1)
  RingEffect(BrickColor.new("White"), RootPart.CFrame * angles(math.rad(90), 0, 0), 10, 10, 1, 2, 2, 0, 0.07)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(-5), math.rad(0), math.rad(0 - 360 * i)), 0.4)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(100)), 0.4)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.7 - 0.1 * math.cos(sine / 8), 0) * angles(math.rad(130), math.rad(0), math.rad(30)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-0.4, 0.7 - 0.1 * math.cos(sine / 8), -0.5) * angles(math.rad(130), math.rad(0), math.rad(70)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1 + 0.1 * math.cos(sine / 10), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(-20)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1 + 0.1 * math.cos(sine / 10), 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(90), math.rad(-100), math.rad(-80)), 0.5)
  end
  attack = false
end

attackthree = function()
  
  attack = true
  local con = Hitbox2.Touched:connect(function(hit)
    
    Damagefunc(Hitbox2, hit, 10, 17, math.random(10, 15), "Normal", RootPart, 0.2, "rbxassetid://199149221", 0.8)
  end
)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(-5), math.rad(0), math.rad(50)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(-5), math.rad(-50)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.7 - 0.1 * math.cos(sine / 8), 0) * angles(math.rad(30), math.rad(0), math.rad(30)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 - 0.1 * math.cos(sine / 8), 0) * angles(math.rad(130), math.rad(0), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1 + 0.1 * math.cos(sine / 10), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(-20)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1 + 0.1 * math.cos(sine / 10), 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(80)), 0.3)
    BaHandleWeld.C0 = clerp(BaHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(90), math.rad(0), math.rad(0)), 0.5)
  end
  CreateSound("http://www.roblox.com/asset/?id=320557413", RootPart, 1, 0.8)
  BlockEffect(BrickColor.new("White"), LeftArm.CFrame * cf(0, -1, 0), 5, 5, 5, 0.5, 0.5, 0.5, 0.07)
  Blade.Transparency = 0
  coroutine.resume(coroutine.create(function()
    
    if dragon == true then
      Torso.Velocity = RootPart.CFrame.lookVector * 100
      SphereEffect(BrickColor.new("White"), Blade1.CFrame, 1, 5, 1, 0.5, 2, 0.5, 0.07)
      Blade1.Transparency = 1
      SphereEffect(BrickColor.new("White"), Blade2.CFrame, 1, 5, 1, 0.5, 2, 0.5, 0.07)
      Blade2.Transparency = 1
      SphereEffect(BrickColor.new("White"), Blade3.CFrame, 1, 5, 1, 0.5, 2, 0.5, 0.07)
      Blade3.Transparency = 1
      SphereEffect(BrickColor.new("White"), Blade4.CFrame, 1, 5, 1, 0.5, 2, 0.5, 0.07)
      Blade4.Transparency = 1
      for i = 1, 3 do
        swait()
        for i = 0, 1, 0.2 do
          swait()
        end
        MagniDamage(MagniHit, 5, 5, 10, 0, "Normal")
        CreateSound("http://www.roblox.com/asset/?id=338586331", RootPart, 1, 2)
        SlashEffect(BrickColor.new("Institutional white"), RootPart.CFrame * cf(0, -1, -5) * angles(math.rad(90), math.random(-50, 50), 0), 0.001, 0.1, 0.1, 0, 0.001, 0.001, 0.07)
      end
      SphereEffect(BrickColor.new("White"), Blade1.CFrame, 1, 5, 1, 0.5, 2, 0.5, 0.07)
      Blade1.Transparency = 0.2
      SphereEffect(BrickColor.new("White"), Blade2.CFrame, 1, 5, 1, 0.5, 2, 0.5, 0.07)
      Blade2.Transparency = 0.2
      SphereEffect(BrickColor.new("White"), Blade3.CFrame, 1, 5, 1, 0.5, 2, 0.5, 0.07)
      Blade3.Transparency = 0.2
      SphereEffect(BrickColor.new("White"), Blade4.CFrame, 1, 5, 1, 0.5, 2, 0.5, 0.07)
      Blade4.Transparency = 0.2
    end
  end
))
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(15), math.rad(0), math.rad(-60)), 0.4)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(60)), 0.4)
    RW.C0 = clerp(RW.C0, CFrame.new(1.4, 0.5 - 0.1 * math.cos(sine / 8), 0) * angles(math.rad(30), math.rad(0), math.rad(30)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5 - 0.1 * math.cos(sine / 8), -0.5) * angles(math.rad(90), math.rad(0), math.rad(70)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1 + 0.1 * math.cos(sine / 10), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1 + 0.1 * math.cos(sine / 10), 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(80)), 0.3)
  end
  Blade.Transparency = 1
  BlockEffect(BrickColor.new("White"), LeftArm.CFrame * cf(0, -1, 0), 5, 5, 5, 0.5, 0.5, 0.5, 0.07)
  con:disconnect()
  attack = false
end

magoc = false
Ultimate = function()
  
  attack = true
  magoc = true
  Humanoid.WalkSpeed = 0
  CreateSound("http://roblox.com/asset/?id=190119264", Torso, 1, 0.8)
  coroutine.resume(coroutine.create(function()
    
    while magoc do
      wait(0.1)
      RingEffect(BrickColor.new("White"), RootPart.CFrame * angles(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 33, 33, 1, -2, -2, 1, 0.07)
    end
  end
))
  for i = 0, 1, 0.05 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(-5), math.rad(0), math.rad(50)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(15), math.rad(0), math.rad(-50)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.7 - 0.1 * math.cos(sine / 8), 0) * angles(math.rad(30), math.rad(0), math.rad(30)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 - 0.1 * math.cos(sine / 8), 0) * angles(math.rad(0), math.rad(0), math.rad(-30)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1 + 0.1 * math.cos(sine / 10), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(-20)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1 + 0.1 * math.cos(sine / 10), 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(80)), 0.3)
    BaHandleWeld.C0 = clerp(BaHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(90), math.rad(0), math.rad(0)), 0.5)
  end
  for i = 0, 1, 0.05 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(-5), math.rad(0), math.rad(50)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(15), math.rad(0), math.rad(-50)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.7 - 0.1 * math.cos(sine / 8), 0) * angles(math.rad(30), math.rad(0), math.rad(30)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 - 0.1 * math.cos(sine / 8), 0) * angles(math.rad(0), math.rad(0), math.rad(-30)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1 + 0.1 * math.cos(sine / 10), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(-20)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1 + 0.1 * math.cos(sine / 10), 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(80)), 0.3)
    BaHandleWeld.C0 = clerp(BaHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(90), math.rad(0), math.rad(0)), 0.5)
  end
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(-5), math.rad(0), math.rad(50)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(-50)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.7 - 0.1 * math.cos(sine / 8), 0) * angles(math.rad(30), math.rad(0), math.rad(30)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 - 0.1 * math.cos(sine / 8), 0) * angles(math.rad(0), math.rad(0), math.rad(-30)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1 + 0.1 * math.cos(sine / 10), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(-20)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1 + 0.1 * math.cos(sine / 10), 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(80)), 0.3)
    BaHandleWeld.C0 = clerp(BaHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(90), math.rad(0), math.rad(0)), 0.5)
  end
  magoc = false
  for i = 0, 1, 0.2 do
    swait()
    for i = 0, 1, 0.5 do
      swait()
    end
    BlockEffect(BrickColor.new("White"), RootPart.CFrame, 50, 50, 50, -3, -3, -3, 0.07)
    SphereEffect(BrickColor.new("White"), RootPart.CFrame, 50, 50, 50, -3, -3, -3, 0.07)
  end
  Cloak()
  Humanoid.WalkSpeed = 24
  dragon = true
  attack = false
end

mouse.Button1Down:connect(function()
  
  if attack == false and attacktype == 1 then
    attackone()
    attacktype = 2
  else
    if attack == false and attacktype == 2 then
      attacktwo()
      attacktype = 3
    else
      if attack == false and attacktype == 3 then
        attackthree()
        attacktype = 1
      end
    end
  end
end
)
local forwards = false
local backwards = false
local left = false
local right = false
mouse.KeyDown:connect(function(k)
  
  k = k:lower()
  if attack == false and co1 <= cooldown1 and k == "z" then
    cooldown1 = 100
    WindBreak()
  else
    if attack == false and co2 <= cooldown2 and k == "x" then
      cooldown2 = 100
      WindBlades()
    else
      if attack == false and co3 <= cooldown3 and k == "c" then
        cooldown3 = 100
        WindBind()
      else
        if attack == false and k == "v" and dragon == false then
          Ultimate()
        else
          if attack == false and k == "w" then
            forwards = true
          else
            if attack == false and k == "s" then
              backwards = true
            else
              if attack == false and k == "a" then
                left = true
              else
                if attack == false and k == "d" then
                  right = true
                end
              end
            end
          end
        end
      end
    end
  end
end
)
local keydown = false
mouse.KeyUp:connect(function(k)
  
  k = k:lower()
  if attack == false and k == "w" then
    forwards = false
  else
    if attack == false and k == "s" then
      backwards = false
    else
      if attack == false and k == "a" then
        left = false
      else
        if attack == false and k == "d" then
          right = false
        end
      end
    end
  end
end
)
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
  if cooldown4 <= co4 and dragon == false then
    cooldown4 = cooldown4 + 0.033333333333333
  end
end

local away = false
local debb = false
truedragon = function()
  
  if debb == true then
    return 
  end
  if cooldown4 <= 0 then
    away = true
    attack = true
    SphereEffect(BrickColor.new("White"), Hitbox.CFrame, 20, 20, 20, 5, 5, 5, 0.07)
    BlockEffect(BrickColor.new("White"), Hitbox.CFrame, 20, 20, 20, 5, 5, 5, 0.07)
    BlockEffect(BrickColor.new("Bright red"), Hitbox.CFrame, 20, 20, 20, 5, 5, 5, 1)
    UnCloak()
    Humanoid.WalkSpeed = 16
    cooldown4 = cooldown4 + 2
    dragon = false
    attack = false
    away = false
    debb = false
  end
  if dragon == true then
    cooldown4 = cooldown4 - 1
    debb = true
    for i = 0, 1, 0.05 do
      swait()
    end
    debb = false
  end
end

while 1 do
  swait()
  updateskills()
  bar4:TweenSize(UDim2.new(1 * (cooldown4 / co4), 0, 1, 0), "Out", "Quad", 0.5)
  bar3:TweenSize(UDim2.new(1 * (cooldown3 / co3), 0, 1, 0), "Out", "Quad", 0.5)
  bar1:TweenSize(UDim2.new(1 * (cooldown1 / co1), 0, 1, 0), "Out", "Quad", 0.5)
  bar2:TweenSize(UDim2.new(1 * (cooldown2 / co2), 0, 1, 0), "Out", "Quad", 0.5)
  if dragon == true then
    Blade1Weld.C0 = clerp(Blade1Weld.C0, cf(0, 0 - 0.5 * math.cos(sine / 20), 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    Blade2Weld.C0 = clerp(Blade2Weld.C0, cf(0, 0 - 0.5 * math.cos(sine / 23), 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    Blade3Weld.C0 = clerp(Blade3Weld.C0, cf(0, 0 - 0.5 * math.cos(sine / 21), 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    Blade4Weld.C0 = clerp(Blade4Weld.C0, cf(0, 0 - 0.5 * math.cos(sine / 24), 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  else
    Blade1Weld.C0 = clerp(Blade1Weld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    Blade2Weld.C0 = clerp(Blade2Weld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    Blade3Weld.C0 = clerp(Blade3Weld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    Blade4Weld.C0 = clerp(Blade4Weld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    Blade1.Transparency = 1
    Blade2.Transparency = 1
    Blade3.Transparency = 1
    Blade4.Transparency = 1
  end
  coroutine.resume(coroutine.create(function()
  
  if away == true then
    return 
  end
  truedragon()
end
))
  Torsovelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude
  velocity = RootPart.Velocity.y
  sine = sine + change
  local hit, pos = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 4, Character)
  if equipped == true or equipped == false then
    if 1 < RootPart.Velocity.y and hit == nil then
      Anim = "Jump"
      if attack == false then
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0 - 0.1 * math.cos((sine) / 10)) * angles(math.rad(0), math.rad(0), math.rad(-20)), 0.3)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-10), math.rad(0), math.rad(20)), 0.3)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 + 0.1 * math.cos((sine) / 7), 0) * angles(math.rad(30), math.rad(0), math.rad(0)), 0.3)
        LW.C0 = clerp(LW.C0, CFrame.new(-0.4, 0.4 + 0.1 * math.cos((sine) / 7), -0.7) * angles(math.rad(0), math.rad(0), math.rad(70)), 0.3)
        RH.C0 = clerp(RH.C0, cf(1, -1 + 0.1 * math.cos((sine) / 10), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
        LH.C0 = clerp(LH.C0, cf(-1, -1 + 0.1 * math.cos((sine) / 10), 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
        FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(-70), math.rad(30), math.rad(170)), 0.5)
      end
    else
      if RootPart.Velocity.y < -1 and hit == nil then
        Anim = "Fall"
        if attack == false then
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0 - 0.1 * math.cos((sine) / 10)) * angles(math.rad(0), math.rad(0), math.rad(-20)), 0.3)
          Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(20)), 0.3)
          RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 + 0.1 * math.cos((sine) / 7), 0) * angles(math.rad(30), math.rad(0), math.rad(0)), 0.3)
          LW.C0 = clerp(LW.C0, CFrame.new(-0.4, 0.4 + 0.1 * math.cos((sine) / 7), -0.7) * angles(math.rad(0), math.rad(0), math.rad(70)), 0.3)
          RH.C0 = clerp(RH.C0, cf(1, -1 + 0.1 * math.cos((sine) / 10), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
          LH.C0 = clerp(LH.C0, cf(-1, -1 + 0.1 * math.cos((sine) / 10), 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
          FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(-70), math.rad(30), math.rad(170)), 0.5)
        end
      else
        if Torsovelocity < 1 and hit ~= nil then
          Anim = "Idle"
          if attack == false then
            change = 1
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.5 - 0.1 * math.cos((sine) / 10)) * angles(math.rad(5), math.rad(0), math.rad(-90)), 0.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
            RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.7 - 0.1 * math.cos((sine) / 8), 0) * angles(math.rad(90), math.rad(0), math.rad(0)), 0.3)
            LW.C0 = clerp(LW.C0, CFrame.new(-0.6, 0.7 - 0.1 * math.cos((sine) / 8), -0.5) * angles(math.rad(90), math.rad(0), math.rad(70)), 0.3)
            RH.C0 = clerp(RH.C0, cf(1, -1 + 0.1 * math.cos((sine) / 10), -0.5) * RHCF * angles(math.rad(0), math.rad(0), math.rad(-30)), 0.3)
            LH.C0 = clerp(LH.C0, cf(-1, -1 + 0.1 * math.cos((sine) / 10), 0) * LHCF * angles(math.rad(-60), math.rad(0), math.rad(0)), 0.3)
            FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(90), math.rad(0), math.rad(80)), 0.3)
          end
        else
          if 2 < Torsovelocity and hit ~= nil then
            Anim = "Walk"
            if attack == false then
              if forwards == true then
                RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0 - 0.1 * math.cos((sine) / 10)) * angles(math.rad(30), math.rad(0), math.rad(-20)), 0.3)
                Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-20), math.rad(0), math.rad(20)), 0.3)
                RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 + 0.1 * math.cos((sine) / 7), 0) * angles(math.rad(30), math.rad(0), math.rad(0)), 0.3)
                LW.C0 = clerp(LW.C0, CFrame.new(-0.4, 0.4 + 0.1 * math.cos((sine) / 7), -0.7) * angles(math.rad(0), math.rad(0), math.rad(70)), 0.3)
                RH.C0 = clerp(RH.C0, cf(1, -1 + 0.1 * math.cos((sine) / 10), 0) * RHCF * angles(math.rad(0 + 30 * math.cos((sine) / 3)), math.rad(0), math.rad(0 + 50 * math.cos((sine) / 3))), 0.3)
                LH.C0 = clerp(LH.C0, cf(-1, -1 + 0.1 * math.cos((sine) / 10), 0) * LHCF * angles(math.rad(0 + 30 * math.cos((sine) / 3)), math.rad(0), math.rad(0 + 50 * math.cos((sine) / 3))), 0.3)
                FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(-100), math.rad(0), math.rad(150)), 0.5)
              else
                if backwards == true then
                  RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0 - 0.1 * math.cos((sine) / 10)) * angles(math.rad(0), math.rad(0), math.rad(-20)), 0.3)
                  Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
                  RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 + 0.1 * math.cos((sine) / 7), 0) * angles(math.rad(30), math.rad(0), math.rad(0)), 0.3)
                  LW.C0 = clerp(LW.C0, CFrame.new(-0.4, 0.4 + 0.1 * math.cos((sine) / 7), -0.7) * angles(math.rad(0), math.rad(0), math.rad(70)), 0.3)
                  RH.C0 = clerp(RH.C0, cf(1, -1 + 0.1 * math.cos((sine) / 10), 0) * RHCF * angles(math.rad(0 + 30 * math.cos((sine) / 3)), math.rad(0), math.rad(0 + 50 * math.cos((sine) / 3))), 0.3)
                  LH.C0 = clerp(LH.C0, cf(-1, -1 + 0.1 * math.cos((sine) / 10), 0) * LHCF * angles(math.rad(0 + 30 * math.cos((sine) / 3)), math.rad(0), math.rad(0 + 50 * math.cos((sine) / 3))), 0.3)
                  FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(-70), math.rad(30), math.rad(170)), 0.5)
                else
                  if left == true then
                    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0 - 0.1 * math.cos((sine) / 10)) * angles(math.rad(0), math.rad(0), math.rad(-30)), 0.3)
                    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
                    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 + 0.1 * math.cos((sine) / 7), 0) * angles(math.rad(30), math.rad(0), math.rad(0)), 0.3)
                    LW.C0 = clerp(LW.C0, CFrame.new(-0.4, 0.4 + 0.1 * math.cos((sine) / 7), -0.7) * angles(math.rad(0), math.rad(0), math.rad(70)), 0.3)
                    RH.C0 = clerp(RH.C0, cf(1, -1 + 0.1 * math.cos((sine) / 10), 0) * RHCF * angles(math.rad(0 + 30 * math.cos((sine) / 3)), math.rad(0), math.rad(0 + 50 * math.cos((sine) / 3))), 0.3)
                    LH.C0 = clerp(LH.C0, cf(-1, -1 + 0.1 * math.cos((sine) / 10), 0) * LHCF * angles(math.rad(0 + 30 * math.cos((sine) / 3)), math.rad(0), math.rad(0 + 50 * math.cos((sine) / 3))), 0.3)
                    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(-70), math.rad(30), math.rad(170)), 0.5)
                  else
                    if right == true then
                      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0 - 0.1 * math.cos((sine) / 10)) * angles(math.rad(0), math.rad(0), math.rad(-10)), 0.3)
                      Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
                      RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 + 0.1 * math.cos((sine) / 7), 0) * angles(math.rad(30), math.rad(0), math.rad(0)), 0.3)
                      LW.C0 = clerp(LW.C0, CFrame.new(-0.4, 0.4 + 0.1 * math.cos((sine) / 7), -0.7) * angles(math.rad(0), math.rad(0), math.rad(70)), 0.3)
                      RH.C0 = clerp(RH.C0, cf(1, -1 + 0.1 * math.cos((sine) / 10), 0) * RHCF * angles(math.rad(0 + 30 * math.cos((sine) / 3)), math.rad(0), math.rad(0 + 50 * math.cos((sine) / 3))), 0.3)
                      LH.C0 = clerp(LH.C0, cf(-1, -1 + 0.1 * math.cos((sine) / 10), 0) * LHCF * angles(math.rad(0 + 30 * math.cos((sine) / 3)), math.rad(0), math.rad(0 + 50 * math.cos((sine) / 3))), 0.3)
                      FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(-70), math.rad(30), math.rad(170)), 0.5)
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