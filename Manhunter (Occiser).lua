Player=game:GetService("Players").LocalPlayer
Character=Player.Character 
PlayerGui=Player.PlayerGui
Backpack=Player.Backpack 
Torso=Character.Torso 
Head=Character.Head 
Humanoid=Character.Humanoid
LeftArm=Character["Left Arm"] 
LeftLeg=Character["Left Leg"] 
RightArm=Character["Right Arm"] 
RightLeg=Character["Right Leg"] 
LS=Torso["Left Shoulder"] 
LH=Torso["Left Hip"] 
RS=Torso["Right Shoulder"] 
RH=Torso["Right Hip"] 
Face = Head.face
Neck=Torso.Neck
it=Instance.new
attacktype=1
vt=Vector3.new
cf=CFrame.new
euler=CFrame.fromEulerAnglesXYZ
angles=CFrame.Angles
cloaked=false
necko=cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
necko2=cf(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
LHC0=cf(-1,-1,0,-0,-0,-1,0,1,0,1,0,0)
LHC1=cf(-0.5,1,0,-0,-0,-1,0,1,0,1,0,0)
RHC0=cf(1,-1,0,0,0,1,0,1,0,-1,-0,-0)
RHC1=cf(0.5,1,0,0,0,1,0,1,0,-1,-0,-0)
RootPart=Character.HumanoidRootPart
RootJoint=RootPart.RootJoint
RootCF=euler(-1.57,0,3.14)
attack = false 
attackdebounce = false 
deb=false
equipped=true
hand=false
MMouse=nil
combo=0
mana=0
trispeed=.2
attackmode='none'
local idle=0
local Anim="Idle"
local Effects={}
Camera = workspace.CurrentCamera
local m = Instance.new("Model",Character)
m.Name = "WeaponModel"
local RHCF  = CFrame.fromEulerAnglesXYZ(0,1.6,0)
local LHCF  = CFrame.fromEulerAnglesXYZ(0,-1.6,0)

Humanoid.WalkSpeed = 30
Humanoid.Animator:Destroy()
mouse=Player:GetMouse()
--save shoulders 
RSH, LSH=nil, nil 
--welds 
RW, LW=Instance.new("Motor6D"), Instance.new("Motor6D") 
RW.Name="RS" LW.Name="LS"
LH=Torso["Left Hip"]
RH=Torso["Right Hip"]
TorsoColor=Torso.BrickColor
player=Player 
ch=Character
RSH=ch.Torso["Right Shoulder"] 
LSH=ch.Torso["Left Shoulder"] 
-- 
RSH.Parent=nil 
LSH.Parent=nil 
-- 
RW.Part0=ch.Torso 
RW.C0=cf(1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5) 
RW.C1=cf(0, 0.5, 0) 
RW.Part1=ch["Right Arm"] 
RW.Parent=ch.Torso 
-- 
LW.Part0=ch.Torso 
LW.C0=cf(-1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8) 
LW.C1=cf(0, 0.5, 0) 
LW.Part1=ch["Left Arm"] 
LW.Parent=ch.Torso 


local RbxUtility = LoadLibrary("RbxUtility")
local Create = RbxUtility.Create

function RemoveOutlines(part)
	part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
end
	
function CreatePart(FormFactor, Parent, Material, Reflectance, Transparency, BColor, Name, Size)
	local Part = Create("Part"){
		formFactor = FormFactor,
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
	
function CreateSound(id,par,vol,pit) 
	coroutine.resume(coroutine.create(function()
		local sou = Instance.new("Sound",par or workspace)
		sou.Volume=vol
		sou.Pitch=pit or 1
		sou.SoundId=id
		wait() 
		sou:play() 
		game:GetService("Debris"):AddItem(sou,6)
	end))
end
 
function clerp(a,b,t)
return a:lerp(b,t)
end

function makegui(ador,text)
	local a=math.random(-10,10)/100
	local bg=Instance.new('BillboardGui',m)
	bg.Adornee=ador
	bg.Size=UDim2.new(1,0,1,0)
	bg.StudsOffset=Vector3.new(0,0,0)
	bg.AlwaysOnTop=false
	local tl=Instance.new('TextLabel',bg)
	tl.BackgroundTransparency=1
	tl.Size=UDim2.new(1,0,1,0)
	tl.Text=text
	tl.Font='SourceSansBold'
	tl.FontSize='Size42'
	tl.TextColor3=Color3.new(255,255,255)
	tl.TextStrokeTransparency=0
	tl.TextScaled=true
	tl.TextWrapped=true
    coroutine.wrap(function()
		for i=1,50 do
			wait()
			bg.StudsOffset=bg.StudsOffset+Vector3.new(a,.1,a)
		end
		wait(1)
		for i=1,10 do
			wait()
			tl.TextTransparency=tl.TextTransparency+.1
		end
	end)()
end

function damage(hit,mind,maxd,knock,type,prop)
	--[[
		to apply it to a player directly, make the first arg go to the players torso
		1 - normal type(damage and knockback)
		2 - drain type(damage no knockback)
		3 - lifesteal(arbsorbs hp)
		4 - heal(heals target)
	]]
    if hit.Parent==nil then
		return
	end
	local h=hit.Parent:FindFirstChild("Humanoid")
	for i,v in pairs(hit.Parent:children()) do
		if v:IsA("Humanoid") then
			h=v
		end
	end
	if hit.Parent.Parent:FindFirstChild('Torso')~=nil then
		h=hit.Parent.Parent:FindFirstChild('Humanoid')
	end
	if hit.Parent:IsA('Hat') then
		hit=hit.Parent.Parent:findFirstChild('Head')
	end
	local D=math.random(mind,maxd)
	--h.Health=h.Health-D
	if h~=nil and hit.Parent.Name~=Character.Name and hit.Parent:FindFirstChild("Torso")~=nil then
		if type=="Normal Damage" then
			h.Health=h.Health-D
			makegui(h.Parent.Torso,tostring(D))
			CreateSound("http://www.roblox.com/asset/?id=169462037",hit,1,math.random(150,200)/100)
			local vp=Instance.new('BodyVelocity')
			vp.P=500
			vp.maxForce=Vector3.new(math.huge,0,math.huge)
			vp.velocity=prop.CFrame.lookVector*knock+prop.Velocity/1.05
			if knock>0 then
				vp.Parent=hit.Parent.Torso
			end
			game:GetService("Debris"):AddItem(vp,.5)
		elseif type=="Drain Damage" then
			CreateSound("http://www.roblox.com/asset/?id=169462037",hit,1,math.random(150,200)/100)
			h.Health=h.Health-D
			makegui(h.Parent.Torso,tostring(D))
		elseif type=="Lifestealing Damage" then
			h.Health=h.Health-D
			Character.Humanoid.Health=Character.Humanoid.Health+D/2
			CreateSound("http://www.roblox.com/asset/?id=206083232",hit,1,1.5)
			makegui(h.Parent.Torso,tostring(D))
		elseif type=="Healing" then
			h.Health=h.Health+D
			CreateSound("http://www.roblox.com/asset/?id=186883084",hit,1,1)
			makegui(h.Parent.Torso,tostring(D))
		end
	end
end

local function GetClosest(obj,MaxDistance)
local Last,Lastx = MaxDistance +1
for i,v in pairs(workspace:GetChildren())do
if v:IsA("Model")and v ~= Character and v:findFirstChild("Humanoid")and v:findFirstChild("Torso")and v:findFirstChild("Humanoid").Health > 0 then
local t = v.Torso
local dist = (t.Position - obj.Position).magnitude
if dist <= MaxDistance then
if dist < Last then
Last = dist
Lastx = v
end end end end
return Lastx
end

function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 

function trail(color,part)
	trailling=true
	local lastPoint = part.Position
	coroutine.resume(coroutine.create(function()
		while trailling do
			wait()
			local mag = (lastPoint - part.Position).magnitude
			local p=Instance.new('Part',m)
			p.Anchored=true
			p.CanCollide=false
			p.Transparency=.2
			p.BrickColor=BrickColor.new(color)
			p.Material='Neon'
			p.FormFactor='Custom'
			p.Size=Vector3.new(1,1,1)
			p.CFrame = CFrame.new(lastPoint, part.Position) * CFrame.new(0, 0, -mag/2)
			local mesh=Instance.new("BlockMesh",p)
			mesh.Scale=Vector3.new(.1,.1,mag+.2)
			lastPoint = part.Position
			coroutine.wrap(function()
				for x=1,10 do
					wait()
					mesh.Scale=mesh.Scale-Vector3.new(.01,.01,0)
				end
				p:remove()
			end)()
		end
	end))
end

Handle=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,1,"Dark stone grey","Handle",Vector3.new(2.8874979, 0.553124726, 0.200000003))
Handleweld=CreateWeld(m,Character["Right Arm"],Handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0374832153, 1.11559677, -0.0300197601, -3.7658765e-013, 0, -0.999997616, 9.8749676e-013, 0.999997497, 0, 1, -9.87811937e-013, -3.7658765e-013))
CreateMesh("BlockMesh",Handle,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.921874583))
FakeHandle=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,1,"Dark stone grey","FakeHandle",Vector3.new(2.08749771, 0.553124726, 0.200000003))
FakeHandleweld=CreateWeld(m,Handle,FakeHandle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-005, 2.62260437e-006, -3.81469727e-006, 0.999990463, -7.43754529e-025, -1.78893358e-018, -7.43754726e-025, 0.999990463, -6.25801494e-016, -1.78893358e-018, -6.25801494e-016, 1))
CreateMesh("BlockMesh",FakeHandle,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.921874583))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Dark stone grey","Part",Vector3.new(3.68749809, 0.553124726, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.400016785, -2.62260437e-006, 0, 0.999990463, -7.43754726e-025, -1.78893358e-018, -7.43754529e-025, 0.999990463, -6.25801494e-016, -1.78893358e-018, -6.25801494e-016, 1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.921874583))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.553124726, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.5640564, 2.38418579e-007, 0, 0.999990463, -1.85938657e-024, -4.49943902e-018, 3.71877412e-025, 0.999990463, -1.56450373e-015, 9.21571847e-019, 3.12900747e-016, 1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.921874583, 1, 0.921874583))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.553124726, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.19529533, -2.62260437e-006, 0, 0.999990463, -7.43754726e-025, -1.78893358e-018, -7.43754529e-025, 0.999990463, -6.25801494e-016, -1.78893358e-018, -6.25801494e-016, 1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.921874583, 1, 0.921874583))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Medium stone grey","Part",Vector3.new(0.200000003, 0.553124726, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.01091957, -2.62260437e-006, 0, 0.999990463, -7.43754726e-025, -1.78893358e-018, -7.43754529e-025, 0.999990463, -6.25801494e-016, -1.78893358e-018, -6.25801494e-016, 1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.921874583, 0.876666665, 0.737499654))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.553124726, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.82654381, -2.62260437e-006, 0, 0.999990463, -7.43754726e-025, -1.78893358e-018, -7.43754529e-025, 0.999990463, -6.25801494e-016, -1.78893358e-018, -6.25801494e-016, 1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.921874583, 1, 0.921874583))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Medium stone grey","Part",Vector3.new(0.200000003, 0.553124726, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.64216995, -2.62260437e-006, 0, 0.999990463, -7.43754726e-025, -1.78893358e-018, -7.43754529e-025, 0.999990463, -6.25801494e-016, -1.78893358e-018, -6.25801494e-016, 1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.921874583, 0.876666665, 0.737499654))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Medium stone grey","Part",Vector3.new(0.200000003, 0.553124726, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.3796711, -3.57627869e-006, 0, 0.999990463, -7.43754726e-025, -1.78893358e-018, -7.43754529e-025, 0.999990463, -6.25801494e-016, -1.78893358e-018, -6.25801494e-016, 1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.921874583, 0.876666665, 0.737499654))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Dark stone grey","Part",Vector3.new(0.737499714, 0.553124726, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.1812191, -2.62260437e-006, 0, 0.999990463, -7.43754726e-025, -1.78893358e-018, -7.43754529e-025, 0.999990463, -6.25801494e-016, -1.78893358e-018, -6.25801494e-016, 1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.921874583))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Medium stone grey","Part",Vector3.new(2.94999838, 0.200000003, 0.202812403))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.40001297, -1.31130219e-005, 0, 0.999987483, -3.71994139e-025, 3.76584723e-013, -3.64036234e-025, 0.999987483, -1.00893556e-012, -3.76586755e-013, 1.00767973e-012, 1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.921874583, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Dark stone grey","Part",Vector3.new(0.737499595, 0.553124726, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.35001373, -2.62260437e-006, 0, 0.999990463, -7.43754726e-025, -1.78893358e-018, -7.43754529e-025, 0.999990463, -6.25801494e-016, -1.78893358e-018, -6.25801494e-016, 1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.921874583))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.368749827))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.184376717, 2.42810059, -5.96035008e-008, 1.25160299e-015, -1, 9.17634938e-023, 0.999992847, 3.12900747e-016, 0.999992847, -1.82727023e-023, -5.96039271e-008))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.921874583, 0.921874642, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.368749857, 0.737499714))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.0921888351, 5.3155632, 2.22954721e-008, -5.9603785e-008, -1, -7.07253012e-009, -0.999985695, 5.96046377e-008, -0.999985695, 7.07252878e-009, -2.22957919e-008))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.921874583, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Dark stone grey","Part",Vector3.new(0.737499714, 0.368749827, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.61249161, 0.0921854973, 0, 0.999992847, -1.4875129e-024, -3.60497222e-018, 3.71878349e-025, 0.999992847, -1.25160299e-015, 9.21571847e-019, 3.12900747e-016, 1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.921874583))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.368749827))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.18437624, -2.79685974, 5.96040763e-008, -6.25801494e-016, 1, -7.43754529e-025, 0.999990463, -6.25801494e-016, -0.999990463, -3.65538643e-023, 5.96046448e-008))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.921874583, 0.921874642, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Medium stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.202812403))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.96718216, -1.40666962e-005, 0, 0.999987125, -3.71994016e-025, 3.76584614e-013, -3.64036234e-025, 0.999987483, -1.00893556e-012, -3.7658662e-013, 1.0076794e-012, 0.999999642))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.921874583, 2.21249914, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Medium stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.202812403))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.16716385, -1.40666962e-005, 0, 0.999987006, -3.71993967e-025, 3.7658456e-013, -3.64036234e-025, 0.999987483, -1.00893556e-012, -3.76586566e-013, 1.00767929e-012, 0.999999523))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.921874583, 2.21249914, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Dark stone grey","Part",Vector3.new(1.29062438, 0.368749827, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.3015213, -0.0921912193, 0, 0.999990463, -7.43754726e-025, -1.78893358e-018, -7.43754529e-025, 0.999990463, -6.25801494e-016, -1.78893358e-018, -6.25801494e-016, 1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.921874583))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Medium stone grey","Part",Vector3.new(0.200000003, 0.543905973, 1.29062438))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.00460743904, 5.59212303, 2.22954721e-008, -5.9603785e-008, -1, -7.07253012e-009, -0.999985695, 5.96046377e-008, -0.999985695, 7.07252878e-009, -2.22957919e-008))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.300531089, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Medium stone grey","Part",Vector3.new(1.29062438, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.30152702, 0.184371233, 0, 0.999991655, -7.43755219e-025, -1.35525272e-018, -7.43755022e-025, 0.999991655, -6.26994116e-016, -1.78893358e-018, -6.25801494e-016, 1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.921874583, 0.294999897))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Medium stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.368732214, 4.85466194, 2.2294989e-008, -5.96025203e-008, -1, -7.07257142e-009, -0.999991655, 5.96030176e-008, -0.999991655, 7.07257009e-009, -2.22951755e-008))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.300531089, 0.921874583, 0.921874583))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Medium stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.368737578, 4.67025185, 2.2295163e-008, -5.96029821e-008, -1, -7.07252479e-009, -0.999985099, 5.96038703e-008, -0.999985099, 7.07252346e-009, -2.2295497e-008))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.300531089, 0.921874583, 0.921874583))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Medium stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.36872232, 3.93280792, 2.22949676e-008, -5.96024705e-008, -1, -7.07252568e-009, -0.999985099, 5.96033587e-008, -0.999985099, 7.07252434e-009, -2.22953016e-008))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.300531089, 0.921874583, 0.921874583))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Medium stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.368722677, 4.11721611, 2.22950032e-008, -5.96025629e-008, -1, -7.07257186e-009, -0.999991655, 5.96030603e-008, -0.999991655, 7.07257053e-009, -2.22951897e-008))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.300531089, 0.921874583, 0.921874583))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Medium stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.368732214, 4.48592758, 2.22950742e-008, -5.96027476e-008, -1, -7.07257142e-009, -0.999991655, 5.9603245e-008, -0.999991655, 7.07257009e-009, -2.22952607e-008))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.300531089, 0.921874583, 0.921874583))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.368749827))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.90734863e-006, -0.184342265, 5.37805176, -5.95993832e-008, -1.49017119e-008, -1, -3.55258387e-015, 0.999992847, -1.49018184e-008, 0.999992847, 2.66444441e-015, -5.95998095e-008))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.921874583, 0.921874642, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Medium stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.368727446, 4.30156708, 2.22950387e-008, -5.96026553e-008, -1, -7.07257186e-009, -0.999991655, 5.96031526e-008, -0.999991655, 7.07257053e-009, -2.22952252e-008))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.300531089, 0.921874583, 0.921874583))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Medium stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.368721366, 3.7484436, 2.22949321e-008, -5.96023781e-008, -1, -7.07252612e-009, -0.999985099, 5.96032663e-008, -0.999985099, 7.07252479e-009, -2.22952661e-008))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.300531089, 0.921874583, 0.921874583))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Medium stone grey","Part",Vector3.new(0.200000003, 0.553124726, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.17966843, -1.50203705e-005, 0, 0.999992847, -3.71996136e-025, 3.76586755e-013, -3.63978819e-025, 0.999992847, -1.00909862e-012, -3.76586755e-013, 1.00815276e-012, 1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.921874583, 0.876666665, 0.737499654))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Medium stone grey","Part",Vector3.new(0.200000003, 0.912655771, 0.737499714))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.188973784, 5.31552696, 2.22946976e-008, -5.96017244e-008, -1, -7.072535e-009, -0.999986887, 5.9602506e-008, -0.999986887, 7.07253367e-009, -2.22949907e-008))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.300531089, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Medium stone grey","Part",Vector3.new(0.200000003, 0.553124726, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81095505, 3.09944153e-006, 0, 0.999990463, -7.43754726e-025, -1.78893358e-018, -7.43754578e-025, 0.999990463, -9.41195906e-016, -1.78893358e-018, -3.10407082e-016, 1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.921874583, 0.876666665, 0.737499654))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Medium stone grey","Part",Vector3.new(0.200000003, 0.553124726, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.54840088, 1.16825104e-005, -1.90734863e-006, 0.999992847, 3.73773774e-020, 2.85642083e-012, -1.22503937e-019, 0.999992847, 2.9801619e-008, -2.85640305e-012, -2.98014058e-008, 1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.921874583, 0.876666665, 0.737499654))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.553124726, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.99529266, -1.50203705e-005, 0, 0.999992847, -3.71996136e-025, 3.76586755e-013, -3.63978819e-025, 0.999992847, -1.00909862e-012, -3.76586755e-013, 1.00815276e-012, 1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.921874583, 1, 0.921874583))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.553124726, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.36404037, -1.50203705e-005, 0, 0.999992847, -3.71996136e-025, 3.76586755e-013, -3.63978819e-025, 0.999992847, -1.00909862e-012, -3.76586755e-013, 1.00815276e-012, 1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.921874583, 1, 0.921874583))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Dark stone grey","Part",Vector3.new(0.553124726, 0.553124726, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.9171524, 1.16825104e-005, -1.90734863e-006, 0.999992847, 2.14118859e-024, 2.87061802e-012, -4.27760783e-020, 0.999992847, 1.49003041e-008, -2.87060024e-012, -1.49001993e-008, 1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.921874583))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.368749827, 0.368749827))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.0921826363, 5.37806702, -2.24552696e-008, 1.23675636e-006, 1, 6.84464596e-010, -0.999992847, 1.23676523e-006, 0.999992847, 6.84492352e-010, 2.24554295e-008))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.921874583, 1, 1))
Hitbox=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Dark stone grey","Hitbox",Vector3.new(3.89062428, 0.968749881, 0.200000003))
Hitboxweld=CreateWeld(m,FakeHandle,Hitbox,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.40151978, 0.207807541, 0, 0.999990463, -7.43754726e-025, -1.78893358e-018, -7.43754529e-025, 0.999990463, -6.25801494e-016, -1.78893358e-018, -6.25801494e-016, 1))
CreateMesh("BlockMesh",Hitbox,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.921874583))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Medium stone grey","Part",Vector3.new(0.368749827, 0.553124726, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.62808228, -7.15255737e-007, 0, 0.999990463, -1.85938657e-024, -4.49943902e-018, 3.71877412e-025, 0.999990463, -1.56450373e-015, 9.21571847e-019, 3.12900747e-016, 1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.876666665, 0.737499654))

