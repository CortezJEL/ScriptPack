--[[QARMORY]]--
wait(1 / 60)
script.Archivable=false
Effects = { }
local Player = game.Players.localPlayer
local Character = Player.Character
local Humanoid = Character.Humanoid
local mouse = Player:GetMouse()
local m = Instance.new('Model', Character)
m.Name = "WeaponModel"
local effect = Instance.new('Model', Character)
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
local Anim = 'Idle'
local idle = 0
local attacktype = 1
local Torsovelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude 
local velocity = RootPart.Velocity.y
local sine = 0
local change = 1
local mana = 0
local it =Instance.new
vt=Vector3.new
local grabbed = false
local cf = CFrame.new
local mr = math.rad
local angles = CFrame.Angles
local ud = UDim2.new
local c3 = Color3.new

local NeckCF = cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
Humanoid.Animator:Destroy()
Character.Animate:Destroy()

local RootCF = CFrame.fromEulerAnglesXYZ(-1.57, 0, 3.14)
local RHCF = CFrame.fromEulerAnglesXYZ(0, 1.6, 0)
local LHCF = CFrame.fromEulerAnglesXYZ(0, -1.6, 0)

RSH, LSH = nil, nil 

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

function clerp(a, b, t)
	return a:lerp(b, t)
end


local RbxUtility = LoadLibrary("RbxUtility")
local Create = RbxUtility.Create

function RemoveOutlines(part)
	part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
end
	
function CreatePart(Parent, Material, Reflectance, Transparency, BColor, Name, Size)
	local Part = Create("Part"){
		Parent = Parent,
		Reflectance = Reflectance,
		Transparency = Transparency,
		CanCollide = false,
		Locked = true,
		BrickColor = BrickColor.new(tostring(BColor)),
		Name = Name,
		Size = Size,
		Material = Material,
	}
	RemoveOutlines(Part)
	return Part
end
	
function CreateMesh(Mesh, Part, MeshType, MeshId, OffSet, Scale)
	local Msh = Create(Mesh){
		Parent = Part,
		Offset = OffSet,
		Scale = Scale,
	}
	if Mesh == "SpecialMesh" then
		Msh.MeshType = MeshType
		Msh.MeshId = MeshId
	end
	return Msh
end

local co1 = 5
local co2 = 7
local co3 = 10
local co4 = 20

local cooldown1 = 0
local cooldown2 = 0
local cooldown3 = 0
local cooldown4 = 0

local maxEnergy = 100
local Energy = 0--Energy you start out with
local skill1stam = 10--how much stamina is needed for a skill
local skill2stam = 50
local skill3stam = 60
local skill4stam = 100
local recovermana = 5--how much mana per second

local skillcolorscheme = BrickColor.new("Dirt brown").Color

local scrn = Instance.new('ScreenGui', Player.PlayerGui)
function makeframe(par, trans, pos, size, color)
	local frame = Instance.new('Frame', par)
	frame.BackgroundTransparency = trans
	frame.BorderSizePixel = 0
	frame.Position = pos
	frame.Size = size
	frame.BackgroundColor3 = color
	return frame
end

function makelabel(par, text)
	local label = Instance.new('TextLabel', par)
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
framesk1 = makeframe(scrn, .5, UDim2.new(.8, 0, .93, 0), UDim2.new(.16, 0, .06, 0), skillcolorscheme)
framesk2 = makeframe(scrn, .5, UDim2.new(.8, 0, .86, 0), UDim2.new(.16, 0, .06, 0), skillcolorscheme)
framesk3 = makeframe(scrn, .5, UDim2.new(.8, 0, .79, 0), UDim2.new(.16, 0, .06, 0), skillcolorscheme)
framesk4 = makeframe(scrn, .5, UDim2.new(.8, 0, .72, 0), UDim2.new(.16, 0, .06, 0), skillcolorscheme)
bar1 = makeframe(framesk1, 0, UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0), skillcolorscheme)
bar2 = makeframe(framesk2, 0, UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0), skillcolorscheme)
bar3 = makeframe(framesk3, 0, UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0), skillcolorscheme)
bar4 = makeframe(framesk4, 0, UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0), skillcolorscheme)
text1 = makelabel(framesk1, '[Z] Earthwave')
text2 = makelabel(framesk2, "[X] Charger")
text3 = makelabel(framesk3, "[C] Fury")
text4 = makelabel(framesk4, '[V] Devastation')

--[[Credits to SazErenos for his Artificial Heartbeat]]--

ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "Heartbeat"

script:WaitForChild("Heartbeat")

frame = 1 / 30
tf = 0
allowframeloss = false
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

	
function CreateWeld(Parent, Part0, Part1, C0, C1)
	local Weld = Create("Weld"){
		Parent = Parent,
		Part0 = Part0,
		Part1 = Part1,
		C0 = C0,
		C1 = C1,
	}
	return Weld
end

function rayCast(Position, Direction, Range, Ignore)
	return game:service("Workspace"):FindPartOnRay(Ray.new(Position, Direction.unit * (Range or 999.999)), Ignore) 
end 

function CreateSound(id, par, vol, pit) 
	coroutine.resume(coroutine.create(function()
		local sou = Instance.new("Sound", par or workspace)
		sou.Volume = vol
		sou.Pitch = pit or 1
		sou.SoundId = id
		swait() 
		sou:play() 
		game:GetService("Debris"):AddItem(sou, 6)
	end))
end

local function getclosest(obj, distance)
	local last, lastx = distance + 1
	for i, v in pairs(workspace:GetChildren()) do
		if v:IsA'Model' and v ~= Character and v:findFirstChild('Humanoid') and v:findFirstChild('Torso') and v:findFirstChild('Humanoid').Health > 0 then
			local t = v.Torso
			local dist = (t.Position - obj.Position).magnitude
			if dist <= distance then
				if dist < last then
					last = dist
					lastx = v
				end
			end
		end
	end
	return lastx
end

