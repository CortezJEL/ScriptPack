--[[
Blood Shogai Class Made by Fenrier.
]] 
Player = game:GetService("Players").LocalPlayer

Character = Player.Character 
local effectz = Instance.new('Model', Character)
effectz.Name = "effects"
PlayerGui = Player.PlayerGui 
Backpack = Player.Backpack 
Torso = Character.Torso 
Head = Character.Head 
Humanoid = Character.Humanoid
Face = Head.face
LeftArm = Character["Left Arm"] 
LeftLeg = Character["Left Leg"] 
RightArm = Character["Right Arm"] 
RightLeg = Character["Right Leg"] 
LS = Torso["Left Shoulder"] 
LH = Torso["Left Hip"] 
RS = Torso["Right Shoulder"] 
RH = Torso["Right Hip"] 
Neck = Torso.Neck
it=Instance.new
vt=Vector3.new
cf=CFrame.new
euler=CFrame.fromEulerAnglesXYZ
angles=CFrame.Angles
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
MMouse=nil
combo=0
--player 
player = nil 
--save shoulders 
RSH, LSH = nil, nil 
--welds 
RW, LW = Instance.new("Weld"), Instance.new("Weld") 
RW.Name="Right Shoulder" LW.Name="Left Shoulder"
LH=Torso["Left Hip"]
RH=Torso["Right Hip"]
xenabled=true cenabled=true venabled=true benabled=true
cloaked=false
shadowthrust="None"

ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "Heartbeat"

script:WaitForChild("Heartbeat")

frame = 1 / 45
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

if Character:findFirstChild("Shogai",true) ~= nil then 
Character:findFirstChild("Shogai",true).Parent = nil 
end 
if Player.PlayerGui:findFirstChild("WeaponGUI",true) ~= nil then 
Player.PlayerGui:findFirstChild("WeaponGUI",true).Parent = nil 
end 


function NoOutline(Part)
Part.TopSurface,Part.BottomSurface,Part.LeftSurface,Part.RightSurface,Part.FrontSurface,Part.BackSurface = 10,10,10,10,10,10
end

function part(formfactor,parent,reflectance,transparency,brickcolor,name,size)
local fp = it("Part")
fp.formFactor = formfactor 
fp.Parent = parent
fp.Reflectance = reflectance
fp.Transparency = transparency
fp.CanCollide = false 
fp.Locked=true
fp.BrickColor = brickcolor
fp.Name = name
fp.Size = size
fp.Position = Torso.Position 
NoOutline(fp)
fp.Material="SmoothPlastic"
fp:BreakJoints()
return fp 
end 

function mesh(Mesh,part,meshtype,meshid,offset,scale)
local mesh = it(Mesh) 
mesh.Parent = part
if Mesh=="SpecialMesh" then
mesh.MeshType = meshtype
mesh.MeshId = meshid
end
mesh.Offset=offset
mesh.Scale=scale
return mesh
end

function weld(parent,part0,part1,c0)
local weld = it("Weld") 
weld.Parent = parent
weld.Part0 = part0 
weld.Part1 = part1 
weld.C0 = c0
return weld
end

local fengui=it("GuiMain") 
fengui.Parent=Player.PlayerGui 
fengui.Name="WeaponGUI" 
local fenframe1=it("TextLabel") 
fenframe1.Parent=fengui
fenframe1.BackgroundColor3=Color3.new(50/255,50/255,50/255) 
fenframe1.BackgroundTransparency=0.3
fenframe1.BorderSizePixel=5
fenframe1.BorderColor3=Color3.new(1,1,1) 
fenframe1.Size=UDim2.new(0.05, 0, 0.1, 0)
fenframe1.Position=UDim2.new(0.325,0,0.7,0)
fenframe1.Text="X"
fenframe1.TextWrapped=true
fenframe1.FontSize=7
fenframe1.TextColor3=Color3.new(1,1,1)
local fenframe1a=it("TextLabel") 
fenframe1a.Parent=fengui
fenframe1a.BackgroundColor3=Color3.new(255/255,50/255,50/255) 
fenframe1a.BackgroundTransparency=0.3
fenframe1a.BorderSizePixel=5
fenframe1a.BorderColor3=Color3.new(1,1,1) 
fenframe1a.Size=UDim2.new(0.05, 0, 0.1, 0)
fenframe1a.Position=UDim2.new(0.325,0,0.7,0)
fenframe1a.Text=""
local fenframe2=it("TextLabel") 
fenframe2.Parent=fengui
fenframe2.BackgroundColor3=Color3.new(50/255,50/255,50/255) 
fenframe2.BackgroundTransparency=0.3
fenframe2.BorderSizePixel=5
fenframe2.BorderColor3=Color3.new(1,1,1) 
fenframe2.Size=UDim2.new(0.05, 0, 0.1, 0)
fenframe2.Position=UDim2.new(0.425,0,0.7,0)
fenframe2.Text="C"
fenframe2.TextWrapped=true
fenframe2.FontSize=7
fenframe2.TextColor3=Color3.new(1,1,1)
local fenframe2a=it("TextLabel") 
fenframe2a.Parent=fengui
fenframe2a.BackgroundColor3=Color3.new(255/255,50/255,50/255) 
fenframe2a.BackgroundTransparency=0.3
fenframe2a.BorderSizePixel=5
fenframe2a.BorderColor3=Color3.new(1,1,1) 
fenframe2a.Size=UDim2.new(0.05, 0, 0.1, 0)
fenframe2a.Position=UDim2.new(0.425,0,0.7,0)
fenframe2a.Text=""
local fenframe3=it("TextLabel") 
fenframe3.Parent=fengui
fenframe3.BackgroundColor3=Color3.new(50/255,50/255,50/255) 
fenframe3.BackgroundTransparency=0.3
fenframe3.BorderSizePixel=5
fenframe3.BorderColor3=Color3.new(1,1,1) 
fenframe3.Size=UDim2.new(0.05, 0, 0.1, 0)
fenframe3.Position=UDim2.new(0.525,0,0.7,0)
fenframe3.Text="V"
fenframe3.TextWrapped=true
fenframe3.FontSize=7
fenframe3.TextColor3=Color3.new(1,1,1)
local fenframe3a=it("TextLabel") 
fenframe3a.Parent=fengui
fenframe3a.BackgroundColor3=Color3.new(255/255,50/255,50/255) 
fenframe3a.BackgroundTransparency=0.3
fenframe3a.BorderSizePixel=5
fenframe3a.BorderColor3=Color3.new(1,1,1) 
fenframe3a.Size=UDim2.new(0.05, 0, 0.1, 0)
fenframe3a.Position=UDim2.new(0.525,0,0.7,0)
fenframe3a.Text=""
local fenframe4=it("TextLabel") 
fenframe4.Parent=fengui
fenframe4.BackgroundColor3=Color3.new(50/255,50/255,50/255) 
fenframe4.BackgroundTransparency=0.3
fenframe4.BorderSizePixel=5
fenframe4.BorderColor3=Color3.new(1,1,1) 
fenframe4.Size=UDim2.new(0.05, 0, 0.1, 0)
fenframe4.Position=UDim2.new(0.625,0,0.7,0)
fenframe4.Text="B"
fenframe4.TextWrapped=true
fenframe4.FontSize=7
fenframe4.TextColor3=Color3.new(1,1,1)
local fenframe4a=it("TextLabel") 
fenframe4a.Parent=fengui
fenframe4a.BackgroundColor3=Color3.new(255/255,50/255,50/255) 
fenframe4a.BackgroundTransparency=0.3
fenframe4a.BorderSizePixel=5
fenframe4a.BorderColor3=Color3.new(1,1,1) 
fenframe4a.Size=UDim2.new(0.05, 0, 0.1, 0)
fenframe4a.Position=UDim2.new(0.625,0,0.7,0)
fenframe4a.Text=""

fenframe1a.Size=UDim2.new(0,0,0.1,0)
fenframe2a.Size=UDim2.new(0,0,0.1,0)
fenframe3a.Size=UDim2.new(0,0,0.1,0)
fenframe4a.Size=UDim2.new(0,0,0.1,0)

local modelzorz = Instance.new("Model") 
modelzorz.Parent = Character 
modelzorz.Name = "Shogai" 