function attackone()
attack = true
for i = 0,1,0.2 do
wait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(-70)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko*angles(math.rad(5),math.rad(0),math.rad(70)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0)*angles(math.rad(0),math.rad(0),math.rad(70)),.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0)*angles(math.rad(0),math.rad(-40),math.rad(-50)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,-.3)*RHCF*angles(math.rad(-5),math.rad(40),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*LHCF*angles(math.rad(-5),math.rad(40),math.rad(0)),.3)
FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0)*angles(math.rad(0),math.rad(0),7*i),.7)
end
for i = 0,1,0.07 do
wait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,.1)*angles(math.rad(0),math.rad(0),math.rad(70)),.4)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko*angles(math.rad(5),math.rad(0),math.rad(-70)),.4)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0)*angles(math.rad(0),math.rad(20),math.rad(90)),.4)
LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5, -.2)*angles(math.rad(0),math.rad(50),math.rad(-80)),.4)
RH.C0=clerp(RH.C0,cf(1,-1,-.3)*RHCF*angles(math.rad(-5),math.rad(-40),math.rad(-40)),.4)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*LHCF*angles(math.rad(-5),math.rad(-40),math.rad(40)),.4)
FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0)*angles(math.rad(0),math.rad(0),math.rad(-90)),.4)
Torso.Velocity=Head.CFrame.lookVector*100
end
Humanoid.JumpPower = 70
Humanoid.Jump = true
RootPart.Velocity=RootPart.CFrame.lookVector*-100
for i = 0,1,0.1 do
wait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),5*i),.4)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko*angles(math.rad(5),math.rad(0),math.rad(-50)),.4)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0)*angles(math.rad(0),math.rad(0),math.rad(50)),.4)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0)*angles(math.rad(0),math.rad(0),math.rad(-40)),.4)
RH.C0=clerp(RH.C0,cf(1,-1,-.3)*RHCF*angles(math.rad(-5),math.rad(0),math.rad(-20)),.4)
LH.C0=clerp(LH.C0,cf(-1,-.8,.3)*LHCF*angles(math.rad(-5),math.rad(0),math.rad(30)),.4)
FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0)*angles(math.rad(20),math.rad(0),8*i),.4)
end
attack = false
end