Handle=CreatePart(m,Enum.Material.SmoothPlastic,0.25,1,"Dark stone grey","FakeHandle",Vector3.new(0.505485535, 1.32378638, 0.437194824))
HandleWeld=CreateWeld(m,Character["Right Arm"],Handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0155639648, 0.026468277, 1.02599454, 1, 0, 0, 0, 0, -1, 0, 1, 0))
FakeHandle=CreatePart(m,Enum.Material.SmoothPlastic,0.25,1,"Dark stone grey","FakeHandle",Vector3.new(0.505485535, 1.32378638, 0.437194824))
FakeHandleWeld=CreateWeld(m,Handle,FakeHandle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.651604891, 0.353641689, 0.960422277))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00848388672, -2.25204468, 3.03001976, -1, 0, 0, 0, 0.715983272, -0.698117495, -0, -0.698117495, -0.715983272))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0.25,0,"Sand red","Part",Vector3.new(0.785459161, 0.353641689, 0.678900838))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.33682251, -0.617828369, 1.15732193, 0, 1, -2.98023224e-008, 1, 0, 0, -0, -2.98023224e-008, -1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0.25,0,"Sand red","Part",Vector3.new(0.651604891, 0.353641689, 0.678900838))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.40277863, -3.02360535, 1.15732217, -0.707106829, 0.707106829, -2.10734257e-008, 0.707106829, 0.707106829, -2.10734257e-008, -0, -2.98023224e-008, -1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0.25,0,"Sand red","Part",Vector3.new(0.651604891, 0.353641689, 0.678900838))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.3026886, 1.70986938, 1.15732193, 0.707106829, -0.707106829, -2.10734257e-008, -0.707106829, -0.707106829, -2.10734257e-008, 0, 2.98023224e-008, -1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0.25,0,"Sand red","Part",Vector3.new(0.783992589, 0.353641689, 0.678900838))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.33755493, -0.598022461, 1.16449344, 0, 1, 2.98023224e-008, -1, 0, 0, 0, -2.98023224e-008, 1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.651604891, 0.353641689, 0.960422277))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00848388672, -2.24703598, 3.03515816, 1, 0, 0, 0, 0.715983272, 0.698117495, 0, -0.698117495, 0.715983272))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(m,Enum.Material.Metal,0,0,"Medium stone grey","Part",Vector3.new(0.929814219, 1.22773778, 0.619561553))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0127563477, -3.40548706, 1.14073551, 1, 0, 0, 0, 1, 2.98023224e-008, 0, -2.98023224e-008, 1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0.25,0,"Sand red","Part",Vector3.new(0.651604891, 0.353641689, 0.678900838))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00924682617, -4.0140686, 1.15732217, -1, 0, 0, 0, 1, -2.98023224e-008, -0, -2.98023224e-008, -1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(m,Enum.Material.Metal,0,0,"Medium stone grey","Part",Vector3.new(0.929814219, 1.22773778, 0.597561538))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0127563477, -3.40548706, 1.13656998, -1, 0, 0, 0, 1, -2.98023224e-008, -0, -2.98023224e-008, -1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0.25,0,"Sand red","Part",Vector3.new(0.651604891, 0.353641689, 0.773990393))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00924682617, 2.66007996, 1.11695445, -1, 0, 0, 0, -1, 2.98023224e-008, 0, 2.98023224e-008, 1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0.25,0,"Sand red","Part",Vector3.new(0.651604891, 0.353641689, 0.678900838))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.31669617, 1.69586182, 1.1644932, -0.707106829, -0.707106829, 2.10734257e-008, 0.707106829, -0.707106829, 2.10734257e-008, 0, 2.98023224e-008, 1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0.25,0,"Sand red","Part",Vector3.new(0.651604891, 0.353641689, 0.678900838))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.3026886, 1.70986938, 1.1644932, -0.707106829, 0.707106829, -2.10734257e-008, -0.707106829, -0.707106829, 2.10734257e-008, 0, 2.98023224e-008, 1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.651604891, 0.353641689, 0.982642174))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00848388672, 2.45775986, -1.71069145, 1, 0, 0, 0, -0.715983272, -0.698117495, 0, 0.698117495, -0.715983272))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0.25,0,"Sand red","Part",Vector3.new(0.651604891, 0.353641689, 0.678900838))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.31669617, 1.69586182, 1.15732193, 0.707106829, 0.707106829, 2.10734257e-008, 0.707106829, -0.707106829, -2.10734257e-008, 0, 2.98023224e-008, -1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.651604891, 0.353641689, 0.982642174))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00848388672, 2.46276665, -1.70555687, -1, 0, 0, 0, -0.715983272, 0.698117495, 0, 0.698117495, 0.715983272))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0.25,0,"Sand red","Part",Vector3.new(0.651604891, 0.353641689, 0.678900838))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00924682617, -4.0140686, 1.16449344, 1, 0, 0, 0, 1, 2.98023224e-008, 0, -2.98023224e-008, 1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0.25,0,"Sand red","Part",Vector3.new(0.651604891, 0.353641689, 0.773990393))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00924682617, 2.66007996, 1.10978317, 1, 0, 0, 0, -1, -2.98023224e-008, 0, 2.98023224e-008, -1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0.25,0,"Sand red","Part",Vector3.new(0.651604891, 0.353641689, 0.678900838))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.40277863, -3.02360535, 1.16449344, 0.707106829, -0.707106829, -2.10734257e-008, 0.707106829, 0.707106829, 2.10734257e-008, 0, -2.98023224e-008, 1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0.25,0,"Sand red","Part",Vector3.new(0.783992589, 0.353641689, 0.678900838))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.33755493, -0.598022461, 1.15732193, 0, -1, 2.98023224e-008, -1, 0, 0, -0, -2.98023224e-008, -1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.651604891, 0.53363961, 0.814506233))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00848388672, -3.28816223, 0.00796890259, -1, 0, 0, 0, 1, 0, 0, 0, -1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0.25,0,"Sand red","Part",Vector3.new(0.651604891, 0.353641689, 0.678900838))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.41677856, -3.00960541, 1.15732217, -0.707106829, -0.707106829, 2.10734257e-008, -0.707106829, 0.707106829, -2.10734257e-008, 0, -2.98023224e-008, -1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0.25,0,"Sand red","Part",Vector3.new(0.785459161, 0.353641689, 0.678900838))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.33682251, -0.617828369, 1.16449344, -0, -1, -2.98023224e-008, 1, 0, 0, 0, -2.98023224e-008, 1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0.25,0,"Sand red","Part",Vector3.new(0.651604891, 0.353641689, 0.678900838))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.41677856, -3.00960541, 1.16449344, 0.707106829, 0.707106829, 2.10734257e-008, -0.707106829, 0.707106829, 2.10734257e-008, 0, -2.98023224e-008, 1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0.25,0,"Dark stone grey","Part",Vector3.new(0.505485535, 4.86178637, 0.437194824))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -1.35499573, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0.25,0,"Medium stone grey","Part",Vector3.new(0.505485535, 0.792678058, 0.437194824))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -2.69285583, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.5, 1, 1.5))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0.25,0,"Sand red","Part",Vector3.new(0.505485535, 0.317724407, 0.437194824))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -2.92750549, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.5, 1, 2))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.505485535, 0.200000003, 0.437194824))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.0849323273, -0.0202736855, 1, 0, 0, 0, 0.98192817, -0.189254314, 0, 0.189254314, 0.98192817))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.5, 1, 1.10000002))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.505485535, 0.200000003, 0.437194824))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.297920227, -0.0411686897, 1, 0, 0, 0, 0.99248904, 0.122333705, 0, -0.122333705, 0.99248904))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.5, 1, 1.10000002))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.505485535, 0.200000003, 0.437194824))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -1.12693405, 0.134458065, 1, 0, 0, 0, 0.99248904, 0.122333705, 0, -0.122333705, 0.99248904))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.5, 1, 1.10000002))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.505485535, 0.200000003, 0.437194824))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -1.85461044, 0.224159002, 1, 0, 0, 0, 0.99248904, 0.122333705, 0, -0.122333705, 0.99248904))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.5, 1, 1.10000002))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.505485535, 0.200000003, 0.437194824))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.774690628, -0.153215885, 1, 0, 0, 0, 0.98192817, -0.189254314, 0, 0.189254314, 0.98192817))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.5, 1, 1.10000002))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.505485535, 0.200000003, 0.437194824))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.635002136, 0.11848402, 1, 0, 0, 0, 0.98192817, -0.189254314, 0, 0.189254314, 0.98192817))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.5, 1, 1.10000002))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.505485535, 0.200000003, 0.437194824))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -1.494627, -0.291974545, 1, 0, 0, 0, 0.98192817, -0.189254314, 0, 0.189254314, 0.98192817))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.5, 1, 1.10000002))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.505485535, 0.200000003, 0.437194824))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.429756165, 0.0485243797, 1, 0, 0, 0, 0.99248904, 0.122333705, 0, -0.122333705, 0.99248904))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.5, 1, 1.10000002))

