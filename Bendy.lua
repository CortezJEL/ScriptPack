local p = game.Players.LocalPlayer
local char = p.Character
local mouse = p:GetMouse()
local larm = char["Left Arm"]
local rarm = char["Right Arm"]
local lleg = char["Left Leg"]
local rleg = char["Right Leg"]
local hed = char.Head
local torso = char.Torso
local hum = char.Humanoid
local cam = game.Workspace.CurrentCamera
local root = char.HumanoidRootPart
local deb = false
local shot = 0
local debris=game:service"Debris"
local l = game:GetService("Lighting")
local rs = game:GetService("RunService").RenderStepped
ptz = {0.8, 0.85, 0.9, 0.95, 1, 1.05, 1.1}
math.randomseed(os.time())
for i,v in pairs (hed:GetChildren()) do
        if v:IsA("Sound") then
                v:Destroy()
        end
end
--------------------------------------------------------------------

 
hed.face.Texture = "rbxassetid://635120692"
----------------------------------------------------
Debounces = {
CanAttack = true;
NoIdl = false;
Slashing = false;
Slashed = false;
RPunch = false;
RPunched = false;
LPunch = false;
LPunched = false;
}
local Touche = {char.Name, }
----------------------------------------------------
char["Body Colors"].HeadColor = BrickColor.new("White")
char["Body Colors"].TorsoColor = BrickColor.new("White")
char["Body Colors"].LeftArmColor = BrickColor.new("White")
char["Body Colors"].RightArmColor = BrickColor.new("White")
----------------------------------------------------
----------------------------------------------------------------
 
---------------------------- SHIRT AND PANTS --
--------------------------------
shirt = Instance.new("Shirt", char)
shirt.Name = "Shirt"
pants = Instance.new("Pants", char)
pants.Name = "Pants"
char.Shirt.ShirtTemplate = "rbxassetid://713444235"
char.Pants.PantsTemplate = "rbxassetid://687437158"

 ---------------------------------------------------------

--------------
purple = Color3.new(1, 1, 1)
local player = "LocalPlayer"
local Character = game.Players[player].Character
it = Instance.new
vt = Vector3.new
bc = BrickColor.new
cf = CFrame.new
local hed = Character.Head
local ultcooldown = 99999

paly = game.Players.LocalPlayer
p = game.Players.LocalPlayer
char = paly.Character
torso = char.Torso
neck = char.Torso.Neck
hum = char.Humanoid
Player = game:GetService("Players").LocalPlayer
local mouse = Player:GetMouse()
Character = Player.Character
tors = Character.Torso
lleg = Character["Left Leg"]
root = Character.HumanoidRootPart
hed = Character.Head
rleg = Character["Right Leg"]
rarm = Character["Right Arm"]
larm = Character["Left Arm"]
local Effects = {}


function ExplodeMass(rad,par)
	local expart = Instance.new("Part",script.Parent)
	local expart2 = Instance.new("Part",script.Parent)
	local partMesh = Instance.new("SpecialMesh",expart)
	partMesh.MeshType = "Sphere"
	local partMesh2 = Instance.new("SpecialMesh",expart2)
	partMesh2.MeshType = "Sphere"
	local expld = Instance.new("Explosion", script.Parent)
local plode = Instance.new("Sound",workspace)
  plode.SoundId = "rbxassetid://579687077"
  plode.Volume = 1
  plode.Pitch = 0.85
  plode.Looped = false
  plode:Play()
local plodez = Instance.new("Sound",workspace)
  plodez.SoundId = "rbxassetid://288641686"
  plodez.Volume = 1
  plodez.Pitch = 0.75
  plodez.Looped = false
  plodez:Play()
local plodeza = Instance.new("Sound",workspace)
  plodeza.SoundId = "rbxassetid://197161452"
  plodeza.Volume = 0.85
  plodeza.Pitch = 0.65
  plodeza.Looped = false
  plodeza:Play()
local plodezar = Instance.new("Sound",workspace)
  plodezar.SoundId = "rbxassetid://197161452"
  plodezar.Volume = 0.85
  plodezar.Pitch = 0.25
  plodezar.Looped = false
  plodezar:Play()
  local s3 = Instance.new("Sound",workspace)
  s3.SoundId = "rbxassetid://268931189"
  s3.Pitch = 1
  s3.Volume = 1
  s3.Looped = false
  s3:Play()
xay = Instance.new("Sound",workspace)
xay.SoundId = "rbxassetid://419447292"
xay.Pitch = 1
xay.Volume = 2.5
xay:Play()
	expld.BlastRadius = rad
	expld.Position = par.Position
	partMesh.Scale = vt(rad,rad,rad)
	expart.Size = vt(1,1,1)*1.5
	expart.Transparency = 0
	expart.Anchored = true
	expart.Material = "Neon"
	expart.BrickColor = bc("White")
	expart.CFrame = par.CFrame
	partMesh2.Scale = vt(rad,rad,rad)
	expart2.Size = vt(1.15,1.15,1.15)*1.5
	expart2.Transparency = 0.5
	expart2.Anchored = true
	expart2.Material = "Neon"
	expart2.BrickColor = Character.Torso.BrickColor
	expart2.CFrame = par.CFrame
        local value = 1*rad/10
        par:Destroy()
	for i = 0, 300 do
                partMesh.Scale = partMesh.Scale + vt(value,value,value)
		expart.CFrame = expart.CFrame
                partMesh2.Scale = partMesh2.Scale + vt(value,value,value)
		expart2.CFrame = expart.CFrame
                value = value - 0.0175*rad/10
                if value <= 0 then
		expart.Transparency = expart.Transparency + 0.0125
		expart2.Transparency = expart2.Transparency + 0.0125
                value = 0.25
                end
		wait()
	end
  plode.Parent = nil
	expart.Parent = nil
	expart2.Parent = nil
	expld.Parent = nil
end

function ExplodeMass2(rad,par)
	local expart = Instance.new("Part",script.Parent)
	local expart2 = Instance.new("Part",script.Parent)
	local partMesh = Instance.new("SpecialMesh",expart)
	partMesh.MeshType = "Sphere"
	local partMesh2 = Instance.new("SpecialMesh",expart2)
	partMesh2.MeshType = "Sphere"
	local expld = Instance.new("Explosion", script.Parent)
local plode = Instance.new("Sound",workspace)
  plode.SoundId = "rbxassetid://579687077"
  plode.Volume = 1
  plode.Pitch = 0.8
  plode.Looped = false
  plode:Play()
local plodez = Instance.new("Sound",workspace)
  plodez.SoundId = "rbxassetid://288641686"
  plodez.Volume = 1
  plodez.Pitch = 0.7
  plodez.Looped = false
  plodez:Play()
local plodeza = Instance.new("Sound",workspace)
  plodeza.SoundId = "rbxassetid://197161452"
  plodeza.Volume = 0.85
  plodeza.Pitch = 0.6
  plodeza.Looped = false
  plodeza:Play()
local plodezar = Instance.new("Sound",workspace)
  plodezar.SoundId = "rbxassetid://197161452"
  plodezar.Volume = 0.85
  plodezar.Pitch = 0.2
  plodezar.Looped = false
  plodezar:Play()
  local s3 = Instance.new("Sound",workspace)
  s3.SoundId = "rbxassetid://268931189"
  s3.Pitch = 0.85
  s3.Volume = 1
  s3.Looped = false
  s3:Play()
xay = Instance.new("Sound",workspace)
xay.SoundId = "rbxassetid://419447292"
xay.Pitch = 1
xay.Volume = 3.5
xay:Play()
	expld.BlastRadius = rad
	expld.Position = par.Position
	partMesh.Scale = vt(rad,rad,rad)
	expart.Size = vt(1,1,1)*1.5
	expart.Transparency = 0
	expart.Anchored = true
	expart.Material = "Neon"
	expart.BrickColor = bc("Really black")
	expart.CFrame = par.CFrame
	partMesh2.Scale = vt(rad,rad,rad)
	expart2.Size = vt(1.15,1.15,1.15)*1.5
	expart2.Transparency = 0.5
	expart2.Anchored = true
	expart2.Material = "Neon"
	expart2.BrickColor = Character.Torso.BrickColor
	expart2.CFrame = par.CFrame
        local value = 1*rad/10
        par:Destroy()
	for i = 0, 300 do
                partMesh.Scale = partMesh.Scale + vt(value,value,value)
		expart.CFrame = expart.CFrame
                partMesh2.Scale = partMesh2.Scale + vt(value,value,value)
		expart2.CFrame = expart.CFrame
                value = value - 0.0175*rad/10
                if value <= 0 then
		expart.Transparency = expart.Transparency + 0.0125
		expart2.Transparency = expart2.Transparency + 0.0125
                value = 0.25
                end
		wait()
	end
  plode.Parent = nil
	expart.Parent = nil
	expart2.Parent = nil
	expld.Parent = nil
end

function Blaze2()
if ultcooldown >= 30 then
ultcooldown = ultcooldown - 30
wit = Character.Torso.BrickColor.Color
local sloc = Instance.new("Part",workspace)
local msh = Instance.new("SpecialMesh",sloc)
msh.MeshType = "Sphere"
sloc.Size = vt(1,1,1)
sloc.Transparency = 1
sloc.BrickColor = Character.Torso.BrickColor
sloc.Position = hed.Position + vt(0,0,0)
sloc.CanCollide = false
sloc.Shape = "Ball"
sloc.Anchored = true
sloc.Material = "Neon"
local forcefield = Instance.new("ForceField",Character)
local kolor = Instance.new("ColorCorrectionEffect",game.Lighting)
kolor.TintColor = Character.Torso.BrickColor.Color
local glowz = Instance.new("ParticleEmitter")
glowz.LightEmission = 0
glowz.Parent = sloc
glowz.Texture = "rbxassetid://284205403"
glowz.Color = ColorSequence.new(wit)
glowz.Size = NumberSequence.new(15)
glowz.Speed = NumberRange.new(100,250)
glowz.LockedToPart = false
glowz.Transparency = NumberSequence.new(0.75)
glowz.RotSpeed = NumberRange.new(-2000,2000)
glowz.Lifetime = NumberRange.new(1)
glowz.Rate = 50
glowz.VelocitySpread = 9001
  local s = Instance.new("Sound",workspace)
  s.SoundId = "rbxassetid://331888777"
  s.Pitch = 0.45
  s.Volume = 1.5
  s.Looped = false
  s:Play()
  local s2 = Instance.new("Sound",workspace)
  s2.SoundId = "rbxassetid://331888777"
  s2.Pitch = 0.5
  s2.Volume = 1.5
  s2.Looped = false
  s2:Play()
local val = 1*5
for i = 0 , 20 do
sloc.Transparency = sloc.Transparency - 0.055
msh.Scale = msh.Scale + vt(val,val,val)
val = val - 0.05*5
kolor.Brightness = kolor.Brightness - 0.1
kolor.Contrast = kolor.Contrast + 0.1
wait()
end
for i = 0 , 5 do
msh.Scale = msh.Scale + vt(val,val,val)
val = val + 0.05*5
kolor.Brightness = kolor.Brightness + 0.5
kolor.Contrast = kolor.Contrast - 0.5
wait()
end
for i = 0 , 5 do
msh.Scale = msh.Scale + vt(val,val,val)
val = val - 0.05*5
kolor.Brightness = kolor.Brightness - 0.5
kolor.Contrast = kolor.Contrast + 0.5
wait()
end
for i = 0 , 5 do
msh.Scale = msh.Scale + vt(val,val,val)
val = val + 0.05*10
kolor.Brightness = kolor.Brightness + 0.5
kolor.Contrast = kolor.Contrast - 0.5
wait()
end
for i = 0 , 5 do
msh.Scale = msh.Scale + vt(val,val,val)
val = val - 0.05*10
kolor.Brightness = kolor.Brightness - 0.5
kolor.Contrast = kolor.Contrast + 0.5
wait()
end
for i = 0 , 5 do
msh.Scale = msh.Scale + vt(val,val,val)
val = val + 0.05*20
kolor.Brightness = kolor.Brightness + 0.5
kolor.Contrast = kolor.Contrast - 0.5
wait()
end
for i = 0 , 5 do
msh.Scale = msh.Scale + vt(val,val,val)
val = val - 0.05*20
kolor.Brightness = kolor.Brightness - 0.5
kolor.Contrast = kolor.Contrast + 0.5
wait()
end
for i = 0 , 5 do
msh.Scale = msh.Scale + vt(val,val,val)
val = val + 0.05*40
kolor.Brightness = kolor.Brightness + 0.5
kolor.Contrast = kolor.Contrast - 0.5
wait()
end
for i = 0 , 5 do
msh.Scale = msh.Scale + vt(val,val,val)
val = val - 0.05*40
kolor.Brightness = kolor.Brightness - 0.5
kolor.Contrast = kolor.Contrast + 0.5
wait()
end
for i = 0 , 5 do
msh.Scale = msh.Scale + vt(val,val,val)
val = val + 0.05*45
kolor.Brightness = kolor.Brightness + 0.5
kolor.Contrast = kolor.Contrast - 0.5
wait()
end
for i = 0 , 5 do
msh.Scale = msh.Scale + vt(val,val,val)
val = val - 0.05*45
kolor.Brightness = kolor.Brightness - 0.5
kolor.Contrast = kolor.Contrast + 0.5
wait()
end
for i = 0 , 5 do
msh.Scale = msh.Scale + vt(val,val,val)
val = val + 0.05*50
kolor.Brightness = kolor.Brightness + 0.5
kolor.Contrast = kolor.Contrast - 0.5
wait()
end
for i = 0 , 20 do
sloc.Transparency = sloc.Transparency + 0.055
msh.Scale = msh.Scale + vt(val,val,val)
val = val - 0.05*50
wait()
end
kolor:Destroy()
ExplodeMass2(125,sloc)
sloc:Destroy()
forcefield:Destroy()
end
if ultcooldown < 1 then
for i = 0, 29 do
ultcooldown = ultcooldown + 1
wait(1)
end
end
end

function Blaze()
if ultcooldown >= 30 then
local kolor = Instance.new("ColorCorrectionEffect",game.Lighting)
  local see = Instance.new("Sound",workspace)
  see.SoundId = "rbxassetid://21420962"
  see.Pitch = 1
  see.Volume = 2.75
  see.Looped = false
  see:Play()
kolor.Brightness = -1
kolor.Contrast = -1
kolor.TintColor = Character.Torso.BrickColor.Color
wait(0.1)
for i = 0, 9 do 
kolor.Brightness = kolor.Brightness + 0.35
kolor.Contrast = kolor.Contrast + 0.35
wait(0.05)
end
for i = 0, 9 do 
kolor.Brightness = kolor.Brightness - 0.35
kolor.Contrast = kolor.Contrast - 0.35
wait(0.05)
end
kolor:Destroy()
local sloc = Instance.new("Part",workspace)
local msh = Instance.new("SpecialMesh",sloc)
msh.MeshType = "Sphere"
sloc.Size = vt(1,1,1)
sloc.Transparency = 1
sloc.BrickColor = Character.Torso.BrickColor
sloc.Position = hed.Position + vt(0,5,0)
sloc.CanCollide = false
sloc.Shape = "Ball"
sloc.Anchored = true
sloc.Material = "Neon"
  local s = Instance.new("Sound",workspace)
  s.SoundId = "rbxassetid://342793847"
  s.Pitch = 1
  s.Volume = 1
  s.Looped = false
  s:Play()
  local s2 = Instance.new("Sound",workspace)
  s2.SoundId = "rbxassetid://137463716"
  s2.Pitch = 0.25
  s2.Volume = 1
  s2.Looped = false
  s2:Play()
local val = 0.65*5
for i = 0 , 75 do
sloc.Transparency = sloc.Transparency - 0.035
msh.Scale = msh.Scale + vt(val,val,val)
sloc.Position = sloc.Position + vt(0,val,0)
val = val - 0.0075*5
wait()
end
msh.Scale = msh.Scale - vt(1,1,1)
sloc.Transparency = sloc.Transparency + 0.015
local spart = Instance.new("Part",workspace)
local msh2 = Instance.new("SpecialMesh",spart)
msh2.MeshType = "Sphere"
spart.Size = vt(2,2,2)
spart.Shape = "Ball"
spart.BrickColor = Character.Torso.BrickColor
spart.Material = "Neon"
spart.Transparency = 0
spart.Anchored = false
msh2.Scale = msh.Scale/2
spart.Rotation = hed.Rotation
spart.CanCollide = false
spart.Position = sloc.Position + vt(math.random(-0,0),math.random(-0,0),math.random(-0,0))
  local bv = Instance.new("BodyVelocity")
  bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
  bv.velocity = spart.CFrame.lookVector*75
  bv.Parent = spart
  local tick = Instance.new("Sound",workspace)
  tick.SoundId = "rbxassetid://203691467"
  tick.Volume = 2
  tick.Pitch = 0.75
  tick:Play()
sloc:Destroy()
  wait(0.00001)
  pewdiepie=spart.Touched:connect(function(hit)
  ExplodeMass(100,spart)
  end)
sloc:Destroy()
end
if ultcooldown < 1 then
for i = 0, 29 do
ultcooldown = ultcooldown + 1
wait(1)
end
end
end

euler = CFrame.fromEulerAnglesXYZ
angles = CFrame.Angles
mr = math.rad
local Weapon = {}
local p = game.Players.LocalPlayer
local char = p.Character
local mouse = p:GetMouse()
local larm = char["Left Arm"]
local rarm = char["Right Arm"]
local lleg = char["Left Leg"]
local rleg = char["Right Leg"]
local hed = char.Head
local torso = char.Torso
local hum = char.Humanoid
local cam = game.Workspace.CurrentCamera
local root = char.HumanoidRootPart
local deb = false
local shot = 0
local debris=game:service"Debris"
local l = game:GetService("Lighting")
local rs = game:GetService("RunService").RenderStepped
ptz = {0.8, 0.85, 0.9, 0.95, 1, 1.05, 1.1}
math.randomseed(os.time())
for i,v in pairs (hed:GetChildren()) do
        if v:IsA("Sound") then
                v:Destroy()
        end
end

wait(0.016666666666667)
script.Archivable = false
Effects = {}
local Player = game.Players.localPlayer
local Character = Player.Character
local Humanoid = Character.Humanoid
local mouse = Player:GetMouse()
local m = Instance.new("Model", Character)
m.Name = "WeaponModel"
local effect = Instance.new("Model", Character)
effect.Name = "effecsfsafzx"
local demon = Instance.new("Model", Character)
demon.Name = "demdemd"
local LeftArm = Character["Left Arm"]
local RightArm = Character["Right Arm"]
local LeftLeg = Character["Left Leg"]
local RightLeg = Character["Right Leg"]
local do2target = nil
local Head = Character.Head
local Torso = Character.Torso
TorsoColor = Torso.BrickColor
z = Instance.new("Sound", Torso)
z.SoundId = "rbxassetid://0" -- Put Music ID Here.
z.Looped = true
z.Pitch = 0
z.Volume = 0
wait(.1)
z:Play()
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

local co1 = 3
local co2 = 10
local co3 = 15
local co4 = 30
local cooldown1 = 0
local cooldown2 = 0
local cooldown3 = 0
local cooldown4 = 0
local maxEnergy = 100
local Energy = 0
local skill1stam = 1000
local skill2stam = 1000
local skill3stam = 1000
local skill4stam = 1000
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

for _,c in pairs(m:children()) do
  if c.className == "Weld" then
    table.insert(CBladeWelds, R67_PC6072)
    print(R66_PC6093)
  end
end
-- NIGH-OMNI FATAL ERROR at PC6105: Re-wrote register: R67 in 'AssignReg'

-- NIGH-OMNI FATAL ERROR at PC6106: Re-wrote register: R67 in 'AssignReg'

--Hit = CreatePart(demon, Enum.Material.Neon, 0, 0, "Really black", R66_PC6093, R67_PC6072(5, 0.200000003, 5))
-- NIGH-OMNI FATAL ERROR at PC6120: Re-wrote register: R66 in 'AssignReg'

-- NIGH-OMNI FATAL ERROR at PC6134: Re-wrote register: R66 in 'AssignReg'