local prt1=part(1,modelzorz,0,0,Torso.BrickColor,"Part1",vt(1,1,1))
local prt2=part(1,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part2",vt(1,1,1))
local prt3=part(1,modelzorz,0,0,BrickColor.new("Bright red"),"Part3",vt(1,1,1))
local prt4=part(1,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part4",vt(1,1,1))
local prt5=part(1,modelzorz,0.2,0,BrickColor.new("White"),"Part5",vt(1,1,1))
local prt6=part(1,modelzorz,0.2,0,BrickColor.new("White"),"Part6",vt(1,1,1))
local prt11=part(1,modelzorz,0,0,Torso.BrickColor,"Part11",vt(1,1,1))
local prt12=part(1,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part12",vt(1,1,1))
local prt13=part(1,modelzorz,0,0,BrickColor.new("Bright red"),"Part13",vt(1,1,1))
local prt14=part(1,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part14",vt(1,1,1))
local prt15=part(1,modelzorz,0.2,0,BrickColor.new("White"),"Part15",vt(1,1,1))
local prt16=part(1,modelzorz,0.2,0,BrickColor.new("White"),"Part16",vt(1,1,1))

local msh1=mesh("CylinderMesh",prt1,"","",vt(0,0,0),vt(0.5,0.5,0.5))
local msh2=mesh("CylinderMesh",prt2,"","",vt(0,0,0),vt(0.49,0.8,0.49))
local msh3=mesh("SpecialMesh",prt3,"FileMesh","http://www.roblox.com/asset/?id=4770583",vt(0,0,0),vt(1,1,1))
local msh4=mesh("SpecialMesh",prt4,"FileMesh","http://www.roblox.com/asset/?id=9756362",vt(0,0,0),vt(1,0.5,0.5))
local msh5=mesh("SpecialMesh",prt5,"Wedge","",vt(0,0,0),vt(0.1,1.4,0.4))
local msh6=mesh("SpecialMesh",prt6,"Wedge","",vt(0,0,0),vt(0.1,1.4,0.4))
local msh11=mesh("CylinderMesh",prt11,"","",vt(0,0,0),vt(0.5,0.5,0.5))
local msh12=mesh("CylinderMesh",prt12,"","",vt(0,0,0),vt(0.49,0.8,0.49))
local msh13=mesh("SpecialMesh",prt13,"FileMesh","http://www.roblox.com/asset/?id=4770583",vt(0,0,0),vt(1,1,1))
local msh14=mesh("SpecialMesh",prt14,"FileMesh","http://www.roblox.com/asset/?id=9756362",vt(0,0,0),vt(1,0.5,0.5))
local msh15=mesh("SpecialMesh",prt15,"Wedge","",vt(0,0,0),vt(0.1,1.4,0.4))
local msh16=mesh("SpecialMesh",prt16,"Wedge","",vt(0,0,0),vt(0.1,1.4,0.4))

local wld1=weld(prt1,prt1,Torso,euler(0,0,-2)*cf(-1,0.8,-0.5))
local wld2=weld(prt2,prt2,prt1,euler(0,0,0)*cf(0,0,0))
local wld3=weld(prt3,prt3,prt2,euler(3.14,0,0)*cf(0,0.5,0))
local wld4=weld(prt4,prt4,prt2,euler(0,0,0)*cf(0,-0.5,0))
local wld5=weld(prt5,prt5,prt4,euler(0,1.57,0)*cf(-0.2,-0.9,0))
local wld6=weld(prt6,prt6,prt4,euler(0,-1.57,0)*cf(0.2,-0.9,0))
local wld11=weld(prt11,prt11,Torso,euler(0,0,2)*cf(1,0.8,-0.5))
local wld12=weld(prt12,prt12,prt11,euler(0,0,0)*cf(0,0,0))
local wld13=weld(prt13,prt13,prt12,euler(3.14,0,0)*cf(0,0.5,0))
local wld14=weld(prt14,prt14,prt12,euler(0,0,0)*cf(0,-0.5,0))
local wld15=weld(prt15,prt15,prt14,euler(0,1.57,0)*cf(-0.2,-0.9,0))
local wld16=weld(prt16,prt16,prt14,euler(0,-1.57,0)*cf(0.2,-0.9,0))

numb=-0.3
numb2=0.5
for i=1,5 do
local prt7=part(1,modelzorz,0,0,BrickColor.new("Really black"),"Part7",vt(1,1,1))
local msh7=mesh("SpecialMesh",prt7,"FileMesh","http://www.roblox.com/asset/?id=9756362",vt(0,0,0),vt(numb2,0.2,0.2))
local wld7=weld(prt7,prt7,prt4,euler(0,0,0)*cf(0,numb,0))
local prt17=part(1,modelzorz,0,0,BrickColor.new("Really black"),"Part17",vt(1,1,1))
local msh17=mesh("SpecialMesh",prt17,"FileMesh","http://www.roblox.com/asset/?id=9756362",vt(0,0,0),vt(numb2,0.2,0.2))
local wld17=weld(prt17,prt17,prt14,euler(0,0,0)*cf(0,numb,0))
numb=numb-0.3
numb2=numb2-0.1
end

local hitbox=part(1,nil,0,1,BrickColor.new("Black"),"Hitbox",vt(1,1,1))
hitbox.Anchored=false

if (script.Parent.className ~= "HopperBin") then 
Tool = Instance.new("HopperBin") 
Tool.Parent = Backpack 
Tool.Name = "Blood Shogai" 
script.Parent = Tool 
end 
Bin = script.Parent 

local Bg = it("BodyGyro") 
Bg.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge 
Bg.P = 20e+003 
Bg.Parent = nil 

so = function(id,par,vol,pit) 
coroutine.resume(coroutine.create(function()
local sou = Instance.new("Sound",par or workspace)
sou.Volume=vol
sou.Pitch=pit or 1
sou.SoundId=id
swait() 
sou:play() 
swait(6) 
sou:Remove() 
end))
end

function hideanim() 
equipped=false
Torso.Neck.C0=necko
RootJoint.C0=RootCF
RW.C0=cf(1.5,0.5,0)*euler(0,0,0)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(0,0,0)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
RH.C0=RHC0
RH.C1=RHC1
LH.C0=LHC0
LH.C1=LHC1
wld1.Part1=Torso
wld1.C0=euler(0,0,-2)*cf(-1,0.8,-0.5)
wld11.Part1=Torso
wld11.C0=euler(0,0,2)*cf(1,0.8,-0.5)
end 

function equipanim() 
equipped=true
--[[Torso.Neck.C0=necko*euler(0,0,1)
RootJoint.C0=RootCF*cf(0,0,-0.5)*euler(0,0,-1)
RW.C0=cf(1.5,0.5,0)*euler(-0.2,0,0.5)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(0,0,-0.2)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
RH.C0=RHC0*cf(0.5,0.2,0)*euler(0,0.5,-0.5)
RH.C1=RHC1
LH.C0=LHC0*cf(0,0.3,0)*euler(0.2,1,0)
LH.C1=LHC1
wld1.Part1=RightArm
wld1.C0=euler(-1.57,0,1.57)*cf(0,1,0)]]
Torso.Neck.C0=necko*euler(0,0,1.4)
Torso.Neck.C1=necko2
RootJoint.C0=RootCF*cf(0,0,-0.5)*euler(0,0,-1.4)
RW.C0=cf(1.5,0.5,0)*euler(-0.6,0,0.5)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(0,0,-0.2)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
RH.C0=RHC0*cf(0.5,0.2,0)*euler(0,0.5,-0.5)
RH.C1=RHC1
LH.C0=LHC0*cf(0,0.3,0)*euler(0.2,1,0)
LH.C1=LHC1
wld1.Part1=RightArm
wld1.C0=euler(-1.57,0,1.57)*cf(0,1,0)
wld11.Part1=LeftArm
wld11.C0=euler(1.57,0,1.57)*cf(0,1,0)
end 

function attackone()
attack=true
so("http://roblox.com/asset/?id=10209640",prt5,1,1.5) 
con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,10,20,0,"Normal",hitbox,0.1) end) 
hitbox.Parent=modelzorz
hitbox.Size=vt(1,2,1)
hitbox.CFrame=prt5.CFrame
local LastPoint=prt5.CFrame*cf(0,prt5.Size.Y/1.5,0.2)
for i=0,1,0.2 do
swait()
Torso.Neck.C0=necko*euler(0,0,1.4-2.7*i)
RootJoint.C0=RootCF*cf(0,0,-0.5)*euler(0,0,-1.4+2.7*i)
RW.C0=cf(1.5-0.5*i,0.5,-0.5*i)*euler(-0.2+0.4*i,0,0.5+1*i)
RW.C1=cf(0,0.5,0)*euler(-2.5*i,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(0,0,-0.2)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
wld11.C0=euler(1.57,-3.14*i,1.57)*cf(0,1,0)
local Point=prt5.CFrame*cf(0,prt5.Size.Y/1.5,0.2)
effect("White",0.5,LastPoint,Point,0.1)
LastPoint=Point
hitbox.CFrame=prt5.CFrame
end
numb=2
for i=0,1,0.2 do
swait()
Torso.Neck.C0=necko*euler(0,0,-1.3-0.2*(i*numb))
RootJoint.C0=RootCF*cf(0,0,-0.5)*euler(0,0,1.3+0.2*(i*numb))
RW.C0=cf(1,0.5,-0.5)*euler(0.2,0,1.5)
RW.C1=cf(0,0.5,0)*euler(-2.5-0.2*(i*numb),0,0)
LW.C0=cf(-1.5,0.5,0)*euler(0,0,-0.2)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
wld11.C0=euler(1.57,3.14,1.57)*cf(0,1,0)
local Point=prt5.CFrame*cf(0,prt5.Size.Y/1.5,0.2)
effect("White",0.5,LastPoint,Point,0.1)
LastPoint=Point
hitbox.CFrame=prt5.CFrame
numb=numb-0.2
end
so("http://roblox.com/asset/?id=10209640",prt5,1,1.4) 
so("http://roblox.com/asset/?id=10209640",prt15,1,1.4) 
local Point2=prt15.CFrame*cf(0,prt15.Size.Y/1.5,0.2)
LastPoint2=Point2
for i=0,1,0.2 do
swait()
Torso.Neck.C0=necko*euler(0,0,-1.5+2.8*i)
RootJoint.C0=RootCF*cf(0,0,-0.5)*euler(0,0,1.5-3.2*i)
RW.C0=cf(1+0.5*i,0.5,-0.5+0.5*i)*euler(0.2-0.4*i,0,1.5)
RW.C1=cf(0,0.5,0)*euler(-2.7+2.7*i,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(0.2*i,0,-0.2-1.37*i)
LW.C1=cf(0,0.5,0)*euler(-1*i,0,0)
--[[local Point=prt5.CFrame*cf(0,prt5.Size.Y/1.5,0.2)
effect("White",0.5,LastPoint,Point,0.1)
LastPoint=Point
local Point2=prt15.CFrame*cf(0,prt15.Size.Y/1.5,0.2)
effect("White",0.5,LastPoint2,Point2,0.1)
LastPoint2=Point2]]
hitbox.CFrame=prt15.CFrame
end
numb=2
for i=0,1,0.2 do
swait()
Torso.Neck.C0=necko*euler(0,0,1.3+0.2*i*numb)
RootJoint.C0=RootCF*cf(0,0,-0.5)*euler(0,0,-1.7-0.2*i*numb)
RW.C0=cf(1.5,0.5,0)*euler(-0.2,0,1.5)
RW.C1=cf(0,0.5,0)*euler(0.5*i*numb,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(0.2,0,-1.57)
LW.C1=cf(0,0.5,0)*euler(-1-0.2*i*numb,0,0)
wld11.C0=euler(-1.57,0,1.57)*cf(0,1,0)
--[[local Point=prt5.CFrame*cf(0,prt5.Size.Y/1.5,0.2)
effect("White",0.5,LastPoint,Point,0.1)
LastPoint=Point
local Point2=prt15.CFrame*cf(0,prt15.Size.Y/1.5,0.2)
effect("White",0.5,LastPoint2,Point2,0.1)
LastPoint2=Point2]]
hitbox.CFrame=prt15.CFrame
numb=numb-0.2
end
con1:disconnect()
hitbox.Parent=nil
attack=false
end

function attacktwo()
attack=true
so("http://roblox.com/asset/?id=10209640",prt5,1,1.1) 
local Point=prt5.CFrame*cf(0,prt5.Size.Y/1.5,0.2)
LastPoint=Point
local Point2=prt15.CFrame*cf(0,prt15.Size.Y/1.5,0.2)
LastPoint2=Point2
con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,5,10,10,"Normal",hitbox,.1) end) 
hitbox.Parent=modelzorz
hitbox.Size=vt(1,2,1)
hitbox.CFrame=prt5.CFrame
for i=0,1,0.1 do
swait()
Torso.Neck.C0=necko*euler(0,0,1.5-2.6*i)
RootJoint.C0=RootCF*cf(0,0,-0.5)*euler(0,0,-1.9+3*i)
RW.C0=cf(1.5,0.5,0)*euler(-0.2+0.4*i,0,1.5-0.4*i)
RW.C1=cf(0,0.5,0)*euler(0.5-0.5*i,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(0.2,0,-1.57)
LW.C1=cf(0,0.5,0)*euler(-1.2+1.8*i,0,0)
wld1.C0=euler(-1.57,-3.14*i,1.57)*cf(0,1,0)
--[[local Point=prt5.CFrame*cf(0,prt5.Size.Y/1.5,0.2)
effect("White",0.5,LastPoint,Point,0.1)
LastPoint=Point
local Point2=prt15.CFrame*cf(0,prt15.Size.Y/1.5,0.2)
effect("White",0.5,LastPoint2,Point2,0.1)
LastPoint2=Point2]]
hitbox.CFrame=prt5.CFrame
end
numb=2
for i=0,1,0.1 do
swait()
Torso.Neck.C0=necko*euler(0,0,-1.1-0.2*i*numb)
RootJoint.C0=RootCF*cf(0,0,-0.5)*euler(0,0,1.1+0.2*i*numb)
RW.C0=cf(1.5,0.5,0)*euler(0.2,0,1.1)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(0.2,0,-1.57)
LW.C1=cf(0,0.5,0)*euler(0.6-0.2*i*numb,0,0)
wld1.C0=euler(-1.57,-3.14,1.57)*cf(0,1,0)
--[[local Point=prt5.CFrame*cf(0,prt5.Size.Y/1.5,0.2)
effect("White",0.5,LastPoint,Point,0.1)
LastPoint=Point
local Point2=prt15.CFrame*cf(0,prt15.Size.Y/1.5,0.2)
effect("White",0.5,LastPoint2,Point2,0.1)
LastPoint2=Point2]]
hitbox.CFrame=prt5.CFrame
numb=numb-0.1
end
so("http://roblox.com/asset/?id=10209640",prt5,1,1.5) 
so("http://roblox.com/asset/?id=10209640",prt15,1,1.6) 
for i=0,1,0.2 do
swait()
Torso.Neck.C0=necko*euler(0,0,-1.3)
RootJoint.C0=RootCF*cf(0,0,-0.5)*euler(0,0,1.3-3.14*i)
RW.C0=cf(1.5,0.5,0)*euler(0.2,0,1.1+0.47*i)
RW.C1=cf(0,0.5,0)*euler(-0.4*i,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(0.2,0,-1.57)
LW.C1=cf(0,0.5,0)*euler(0.4,0,0)
wld1.C0=euler(-1.57,-3.14,1.57)*cf(0,1,0)
--[[local Point=prt5.CFrame*cf(0,prt5.Size.Y/1.5,0.2)
effect("White",0.5,LastPoint,Point,0.1)
LastPoint=Point
local Point2=prt15.CFrame*cf(0,prt15.Size.Y/1.5,0.2)
effect("White",0.5,LastPoint2,Point2,0.1)
LastPoint2=Point2]]
hitbox.CFrame=prt5.CFrame
hitbox.CFrame=prt15.CFrame
end
so("http://roblox.com/asset/?id=10209640",prt5,1,1.6) 
so("http://roblox.com/asset/?id=10209640",prt15,1,1.5) 
for i=0,1,0.2 do
swait()
RootJoint.C0=RootCF*cf(0,0,-0.5)*euler(0,0,1.3-3.14-3.14*i)
--[[local Point=prt5.CFrame*cf(0,prt5.Size.Y/1.5,0.2)
effect("White",0.5,LastPoint,Point,0.1)
LastPoint=Point
local Point2=prt15.CFrame*cf(0,prt15.Size.Y/1.5,0.2)
effect("White",0.5,LastPoint2,Point2,0.1)
LastPoint2=Point2]]
hitbox.CFrame=prt5.CFrame
hitbox.CFrame=prt15.CFrame
end
numb=2
for i=0,1,0.1 do
swait()
Torso.Neck.C0=necko*euler(0,0,-1.3+0.4*i*numb)
RootJoint.C0=RootCF*cf(0,0,-0.5)*euler(0,0,1.3-0.4*i*numb)
RW.C0=cf(1.5,0.5,0)*euler(0.2,0,1.57)
RW.C1=cf(0,0.5,0)*euler(-0.4-0.2*i*numb,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(0.2,0,-1.57)
LW.C1=cf(0,0.5,0)*euler(0.4+0.2*i*numb,0,0)
wld1.C0=euler(-1.57,-3.14,1.57)*cf(0,1,0)
--[[local Point=prt5.CFrame*cf(0,prt5.Size.Y/1.5,0.2)
effect("White",0.5,LastPoint,Point,0.1)
LastPoint=Point
local Point2=prt15.CFrame*cf(0,prt15.Size.Y/1.5,0.2)
effect("White",0.5,LastPoint2,Point2,0.1)
LastPoint2=Point2]]
hitbox.CFrame=prt5.CFrame
hitbox.CFrame=prt15.CFrame
numb=numb-0.1
end
con1:disconnect()
hitbox.Parent=nil
attack=false
end

function attackthree()
attack=true
for i=0,1,0.1 do
swait()
Torso.Neck.C0=necko*euler(0,0,-0.9)
RootJoint.C0=RootCF*cf(0,0,-0.5)*euler(0,0,0.9)
RW.C0=cf(1.5,0.5,0)*euler(0.2-0.6*i,0,1.57)
RW.C1=cf(0,0.5,0)*euler(-0.6,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(0.2-0.6*i,0,-1.57)
LW.C1=cf(0,0.5,0)*euler(0.6,0,0)
end
local Point=prt5.CFrame*cf(0,prt5.Size.Y/1.5,0.2)
LastPoint=Point
local Point2=prt15.CFrame*cf(0,prt15.Size.Y/1.5,0.2)
LastPoint2=Point2
con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,5,10,math.random(5,10),"Knockdown",RootPart,.1) end) 
hitbox.Parent=modelzorz
hitbox.Size=vt(1,2,1)
hitbox.CFrame=prt5.CFrame
for i=1,2 do
so("http://roblox.com/asset/?id=28144425",prt5,.8,1.2) 
so("http://roblox.com/asset/?id=28144425",prt15,.8,1.2) 
for i=0,1,0.1 do
swait()
Torso.Neck.C0=necko*euler(0,0,-0.9)
RootJoint.C0=RootCF*cf(0,0,-0.5)*euler(0,0,0.9-3.14*i)
RW.C0=cf(1.5,0.5,0)*euler(-0.4+0.8*i,0,1.57)
RW.C1=cf(0,0.5,0)*euler(-0.6,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(-0.4+0.8*i,0,-1.57)
LW.C1=cf(0,0.5,0)*euler(0.6,0,0)
local Point=prt5.CFrame*cf(0,prt5.Size.Y/1.5,0.2)
effect("Black",0.2,LastPoint,Point,0.6)
LastPoint=Point
local Point2=prt15.CFrame*cf(0,prt15.Size.Y/1.5,0.2)
effect("Black",0.2,LastPoint2,Point2,0.6)
LastPoint2=Point2
hitbox.CFrame=prt5.CFrame
hitbox.CFrame=prt15.CFrame
--[[MagicBlock(BrickColor.new("Black"),prt5.CFrame*cf(0,2,0),1,1,1,0.1,0.1,0.1,0.1)
MagicBlock(BrickColor.new("Black"),prt15.CFrame*cf(0,2,0),1,1,1,0.1,0.1,0.1,0.1)]]
randnum=math.random()
tehr=math.random(100,200)/10000
StravEffect(BrickColor.new("Black"),RootPart.CFrame*euler(0,math.random(-50,50),0),-math.random(0,3)/2,0,0,randnum,randnum,randnum,tehr)
end
so("http://roblox.com/asset/?id=28144425",prt5,.8,1.2) 
so("http://roblox.com/asset/?id=28144425",prt15,.8,1.2) 
for i=0,1,0.1 do
swait()
Torso.Neck.C0=necko*euler(0,0,-0.9)
RootJoint.C0=RootCF*cf(0,0,-0.5)*euler(0,0,0.9-3.14-3.14*i)
RW.C0=cf(1.5,0.5,0)*euler(0.4-0.8*i,0,1.57)
RW.C1=cf(0,0.5,0)*euler(-0.6,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(0.4-0.8*i,0,-1.57)
LW.C1=cf(0,0.5,0)*euler(0.6,0,0)
local Point=prt5.CFrame*cf(0,prt5.Size.Y/1.5,0.2)
effect("Black",0.2,LastPoint,Point,0.6)
LastPoint=Point
local Point2=prt15.CFrame*cf(0,prt15.Size.Y/1.5,0.2)
effect("Black",0.2,LastPoint2,Point2,0.6)
LastPoint2=Point2
hitbox.CFrame=prt5.CFrame
hitbox.CFrame=prt15.CFrame
randnum=math.random()
tehr=math.random(100,200)/10000
StravEffect(BrickColor.new("Black"),RootPart.CFrame*euler(0,math.random(-50,50),0),-math.random(0,3)/2,0,0,randnum,randnum,randnum,tehr)
end
end
attack=false
end

function heavyattackone()
attack=true
local Point=prt5.CFrame*cf(0,prt5.Size.Y/1.5,0.2)
LastPoint=Point
so("http://roblox.com/asset/?id=10209640",prt5,1,1.5) 
for i=0,1,0.1 do
swait()
Torso.Neck.C0=necko*euler(0,0,1.4+0.15*i)
RootJoint.C0=RootCF*cf(0,0,-0.5)*euler(0,0,-1.4-0.15*i)
RW.C0=cf(1.5,0.5,0)*euler(-0.6-0.1*i,0,0.5+0.1*i)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(0.1*i,0,-0.2)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
wld1.Part1=RightArm
wld1.C0=euler(-1.57,-6.28*i,1.57)*cf(0,1,0)
--[[local Point=prt5.CFrame*cf(0,prt5.Size.Y/1.5,0.2)
effect("White",0.5,LastPoint,Point,0.1)
LastPoint=Point]]
end
so("http://roblox.com/asset/?id=10209640",prt5,1,1.5) 
for i=0,1,0.1 do
swait()
Torso.Neck.C0=necko*euler(0,0,1.55+0.15*i)
RootJoint.C0=RootCF*cf(0,0,-0.5)*euler(0,0,-1.55-0.15*i)
RW.C0=cf(1.5,0.5,0)*euler(-0.7-0.1*i,0,0.6+0.1*i)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(0.1+0.1*i,0,-0.2)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
wld1.C0=euler(-1.57,-6.28*i,1.57)*cf(0,1,0)
--[[local Point=prt5.CFrame*cf(0,prt5.Size.Y/1.5,0.2)
effect("White",0.5,LastPoint,Point,0.1)
LastPoint=Point]]
end
con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,10,20,0,"Knockdown",RootPart,.1) end) 
hitbox.Parent=modelzorz
hitbox.Size=vt(1,2,1)
hitbox.CFrame=prt5.CFrame
so("http://roblox.com/asset/?id=28144425",prt5,1,1) 
for i=0,1,0.1 do
swait()
Torso.Neck.C0=necko*euler(0,0,1.7-3*i)
RootJoint.C0=RootCF*cf(0,0,-0.5)*euler(0,0,-1.7+3*i)
RW.C0=cf(1.5,0.5,0)*euler(-0.8+1.2*i,0,0.7+0.4*i)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(0.2+1.2*i,0,-0.2-1*i)
LW.C1=cf(0,0.5,0)*euler(0,1*i,0)
wld1.C0=euler(-1.57,-3.14*i,1.57)*cf(0,1,0)
wld11.C0=euler(1.57,3.14*i,1.57)*cf(0,1,0)
local Point=prt5.CFrame*cf(0,prt5.Size.Y/1.5,0.2)
effect("Black",0.2,LastPoint,Point,0.6)
LastPoint=Point
MagicBlock(BrickColor.new("Black"),prt5.CFrame*cf(0,2,0),1,1,1,0.1,0.1,0.1,0.1)
hitbox.CFrame=prt5.CFrame
end
numb=2
for i=0,1,0.1 do
swait()
Torso.Neck.C0=necko*euler(0,0,-1.3-0.2*i*numb)
RootJoint.C0=RootCF*cf(0,0,-0.5)*euler(0,0,1.3+0.2*i*numb)
RW.C0=cf(1.5,0.5,0)*euler(0.4,0,1.1)
RW.C1=cf(0,0.5,0)*euler(0.2*i*numb,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(1.4,0,-1.2)
LW.C1=cf(0,0.5,0)*euler(0,1,0)
local Point=prt5.CFrame*cf(0,prt5.Size.Y/1.5,0.2)
effect("Black",0.2,LastPoint,Point,0.6)
LastPoint=Point
hitbox.CFrame=prt5.CFrame
numb=numb-0.1
end
con1:disconnect()
hitbox.Parent=nil
attack=false
end

function heavyattacktwo()
attack=true
local Point=prt5.CFrame*cf(0,prt5.Size.Y/1.5,0.2)
LastPoint=Point
local Point2=prt15.CFrame*cf(0,prt15.Size.Y/1.5,0.2)
LastPoint2=Point2
con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,10,20,1,"Knockdown",RootPart,.1) end) 
hitbox.Parent=modelzorz
hitbox.Size=vt(1,2,1)
hitbox.CFrame=prt5.CFrame
so("http://roblox.com/asset/?id=28144425",prt5,.6,1.1) 
so("http://roblox.com/asset/?id=28144425",prt15,.6,1.1) 
bodvel=it("BodyVelocity")
bodvel.Parent=RootPart
bodvel.maxForce=vt(4e+005,4e+005,4e+005)*1
bodvel.velocity=RootPart.CFrame.lookVector*20
for i=0,1,0.1 do
swait()
Torso.Neck.C0=necko*euler(0,0,-1.5)
RootJoint.C0=RootCF*cf(0,0,-0.5)*euler(0,0,1.5-3.14*i)
RW.C0=cf(1.5,0.5,0)*euler(0.4,0,1.1+0.3*i)
RW.C1=cf(0,0.5,0)*euler(0.2,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(1.4,0,-1.2-0.3*i)
LW.C1=cf(0,0.5,0)*euler(0,1,0)
local Point=prt5.CFrame*cf(0,prt5.Size.Y/1.5,0.2)
effect("Black",0.2,LastPoint,Point,0.6)
LastPoint=Point
local Point2=prt15.CFrame*cf(0,prt15.Size.Y/1.5,0.2)
effect("Black",0.2,LastPoint2,Point2,0.6)
LastPoint2=Point2
hitbox.CFrame=prt5.CFrame
hitbox.CFrame=prt15.CFrame
randnum=math.random()
tehr=math.random(100,200)/10000
StravEffect(BrickColor.new("Black"),RootPart.CFrame*euler(0,math.random(-50,50),0),-math.random(0,3)/2,0,0,randnum,randnum,randnum,tehr)
end
so("http://roblox.com/asset/?id=28144425",prt5,.6,1.1) 
so("http://roblox.com/asset/?id=28144425",prt15,.6,1.1) 
for i=0,1,0.1 do
swait()
Torso.Neck.C0=necko*euler(0,0,-1.5)
RootJoint.C0=RootCF*cf(0,0,-0.5)*euler(0,0,1.5-3.14-3.14*i)
RW.C0=cf(1.5,0.5,0)*euler(0.4,0,1.4)
RW.C1=cf(0,0.5,0)*euler(0.2+0.4*i,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(1.4,0,-1.5)
LW.C1=cf(0,0.5,0)*euler(-0.4*i,1,0)
local Point=prt5.CFrame*cf(0,prt5.Size.Y/1.5,0.2)
effect("Black",0.2,LastPoint,Point,0.6)
LastPoint=Point
local Point2=prt15.CFrame*cf(0,prt15.Size.Y/1.5,0.2)
effect("Black",0.2,LastPoint2,Point2,0.6)
LastPoint2=Point2
hitbox.CFrame=prt5.CFrame
hitbox.CFrame=prt15.CFrame
randnum=math.random()
tehr=math.random(100,200)/10000
StravEffect(BrickColor.new("Black"),RootPart.CFrame*euler(0,math.random(-50,50),0),-math.random(0,3)/2,0,0,randnum,randnum,randnum,tehr)
end
con1:disconnect()
hitbox.Parent=nil
bodvel.Parent=nil
numb=2
for i=0,1,0.1 do
swait()
Torso.Neck.C0=necko*euler(0,0,-1.5+0.3*i*numb)
RootJoint.C0=RootCF*cf(0,0,-0.5)*euler(0,0,1.5-0.3*i*numb)
RW.C0=cf(1.5,0.5,0)*euler(0.4,0,1.4)
RW.C1=cf(0,0.5,0)*euler(0.2+0.4+0.2*i*numb,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(1.4,0,-1.5)
LW.C1=cf(0,0.5,0)*euler(-0.4-0.2*i*numb,1,0)
local Point=prt5.CFrame*cf(0,prt5.Size.Y/1.5,0.2)
effect("Black",0.2,LastPoint,Point,0.3)
LastPoint=Point
local Point2=prt15.CFrame*cf(0,prt15.Size.Y/1.5,0.2)
effect("Black",0.2,LastPoint2,Point2,0.3)
LastPoint2=Point2
end
attack=false
end

function heavyattackthree()
attack=true
Humanoid.WalkSpeed=0
WaveEffect(BrickColor.new("Black"),Torso.CFrame,3,5,3,0.2,-0.02,0.2,0.01)
MagicBlock(BrickColor.new("Black"),Torso.CFrame,4,4,4,0.2,0.2,0.2,0.01)
MagicWaveThing(BrickColor.new("Black"),Torso.CFrame,4,4,4,0.2,0.2,0.2,0.01)
so("http://roblox.com/asset/?id=157487812",Torso,1,0.7) 
so("http://roblox.com/asset/?id=169380495",Torso,1,0.7) 
coroutine.resume(coroutine.create(function()
con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,10,20,30,"Knockdown",Torso,1) end) 
hitbox.Parent=modelzorz
hitbox.Size=vt(6,6,6)
hitbox.CFrame=RootPart.CFrame
for i=0,5 do
swait()
hitbox.Size=hitbox.Size+vt(1,1,1)
hitbox.CFrame=RootPart.CFrame
end
for i=1,30 do
swait()
hitbox.CFrame=RootPart.CFrame
end
con1:disconnect()
hitbox.Parent=nil
end))
local Point=prt5.CFrame*cf(0,prt5.Size.Y/1.5,0.2)
LastPoint=Point
local Point2=prt15.CFrame*cf(0,prt15.Size.Y/1.5,0.2)
LastPoint2=Point2
for i=0,1,0.1 do
swait()
Torso.Neck.C0=necko*euler(0,0,-1.2)
RootJoint.C0=RootCF*cf(0,0,-0.5)*euler(0,0,1.2-6.28*i)
RW.C0=cf(1.5,0.5,0)*euler(0.4,0,1.4+0.1*i)
RW.C1=cf(0,0.5,0)*euler(0.8-0.8*i,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(1.4-1*i,0,-1.5)
LW.C1=cf(0,0.5,0)*euler(-0.6+0.6*i,1-1*i,0)
--[[local Point=prt5.CFrame*cf(0,prt5.Size.Y/1.5,0.2)
effect("White",0.5,LastPoint,Point,0.2)
LastPoint=Point
local Point2=prt15.CFrame*cf(0,prt15.Size.Y/1.5,0.2)
effect("White",0.5,LastPoint2,Point2,0.2)
LastPoint2=Point2]]
end
for i=0,1,0.1 do
swait()
Torso.Neck.C0=necko*euler(0.2*i,0,-1.2+1.2*i)
RootJoint.C0=RootCF*cf(0,0,-0.5)*euler(0,0,1.2-1.2*i)
RW.C0=cf(1.5,0.5,0)*euler(0.4-0.6*i,0,1.5)
RW.C1=cf(0,0.5,0)*euler(0,-0.4*i,0)
LW.C0=cf(-1.5,0.5,0)*euler(0.4-0.6*i,0,-1.5)
LW.C1=cf(0,0.5,0)*euler(0,0.4*i,0)
RH.C0=RHC0*cf(0.5,0.2,0)*euler(0,0.5-0.5*i,-0.5)
RH.C1=RHC1
LH.C0=LHC0*cf(-0.5*i,0.3,0)*euler(0.2,1-1*i,0.5*i)
LH.C1=LHC1*euler(0.5*i,0,0)
--[[local Point=prt5.CFrame*cf(0,prt5.Size.Y/1.5,0.2)
effect("White",0.5,LastPoint,Point,0.2)
LastPoint=Point
local Point2=prt15.CFrame*cf(0,prt15.Size.Y/1.5,0.2)
effect("White",0.5,LastPoint2,Point2,0.2)
LastPoint2=Point2]]
wld1.C0=euler(-1.57,-3.14+3.14*i,1.57)*cf(0,1,0)
end
swait(.5)
Humanoid.WalkSpeed=16
attack=false
end

function ShadowlessThrust()
attack=true
Humanoid.WalkSpeed=0
shadowthrust="Stance"
so("http://roblox.com/asset/?id=147722227",prt5,1,1) 
so("http://roblox.com/asset/?id=28144425",prt5,.6,1.5) 
local Point=prt5.CFrame*cf(0,prt5.Size.Y/1.5,0.2)
LastPoint=Point
bodvel=it("BodyVelocity")
bodvel.Parent=RootPart
bodvel.maxForce=vt(4e+005,4e+005,4e+005)*1
bodvel.velocity=RootPart.CFrame.lookVector*45
con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,5,15,1,"Normal",RootPart,.2) end) 
hitbox.Parent=modelzorz
hitbox.Size=vt(1,2,1)
hitbox.CFrame=prt5.CFrame
for i=0,1,0.2 do
swait()
Torso.Neck.C0=necko*euler(0,0,1.4-2.5*i)
RootJoint.C0=RootCF*cf(0,0,-0.5)*euler(0,0,-1.4+2.5*i)
RW.C0=cf(1.5,0.5,0)*euler(-0.6+1.2*i,0,0.5+1*i)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(-0.2*i,0,-0.2)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
RH.C0=RHC0*cf(0.5,0.2,0)*euler(0,0.5,-0.5)
RH.C1=RHC1*euler(-0.5*i,1*i,0)
LH.C0=LHC0*cf(-0.1*i,0.3,0)*euler(0.2,1,0)
LH.C1=LHC1*euler(0.5*i,1*i,0)
wld1.C0=euler(-1.57,-2.5*i,1.57)*cf(0,1,0)
wld11.C0=euler(1.57,0,1.57)*cf(0,1,0)
local Point=prt5.CFrame*cf(0,prt5.Size.Y/1.5,0.2)
effect("Black",0.2,LastPoint,Point,0.3)
LastPoint=Point
hitbox.CFrame=prt5.CFrame
end
numb=2
for i=0,1,0.2 do
swait()
Torso.Neck.C0=necko*euler(0,0,-1.1-0.4*i*numb)
RootJoint.C0=RootCF*cf(0,0,-0.5)*euler(0,0,1.1+0.4*i*numb)
RW.C0=cf(1.5,0.5,0)*euler(0.6,0,1.5)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(-0.2,0,-0.2)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
wld1.C0=euler(-1.57,-2.5,1.57)*cf(0,1,0)
wld11.C0=euler(1.57,0,1.57)*cf(0,1,0)
local Point=prt5.CFrame*cf(0,prt5.Size.Y/1.5,0.2)
effect("Black",0.2,LastPoint,Point,0.3)
LastPoint=Point
numb=numb-0.2
hitbox.CFrame=prt5.CFrame
end
con1:disconnect()
hitbox.Parent=nil
bodvel.Parent=nil
local Point2=prt15.CFrame*cf(0,prt15.Size.Y/1.5,0.2)
LastPoint2=Point2
for i=0,1,0.2 do
swait()
Torso.Neck.C0=necko*euler(0,0,-1.5+3*i)
RootJoint.C0=RootCF*cf(0,0,-0.5)*euler(0,0,1.5-3*i)
RW.C0=cf(1.5,0.5,0)*euler(0.6-0.8*i,0,1.5)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(-0.2,0,-0.2-1*i)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
RH.C0=RHC0*cf(0.5,0.2,0)*euler(0,0.5,-0.5)
RH.C1=RHC1*euler(-0.5+0.5*i,1-1*i,0)
LH.C0=LHC0*cf(-0.1+0.1*i,0.3,0)*euler(0.2,1,0)
LH.C1=LHC1*euler(0.5-0.5*i,1-1*i,0)
wld1.C0=euler(-1.57,-2.5-0.64*i,1.57)*cf(0,1,0)
wld11.C0=euler(1.57,0,1.57)*cf(0,1,0)
--[[local Point=prt5.CFrame*cf(0,prt5.Size.Y/1.5,0.2)
effect("White",0.5,LastPoint,Point,0.2)
LastPoint=Point
local Point2=prt15.CFrame*cf(0,prt15.Size.Y/1.5,0.2)
effect("White",0.5,LastPoint2,Point2,0.2)
LastPoint2=Point2]]
end
coroutine.resume(coroutine.create(function()
for i=1,50 do
swait()
end
if shadowthrust=="Stance" then
shadowthrust="Spin"
end
end))
while shadowthrust=="Stance" do
swait()
end
if shadowthrust=="Dash" then
bodvel=it("BodyVelocity")
bodvel.Parent=RootPart
bodvel.maxForce=vt(4e+005,4e+005,4e+005)*1
bodvel.velocity=RootPart.CFrame.lookVector*80
con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,20,30,1,"Knockdown",RootPart,1) end) 
hitbox.Parent=modelzorz
hitbox.Size=vt(1,2,1)
hitbox.CFrame=prt5.CFrame
so("http://roblox.com/asset/?id=147722227",prt5,1,0.7) 
so("http://roblox.com/asset/?id=28144425",prt5,.6,0.8) 
for i=0,1,0.2 do
swait()
Torso.Neck.C0=necko*euler(0,0,1.5-2.9*i)
RootJoint.C0=RootCF*cf(0,0,-0.5)*euler(0,0,-1.5+2.9*i)
RW.C0=cf(1.5,0.5,0)*euler(-0.2,0,1.5)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(-0.2+0.2*i,0,-1.2)
LW.C1=cf(0,0.5,0)*euler(0.4*i,0.5*i,0)
RH.C0=RHC0*cf(0.5,0.2,0)*euler(0,0.5,-0.5)
RH.C1=RHC1*euler(-0.5*i,1*i,0)
LH.C0=LHC0*cf(-0.1*i,0.3,0)*euler(0.2,1,0)
LH.C1=LHC1*euler(0.5*i,1*i,0)
wld1.C0=euler(-1.57,-3.14+1.4*i,1.57)*cf(0,1,0)
wld11.C0=euler(1.57,0,1.57)*cf(0,1,0)
local Point=prt5.CFrame*cf(0,prt5.Size.Y/1.5,0.2)
effect("Black",0.2,LastPoint,Point,0.6)
LastPoint=Point
hitbox.CFrame=prt5.CFrame
end
for i=0,1,0.1 do
swait()
local Point=prt5.CFrame*cf(0,prt5.Size.Y/1.5,0.2)
effect("Black",0.2,LastPoint,Point,0.6)
LastPoint=Point
hitbox.CFrame=prt5.CFrame
end
con1:disconnect()
hitbox.Parent=nil
bodvel.Parent=nil
swait(10)
for i=0,1,0.1 do
swait()
Torso.Neck.C0=necko*euler(0,0,-1.4+2.8*i)
RootJoint.C0=RootCF*cf(0,0,-0.5)*euler(0,0,1.4-2.8*i)
RW.C0=cf(1.5,0.5,0)*euler(-0.2-0.4*i,0,1.5-1*i)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(0,0,-1.2+1*i)
LW.C1=cf(0,0.5,0)*euler(0.4-0.4*i,0.5-0.5*i,0)
RH.C0=RHC0*cf(0.5,0.2,0)*euler(0,0.5,-0.5)
RH.C1=RHC1*euler(-0.5+0.5*i,1-1*i,0)
LH.C0=LHC0*cf(-0.1+0.1*i,0.3,0)*euler(0.2,1,0)
LH.C1=LHC1*euler(0.5-0.5*i,1-1*i,0)
wld1.C0=euler(-1.57,-1.74+1.74*i,1.57)*cf(0,1,0)
wld11.C0=euler(1.57,0,1.57)*cf(0,1,0)
end
elseif shadowthrust=="Spin" then
WaveEffect(BrickColor.new("Black"),Torso.CFrame,3,5,3,0.2,-0.02,0.2,0.01)
MagicBlock(BrickColor.new("Black"),Torso.CFrame,4,4,4,0.2,0.2,0.2,0.01)
so("http://roblox.com/asset/?id=157487812",Torso,1,1) 
so("http://roblox.com/asset/?id=169380495",Torso,1,1) 
coroutine.resume(coroutine.create(function()
con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,20,40,30,"Knockdown",Torso,1) end) 
hitbox.Parent=modelzorz
hitbox.Size=vt(8,8,8)
hitbox.CFrame=RootPart.CFrame
for i=0,5 do
swait()
hitbox.Size=hitbox.Size+vt(1,1,1)
hitbox.CFrame=RootPart.CFrame
end
for i=1,30 do
swait()
hitbox.CFrame=RootPart.CFrame
end
con1:disconnect()
hitbox.Parent=nil
end))
local Point=prt5.CFrame*cf(0,prt5.Size.Y/1.5,0.2)
LastPoint=Point
local Point2=prt15.CFrame*cf(0,prt15.Size.Y/1.5,0.2)
LastPoint2=Point2
n=0
for i=0,1,0.05 do
swait()
Torso.Neck.C0=necko*euler(0,0,1.5)
RootJoint.C0=RootCF*cf(0,0,-0.5)*euler(0,0,-1.5-6.28*i)
RW.C0=cf(1.5,0.5,0)*euler(-0.2,0,1.5)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(-0.2,0,-1.2)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
wld1.C0=euler(-1.57,-3.14+3.14*i,1.57)*cf(0,1,0)
wld11.C0=euler(1.57,0,1.57)*cf(0,1,0)
local Point=prt5.CFrame*cf(0,prt5.Size.Y/1.5,0.2)
effect("Black",0.2,LastPoint,Point,0.6)
LastPoint=Point
local Point2=prt15.CFrame*cf(0,prt15.Size.Y/1.5,0.2)
effect("Black",0.2,LastPoint2,Point2,0.6)
LastPoint2=Point2
randnum=math.random(2,3)+math.random()
tehr=math.random(50,100)/10000
if n==3 then
n=0
StravEffect(BrickColor.new("Black"),RootPart.CFrame*euler(0,math.random(-50,50),0),-math.random(1,10),0,0,randnum,randnum,randnum,tehr)
end
n=n+1
end
for i=0,1,0.1 do
swait()
Torso.Neck.C0=necko*euler(0,0,1.5-0.1*i)
RootJoint.C0=RootCF*cf(0,0,-0.5)*euler(0,0,-1.5+0.1*i)
RW.C0=cf(1.5,0.5,0)*euler(-0.2-0.4*i,0,1.5-1*i)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(-0.2+0.2*i,0,-1.2+1*i)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
wld1.C0=euler(-1.57,0,1.57)*cf(0,1,0)
wld11.C0=euler(1.57,0,1.57)*cf(0,1,0)
end
end
swait()
shadowthrust="None"
Humanoid.WalkSpeed=16
attack=false
end