Part=CreatePart(m,Enum.Material.Plastic,0.10000000149012,0,"Dark stone grey","Part",Vector3.new(0.300000012, 0.800000012, 0.300000012))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.33679962, -1.1673584, -1.15903568, 7.07509798e-006, -1, -1.02181616e-007, 1, 7.07509844e-006, -4.51291817e-006, 4.51291908e-006, -1.02149684e-007, 1))
CreateMesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=1033714",Vector3.new(0, 0, 0),Vector3.new(0.170000002, 1, 0.170000002))
Part=CreatePart(m,Enum.Material.Plastic,0.20000000298023,0,"Sand red","Part",Vector3.new(0.5, 0.5, 0.5))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00302124023, 1.28483582, -0.00327897072, -1, -0.000214757063, 2.38186044e-006, -0.000214756918, 1, 6.37130361e-005, -2.39554311e-006, 6.37125195e-005, -1))
CreateMesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.850000024, 0.75, 0.850000024))
Part=CreatePart(m,Enum.Material.Plastic,0.10000000149012,0,"Dark stone grey","Part",Vector3.new(0.300000012, 0.800000012, 0.300000012))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00355529785, 2.11416054, -1.15905571, -1, -6.97575024e-006, 1.02181218e-007, 6.97575069e-006, -1, 4.51291817e-006, 1.02149734e-007, 4.51291908e-006, 1))
CreateMesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=1033714",Vector3.new(0, 0, 0),Vector3.new(0.170000002, 1, 0.170000002))
Part=CreatePart(m,Enum.Material.Plastic,0.20000000298023,0,"Dark stone grey","Part",Vector3.new(0.5, 0.5, 0.5))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00444793701, 1.28483582, -0.000190734863, -0.707106173, -0.000107986314, -0.707107365, -0.000212582891, 1, 5.98669576e-005, 0.707107365, 0.000192651234, -0.707106233))
CreateMesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.949999988, 0.5, 0.949999988))
Part=CreatePart(m,Enum.Material.Plastic,0.10000000149012,0,"Dark stone grey","Part",Vector3.new(0.300000012, 0.800000012, 0.300000012))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00146484375, -4.53398132, 0.000669956207, -1, -7.06317314e-006, -1.02181616e-007, -7.0631736e-006, 1, 4.51291817e-006, 1.02149741e-007, 4.51291908e-006, -1))
CreateMesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=1033714",Vector3.new(0, 0, 0),Vector3.new(0.215000004, 2, 0.215000004))
Part=CreatePart(m,Enum.Material.Plastic,0.10000000149012,0,"Dark stone grey","Part",Vector3.new(0.300000012, 0.800000012, 0.300000012))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00357055664, -4.56028175, -1.15905166, 1, 7.06317314e-006, -1.02181616e-007, -7.0631736e-006, 1, -4.51291817e-006, 1.02149741e-007, 4.51291908e-006, 1))
CreateMesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=1033714",Vector3.new(0, 0, 0),Vector3.new(0.170000002, 1, 0.170000002))
Part=CreatePart(m,Enum.Material.Plastic,0.10000000149012,0,"Dark stone grey","Part",Vector3.new(0.300000012, 0.800000012, 0.300000012))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00355529785, 2.11416245, -1.15817821, 1, 6.97575024e-006, 1.02181218e-007, 6.97575069e-006, -1, -4.51291817e-006, 1.02149734e-007, 4.51291908e-006, -1))
CreateMesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=1033714",Vector3.new(0, 0, 0),Vector3.new(0.170000002, 1, 0.170000002))
Part=CreatePart(m,Enum.Material.Plastic,0.10000000149012,0,"Dark stone grey","Part",Vector3.new(0.300000012, 0.800000012, 0.300000012))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00357055664, -4.56028366, -1.15817392, -1, -7.06317314e-006, -1.02181616e-007, -7.0631736e-006, 1, 4.51291817e-006, 1.02149741e-007, 4.51291908e-006, -1))
CreateMesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=1033714",Vector3.new(0, 0, 0),Vector3.new(0.170000002, 1, 0.170000002))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(1.30130839, 0.570941746, 0.533639908))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.395450592, 0.168457031, -3.28816223, -0.353771091, 0, -0.93533206, -0.93533206, 0, 0.353771091, 0, 1, 0))
Part=CreatePart(m,Enum.Material.Plastic,0.10000000149012,0,"Dark stone grey","Part",Vector3.new(0.300000012, 0.800000012, 0.300000012))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.33681679, -1.15431213, -1.15904069, -6.98767508e-006, 1, 1.02181218e-007, -1, -6.98767553e-006, 4.51291817e-006, 4.51291908e-006, -1.02149684e-007, 1))
CreateMesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=1033714",Vector3.new(0, 0, 0),Vector3.new(0.170000002, 1, 0.170000002))
Part=CreatePart(m,Enum.Material.Plastic,0.10000000149012,0,"Dark stone grey","Part",Vector3.new(0.300000012, 0.800000012, 0.300000012))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.33679962, -1.16734314, -1.15815818, -7.07509798e-006, 1, -1.02181616e-007, 1, 7.07509844e-006, 4.51291817e-006, 4.51291908e-006, -1.02149684e-007, -1))
CreateMesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=1033714",Vector3.new(0, 0, 0),Vector3.new(0.170000002, 1, 0.170000002))
Part=CreatePart(m,Enum.Material.Plastic,0.20000000298023,0,"Dark stone grey","Part",Vector3.new(0.300000012, 0.800000012, 0.300000012))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.33681679, -1.15431213, -1.15816295, 6.98767508e-006, -1, 1.02181218e-007, -1, -6.98767553e-006, -4.51291817e-006, 4.51291908e-006, -1.02149684e-007, -1))
CreateMesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=1033714",Vector3.new(0, 0, 0),Vector3.new(0.170000002, 1, 0.170000002))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(1.30029905, 0.569891214, 0.533639908))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.388046265, 0.152572632, -3.28816223, -0.351845443, 0, 0.936058104, 0.936058104, 0, 0.351845443, 0, 1, 0))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(1.32294869, 0.567779899, 0.533639908))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.388534546, 0.173995972, -3.28816223, 0.347984225, 0, -0.937500358, -0.937500358, 0, -0.347984254, 0, 1, 0))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(1.3219558, 0.566737056, 0.533639908))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.381248474, 0.158065796, -3.28816223, 0.346081376, 0, 0.938204527, 0.938204527, 0, -0.346081376, 0, 1, 0))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.651607454, 0.608765721, 0.699442625))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00848388672, 0.4419384, 3.66109848, 1, 8.35569267e-008, -5.07116091e-008, 4.37113883e-008, 0.0817466229, 0.99665314, 8.74227766e-008, -0.99665314, 0.0817466229))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.651607454, 0.608765721, 0.503385246))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00848388672, 0.441930771, -3.05968666, -1, -8.35569338e-008, 5.07116091e-008, 4.37113954e-008, 0.0817465335, 0.99665314, -8.74227766e-008, 0.99665314, -0.0817465335))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.651607454, 0.608765721, 0.503385246))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00848388672, 0.434783459, -3.0590992, 1, 8.35569338e-008, 5.07116091e-008, 4.37113954e-008, 0.0817465335, -0.99665314, -8.74227766e-008, 0.99665314, 0.0817465335))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.651607454, 0.608765721, 0.699442625))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00848388672, 0.434791565, 3.66051102, -1, -8.35569267e-008, -5.07116091e-008, 4.37113883e-008, 0.0817466229, -0.99665314, 8.74227766e-008, -0.99665314, -0.0817466229))
Hitbox=CreatePart(m,Enum.Material.SmoothPlastic,0.25,1,"Dark stone grey","Hitbox",Vector3.new(1.41548562, 1.75178647, 3.32719469))
HitboxWeld=CreateWeld(m,FakeHandle,Hitbox,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0950012207, -3.2899971, 0.0750000477, 1, 0, 0, 0, 1, 0, 0, 0, 1))