HitWeld = CreateWeld(demon, Character.HumanoidRootPart, Hit, CFrame.new(0, R66_PC6093, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(R66_PC6093, -3.50004387, 0.0299530029, 0, 1, 0, 0, 0, -1, -1, 0, 0))
CreateMesh("SpecialMesh", Hit, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=1033714", Vector3.new(0, 0, 0), Vector3.new(3, 4, 3))
FakeMotor = CreatePart(demon, Enum.Material.Neon, 0, 1, "Really black", "FakeMotor", Vector3.new(2.01999998, 0.2016, 2.36000013))
FakeMotorWeld = CreateWeld(demon, Hit, FakeMotor, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0199999809, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
Part = CreatePart(demon, Enum.Material.Neon, 0, 0, "Really black", "Part", Vector3.new(2.25000024, 0.200000003, 2.55000019))
PartWeld = CreateWeld(demon, FakeMotor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -5.06998634, 0, -1, 0, 0, 0, -1, 0, 0, 0, 1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=1033714", Vector3.new(0, 0, 0), Vector3.new(2.5, 10, 2.5))
Part = CreatePart(demon, Enum.Material.Neon, 0, 0, "Really black", "Part", Vector3.new(2.25000024, 0.200000003, 2.55000019))
PartWeld = CreateWeld(demon, FakeMotor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -7.1599884, 0, -1, 0, 0, 0, -1, 0, 0, 0, 1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=1033714", Vector3.new(0, 0, 0), Vector3.new(1, 10, 1))
TornadoHat = CreatePart(demon, Enum.Material.Neon, 0.20000000298023, 0.5, "Really black", "TornadoHat", Vector3.new(3, 0.400000006, 3))
TornadoHatWeld = CreateWeld(demon, FakeMotor, TornadoHat, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00997924805, -1.65001106, -0.0699994564, 0, 0, -1, 0, -1, 0, -1, 0, 0))
CreateMesh("SpecialMesh", TornadoHat, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=1051557", Vector3.new(0, 0, 0), Vector3.new(5, 5, 5))
local DBlade = {}
local DBladeWelds = {}
for _,c in pairs(demon:children()) do
  if c.className == "Part" then
    table.insert(DBlade, c)
  end
end
for _,c in pairs(demon:children()) do
  if c.className == "Weld" then
    table.insert(DBladeWelds, c)
    print(c)
  end
end
demon.Parent = nil

Debounces = {
CanAttack = true;
NoIdl = false;
Slashing = false;
Slashed = false;
RPunch = false;
RPunched = false;
LPunch = false;
LPunched = false;
}
local Touche = {char.Name, }
----------------------------------------------------
function lerp(a, b, t) -- Linear interpolation
        return a + (b - a)*t
end

function slerp(a, b, t) --Spherical interpolation
        dot = a:Dot(b)
        if dot > 0.99999 or dot < -0.99999 then
                return t <= 0.5 and a or b
        else
                r = math.acos(dot)
                return (a*math.sin((1 - t)*r) + b*math.sin(t*r)) / math.sin(r)
        end
end

function matrixInterpolate(a, b, t)
        local ax, ay, az, a00, a01, a02, a10, a11, a12, a20, a21, a22 = a:components()
        local bx, by, bz, b00, b01, b02, b10, b11, b12, b20, b21, b22 = b:components()
        local v0 = lerp(Vector3.new(ax, ay, az), Vector3.new(bx , by , bz), t) -- Position
        local v1 = slerp(Vector3.new(a00, a01, a02), Vector3.new(b00, b01, b02), t) -- Vector  right
        local v2 = slerp(Vector3.new(a10, a11, a12), Vector3.new(b10, b11, b12), t) -- Vector  up
        local v3 = slerp(Vector3.new(a20, a21, a22), Vector3.new(b20, b21, b22), t) -- Vector  back
        local t = v1:Dot(v2)
        if not (t < 0 or t == 0 or t > 0) then         -- Failsafe
                return CFrame.new()
        end
        return CFrame.new(
        v0.x, v0.y, v0.z,
        v1.x, v1.y, v1.z,
        v2.x, v2.y, v2.z,
        v3.x, v3.y, v3.z)
end
----------------------------------------------------
function genWeld(a,b)
    local w = Instance.new("Weld",a)
    w.Part0 = a
    w.Part1 = b
    return w
end
function weld(a, b)
    local weld = Instance.new("Weld")
    weld.Name = "W"
    weld.Part0 = a
    weld.Part1 = b
    weld.C0 = a.CFrame:inverse() * b.CFrame
    weld.Parent = a
    return weld;
end
----------------------------------------------------
function Lerp(c1,c2,al)
local com1 = {c1.X,c1.Y,c1.Z,c1:toEulerAnglesXYZ()}
local com2 = {c2.X,c2.Y,c2.Z,c2:toEulerAnglesXYZ()}
for i,v in pairs(com1) do 
com1[i] = v+(com2[i]-v)*al
end
return CFrame.new(com1[1],com1[2],com1[3]) * CFrame.Angles(select(4,unpack(com1)))
end
----------------------------------------------------
newWeld = function(wp0, wp1, wc0x, wc0y, wc0z)
local wld = Instance.new("Weld", wp1)
wld.Part0 = wp0
wld.Part1 = wp1
wld.C0 = CFrame.new(wc0x, wc0y, wc0z)
end
----------------------------------------------------
function Tween(a,b,c)
return a+(b-a)*c
end
----------------------------------------------------
function FindNearestTorso(Position,Distance,SinglePlayer)
    if SinglePlayer then return(SinglePlayer.Torso.CFrame.p -Position).magnitude < Distance end
        local List = {}
        for i,v in pairs(workspace:GetChildren())do
            if v:IsA("Model")then
                if v:findFirstChild("Torso")then
                    if v ~= char then
                        if(v.Torso.Position -Position).magnitude <= Distance then
                            table.insert(List,v)
                        end 
                    end 
                end 
            end 
        end
    return List
end

mod3 = Instance.new("Model",rleg)

function Stomp()
    part=Instance.new('Part',mod3)
    part.Anchored=true
    part.CanCollide=false
    part.FormFactor='Custom'
    part.Size=Vector3.new(.2,.2,.2)
    part.CFrame=rleg.CFrame*CFrame.new(0,-2.4,0)*CFrame.Angles(math.rad(90),0,0)
    part.Transparency=.7
    part.BrickColor=BrickColor.new('Bright green')
    mesh=Instance.new('SpecialMesh',part)
    mesh.MeshId='http://www.roblox.com/asset/?id=3270017'
    mesh.Scale=Vector3.new(25,25,25)
    part2=part:clone()
    part2.Parent=mod3
    part2.BrickColor=BrickColor.new('Bright green')
    mesh2=mesh:clone()
    mesh2.Parent=part2
    mesh2.Scale=Vector3.new(15,15,15)
    part3=part:clone()
    part3.Parent=mod3
    part3.TopSurface=0
    part3.BottomSurface=0
    part3.CFrame=rleg.CFrame*CFrame.new(0,-3,0)
    mesh3=Instance.new('SpecialMesh',part3)
    mesh3.MeshType = 3
    mesh3.Scale=Vector3.new(12,12,12)
    for i,v in pairs(FindNearestTorso(torso.CFrame.p,50))do
        if v:FindFirstChild('Humanoid') then
            v.Humanoid:TakeDamage(math.random(20,60))
            v.Humanoid.PlatformStand = true
            v:FindFirstChild("Torso").Velocity = hed.CFrame.lookVector * 100
        end
    end 
    coroutine.resume(coroutine.create(function() 
        for i=0,3.8,0.05 do
            wait()
            part.CFrame=part.CFrame
            part.Transparency=i
            mesh.Scale=mesh.Scale+Vector3.new(2.8,2.8,2.8)
            part2.CFrame=part2.CFrame
            part2.Transparency=i
            mesh2.Scale=mesh2.Scale+Vector3.new(1,1,1)
            part3.CFrame=part3.CFrame
            part3.Transparency=i
            mesh3.Scale=mesh3.Scale+Vector3.new(1.5,1.5,1.5)
        end
    end))
end
----------------------------------------------------
function nwPrt(prnt,siz,cf,col)
local prt=Instance.new("Part")
prt.Parent=prnt
prt.FormFactor=3
prt.Name="Part"
prt.Size=siz
prt.CanCollide=false
prt.Anchored=true
prt.Locked=true
prt.TopSurface=10
prt.BottomSurface=10
prt.FrontSurface=10
prt.BackSurface=10
prt.LeftSurface=10
prt.RightSurface=10
prt:BreakJoints()
prt.CFrame=cf or CFrame.new(30,10,30)
prt.Material="Neon"
prt.BrickColor=TorsoColor
m=Instance.new("SpecialMesh",prt)
m.MeshType=6
return prt
end
----------------------------------------------------
function nwSnd(prnt,pch,vol,id)
        local s=Instance.new("Sound",prnt)
        s.Pitch=pch
        s.Volume=vol
        s.SoundId="rbxassetid://"..id
        s.PlayOnRemove=true
        return s
end
----------------------------------------------------
function newRay(start,face,range,wat)
        local rey=Ray.new(start.p,(face.p-start.p).Unit*range)
        hit,pos=Workspace:FindPartOnRayWithIgnoreList(rey,wat)
        return rey,hit,pos
end
----------------------------------------------------
function Lerp(c1,c2,al)
local com1 = {c1.X,c1.Y,c1.Z,c1:toEulerAnglesXYZ()}
local com2 = {c2.X,c2.Y,c2.Z,c2:toEulerAnglesXYZ()}
for i,v in pairs(com1) do
com1[i] = v+(com2[i]-v)*al
end
return CFrame.new(com1[1],com1[2],com1[3]) * CFrame.Angles(select(4,unpack(com1)))
end
----------------------------------------------------
newWeld = function(wp0, wp1, wc0x, wc0y, wc0z)
local wld = Instance.new("Weld", wp1)
wld.Part0 = wp0
wld.Part1 = wp1
wld.C0 = CFrame.new(wc0x, wc0y, wc0z)
end
----------------------------------------------------
function weld5(part0, part1, c0, c1)
    weeld=Instance.new("Weld", part0)
    weeld.Part0=part0
    weeld.Part1=part1
    weeld.C0=c0
    weeld.C1=c1
    return weeld
end
----------------------------------------------------
function HasntTouched(plrname)
local ret = true
for _, v in pairs(Touche) do
if v == plrname then
ret = false
end
end
return ret
end
----------------------------------------------------
newWeld(torso, larm, -1.5, 0.5, 0)
larm.Weld.C1 = CFrame.new(0, 0.5, 0)
newWeld(torso, rarm, 1.5, 0.5, 0)
rarm.Weld.C1 = CFrame.new(0, 0.5, 0)
newWeld(torso, hed, 0, 1.5, 0)
newWeld(torso, lleg, -0.5, -1, 0)
lleg.Weld.C1 = CFrame.new(0, 1, 0)
newWeld(torso, rleg, 0.5, -1, 0)
rleg.Weld.C1 = CFrame.new(0, 1, 0)
newWeld(root, torso, 0, -1, 0)
torso.Weld.C1 = CFrame.new(0, -1, 0)
----------------------------------------------------
z = Instance.new("Sound", char)
z.SoundId = "rbxassetid://679359907"--679359907
z.Looped = true
z.Pitch = 1
z.Volume = 4
wait(.1)
z:Play()
----------------------------------------------------
local Transforming = true
hum.WalkSpeed = 0
local fx = Instance.new("Part",torso)
wit = torso.BrickColor.Color
wit2 = Color3.new(0,0,0)
local glowz = Instance.new("ParticleEmitter",fx)
glowz.LightEmission = 1
glowz.Texture = "rbxassetid://284205403"
glowz.Color = ColorSequence.new(wit)
glowz.Size = NumberSequence.new(5)
glowz.Speed = NumberRange.new(25,50)
glowz.LockedToPart = false
glowz.Transparency = NumberSequence.new(0.75)
glowz.RotSpeed = NumberRange.new(-2000,2000)
glowz.Lifetime = NumberRange.new(1)
glowz.Rate = 50000
glowz.VelocitySpread = 9001
local glowz2 = Instance.new("ParticleEmitter",fx)
glowz2.LightEmission = 0.5
glowz.Texture = "rbxassetid://284205403"
glowz2.Color = ColorSequence.new(wit2)
glowz2.Size = NumberSequence.new(5)
glowz2.Speed = NumberRange.new(25,50)
glowz2.LockedToPart = false
glowz2.Transparency = NumberSequence.new(0.75)
glowz2.RotSpeed = NumberRange.new(-2000,2000)
glowz2.Lifetime = NumberRange.new(1)
glowz2.Rate = 50000
glowz2.VelocitySpread = 9001
fx.Anchored = true
fx.Material = "Neon"
fx.CanCollide = false
fx.Locked = true
fx.Transparency = 1
fx.Material = "Neon"
fx.Size = Vector3.new(1,1,1)
fx.TopSurface = "SmoothNoOutlines"
fx.BottomSurface = "SmoothNoOutlines"
fx.BrickColor = BrickColor.new("Really black")
fxm = Instance.new("SpecialMesh",fx)
fxm.MeshType = "Sphere"
local sa2 = Instance.new("Sound",torso)
sa2.SoundId = "rbxassetid://93724183"
sa2.Pitch = 0.5
sa2.Volume = 5
sa2.Looped = false
sa2:Play()
local value = 1
fxm.Scale = Vector3.new(1,1,1)
for i = 1, 20 do rs:wait()
        value = value - 0.05
        fx.Transparency = fx.Transparency - (1/20)
        fx.CFrame = torso.CFrame
        fxm.Scale = fxm.Scale + Vector3.new(value,value,value)
        rs:wait()
end
----------------------------------------------------
GroundWave1 = function()
	local HandCF = CFrame.new(root.Position - Vector3.new(0,3,0)) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
	local Colors = {"White", "Really black"}
		local wave = Instance.new("Part", torso)
		wave.BrickColor = BrickColor.new(Colors[math.random(1,#Colors)])
		wave.Anchored = true
		wave.CanCollide = false
		wave.Locked = true
		wave.Size = Vector3.new(1, 1, 1)
		wave.TopSurface = "Smooth"
		wave.BottomSurface = "Smooth"
		wave.Transparency = 0.35
		wave.CFrame = HandCF
		wm = Instance.new("SpecialMesh", wave)
		wm.MeshId = "rbxassetid://3270017"
		coroutine.wrap(function()
		for i = 1, 30, 1 do
		wm.Scale = Vector3.new(50, 50, 1 + i*50)
		wave.Size = wm.Scale
		wave.CFrame = HandCF
		wave.Transparency = i/30
		wait()
		end
		wait()
		wave:Destroy()
	end)()
end
----------------------------------------------------
GroundWave = function()
        if Transforming == true then
                local value = 5
                local value2 = 10
                local value3 = 20
local sa2 = Instance.new("Sound",torso)
sa2.SoundId = "rbxassetid://413682983"
sa2.Pitch = 1
sa2.Volume = 10
sa2.Looped = false
sa2:Play()
                local wave = Instance.new("Part", torso)
local glowz = Instance.new("ParticleEmitter",wave)
glowz.LightEmission = 1
glowz.Texture = "rbxassetid://284205403"
glowz.Color = ColorSequence.new(wit)
glowz.Size = NumberSequence.new(30)
glowz.Speed = NumberRange.new(25,100)
glowz.LockedToPart = false
glowz.Transparency = NumberSequence.new(0.75)
glowz.RotSpeed = NumberRange.new(-2000,2000)
glowz.Lifetime = NumberRange.new(1)
glowz.Rate = 50000
glowz.VelocitySpread = 9001
local glowz2 = Instance.new("ParticleEmitter",wave)
glowz2.LightEmission = 1
glowz.Texture = "rbxassetid://284205403"
glowz2.Color = ColorSequence.new(wit)
glowz2.Size = NumberSequence.new(30)
glowz2.Speed = NumberRange.new(25,100)
glowz2.LockedToPart = false
glowz2.Transparency = NumberSequence.new(0.75)
glowz2.RotSpeed = NumberRange.new(-2000,2000)
glowz2.Lifetime = NumberRange.new(1)
glowz2.Rate = 50000
glowz2.VelocitySpread = 9001
                wave.BrickColor = TorsoColor
                wave.Anchored = true
                wave.CanCollide = false
                wave.Locked = true
                wave.Size = Vector3.new(1, 1, 1)
                wave.TopSurface = "Smooth"
                wave.BottomSurface = "Smooth"
                wave.Transparency = 0.35
                wave.CFrame = fx.CFrame
                wave.Material = "Neon"
                wm = Instance.new("SpecialMesh", wave)
                wm.MeshType = "Sphere"
                wm.Scale = Vector3.new(1,1,1)
                local wave2 = Instance.new("Part", torso)
                wave2.BrickColor = TorsoColor
                wave2.Anchored = true
                wave2.CanCollide = false
                wave2.Locked = true
                wave2.Size = Vector3.new(1, 1, 1)
                wave2.TopSurface = "Smooth"
                wave2.BottomSurface = "Smooth"
                wave2.Transparency = 0.35
                wave2.CFrame = fx.CFrame
                wave2.Material = "Neon"
                wm2 = Instance.new("SpecialMesh", wave2)
                wm2.MeshType = "FileMesh"
                wm2.MeshId = "http://www.roblox.com/asset/?id=3270017"
                wm2.Scale = Vector3.new(1,1,1)
                local wave3 = Instance.new("Part", torso)
                wave3.BrickColor = BrickColor.new("Really black")
                wave3.Anchored = true
                wave3.CanCollide = false
                wave3.Locked = true
                wave3.Size = Vector3.new(1, 1, 1)
                wave3.TopSurface = "Smooth"
                wave3.BottomSurface = "Smooth"
                wave3.Transparency = 0.35
                wave3.CFrame = fx.CFrame
                wave3.Material = "Neon"
                wm3 = Instance.new("SpecialMesh", wave3)
                wm3.MeshType = "FileMesh"
                wm3.MeshId = "http://www.roblox.com/asset/?id=3270017"
                wm3.Scale = Vector3.new(1,1,1)
                coroutine.wrap(function()
                for i = 1, 18, 1 do
                value = value - 0.5
                value2 = value2 - 0.75*1.5
                value3 = value3 - 0.475*1.5
                wm.Scale = wm.Scale + Vector3.new(value*3.5,value*3.5,value*3.5)
                wm2.Scale = wm.Scale + Vector3.new(value2*3.5,value2*3.5,0.5)
                wm3.Scale = wm.Scale + Vector3.new(value3*3.5,value3*3.5,0.25)
                --wave.Size = wm.Scale
                wave.CFrame = fx.CFrame
                wave.Transparency = i/14
                --wave2.Size = wm2.Scale
                wave2.CFrame = fx.CFrame
                wave2.Rotation = Vector3.new(90, 0, 0)
                wave2.Transparency = i/14
                --wave3.Size = wm3.Scale
                wave3.CFrame = fx.CFrame
                wave3.Rotation = Vector3.new(90, 0, 0)
                wave3.Transparency = i/14
                wait()
                glowz.Rate = 0
                glowz2.Rate = 0
                end
                wait()
                wave:Destroy()
                wave2:Destroy()
                wave3:Destroy()
        end)()
        elseif Transforming == false then
        wait()
        end
end

for i = 1, 100 do rs:wait()
        fx.CFrame = torso.CFrame
end

Spawn(function()
	while wait(1) do
		GroundWave()
	end
end)

wait(4)

Transforming = false

local value2 = 1
for i = 1, 20 do rs:wait()
        value2 = value2 - 0.05
        glowz.Rate = 0
        glowz2.Rate = 0
        fx.Transparency = fx.Transparency + (1/20)
        fx.CFrame = torso.CFrame
        fxm.Scale = fxm.Scale + Vector3.new(value2,value2,value2)
        rs:wait()
end
glowz:Destroy()
glowz2:Destroy()

local HandCF = CFrame.new(root.Position - Vector3.new(0,3,0)) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
        local valuer = 5
        local valuer2 = 10
        local valuer3 = 15
local sa2 = Instance.new("Sound",torso)
sa2.SoundId = "rbxassetid://130972023"
sa2.Pitch = 1
sa2.Volume = 5
sa2.Looped = false
sa2:Play()
local sar2 = Instance.new("Sound",torso)
sar2.SoundId = "rbxassetid://153274423"
sar2.Pitch = 1
sar2.Volume = 5
sar2.Looped = false
sar2:Play()
        local wave = Instance.new("Part", torso)
        wave.BrickColor = TorsoColor
        wave.Anchored = true
        wave.CanCollide = false
        wave.Locked = true
        wave.Size = Vector3.new(1, 1, 1)
        wave.TopSurface = "Smooth"
        wave.BottomSurface = "Smooth"
        wave.Transparency = 0.35
        wave.CFrame = HandCF
        wm = Instance.new("SpecialMesh", wave)
        wm.MeshId = "rbxassetid://3270017"
        local wave2 = Instance.new("Part", torso)
        wave2.BrickColor = BrickColor.new("Really black")
        wave2.Anchored = true
        wave2.CanCollide = false
        wave2.Locked = true
        wave2.Size = Vector3.new(1, 1, 1)
        wave2.TopSurface = "Smooth"
        wave2.BottomSurface = "Smooth"
        wave2.Transparency = 0.35
        wave2.CFrame = HandCF
        wm2 = Instance.new("SpecialMesh", wave2)
        wm2.MeshId = "rbxassetid://3270017"
        local wave3 = Instance.new("Part", torso)
        wave3.BrickColor = TorsoColor
        wave3.Anchored = true
        wave3.CanCollide = false
        wave3.Locked = true
        wave3.Size = Vector3.new(1, 1, 1)
        wave3.TopSurface = "Smooth"
        wave3.BottomSurface = "Smooth"
        wave3.Transparency = 0.35
        wave3.CFrame = HandCF
        wm3 = Instance.new("SpecialMesh", wave3)
        wm3.MeshId = "rbxassetid://3270017"
        coroutine.wrap(function()
        for i = 1, 14, 1 do
        valuer = valuer - 0.35
        valuer2 = valuer - 0.45
        valuer3 = valuer3 - 0.475
        wm.Scale = wm.Scale + Vector3.new(valuer*2.5,valuer*2.5, 1 + i*200)
        wave.Size = wm.Scale
        wave.CFrame = HandCF
        wave.Transparency = i/14
        wm2.Scale = wm2.Scale + Vector3.new(valuer2*2.5,valuer2*2.5, 0 + i*10)
        wave2.Size = wm2.Scale
        wave2.CFrame = HandCF
        wave2.Transparency = i/14
        wm3.Scale = wm3.Scale + Vector3.new(valuer3*2.5,valuer3*2.5, 1)
        wave3.Size = wm2.Scale
        wave3.CFrame = HandCF
        wave3.Transparency = i/14
        wait()
        end
        wait()
        wave:Destroy()
        wave2:Destroy()
end)()
hum.WalkSpeed = 16
----------------------------------------------------
local cor = Instance.new("Part", char)
cor.Name = "Thingy"
cor.Locked = true
cor.BottomSurface = 0
cor.CanCollide = false
cor.Size = Vector3.new(1, 13, 1)
cor.Transparency = 1
cor.TopSurface = 0
corw = Instance.new("Weld", cor)
corw.Part0 = rarm
corw.Part1 = cor
corw.C0 = CFrame.new(0, -1, -1.1) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
corw.C1 = CFrame.new(0, 0, 0)
weld1 = Instance.new("Weld", char)
weld1.Part0 = cor
weld1.Part1 = p6
weld1.C0 = CFrame.new(0, 0, 0)
----------------------------------------------------
Blast = function()
	local Colors = {"Really black", "Really black"}
		local wave = Instance.new("Part", torso)
		wave.BrickColor = BrickColor.new(Colors[math.random(1,#Colors)])
		wave.Anchored = true
		wave.CanCollide = false
		wave.Locked = true
		wave.Size = Vector3.new(1, 1, 1)
		wave.TopSurface = "Smooth"
		wave.BottomSurface = "Smooth"
		wave.Transparency = 0.35
		wave.CFrame = rarm.CFrame
		wm = Instance.new("SpecialMesh", wave)
		wm.MeshType = "Sphere"
		wm.Scale = Vector3.new(1,1,1)
		z = Instance.new("Sound",wave)
		z.SoundId = "rbxassetid://237035051"
		z.Volume = 1
		z.Pitch = .9
		z:Play()
		coroutine.wrap(function()
		for i = 1, 30, 1 do
		wave.Size = Vector3.new(1 + i*4, 1 + i*4, 1 + i*4)
		--wave.Size = wm.Scale
		wave.CFrame = rarm.CFrame
		wave.Transparency = (1/14)
		rs:wait()
		end
		rs:wait()
		wave:Destroy()
		z:Destroy()
	end)()
end
----------------------------------------------------
rarm.Touched:connect(function(ht)
    hit = ht.Parent
    if ht and hit:IsA("Model") then
            if hit:FindFirstChild("Humanoid") then
                if hit.Name ~= p.Name then
                    if Debounces.RPunch == true and Debounces.RPunched == false then
                            Debounces.RPunched = true
                                hit:FindFirstChild("Humanoid"):TakeDamage(math.random(5,8))
                                    if Debounces.ks==true then
                                    z = Instance.new("Sound",hed)
                                    z.SoundId = "rbxassetid://169380525"
                                                                        z.Pitch = ptz[math.random(1,#ptz)]
                                    z.Volume = 1
                                    z:Play()
                                    end
                            wait(.2)
                            Debounces.RPunched = false
                    end
                end
            end
    elseif ht and hit:IsA("Hat") then
        if hit.Parent.Name ~= p.Name then
            if hit.Parent:FindFirstChild("Humanoid") then
                   if Debounces.RPunch == true and Debounces.RPunched == false then
                            Debounces.RPunched = true
                            hit.Parent:FindFirstChild("Humanoid"):TakeDamage(math.random(5,8))
                                    if Debounces.ks==true then
                                    z = Instance.new("Sound",hed)
                                    z.SoundId = "rbxassetid://169380525"
                                                                        z.Pitch = ptz[math.random(1,#ptz)]
                                    z.Volume = 1
                                    z:Play()
                                    end
                            wait(.2)
                Debounces.RPunched = false
                                end
            end
        end
    end
end)
larm.Touched:connect(function(ht)
    hit = ht.Parent
    if ht and hit:IsA("Model") then
            if hit:FindFirstChild("Humanoid") then
                if hit.Name ~= p.Name then
                    if Debounces.LPunch == true and Debounces.LPunched == false then
                            Debounces.LPunched = true
                                hit:FindFirstChild("Humanoid"):TakeDamage(math.random(4,8))
                                    if Debounces.ks2==true then
                                    z = Instance.new("Sound",hed)
                                    z.SoundId = "rbxassetid://169380525"
                                                                        z.Pitch = ptz[math.random(1,#ptz)]
                                    z.Volume = 1
                                    z:Play()
                                    end
                            wait(.2)
                        Debounces.LPunched = false
                    end
                end
            end
    elseif ht and hit:IsA("Hat") then
        if hit.Parent.Name ~= p.Name then
            if hit.Parent:FindFirstChild("Humanoid") then
                   if Debounces.LPunch == true and Debounces.LPunched == false then
                            Debounces.LPunched = true
                            hit.Parent:FindFirstChild("Humanoid"):TakeDamage(math.random(4,8))
                                    if Debounces.ks2==true then
                                    z = Instance.new("Sound",hed)
                                    z.SoundId = "rbxassetid://169380525"
                                                                        z.Pitch = ptz[math.random(1,#ptz)]
                                    z.Volume = 1
                                    z:Play()
                                    end
                            wait(.2)
                Debounces.LPunched = false
                                end
            end
        end
    end
end)
----------------------------------------------------
mod4 = Instance.new("Model",char)

ptez = {0.7, 0.8, 0.9, 1}

function FindNearestTorso(Position,Distance,SinglePlayer)
    if SinglePlayer then return(SinglePlayer.Torso.CFrame.p -Position).magnitude < Distance end
        local List = {}
        for i,v in pairs(workspace:GetChildren())do
            if v:IsA("Model")then
                if v:findFirstChild("Torso")then
                    if v ~= char then
                        if(v.Torso.Position -Position).magnitude <= Distance then
                            table.insert(List,v)
                        end
                    end
                end
            end
        end
    return List
end

function Punch()
    part=Instance.new('Part',mod4)
    part.Anchored=true
    part.CanCollide=false
    part.FormFactor='Custom'
    part.Size=Vector3.new(.2,.2,.2)
    part.CFrame=root.CFrame*CFrame.new(0,1.5,-2.4)*CFrame.Angles(math.rad(0),0,0)
    part.Transparency=.7
    part.BrickColor=BrickColor.new('Really black')
    mesh=Instance.new('SpecialMesh',part)
    mesh.MeshId='http://www.roblox.com/asset/?id=3270017'
    mesh.Scale=Vector3.new(3,3,3)
    part2=Instance.new('Part',mod4)
    part2.Anchored=true
    part2.CanCollide=false
    part2.FormFactor='Custom'
    part2.Size=Vector3.new(.2,.2,.2)
    part2.CFrame=root.CFrame*CFrame.new(0,1.5,-2.4)*CFrame.Angles(math.rad(90),0,0)
    part2.Transparency=.7
    part2.BrickColor=BrickColor.new('Really black')
    mesh2=Instance.new('SpecialMesh',part2)
    mesh2.MeshId='http://www.roblox.com/asset/?id=20329976'
    mesh2.Scale=Vector3.new(3,1.5,3)
    for i,v in pairs(FindNearestTorso(torso.CFrame.p,4))do
        if v:FindFirstChild('Humanoid') then
            v.Humanoid:TakeDamage(math.random(2,6))
        end
    end
    coroutine.resume(coroutine.create(function()
        for i=0,0.62,0.4 do
            wait()
            part.CFrame=part.CFrame
            part.Transparency=i
            mesh.Scale=mesh.Scale+Vector3.new(0.4,0.4,0.4)
            part2.CFrame=part2.CFrame
            part2.Transparency=i
            mesh2.Scale=mesh2.Scale+Vector3.new(0.4,0.2,0.4)
            end
        part.Parent=nil
        part2.Parent=nil
    end))
end
----------------------------------------------------
rarm.Touched:connect(function(ht)
    hit = ht.Parent
    if ht and hit:IsA("Model") then
            if hit:FindFirstChild("Humanoid") then
                if hit.Name ~= p.Name then
                    if Debounces.RPunch == true and Debounces.RPunched == false then
                            Debounces.RPunched = true
                                hit:FindFirstChild("Humanoid"):TakeDamage(math.random(5,8))
                                    if Debounces.ks==true then
                                    z = Instance.new("Sound",hed)
                                    z.SoundId = "rbxassetid://169380525"
									z.Pitch = ptz[math.random(1,#ptz)]
                                    z.Volume = 1
                                    z:Play()
                                    end
                            wait(.2)
                            Debounces.RPunched = false
                    end
                end
            end
    elseif ht and hit:IsA("Hat") then
        if hit.Parent.Name ~= p.Name then
            if hit.Parent:FindFirstChild("Humanoid") then
                   if Debounces.RPunch == true and Debounces.RPunched == false then
                            Debounces.RPunched = true
                            hit.Parent:FindFirstChild("Humanoid"):TakeDamage(math.random(5,8))
                                    if Debounces.ks==true then
                                    z = Instance.new("Sound",hed)
                                    z.SoundId = "rbxassetid://169380525"
									z.Pitch = ptz[math.random(1,#ptz)]
                                    z.Volume = 1
                                    z:Play()
                                    end
                            wait(.2)
                Debounces.RPunched = false
				end
            end
        end
    end
end)
larm.Touched:connect(function(ht)
    hit = ht.Parent
    if ht and hit:IsA("Model") then
            if hit:FindFirstChild("Humanoid") then
                if hit.Name ~= p.Name then
                    if Debounces.LPunch == true and Debounces.LPunched == false then
                            Debounces.LPunched = true
                                hit:FindFirstChild("Humanoid"):TakeDamage(math.random(4,8))
                                    if Debounces.ks2==true then
                                    z = Instance.new("Sound",hed)
                                    z.SoundId = "rbxassetid://169380525"
									z.Pitch = ptz[math.random(1,#ptz)]
                                    z.Volume = 1
                                    z:Play()
                                    end
                            wait(.2)
                            Debounces.LPunched = false
                    end
                end
            end
    elseif ht and hit:IsA("Hat") then
        if hit.Parent.Name ~= p.Name then
            if hit.Parent:FindFirstChild("Humanoid") then
                   if Debounces.LPunch == true and Debounces.LPunched == false then
                            Debounces.LPunched = true
                            hit.Parent:FindFirstChild("Humanoid"):TakeDamage(math.random(4,8))
                                    if Debounces.ks2==true then
                                    z = Instance.new("Sound",hed)
                                    z.SoundId = "rbxassetid://169380525"
									z.Pitch = ptz[math.random(1,#ptz)]
                                    z.Volume = 1
                                    z:Play()
                                    end
                            wait(.2)
                Debounces.LPunched = false
				end
            end
        end
    end
end)
----------------------------------------------------
local player = game.Players.LocalPlayer
local pchar = player.Character
local mouse = player:GetMouse()
local cam = workspace.CurrentCamera

local rad = math.rad

local keysDown = {}
local flySpeed = 0
local MAX_FLY_SPEED = 3000

local canFly = false
local flyToggled = false

local forward, side = 0, 0
local lastForward, lastSide = 0, 0

local floatBP = Instance.new("BodyPosition")
floatBP.maxForce = Vector3.new(0, math.huge, 0)
local flyBV = Instance.new("BodyVelocity")
flyBV.maxForce = Vector3.new(9e9, 9e9, 9e9)
local turnBG = Instance.new("BodyGyro")
turnBG.maxTorque = Vector3.new(math.huge, math.huge, math.huge)

mouse.KeyDown:connect(function(key)
        keysDown[key] = true

        if key == "f" then
                flyToggled = not flyToggled

        if not flyToggled then
                stanceToggle = "Normal"
                floatBP.Parent = nil
                flyBV.Parent = nil
                turnBG.Parent = nil
                root.Velocity = Vector3.new()
                pchar.Humanoid.PlatformStand = false
        end
end

end)
mouse.KeyUp:connect(function(key)
        keysDown[key] = nil
end)

local function updateFly()

        if not flyToggled then return end

        lastForward = forward
        lastSide = side

        forward = 0
        side = 0

        if keysDown.w then
                forward = forward + 1
        end
        if keysDown.s then
                forward = forward - 1
        end
        if keysDown.a then
                side = side - 1
        end
        if keysDown.d then
                side = side + 1
        end

        canFly = (forward ~= 0 or side ~= 0)

        if canFly then
                stanceToggle = "Floating"
                turnBG.Parent = root
                floatBP.Parent = nil
                flyBV.Parent = root

                flySpeed = flySpeed + 1 + (flySpeed / MAX_FLY_SPEED)
                if flySpeed > MAX_FLY_SPEED then flySpeed = MAX_FLY_SPEED end
        else
                floatBP.position = root.Position
                floatBP.Parent = root

                flySpeed = flySpeed - 1
                if flySpeed < 0 then flySpeed = 0 end
        end

        local camCF = cam.CoordinateFrame
        local in_forward = canFly and forward or lastForward
        local in_side = canFly and side or lastSide

        flyBV.velocity = ((camCF.lookVector * in_forward) + (camCF * CFrame.new(in_side,
in_forward * 0.2, 0).p) - camCF.p) * flySpeed

        turnBG.cframe = camCF * CFrame.Angles(-rad(forward * (flySpeed / MAX_FLY_SPEED)), 0,
0)
end

game:service'RunService'.RenderStepped:connect(function()
        if flyToggled then
                pchar.Humanoid.PlatformStand = true
        end
        updateFly()
end)
-------------------------------
mouse.KeyDown:connect(function(key)
	if key == "q" then
		if Debounces.CanAttack == true then
			Debounces.CanAttack = false
			Debounces.NoIdl = true
			Debounces.on = true
			function FindNearestTorso(Position,Distance,SinglePlayer)
				if SinglePlayer then return(SinglePlayer.Torso.CFrame.p -Position).magnitude < Distance end
					local List = {}
					for i,v in pairs(workspace:GetChildren())do
						if v:IsA("Model")then
							if v:findFirstChild("Torso")then
								if v ~= char then
									if(v.Torso.Position -Position).magnitude <= Distance then
										table.insert(List,v)
									end
								end
							end
						end
					end
				return List
			end
	z = Instance.new("Sound",workspace)
	z.SoundId = "rbxassetid://232213955"
	z.Pitch = 0.75
	z.Volume = 5
	wait(0.2)
	z:Play()
	sp = Instance.new("Part",rarm)
	sp.Anchored = true
	sp.CanCollide = false
	sp.Locked = true
	sp.Transparency = 0
	sp.Material = "Neon"
	sp.Size = Vector3.new(2,2,2)
	sp.TopSurface = "SmoothNoOutlines"
	sp.BottomSurface = "SmoothNoOutlines"
	sp.BrickColor = TorsoColor
	spm = Instance.new("SpecialMesh",sp)
	spm.MeshType = "Sphere"
	spm.Scale = Vector3.new(42,42,42)
	sp2 = Instance.new("Part", rarm)
	sp2.Name = "Energy"
	sp2.BrickColor = TorsoColor
	sp2.Size = Vector3.new(1, 1, 1)
	sp2.Shape = "Ball"
	sp2.CanCollide = false
	sp2.Anchored = true
	sp2.Locked = true
	sp2.TopSurface = 0
	sp2.BottomSurface = 0
	sp2.Transparency = 1
	spm2 = Instance.new("SpecialMesh",sp2)
	spm2.MeshId = "rbxassetid://9982590"
	spm2.Scale = Vector3.new(4,4,4)
	sp3 = Instance.new("Part", rarm)
	sp3.Name = "Energy"
	sp3.BrickColor = TorsoColor
	sp3.Size = Vector3.new(1, 1, 1)
	sp3.Shape = "Ball"
	sp3.CanCollide = false
	sp3.Anchored = true
	sp3.Locked = true
	sp3.TopSurface = 0
	sp3.BottomSurface = 0
	sp3.Transparency = 1
	spm3 = Instance.new("SpecialMesh",sp2)
	spm3.MeshId = "rbxassetid://9982590"
	spm3.Scale = Vector3.new(8,8,8)
	for i = 1, 20 do
		spm.Scale = spm.Scale - Vector3.new(2,2,2)
		sp.CFrame = root.CFrame*CFrame.new(0,1,-2)
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.62,0)*CFrame.Angles(math.rad(-6),math.rad(-6),math.rad(8)), 0.4)
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.62,0)*CFrame.Angles(math.rad(-6),math.rad(6),math.rad(-8)), 0.4)
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(0),0), 0.4)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(0), math.rad(0)), 0.4)
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-8)), 0.4)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(8)), 0.4)
		if Debounces.on == false then break end
		rs:wait()
	end
	for i = 1, 100, 20 do rs:wait()
		sp.CFrame = root.CFrame*CFrame.new(0,1,-2)
	end
	for i = 1, 20 do
		sp.CFrame = root.CFrame*CFrame.new(0,1,-2)
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.62,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(8)), 0.4)
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.62,.2)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-40)), 0.4)
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(10),math.rad(-30),0), 0.4)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(40), math.rad(0)), 0.4)
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-8)), 0.4)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(8)), 0.4)
		if Debounces.on == false then break end
		rs:wait()
	end
	sp.Transparency = 1
	for i = 1, 20 do
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.62,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(8)), 0.4)
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.2,0.62,-.2)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(40)), 0.4)
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 0.4)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(-50), math.rad(0)), 0.4)
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-8)), 0.4)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(8)), 0.4)
		if Debounces.on == false then break end
		rs:wait()
	end
	wait(1)
	sp.Transparency = 0
	sp2.Transparency = 0.84
	for i = 1, 20 do
		--spm.Scale = spm.Scale - Vector3.new(1,1,1)
		sp.CFrame = rarm.CFrame*CFrame.new(0,-1,0)
		sp2.CFrame = sp.CFrame * CFrame.new(0,0,0) * CFrame.Angles(math.rad(-i), math.rad(-i), math.rad(i))
		sp3.CFrame = sp.CFrame * CFrame.new(0,0,0) * CFrame.Angles(math.rad(-i), math.rad(-i), math.rad(i))
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.55,0)*CFrame.Angles(math.rad(110),math.rad(-6),math.rad(140)), 0.4)
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.55,0)*CFrame.Angles(math.rad(80),math.rad(6),math.rad(-40)), 0.2)
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(0),math.rad(30),0), 0.2)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-30), math.rad(0)), 0.3)
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(20), 0, math.rad(-14)), 0.2)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-16), 0, math.rad(8)), 0.2)
		if Debounces.on == false then break end
		rs:wait()
	end
	for i = 1, 2880, 50 do
		rs:wait()
		sp.CFrame = rarm.CFrame*CFrame.new(0,-1,0)
		sp2.CFrame = rarm.CFrame * CFrame.new(0,-1,0) * CFrame.Angles(math.rad(-i/10), math.rad(-i/10), math.rad(i/10))
		sp3.CFrame = rarm.CFrame * CFrame.new(0,-1,0) * CFrame.Angles(math.rad(-i/-10), math.rad(-i/-10), math.rad(i/-10))
		rs:wait()
	end
	sp:Destroy()
	sp2:Destroy()
	sp3:Destroy()
	local X = Instance.new("Part",char)
	local O = Instance.new("ObjectValue",X)
	O.Name = "creator"
	X.Locked = true
	X.Name = "Shell"
	X.Anchored = false
	X.CanCollide = false
	X.Transparency = 0
	X.Reflectance = 0
	X.BottomSurface = 0
	X.TopSurface = 0
	X.Shape = 0
	local V = Instance.new("ObjectValue",X)
	V.Value = char
	V.Name = "creator"
	X.BrickColor = TorsoColor
	X.Size = Vector3.new(2,2,2)
	X.Material = "Neon"
	local Z = Instance.new("SpecialMesh",X)
	Z.MeshType = "Sphere"
	Z.Scale = Vector3.new(0.5,0.5,1)
	X.CFrame = rarm.CFrame*CFrame.new(-3,0,0)
	local bv = Instance.new("BodyVelocity",X)
	bv.maxForce = Vector3.new(99999,99999,99999)
	X.CFrame = CFrame.new(X.Position,mouse.Hit.p)
	bv.velocity = X.CFrame.lookVector*75

	Explode = X.Touched:connect(function(hit)
		if hit ~= char and hit.Name ~= "Shell" then
			local cf = X.CFrame
			bv:Destroy()
			X.Anchored = true
			Z:Remove()
			Explode:disconnect()
			X.Size = Vector3.new(6,6,6)
			X.Touched:connect(function(hit) end)
			X.CanCollide = false
			local part3 = Instance.new("Part", rarm)
			part3.Anchored=true
			part3.CanCollide=false
			part3.Locked = true
			part3.TopSurface = "SmoothNoOutlines"
			part3.BottomSurface = "SmoothNoOutlines"
			part3.FormFactor='Custom'
			part3.Size=Vector3.new(2,2, 2)
			part3.CFrame=X.CFrame
			part3.Transparency=0
			part3.BrickColor=TorsoColor
			local mesh3 = Instance.new("SpecialMesh",part3)
			mesh3.MeshType = "Sphere"
			mesh3.Scale = Vector3.new(2,2,2)
			--debris:AddItem(X,8)
			local part4 = Instance.new("Part", rarm)
			part4.Material = "Neon"
			part4.Anchored=true
			part4.CanCollide=false
			part4.Locked = true
			part4.TopSurface = "SmoothNoOutlines"
			part4.BottomSurface = "SmoothNoOutlines"
			part4.FormFactor='Custom'
			part4.Size=Vector3.new(2,2, 2)
			part4.CFrame=X.CFrame
			part4.Transparency=0
			part4.BrickColor=BrickColor.new("Black")
			local mesh4 = Instance.new("SpecialMesh",part4)
			mesh4.MeshType = "Sphere"
			mesh4.Scale = Vector3.new(1,1,1)
			local part7 = Instance.new("Part", rarm)
			part7.Material = "Neon"
			part7.Anchored=true
			part7.CanCollide=false
			part7.Locked = true
			part7.TopSurface = "SmoothNoOutlines"
			part7.BottomSurface = "SmoothNoOutlines"
			part7.FormFactor='Custom'
			part7.Size=Vector3.new(2,2, 2)
			part7.CFrame=X.CFrame
			part7.Transparency=0
			part7.BrickColor=BrickColor.new("Really black")
			local mesh7 = Instance.new("SpecialMesh",part7)
			mesh7.MeshType = "Sphere"
			mesh7.Scale = Vector3.new(0.2, 0.2, 0.2)
		--[[X.Touched:connect(function(ht)
				hit = ht.Parent
			if ht and hit:IsA("Model") then
					if hit:FindFirstChild("Humanoid") then
						if hit.Name ~= p.Name then
							hit:FindFirstChild("Humanoid"):TakeDamage(math.random(4,6))
							wait(.3)
						end
					end
			elseif ht and hit:IsA("Hat") then
				if hit.Parent.Name ~= p.Name then
					if hit.Parent:FindFirstChild("Humanoid") then
						hit.Parent:FindFirstChild("Humanoid"):TakeDamage(math.random(4,6))
						wait(.3)
					end
				end
			end
		end)
		part3.Touched:connect(function(ht)
				hit = ht.Parent
			if ht and hit:IsA("Model") then
					if hit:FindFirstChild("Humanoid") then
						if hit.Name ~= p.Name then
							hit:FindFirstChild("Humanoid"):TakeDamage(math.random(4,6))
							wait(.3)
						end
					end
			elseif ht and hit:IsA("Hat") then
				if hit.Parent.Name ~= p.Name then
					if hit.Parent:FindFirstChild("Humanoid") then
						hit.Parent:FindFirstChild("Humanoid"):TakeDamage(math.random(4,6))
						wait(.3)
					end
				end
			end
		end)]]--
		for i,v in pairs(FindNearestTorso(X.CFrame.p,140))do
			if v:FindFirstChild('Humanoid') then
				v.Humanoid:TakeDamage(math.random(60,90))
				v.Humanoid.PlatformStand = true
				v:FindFirstChild("Torso").Velocity = hed.CFrame.lookVector * 100
			end
		end

		local acos = math.acos
		local sqrt = math.sqrt
		local Vec3 = Vector3.new
		local fromAxisAngle = CFrame.fromAxisAngle

		local function toAxisAngle(CFr)
			local X,Y,Z,R00,R01,R02,R10,R11,R12,R20,R21,R22 = CFr:components()
			local Angle = math.acos((R00+R11+R22-1)/2)
			local A = (R21-R12)^2+(R02-R20)^2+(R10-R01)^2
			A = A == 0 and 0.00001 or A
			local B = (R21-R12)^2+(R02-R20)^2+(R10-R01)^2
			B = B == 0 and 0.00001 or B
			local C = (R21-R12)^2+(R02-R20)^2+(R10-R01)^2
			C = C == 0 and 0.00001 or C
			local x = (R21-R12)/sqrt(A)
			local y = (R02-R20)/sqrt(B)
			local z = (R10-R01)/sqrt(C)
			return Vec3(x,y,z),Angle
		end

		function ApplyTrig(Num,Func)
			local Min,Max = Func(0),Func(1)
			local i = Func(Num)
			return (i-Min)/(Max-Min)
		end

		function LerpCFrame(CFrame1,CFrame2,Num)
			local Vec,Ang = toAxisAngle(CFrame1:inverse()*CFrame2)
			return CFrame1*fromAxisAngle(Vec,Ang*Num) + (CFrame2.p-CFrame1.p)*Num
		end

		function Crater(Torso,Radius)
			Spawn(function()
				local Ray = Ray.new(Torso.Position,Vector3.new(0,-1,0)*10)
				local Ignore = {}
				for i,v in pairs(game:GetService("Players"):GetPlayers()) do
					if v.Character ~= nil then
						Ignore[#Ignore+1] = v.Character
					end
				end
				local Hit,Pos,SurfaceNorm = Workspace:FindPartOnRayWithIgnoreList(Ray,Ignore)
				if Hit == nil then return end
					local Parts = {}
					for i = 1,360,10 do
						local P = Instance.new("Part",Torso.Parent)
						P.Anchored = true
						P.FormFactor = "Custom"
						P.BrickColor = Hit.BrickColor
						P.Material = Hit.Material
						P.TopSurface = "Smooth"
						P.BottomSurface = "Smooth"
						P.Size = Vector3.new(10,20,20)*(math.random(80,100)/100)
						P.CFrame = ((CFrame.new(Pos,Pos+SurfaceNorm)*CFrame.Angles(math.rad(90),0,0))-Vector3.new(0,7,0))*CFrame.Angles(math.rad(math.random(-50,50)),math.rad(math.random(-50,50)),math.rad(math.random(-50,50)))
						Parts[#Parts+1] = {P,P.CFrame,((CFrame.new(Pos,Pos+SurfaceNorm)*CFrame.Angles(math.rad(90),0,0))-Vector3.new(0,1,0))*CFrame.Angles(0,math.rad(i),0)*CFrame.new(0,0,-Radius)*CFrame.Angles(math.rad(math.random(-50,-20)),math.rad(math.random(-15,15)),math.rad(math.random(-15,15))),P.Size}
						if math.random(0,5) == 0 then -- rubble
							local P = Instance.new("Part",Torso.Parent)
							P.Anchored = true
							P.FormFactor = "Custom"
							P.BrickColor = Hit.BrickColor
							P.Material = Hit.Material
							P.TopSurface = "Smooth"
							P.BottomSurface = "Smooth"
							P.Size = Vector3.new(4,4,4)*(math.random(80,100)/100)
							P.CFrame = ((CFrame.new(Pos,Pos+SurfaceNorm)*CFrame.Angles(math.rad(90),0,0))-Vector3.new(0,2.5,0))*CFrame.Angles(math.rad(math.random(-50,50)),math.rad(math.random(-50,50)),math.rad(math.random(-50,50)))
							Parts[#Parts+1] = {P,P.CFrame,(CFrame.new(Pos,Pos+SurfaceNorm)*CFrame.Angles(math.rad(90),0,0))*CFrame.Angles(0,math.rad(i),0)*CFrame.new(0,0,-Radius-8)*CFrame.Angles(math.rad(math.random(-90,90)),math.rad(math.random(-90,90)),math.rad(math.random(-90,90))),P.Size}
							end
						end
						for i = 0,1,0.05 do
							for i2,v in pairs(Parts) do
								v[1].CFrame = LerpCFrame(v[2],v[3],ApplyTrig(i,math.cos))
							end
							wait(0.02)
						end
						for i,v in pairs(Parts) do
							if v[1].Size.X > 2.1 then
								v[1].CFrame = v[1].CFrame+Vector3.new(0,2,0)
							end
							v[1].Anchored = false
						end
						for i = 0,1,0.05 do
							for i2,v in pairs(Parts) do
								v[1].Transparency = i
								if i == 1 then
									v[1]:Destroy()
								elseif i >= 0.25 then
									v[1].CanCollide = false
								end
							end
						wait(0.02)
						end
					Parts = nil
					end)
				end

				ROW = function(out, trans, s, wt, t, ang, plus)
					for i = 1, 360, 360/t do
						local c = Instance.new("Part", game.Workspace)
						c.FormFactor = 3
						c.TopSurface = 0
						c.BottomSurface = 0
						c.Size = s
						c.Anchored = true
						c.CanCollide = wt
						c.Material=workspace.Base.Material
						c.Transparency = trans
						c.BrickColor = workspace.Base.BrickColor
						c.CFrame = CFrame.new(X.CFrame.x,0,X.CFrame.z) * CFrame.Angles(0, math.rad(i +  plus), 0) *     CFrame.new(0, 0, out) * ang
						c.Locked=true
						game.Debris:AddItem(c,15)
					end
				end

				Part = function(x,y,z,color,tr,cc,an,parent)
					local p = Instance.new('Part',parent or Weapon)
					p.formFactor = 'Custom'
					p.Size = Vector3.new(x,y,z)
					p.BrickColor = BrickColor.new(color)
					p.CanCollide = cc
					p.Transparency = tr
					p.Anchored = an
					p.TopSurface,p.BottomSurface = 0,0
					p.Locked=true
					p:BreakJoints()
				return p end

			Mesh = function(par,num,x,y,z)
			local msh = _
			if num == 1 then msh = Instance.new("CylinderMesh",par)
			elseif num == 2 then msh = Instance.new("SpecialMesh",par) msh.MeshType = 3
			elseif num == 3 then msh = Instance.new("BlockMesh",par)
			elseif num == 4 then msh = Instance.new("SpecialMesh",par) msh.MeshType = "Torso"
			elseif type(num) == 'string' then msh = Instance.new("SpecialMesh",par) msh.MeshId = num
			end msh.Scale = Vector3.new(x,y,z)
			return msh end

			function explosion(col1,col2,cfr,sz,rng,dmg)
				local a= Part(1,1,1,col1,.5,false,true,workspace)
				local a2= Part(1,1,1,col2,.5,false,true,workspace)
				local a3= Part(1,1,1,col2,.5,false,true,workspace)
				v1,v2,v3=sz.x,sz.y,sz.z
				local m= Mesh(a,'http://www.roblox.com/asset/?id=1185246',v1,v2,v3)
				local m2= Mesh(a2,3,v1/3,v2/3,v3/3)
				local m3= Mesh(a3,3,v1/3,v2/3,v3/3)
				a.CFrame=cfr
				a2.CFrame=cfr*CFrame.Angles(math.random(),math.random(),math.random())
				a3.CFrame=cfr*CFrame.Angles(math.random(),math.random(),math.random())

				Spawn(function()
					while wait() do
						if a.Transparency >= 1 then a:Destroy() a2:Destroy() a3:Destroy() break end
							m.Scale=m.Scale+Vector3.new(.1,0.1,0.1)
							m2.Scale=m2.Scale+Vector3.new(.1,0.1,0.1)
							m3.Scale=m3.Scale+Vector3.new(.1,0.1,0.1)
							a.Transparency=a.Transparency+0.05
							a2.Transparency=a2.Transparency+0.05
							a3.Transparency=a3.Transparency+0.05
						end
					end)
				end

				Crater(X,20)
				ROW(12, 0, Vector3.new(34.5, 30, 3), true, 8, CFrame.Angles(math.rad(math.random (30,60)), 0, math.rad    (math.random(-30,30))), 0)
				z = Instance.new("Sound",workspace)
				z.SoundId = "rbxassetid://231917744"
				z.Pitch = .5
				z.Volume = 5
				z1 = Instance.new("Sound",workspace)
				z1.SoundId = "rbxassetid://231917744"
				z1.Pitch = .5
				z1.Volume = 5
				z2 = Instance.new("Sound",workspace)
				z2.SoundId = "rbxassetid://231917744"
				z2.Pitch = .5
				z2.Volume = 5
				z3 = Instance.new("Sound",workspace)
				z3.SoundId = "rbxassetid://245537790"
				z3.Pitch = .7
				z3.Volume = 5
				z4 = Instance.new("Sound",workspace)
				z4.SoundId = "rbxassetid://245537790"
				z4.Pitch = .7
				z4.Volume = 5
                                z4a = Instance.new("Sound",workspace)
                                z4a.SoundId = "rbxassetid://419447292"
                                z4a.Pitch = 1
                                z4a.Volume = 5
                                z3a = Instance.new("Sound",workspace)
                                z3a.SoundId = "rbxassetid://421328847"
                                z3a.Pitch = 1
                                z3a.Volume = 5
                                wait(0.1)
				z:Play()
				z1:Play()
				z2:Play()
				z3:Play()
				z4:Play()
				z3a:Play()
				z4a:Play()

				local part=Instance.new('Part',rarm)
				part.Anchored=true
				part.CanCollide=false
				part.Locked = true
				part.FormFactor='Custom'
				part.Size=Vector3.new(2,2,2)
				part.CFrame=X.CFrame*CFrame.new(0,0,0)
				part.Transparency=0
				part.BrickColor=BrickColor.new('Really black')
				local mesh=Instance.new('SpecialMesh',part)
				mesh.MeshId='http://www.roblox.com/asset/?id=20329976'
				mesh.Scale=Vector3.new(4,4,4)
				local part2=part:clone()
				part2.Parent = rarm
				part2.BrickColor=TorsoColor
				local part5=part:clone()
				part5.Parent = rarm
				part5.BrickColor=TorsoColor
				local part6=part:clone()
				part6.Parent = rarm
				part6.BrickColor=BrickColor.new("Black")
				local mesh2=mesh:clone()
				mesh2.Parent=part2
				mesh2.Scale=Vector3.new(6, 6, 6)
				local mesh5=mesh:clone()
				mesh5.Parent=part5
				mesh5.Scale=Vector3.new(6, 6, 6)
				local mesh6=mesh:clone()
				mesh6.Parent=part6
				mesh6.Scale=Vector3.new(6, 6, 6)
				local blast = Instance.new("Part", rarm)
				blast.BrickColor = BrickColor.new("Really black")
				blast.Anchored = true
				blast.CanCollide = false
				blast.Locked = true
				blast.Size = Vector3.new(2, 2, 2)
				blast.TopSurface = "Smooth"
				blast.BottomSurface = "Smooth"
				blast.Transparency = 0
				blast.CFrame = HandCF
				local bm = Instance.new("SpecialMesh", blast)
				bm.Scale = Vector3.new(10,2,10)
				bm.MeshId = "rbxassetid://3270017"
				local blast2 = Instance.new("Part", rarm)
				blast2.BrickColor = BrickColor.new("Really black")
				blast2.Anchored = true
				blast2.CanCollide = false
				blast2.Locked = true
				blast2.Size = Vector3.new(2, 2, 2)
				blast2.TopSurface = "Smooth"
				blast2.BottomSurface = "Smooth"
				blast2.Transparency = 0
				blast2.CFrame = HandCF
				local bm2 = Instance.new("SpecialMesh", blast2)
				bm2.Scale = Vector3.new(6,2,6)
				bm2.MeshId = "rbxassetid://3270017"
				local blast3 = Instance.new("Part", rarm)
				blast3.BrickColor = BrickColor.new("Really black")
				blast3.Anchored = true
				blast3.CanCollide = false
				blast3.Locked = true
				blast3.Size = Vector3.new(1, 1, 1)
				blast3.TopSurface = "Smooth"
				blast3.BottomSurface = "Smooth"
				blast3.Transparency = 0
				blast3.CFrame = HandCF
				local bm3 = Instance.new("SpecialMesh", blast3)
				bm3.Scale = Vector3.new(6,2,6)
				bm3.MeshId = "rbxassetid://3270017"
				for i = 1,120 do rs:wait()
					X.Transparency = X.Transparency + (1/120)
					part.Transparency = part.Transparency + (1/120)
					part2.Transparency = part2.Transparency + (1/120)
					part3.Transparency = part3.Transparency + (1/120)
					part4.Transparency = part4.Transparency + (1/120)
					part5.Transparency = part5.Transparency + (1/120)
					part6.Transparency = part6.Transparency + (1/120)
					part7.Transparency = part7.Transparency + (1/120)
					blast.Transparency = blast.Transparency + (1/120)
					blast2.Transparency = blast2.Transparency + (1/120)
					blast3.Transparency = blast3.Transparency + (1/120)
					X.Size = X.Size + Vector3.new(1.6,1.6,1.6)
					--part3.Size = part3.Size + Vector3.new(6,6,6)
					mesh.Scale = mesh.Scale + Vector3.new(2,.4,2)
					mesh2.Scale = mesh2.Scale + Vector3.new(2.2,.4,2.2)
					mesh3.Scale = mesh3.Scale + Vector3.new(6,6,6)
					mesh4.Scale = mesh4.Scale + Vector3.new(3.4,3.4,3.4)
					mesh5.Scale = mesh5.Scale + Vector3.new(3.2,.4,3.2)
					mesh6.Scale = mesh6.Scale + Vector3.new(4,.4,4)
					mesh7.Scale = mesh7.Scale + Vector3.new(8,8,8)
					bm.Scale = bm.Scale + Vector3.new(12,12,.4)
					bm2.Scale = bm2.Scale + Vector3.new(8,8,.4)
					bm3.Scale = bm3.Scale + Vector3.new(8,8,.4)
					X.CFrame = cf
					part.CFrame=X.CFrame * CFrame.Angles(0,math.rad(i*2),0)
					part2.CFrame=X.CFrame * CFrame.Angles(0,math.rad(-i*2),0)
					part3.CFrame=X.CFrame
					part4.CFrame=X.CFrame
					part7.CFrame=X.CFrame
					part5.CFrame=X.CFrame * CFrame.Angles(0,math.rad(i*2.6),0)
					part6.CFrame=X.CFrame * CFrame.Angles(0,math.rad(-i*2.4),0)
					blast.CFrame=X.CFrame * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
					blast2.CFrame=X.CFrame * CFrame.Angles(math.rad(-i*4), math.rad(i*4), math.rad(0))
					blast3.CFrame=X.CFrame * CFrame.Angles(math.rad(180+i*4), math.rad(90-i*4), math.rad(0))
					rs:wait()
					end
					X:Destroy()
					part:Destroy()
					part2:Destroy()
					part3:Destroy()
					part4:Destroy()
					part5:Destroy()
					part6:Destroy()
					blast:Destroy()
					blast2:Destroy()
					blast3:Destroy()
					z:Destroy()
					z1:Destroy()
					z2:Destroy()
					z3:Destroy()
					z4:Destroy()
				end
			end)
			for i = 1, 20 do
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.55,0)*CFrame.Angles(math.rad(70),math.rad(-6),math.rad(-20)), 0.2)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.55,0)*CFrame.Angles(math.rad(-6),math.rad(6),math.rad(-8)), 0.2)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(0),math.rad(0),0), 0.2)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(30), math.rad(0)), 0.4)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), 0, math.rad(-8)), 0.2)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-6), 0, math.rad(8)), 0.2)
				if Debounces.on == false then break end
				rs:wait()
			end
			if Debounces.CanAttack == false then
				Debounces.CanAttack = true
				Debounces.NoIdl = false
				Debounces.on = false
			end
		end
	end