function attacktwo()
attack = true
for i = 0,1,0.1 do
wait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(-70)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko*angles(math.rad(5),math.rad(0),math.rad(70)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0)*angles(math.rad(0),math.rad(0),math.rad(70)),.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0)*angles(math.rad(0),math.rad(-40),math.rad(-50)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,-.3)*RHCF*angles(math.rad(-5),math.rad(40),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*LHCF*angles(math.rad(-5),math.rad(40),math.rad(0)),.3)
FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0)*angles(math.rad(80),math.rad(0),10*i),.4)
end
for i = 0,1,0.3 do
wait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.4)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko*angles(math.rad(20),math.rad(0),math.rad(0)),.4)
RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.5, -.7)*angles(math.rad(130),math.rad(0),math.rad(-50)),.4)
LW.C0 = clerp(LW.C0, CFrame.new(-1.2, 0.5, -.7)*angles(math.rad(130),math.rad(0),math.rad(50)),.4)
RH.C0=clerp(RH.C0,cf(1,-1,-0)*RHCF*angles(math.rad(-5),math.rad(0),math.rad(0)),.4)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*LHCF*angles(math.rad(-5),math.rad(0),math.rad(50)),.4)
FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0)*angles(math.rad(-50),math.rad(0),math.rad(0)),.4)
end
Humanoid.JumpPower = 70
Humanoid.Jump = true
RootPart.Velocity=RootPart.CFrame.lookVector*130
for i = 1,2 do 
for i = 0,1,0.1 do
wait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(6*i,math.rad(0),math.rad(0)),.5)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko*angles(math.rad(-30),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.5, -.7)*angles(math.rad(30),math.rad(0),math.rad(-50)),.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.2, 0.5, -.7)*angles(math.rad(30),math.rad(0),math.rad(50)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*RHCF*angles(math.rad(-5),math.rad(0),math.rad(-30)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*LHCF*angles(math.rad(-5),math.rad(0),math.rad(50)),.3)
FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0)*angles(math.rad(-50),math.rad(0),math.rad(0)),.4)
end
end
attack = false
end