Damagefunc = function(Part, hit, minim, maxim, knockback, Type, Property, Delay, HitSound, HitPitch)
	if hit.Parent == nil then
		return
	end
	local h = hit.Parent:FindFirstChild("Humanoid")
	for _, v in pairs(hit.Parent:children()) do
		if v:IsA("Humanoid") then
			h = v
		end
	end
	if h ~= nil and hit.Parent.Name ~= Character.Name and hit.Parent:FindFirstChild("Torso") ~= nil then
		if hit.Parent:findFirstChild("DebounceHit") ~= nil then
			if hit.Parent.DebounceHit.Value == true then
				return
			end
		end
		local c = Create("ObjectValue"){
			Name = "creator",
			Value = game:service("Players").LocalPlayer,
			Parent = h,
		}
		game:GetService("Debris"):AddItem(c, .5)
		if HitSound ~= nil and HitPitch ~= nil then
			CreateSound(HitSound, hit, 1, HitPitch) 
		end
		local Damage = math.random(minim, maxim)
		local blocked = false
		local block = hit.Parent:findFirstChild("Block")
		if block ~= nil then
			if block.className == "IntValue" then
				if block.Value > 0 then
					blocked = true
					block.Value = block.Value - 1
					print(block.Value)
				end
			end
		end
		if blocked == false then
				HitHealth=h.Health
           h.Health=h.Health-Damage	
		if HitHealth~=h.Health and HitHealth~=0 and h.Health<=0 and h.Parent.Name~="Hologram" then
			print("gained spree")
			game.Players.LocalPlayer:FindFirstChild("leaderstats").Spree.Value=game.Players.LocalPlayer.leaderstats.Spree.Value+1
		end
			ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, Part.BrickColor.Color)
		else
			h.Health = h.Health - (Damage / 2)
			ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, Part.BrickColor.Color)
		end
		if Type == "Knockdown" then
			local hum = hit.Parent.Humanoid
			hum.PlatformStand = true
			coroutine.resume(coroutine.create(function(HHumanoid)
				swait(1)
				HHumanoid.PlatformStand = false
			end), hum)
			local angle = (hit.Position - (Property.Position + Vector3.new(0, 0, 0))).unit
			local bodvol = Create("BodyVelocity"){
				velocity = angle * knockback,
				P = 5000,
				maxForce = Vector3.new(8e+003, 8e+003, 8e+003),
				Parent = hit,
			}
			local rl = Create("BodyAngularVelocity"){
				P = 3000,
				maxTorque = Vector3.new(500000, 500000, 500000) * 50000000000000,
				angularvelocity = Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10)),
				Parent = hit,
			}
			game:GetService("Debris"):AddItem(bodvol, .5)
			game:GetService("Debris"):AddItem(rl, .5)
		elseif Type == "Normal" then
			local vp = Create("BodyVelocity"){
				P = 500,
				maxForce = Vector3.new(math.huge, 0, math.huge),
				velocity = Property.CFrame.lookVector * knockback + Property.Velocity / 1.05,
			}
			if knockback > 0 then
				vp.Parent = hit.Parent.Torso
			end
			game:GetService("Debris"):AddItem(vp, .5)
		elseif Type == "Up" then
			local bodyVelocity = Create("BodyVelocity"){
				velocity = vt(0, 20, 0),
				P = 5000,
				maxForce = Vector3.new(8e+003, 8e+003, 8e+003),
				Parent = hit,
			}
			game:GetService("Debris"):AddItem(bodyVelocity, .5)
		elseif Type == "DarkUp" then
			coroutine.resume(coroutine.create(function()
			for i = 0,1,0.1 do
				swait()
			BlockEffect(BrickColor.new("Black"), hit.Parent.Torso.CFrame,5, 5, 5, 1, 1, 1, .08,1)
			end
			end))
			local bodyVelocity = Create("BodyVelocity"){
				velocity = vt(0, 20, 0),
				P = 5000,
				maxForce = Vector3.new(8e+003, 8e+003, 8e+003),
				Parent = hit,
			}
			game:GetService("Debris"):AddItem(bodyVelocity, 1)
		elseif Type == "Snare" then
			local bp = Create("BodyPosition"){
				P = 2000,
				D = 100,
				maxForce = Vector3.new(math.huge, math.huge, math.huge),
				position = hit.Parent.Torso.Position,
				Parent = hit.Parent.Torso,
			}
			game:GetService("Debris"):AddItem(bp, 1)
		elseif Type == "Freeze" then
			local BodPos = Create("BodyPosition"){
				P = 50000,
				D = 1000,
				maxForce = Vector3.new(math.huge, math.huge, math.huge),
				position = hit.Parent.Torso.Position,
				Parent = hit.Parent.Torso,
			}
			local BodGy = Create("BodyGyro") {
				maxTorque = Vector3.new(4e+005, 4e+005, 4e+005) * math.huge ,
				P = 20e+003,
				Parent = hit.Parent.Torso,
				cframe = hit.Parent.Torso.CFrame,
			}
			hit.Parent.Torso.Anchored = true
			coroutine.resume(coroutine.create(function(Part) 
				swait(1.5)
				Part.Anchored = false
			end), hit.Parent.Torso)
			game:GetService("Debris"):AddItem(BodPos, 3)
			game:GetService("Debris"):AddItem(BodGy, 3)
		end
		local debounce = Create("BoolValue"){
			Name = "DebounceHit",
			Parent = hit.Parent,
			Value = true,
		}
		game:GetService("Debris"):AddItem(debounce, Delay)
		c = Instance.new("ObjectValue")
		c.Name = "creator"
		c.Value = Player
		c.Parent = h
		game:GetService("Debris"):AddItem(c, .5)
	end