end)
----------------------------------------------------
mouse.KeyDown:connect(function(key)
    if key == "c" then
Blaze()
end
end)
----------------------------------------------------
mouse.KeyDown:connect(function(key)
    if key == "v" then
Blaze2()
end
end)
----------------------------------------------------
mouse.KeyDown:connect(function(key)
    if key == "x" then
        hum.WalkSpeed = 0.01
        if Debounces.CanAttack == true then
            Debounces.CanAttack = false
            Debounces.NoIdl = true
            Debounces.on = true
                for i = 1, 30 do
                    rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.2,0.65,-.4)*CFrame.Angles(math.rad(130),math.rad(0),math.rad(-40)), 0.2)
	            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.2,0.65,-.4)*CFrame.Angles(math.rad(130),math.rad(0),math.rad(40)), 0.2)
		    hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(0),0), 0.2)
		    torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-10), math.rad(0), 0), 0.2)
		    lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, .4, -0.8) * CFrame.Angles(math.rad(-6), math.rad(0), math.rad(0)), 0.2)
		    rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, .4, -0.8) * CFrame.Angles(math.rad(-6), math.rad(0), math.rad(0)), 0.2)
                    if Debounces.on == false then break end
                    rs:wait(6)
                end
        v = Instance.new("Sound")
        v.SoundId = "rbxassetid://435742675"
        v.Parent = char
        v.Looped = false
        v.Pitch = 1
        v.Volume = 18
        wait(.01)
        v:Play()
        
        if Daytime == true then
            Daytime = false
            l.TimeOfDay = 00
        else
            Daytime = true
            l.TimeOfDay = 12
            l.OutdoorAmbient = Color3.new(0.498039, 0.498039, 0.498039)
        end
        
            local Shockwave = function()
                local rng1 = Instance.new("Part", char)
                rng1.Anchored = true
                rng1.BrickColor = BrickColor.new("Really black")
                rng1.CanCollide = false
                rng1.FormFactor = 3
                rng1.Name = "Ring"
                rng1.Material = "Neon"
                rng1.Size = Vector3.new(1, 1, 1)
                rng1.Transparency = 0.35
                rng1.TopSurface = 0
                rng1.BottomSurface = 0
                local rngm1 = Instance.new("SpecialMesh", rng)
                rngm1.MeshId = "http://www.roblox.com/asset/?id=3270017"
                rngm1.Scale = Vector3.new(10, 10, 1)
                rng1.CFrame = CFrame.new(0, -2, 0) * CFrame.Angles(0, 0, 0)
                local Wave = Instance.new("Part", game.Workspace--[[?]])
                Wave.Name = "Shockwave"
                Wave.BrickColor = BrickColor.new("Really black")
                Wave.Material = "Neon"
                Wave.Size = Vector3.new(1, 1, 1)
                Wave.Shape = "Ball"
                Wave.CanCollide = false
                Wave.Anchored = true
                Wave.TopSurface = 0
                Wave.BottomSurface = 0
                local Wave2 = Instance.new("Part", game.Workspace--[[?]])
                Wave2.Name = "Shockwave2"
                Wave2.BrickColor = TorsoColor
                Wave2.Material = "Neon"
                Wave2.Size = Vector3.new(1, 1, 1)
                Wave2.Shape = "Ball"
                Wave2.CanCollide = false
                Wave2.Anchored = true
                Wave2.TopSurface = 0
                Wave2.BottomSurface = 0
                Wave2.Touched:connect(function(hit)
                    if hit.Parent:findFirstChild("Humanoid") and hit.Parent:findFirstChild("Torso") then
                        local Occlude = true
                        local NotOccludes = {
                            char.Name;
                            "Wings";
                            "Scythe";
                            "Thingy";
                            "Thingy2"; -- put all of the names in a table pls
                        }
                        for i,v in pairs(NotOccludes) do
                            if hit.Parent.Name == v then
                                Occlude = false
                            end
                        end
                        --if hit.Parent.Name ~= char.Name and hit.Name ~= "Wings" and hit.Name ~= "Scythe" and hit.Name     ~= "Thingy" and hit.Name ~= "Thingy2" and hit.Parent.Name ~= "Wings" and hit.Parent.Name ~= "Scythe" and     hit.Parent.Name ~= "Thingy" and hit.Parent.Name ~= "Thingy2" then
                        if Occlude then
                            hit.Parent:findFirstChild("Humanoid").Health = hit.Parent:findFirstChild("Humanoid").Health - 1
                            hit.Parent:findFirstChild("Torso").Velocity = hit.Parent:findFirstChild("Torso").CFrame.lookVector * -120
                        end
                    end
                end)
                
                Instance.new("SpecialMesh", Wave).MeshType = "Sphere"
                
                coroutine.wrap(function()
                    for i = 1, 20, 0.2 do
                        rngm1.Scale = Vector3.new(10 + i*20, 10 + i*20, 20)
                        rng1.Transparency = i/20
                    wait()
                    end
                    wait()
                    rng1:Destroy()
                end)()
                
                Delay(0, function()

                    if Daytime == false then
                       for i = 3, 50, 1 do
                            Wave.Size = Vector3.new(0 + i*3, 0 + i*3, 0 + i*3)
                            Wave.CFrame = char.Torso.CFrame
                            local t = i / 50
                            Wave.Transparency = t
                            Wave2.Size = Vector3.new(1 + i*2.5, 1 + i*2.5, 1 + i*2.5)
                            Wave2.CFrame = char.Torso.CFrame
                            local tq = i / 50
                            Wave2.Transparency = tq
                            wait()
                        end
                    else
                        for i = 3, 50, 1 do
                            Wave.Size = Vector3.new(0 + i*3, 0 + i*3, 0 + i*3)
                            Wave.CFrame = char.Torso.CFrame
                            local t = i / 50
                            Wave.Transparency = t
                            Wave2.Size = Vector3.new(1 + i*2.5, 1 + i*2.5, 1 + i*2.5)
                            Wave2.CFrame = char.Torso.CFrame
                            local tq = i / 50
                            Wave2.Transparency = tq
                            wait()
                        end
                    end
                    Wave:Destroy()
                    Wave2:Destroy()
                end)
                Delay(0, function()
                    while wait() do
                        if Wave ~= nil then
                            Wave.CFrame = char.Torso.CFrame
                        else
                            break
                        end
                    end
                end)
            end
        Shockwave() 
                for i = 1, 30 do
                        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65,0)*CFrame.Angles(math.rad(-20),math.rad(-20),math.rad(50)), 0.4)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65,0)*CFrame.Angles(math.rad(-20),math.rad(20),math.rad(-50)), 0.4)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,.1)*CFrame.Angles(math.rad(34),math.rad(0),0), 0.4)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(15), math.rad(0), math.rad(0)), 0.4)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), 0, math.rad(-10)), 0.4)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), 0, math.rad(10)), 0.4)
                        if Debounces.on == false then break end
                        rs:wait()
                end
        wait(2.4)
        Debounces.NoIdl = false
        hum.WalkSpeed = 16
        Debounces.on = false
        wait()
        if Debounces.CanAttack == false then
            Debounces.CanAttack = true
            v:Destroy()
            end
        end
    end