function Assassinate()
attack=true
Humanoid.WalkSpeed=25
Clone()
Cloak()
for i=0,1,0.1 do
swait()
Torso.Neck.C0=necko*euler(0,0,1.4-1.4*i)
RootJoint.C0=RootCF*cf(0,0,-0.5+0.5*i)*euler(0,0,-1.4+1.4*i)
RW.C0=cf(1.5,0.5,0)*euler(-0.6,0,0.5)
LW.C0=cf(-1.5,0.5,0)*euler(-0.6*i,0,-0.2-0.3*i)
RH.C0=RHC0*cf(0.5-0.5*i,0.2-0.2*i,0)*euler(0,0.5-0.5*i,-0.5+0.5*i)
LH.C0=LHC0*cf(0,0.3-0.3*i,0)*euler(0.2-0.2*i,1-1*i,0)
wld1.C0=euler(-1.57,3.14*i,1.57)*cf(0,1,0)
wld11.C0=euler(1.57,0,1.57)*cf(0,1,0)
end
local Point=prt5.CFrame*cf(0,prt5.Size.Y/1.5,0.2)
LastPoint=Point
local Point2=prt15.CFrame*cf(0,prt15.Size.Y/1.5,0.2)
LastPoint2=Point2
for i=0,1,0.0075 do
swait()
end
UnCloak()
Humanoid.WalkSpeed=16
so("http://roblox.com/asset/?id=28144425",prt5,.5,1.2) 
so("http://roblox.com/asset/?id=28144425",prt15,.5,1.2) 
con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,10,20,math.random(10,20),"Knockdown",RootPart,.2) end) 
hitbox.Parent=modelzorz
hitbox.Size=vt(1,2,1)
hitbox.CFrame=prt5.CFrame
for i=0,1,0.1 do
swait()
RW.C0=cf(1.5,0.5,0)*euler(-0.6+1.6*i,0,0.5-0.8*i)
LW.C0=cf(-1.5,0.5,0)*euler(-0.6+1.6*i,0,-0.5+0.8*i)
wld1.C0=euler(-1.57,3.14+1*i,1.57)*cf(0,1,0)
wld11.C0=euler(1.57,1*i,1.57)*cf(0,1,0)
local Point=prt5.CFrame*cf(0,prt5.Size.Y/1.5,0.2)
effect("Black",0.2,LastPoint,Point,0.6)
LastPoint=Point
local Point2=prt15.CFrame*cf(0,prt15.Size.Y/1.5,0.2)
effect("Black",0.2,LastPoint2,Point2,0.6)
LastPoint2=Point2
hitbox.CFrame=prt5.CFrame
hitbox.CFrame=prt15.CFrame
end
numb=2
for i=0,1,0.2 do
swait()
RW.C0=cf(1.5,0.5,0)*euler(1+0.4*i*numb,0,-0.3-0.2*i*numb)
LW.C0=cf(-1.5,0.5,0)*euler(1+0.4*i*numb,0,0.3+0.2*i*numb)
local Point=prt5.CFrame*cf(0,prt5.Size.Y/1.5,0.2)
effect("Black",0.2,LastPoint,Point,0.6)
LastPoint=Point
local Point2=prt15.CFrame*cf(0,prt15.Size.Y/1.5,0.2)
effect("Black",0.2,LastPoint2,Point2,0.6)
LastPoint2=Point2
hitbox.CFrame=prt5.CFrame
hitbox.CFrame=prt15.CFrame
numb=numb-0.2
end
con1:disconnect()
hitbox.Parent=nil
swait()
for i=0,1,0.1 do
swait()
Torso.Neck.C0=necko*euler(0,0,1.4*i)
RootJoint.C0=RootCF*cf(0,0,-0.5*i)*euler(0,0,-1.4*i)
RW.C0=cf(1.5,0.5,0)*euler(1.4-2*i,0,-0.5+1*i)
LW.C0=cf(-1.5,0.5,0)*euler(1.4-1.4*i,0,0.5-0.7*i)
wld1.C0=euler(-1.57,4.14-4.14*i,1.57)*cf(0,1,0)
wld11.C0=euler(1.57,1-1*i,1.57)*cf(0,1,0)
RH.C0=RHC0*cf(0.5*i,0.2*i,0)*euler(0,0.5*i,-0.5*i)
LH.C0=LHC0*cf(0,0.3*i,0)*euler(0.2*i,1*i,0)
end
attack=false
end