end
function MagniCamShake(Part,magni,cam,intens)
for _,c in pairs(workspace:children()) do
if game.Players:GetPlayerFromCharacter(c)~=nil then 
if c:findFirstChild("Torso")~=nil then
local targ=c.Torso.Position-Part.Position
local mag=targ.magnitude
if mag<=magni then 
camshake=script[cam]:Clone()
camshake.Intensity.Value=mag/intens
camshake.Parent=game.Players:GetPlayerFromCharacter(c).Backpack
camshake.Disabled=false
end
end
end
end
end
function ShowDamage(Pos, Text, Time, Color)
	local Rate = (1 / 30)
	local Pos = (Pos or Vector3.new(0, 0, 0))
	local Text = (Text or "")
	local Time = (Time or 2)
	local Color = (Color or Color3.new(1, 0, 1))
	local EffectPart = CreatePart(workspace, "SmoothPlastic", 0, 1, BrickColor.new(Color), "Effect", vt(0, 0, 0))
	EffectPart.Anchored = true
	local BillboardGui = Create("BillboardGui"){
		Size = UDim2.new(3, 0, 3, 0),
		Adornee = EffectPart,
		Parent = EffectPart,
	}
	local TextLabel = Create("TextLabel"){
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 1, 0),
		Text = Text,
		TextColor3 = Color,
		TextScaled = true,
		Font = Enum.Font.ArialBold,
		Parent = BillboardGui,
	}
	game.Debris:AddItem(EffectPart, (Time + 0.1))
	EffectPart.Parent = game:GetService("Workspace")
	delay(0, function()
		local Frames = (Time / Rate)
		for Frame = 1, Frames do
			wait(Rate)
			local Percent = (Frame / Frames)
			EffectPart.CFrame = CFrame.new(Pos) + Vector3.new(0, Percent, 0)
			TextLabel.TextTransparency = Percent
		end
		if EffectPart and EffectPart.Parent then
			EffectPart:Destroy()
		end
	end)
end
function MagniDamage(Part,magni,mindam,maxdam,knock,Type)
for _,c in pairs(workspace:children()) do
local hum=c:findFirstChild("Humanoid")
if hum~=nil then
local head=c:findFirstChild("Torso")
if head~=nil then
local targ=head.Position-Part.Position
local mag=targ.magnitude
if mag<=magni and c.Name~=Player.Name then 
--Damagefunc(head,mindam,maxdam,knock,Type,RootPart,.2,1,nil,1)
Damagefunc(head, head, mindam,maxdam, knock, Type, RootPart, .1, "http://www.roblox.com/asset/?id=231917784", 1)
end
end
end
end
end

--[[Effect Functions]]--

function BlockEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type)
	local prt = CreatePart(workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CreateMesh("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	if Type == 1 or Type == nil then
		table.insert(Effects, {
			prt,
			"Block1",
			delay,
			x3,
			y3,
			z3,
			msh
		})
	elseif Type == 2 then
		table.insert(Effects, {
			prt,
			"Block2",
			delay,
			x3,
			y3,
			z3,
			msh
		})
	end
end

function SphereEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = CreatePart(workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CreateMesh("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	table.insert(Effects, {
		prt,
		"Cylinder",
		delay,
		x3,
		y3,
		z3,
		msh
	})
end

function RingEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = CreatePart(workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
	prt.Anchored = true
	prt.CFrame = cframe * CFrame.new(x1, y1, z1)
	local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "rbxassetid://3270017", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	table.insert(Effects, {
		prt,
		"Cylinder",
		delay,
		x3,
		y3,
		z3,
		msh
	})
end

function CylinderEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = CreatePart(workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CreateMesh("CylinderMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	table.insert(Effects, {
		prt,
		"Cylinder",
		delay,
		x3,
		y3,
		z3,
		msh
	})
end

function WaveEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = CreatePart(workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "rbxassetid://20329976", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	table.insert(Effects, {
		prt,
		"Cylinder",
		delay,
		x3,
		y3,
		z3,
		msh
	})
end

function SpecialEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = CreatePart(workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "rbxassetid://24388358", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	table.insert(Effects, {
		prt,
		"Cylinder",
		delay,
		x3,
		y3,
		z3,
		msh
	})
end

function BreakEffect(brickcolor, cframe, x1, y1, z1)
	local prt = CreatePart(workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
	prt.Anchored = true
	prt.CFrame = cframe * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
	local msh = CreateMesh("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	local num = math.random(10, 50) / 1000
	game:GetService("Debris"):AddItem(prt, 10)
	table.insert(Effects, {
		prt,
		"SAccessoryter",
		num,
		prt.CFrame,
		math.random() - math.random(),
		0,
		math.random(50, 100) / 100
	})
end
                                                             --[[ V = The CFraming of the part]]--
--[[EXAMPLE: ExampleWeld.C0 = clerp(ExampleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3) ]]--
                                                                                                  --[[ ^ = The Rotations of the part]]--

--[[Attack Function]]--

function attackone()
	attack = true
		local con = Hitbox.Touched:connect(function(hit)
		Damagefunc(Hitbox, hit, 8, 13, math.random(1, 5), "Normal", RootPart, .2, "rbxassetid://199149221", .8)
				end)	
		for i = 0, 1, 0.1 do
		swait()
					RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(20), math.rad(10), math.rad(80)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-20), math.rad(0), math.rad(-80)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.3, -0.5) * angles(math.rad(50), math.rad(0), math.rad(-80)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.4, 0.5) * angles(math.rad(70), math.rad(0), math.rad(-100)), .3)
				RH.C0 = clerp(RH.C0, cf(1, -1+.1, 0) * RHCF * angles(math.rad(0), math.rad(-30), math.rad(20)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1.2, 0.25) * LHCF * angles(math.rad(0), math.rad(0), math.rad(-10)), .3)
				FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0)  * angles(math.rad(0), math.rad(-30), math.rad(90)), .3)
	end
		for i = 0, 1, 0.5 do
		swait()
					RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .6)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(0)), .6)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -0.5) * angles(math.rad(70), math.rad(0), math.rad(0)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.1, 0.5, 0.5) * angles(math.rad(50), math.rad(0), math.rad(0)), .3)
				RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0)  * angles(math.rad(0), math.rad(-50), math.rad(90)), .3)
		end
		CreateSound("rbxassetid://231917950",Torso,1,1.8)
				for i = 0, 1, 0.1 do
		swait()
					RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(10), math.rad(5), math.rad(-50)), .6)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-10), math.rad(0), math.rad(50)), .6)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.6, -0.5) * angles(math.rad(90), math.rad(0), math.rad(90)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.1, 0.5, 0.5) * angles(math.rad(50), math.rad(0), math.rad(0)), .3)
				RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(10)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(20), math.rad(-10)), .3)
				FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0)  * angles(math.rad(0), math.rad(-80), math.rad(90)), .3)
				end
				con:disconnect()
	attack = false
end

function earthquake()
	attack = true
		local con = Hitbox.Touched:connect(function(hit)
		Damagefunc(Hitbox, hit, 8, 13, math.random(1, 5), "Normal", RootPart, .2, "rbxassetid://199149221", .8)
				end)	
		for i = 0, 1, 0.1 do
		swait()
					RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(20), math.rad(10), math.rad(80)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-20), math.rad(0), math.rad(-80)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.3, -0.5) * angles(math.rad(50), math.rad(0), math.rad(-80)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.4, 0.5) * angles(math.rad(70), math.rad(0), math.rad(-100)), .3)
				RH.C0 = clerp(RH.C0, cf(1, -1+.1, 0) * RHCF * angles(math.rad(0), math.rad(-30), math.rad(20)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1.2, 0.25) * LHCF * angles(math.rad(0), math.rad(0), math.rad(-10)), .3)
				FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0)  * angles(math.rad(0), math.rad(-30), math.rad(90)), .3)
	end