end)
----------------------------------------------------
mouse.KeyDown:connect(function(key)
	if key == "e" then
		if Debounces.CanAttack == true then
		Debounces.CanAttack = false
		Debounces.on = true
		Debounces.NoIdl = true
pt = {1, 1.1, 1.2, 1.3, 1.4, 1.5}
z = Instance.new("Sound", rarm)
z.SoundId = "http://www.roblox.com/asset/?id=200633148"--160867463, 161006212
z.Volume = 1.25
z.Pitch = pt[math.random(1,#pt)]
z.Looped = false
z:Play()
Debounces.RPunch = true
Debounces.LPunch = true
Debounces.ks = true
Debounces.ks2 = true
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(20),math.rad(20)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(50)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
z2 = Instance.new("Sound", larm)
z2.SoundId = "http://www.roblox.com/asset/?id=200633148"
z2.Volume = 1.25
z2.Pitch = pt[math.random(1,#pt)]
z2.Looped = false
z2:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(120),math.rad(20),math.rad(-20)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
z3 = Instance.new("Sound", rarm)
z3.SoundId = "http://www.roblox.com/asset/?id=200633148"
z3.Volume = 1.25
z3.Pitch = pt[math.random(1,#pt)]
z3.Looped = false
z3:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(-20),math.rad(20)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(0),math.rad(50)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
z4 = Instance.new("Sound", larm)
z4.SoundId = "http://www.roblox.com/asset/?id=200633148"
z4.Volume = 1.25
z4.Pitch = pt[math.random(1,#pt)]
z4.Looped = false
z4:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(20),math.rad(-20)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
z5 = Instance.new("Sound", rarm)
z5.SoundId = "http://www.roblox.com/asset/?id=200633148"
z5.Volume = 1.25
z5.Pitch = pt[math.random(1,#pt)]
z5.Looped = false
z5:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(110),math.rad(30),math.rad(20)), 0.9)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(50)), 0.9)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-50),0), 0.9)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.9)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 0.9)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 0.9)
if Debounces.on == false then break end
wait()
end
z6 = Instance.new("Sound", larm)
z6.SoundId = "http://www.roblox.com/asset/?id=200633148"
z6.Volume = 1.25
z6.Pitch = pt[math.random(1,#pt)]
z6.Looped = false
z6:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(20),math.rad(-20)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
z7 = Instance.new("Sound", rarm)
z7.SoundId = "http://www.roblox.com/asset/?id=200633148"--160867463, 161006212
z7.Volume = 1.25
z7.Pitch = pt[math.random(1,#pt)]
z7.Looped = false
z7:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(20),math.rad(20)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(50)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
z8 = Instance.new("Sound", larm)
z8.SoundId = "http://www.roblox.com/asset/?id=200633148"
z8.Volume = 1.25
z8.Pitch = pt[math.random(1,#pt)]
z8.Looped = false
z8:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(120),math.rad(20),math.rad(-20)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
z9 = Instance.new("Sound", rarm)
z9.SoundId = "http://www.roblox.com/asset/?id=200633148"
z9.Volume = 1.25
z9.Pitch = pt[math.random(1,#pt)]
z9.Looped = false
z9:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(-20),math.rad(20)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(0),math.rad(50)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
z10 = Instance.new("Sound", larm)
z10.SoundId = "http://www.roblox.com/asset/?id=200633148"
z10.Volume = 1.25
z10.Pitch = pt[math.random(1,#pt)]
z10.Looped = false
z10:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(20),math.rad(-20)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
z11 = Instance.new("Sound", rarm)
z11.SoundId = "http://www.roblox.com/asset/?id=200633148"
z11.Volume = 1.25
z11.Pitch = pt[math.random(1,#pt)]
z11.Looped = false
z11:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(110),math.rad(30),math.rad(20)), 0.9)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(50)), 0.9)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-50),0), 0.9)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.9)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 0.9)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 0.9)
if Debounces.on == false then break end
wait()
end
z12 = Instance.new("Sound", larm)
z12.SoundId = "http://www.roblox.com/asset/?id=200633148"
z12.Volume = 1.25
z12.Pitch = pt[math.random(1,#pt)]
z12.Looped = false
z12:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(120),math.rad(20),math.rad(-20)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
z13 = Instance.new("Sound", rarm)
z13.SoundId = "http://www.roblox.com/asset/?id=200633148"
z13.Volume = 1.25
z13.Pitch = pt[math.random(1,#pt)]
z13.Looped = false
z13:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(-20),math.rad(20)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(0),math.rad(50)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
z14 = Instance.new("Sound", larm)
z14.SoundId = "http://www.roblox.com/asset/?id=200633148"
z14.Volume = 1.25
z14.Pitch = pt[math.random(1,#pt)]
z14.Looped = false
z14:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(20),math.rad(-20)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
z15 = Instance.new("Sound", rarm)
z15.SoundId = "http://www.roblox.com/asset/?id=200633148"
z15.Volume = 1.25
z15.Pitch = pt[math.random(1,#pt)]
z15.Looped = false
z15:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(110),math.rad(30),math.rad(20)), 0.9)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(50)), 0.9)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-50),0), 0.9)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.9)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 0.9)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 0.9)
if Debounces.on == false then break end
wait()
end
z16 = Instance.new("Sound", larm)
z16.SoundId = "http://www.roblox.com/asset/?id=200633148"
z16.Volume = 1.25
z16.Pitch = pt[math.random(1,#pt)]
z16.Looped = false
z16:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(20),math.rad(-20)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
z17 = Instance.new("Sound", rarm)
z17.SoundId = "http://www.roblox.com/asset/?id=200633148"--160867463, 161006212
z17.Volume = 1.25
z17.Pitch = pt[math.random(1,#pt)]
z17.Looped = false
z17:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(20),math.rad(20)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(50)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
z18 = Instance.new("Sound", larm)
z18.SoundId = "http://www.roblox.com/asset/?id=200633148"
z18.Volume = 1.25
z18.Pitch = pt[math.random(1,#pt)]
z18.Looped = false
z18:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(120),math.rad(20),math.rad(-20)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
z19 = Instance.new("Sound", rarm)
z19.SoundId = "http://www.roblox.com/asset/?id=200633148"
z19.Volume = 1.25
z19.Pitch = pt[math.random(1,#pt)]
z19.Looped = false
z19:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(-20),math.rad(20)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(0),math.rad(50)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
z20 = Instance.new("Sound", larm)
z20.SoundId = "http://www.roblox.com/asset/?id=200633148"
z20.Volume = 1.25
z20.Pitch = pt[math.random(1,#pt)]
z20.Looped = false
z20:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(20),math.rad(-20)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
z:Destroy()
z2:Destroy()
z3:Destroy()
z4:Destroy()
z5:Destroy()
z6:Destroy()
z7:Destroy()
z8:Destroy()
z9:Destroy()
z10:Destroy()
z11:Destroy()
z12:Destroy()
z13:Destroy()
z14:Destroy()
z15:Destroy()
z16:Destroy()
z17:Destroy()
z18:Destroy()
z19:Destroy()
z20:Destroy()
Debounces.LPunch = false
Debounces.RPunch = false
Debounces.ks = false
Debounces.ks2 = false
if Debounces.CanAttack == false then
Debounces.CanAttack = true
Debounces.on = false
Debounces.NoIdl = false
end
end
end
end)
-------------------------------
mouse.KeyDown:connect(function(key)
	if key == "t" then
		if Debounces.CanAttack == true then
			Debounces.CanAttack = false
			Debounces.NoIdl = true
			Debounces.on = true
			Debounces.ks = true
    kik = rleg.Touched:connect(function(ht)
        hit = ht.Parent
            if ht and hit:IsA("Model") then
                    if hit:FindFirstChild("Humanoid") then
                        if hit.Name ~= p.Name then
                            --[[if Debounces.Slashing == true and Debounces.Slashed == false then
                                    Debounces.Slashed = true]]--
                                    if Debounces.ks==true then
                                    z = Instance.new("Sound",hed)
                                    z.SoundId = "rbxassetid://169380525"
                                    z.Volume = 1
                                    z:Play()
                                    Debounces.ks=false
                                    end
                                    hit:FindFirstChild("Humanoid"):TakeDamage(2)
                                    hit:FindFirstChild("Torso").Velocity = hit:FindFirstChild("Torso").CFrame.lookVector * -300
                            --Debounces.Slashed = false
                        --end
                    end
                end
            elseif ht and hit:IsA("Hat") then
                if hit.Parent.Name ~= p.Name then
                    if hit.Parent:FindFirstChild("Humanoid") then
                           --[[if Debounces.Slashing == true and Debounces.Slashed == false then
                                    Debounces.Slashed = true]]--
                                    hit.Parent:FindFirstChild("Humanoid"):TakeDamage(2)
                                    hit:FindFirstChild("Torso").Velocity = hit:FindFirstChild("Torso").CFrame.lookVector * -300
                            --Debounces.Slashed = false
                        --end
                    end
                end
            end
        end)
			for i = 1,20 do
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.62,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(8)), 0.4)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.62,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-110)), 0.4)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(0),math.rad(0),0), 0.4)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(90), math.rad(90)), 0.4)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-90)), 0.4)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(10)), 0.4)
				if Debounces.on == false then break end
				rs:wait()
			end
			kik:disconnect()
			if Debounces.CanAttack == false then
				Debounces.CanAttack = true
				Debounces.NoIdl = false
				Debounces.on = false
            end
        end
    end