function attackthree()
attack = true
for i = 0,1,0.1 do
wait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,-.8)*angles(math.rad(50),math.rad(0),math.rad(-70)),.4)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko*angles(math.rad(-20),math.rad(-20),math.rad(70)),.4)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0)*angles(math.rad(0),math.rad(0),math.rad(70)),.4)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0)*angles(math.rad(0),math.rad(-20),math.rad(-60)),.4)
RH.C0=clerp(RH.C0,cf(1,-1,-.5)*RHCF*angles(math.rad(-5),math.rad(40),math.rad(30)),.4)
LH.C0=clerp(LH.C0,cf(-1,0,0)*LHCF*angles(math.rad(-5),math.rad(40),math.rad(-50)),.4)
FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0)*angles(math.rad(40),math.rad(0),-10*i),.4)
end
Humanoid.JumpPower = 80
Humanoid.Jump = true
for i = 0,1,0.1 do
wait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(30),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.5, -.7)*angles(math.rad(130),math.rad(0),math.rad(-50)),.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.2, 0.5, -.7)*angles(math.rad(130),math.rad(0),math.rad(50)),.3)
RH.C0=clerp(RH.C0,cf(1,-.8,-.5)*RHCF*angles(math.rad(-5),math.rad(0),math.rad(-30)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,-.3)*LHCF*angles(math.rad(-5),math.rad(0),math.rad(30)),.3)
FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0)*angles(math.rad(-30),math.rad(30),-10*i),.7)
end
RootPart.Velocity=RootPart.CFrame.lookVector*200
for i = 1,2 do
for i = 0,1,0.1 do
wait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(120),math.rad(0),10*i),.65)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko*angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.5, -.7)*angles(math.rad(110),math.rad(0),math.rad(-50)),.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.2, 0.5, -.7)*angles(math.rad(110),math.rad(0),math.rad(50)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,-0)*RHCF*angles(math.rad(-5),math.rad(0),math.rad(-20)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,-.5)*LHCF*angles(math.rad(-5),math.rad(0),math.rad(20)),.3)
FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0)*angles(math.rad(-50),math.rad(0),math.rad(0)),.4)
end
end
attack = false
end