function Eclipse()
attack=true
con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,5,15,5,"Normal",RootPart,.2) end) 
hitbox.Parent=modelzorz
hitbox.Size=vt(1,2,1)
hitbox.CFrame=prt5.CFrame
local Point=prt5.CFrame*cf(0,prt5.Size.Y/1.5,0.2)
LastPoint=Point
local Point2=prt15.CFrame*cf(0,prt15.Size.Y/1.5,0.2)
LastPoint2=Point2
so("http://roblox.com/asset/?id=10209640",prt5,1,1.2) 
so("http://roblox.com/asset/?id=10209640",prt15,1,1.2) 
for i=0,1,0.1 do
swait()
Torso.Neck.C0=necko*euler(0,0,1.4-1.4*i)
Torso.Neck.C1=necko2
RootJoint.C0=RootCF*cf(0,0,-0.5+0.7*i)*euler(0,1.57*i,-1.4+1.4*i)
RW.C0=cf(1.5,0.5,0)*euler(-0.6+0.4*i,0,0.5+1.07*i)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(-0.2*i,0,-0.2-1.37*i)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
RH.C0=RHC0*cf(0.5-0.5*i,0.2-0.2*i,0)*euler(-0.5*i,0.5-0.5*i,-0.5+0.5*i)
LH.C0=LHC0*cf(0,0.3-0.3*i,0)*euler(0.2-0.7*i,1-1*i,0)
local Point=prt5.CFrame*cf(0,prt5.Size.Y/1.5,0.2)
effect("White",0.5,LastPoint,Point,0.2)
LastPoint=Point
local Point2=prt15.CFrame*cf(0,prt15.Size.Y/1.5,0.2)
effect("White",0.5,LastPoint2,Point2,0.2)
LastPoint2=Point2
hitbox.CFrame=prt5.CFrame
hitbox.CFrame=prt15.CFrame
end
so("http://roblox.com/asset/?id=10209640",prt5,1,1.3) 
so("http://roblox.com/asset/?id=10209640",prt15,1,1.3) 
for i=0,1,0.1 do
swait()
RootJoint.C0=RootCF*cf(0,0,0.2+1*i)*euler(3.14*i,1.57,0)
local Point=prt5.CFrame*cf(0,prt5.Size.Y/1.5,0.2)
effect("White",0.5,LastPoint,Point,0.2)
LastPoint=Point
local Point2=prt15.CFrame*cf(0,prt15.Size.Y/1.5,0.2)
effect("White",0.5,LastPoint2,Point2,0.2)
LastPoint2=Point2
hitbox.CFrame=prt5.CFrame
hitbox.CFrame=prt15.CFrame
end
so("http://roblox.com/asset/?id=10209640",prt5,1,1.4) 
so("http://roblox.com/asset/?id=10209640",prt15,1,1.4) 
for i=0,1,0.1 do
swait()
RootJoint.C0=RootCF*cf(0,0,1.2+1*i)*euler(3.14+3.14*i,1.57,0)
local Point=prt5.CFrame*cf(0,prt5.Size.Y/1.5,0.2)
effect("White",0.5,LastPoint,Point,0.2)
LastPoint=Point
local Point2=prt15.CFrame*cf(0,prt15.Size.Y/1.5,0.2)
effect("White",0.5,LastPoint2,Point2,0.2)
LastPoint2=Point2
hitbox.CFrame=prt5.CFrame
hitbox.CFrame=prt15.CFrame
end
so("http://roblox.com/asset/?id=10209640",prt5,1,1.3) 
so("http://roblox.com/asset/?id=10209640",prt15,1,1.3) 
for i=0,1,0.1 do
swait()
RootJoint.C0=RootCF*cf(0,0,2.2-1*i)*euler(3.14*i,1.57,0)
local Point=prt5.CFrame*cf(0,prt5.Size.Y/1.5,0.2)
effect("White",0.5,LastPoint,Point,0.2)
LastPoint=Point
local Point2=prt15.CFrame*cf(0,prt15.Size.Y/1.5,0.2)
effect("White",0.5,LastPoint2,Point2,0.2)
LastPoint2=Point2
hitbox.CFrame=prt5.CFrame
hitbox.CFrame=prt15.CFrame
end
so("http://roblox.com/asset/?id=10209640",prt5,1,1.2) 
so("http://roblox.com/asset/?id=10209640",prt15,1,1.2) 
for i=0,1,0.1 do
swait()
RootJoint.C0=RootCF*cf(0,0,1.2-1*i)*euler(3.14+3.14*i,1.57,0)
local Point=prt5.CFrame*cf(0,prt5.Size.Y/1.5,0.2)
effect("White",0.5,LastPoint,Point,0.2)
LastPoint=Point
local Point2=prt15.CFrame*cf(0,prt15.Size.Y/1.5,0.2)
effect("White",0.5,LastPoint2,Point2,0.2)
LastPoint2=Point2
hitbox.CFrame=prt5.CFrame
hitbox.CFrame=prt15.CFrame
end
Humanoid.WalkSpeed=0
con1:disconnect()
hitbox.Parent=nil
so("http://roblox.com/asset/?id=10209640",prt5,1,1.1) 
so("http://roblox.com/asset/?id=10209640",prt15,1,1.1) 
for i=0,1,0.1 do
swait()
Torso.Neck.C0=necko*euler(0,-0.2*i,-1.57*i)
RootJoint.C0=RootCF*cf(0,0,0.2-1.2*i)*euler(0.5*i,1.57-1.57*i,1.57*i)
RW.C0=cf(1.5,0.5,0)*euler(-0.2-1.37*i,0,1.57)
LW.C0=cf(-1.5,0.5,0)*euler(-0.2,0,-1.57)
RH.C0=RHC0*cf(0.5*i,0.2*i,0)*euler(-0.5+0.5*i,0.5*i,-0.5*i)
LH.C0=LHC0*cf(0,0.3*i,0)*euler(-0.5+0.5*i,1*i,0)
wld1.C0=euler(-1.57,-2.7*i,1.57)*cf(0,1,0)
local Point=prt5.CFrame*cf(0,prt5.Size.Y/1.5,0.2)
effect("White",0.5,LastPoint,Point,0.2)
LastPoint=Point
local Point2=prt15.CFrame*cf(0,prt15.Size.Y/1.5,0.2)
effect("White",0.5,LastPoint2,Point2,0.2)
LastPoint2=Point2
end
so("http://roblox.com/asset/?id=161006182",prt5,1,0.5) 
MagicBlock(BrickColor.new("Black"),RootPart.CFrame*cf(0,-2,-3),4,4,4,0.2,0.2,0.2,0.01)
MagicWaveThing(BrickColor.new("Black"),RootPart.CFrame*cf(0,-2,-3),4,4,4,0.2,0.2,0.2,0.01)
coroutine.resume(coroutine.create(function(CeeEf)
con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,20,30,30,"Knockdown",Torso,1) end) 
hitbox.Parent=modelzorz
hitbox.Size=vt(2,2,2)
hitbox.CFrame=CeeEf
for i=0,5 do
swait()
hitbox.Size=hitbox.Size+vt(1,1,1)
hitbox.CFrame=CeeEf
end
for i=1,10 do
swait()
hitbox.CFrame=CeeEf
end
con1:disconnect()
hitbox.Parent=nil
end),RootPart.CFrame*cf(0,-2,-3))
swait(20)
for i=0,1,0.1 do
swait()
Torso.Neck.C0=necko*euler(0,-0.2+0.2*i,-1.57+2.97*i)
RootJoint.C0=RootCF*cf(0,0,-1+0.5*i)*euler(0.5-0.5*i,0,1.57-2.97*i)
RW.C0=cf(1.5,0.5,0)*euler(-1.57+0.97*i,0,1.57-1.07*i)
LW.C0=cf(-1.5,0.5,0)*euler(-0.2+0.2*i,0,-1.57+1.37*i)
wld1.C0=euler(-1.57,-2.7+2.7*i,1.57)*cf(0,1,0)
end
Humanoid.WalkSpeed=16
attack=false
end