end)
----------------------------------------------------
mouse.KeyDown:connect(function(key)
	if key == "y" then
		if Debounces.CanAttack == true then
            Debounces.CanAttack = false
            Debounces.on = true
            Debounces.NoIdl = true
				for i = 1, 15 do
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,.6,-0.25)*CFrame.Angles(math.rad(0),math.rad(-35),math.rad(-90)), 0.2)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,.6,0)*CFrame.Angles(math.rad(0),math.rad(-35),math.rad(-90)), 0.6)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(-10),math.rad(50),0), 0.2)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-50), 0), 0.4)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-10)), 0.2)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(10)), 0.2)
                    if Debounces.on == false then break end
                    rs:wait(2.7)
                end
				xa = Instance.new("Sound",char)
				xa.SoundId = "rbxassetid://419447292"
				xa.Pitch = 1
				xa.Volume = 2.5
				wait(.1)
				xa:Play()
				Debounces.on = false
				Debounces.Here = false
				shot = shot + 1
local rng = Instance.new("Part", larm)
rng.Anchored = true
rng.BrickColor = TorsoColor
rng.CanCollide = false
rng.FormFactor = 3
rng.Name = "Ring"
rng.Size = Vector3.new(1, 1, 1)
rng.Transparency = 0.35
rng.TopSurface = 0
rng.BottomSurface = 0
rng2 = rng:clone()
rng3 = rng2:clone()
rng4 = rng2:clone()
local rngm = Instance.new("SpecialMesh", rng)
rngm.MeshId = "http://www.roblox.com/asset/?id=3270017"
rngm.Scale = Vector3.new(10, 10, 1)
rngm2 = rngm:clone()
rngm2.Scale = Vector3.new(5, 5, 3)
rngm3=rngm2:clone()
rngm3.Parent = rng3
rngm3.Scale = Vector3.new(8, 8, 1)
rngm4 = rngm2:clone()
rngm4.Parent = rng4
rngm4.Scale = Vector3.new(6, 6, 1)
local bem = Instance.new("Part", larm)
bem.Anchored = true
bem.BrickColor = BrickColor.new("Really black")
bem.CanCollide = false
bem.FormFactor = 3
bem.Name = "Beam" .. shot
bem.Size = Vector3.new(1, 1, 1)
bem.Transparency = 0.35
bem.Material = "Neon"
bem.TopSurface = 0
bem.BottomSurface = 0
local bemm = Instance.new("SpecialMesh", bem)
bemm.MeshType = 4
bemm.Scale = Vector3.new(1, 50, 50)
local out = Instance.new("Part", larm)
out.Anchored = true
out.BrickColor = BrickColor.new("Really black")
out.CanCollide = false
out.FormFactor = 3
out.Name = "Out"
out.Size = Vector3.new(8, 8, 8)
out.Transparency = 0.35
out.TopSurface = 0
out.BottomSurface = 0
local outm = Instance.new("SpecialMesh", out)
outm.MeshId = "http://www.roblox.com/asset/?id=1033714"
outm.Scale = Vector3.new(12, 8, 12)
local bnd = Instance.new("Part", larm)
bnd.Anchored = true
bnd.BrickColor = BrickColor.new("Really black")
bnd.CanCollide = false
bnd.FormFactor = 3
bnd.Name = "Bend"
bnd.Size = Vector3.new(1, 1, 1)
bnd.Transparency = 1
bnd.TopSurface = 0
bnd.BottomSurface = 0
local bndm = Instance.new("SpecialMesh", bnd)
bndm.MeshType = 3
bndm.Scale = Vector3.new(16, 16, 16)
out.CFrame = larm.CFrame * CFrame.new(0, -5.4, 0)
bem.CFrame = out.CFrame * CFrame.new(0, -50, 0) * CFrame.Angles(0, 0, math.rad(90))
bnd.CFrame = bem.CFrame * CFrame.new(0, 0, 0)
rng.CFrame = out.CFrame * CFrame.Angles(math.rad(90), 0, 0)
rng3.CFrame = rng.CFrame * CFrame.new(0, -1, 0)
rng4.CFrame = rng.CFrame * CFrame.new(0, -2, 0)
Debounces.Shewt = true
coroutine.wrap(function()
for i = 1, 20, 0.2 do
rngm.Scale = Vector3.new(20 + i*4, 20 + i*4, 2)
rngm3.Scale = Vector3.new(16 + i*6, 16 + i*6, 2)
rngm4.Scale = Vector3.new(12 + i*8, 12 + i*8, 2)
rng.Transparency = i/20
rng3.Transparency = 1/24
rng4.Transparency = i/26
wait()
end
wait()
rng:Destroy()
end)()
if Debounces.Shewt == true then
larm:WaitForChild("Beam" .. shot).Touched:connect(function(ht)
hit = ht.Parent
if hit:IsA("Model") and hit:findFirstChild("Humanoid") then
if HasntTouched(hit.Name) == true and deb == false then
deb = true
coroutine.wrap(function()
hit:FindFirstChild("Humanoid").PlatformStand = true
hit:FindFirstChild("Torso").Velocity = char.Head.CFrame.lookVector * 275
hit:FindFirstChild("Humanoid"):TakeDamage(math.random(24,73))
end)()
table.insert(Touche, hit.Name)
deb = false
end
elseif hit:IsA("Hat") and hit.Parent:findFirstChild("Humanoid") then
if HasntTouched(hit.Parent.Name) == true and deb == false then
deb = true
coroutine.wrap(function()
hit.Parent:FindFirstChild("Humanoid").PlatformStand = true
hit.Parent:FindFirstChild("Torso").Velocity = char.Head.CFrame.lookVector * 275
wait(1)
hit.Parent:FindFirstChild("Humanoid").PlatformStand = false
end)()
table.insert(Touche, hit.Parent.Name)
deb = false
for i, v in pairs(Touche) do
print(v)
end
end
end
end)
end
for i = 0, 260, 8 do
bem.Size = Vector3.new(i, 30, 30)
out.CFrame = larm.CFrame * CFrame.new(0, -5.4, 0)
bem.CFrame = larm.CFrame * CFrame.new(0, -42 -(i/2), 0) * CFrame.Angles(0, 0, math.rad(90))
bnd.CFrame = bem.CFrame * CFrame.new(-i/2, 0, 1.2)
bnd.Size = Vector3.new(2,2,2)
bndm.Scale = Vector3.new(16,16,16)
if i % 10 == 0 then
local newRng = rng2:Clone()
newRng.Parent = larm
newRng.CFrame = larm.CFrame * CFrame.new(0, -8.4-i, 0) * CFrame.Angles(math.rad(90), 0, 0)
local newRngm = rngm2:clone()
newRngm.Parent=newRng
coroutine.wrap(function()
for i = 1, 10, 0.2 do
newRngm.Scale = Vector3.new(16 + i*4, 16 + i*4, 6)
newRng.Transparency = i/10
wait()
end
wait()
newRng:Destroy()
end)()
end
wait()
end
wait()
Debounces.Shewt = false
bem:Destroy()
out:Destroy()
bnd:Destroy()
Debounces.Ready = false
for i, v in pairs(Touche) do
table.remove(Touche, i)
end
wait()
table.insert(Touche, char.Name)
Debounces.NoIdl = false
if Debounces.CanAttack == false then
Debounces.CanAttack = true
end
end
end
end)
----------------------------------------------------
mouse.KeyDown:connect(function(key)
    if key == "h" then
        if Debounces.CanAttack == true then
        Debounces.CanAttack = false
        Debounces.on = true
        Debounces.NoIdl = true
        for i = 1, 20 do
	rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.55,0)*CFrame.Angles(math.rad(110),math.rad(-6),math.rad(140)), 0.4)
	larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.55,0)*CFrame.Angles(math.rad(80),math.rad(6),math.rad(-40)), 0.2)
	hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(0),math.rad(30),0), 0.2)
	torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-30), math.rad(0)), 0.3)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(20), 0, math.rad(-14)), 0.2)
	rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-16), 0, math.rad(8)), 0.2)
            if Debounces.on == false then break end
            rs:wait(2.6)
        end
        Spawn(function()
            local Parts = {}
            for Y = -5,5 do
                local P = Instance.new("Part",char)
                P.Anchored = true
                P.FormFactor = "Custom"
                P.CanCollide = false
                P.Size = Vector3.new(2,4,2)
                P.TopSurface = "SmoothNoOutlines"
                P.BottomSurface = "SmoothNoOutlines"
                P.Material = "Neon"
                P.BrickColor = BrickColor.new("Really black")
                P.Name = tostring(Y)
                local i = (Y+5)/(10)
                i = 1-math.cos(math.pi*i-(math.pi/2))
                P.CFrame = char.HumanoidRootPart.CFrame*CFrame.new(0,Y,-15+(i*1.5))*CFrame.Angles(math.rad(Y*5),0,0)
                --[[P.Touched:connect(function(ht)
                    local hit = ht.Parent
                    if hit:FindFirstChild("Humanoid") then
                        hit.Humanoid:TakeDamage(math.random(20,50))
                    end
                end)]]--
        s = Instance.new("Sound",P)
        s.SoundId = "rbxassetid://228343271"
        s.Volume = 1
        s.Pitch = 0.9
        s:Play()
        sa = Instance.new("Sound",P)
        sa.SoundId = "rbxassetid://419447292"
        sa.Volume = 1
        sa.Pitch = 1
        sa:Play()
P.Touched:connect(function(ht)
        hit = ht.Parent
        if ht and hit:IsA("Model") then
                if hit:FindFirstChild("Humanoid") then
                    if hit.Name ~= p.Name then
                        --[[if Debounces.Slashing == true and Debounces.Slashed == false then
                                Debounces.Slashed = true]]--
                                    hit:FindFirstChild("Humanoid"):TakeDamage(math.random(1,3))
                                    hit:FindFirstChild("Humanoid").PlatformStand = true
                                wait(1)
                                --Debounces.Slashed = false
                        --end
                end
                end
        elseif ht and hit:IsA("Hat") then
            if hit.Parent.Name ~= p.Name then
                if hit.Parent:FindFirstChild("Humanoid") then
                        --[[if Debounces.Slashing == true and Debounces.Slashed == false then
                                Debounces.Slashed = true]]--
                                hit.Parent:FindFirstChild("Humanoid"):TakeDamage(math.random (1,3))
                                hit:FindFirstChild("Humanoid").PlatformStand = true
                                wait(1)
                    --Debounces.Slashed = false
                --end
            end
        end
    end
end)
                Parts[#Parts+1] = P
            end
            local BREAKIT = false
            local CParts = {}
            local Rocks = {}
            local LastPos = nil
            for i = 1,70 do
                for i2,v in pairs(Parts) do
                    v.CFrame = v.CFrame*CFrame.new(0,0,-4)
                    local cf = v.CFrame
                    v.Size = v.Size+Vector3.new(0.4,0.35,0)
                    v.CFrame = cf
                    v.Transparency = v.Transparency+0.02
                    if v.Transparency >= 0.975 then BREAKIT = true end
                    if v.Name == "0" then
                        local Ignore = {}
                        for i,v in pairs(game:GetService("Players"):GetPlayers()) do
                            if v.Character ~= nil then
                                Ignore[#Ignore+1] = v.Character
                            end
                        end
                        local ray = Ray.new(v.Position+Vector3.new(0,20,0),Vector3.new(0,-200,0))
                        local Hit,Pos,SurfaceNorm = Workspace:FindPartOnRayWithIgnoreList(ray,Ignore)
                        if Hit ~= nil then
                            if #Rocks == 0 then
                                for i = 1,5 do
                                    local P = Instance.new("Part",char)
                                    Rocks[#Rocks+1] = P
                                    P.Anchored = true
                                    P.FormFactor = "Custom"
                                    P.BrickColor = Hit.BrickColor
                                    P.Material = Hit.Material
                                    P.TopSurface = "Smooth"
                                    P.BottomSurface = "Smooth"
                                    P.Size = Vector3.new(2,2,2)*(math.random(500,900)/100)
                                end
                            end
                            for i,P in pairs(Rocks) do
                                P.CFrame = ((CFrame.new(Pos)*(v.CFrame-v.Position))*CFrame.new(math.random(-math.ceil(v.Size.X/2),math.ceil(v.Size.X/2)),0,-math.random(5,8))-Vector3.new(0,0.25,0))*CFrame.Angles(math.rad(math.random(-50,50)),math.rad(math.random(-50,50)),math.rad(math.random(20,50)))
                            end
                            local P = Instance.new("Part",char)
                            CParts[#CParts+1] = {P,tick()}
                            P.Anchored = true
                            P.FormFactor = "Custom"
                            P.BrickColor = Hit.BrickColor
                            P.Material = Hit.Material
                            P.TopSurface = "Smooth"
                            P.BottomSurface = "Smooth"
                            P.Size = Vector3.new(2,2,2)*(math.random(100,300)/100)
                            Pos = CFrame.new(Pos)*(v.CFrame-v.Position)*CFrame.new(v.Size.X/2,0,0)
                            Pos = Pos.p
                            P.CFrame = ((CFrame.new(Pos,Pos+SurfaceNorm)*CFrame.Angles(math.rad(90),0,0))-Vector3.new(0,0.25,0))*CFrame.Angles(math.rad(math.random(-50,50)),math.rad(math.random(-50,50)),math.rad(math.random(20,50)))
                            local P = P:Clone()
                            CParts[#CParts+1] = {P,tick()}
                            P.Parent = char
                            Pos = CFrame.new(Pos)*(v.CFrame-v.Position)*CFrame.new(-v.Size.X,0,0)
                            Pos = Pos.p
                            P.CFrame = ((CFrame.new(Pos,Pos+SurfaceNorm)*CFrame.Angles(math.rad(90),0,0))-Vector3.new(0,0.25,0))*CFrame.Angles(math.rad(math.random(-50,50)),math.rad(math.random(-50,50)),math.rad(math.random(-50,-20)))
                            if LastPos ~= nil then
                                local P = P:Clone()
                                CParts[#CParts+1] = {P,tick()}
                                P.Parent = char
                                P.BrickColor = TorsoColor
                                P.Material = "Neon"
                                Pos = CFrame.new(Pos)*(v.CFrame-v.Position)*CFrame.new(v.Size.X/2,0,0)
                                Pos = Pos.p
                                local CFr = (CFrame.new(Pos)*(v.CFrame-v.Position))-Vector3.new(0,0.4,0)
                                P.Size = Vector3.new(v.Size.X-0.25,1,(CFr.p-LastPos.p).Magnitude+0.25)
                                --P.Velocity = Vector3.new(0,-1000,0)
                                P.CFrame = CFrame.new(CFr.p,LastPos.p)*CFrame.new(0,0,-((CFr.p-LastPos.p).Magnitude+0.25)/2)
                            end
                            LastPos = (CFrame.new(Pos)*(v.CFrame-v.Position))-Vector3.new(0,0.4,0)
                        end
                    end
                end
                if BREAKIT then break end
                wait(0.002)
            end
            for i,v in pairs(Rocks) do
                CParts[#CParts+1] = {v,tick()}
            end
            for i,v in pairs(Parts) do
                v:Destroy()
            end
            Parts = nil
            while true do
                local t = tick()
                local p = nil
                for i,v in pairs(CParts) do
                    if t-v[2] > 4 then
                        v[1].Transparency = v[1].Transparency+0.05
                        if v[1].Transparency >= 1 then
                            v[1]:Destroy()
                            CParts[i] = nil
                        end
                    end
                    p = v
                end
                if p == nil then break end
                wait(0.002)
            end
            for i,v in pairs(CParts) do
                v:Destroy()
            end
            CParts = {}
        end)
        for i = 1, 20 do
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.55,0)*CFrame.Angles(math.rad(70),math.rad(-6),math.rad(-20)), 0.2)
	larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.55,0)*CFrame.Angles(math.rad(-6),math.rad(6),math.rad(-8)), 0.2)
	hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(0),math.rad(0),0), 0.2)
	torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(30), math.rad(0)), 0.4)
	lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), 0, math.rad(-8)), 0.2)
	rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-6), 0, math.rad(8)), 0.2)
        cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(1.4, -3.5, -7) * CFrame.Angles(math.rad(-90), math.rad(-142), math.rad(20)), 1)
            if Debounces.on == false then break end
            rs:wait(2)
        end
    if Debounces.CanAttack == false then
        Debounces.CanAttack = true
        Debounces.on = false
        Debounces.NoIdl = false
            end
        end
    end