mouse.Button1Down:connect(function()
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
end)

mouse.KeyDown:connect(function(k)
k=k:lower()
if attack == false and k == '' then

end
end)


local sine = 0
local change = 1
local val = 0

while true do
wait()
sine = sine + change
local torvel=(RootPart.Velocity*Vector3.new(1,0,1)).magnitude 
local velderp=RootPart.Velocity.y
hitfloor,posfloor=rayCast(RootPart.Position,(CFrame.new(RootPart.Position,RootPart.Position - Vector3.new(0,1,0))).lookVector,4,Character)
if equipped==true or equipped==false then
if attack==false then
idle=idle+1
else
idle=0
end
if idle>=500 then
if attack==false then
end
end
if RootPart.Velocity.y > 1 and hitfloor==nil then 
Anim="Jump"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,1,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko*angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0)*angles(math.rad(-10),math.rad(0),math.rad(5)),.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0)*angles(math.rad(-10),math.rad(0),math.rad(-5)),.3)
RH.C0=clerp(RH.C0,cf(1,-.8,-.3)*RHCF*angles(math.rad(-3),math.rad(0),math.rad(-20)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*LHCF*angles(math.rad(3),math.rad(0),math.rad(20)),.3)
FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0)*angles(math.rad(0),math.rad(0),math.rad(-40)),.3)
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
Anim="Fall"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,-1,0)*angles(math.rad(10),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0)*angles(math.rad(-20),math.rad(0),math.rad(50)),.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0)*angles(math.rad(-20),math.rad(0),math.rad(-50)),.3)
RH.C0=clerp(RH.C0,cf(1,-.8,-.5)*RHCF*angles(math.rad(-3),math.rad(0),math.rad(10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*LHCF*angles(math.rad(-3),math.rad(0),math.rad(10)),.3)
FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0)*angles(math.rad(0),math.rad(0),math.rad(-55)),.3)
end
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
if attack==false then
change = 1
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0.1+0.1*math.cos(sine/25),-0.1+0.1*math.cos(sine/25))*angles(math.rad(5),math.rad(0),math.rad(-40)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko*angles(math.rad(-4*math.cos(sine/25)),math.rad(-4*math.cos(sine/25)),math.rad(40)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0)*angles(math.rad(40-1*math.cos(sine/25)),math.rad(0),math.rad(20-1*math.cos(sine/25))),.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0)*angles(math.rad(10*math.cos(sine/25)),math.rad(0),math.rad(-10+1*math.cos(sine/25))),.3)
RH.C0=clerp(RH.C0,cf(1,-.9-0.1*math.cos(sine/25),-.3)*RHCF*angles(math.rad(-3),math.rad(40),math.rad(-1+1*math.cos(sine/25))),.3)
LH.C0=clerp(LH.C0,cf(-1,-.8-0.1*math.cos(sine/25),0)*LHCF*angles(math.rad(-5),math.rad(40),math.rad(-2-1*math.cos(sine/25))),.3)
FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0)*angles(math.rad(0),math.rad(0),math.rad(-55-1*math.cos(sine/25))),.3)
end
elseif torvel>2 and hitfloor~=nil then
Anim="Walk"
if attack==false then
change=3
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,-0.2+.1*math.cos(sine/9))*angles(math.rad(30+1*math.cos(sine/9)),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko*angles(math.rad(-20+1*math.cos(sine/9)),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0)*angles(math.rad(-65-4*math.cos(sine/9)),math.rad(0),math.rad(10)),.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.7, -.7)*angles(math.rad(110),math.rad(-10-4*math.cos(sine/9)),math.rad(70)),.3)
RH.C0=clerp(RH.C0,cf(1,-1+.2*math.cos(sine/9),0)*RHCF*angles(math.rad(-3),math.rad(0),math.rad(70*math.cos(sine/9))),.3)
LH.C0=clerp(LH.C0,cf(-1,-1+.2*math.cos(sine/9),0)*LHCF*angles(math.rad(-3),math.rad(0),math.rad(70*math.cos(sine/9))),.3)
FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0)*angles(math.rad(-5),math.rad(10),math.rad(-67-.5*math.cos(sine/9))),.3)
end
end
end
if #Effects>0 then
for e=1,#Effects do
if Effects[e]~=nil then
local Thing=Effects[e]
if Thing~=nil then
local Part=Thing[1]
local Mode=Thing[2]
local Delay=Thing[3]
local IncX=Thing[4]
local IncY=Thing[5]
local IncZ=Thing[6]
if Thing[1].Transparency<=1 then
if Thing[2]=="Block1" then
Thing[1].CFrame=Thing[1].CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
Mesh=Thing[1].Mesh
Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Cylinder" then
Mesh=Thing[1].Mesh
Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Blood" then
Mesh=Thing[7]
Thing[1].CFrame=Thing[1].CFrame*cf(0,.5,0)
Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Elec" then
Mesh=Thing[1].Mesh
Mesh.Scale=Mesh.Scale+vt(Thing[7],Thing[8],Thing[9])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Disappear" then
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
end
else
Part.Parent=nil
table.remove(Effects,e)
end
end
end
end
end
end