function DanceofSwords()
attack=true
local Point=prt5.CFrame*cf(0,prt5.Size.Y/1.5,0.2)
LastPoint=Point
local Point2=prt15.CFrame*cf(0,prt15.Size.Y/1.5,0.2)
LastPoint2=Point2
so("http://roblox.com/asset/?id=10209640",prt5,1,1) 
so("http://roblox.com/asset/?id=10209640",prt15,1,1) 
for i=0,1,0.1 do
swait()
Torso.Neck.C0=necko*euler(0,0,1.4-2.7*i)
RootJoint.C0=RootCF*cf(0,0,-0.5)*euler(0,0,-1.4+2.7*i)
RW.C0=cf(1.5,0.5,0)*euler(-0.6+0.8*i,0,0.5+1.07*i)
RW.C1=cf(0,0.5,0)*euler(-0.4*i,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(0.2*i,0,-0.2-1.37*i)
LW.C1=cf(0,0.5,0)*euler(0.4*i,0,0)
local Point=prt5.CFrame*cf(0,prt5.Size.Y/1.5,0.2)
effect("White",0.5,LastPoint,Point,0.2)
LastPoint=Point
local Point2=prt15.CFrame*cf(0,prt15.Size.Y/1.5,0.2)
effect("White",0.5,LastPoint2,Point2,0.2)
LastPoint2=Point2
end
con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,10,15,0,"Knockdown",Torso,.5) end) 
hitbox.Parent=modelzorz
hitbox.Size=vt(6,6,6)
hitbox.CFrame=RootPart.CFrame
for i=1,6 do
so("http://roblox.com/asset/?id=10209640",prt5,1,1.5) 
so("http://roblox.com/asset/?id=10209640",prt15,1,1.5) 
for i=0,1,0.1 do
swait()
RootJoint.C0=RootCF*cf(0,0,-0.5)*euler(0,0,1.3+3.14*i)
wld1.C0=euler(-1.57,-6.28*i,1.57)*cf(0,1,0)
wld11.C0=euler(1.57,6.28*i,1.57)*cf(0,1,0)
--[[local Point=prt5.CFrame*cf(0,prt5.Size.Y/1.5,0.2)
effect("White",0.5,LastPoint,Point,0.2)
LastPoint=Point
local Point2=prt15.CFrame*cf(0,prt15.Size.Y/1.5,0.2)
effect("White",0.5,LastPoint2,Point2,0.2)
LastPoint2=Point2]]
hitbox.CFrame=RootPart.CFrame
if i==0.2 or i==0.4 or i==0.6 or i==0.8 then
Magicsword(BrickColor.new("Black"),RootPart.CFrame,RootPart,1,2,1,0,math.random(-300,300)/100,-math.random(300,600)/100,0.02)
end
end
so("http://roblox.com/asset/?id=10209640",prt5,1,1.5) 
so("http://roblox.com/asset/?id=10209640",prt15,1,1.5) 
for i=0,1,0.1 do
swait()
RootJoint.C0=RootCF*cf(0,0,-0.5)*euler(0,0,1.3+3.14+3.14*i)
wld1.C0=euler(-1.57,-6.28*i,1.57)*cf(0,1,0)
wld11.C0=euler(1.57,6.28*i,1.57)*cf(0,1,0)
--[[local Point=prt5.CFrame*cf(0,prt5.Size.Y/1.5,0.2)
effect("White",0.5,LastPoint,Point,0.2)
LastPoint=Point
local Point2=prt15.CFrame*cf(0,prt15.Size.Y/1.5,0.2)
effect("White",0.5,LastPoint2,Point2,0.2)
LastPoint2=Point2]]
hitbox.CFrame=RootPart.CFrame
if i==0.2 or i==0.4 or i==0.6 or i==0.8 then
Magicsword(BrickColor.new("Black"),RootPart.CFrame,RootPart,1,2,1,0,math.random(-300,300)/100,-math.random(300,600)/100,0.02)
end
end
end
con1:disconnect()
hitbox.Parent=nil
for i=0,1,0.1 do
swait()
Torso.Neck.C0=necko*euler(0,0,-1.3+2.7*i)
RootJoint.C0=RootCF*cf(0,0,-0.5)*euler(0,0,1.3-2.7*i)
RW.C0=cf(1.5,0.5,0)*euler(0.2-0.8*i,0,1.57-1.07*i)
RW.C1=cf(0,0.5,0)*euler(-0.4+0.4*i,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(0.2-0.2*i,0,-1.57+1.37*i)
LW.C1=cf(0,0.5,0)*euler(0.4-0.4*i,0,0)
end
attack=false
end

function Clone() 
so("http://roblox.com/asset/?id=2767090",Torso,1,1) 
	for _,v in pairs(Torso.Parent:children()) do
		if v.className=="Part" and v.Name~="HumanoidRootPart" then
			n=v:clone()
			n:BreakJoints()
			n.archivable=true
			n.Anchored=true
			n.CanCollide=false
			n.Name="TRAILER"
			n.BrickColor=BrickColor.new("Really black")
			n.Parent=effectz
			n.CFrame=v.CFrame
			coroutine.resume(coroutine.create(function(ne) for i=1, 80 do ne:BreakJoints() ne.Transparency=i/80 swait() end ne.Parent=nil end),n)
		elseif v.className=="Hat" then
			n=v.Handle:clone()
			n:BreakJoints()
			n.archivable=true
			n.Anchored=true
			n.CanCollide=false
			n.Name="TRAILER"
			n.BrickColor=BrickColor.new("Really black")
			n.Parent=effectz
			n.CFrame=v.Handle.CFrame
			coroutine.resume(coroutine.create(function(ne) for i=1, 80 do ne:BreakJoints() ne.Transparency=i/80 swait() end ne.Parent=nil end),n)
		end
	end
	for _,v in pairs(modelzorz:children()) do
		if v.className=="Part" then
			n=v:clone()
			n:BreakJoints()
			n.archivable=true
			n.Anchored=true
			n.CanCollide=false
			n.Name="TRAILER"
			n.BrickColor=BrickColor.new("Really black")
			n.Parent=effectz
			n.CFrame=v.CFrame
			coroutine.resume(coroutine.create(function(ne) for i=1, 80 do ne:BreakJoints() ne.Transparency=i/80 swait() end ne.Parent=nil end),n)
		end
	end
end 

function Cloak()
Face.Parent=nil
cloaked=true
	for _,v in pairs(Torso.Parent:children()) do
		if v.className=="Part" and v.Name~="HumanoidRootPart" then
		coroutine.resume(coroutine.create(function() 
		for i=0,1,0.1 do
		swait()
		v.Transparency=v.Transparency+0.1
		end
		v.Transparency=1
		end))
		end
		if v.className=="Hat" then
		hatp=v.Handle
		coroutine.resume(coroutine.create(function(derp) 
		for i=0,1,0.1 do
		swait()
		derp.Transparency=derp.Transparency+0.1
		end
		derp.Transparency=1
		end),hatp)
		end
	end
	for _,v in pairs(modelzorz:children()) do
		if v.className=="Part" then
		coroutine.resume(coroutine.create(function() 
		for i=0,1,0.1 do
		swait()
		v.Transparency=v.Transparency+0.1
		end
		v.Transparency=1
		end))
		end
	end
end

function UnCloak()
so("http://roblox.com/asset/?id=2767090",Torso,1,1.1) 
Face.Parent=Head 
cloaked=false
	for _,v in pairs(Torso.Parent:children()) do
		if v.className=="Part" and v.Name~="HumanoidRootPart" then
		coroutine.resume(coroutine.create(function() 
		for i=0,1,0.1 do
		swait()
		v.Transparency=v.Transparency-0.1
		end
		v.Transparency=0
		end))
		end
		if v.className=="Hat" then
		hatp=v.Handle
		coroutine.resume(coroutine.create(function(derp) 
		for i=0,1,0.1 do
		swait()
		derp.Transparency=derp.Transparency-0.1
		end
		derp.Transparency=0
		end),hatp)
		end
	end
	for _,v in pairs(modelzorz:children()) do
		if v.className=="Part" and v.Name~="Hitbox" then
		coroutine.resume(coroutine.create(function() 
		for i=0,1,0.1 do
		swait()
		v.Transparency=v.Transparency-0.1
		end
		v.Transparency=0
		end))
		v.Transparency=0
		end
	end
end

function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 

local Point=prt5.CFrame*CFrame.new(0,prt5.Size.Y/7,0)
LastPoint=Point
function effect(Color,Ref,LP,P1,sizee)
local effectsmsh = Instance.new("BlockMesh")
effectsmsh.Scale = Vector3.new(0.2,1,0.2)
effectsmsh.Name = "Mesh"
local effectsg = Instance.new("Part")
effectsg.formFactor = 3
effectsg.CanCollide = false
effectsg.Name = "Eff"
effectsg.Locked = true
effectsg.Anchored = true
effectsg.Size = Vector3.new(0.5,1,0.5)
effectsg.Parent = effectz
effectsmsh.Parent = effectsg
effectsg.BrickColor = BrickColor.new(Color)
effectsg.Reflectance = Ref
local point1 = P1
local mg = (LP.p - point1.p).magnitude
effectsg.Size = Vector3.new(0.5,mg,0.5)
effectsg.CFrame = CFrame.new((LP.p+point1.p)/2,point1.p) * CFrame.Angles(math.rad(90),0,0)
effectsmsh.Scale = Vector3.new(sizee,1,sizee)
game:GetService("Debris"):AddItem(effectsg,2)
game:GetService("Debris"):AddItem(effectsmsh,2)
coroutine.resume(coroutine.create(function(Part,Mesh,MeshSiz)
for i = 0 , 1 , 0.1 do
swait()
Part.Transparency = 1*i
Mesh.Scale = Vector3.new(MeshSiz-MeshSiz*i,1,MeshSiz-MeshSiz*i)
end
swait()
Part.Parent = nil
end),effectsg,effectsmsh,sizee)
end

function SkullEffect(brickcolor,cframe,x1,y1,z1,delay)
local prt=part(3,effectz,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=4770583",vt(0,0,0),vt(x1,y1,z1))
--http://www.roblox.com/asset/?id=4770560
game:GetService("Debris"):AddItem(prt,2)
CF=prt.CFrame
coroutine.resume(coroutine.create(function(Part,Mesh,TehCF) 
for i=0,1,0.2 do
swait()
Part.CFrame=CF*cf(0,0,-0.4)
end
for i=0,1,delay do
swait()
--Part.CFrame=CF*cf((math.random(-1,0)+math.random())/5,(math.random(-1,0)+math.random())/5,(math.random(-1,0)+math.random())/5)
Mesh.Scale=Mesh.Scale
end
for i=0,1,0.1 do
swait()
Part.Transparency=i
end
Part.Parent=nil
end),prt,msh,CF)
end

function MagicBlock(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,effectz,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
swait()
Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end

function MagicBlock2(brickcolor,cframe,Parent,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,effectz,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=false
prt.CFrame=cframe
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
local wld=weld(prt,prt,Parent,euler(0,0,0)*cf(0,0,0))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh,Weld) 
for i=0,1,delay do
swait()
Weld.C0=euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
--Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh,wld)
end

function MagicBlock3(brickcolor,cframe,Parent,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,effectz,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=false
prt.CFrame=cframe
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
local wld=weld(prt,prt,Parent,euler(0,0,0)*cf(0,0,0))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh,Weld) 
for i=0,1,delay do
swait()
Weld.C0=euler(i*20,0,0)
--Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh,wld)
end

function MagicCircle2(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,effectz,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("CylinderMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
swait()
Part.CFrame=Part.CFrame
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
local prt2=part(3,effectz,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt2.Anchored=true
prt2.CFrame=cframe*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
local msh2=mesh("SpecialMesh",prt2,"Sphere","",vt(0,0,0),vt(0.5,0.5,0.5))
game:GetService("Debris"):AddItem(prt2,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,0.1 do
swait()
Part.CFrame=Part.CFrame*cf(0,0.5,0)
end
Part.Parent=nil
end),prt2,msh2)
end
for i=0,1,delay*2 do
swait()
Part.CFrame=Part.CFrame
Mesh.Scale=vt((x1+x3)-(x1+x3)*i,(y1+y3)-(y1+y3)*i,(z1+z3)-(z1+z3)*i)
end
Part.Parent=nil
end),prt,msh)
end

function MagicCircle(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,effectz,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
swait()
Part.CFrame=Part.CFrame
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end

function MagicRing(brickcolor,cframe,x1,y1,z1,x2,y2,z2,x3,y3,z3)
local prt=part(3,effectz,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe*euler(x2,y2,z2)
local msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=3270017",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,0.03 do
swait()
Part.CFrame=Part.CFrame
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end

function BreakEffect(brickcolor,cframe,x1,y1,z1)
local prt=part(3,effectz,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
local msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,CF,Numbb,randnumb) 
CF=Part.CFrame
Numbb=0
randnumb=math.random()-math.random()
rand1=math.random()/5
for i=0,1,rand1 do
swait()
CF=CF*cf(0,1,0)
--Part.CFrame=Part.CFrame*euler(0.5,0,0)*cf(0,1,0)
Part.CFrame=CF*euler(Numbb,0,0)
Part.Transparency=i
Numbb=Numbb+randnumb
end
Part.Parent=nil
end),prt,CF,Numbb,randnumb)
end

function MagicWaveThing(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,effectz,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=1051557",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
swait()
Part.CFrame=Part.CFrame*euler(0,0.7,0)
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end

function WaveEffect(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,effectz,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=20329976",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
swait()
Part.CFrame=Part.CFrame*cf(0,y3,0)
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end

function StravEffect(brickcolor,cframe,x,y,z,x1,y1,z1,delay)
local prt=part(3,effectz,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe*cf(x,y,z)
msh=mesh("SpecialMesh",prt,"FileMesh","rbxassetid://168892363",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh,ex,why,zee) 
local num=math.random()
local num2=math.random(-3,2)+math.random()
local numm=0
for i=0,1,delay*2 do
swait()
Part.CFrame=cframe*euler(0,-numm*num*10,0)*cf(ex,why,zee)*cf(-i*10,num2,0)
Part.Transparency=i
numm=numm+0.01
end
Part.Parent=nil
Mesh.Parent=nil
end),prt,msh,x,y,z)
end

function Magicsword(brickcolor,cframe,Parent,x1,y1,z1,x2,y2,z2,delay)
local prt=part(3,effectz,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=false
prt.CFrame=cframe
so("http://roblox.com/asset/?id=10209640",prt,.7,2) 
msh=mesh("SpecialMesh",prt,"FileMesh","rbxasset://fonts/sword.mesh",vt(0,0,0),vt(x1,y1,z1))
local wld=weld(prt,prt,Parent,euler(0,math.random(-50,50),0)*cf(x2,y2,z2))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh,Weld) 
local dur=math.random(-50,50)/200
local tehcf=euler(dur,0,0)*cf(x2,y2,z2)*euler(0,math.random(-50,50),0)
for i=0,1,delay*2 do
swait()
Weld.C0=tehcf*euler(0,-i*i*15,0)
Part.Transparency=i
end
Part.Parent=nil
end),prt,msh,wld)
end