Humanoid.JumpPower=200
Humanoid.Jump=true
				for i = 0, 1, 0.1 do
		swait()
			RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * angles(math.rad(-20), math.rad(0), math.rad(0)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(0)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -1) * angles(math.rad(170), math.rad(0), math.rad(-30)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -1) * angles(math.rad(170), math.rad(0), math.rad(30)), .3)
				RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(-20)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(20)), .3)
					FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0)  * angles(math.rad(0), math.rad(-20), math.rad(0)), .3)
				end
		CreateSound("rbxassetid://231917950",Torso,1,1.8)
				for i = 0, 1, 0.08 do
		swait()
			RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * angles(math.rad(-20), math.rad(0), math.rad(0)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(0)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -1) * angles(math.rad(170), math.rad(0), math.rad(-30)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -1) * angles(math.rad(170), math.rad(0), math.rad(30)), .3)
				RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(-20)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(20)), .3)
					FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0)  * angles(math.rad(0), math.rad(-20), math.rad(0)), .3)
				end
						CreateSound("rbxassetid://231917950",Torso,1,1.3)
				--SlashEffect(BrickColor.new("White"),RootPart.CFrame*cf(0,.5,-5)*angles(math.rad(90),0,0),.001,.1,.1,0,.002,.002,.07)
						for i = 0, 1, 0.1 do
		swait()
			RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * angles(math.rad(20), math.rad(0), math.rad(0)), .5)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-20), math.rad(0), math.rad(0)), .5)
				RW.C0 = clerp(RW.C0, CFrame.new(1, 0.3, -1) * angles(math.rad(20), math.rad(0), math.rad(-30)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.3, -1) * angles(math.rad(20), math.rad(0), math.rad(30)), .3)
				RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(20)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(-20)), .3)
					FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0)  * angles(math.rad(-30), math.rad(-20), math.rad(0)), .3)
						end
						if RootPart.Velocity.y < -1 and hit == nil then
										hit=nil
for i=1,1 do
if hit==nil then
swait()
end
hit,pos=rayCast(RootPart.Position,RootPart.CFrame.lookVector,6,Character)
end
local hit=nil
while hit==nil do
swait()
hit,pos=rayCast(Hitbox.Position,(CFrame.new(RootPart.Position,RootPart.Position - Vector3.new(0,1,0))).lookVector,10,Character)
end
hit,pos=rayCast(Hitbox.Position,(CFrame.new(RootPart.Position,RootPart.Position - Vector3.new(0,1,0))).lookVector,10,Character)
if hit~=nil then
local ref=CreatePart(effect,"SmoothPlastic",0,0,BrickColor.new("Black"),"Effect",vt())--part(3,effect,0,1,BrickColor.new("Black"),"Effect",vt())
ref.Anchored=true
ref.CFrame=cf(pos)
game:GetService("Debris"):AddItem(ref,3)
for i=1,30 do
Col=hit.BrickColor
local groundpart=CreatePart(effect,hit.Material,0,0,Col,"Ground",vt(math.random(100,500)/100,math.random(100,500)/100,math.random(150,700)/100))
groundpart.Anchored=true
groundpart.CanCollide=true
groundpart.CFrame=cf(pos)*cf(math.random(-3000,3000)/100,0,math.random(-3000,3000)/100)*angles(math.random(-50,50),math.random(-50,50),math.random(-50,50))
game:GetService("Debris"):AddItem(groundpart,5)
end
CreateSound("http://roblox.com/asset/?id=157878578",ref,1,.7) 
WaveEffect(hit.BrickColor,cf(pos),1,1,1,2,2,2,0.05)
WaveEffect(hit.BrickColor,cf(pos),1,1,1,1,3,1,0.05)
MagniDamage(ref,20,20,33,math.random(10,20),"Knockdown")
MagniCamShake(ref,20,"CamShake1",.1)
end
						end
						Humanoid.JumpPower=50
				con:disconnect()
	attack = false
end

function attacktwo()
	attack = true
			local con = Hitbox.Touched:connect(function(hit)
		Damagefunc(Hitbox, hit, 8, 13, math.random(1, 5), "Normal", RootPart, .2, "rbxassetid://199149221", .8)
				end)
	for i = 0, 1, 0.1 do
		swait()
					RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(-80)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-30), math.rad(0), math.rad(80)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.3, 0) * angles(math.rad(90), math.rad(0), math.rad(80)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.4, 0) * angles(math.rad(90), math.rad(0), math.rad(0)), .3)
				RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(20)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(30), math.rad(-10)), .3)
				FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0)  * angles(math.rad(0), math.rad(40), math.rad(90)), .3)
	end
	for i = 0, 1, 0.5 do
		swait()
					RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .5)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(0)), .5)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(0)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-20)), .3)
				RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(30), math.rad(0)), .3)
				FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0)  * angles(math.rad(0), math.rad(-60), math.rad(90)), .5)
	end
	CreateSound("rbxassetid://231917950",Torso,1,1.5)
		for i = 0, 1, 0.1 do
		swait()
					RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), .5)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(-90)), .5)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(90)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-50)), .3)
				RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(30), math.rad(0)), .3)
				FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0)  * angles(math.rad(0), math.rad(-60), math.rad(90)), .5)
		end
		con:disconnect()
	attack = false
end

function attackthree()
	attack = true
		local con = Hitbox.Touched:connect(function(hit)
		Damagefunc(Hitbox, hit, 8, 13, math.random(1, 5), "Normal", RootPart, .2, "rbxassetid://199149221", .8)
				end)
				for i = 0, 1, 0.1 do
		swait()
			RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * angles(math.rad(-20), math.rad(0), math.rad(0)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(0)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -1) * angles(math.rad(170), math.rad(0), math.rad(-30)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -1) * angles(math.rad(170), math.rad(0), math.rad(30)), .3)
				RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(-20)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(20)), .3)
					FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0)  * angles(math.rad(0), math.rad(-20), math.rad(0)), .3)
				end
						CreateSound("rbxassetid://231917950",Torso,1,1.3)
				--SlashEffect(BrickColor.new("White"),RootPart.CFrame*cf(0,.5,-5)*angles(math.rad(90),0,0),.001,.1,.1,0,.002,.002,.07)
						for i = 0, 1, 0.1 do
		swait()
			RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * angles(math.rad(20), math.rad(0), math.rad(0)), .5)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-20), math.rad(0), math.rad(0)), .5)
				RW.C0 = clerp(RW.C0, CFrame.new(1, 0.3, -1) * angles(math.rad(20), math.rad(0), math.rad(-30)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.3, -1) * angles(math.rad(20), math.rad(0), math.rad(30)), .3)
				RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(20)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(-20)), .3)
					FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0)  * angles(math.rad(-30), math.rad(-20), math.rad(0)), .3)
						end
						con:disconnect()
	attack = false
end