end)
----------------------------------------------------
local orbt={}
local stlt={}
local chot={}
local cfxt={}
local pfxt={}
local cns=0
local cnOrb=nil
mouse.KeyDown:connect(function(key)
    if key == "u" then
        if Debounces.CanAttack == true then
            Debounces.CanAttack = false
            Debounces.NoIdl = true
            Debounces.on = true
                        orbt={}
                        stlt={}
                        chot={}
                        cfxt={}
                for i = 1, 20 do
                        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,.6,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(30)), 0.2)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,.6,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-90)), 0.6)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(-14),math.rad(90),0), 0.2)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-90), 0), 0.4)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-10)), 0.2)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(10)), 0.2)
                        if Debounces.on == false then end
                        rs:wait()
                    end
                z2 = Instance.new("Sound",char)
                z2.SoundId = "rbxassetid://489657591"
                z2.Pitch = 1
                z2.Volume = 2
                wait(0.1)
                z2:Play()
                cnOrb=nwPrt(char,Vector3.new(1,1,1),larm.CFrame*CFrame.new(0,-3.4,-0.1),"White")
                debris:AddItem(cnOrb,50)
                cnOrb.Mesh.MeshType=3
                cnOrb.Transparency = 0.5
                table.insert(orbt,cnOrb)
                table.insert(stlt,cnOrb)
                local nt=0
                for i=0,14.75,0.02 do
                        nt=nt+1
                        cns=i
                        if nt>=2 then
                                nt=0
                                local cho=nwPrt(mod3,Vector3.new(0.2,0.2,0.2),cnOrb.CFrame*CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))*CFrame.new(0,5+cns,0),"White")
                                debris:AddItem(cho,1)
                                cho.Mesh.MeshType=3
				cho.Transparency = 1
                                table.insert(chot,cho)
                        end
                        cnOrb.CFrame=larm.CFrame*CFrame.new(0,-3.4-(cns/2),-0.1)
                        cnOrb.Mesh.Scale=Vector3.new(i,i,i)
                        wait()
                end
                for i = 1, 14 do
		        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.55,0)*CFrame.Angles(math.rad(110),math.rad(-6),math.rad(140)), 0.4)
		        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.55,0)*CFrame.Angles(math.rad(80),math.rad(6),math.rad(-40)), 0.2)
		        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(0),math.rad(30),0), 0.2)
		        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-30), math.rad(0)), 0.3)
		        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(20), 0, math.rad(-14)), 0.2)
		        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-16), 0, math.rad(8)), 0.2)
                        if Debounces.on == false then end
                        rs:wait()
                    end
                coroutine.wrap(function()
                for i = 1, 20 do
		        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.55,0)*CFrame.Angles(math.rad(70),math.rad(-6),math.rad(-20)), 0.2)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.55,0)*CFrame.Angles(math.rad(-6),math.rad(6),math.rad(-8)), 0.2)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(0),math.rad(0),0), 0.2)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(30), math.rad(0)), 0.4)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), 0, math.rad(-8)), 0.2)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-6), 0, math.rad(8)), 0.2)
                        if Debounces.on == false then end
                        rs:wait()
                    end
                end)()
                wait(0.1)
                stlt={}
                local ry,ht,ps=newRay(root.CFrame*CFrame.new(0,0,-4),root.CFrame*CFrame.new(0,0,-4)*CFrame.Angles(math.rad(-5),0,0)*CFrame.new(0,0,-2),160,{char})
                cnOrb.CFrame=root.CFrame*CFrame.new(0,0,-4)*CFrame.Angles(math.rad(-5),0,0)
                local nt=0
                for i=0,160,3 do
                                        cnOrb.CFrame=cnOrb.CFrame*CFrame.new(0,0,-3)
                                        nt=nt+1
                                        if nt>=6 then
                        nt=0
                        local cfx=nwPrt(mod3,Vector3.new(10,10,10),cnOrb.CFrame*CFrame.new(0,0,2)*CFrame.Angles(math.rad(90),0,0),"Really black")
                        cfx.Mesh.MeshId="rbxassetid://0"
                        cfx.Transparency=0.4
                        table.insert(cfxt,cfx)
                        debris:AddItem(cfx,1)
                    end
                                                if (cnOrb.Position-ps).magnitude<12 then
                                                        break
                                                end
                                wait()
                        end
                        orbt={}
                        
                        for i=0,1,0.1 do
                                local cs=cnOrb.Mesh.Scale
                                cnOrb.Mesh.Scale=Vector3.new(Tween(cs.X,100,i),Tween(cs.Y,100,i),Tween(cs.Z,100,i))
                                wait()
                        end
                        local ofx=nwPrt(cnOrb,Vector3.new(10,10,10),cnOrb.CFrame,"Really black")
                        ofx.Transparency=0.5
                        ofx.Mesh.MeshType=3
                        ofx.Mesh.Scale=Vector3.new(30,30,30)
                        for _,v in pairs(game:service"Players":GetChildren()) do
                                pcall(function()
                                        for _,c in pairs(v.Character:GetChildren()) do
                                                if v~=p and c:IsA("Part") and (cnOrb.CFrame.p-c.CFrame.p).magnitude<120 and (cnOrb.CFrame.p-c.CFrame.p).magnitude>50 then
                                                        local hrp=v.Character:FindFirstChild("HumanoidRootPart")
                                                        hrp.Velocity=CFrame.new(hrp.CFrame.p,(cnOrb.CFrame*CFrame.new(0,10,0)).p).lookVector*2500
                                                end
                                        end
                                end)
                        end
                        for i=0,1,0.05 do
                                local cs=cnOrb.Mesh.Scale
                                cnOrb.Mesh.Scale=Vector3.new(Tween(cs.X,0.1,i),Tween(cs.Y,0.1,i),Tween(cs.Z,0.1,i))
                                local ofs=ofx.Mesh.Scale
                                ofx.Mesh.Scale=Vector3.new(Tween(ofs.X,0.1,i),Tween(ofs.Y,0.1,i),Tween(ofs.Z,0.1,i))
                                ofx.Transparency=Tween(ofx.Transparency,1,i)
                                wait()
                        end
                        ofx:Destroy()
                        cnOrb.CFrame=CFrame.new(cnOrb.Position)*CFrame.new(0,10,0)
                        local cnfx=nwPrt(cnOrb,Vector3.new(100,100,100),cnOrb.CFrame,"Really black")
                        cnfx.Mesh.MeshType=3
                        cnOrb.Transparency=0.5
                        local cnr=nwPrt(cnOrb,Vector3.new(100,100,100),cnOrb.CFrame,"Really black")
                        cnr.Transparency=0.5
                        cnr.Mesh.MeshType=3
                        local rn1=nwPrt(cnOrb,Vector3.new(10,10,10),cnOrb.CFrame*CFrame.Angles(math.rad(90),0,0),"White")
                        rn1.Transparency=1
                        rn1.Mesh.MeshId="rbxassetid://3270017"
                        local rn2=nwPrt(cnOrb,Vector3.new(10,10,10),cnOrb.CFrame,"White")
                        rn2.Transparency=1
                        rn2.Mesh.MeshId="rbxassetid://3270017"
                        local rn3=nwPrt(cnOrb,Vector3.new(100,100,100),cnOrb.CFrame*CFrame.Angles(math.rad(-90),0,0),"White")
                        rn3.Transparency=1
                        rn3.Mesh.MeshId="rbxassetid://3270017"
                        local rn4=nwPrt(cnOrb,Vector3.new(100,100,100),cnOrb.CFrame,"White")
                        rn4.Transparency=1
                        rn4.Mesh.MeshId="rbxassetid://3270017"
                        local rn5=nwPrt(cnOrb,Vector3.new(200,200,100),cnOrb.CFrame,"White")
                        rn5.Transparency=1
                        rn5.Mesh.MeshId="rbxassetid://3270017"
                        local rn6=nwPrt(cnOrb,Vector3.new(200,200,100),cnOrb.CFrame,"White")
                        rn6.Transparency=1
                        rn6.Mesh.MeshId="rbxassetid://3270017"
                        local nt=0
                        local cs=nil
                        z4 = Instance.new("Sound",char)
                        z4.SoundId = "rbxassetid://419447292"
                        z4.Pitch = 1
                        z4.Volume = 10
                        wait(0.1)
                        z4:Play()
                        z3 = Instance.new("Sound",char)
                        z3.SoundId = "rbxassetid://421328847"
                        z3.Pitch = 1
                        z3.Volume = 10
                        wait(0.1)
                        z3:Play()
                        for i=0,1,0.05 do
                                cs=cnOrb.Mesh.Scale
                                cnOrb.Mesh.Scale=Vector3.new(Tween(cs.X,100,i),Tween(cs.Y,100,i),Tween(cs.Z,100,i))
                                local fs=cnfx.Mesh.Scale
                                cnfx.Mesh.Scale=Vector3.new(Tween(fs.X,120,i),Tween(fs.Y,120,i),Tween(fs.Z,120,i))
                                cnfx.Transparency=cnfx.Transparency+0.05
                                rn1.Mesh.Scale=Vector3.new(Tween(fs.X,120,i),Tween(fs.Y,120,i),Tween(fs.Z,60,i))
                                rn2.Mesh.Scale=Vector3.new(Tween(fs.X,120,i),Tween(fs.Y,120,i),Tween(fs.Z,60,i))
                                rn1.CFrame=rn1.CFrame*CFrame.Angles(math.rad(10),math.rad(6),math.rad(3))
                                rn2.CFrame=rn2.CFrame*CFrame.Angles(math.rad(10),math.rad(6),math.rad(3))
                                rn1.Transparency=Tween(rn1.Transparency,0.8,i)
                                rn2.Transparency=Tween(rn2.Transparency,0.8,i)
                                rn3.Mesh.Scale=Vector3.new(Tween(fs.X,1200,i),Tween(fs.Y,1200,i),Tween(fs.Z,600,i))
                                rn4.Mesh.Scale=Vector3.new(Tween(fs.X,1200,i),Tween(fs.Y,1200,i),Tween(fs.Z,600,i))
                                rn3.CFrame=rn3.CFrame*CFrame.Angles(math.rad(-10),math.rad(-6),math.rad(-3))
                                rn4.CFrame=rn4.CFrame*CFrame.Angles(math.rad(-10),math.rad(-6),math.rad(-3))
                                rn3.Transparency=Tween(rn1.Transparency,0.8,i)
                                rn4.Transparency=Tween(rn2.Transparency,0.8,i)
                                rn5.Transparency=Tween(rn2.Transparency,0.25,i)
                                rn5.CFrame=rn5.CFrame*CFrame.Angles(math.rad(-20),math.rad(-18),math.rad(-9))
                                rn5.Mesh.Scale=Vector3.new(Tween(fs.X,2400,i),Tween(fs.Y,2400,i),Tween(fs.Z,1200,i))
                                rn6.Transparency=Tween(rn2.Transparency,0.25,i)
                                rn6.CFrame=rn6.CFrame*CFrame.Angles(math.rad(20),math.rad(18),math.rad(9))
                                rn6.Mesh.Scale=Vector3.new(Tween(fs.X,2400,i),Tween(fs.Y,2400,i),Tween(fs.Z,1200,i))
                                local rs=cnr.Mesh.Scale
                                cnr.Mesh.Scale=Vector3.new(Tween(rs.X,10,i),Tween(rs.Y,10,i),Tween(rs.Z,10,i))
                                nt=nt+1
                                if nt>=6 then
                                        local pls={}
                                        for _,v in pairs(game.Players:GetChildren()) do
                                                table.insert(pls,v)
                                        end
                                        local ry2,ht2,ps2=newRay(cnOrb.CFrame,cnOrb.CFrame*CFrame.new(0,-1,0),1000,pls)
                                        local pffx=nwPrt(mod3,Vector3.new(1,1,1),CFrame.new(ps2)*CFrame.new(0,10,-12),"White")
                                        pffx.Mesh.MeshId="rbxassetid://0"
                                        pffx.Mesh.Scale=Vector3.new(cs.X,cs.Y/5,cs.Z)
                                        debris:AddItem(pffx,2)
                                        table.insert(pfxt,pffx)
                                        nt=0
                                end
                                wait()
                        end
                        local int=0
                        coroutine.wrap(function()
                        for i=1,500 do
                                rn1.CFrame=rn1.CFrame*CFrame.Angles(math.rad(10),math.rad(5),math.rad(5))
                                rn2.CFrame=rn2.CFrame*CFrame.Angles(math.rad(10),math.rad(5),math.rad(5))
                                rn3.CFrame=rn3.CFrame*CFrame.Angles(math.rad(-10),math.rad(-5),math.rad(-5))
                                rn4.CFrame=rn4.CFrame*CFrame.Angles(math.rad(-10),math.rad(-5),math.rad(-5))
                                rn5.CFrame=rn5.CFrame*CFrame.Angles(math.rad(5),math.rad(5),math.rad(5))
                                rn6.CFrame=rn6.CFrame*CFrame.Angles(math.rad(-5),math.rad(-5),math.rad(-5))
                                nt=nt+1
                                int=int+1
                                local htd={p}
                                for _,v in pairs(game:service"Players":GetChildren()) do
                                        pcall(function()
                                                for _,c in pairs(v.Character:GetChildren()) do
                                                        if c:IsA("Part") and not inT(v,htd) and (cnOrb.CFrame.p-c.CFrame.p).magnitude<50 then
                                                                v.Character:FindFirstChild("Humanoid").Health=v.Character:FindFirstChild("Humanoid").Health-2
                                                                v.Character:FindFirstChild("HumanoidRootPart").Velocity=Vector3.new(0,0,0)
                                                                table.insert(htd,v)
                                                        end
                                                end
                                        end)
                                end
                                htd={p}
                                if int>=6 then
                                for _,v in pairs(game:service"Players":GetChildren()) do
                                        pcall(function()
                                                for _,c in pairs(v.Character:GetChildren()) do
                                                        if c:IsA("Part") and not inT(v,htd) and (cnOrb.CFrame.p-c.CFrame.p).magnitude<50 then
                                                                table.insert(htd,v)
                                                                local hfx=nwPrt(mod3,Vector3.new(1,1,1),c.CFrame*CFrame.new(math.random(-2,2),math.random(-2,2),math.random(-2,2)),"White")
                                                                hfx.Mesh.Scale=Vector3.new(2,2,2)
                                                                hfx.Mesh.MeshType=3
                                                                debris:AddItem(hfx,2)
                                                                coroutine.wrap(function()
                                                                        pcall(function()
                                                                                for i=0,1,0.05 do
                                                                                        pcall(function()
                                                                                        local hs=hfx.Mesh.Scale
                                                                                        hfx.CFrame=Lerp(hfx.CFrame,cnOrb.CFrame,i)
                                                                                        hfx.Mesh.Scale=Vector3.new(Tween(hs.X,0.1,i),Tween(hs.Y,0.1,i),Tween(hs.Z,0.1,i))
                                                                                        end)
                                                                                        wait()
                                                                                end
                                                                                hfx:Destroy()
                                                                        end)
                                                                end)()
                                                        end
                                                end
                                        end)
                                end
                                int=0
                                end
                                if nt>=4 then
                                        local pls={}
                                        for _,v in pairs(game.Players:GetChildren()) do
                                                table.insert(pls,v)
                                        end
                                        local ry2,ht2,ps2=newRay(cnOrb.CFrame,cnOrb.CFrame*CFrame.new(0,-1,0),1000,pls)
                                        local pffx=nwPrt(mod3,Vector3.new(1,1,1),CFrame.new(ps2)*CFrame.new(0,10,-12),"White")
                                        pffx.Transparency=0.4
                                        pffx.Mesh.MeshId="rbxassetid://0"
                                        pffx.Mesh.Scale=Vector3.new(cs.X-10,cs.Y/5,cs.Z-10)
                                        debris:AddItem(pffx,2)
                                        table.insert(pfxt,pffx)
                                        nt=0
                                end
                                wait()
                        end
                        cnOrb:Destroy()
                        cnfx:Destroy()
                        for _,v in pairs(mod3:GetChildren()) do
                                v:Destroy()
                        end
                        orbt={}
                        stlt={}
                        chot={}
                        cfxt={}
                        pfxt={}
                        end)()
                        if Debounces.CanAttack == false then
                                Debounces.CanAttack = true
                                Debounces.NoIdl = false
                                Debounces.on = false
            end
        end
    end