so = function(id,par,vol,pit) 
coroutine.resume(coroutine.create(function()
local sou = Instance.new("Sound",par or workspace)
sou.Volume=vol
sou.Pitch=pit or 1
sou.SoundId=id
swait() 
sou:play() 
game:GetService("Debris"):AddItem(sou,6)
end))
end

function findNearestTorso(pos)
	local list = game:service("Workspace"):children()
	local torso = nil
	local dist = 50
	local temp = nil
	local human = nil
	local temp2 = nil
	for x = 1, #list do
		temp2 = list[x]
		if (temp2.className == "Model") and (temp2 ~= Character) and (temp2.Name ~= "Fenrier") then
			temp = temp2:findFirstChild("Torso")
			human = temp2:findFirstChild("Humanoid")
			if (temp ~= nil) and (human ~= nil) and (human.Health > 0) then
				if (temp.Position - pos).magnitude < dist then
					torso = temp
					dist = (temp.Position - pos).magnitude
				end
			end
		end
	end
	return torso
end

Damagefunc=function(hit,minim,maxim,knockback,Type,Property,Delay,HitSound,HitPitch)
	if hit.Parent==nil then
		return
	end
	CPlayer=Bin 
	h=hit.Parent:FindFirstChild("Humanoid")
	for _,v in pairs(hit.Parent:children()) do
	if v:IsA("Humanoid") then
	h=v
	end
	end
	if h~=nil and hit.Parent.Name~=Character.Name and hit.Parent:FindFirstChild("Torso")~=nil then
	if hit.Parent:findFirstChild("DebounceHit")~=nil then if hit.Parent.DebounceHit.Value==true then return end end
	--[[		if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
			return
		end]]