function spin()
	attack = true
		local con = Hitbox.Touched:connect(function(hit)
		Damagefunc(Hitbox, hit, 8, 13, math.random(1, 5), "Normal", RootPart, .2, "rbxassetid://199149221", .8)
		end)
		CreateSound("rbxassetid://231917950",Torso,1,2)
		for i = 0, 1, 0.1 do
		swait()
					RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(20), math.rad(10), math.rad(80)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-20), math.rad(0), math.rad(-80)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.3, -0.5) * angles(math.rad(50), math.rad(0), math.rad(-80)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.4, 0.5) * angles(math.rad(70), math.rad(0), math.rad(-100)), .3)
				RH.C0 = clerp(RH.C0, cf(1, -1+.1, 0) * RHCF * angles(math.rad(0), math.rad(-30), math.rad(20)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1.2, 0.25) * LHCF * angles(math.rad(0), math.rad(0), math.rad(-10)), .3)
				FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0)  * angles(math.rad(0), math.rad(-30), math.rad(90)), .3)
		end
		for i = 1,10 do
			CreateSound("rbxassetid://231917950",Torso,1,1.5)
						for i = 0, 1, 0.1 do
		swait()
			RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * angles(math.rad(0), math.rad(0), math.rad(0-360*i)), .5)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(0)), .5)
				RW.C0 = clerp(RW.C0, CFrame.new(1, 0.3, -1) * angles(math.rad(80), math.rad(0), math.rad(-40)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.3, -1) * angles(math.rad(80), math.rad(0), math.rad(40)), .3)
				RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(20)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(-20)), .3)
					FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0)  * angles(math.rad(-90), math.rad(60), math.rad(0)), .3)
						end
						end
						con:disconnect()
	attack = false
end
local boop=false
function charger()
	attack = true
		for i = 0, 1, 0.1 do
		swait()
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(20), math.rad(10), math.rad(70)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(-70)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.3, -0.5) * angles(math.rad(50), math.rad(0), math.rad(-50)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.1, 0.5, 0.5) * angles(math.rad(50), math.rad(0), math.rad(-50)), .3)
				RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(-30), math.rad(20)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1.2, 0.25) * LHCF * angles(math.rad(0), math.rad(0), math.rad(-10)), .3)
				FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0)  * angles(math.rad(0), math.rad(0), math.rad(90)), .3)
		end
		Torso.Velocity=RootPart.CFrame.lookVector*150
		WaveEffect(BrickColor.new("White"),RootPart.CFrame*angles(1.57,0,0),1,1,1,.7,.7,.7,0.05)
				local con = RightArm.Touched:connect(function(hit)
						if boop == true then return end
						boop = true
						hit=nil
for i=1,1 do
if hit==nil then
swait()
end
hit,pos=rayCast(RootPart.Position,RootPart.CFrame.lookVector,6,Character)
end
local hit=nil
while hit==nil do
swait()
hit,pos=rayCast(Hitbox.Position,(CFrame.new(RootPart.Position,RootPart.Position - Vector3.new(0,1,0))).lookVector,10,Character)
end
hit,pos=rayCast(Hitbox.Position,(CFrame.new(RootPart.Position,RootPart.Position - Vector3.new(0,1,0))).lookVector,10,Character)
if hit~=nil then
local ref=CreatePart(effect,"SmoothPlastic",0,0,BrickColor.new("Black"),"Effect",vt())--part(3,effect,0,1,BrickColor.new("Black"),"Effect",vt())
ref.Anchored=true
ref.CFrame=cf(pos)
game:GetService("Debris"):AddItem(ref,3)
for i=1,10 do
Col=hit.BrickColor
local groundpart=CreatePart(effect,hit.Material,0,0,Col,"Ground",vt(math.random(50,200)/100,math.random(50,200)/100,math.random(50,200)/100))
groundpart.Anchored=true
groundpart.CanCollide=true
groundpart.CFrame=cf(pos)*cf(math.random(-500,500)/100,0,math.random(-500,500)/100)*angles(math.random(-50,50),math.random(-50,50),math.random(-50,50))
game:GetService("Debris"):AddItem(groundpart,5)
end
CreateSound("http://roblox.com/asset/?id=157878578",ref,.6,1.2) 
WaveEffect(hit.BrickColor,cf(pos),1,1,1,.7,.7,.7,0.05)
MagniDamage(ref,9,9,13,math.random(10,20),"Knockdown")
MagniCamShake(ref,5,"CamShake1",.05)
end
				end)
			for i = 0, 1, 0.1 do
		swait()
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(30), math.rad(0), math.rad(70)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(30), math.rad(0), math.rad(-70)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.3, -0.5) * angles(math.rad(50), math.rad(0), math.rad(-50)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.1, 0.5, 0.5) * angles(math.rad(50), math.rad(0), math.rad(-50)), .3)
				RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(-30), math.rad(20)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1.2, 0.25) * LHCF * angles(math.rad(-30), math.rad(0), math.rad(-10)), .3)
				FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0)  * angles(math.rad(0), math.rad(0), math.rad(90)), .3)
			end
			con:disconnect()
			boop=false
	attack=false
	end

function earthwave()
	attack = true
	
				for i = 0, 1, 0.05 do
		swait()
			RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * angles(math.rad(-20), math.rad(0), math.rad(0)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(0)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -1) * angles(math.rad(170), math.rad(0), math.rad(-30)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -1) * angles(math.rad(170), math.rad(0), math.rad(30)), .3)
				RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(-20)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(20)), .3)
					FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0)  * angles(math.rad(0), math.rad(-20), math.rad(0)), .3)
				end
					local con = Hitbox.Touched:connect(function(hit)
		Damagefunc(Hitbox, hit, 8, 13, math.random(1, 5), "Normal", RootPart, .2, "rbxassetid://199149221", .8)
				end)
						CreateSound("rbxassetid://231917950",Torso,1,1)
		coroutine.resume(coroutine.create(function()
				hit=nil
for i=1,1 do
if hit==nil then
swait()
end
hit,pos=rayCast(RootPart.Position,RootPart.CFrame.lookVector,6,Character)
end
local hit=nil
while hit==nil do
swait()
hit,pos=rayCast(Hitbox.Position,(CFrame.new(RootPart.Position,RootPart.Position - Vector3.new(0,1,0))).lookVector,10,Character)
end
hit,pos=rayCast(Hitbox.Position,(CFrame.new(RootPart.Position,RootPart.Position - Vector3.new(0,1,0))).lookVector,10,Character)
if hit~=nil then
local ref=CreatePart(effect,"SmoothPlastic",0,0,BrickColor.new("Black"),"Effect",vt())--part(3,effect,0,1,BrickColor.new("Black"),"Effect",vt())
ref.Anchored=true
ref.CFrame=cf(pos)
game:GetService("Debris"):AddItem(ref,3)
for i=1,10 do
Col=hit.BrickColor
local groundpart=CreatePart(effect,hit.Material,0,0,Col,"Ground",vt(math.random(50,200)/100,math.random(50,200)/100,math.random(50,200)/100))
groundpart.Anchored=true
groundpart.CanCollide=true
groundpart.CFrame=cf(pos)*cf(math.random(-500,500)/100,0,math.random(-500,500)/100)*angles(math.random(-50,50),math.random(-50,50),math.random(-50,50))
game:GetService("Debris"):AddItem(groundpart,5)
end
CreateSound("http://roblox.com/asset/?id=157878578",ref,.6,1.2) 
WaveEffect(hit.BrickColor,cf(pos),1,1,1,.7,.7,.7,0.05)
MagniDamage(ref,9,9,13,math.random(10,20),"Knockdown")
MagniCamShake(ref,9,"CamShake1",.01)
end

	end))
						for i = 0, 1, 0.1 do
		swait()
			RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * angles(math.rad(20), math.rad(0), math.rad(0)), .5)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-20), math.rad(0), math.rad(0)), .5)
				RW.C0 = clerp(RW.C0, CFrame.new(1, 0.3, -1) * angles(math.rad(20), math.rad(0), math.rad(-30)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.3, -1) * angles(math.rad(20), math.rad(0), math.rad(30)), .3)
				RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(20)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(-20)), .3)
					FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0)  * angles(math.rad(-30), math.rad(-20), math.rad(0)), .3)
						end
					con:disconnect()
	attack = false