end)
----------------------------------------------------
--[[mouse.KeyDown:connect(function(key)
	if key == "y" then
		if Debounces.CanAttack == true then
			Debounces.CanAttack = false
			Debounces.NoIdl = true
			Debounces.on = true
				local shell = Instance.new("Part",torso)
				shell.BrickColor = TorsoColor
				shell.Anchored = false
				shell.CanCollide = false
				shell.Locked = true
				shell.TopSurface = "SmoothNoOutlines"
				shell.BottomSurface = "SmoothNoOutlines"
				shell.Size = Vector3.new(1.2,1.2,1.2)
				shell.FormFactor = 3
				local shellm = Instance.new("SpecialMesh",shell)
				shellm.MeshType = "Sphere"
				shellm.Scale = Vector3.new(1.2,1.2,1.2)
				Omega = function()
					local X = Instance.new("Part",char)
					local O = Instance.new("ObjectValue",X)
					O.Name = "creator"
					X.Locked = true
					X.Name = "Shell"
					X.Anchored = false
					X.CanCollide = false
					X.Transparency = 0.5
					X.Reflectance = 0
					X.BottomSurface = 0
					X.TopSurface = 0
					X.Shape = 0
					local V = Instance.new("ObjectValue",X)
					V.Value = char
					V.Name = "creator"
					X.BrickColor = TorsoColor
					X.Size = Vector3.new(40,40,40)
					--X.Material = "Neon"
					local Z = Instance.new("SpecialMesh",X)
					Z.MeshType = "Sphere"
					Z.Scale = Vector3.new(0.2,0.2,0.2)
					X.CFrame = rarm.CFrame*CFrame.new(0,-6,0)
					local bv = Instance.new("BodyVelocity",X)
					bv.maxForce = Vector3.new(99999,99999,99999)
					X.CFrame = CFrame.new(X.Position,root.CFrame.lookVector*10)
					bv.velocity = root.CFrame.lookVector*10
					Explode = X.Touched:connect(function(hit)
						if hit ~= char and hit.Name ~= "Shell" and hit ~= X and hit:IsA("Part") or hit:IsA("BasePart}") then
							local cf = X.CFrame
							bv:Destroy()
							X.Anchored = true
							Z:Remove()
							Explode:disconnect()
							X.Size = Vector3.new(3,3,3)
							X.Touched:connect(function(hit) end)
							X.CanCollide = false
							for i,v in pairs(FindNearestTorso(X.CFrame.p,200))do
								if v:FindFirstChild('Humanoid') then
									v.Humanoid:TakeDamage(math.random(80,120))
								end
							end
								for i = 1, (40) do rs:wait()
									X.Transparency = X.Transparency + (1/40)
									X.Size = X.Size + Vector3.new(1,1,1)
									X.CFrame = root.CFrame * CFrame.new(0,0,-10)
								end
							X:Destroy()
							end
						end)
					end
			for i = 1,200 do
				shell.CFrame = rarm.CFrame * CFrame.new(0,-1,0)
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.3,0.62,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(170)), 0.03)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.62,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.4)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(0),math.rad(0),0), 0.4)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(0), math.rad(0)), 0.4)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(0)), 0.4)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(0)), 0.4)
				if Debounces.on == false then break end
				rs:wait()
			end
			for i = 1,30 do
				shell.CFrame = torso.CFrame * CFrame.new(0,8,0)
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.3,0.62,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(170)), 0.4)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.3,0.62,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-170)), 0.4)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(0),math.rad(0),0), 0.4)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(0), math.rad(0)), 0.4)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(0)), 0.4)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(0)), 0.4)
				if Debounces.on == false then break end
				rs:wait()
			end
			for i = 1,40 do
				shell.CFrame = torso.CFrame * CFrame.new(0,20,0)
				shell.Size = shell.Size + Vector3.new(1,1,1)
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.4,0.6,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(100)), 0.4)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.4,0.6,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-100)), 0.4)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(0),math.rad(0),0), 0.4)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(0), math.rad(0)), 0.4)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(0)), 0.4)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(0)), 0.4)
				if Debounces.on == false then break end
				rs:wait()
			end
			for i = 1,40 do
				shell.CFrame = torso.CFrame * CFrame.new(0,0,-30)
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.4,0.6,0)*CFrame.Angles(math.rad(-50),math.rad(0),math.rad(20)), 0.4)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.4,0.6,0)*CFrame.Angles(math.rad(-50),math.rad(0),math.rad(-20)), 0.4)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(0),math.rad(0),0), 0.4)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(0), math.rad(0)), 0.4)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(0)), 0.4)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(0)), 0.4)
				if Debounces.on == false then break end
				rs:wait()
			end
			for i = 1,60 do
				shell.CFrame = torso.CFrame * CFrame.new(0,0,-60)
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.4,0.64,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-30)), 0.4)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.4,0.64,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(30)), 0.4)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(0),math.rad(0),0), 0.4)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(0), math.rad(0)), 0.4)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(0)), 0.4)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(0)), 0.4)
				if Debounces.on == false then break end
				rs:wait()
			end
			for i = 1,60 do
				shell.CFrame = torso.CFrame * CFrame.new(0,0,-60)
				shell.Size = shell.Size + Vector3.new(1,1,1)
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.4,0.64,0)*CFrame.Angles(math.rad(110),math.rad(0),math.rad(120)), 0.4)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.4,0.64,0)*CFrame.Angles(math.rad(110),math.rad(0),math.rad(-120)), 0.4)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(0),math.rad(0),0), 0.4)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(0), math.rad(0)), 0.4)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(0)), 0.4)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(0)), 0.4)
				if Debounces.on == false then break end
				rs:wait()
			end
			if Debounces.CanAttack == false then
				Debounces.CanAttack = true
				Debounces.NoIdl = false
				Debounces.on = false
            end
        end
    end
end)]]--
----------------------------------------------------
Charging = false
mouse.KeyDown:connect(function(key)
	if key == "r" then
		if Charging == false then
			Charging = true
			if Debounces.CanAttack == true then
				Debounces.CanAttack = false
				Debounces.NoIdl = true
				Debounces.on = true
				for i = 1,20 do
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.2,0.65,-.4)*CFrame.Angles(math.rad(130),math.rad(0),math.rad(-40)), 0.2)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.2,0.65,-.4)*CFrame.Angles(math.rad(130),math.rad(0),math.rad(40)), 0.2)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(0),0), 0.2)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-10), math.rad(0), 0), 0.2)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, .4, -0.8) * CFrame.Angles(math.rad(-6), math.rad(0), math.rad(0)), 0.2)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, .4, -0.8) * CFrame.Angles(math.rad(-6), math.rad(0), math.rad(0)), 0.2)
					if Debounces.on == false then break end
					rs:wait()
				end
				--[[for i = 1,20 do
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65,0)*CFrame.Angles(math.rad(-20),math.rad(-20),math.rad(50)), 0.4)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65,0)*CFrame.Angles(math.rad(-20),math.rad(20),math.rad(-50)), 0.4)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,.1)*CFrame.Angles(math.rad(34),math.rad(0),0), 0.4)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(15), math.rad(0), math.rad(0)), 0.4)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), 0, math.rad(-10)), 0.4)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), 0, math.rad(10)), 0.4)
					if Debounces.on == false then break end
					rs:wait()
				end]]--
xay = Instance.new("Sound",char)
xay.SoundId = "rbxassetid://419447292"
xay.Pitch = 1
xay.Volume = 2.5
xay:Play()
pt=Instance.new('Part',torso)
pt.Anchored=true
pt.CanCollide=false
pt.Locked = true
pt.FormFactor='Custom'
pt.Size=Vector3.new(1,1,1)
pt.CFrame=root.CFrame*CFrame.new(0,-1,0)
pt.Transparency=.6
pt.BrickColor=BrickColor.new('Really black')
msh=Instance.new('SpecialMesh',pt)
msh.MeshId='http://www.roblox.com/asset/?id=20329976'
msh.Scale=Vector3.new(8,4,8)
pt2=pt:clone()
pt2.Parent = torso
pt2.CFrame=root.CFrame*CFrame.new(0,-1,0)
pt2.BrickColor=TorsoColor
msh2=msh:clone()
msh2.Parent=pt2
msh2.Scale=Vector3.new(10,5,10)

custommath={25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,-25,-26,-27,-28,-29,-30,-31,-32,-33,-34,-35,-36,-37,-38,-39,-40,-41,-42,-43,-44,-45,-46,-47,-48,-49,-50,-51,-52,-53,-54,-55,-56,-57,-58,-59,-60,-61,-62,-63,-64,-65,-66,-67,-68,-69,-70,-71,-72,-73,-74,-75,-76,-77,-78,-79,-80,-81,-82,-83,-84,-85,-86,-87,-88,-89,-90,-91,-92,-93,-94,-95,-96,-97,-98,-99,-100}

bl = Instance.new("Part", char)
bl.Locked = true
bl.Name = "Shell"
bl.BrickColor = BrickColor.new("Really black")
bl.Anchored = true
bl.CanCollide = false
bl.Transparency = 0
bl.Reflectance = 0
bl.BottomSurface = 0
bl.TopSurface = 0
bl.Shape = 0
blm = Instance.new("SpecialMesh",bl)
blm.MeshType = "Sphere"
blm.Scale = Vector3.new(1,1,1)
blm.MeshId = "rbxassetid://9982590"

bl2 = Instance.new("Part", char)
bl2.Locked = true
bl2.Name = "Shella"
bl2.BrickColor = BrickColor.new("Really black")
bl2.Anchored = true
bl2.CanCollide = false
bl2.Transparency = 0
bl2.Reflectance = 0
bl2.BottomSurface = 0
bl2.TopSurface = 0
bl2.Shape = 0
blm2 = Instance.new("SpecialMesh",bl2)
blm2.MeshType = "Sphere"
blm2.Scale = Vector3.new(1,1,1)
blm2.MeshId = "rbxassetid://9982590"

	coroutine.resume(coroutine.create(function()
        for i=1, math.huge, 4 do
			if Charging == true then
				rs:wait()
				bl.CFrame = root.CFrame * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-i/10), math.rad(-i/10), math.rad(i/10))
				blm.Scale = blm.Scale + Vector3.new(15, 15, 15)
				bl.Transparency = bl.Transparency + 0.075
				bl2.CFrame = root.CFrame * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-i/10), math.rad(-i/10), math.rad(i/10))
				blm2.Scale = blm2.Scale + Vector3.new(5, 5, 5)
				bl2.Transparency = bl2.Transparency + 0.025
				pt.CFrame = root.CFrame*CFrame.new(0,-1,0) * CFrame.Angles(0,math.rad(i*2),0)
				pt2.CFrame = root.CFrame*CFrame.new(0,-1,0) * CFrame.Angles(0,math.rad(-i*2),0)
				msh.Scale = msh.Scale + Vector3.new(5,2.5,5)
				msh2.Scale = msh2.Scale + Vector3.new(10,5,10)
				elseif Charging == false then break
			end
		end
    end))

repeat
    local p = Instance.new('Part',torso)
    p.formFactor = 'Custom'
    p.Size = Vector3.new(1,1,1)
    p.BrickColor = workspace.Base.BrickColor
    p.CanCollide = false
    p.Transparency = 0
    p.Anchored = true
    p.Locked=true
    p.Material = workspace.Base.Material
    s = math.random(1,40)/10
    local m = Instance.new("BlockMesh",p)
    m.Scale = Vector3.new(s,s,s)
    p.CFrame = torso.CFrame*CFrame.new(custommath[math.random(1,#custommath)]/10,-math.random(5,7),custommath[math.random(1,#custommath)]/10)*CFrame.Angles(math.random(),math.random(),math.random())
	--[[coroutine.wrap(function()
		wait(2)
		while Charging == true do
		wait(2)
		GroundWave1()
		wait(2)
		end
	end)()]]--
	Spawn(function()
		while rs:wait() do
			if Charging == true then
				rarm.Weld.C0 = CFrame.new(1.5,0.65,0)*CFrame.Angles(math.rad(math.random(-36,-20)),math.rad(math.random(-30,-20)),math.rad(math.random(30,50)))
				larm.Weld.C0 = CFrame.new(-1.5,0.65,0)*CFrame.Angles(math.rad(math.random(-36,-20)),math.rad(math.random(20,30)),math.rad(math.random(-50,-30)))
				hed.Weld.C0 = CFrame.new(0,1.5,.1)*CFrame.Angles(math.rad(math.random(26,34)),math.rad(math.random(-5,5)),math.rad(0))
				torso.Weld.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(10), math.rad(math.random(-4,4)), math.rad(0))
				lleg.Weld.C0 = CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(math.random(-10,-6)), math.rad(math.random(10,20)), math.rad(math.random(-20,-10)))
				rleg.Weld.C0 = CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(math.random(-10,-6)), math.rad(math.random(-20,-10)), math.rad(math.random(10,20)))
			elseif Charging == false then break
			end
		end
	end)
	Spawn(function()
        while rs:wait() do
            if p.Transparency >= 1 then p:Destroy() break end
            p.CFrame = p.CFrame*CFrame.Angles(math.rad(2),math.rad(2),math.rad(2))+Vector3.new(0,0.2,0)
            p.Transparency = p.Transparency+0.01
        end
    end)
    wait(.3)
until Charging == false
			end
		end
	end
end)
----------------------------------------------------
mouse.KeyUp:connect(function(key)
	if key == "r" then
		if Charging == true then
			Charging = false
				pt:Destroy()
				pt2:Destroy()
				bl:Destroy()
			if Debounces.CanAttack == false then
				Debounces.CanAttack = true
				Debounces.NoIdl = false
				Debounces.on = false
			end
		end
	end
end)
----------------------------------------------------
mouse.KeyDown:connect(function(key)
	if key == "g" then
		if Debounces.CanAttack == true then
			Debounces.CanAttack = false
			Debounces.NoIdl = true
			Debounces.on = true
				local shell = Instance.new("Part",torso)
				shell.BrickColor = TorsoColor
				shell.Anchored = true
				shell.CanCollide = false
				shell.Locked = true
				shell.TopSurface = "SmoothNoOutlines"
				shell.BottomSurface = "SmoothNoOutlines"
				shell.Size = Vector3.new(1,1,1)
				shellm = Instance.new("SpecialMesh",shell)
				shellm.MeshType = "Sphere"
				shellm.Scale = Vector3.new(1,1,1)
				local shell2 = Instance.new("Part",torso)
				shell2.BrickColor = TorsoColor
				shell2.Anchored = true
				shell2.CanCollide = false
				shell2.Locked = true
				shell2.TopSurface = "SmoothNoOutlines"
				shell2.BottomSurface = "SmoothNoOutlines"
				shell2.Size = Vector3.new(1,1,1)
				shellm2 = Instance.new("SpecialMesh",shell2)
				shellm2.MeshType = "Sphere"
				shellm2.Scale = Vector3.new(1,1,1)

function FindNearestTorso(Position,Distance,SinglePlayer)
    if SinglePlayer then return(SinglePlayer.Torso.CFrame.p -Position).magnitude < Distance end
        local List = {}
        for i,v in pairs(workspace:GetChildren())do
            if v:IsA("Model")then
                if v:findFirstChild("Torso")then
                    if v ~= char then
                        if(v.Torso.Position -Position).magnitude <= Distance then
                            table.insert(List,v)
                        end
                    end
                end
            end
        end
    return List
end

Shell = function()
local X = Instance.new("Part",char)
local O = Instance.new("ObjectValue",X)
        O.Name = "creator"
        X.Locked = true
		X.Name = "Shell"
        X.Anchored = false
        X.CanCollide = false
        X.Transparency = 0
        X.Reflectance = 0
        X.BottomSurface = 0
        X.TopSurface = 0
        X.Shape = 0
        local V = Instance.new("ObjectValue",X)
        V.Value = char
        V.Name = "creator"
        X.BrickColor = TorsoColor
        X.Size = Vector3.new(1,1,1)
        --X.Material = "Neon"
        local Z = Instance.new("SpecialMesh",X)
        Z.MeshType = "Sphere"
        Z.Scale = Vector3.new(1,1,1)
        X.CFrame = rarm.CFrame*CFrame.new(0,-6,0)
        local bv = Instance.new("BodyVelocity",X)
        bv.maxForce = Vector3.new(99999,99999,99999)
        X.CFrame = CFrame.new(X.Position,root.CFrame.lookVector*10)
        bv.velocity = root.CFrame.lookVector*65
Explode = X.Touched:connect(function(hit)
        if hit ~= char and hit.Name ~= "Shell" and hit:IsA("Part") or hit:IsA("BasePart}") then
        local cf = X.CFrame
        bv:Destroy()
        X.Anchored = true
        Z:Remove()
        Explode:disconnect()
        X.Size = Vector3.new(3,3,3)
        X.Touched:connect(function(hit) end)
        X.CanCollide = false
		for i,v in pairs(FindNearestTorso(X.CFrame.p,40))do
			if v:FindFirstChild('Humanoid') then
				v.Humanoid:TakeDamage(math.random(6,12))
			end
		end
			for i = 1, (40) do rs:wait()
				X.Transparency = X.Transparency + (1/40)
				X.Size = X.Size + Vector3.new(1,1,1)
				X.CFrame = cf
			end
		X:Destroy()
		end
	end)
end
				Shell()
				for i = 1, 10 do
					shell.CFrame = rarm.CFrame * CFrame.new(0,-1,0)
					shell2.CFrame = larm.CFrame * CFrame.new(0,-1,0)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(110)), 0.7)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-110)), 0.7)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(0),0), 0.7)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(0), 0), 0.7)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-20)), 0.7)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(20)), 0.7)
					if Debounces.on == false then break end
					rs:wait()
				end
				Shell()
				shell.Transparency = 1
				for i = 1, 10 do
					shell.CFrame = rarm.CFrame * CFrame.new(0,-1,0)
					shell2.CFrame = larm.CFrame * CFrame.new(0,-1,0)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-40)), 0.7)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-110)), 0.7)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(-50),0), 0.7)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(50), 0), 0.7)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(-20)), 0.7)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(20)), 0.7)
					if Debounces.on == false then break end
					rs:wait()
				end
				Shell()
				shell.Transparency = 0
				shell2.Transparency = 1
				for i = 1, 10 do
					shell.CFrame = rarm.CFrame * CFrame.new(0,-1,0)
					shell2.CFrame = larm.CFrame * CFrame.new(0,-1,0)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(110)), 0.7)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(40)), 0.7)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(50),0), 0.7)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-50), 0), 0.7)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(-20)), 0.7)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(20)), 0.7)
					if Debounces.on == false then break end
					rs:wait()
				end
				Shell()
				shell2.Transparency = 0
				shell.Transparency = 1
				for i = 1, 10 do
					shell.CFrame = rarm.CFrame * CFrame.new(0,-1,0)
					shell2.CFrame = larm.CFrame * CFrame.new(0,-1,0)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-40)), 0.7)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-110)), 0.7)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(-50),0), 0.7)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(50), 0), 0.7)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(-20)), 0.7)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(20)), 0.7)
					if Debounces.on == false then break end
					rs:wait()
				end
				Shell()
				shell.Transparency = 0
				shell2.Transparency = 1
				for i = 1, 10 do
					shell.CFrame = rarm.CFrame * CFrame.new(0,-1,0)
					shell2.CFrame = larm.CFrame * CFrame.new(0,-1,0)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(110)), 0.7)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(40)), 0.7)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(50),0), 0.7)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-50), 0), 0.7)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(-20)), 0.7)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(20)), 0.7)
					if Debounces.on == false then break end
					rs:wait()
				end
				Shell()
				shell2.Transparency = 0
				shell.Transparency = 1
				for i = 1, 10 do
					shell.CFrame = rarm.CFrame * CFrame.new(0,-1,0)
					shell2.CFrame = larm.CFrame * CFrame.new(0,-1,0)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-40)), 0.7)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-110)), 0.7)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(-50),0), 0.7)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(50), 0), 0.7)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(-20)), 0.7)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(20)), 0.7)
					if Debounces.on == false then break end
					rs:wait()
				end
				Shell()
				shell.Transparency = 0
				shell2.Transparency = 1
				for i = 1, 10 do
					shell.CFrame = rarm.CFrame * CFrame.new(0,-1,0)
					shell2.CFrame = larm.CFrame * CFrame.new(0,-1,0)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(110)), 0.7)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(50),0), 0.5)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(40)), 0.7)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-50), 0), 0.7)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(-20)), 0.7)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(20)), 0.7)
					if Debounces.on == false then break end
					rs:wait()
				end
				Shell()
				shell2.Transparency = 0
				shell.Transparency = 1
				for i = 1, 10 do
					shell.CFrame = rarm.CFrame * CFrame.new(0,-1,0)
					shell2.CFrame = larm.CFrame * CFrame.new(0,-1,0)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-40)), 0.7)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-110)), 0.7)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(-50),0), 0.7)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(50), 0), 0.7)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(-20)), 0.7)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(20)), 0.7)
					if Debounces.on == false then break end
					rs:wait()
				end
				Shell()
				shell.Transparency = 0
				shell2.Transparency = 1
				for i = 1, 10 do
					shell.CFrame = rarm.CFrame * CFrame.new(0,-1,0)
					shell2.CFrame = larm.CFrame * CFrame.new(0,-1,0)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(110)), 0.7)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(40)), 0.7)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(50),0), 0.7)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-50), 0), 0.7)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(-20)), 0.7)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(20)), 0.7)
					if Debounces.on == false then break end
					rs:wait()
				end
				Shell()
				shell2.Transparency = 0
				shell.Transparency = 1
				for i = 1, 10 do
					shell.CFrame = rarm.CFrame * CFrame.new(0,-1,0)
					shell2.CFrame = larm.CFrame * CFrame.new(0,-1,0)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-40)), 0.7)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-110)), 0.7)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(-50),0), 0.7)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(50), 0), 0.7)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(-20)), 0.7)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(20)), 0.7)
					if Debounces.on == false then break end
					rs:wait()
				end
				Shell()
				shell.Transparency = 0
				shell2.Transparency = 1
				for i = 1, 10 do
					shell.CFrame = rarm.CFrame * CFrame.new(0,-1,0)
					shell2.CFrame = larm.CFrame * CFrame.new(0,-1,0)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(110)), 0.7)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(40)), 0.7)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(50),0), 0.7)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-50), 0), 0.7)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(-20)), 0.7)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(20)), 0.7)
					if Debounces.on == false then break end
					rs:wait()
				end
				Shell()
				shell2.Transparency = 0
				shell.Transparency = 1
				for i = 1, 10 do
					shell.CFrame = rarm.CFrame * CFrame.new(0,-1,0)
					shell2.CFrame = larm.CFrame * CFrame.new(0,-1,0)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-40)), 0.7)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-110)), 0.7)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(-50),0), 0.7)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(50), 0), 0.7)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(-20)), 0.7)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(20)), 0.7)
					if Debounces.on == false then break end
					rs:wait()
				end
				Shell()
				shell.Transparency = 0
				shell2.Transparency = 1
				for i = 1, 10 do
					shell.CFrame = rarm.CFrame * CFrame.new(0,-1,0)
					shell2.CFrame = larm.CFrame * CFrame.new(0,-1,0)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(110)), 0.7)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(40)), 0.7)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(50),0), 0.7)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-50), 0), 0.7)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(-20)), 0.7)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(20)), 0.7)
					if Debounces.on == false then break end
					rs:wait()
				end
				shell.Transparency = 1
			if Debounces.CanAttack == false then
				Debounces.CanAttack = true
				Debounces.NoIdl = false
				Debounces.on = false
			end
		end
	end