--			hs(hit,1.2) 
			c=Instance.new("ObjectValue")
			c.Name="creator"
			c.Value=game:service("Players").LocalPlayer
			c.Parent=h
			game:GetService("Debris"):AddItem(c,.5)
		local maxim = maxim - 3
		if maxim < 1 then maxim = 1 end
		local minim = maxim - 2
		if minim < 0 then
			minim = 0
		end
		if HitSound~=nil and HitPitch~=nil then
		so(HitSound,hit,1,HitPitch) 
		end
		Damage=math.random(minim,maxim)
--		h:TakeDamage(Damage)
		blocked=false
		block=hit.Parent:findFirstChild("Block")
		if block~=nil then
		if block.className=="IntValue" then
		if block.Value>0 then
		blocked=true
		block.Value=block.Value-1
		end
		end
		end
		if blocked==false then
--		h:TakeDamage(Damage)


						HitHealth=h.Health
						h.Health=h.Health-Damage		
		if HitHealth~=h.Health and HitHealth~=0 and h.Health<=0 and h.Parent.Name~="Hologram" then
			print("gained spree")
			Player:FindFirstChild("leaderstats").Spree.Value=Player.leaderstats.Spree.Value+1
		end
		showDamage(hit.Parent,Damage,.5,BrickColor:Red())
		else
		h.Health=h.Health-Damage/2 
		showDamage(hit.Parent,Damage/2,.5,BrickColor.new("Bright blue"))
		end
		if Type=="Knockdown" then
		hum=hit.Parent.Humanoid
		local angle=(hit.Position-(Property.Position+Vector3.new(0,0,0))).unit