end
--[[Attacks]]--
function ob1u()
end
function ob1d()
	if attack == false and attacktype == 1 then
		attacktype = 2
		attackone()
		elseif attack == false and attacktype == 2 then
				attacktype = 3
		attacktwo()
			elseif attack == false and attacktype == 3 then
				attacktype = 1
		attackthree()
	end
end

function key(k)
	k = k:lower()
	if attack == false and cooldown1 >= co1 and k == 'z' then
		cooldown1=0
		earthwave()
	elseif attack == false and cooldown2 >= co2 and k == 'x' then
		cooldown2 = 0
		charger()
	elseif attack == false and cooldown3 >= co3 and k == 'c' then
		cooldown3 = 0
		spin()
		elseif attack == false and cooldown4 >= co4 and k == 'v' then
		cooldown4 = 0
		earthquake()
	end
end


Bin=script.Parent	
	
	function ds(mouse) 
end 

function s(mouse) 
	print("Selected")
	mouse.Button1Down:connect(function() ob1d(mouse) end) 
	mouse.Button1Up:connect(function() ob1u(mouse) end) 
	mouse.KeyDown:connect(key) 
	
end 

Bin.Selected:connect(s) 
Bin.Deselected:connect(ds) 

function updateskills()
	if cooldown1 <= co1 then
		cooldown1 = cooldown1 + 1 / 30
	end
	if cooldown2 <= co2 then
		cooldown2 = cooldown2 + 1 / 30
	end
	if cooldown3 <= co3 then
		cooldown3 = cooldown3 + 1 / 30
	end
	if cooldown4 <= co4 then
		cooldown4 = cooldown4 + 1 / 30
	end

end
--[[ Movement Detection ]]--

while true do
	swait()
	updateskills()
		bar4:TweenSize(UDim2.new(1 * (cooldown4 / co4), 0, 1, 0), 'Out', 'Quad', .5)
	bar3:TweenSize(UDim2.new(1 * (cooldown3 / co3), 0, 1, 0), 'Out', 'Quad', .5)
	bar1:TweenSize(UDim2.new(1 * (cooldown1 / co1), 0, 1, 0), 'Out', 'Quad', .5)
	bar2:TweenSize(UDim2.new(1 * (cooldown2 / co2), 0, 1, 0), 'Out', 'Quad', .5)
	Torsovelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude 
	velocity = RootPart.Velocity.y
	sine = sine + change
	local hit, pos = rayCast(RootPart.Position, (CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0))).lookVector, 4, Character)
	if equipped == true or equipped == false then
		if RootPart.Velocity.y > 1 and hit == nil then 
			Anim = "Jump"
			if attack == false then
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0-.1* math.cos(sine / 9)) * angles(math.rad(0), math.rad(10), math.rad(40)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(-40)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.3-.1* math.cos(sine / 9), -0.5) * angles(math.rad(50), math.rad(0), math.rad(-30)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.1, 0.5-.1* math.cos(sine / 9), 0.5) * angles(math.rad(50), math.rad(0), math.rad(-30)), .3)
				RH.C0 = clerp(RH.C0, cf(1, -1+.1* math.cos(sine / 9), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1.2+.1* math.cos(sine / 9), 0.25) * LHCF * angles(math.rad(0), math.rad(0), math.rad(-0)), .3)
				FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0)  * angles(math.rad(0), math.rad(0), math.rad(90)), .3)
			end
		elseif RootPart.Velocity.y < -1 and hit == nil then 
			Anim = "Fall"
			if attack == false then
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(30), math.rad(0), math.rad(0)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(50)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-50)), .3)
				RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(30)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
			end
		elseif Torsovelocity < 1 and hit ~= nil then
			Anim = "Idle"
			if attack == false then
				change = 1
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0-.1* math.cos(sine / 9)) * angles(math.rad(20), math.rad(10), math.rad(40)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-20), math.rad(0), math.rad(-40)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.3-.1* math.cos(sine / 9), -0.5) * angles(math.rad(50), math.rad(0), math.rad(-30)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.1, 0.5-.1* math.cos(sine / 9), 0.5) * angles(math.rad(50), math.rad(0), math.rad(-30)), .3)
				RH.C0 = clerp(RH.C0, cf(1, -1+.1* math.cos(sine / 9), 0) * RHCF * angles(math.rad(0), math.rad(-30), math.rad(20)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1.2+.1* math.cos(sine / 9), 0.25) * LHCF * angles(math.rad(0), math.rad(0), math.rad(-10)), .3)
				FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0)  * angles(math.rad(0), math.rad(0), math.rad(90)), .3)
			end
		elseif Torsovelocity > 2 and hit ~= nil then
			Anim = "Walk"
			if attack == false then
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0-.1* math.cos(sine / 9)) * angles(math.rad(20), math.rad(0), math.rad(0)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-20), math.rad(0), math.rad(0)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.3-.1* math.cos(sine / 9), 0) * angles(math.rad(50), math.rad(0), math.rad(-30)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5-.1* math.cos(sine / 9), 0) * angles(math.rad(50), math.rad(0), math.rad(-30)), .3)
				RH.C0 = clerp(RH.C0, cf(1, -1, 0- .5 * math.cos(sine /5)) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0+55 * math.cos(sine / 5))), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1, 0+ .5 * math.cos(sine / 5)) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0+55 * math.cos(sine / 5))), .3)
				FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0)  * angles(math.rad(0), math.rad(-20), math.rad(90)), .3)
			end
		end
	end
	if #Effects > 0 then
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
						elseif Thing[2] == "Block2" then
							Thing[1].CFrame = Thing[1].CFrame
							Mesh = Thing[7]
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Cylinder" then
							Mesh = Thing[1].Mesh
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Blood" then
							Mesh = Thing[7]
							Thing[1].CFrame = Thing[1].CFrame * Vector3.new(0, .5, 0)
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Elec" then
							Mesh = Thing[1].Mesh
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[7], Thing[8], Thing[9])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Disappear" then
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "SAccessoryter" then
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
							Thing[4] = Thing[4] * CFrame.new(0, Thing[7], 0)
							Thing[1].CFrame = Thing[4] * CFrame.fromEulerAnglesXYZ(Thing[6], 0, 0)
							Thing[6] = Thing[6] + Thing[5]
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
--[[ 
Copyrighted (C) Qaeo 2016
]] 