end)
----------------------------------------------------
Search = false
mouse.KeyDown:connect(function(key)
	if key == "n" then
		if Search == false then
			Search = true
			for i,v in pairs(game.Players:getPlayers()) do
				if v.Name~=char.Name then
					for j,k in pairs(v.Character:GetChildren()) do
						if k:IsA("BasePart") and k.Transparency >= 1 then
							bawx=Instance.new("SelectionBox",cam)
							bawx.Color = BrickColor.new("Bright red")
							bawx.Transparency = .5
							bawx.Adornee = k
						end
                    end
                end
            end
		elseif Search == true then
			Search = false
			for i, v in pairs(cam:GetChildren()) do
				if v:IsA("SelectionBox") then
					v:Destroy()
				end
			end
	    end
    end
end)
----------------------------------------------------
Grab = false
mouse.KeyDown:connect(function(key)
    if key == "z" then
        Debounces.on = true
        Debounces.NoIdl = true
		Debounces.ks = true
        if Grab == false then
        gp = nil
		for i = 1, 20 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(110)), 0.2)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-110)), 0.2)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(0),0), 0.2)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(0), 0), 0.2)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(30), math.rad(-20)), 0.2)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-15), math.rad(20)), 0.2)
			if Debounces.on == false then break end
			rs:wait()
		end
        con1=larm.Touched:connect(function(hit) -- this is grab
            ht = hit.Parent
            hum1=ht:FindFirstChild('Humanoid')
            if hum1 ~= nil then
			    if Debounces.ks==true then
                z = Instance.new("Sound",hed)
                z.SoundId = "rbxassetid://169380525"
                z.Volume = 1
                z:Play()
                Debounces.ks=false
				end
                hum1.PlatformStand=true
                gp = ht
                Grab = true
                asd=weld5(root,ht:FindFirstChild("Torso"),CFrame.new(0,0,-2.4),CFrame.new(0,0,0))
                asd.Parent = larm
                asd.Name = "asd"
                asd.C0=asd.C0*CFrame.Angles(math.rad(0),math.rad(180),0)
            --[[elseif hum1 == nil then
                con1:disconnect()
                wait() return]]--
            end
        end)
		for i = 1, 20 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.3,0.65,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-40)), 0.2)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.3,0.65,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(40)), 0.2)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(0),0), 0.2)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(0), 0), 0.2)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(30), math.rad(-20)), 0.2)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-15), math.rad(20)), 0.2)
			if Debounces.on == false then break end
			rs:wait()
		end
	if hum1 == nil then
    Debounces.on = false
    Debounces.NoIdl = false
	end
	con1:disconnect()
    elseif Grab == true then
        Grab = false
		Punch()
		z = Instance.new("Sound",hed)
		z.SoundId = "rbxassetid://169380525"
		z.Pitch = ptz[math.random(1,#ptz)]
		z.Volume = 1
		z:Play()
		for i = 1, 10 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.2,0.4,-.5)*CFrame.Angles(math.rad(80),math.rad(0),math.rad(-50)), 0.7)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.7,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-110)), 0.7)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(90),0), 0.4)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-90), 0), 0.6)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.2)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.2)
			if Debounces.on == false then break end
			rs:wait()
		end
		Punch()
		z = Instance.new("Sound",hed)
		z.SoundId = "rbxassetid://169380525"
		z.Pitch = ptz[math.random(1,#ptz)]
		z.Volume = 1
		z:Play()
		for i = 1, 10 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.7,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(110)), 0.6)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.7,0)*CFrame.Angles(math.rad(-40),math.rad(0),math.rad(20)), 0.7)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-90),0), 0.4)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(90), 0), 0.65)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.2)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.2)
			if Debounces.on == false then break end
			rs:wait()
		end
		Punch()
		z = Instance.new("Sound",hed)
		z.SoundId = "rbxassetid://169380525"
		z.Pitch = ptz[math.random(1,#ptz)]
		z.Volume = 1
		z:Play()
		for i = 1, 10 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.2,0.4,-.5)*CFrame.Angles(math.rad(80),math.rad(0),math.rad(-50)), 0.7)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.7,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-110)), 0.7)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(90),0), 0.4)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-90), 0), 0.6)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.2)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.2)
			if Debounces.on == false then break end
			rs:wait()
		end
		Punch()
		z = Instance.new("Sound",hed)
		z.SoundId = "rbxassetid://169380525"
		z.Pitch = ptz[math.random(1,#ptz)]
		z.Volume = 1
		z:Play()
		for i = 1, 10 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.7,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(110)), 0.6)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.7,0)*CFrame.Angles(math.rad(-40),math.rad(0),math.rad(20)), 0.7)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-90),0), 0.4)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(90), 0), 0.65)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.2)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.2)
			if Debounces.on == false then break end
			rs:wait()
		end
		Punch()
		z = Instance.new("Sound",hed)
		z.SoundId = "rbxassetid://169380525"
		z.Pitch = ptz[math.random(1,#ptz)]
		z.Volume = 1
		z:Play()
		for i = 1, 10 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.2,0.4,-.5)*CFrame.Angles(math.rad(80),math.rad(0),math.rad(-50)), 0.7)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.7,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-110)), 0.7)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(90),0), 0.4)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-90), 0), 0.6)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.2)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.2)
			if Debounces.on == false then break end
			rs:wait()
		end
		Punch()
		z = Instance.new("Sound",hed)
		z.SoundId = "rbxassetid://169380525"
		z.Pitch = ptz[math.random(1,#ptz)]
		z.Volume = 1
		z:Play()
		for i = 1, 10 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.7,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(110)), 0.6)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.7,0)*CFrame.Angles(math.rad(-40),math.rad(0),math.rad(20)), 0.7)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-90),0), 0.4)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(90), 0), 0.65)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.2)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.2)
			if Debounces.on == false then break end
			rs:wait()
		end
		Punch()
		z = Instance.new("Sound",hed)
		z.SoundId = "rbxassetid://169380525"
		z.Pitch = ptz[math.random(1,#ptz)]
		z.Volume = 1
		z:Play()
		for i = 1, 10 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.2,0.4,-.5)*CFrame.Angles(math.rad(80),math.rad(0),math.rad(-50)), 0.7)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.7,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-110)), 0.7)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(90),0), 0.4)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-90), 0), 0.6)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.2)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.2)
			if Debounces.on == false then break end
			rs:wait()
		end
		Punch()
		z = Instance.new("Sound",hed)
		z.SoundId = "rbxassetid://169380525"
		z.Pitch = ptz[math.random(1,#ptz)]
		z.Volume = 1
		z:Play()
		for i = 1, 10 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.7,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(110)), 0.6)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.7,0)*CFrame.Angles(math.rad(-40),math.rad(0),math.rad(20)), 0.7)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-90),0), 0.4)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(90), 0), 0.65)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.2)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.2)
			if Debounces.on == false then break end
			rs:wait()
		end
		Punch()
		z = Instance.new("Sound",hed)
		z.SoundId = "rbxassetid://169380525"
		z.Pitch = ptz[math.random(1,#ptz)]
		z.Volume = 1
		z:Play()
		for i = 1, 10 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.2,0.4,-.5)*CFrame.Angles(math.rad(80),math.rad(0),math.rad(-50)), 0.7)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.7,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-110)), 0.7)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(90),0), 0.4)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-90), 0), 0.6)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.2)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.2)
			if Debounces.on == false then break end
			rs:wait()
		end
		Punch()
		z = Instance.new("Sound",hed)
		z.SoundId = "rbxassetid://169380525"
		z.Pitch = ptz[math.random(1,#ptz)]
		z.Volume = 1
		z:Play()
		for i = 1, 10 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.7,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(110)), 0.6)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.7,0)*CFrame.Angles(math.rad(-40),math.rad(0),math.rad(20)), 0.7)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-90),0), 0.4)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(90), 0), 0.65)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.2)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.2)
			if Debounces.on == false then break end
			rs:wait()
		end
		Punch()
		z = Instance.new("Sound",hed)
		z.SoundId = "rbxassetid://169380525"
		z.Pitch = ptz[math.random(1,#ptz)]
		z.Volume = 1
		z:Play()
		for i = 1, 10 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.2,0.4,-.5)*CFrame.Angles(math.rad(80),math.rad(0),math.rad(-50)), 0.7)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.7,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-110)), 0.7)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(90),0), 0.4)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-90), 0), 0.6)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.2)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.2)
			if Debounces.on == false then break end
			rs:wait()
		end
		Punch()
		z = Instance.new("Sound",hed)
		z.SoundId = "rbxassetid://169380525"
		z.Pitch = ptz[math.random(1,#ptz)]
		z.Volume = 1
		z:Play()
		for i = 1, 10 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.7,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(110)), 0.6)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.7,0)*CFrame.Angles(math.rad(-40),math.rad(0),math.rad(20)), 0.7)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-90),0), 0.4)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(90), 0), 0.65)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.2)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.2)
			if Debounces.on == false then break end
			rs:wait()
		end
		con1:disconnect()
		Debounces.on = false
		Debounces.NoIdl = false
		if gp ~= nil then
			gp:FindFirstChild("Torso").Velocity = hed.CFrame.lookVector * 140
				for i,v in pairs(larm:GetChildren()) do
					if v.Name == "asd" and v:IsA("Weld") then
				v:Remove()
			end
		end
        --[[bv = Instance.new("BodyVelocity",gp:FindFirstChild("Torso"))
        bv.maxForce = Vector3.new(400000, 400000, 400000)
        bv.P = 125000
        bv.velocity = char.Head.CFrame.lookVector * 200]]--
        hum1=nil
		ht=nil
        Debounces.on = false
        Debounces.NoIdl = false
        elseif ht == nil then wait()
        Grab = false
        Debounces.on = false
        Debounces.NoIdl = false
            end
        end
    end
end)
----------------------------------------------------
paly = game.Players.LocalPlayer
paly = game.Players.LocalPlayer
p = game.Players.LocalPlayer
char = paly.Character
vt = Vector3.new
rarm = char["Right Arm"]
larm = char["Left Arm"]
local maincolor = char.Torso.BrickColor
 
local orb = Instance.new("Part")
orb.Parent = char
orb.Size = Vector3.new(0.5, 0.5, 0.5)
orb.Archivable = true
orb.Transparency = 1
orb.BrickColor = maincolor
orb.Material = "Neon"
orb.CanCollide = false
local weld1 = Instance.new("Weld")
weld1.Parent = rarm
weld1.Part0 = rarm
weld1.Part1 = orb
weld1.C1 = CFrame.new(0, 1.125, 0)
local pt1 = NumberSequenceKeypoint.new(0,0.85,0)
local pt2 = NumberSequenceKeypoint.new(1,0,0)
local effecto = Instance.new("ParticleEmitter",orb)
effecto.LightEmission = 1
effecto.Texture = "rbxasset://textures/particles/smoke_main.dds"
effecto.Color = ColorSequence.new(maincolor.Color)
effecto.Rate = 10000
effecto.Lifetime = NumberRange.new(1)
effecto.Size = NumberSequence.new({pt1,pt2})
effecto.Speed = NumberRange.new(0,0)
effecto.RotSpeed = NumberRange.new(100,100)
 
local orbz = Instance.new("Part")
orbz.Parent = char
orbz.Size = Vector3.new(0.5, 0.5, 0.5)
orbz.Archivable = true
orbz.Transparency = 1
orbz.BrickColor = maincolor
orbz.Material = "Neon"
orbz.CanCollide = false
local weldz1 = Instance.new("Weld")
weldz1.Parent = larm
weldz1.Part0 = larm
weldz1.Part1 = orbz
weldz1.C1 = CFrame.new(0, 1.125, 0)
local effecton = Instance.new("ParticleEmitter",orbz)
effecton.LightEmission = 1
effecton.Texture = "rbxasset://textures/particles/smoke_main.dds"
effecton.Color = ColorSequence.new(maincolor.Color)
effecton.Rate = 10000
effecton.Lifetime = NumberRange.new(1)
effecton.Size = NumberSequence.new({pt1,pt2})
effecton.Speed = NumberRange.new(0,0)
effecton.RotSpeed = NumberRange.new(100,100)
-------------------------------------------

mouse.KeyDown:connect(function(key)
    if string.byte(key) == 52 then
        char.Humanoid.WalkSpeed = 60
    end
end)
mouse.KeyUp:connect(function(key)
    if string.byte(key) == 52 then
        char.Humanoid.WalkSpeed = 8
    end
end)
-------------------------------
local animpose = "Idle"
local lastanimpose = "Idle"
local sine = 0
local change = 1
local val = 0
local och = 0
local ffing = false
-------------------------------
game:GetService("RunService").RenderStepped:connect(function()
--[[if char.Humanoid.Jump == true then
jump = true
else
jump = false
end]]
char.Humanoid.FreeFalling:connect(function(f)
if f then
ffing = true
else
ffing = false
end
end)
sine = sine + change
if jumpn == true then
animpose = "Jumping"
elseif ffing == true then
animpose = "Freefalling"
elseif (torso.Velocity*Vector3.new(1, 0, 1)).magnitude < 2 then
animpose = "Idle"
elseif (torso.Velocity*Vector3.new(1, 0, 1)).magnitude < 20 then
animpose = "Walking"
elseif (torso.Velocity*Vector3.new(1, 0, 1)).magnitude > 20 then
animpose = "Running"
end
if animpose ~= lastanimpose then
sine = 0
if Debounces.NoIdl == false then
if animpose == "Idle" then
for i = 1, 2 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.62,0)*CFrame.Angles(math.rad(-6),math.rad(-6),math.rad(8)), 0.4)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.62,0)*CFrame.Angles(math.rad(-6),math.rad(6),math.rad(-8)), 0.4)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(0),0), 0.4)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(0), math.rad(0)), 0.4)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -0.625, -0.35) * CFrame.Angles(0, 0, math.rad(-8)), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(8)), 0.4)
end
elseif animpose == "Walking" then
for i = 1, 2 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.55,0)*CFrame.Angles(math.rad(-16),math.rad(-12),math.rad(10+2*math.cos(sine/14))), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.55,0)*CFrame.Angles(math.rad(-16),math.rad(12),math.rad(-10-2*math.cos(sine/14))), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -.2) * CFrame.Angles(math.rad(-14),0,0), 0.4)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-10),0, math.rad(0)), 0.05)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-8), 0, math.rad(-8)), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-8), 0, math.rad(8)), 0.4)
end
elseif animpose == "Running" then
for i = 1, 2 do
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles  (math.rad(44), math.rad (0), math.rad(0)), 0.15)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 1-0.1*math.cos(sine/14), -1) * CFrame.Angles(math.rad(-  80),  math.rad(0), 0), 0.15)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad  (0), math.rad(50),  math.rad(-40)), 0.15)
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(0),   math.rad(-50),  math.rad(40)), 0.15)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(8),   math.rad(0), math.rad(- 10)), .15)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(8),   math.rad(0), math.rad(10)),  .15)
wait()
end
end
else
end
end
lastanimpose = animpose
if Debounces.NoIdl == false then
if animpose == "Idle" then
change = 0.5
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.6,0.2)*CFrame.Angles(math.rad(-12-4*math.cos(sine/22)),math.rad(-12-2*math.cos(sine/22)),math.rad(12+2*math.cos(sine/22))), 0.3)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6,-0.2)*CFrame.Angles(math.rad(20+4*math.cos(sine/22)),math.rad(-22-2*math.cos(sine/22)),math.rad(-15-2*math.cos(sine/22))), 0.3)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(-12+2.5*math.cos(sine/22)),math.rad(0),math.rad(0)), 0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-2+2*math.cos(sine/22)), math.rad(0), 0), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, -0.06) * CFrame.Angles(math.rad(0-2*math.cos(sine/22)), math.rad(5), math.rad(-5)), 0.2)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, -0.06) * CFrame.Angles(math.rad(0-2*math.cos(sine/22)), math.rad(-5), math.rad(5)), 0.2)
elseif animpose == "Walking" then
change = 1
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.55,0)*CFrame.Angles(math.rad(-32),math.rad(-28),math.rad(10+2*math.cos(sine/14))), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.55,0)*CFrame.Angles(math.rad(50),math.rad(-45),math.rad(-10-2*math.cos(sine/14))), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -.2) * CFrame.Angles(math.rad(-14),0,0), 0.4)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0-0.1*math.cos(sine/14), 0) * CFrame.Angles(math.rad(-10),0, math.rad(0)), 0.05)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -0.215, -0.35) * CFrame.Angles(-0.35, 0, 0), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(-0.475,0,0), 0.4)
elseif animpose == "Running" then
change = 1
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles  (math.rad(44), math.rad (0), math.rad(0)), 0.15)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 1-0.1*math.cos(sine/14), -1) * CFrame.Angles(math.rad(-  80),  math.rad(0), 0), 0.15)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad  (0), math.rad(50),  math.rad(-40)), 0.15)
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(0),   math.rad(-50),  math.rad(40)), 0.15)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(8),   math.rad(0), math.rad(- 10)), .15)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(8),   math.rad(0), math.rad(10)),  .15)
end
end
end)

hum.MaxHealth = math.huge
wait(3)
hum.Health = hum.MaxHealth

function Lightning(Part0,Part1,Times,Offset,Color,Thickness,Trans) -- Lightning module
    --[[Part0 = Vector3 (Start pos)
		Part1 = Vector3 (End pos)
		Times = number (Amount of lightning parts)
		Offset = number (Offset)
		Color = color (brickcolor value)
		Thickness = number (thickness)
		Trans = number (transparency)
    ]]--
    local magz = (Part0 - Part1).magnitude
    local curpos = Part0
    local trz = {-Offset,Offset}
    for i=1,Times do
        local li = Instance.new("Part", torso)
		li.Name = "Lightning"
		li.TopSurface =0
		li.Material = "Neon"
		li.BottomSurface = 0
		li.Anchored = true
		li.Locked = true
		li.Transparency = Trans or 0.4
		li.BrickColor = TorsoColor
		li.formFactor = "Custom"
		li.CanCollide = false
		li.Size = Vector3.new(Thickness,Thickness,magz/Times)
        local Offzet = Vector3.new(trz[math.random(1,2)],trz[math.random(1,2)],trz[math.random(1,2)])
        local trolpos = CFrame.new(curpos,Part1)*CFrame.new(0,0,magz/Times).p+Offzet
        if Times == i then
        local magz2 = (curpos - Part1).magnitude
        li.Size = Vector3.new(Thickness,Thickness,magz2)
        li.CFrame = CFrame.new(curpos,Part1)*CFrame.new(0,0,-magz2/2)
        else
        li.CFrame = CFrame.new(curpos,trolpos)*CFrame.new(0,0,magz/Times/2)
        end
        curpos = li.CFrame*CFrame.new(0,0,magz/Times/2).p
        game.Debris:AddItem(li,.1)
    end
end

BodyParts = {} -- Parts to emit lightning effects from
for _, v in pairs(char:GetChildren()) do
    if v:IsA("Part") then
        table.insert(BodyParts, v)
    end
end

Bounding = {} -- Calculate the bounding boxes
for _, v in pairs(BodyParts) do
	local temp = {X=nil, Y=nil, Z=nil}
	temp.X = v.Size.X/2 * 10
	temp.Y = v.Size.Y/2 * 10
	temp.Z = v.Size.Z/2 * 10
	Bounding[v.Name] = temp
	--table.insert(Bounding, v.Name, temp)
end

while wait(math.random(1,10)/10) do -- Emit the Lightning effects randomly
	local Body1 = BodyParts[math.random(#BodyParts)]
	local Body2 = BodyParts[math.random(#BodyParts)]
	local Pos1 = Vector3.new(
		math.random(-Bounding[Body1.Name].X, Bounding[Body1.Name].X)/10,
		math.random(-Bounding[Body1.Name].Y, Bounding[Body1.Name].Y)/10,
		math.random(-Bounding[Body1.Name].Z, Bounding[Body1.Name].Z)/10
)
	local Pos2 = Vector3.new(
		math.random(-Bounding[Body2.Name].X, Bounding[Body2.Name].X)/10,
		math.random(-Bounding[Body2.Name].Y, Bounding[Body2.Name].Y)/10,
		math.random(-Bounding[Body2.Name].Z, Bounding[Body2.Name].Z)/10
)
	local SPos1 = Body1.Position + Pos1
	local SPos2 = Body2.Position + Pos2
	Lightning(SPos1, SPos2, 4, 3, "Bright blue", .3, .56)
end
och=och+1
for _,v in pairs(orbt) do
        pcall(function()
                v.Mesh.Scale=Vector3.new(cns+(0.2*math.cos(och/12)),cns+(0.2*math.cos(och/10)),cns+(0.2*math.cos(och/8)))
        end)
end
for _,v in pairs(stlt) do
        pcall(function()
                v.CFrame=larm.CFrame*CFrame.new(0,-3.5-(cns/2),-0.1)
        end)
end
for _,v in pairs(chot) do
        pcall(function()
                v.CFrame=Lerp(v.CFrame,cnOrb.CFrame,0.1)
                v.Mesh.Scale=Vector3.new(Tween(v.Mesh.Scale.X,0,0.1),Tween(v.Mesh.Scale.Y,0,0.1),Tween(v.Mesh.Scale.Z,0,0.1))
        end)
end
for _,v in pairs(cfxt) do
        pcall(function()
                local vs=v.Mesh.Scale
                v.Mesh.Scale=Vector3.new(vs.x+0.5,vs.y+0.1,vs.z+0.5)
                v.Transparency=v.Transparency+0.05
        end)
end
for _,v in pairs(pfxt) do
        pcall(function()
                local vs=v.Mesh.Scale
                v.Mesh.Scale=Vector3.new(vs.x+2,vs.y+0.5,vs.z+2)
                v.Transparency=v.Transparency+0.025
        end)
end