--hit.CFrame=CFrame.new(hit.Position,Vector3.new(angle.x,hit.Position.y,angle.z))*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
local bodvol=Instance.new("BodyVelocity")
bodvol.velocity=angle*knockback
bodvol.P=5000
bodvol.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
bodvol.Parent=hit
game:GetService("Debris"):AddItem(bodvol,.5)
		elseif Type=="Normal" then
		vp=Instance.new("BodyVelocity")
		vp.P=500
		vp.maxForce=Vector3.new(math.huge,0,math.huge)
--		vp.velocity=Character.Torso.CFrame.lookVector*Knockback
		vp.velocity=Property.CFrame.lookVector*knockback+Property.Velocity/1.05
		if knockback>0 then
			vp.Parent=hit.Parent.Torso
		end
		game:GetService("Debris"):AddItem(vp,.5)
		elseif Type=="Up" then
		local bodyVelocity=Instance.new("BodyVelocity")
		bodyVelocity.velocity=vt(0,20,0)
		bodyVelocity.P=5000
		bodyVelocity.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
		bodyVelocity.Parent=hit
		game:GetService("Debris"):AddItem(bodyVelocity,.5)
		elseif Type=="Snare" then
		bp=Instance.new("BodyPosition")
		bp.P=2000
		bp.D=100
		bp.maxForce=Vector3.new(math.huge,math.huge,math.huge)
		bp.position=hit.Parent.Torso.Position
		bp.Parent=hit.Parent.Torso
		game:GetService("Debris"):AddItem(bp,1)
		elseif Type=="Freeze" then
		BodPos=Instance.new("BodyPosition")
		BodPos.P=50000
		BodPos.D=1000
		BodPos.maxForce=Vector3.new(math.huge,math.huge,math.huge)
		BodPos.position=hit.Parent.Torso.Position
		BodPos.Parent=hit.Parent.Torso
		BodGy = it("BodyGyro") 
		BodGy.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge 
		BodGy.P = 20e+003 
		BodGy.Parent=hit.Parent.Torso
		BodGy.cframe = hit.Parent.Torso.CFrame
		hit.Parent.Torso.Anchored=true
		coroutine.resume(coroutine.create(function(Part) 
		swait(1.5)
		Part.Anchored=false
		end),hit.Parent.Torso)
		game:GetService("Debris"):AddItem(BodPos,3)
		game:GetService("Debris"):AddItem(BodGy,3)
		end
			debounce=Instance.new("BoolValue")
			debounce.Name="DebounceHit"
			debounce.Parent=hit.Parent
			debounce.Value=true
			game:GetService("Debris"):AddItem(debounce,Delay)
			c=Instance.new("ObjectValue")
			c.Name="creator"
			c.Value=Player
			c.Parent=h
			game:GetService("Debris"):AddItem(c,.5)
		CRIT=false
		hitDeb=true
		AttackPos=6
	end
end

showDamage=function(Char,Dealt,du,Color)
	m=Instance.new("Model")
	m.Name=tostring(Dealt)
	h=Instance.new("Humanoid")
	h.Health=0
	h.MaxHealth=0
	h.Parent=m
	c=Instance.new("Part")
	c.Transparency=0
	c.BrickColor=Color
	c.Name="Head"
	c.TopSurface=0
	c.BottomSurface=0
	c.formFactor="Plate"
	c.Size=Vector3.new(1,.4,1)
	ms=Instance.new("CylinderMesh")
	ms.Scale=Vector3.new(.8,.8,.8)
	if CRIT==true then
		ms.Scale=Vector3.new(1,1.25,1)
	end
	ms.Parent=c
	c.Reflectance=0
	Instance.new("BodyGyro").Parent=c
	c.Parent=m
	c.CFrame=CFrame.new(Char["Head"].CFrame.p+Vector3.new(0,1.5,0))
	f=Instance.new("BodyPosition")
	f.P=2000
	f.D=100
	f.maxForce=Vector3.new(math.huge,math.huge,math.huge)
	f.position=c.Position+Vector3.new(0,3,0)
	f.Parent=c
	game:GetService("Debris"):AddItem(m,.5+du)
	c.CanCollide=false
	m.Parent=workspace
	c.CanCollide=false
end

combo=0
function ob1d(mouse) 
if attack==true then return end
hold=true
if combo==0 then
if holdz==false then
combo=1
attackone()
else
combo=4
heavyattackone()
end
elseif combo==1 then
combo=2
attacktwo()
elseif combo==2 then
combo=3
attackthree()
elseif combo==4 then
combo=5
heavyattacktwo()
elseif combo==5 then
combo=6
heavyattackthree()
else
combo=0
end
coroutine.resume(coroutine.create(function() 
for i=1,30 do
if attack==false then
swait()
end
end
if attack==false then
combo=0
equipanim() 
end
end))
end 

function ob1u(mouse) 
hold = false 
end 

buttonhold = false 

eul=0
holdz=false
function key(key) 
if key=="x" and shadowthrust=="Stance" then
shadowthrust="Dash"
end
if attack==true then return end
if key=="z" then
holdz=true
end
if key=="x" and xenabled==true then
xenabled=false
coroutine.resume(coroutine.create(function()
for i=1,0,-0.003 do
swait()
fenframe1a.Size=UDim2.new(0.05*i,0,0.1,0)
end
xenabled=true
fenframe1a.Size=UDim2.new(0,0,0.1,0)
end))
ShadowlessThrust()
end
if key=="c" and cenabled==true then
cenabled=false
coroutine.resume(coroutine.create(function()
for i=1,0,-0.005 do
swait()
fenframe2a.Size=UDim2.new(0.05*i,0,0.1,0)
end
cenabled=true
fenframe2a.Size=UDim2.new(0,0,0.1,0)
end))
Assassinate()
end
if key=="v" and venabled==true then
venabled=false
coroutine.resume(coroutine.create(function()
for i=1,0,-0.003 do
swait()
fenframe3a.Size=UDim2.new(0.05*i,0,0.1,0)
end
venabled=true
fenframe3a.Size=UDim2.new(0,0,0.1,0)
end))
Eclipse()
end
if key=="b" and benabled==true and cloaked==false then
benabled=false
coroutine.resume(coroutine.create(function()
for i=1,0,-0.002 do
swait()
fenframe4a.Size=UDim2.new(0.05*i,0,0.1,0)
end
benabled=true
fenframe4a.Size=UDim2.new(0,0,0.1,0)
end))
DanceofSwords()
end
if key=="f" then
Neck.C0=necko*euler(-0.4,0,-0.2)
RootJoint.C0=RootCF*cf(0,0,-1.5)*euler(0.8,0,0.5)
RW.C0=cf(1.5,0.5,0)*euler(1.4,0,1.57-1.07)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(-0.2,0,-1.57+1.17)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
RH.C0=RHC0*cf(0,0,0)*euler(0,-0.5,-0.5)
LH.C0=LHC0*cf(-0.5,1,0)*euler(0.5,0,-0.5)
end
end 

function key2(key) 
if key=="z" then
holdz=false
end
end 

function s(mouse) 
mouse.Button1Down:connect(function() ob1d(mouse) end) 
mouse.Button1Up:connect(function() ob1u(mouse) end) 
mouse.KeyDown:connect(key) 
mouse.KeyUp:connect(key2) 
unsheathed = true 
player = Player 
ch = Character 
MMouse = mouse 
RSH = ch.Torso["Right Shoulder"] 
LSH = ch.Torso["Left Shoulder"] 
-- 
RSH.Parent = nil 
LSH.Parent = nil 
-- 
RW.Name = "Right Shoulder"
RW.Part0 = ch.Torso 
RW.C0 = CFrame.new(1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5) 
RW.C1 = CFrame.new(0, 0.5, 0) 
RW.Part1 = ch["Right Arm"] 
RW.Parent = ch.Torso 
--_G.R = RW 
-- 
LW.Name = "Left Shoulder"
LW.Part0 = ch.Torso 
LW.C0 = CFrame.new(-1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8) 
LW.C1 = CFrame.new(0, 0.5, 0) 
LW.Part1 = ch["Left Arm"] 
LW.Parent = ch.Torso 
--_G.L = LW 
--
equipanim() 
end 

function ds(mouse) 
hideanim() 
swait(0) 
RW.Parent = nil 
LW.Parent = nil 
RSH.Parent = player.Character.Torso 
LSH.Parent = player.Character.Torso 
end 

Bin.Selected:connect(s) 
Bin.Deselected:connect(ds) 
print("Blood Shogai loaded.")

elt = 0
while true do
	elt = elt +1
	if player then
		if player.Character then
			if player.Character:FindFirstChild("Torso") then
				if elt%36 == 0 then
					if player.Character.Torso.Transparency>.8 then
						local p = Instance.new("Part",workspace)
						p.TopSurface=0 p.BottomSurface=0
						p.Anchored=true
						p.CanCollide=false
						p.Transparency=.9
						p.formFactor="Custom"
						p.Shape="Ball"
						p.BrickColor=BrickColor.new("Really red")
						p.CFrame=player.Character.Torso.CFrame
						p.Size=Vector3.new(3,3,3)
						game:GetService("Debris"):AddItem(p,5)
						coroutine.resume(coroutine.create(function(p) for i=1, 20 do local cf = p.CFrame p.Size=p.Size - Vector3.new(.1,.1,.1) p.CFrame=cf p.Transparency = .9 + i/200 swait() end p:Remove() end),p)
					end
				end
			end
		end
	end
	swait()
end

--[[ 
Copyrighted (C) Fenrier 2014
]] 
while true do
	swait()
for _,c in pairs(Character:children()) do
if c.className=="Part" then
	if c.Name~="Head" and c.Name ~="HumanoidRootPart" then
c.LocalTransparencyModifier=0
end
end
end
for _,c in pairs(modelzorz:children()) do
if c.className=="Part" then
c.LocalTransparencyModifier=0
end
end
end