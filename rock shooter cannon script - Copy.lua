:ls Player = game:GetService("Players").luxulux
Character = Player.Character 
PlayerGui = Player.PlayerGui 
Backpack = Player.Backpack 
Torso = Character.Torso 
Head = Character.Head 
Humanoid = Character.Humanoid
LeftArm = Character["Left Arm"] 
LeftLeg = Character["Left Leg"] 
RightArm = Character["Right Arm"] 
RightLeg = Character["Right Leg"] 
LS = Torso["Left Shoulder"] 
LH = Torso["Left Hip"] 
RS = Torso["Right Shoulder"] 
RH = Torso["Right Hip"] 
it=Instance.new
vt=Vector3.new
cf=CFrame.new
euler=CFrame.fromEulerAnglesXYZ
angles=CFrame.Angles
attack = false 
attackdebounce = false 
attacktype = 1 
combo = 0 
damage = 3 
oridamage = 3 
walkdebounce = false 
sheathed = true 
act = {key = {}}
walking = false 
hold=false
MMouse=nil
equipped=false
necko=cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
necko2=cf(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
con1=nil
con2=nil
con3=nil
mana=400
offset=nil
mode="Normal"
modechange=false
dodging=false
--player 
player = nil 
--save shoulders 
RSH, LSH = nil, nil 
--welds 
RW, LW = it("Weld"), it("Weld") 
RW2, LW2 = it("Weld"), it("Weld") 
--what anim 
anim = "none" 

if Character:findFirstChild("Weapon",true) ~= nil then 
Character:findFirstChild("Weapon",true).Parent = nil 
end 
if Player.PlayerGui:findFirstChild("manaGUI",true) ~= nil then 
Player.PlayerGui:findFirstChild("manaGUI",true).Parent = nil 
end  
 
function part(formfactor,parent,reflectance,transparency,brickcolor,name,size)
local fp = it("Part")
fp.formFactor = formfactor 
fp.Parent = parent
fp.Reflectance = reflectance
fp.Transparency = transparency
fp.CanCollide = false 
fp.BrickColor = brickcolor
fp.Name = name
fp.Size = size
fp.Position = Torso.Position 
fp.BottomSurface="Smooth"
fp.TopSurface="Smooth"
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

Ballprt=part(1,nil,0,0.3,BrickColor.new("Black"),"Ball",vt(3,3,3))
Ballmsh=mesh("SpecialMesh",Ballprt,"Sphere","",vt(0,0,0),vt(1,1,1))
Ballwld=weld(Ballprt,Ballprt,Prt4,cf(0,0,0))

local Main=it("Model")
Main.Parent=nil
Main.Name="Weapon"

Prt1=part(1,Main,0,0,BrickColor.new("Black"),"Part1",vt(1,4,1))
Prt2=part(1,Main,0,0,BrickColor.new("Black"),"Part2",vt(1,1,1))
Prt3=part(1,Main,0,0,BrickColor.new("Black"),"Part3",vt(1,1,1))
Prt4=part(1,Main,0,0,BrickColor.new("Black"),"Part4",vt(1,1,1))
Prt5=part(1,Main,0,0,BrickColor.new("Really black"),"Part5",vt(1,1,1))
Prt6=part(1,Main,0,0,BrickColor.new("Black"),"Part6",vt(1,1,1))
Prt7=part(1,Main,0,0,BrickColor.new("Black"),"Part7",vt(1,1,1))
Prt8=part(1,Main,0,0,BrickColor.new("Black"),"Part8",vt(1,1,1))
Prt9=part(1,Main,0,0,BrickColor.new("Black"),"Part9",vt(1,1,1))
Prt10=part(1,Main,0,0,BrickColor.new("Black"),"Part10",vt(1,1,1))
Prt11=part(1,Main,0,0,BrickColor.new("Black"),"Part11",vt(1,1,1))
Prt12=part(1,Main,0,0,BrickColor.new("Navy blue"),"Part12",vt(1,1,1))
Prt13=part(1,Main,0,0,BrickColor.new("Navy blue"),"Part13",vt(1,1,1))
Prt14=part(1,Main,0,0,BrickColor.new("Navy blue"),"Part14",vt(1,1,1))
Prt15=part(1,Main,0,0,BrickColor.new("Navy blue"),"Part15",vt(1,1,1))
Prt16=part(1,Main,0,0,BrickColor.new("Navy blue"),"Part16",vt(1,1,1))
Prt17=part(1,Main,0,0,BrickColor.new("Navy blue"),"Part17",vt(1,1,1))
Prt18=part(1,Main,0,0,BrickColor.new("Black"),"Part18",vt(1,1,1))
Prt19=part(1,Main,0,0,BrickColor.new("Black"),"Part19",vt(1,1,1))
Prt20=part(1,Main,0.5,0,BrickColor.new("Navy blue"),"Part20",vt(1,1,1))
Prt21=part(1,Main,0.5,0,BrickColor.new("Navy blue"),"Part21",vt(1,1,1))
Prt22=part(1,Main,0,0,BrickColor.new("Navy blue"),"Part22",vt(1,1,1))
Prt23=part(1,Main,0,0,BrickColor.new("Black"),"Part23",vt(1,1,1))

Msh1=mesh("BlockMesh",Prt1,"","",vt(0,0,0),vt(1.1,1.2,1.1))
Msh2=mesh("CylinderMesh",Prt2,"","",vt(0,0,0),vt(1.6,1,1.6))
Msh3=mesh("BlockMesh",Prt3,"","",vt(0,0,0),vt(1.4,1,1))
Msh4=mesh("CylinderMesh",Prt4,"","",vt(0,0,0),vt(1.7,2,1.7))
Msh5=mesh("CylinderMesh",Prt5,"","",vt(0,0,0),vt(1.3,2,1.3))
Msh6=mesh("SpecialMesh",Prt6,"Wedge","",vt(0,0,0),vt(0.5,1.4,0.7))
Msh7=mesh("SpecialMesh",Prt7,"Wedge","",vt(0,0,0),vt(0.5,1,1.2))
Msh8=mesh("SpecialMesh",Prt8,"Wedge","",vt(0,0,0),vt(0.5,1.3,0.7))
Msh9=mesh("SpecialMesh",Prt9,"Wedge","",vt(0,0,0),vt(0.5,1,1.2))
Msh10=mesh("SpecialMesh",Prt10,"Wedge","",vt(0,0,0),vt(0.5,1.3,0.7))
Msh11=mesh("SpecialMesh",Prt11,"Wedge","",vt(0,0,0),vt(0.5,1,1.2))
Msh12=mesh("CylinderMesh",Prt12,"","",vt(0,0,0),vt(1.9,0.3,1.9))
Msh13=mesh("SpecialMesh",Prt13,"Wedge","",vt(0,0,0),vt(0.5,0.7,0.7))
Msh14=mesh("SpecialMesh",Prt14,"Wedge","",vt(0,0,0),vt(0.5,0.7,0.7))
Msh15=mesh("SpecialMesh",Prt15,"Wedge","",vt(0,0,0),vt(0.5,0.7,0.7))
Msh16=mesh("BlockMesh",Prt16,"","",vt(0,0,0),vt(2,0.7,0.3))
Msh17=mesh("BlockMesh",Prt17,"","",vt(0,0,0),vt(2,0.7,0.3))
Msh18=mesh("BlockMesh",Prt18,"","",vt(0,0,0),vt(0.4,0.7,1))
Msh19=mesh("BlockMesh",Prt19,"","",vt(0,0,0),vt(0.5,0.5,2))
Msh20=mesh("BlockMesh",Prt20,"","",vt(0,0,0),vt(0.1,0.5,2))
Msh21=mesh("SpecialMesh",Prt21,"Wedge","",vt(0,0,0),vt(0.1,0.5,0.5))
Msh22=mesh("BlockMesh",Prt22,"","",vt(0,0,0),vt(0.6,0.3,1.8))
Msh23=mesh("BlockMesh",Prt23,"","",vt(0,0,0),vt(1,0.6,1))

Wld1=weld(Main,Prt1,RightArm,cf(0,1.8,0))
Wld2=weld(Main,Prt2,Prt1,cf(0,-1,0)*euler(0,0,0))
Wld3=weld(Main,Prt3,Prt2,cf(0,0.3,0)*euler(1.57,0,0))
Wld4=weld(Main,Prt4,Prt1,cf(0,1.4,0)*euler(0,0,0))
Wld5=weld(Main,Prt5,Prt1,cf(0,1.41,0)*euler(0,0,0))
Wld6=weld(Main,Prt6,Prt1,euler(0,-1.57,0)*cf(1,1,0))
Wld7=weld(Main,Prt7,Prt1,euler(1.57,-1.57,0)*cf(1.3,2.2,0))
Wld8=weld(Main,Prt8,Prt1,euler(0,1.57,0)*cf(-1,1,0))
Wld9=weld(Main,Prt9,Prt1,euler(1.57,1.57,0)*cf(-1.3,2.2,0))
Wld10=weld(Main,Prt10,Prt1,euler(0,0,0)*cf(0,1,1))
Wld11=weld(Main,Prt11,Prt1,euler(1.57,0,0)*cf(0,2.2,1.3))
Wld12=weld(Main,Prt12,Prt4,euler(0,0,0)*cf(0,0.7,0))
Wld13=weld(Main,Prt13,Prt1,euler(1.57,-1.57,0)*cf(0.8,0.3,0))
Wld14=weld(Main,Prt14,Prt1,euler(1.57,1.57,0)*cf(-0.8,0.3,0))
Wld15=weld(Main,Prt15,Prt1,euler(1.57,0,0)*cf(0,0.3,0.8))
Wld16=weld(Main,Prt16,Prt4,euler(0,0.785,0)*cf(0,-0.5,0))
Wld17=weld(Main,Prt17,Prt4,euler(0,-0.785,0)*cf(0,-0.5,0))
Wld18=weld(Main,Prt18,Prt4,euler(0.785,0,0)*cf(0,0.5,-0.9))
Wld19=weld(Main,Prt19,Prt18,euler(0.785,0,0)*cf(0,0.4,-0.2))
Wld20=weld(Main,Prt20,Prt19,euler(0,0,0)*cf(0,0.1,0.1))
Wld21=weld(Main,Prt21,Prt20,euler(0,0,3.14)*cf(0,0,1.25))
Wld22=weld(Main,Prt22,Prt19,euler(0,0,0)*cf(0,0,0))
Wld23=weld(Main,Prt23,Prt4,euler(0,0,0)*cf(0,-0.4,-1))

local fengui = it("GuiMain") 
fengui.Parent = Player.PlayerGui 
fengui.Name = "manaGUI" 
local fenframe = it("Frame") 
fenframe.Parent = fengui
fenframe.BackgroundColor3 = Color3.new(255,255,255) 
fenframe.BackgroundTransparency = 1 
fenframe.BorderColor3 = Color3.new(17,17,17) 
fenframe.Size = UDim2.new(0.0500000007, 0, 0.100000001, 0)
local fentext = it("TextLabel") 
fentext.Parent = fenframe 
fentext.Text = "Mana("..mana..")" 
fentext.BackgroundTransparency = 1 
fentext.SizeConstraint = "RelativeXY" 
fentext.TextXAlignment = "Center" 
fentext.TextYAlignment = "Center" 
fentext.Position = UDim2.new(0,80,1,200) 
local fentext2 = it("TextLabel") 
fentext2.Parent = fenframe 
fentext2.Text = " " 
fentext2.BackgroundTransparency = 0 
fentext2.BackgroundColor3 = Color3.new(0,0,0) 
fentext2.SizeConstraint = "RelativeXY" 
fentext2.TextXAlignment = "Center" 
fentext2.TextYAlignment = "Center" 
fentext2.Position = UDim2.new(0,10,1,170)
fentext2.Size = UDim2.new(2.79999995,0,0.210000306,0)
local fentext3 = it("TextLabel") 
fentext3.Parent = fenframe 
fentext3.Text = " " 
fentext3.BackgroundTransparency = 0 
fentext3.BackgroundColor3 = Color3.new(1,1,1) 
fentext3.SizeConstraint = "RelativeXY" 
fentext3.TextXAlignment = "Center" 
fentext3.TextYAlignment = "Center" 
fentext3.Position = UDim2.new(0,10,1,170)
fentext3.Size = UDim2.new(mana*0.007,0,0.400000006,0)

local bg = it("BodyGyro") 
bg.Parent = nil 


if (script.Parent.className ~= "HopperBin") then 
Tool = it("HopperBin") 
Tool.Parent = Backpack 
Tool.Name = "Rock Shooter" 
script.Parent = Tool 
end 
Bin = script.Parent 

function unequipweld() 
Main.Parent=nil
end 

function equipweld() 
Main.Parent=Character
Wld1.Parent=Main
end 

function hideanim() 
equipped = false
bg.Parent=nil
unequipweld() 
for i = 0 , 1 , 0.1 do 
wait(0)  
Torso.Neck.C1 = euler(1.57,3.14,0) * cf(0,0,-0.5) 
LW.C0 = cf(-1.5,0.5,0) * euler(0,0,0) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end 
Torso.Neck.C0=necko*euler(0,0,0)
end 

function equipanim(mouse) 
equipped = true 
for i = 0,1,0.1 do 
wait()  
LW.C0 = cf(-1.5,0.5,0) * euler(0,0,-0.5*i) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(3.14*i,0,0) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end 
for i=0,2,0.05 do
wait()
MMMAGIC(RightArm,3,3,3,0,-math.random(0,3)-math.random(),0,BrickColor.new("Black")) 
MMMAGIC(RightArm,3,3,3,0,-math.random(0,3)-math.random(),0,BrickColor.new("Navy blue")) 
end
equipweld() 
for i = 0,1,0.1 do 
wait()  
LW.C0 = cf(-1.5,0.5,0) * euler(0,0,-0.5) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(3.14-1.9*i,0,0) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end 
for i = 0,1,0.1 do 
wait()  
Torso.Neck.C0=necko*euler(0,0,0)
LW.C0 = cf(-1.5,0.5,0) * euler(0,0,-0.5) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(1.24,0,0.5*i) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end 
Stance()
end 

function Stance()
coroutine.resume(coroutine.create(function()
bg.maxTorque = vt(math.huge,math.huge,math.huge) 
bg.P = 5000
bg.Parent = Torso
while equipped==true and walking==false and attack==false do
wait()
if modechange==false then
Torso.Neck.C0=necko*euler(0,0,1)
end
local pos4 = vt(MMouse.Hit.p.x,Head.Position.Y,MMouse.Hit.p.z)
if mode=="Shoot" then
local pos4 = Vector3.new(MMouse.Hit.p.x,Head.Position.Y,MMouse.Hit.p.z)
offset=(Torso.Position.y-MMouse.Hit.p.y)/60
mag=(Torso.Position-MMouse.Hit.p).magnitude/80
offset=offset/mag 
Torso.Neck.C0=necko*euler(0,-offset,-1.57)
if dodging==false then
bg.cframe = CFrame.new(Head.Position,pos4)*euler(0,1.57,0)
bg.Parent = Torso
LW.C0 = cf(-1.5,0.5,0) * euler(0,0,-0.5) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,1.57) 
RW.C1 = cf(0, 0.5, 0) * euler(offset,1.57,0) 
end
else
if modechange==false then
bg.cframe = cf(Torso.Position,pos4)*euler(0,-1,0)*cf(0,0,0) --cf(Torso.Position,MMouse.Hit.p) * 
end
LW.C0 = cf(-1.5,0.5,0) * euler(0,0,-0.5) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(1.24,0,0.5) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end
end
Torso.Neck.C0=necko*euler(0,0,0)
bg.Parent=nil
end))
end

function Walking()
attack=true
LW.C0 = cf(-1.5,0.5,0) * euler(0,0,-0.5) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(1.24,0,0.5) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
walking=true
attack=false
end

function Mode()
modechange=true
attack=true
if mode=="Normal" then
mode="Shoot"
Humanoid.WalkSpeed=0
for i = 0,1,0.1 do 
wait()  
local pos4 = Vector3.new(MMouse.Hit.p.x,Head.Position.Y,MMouse.Hit.p.z)
bg.cframe = CFrame.new(Head.Position,pos4)*euler(0,1.57,0)
bg.Parent = Torso
Torso.Neck.C0=necko*euler(0,0,1-2.57*i)
LW.C0 = cf(-1.5,0.5,0) * euler(0,0,-0.5) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(1.24+0.33*i,0,0.5+1.07*i) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end 
wait()
elseif mode=="Shoot" then
mode="Normal"
Humanoid.WalkSpeed=16
end
attack=false
modechange=false
Stance()
end

function DodgeUp()
CF=Torso.CFrame*euler(0,-1.57,0)
local vel=Instance.new("BodyVelocity")
vel.Parent=Torso
vel.maxForce=Vector3.new(4e+005,4e+005,4e+005)*1
vel.velocity=CF.lookVector*30
for i=0,1,0.2 do
wait()
LW.C0 = cf(-1.5,0.5,0) * euler(0,0,-0.5-0.5*i) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,1.57) 
RW.C1 = cf(0, 0.5, 0) * euler(offset,1.57,0) 
end
vel.Parent=nil
for i=0,1,0.2 do
wait()
LW.C0 = cf(-1.5,0.5,0) * euler(0,0,-0.5-0.5+0.5*i) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,1.57) 
RW.C1 = cf(0, 0.5, 0) * euler(offset,1.57,0) 
end
--wait(0.2)
end

function DodgeLeft()
CF=Torso.CFrame*euler(0,0,0)
local vel=Instance.new("BodyVelocity")
vel.Parent=Torso
vel.maxForce=Vector3.new(4e+005,4e+005,4e+005)*1
vel.velocity=CF.lookVector*30
for i=0,1,0.2 do
wait()
LW.C0 = cf(-1.5,0.5,0) * euler(-0.5*i,0,-0.5) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,-0.5*i,1.57) 
RW.C1 = cf(0, 0.5, 0) * euler(offset,1.57,0) 
end
vel.Parent=nil
for i=0,1,0.2 do
wait()
LW.C0 = cf(-1.5,0.5,0) * euler(-0.5+0.5*i,0,-0.5) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,-0.5+0.5*i,1.57) 
RW.C1 = cf(0, 0.5, 0) * euler(offset,1.57,0) 
end
--wait(0.2)
end

function DodgeRight()
CF=Torso.CFrame*euler(0,1.57,0)
local vel=Instance.new("BodyVelocity")
vel.Parent=Torso
vel.maxForce=Vector3.new(4e+005,4e+005,4e+005)*1
vel.velocity=CF.lookVector*30
for i=0,1,0.2 do
wait()
LW.C0 = cf(-1.5+0.5*i,0.5,-0.5*i) * euler(0.7*i,0,-0.5+2*i) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,1.57) 
RW.C1 = cf(0, 0.5, 0) * euler(offset,1.57,0) 
end
vel.Parent=nil
for i=0,1,0.2 do
wait()
LW.C0 = cf(-1.5+0.5-0.5*i,0.5,-0.5+0.5*i) * euler(0.7-0.7*i,0,-0.5+2-2*i) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,1.57) 
RW.C1 = cf(0, 0.5, 0) * euler(offset,1.57,0) 
end
--wait(0.2)
end

function DodgeDown()
CF=Torso.CFrame*euler(0,3.14,0)
local vel=Instance.new("BodyVelocity")
vel.Parent=Torso
vel.maxForce=Vector3.new(4e+005,4e+005,4e+005)*1
vel.velocity=CF.lookVector*30
for i=0,1,0.2 do
wait()
LW.C0 = cf(-1.5,0.5,0) * euler(0.5*i,0,-0.5) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0.5*i,1.57) 
RW.C1 = cf(0, 0.5, 0) * euler(offset,1.57,0) 
end
vel.Parent=nil
for i=0,1,0.2 do
wait()
LW.C0 = cf(-1.5,0.5,0) * euler(0.5-0.5*i,0,-0.5) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0.5-0.5*i,1.57) 
RW.C1 = cf(0, 0.5, 0) * euler(offset,1.57,0) 
end
--wait(0.2)
end

function OverchargeBlast()
attack=true
for i=0,1,0.1 do
wait()
local pos4 = vt(MMouse.Hit.p.x,Head.Position.Y,MMouse.Hit.p.z)
Torso.Neck.C0=necko*euler(0,0,1-1*i)
bg.cframe = cf(Torso.Position,pos4)*euler(0,-1+1*i,0)*cf(0,0,0)
bg.Parent = Torso
LW.C0 = cf(-1.5+0.8*i,0.5+0.3*i,-0.5*i) * euler(2.8*i,0,-0.5+1.5*i) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(1.24+1.26*i,0,0.5-0.5*i) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end
wait(0.2)
Ballprt.Parent=Main
Ballwld.Parent=Main
Ballwld.Part0=Ballprt
Ballwld.Part1=Prt4
Ballwld.C0=cf(0,3,0)
for i=0,1,0.1 do
wait()
MMMAGIC3(Ballprt.CFrame,1,6,1,0,0,0,BrickColor.new("Black")) 
EVENMOARMAGIX(Ballprt,1,1,1,0,0,0,0,0,0,BrickColor.new("Black")) 
local pos4 = vt(MMouse.Hit.p.x,Head.Position.Y,MMouse.Hit.p.z)
bg.cframe = cf(Torso.Position,pos4)*euler(0,0,0)*cf(0,0,0)
bg.Parent = Torso
LW.C0 = cf(-1.5+0.8,0.5+0.3,-0.5) * euler(2.8-1*i,0,1) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(2.5-1*i,0,0) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end
for i=0,10,0.1 do
wait()
MMMAGIC3(Ballprt.CFrame,1,6,1,0,0,0,BrickColor.new("Black")) 
EVENMOARMAGIX(Ballprt,3,3,3,0,0,0,0,0,0,BrickColor.new("Black")) 
MOREMAGIX(Ballprt,0,2,2,2,BrickColor.new("Navy blue")) 
local pos4 = vt(MMouse.Hit.p.x,Head.Position.Y,MMouse.Hit.p.z)
bg.cframe = cf(Torso.Position,pos4)*euler(0,0,0)*cf(0,0,0)
bg.Parent = Torso
offset=(Torso.Position.y-MMouse.Hit.p.y)/60
mag=(Torso.Position-MMouse.Hit.p).magnitude/80
offset=offset/mag 
Torso.Neck.C0=necko*euler(offset,0,0)
LW.C0 = cf(-1.5+0.8,0.5+0.3,-0.5) * euler(1.8,0,1) 
LW.C1 = cf(0, 0.5, 0) * euler(offset,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(1.57,0,0) 
RW.C1 = cf(0, 0.5, 0) * euler(offset,0,0) 
end
Ballwld.Part1=nil
Ballprt.Parent=nil
wait(0.4)
shoottrail3(Prt4,20) 
wait(1)
attack=false
end

function ss(pitch) 

local SlashSound = it("Sound") 
SlashSound.SoundId = "rbxasset://sounds\\swordslash.wav" 
SlashSound.Parent = workspace
SlashSound.Volume = .7 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 
function charge(pitch) 

local SlashSound = it("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2101137" 
SlashSound.Parent = workspace 
SlashSound.Volume = 1 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 
function bewm(pitch) 

local SlashSound = it("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2248511" 
SlashSound.Parent = workspace
SlashSound.Volume = .7 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 
function abscond(pitch) 

local SlashSound = it("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2767090" 
SlashSound.Parent = workspace 
SlashSound.Volume = 1 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 
function distort(pitch) 

local SlashSound = it("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2974249" 
SlashSound.Parent = workspace 
SlashSound.Volume = 1 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 
function fire1(pitch) 

local SlashSound = it("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2697431" 
SlashSound.Parent = workspace 
SlashSound.Volume = 0.3 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 
function fire2(pitch) 

local SlashSound = it("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=48618802 " 
SlashSound.Parent = workspace 
SlashSound.Volume = 0.5 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 
function grip(pitch) 

local SlashSound = it("Sound") 
SlashSound.SoundId = "rbxasset://sounds/swordslash.wav" 
SlashSound.Parent = workspace 
SlashSound.Volume = 1 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 
function reload(pitch) 

local SlashSound = it("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2697295" 
SlashSound.Parent = workspace 
SlashSound.Volume = 1 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 

function MMMAGIC(part,x1,y1,z1,x2,y2,z2,color) 
        local msh1 = it("BlockMesh") 
        msh1.Scale = vt(0.5,0.5,0.5) 
        S=it("Part")
        S.Name="Effect"
        S.formFactor=0
        S.Size=vt(x1,y1,z1)
        S.BrickColor=color
        S.Reflectance = 0
        S.TopSurface=0
        S.BottomSurface=0
        S.Transparency=0
        S.Anchored=true
        S.CanCollide=false
        S.CFrame=part.CFrame*cf(x2,y2,z2)*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
        S.Parent=workspace
        msh1.Parent = S
        coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + vt(0.1,0.1,0.1) Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 

function MMAGIC(part,x1,y1,z1,x2,y2,z2,color) 
        local msh1 = it("BlockMesh") 
        msh1.Scale = vt(0.5,0.5,0.5) 
        S=it("Part")
        S.Name="Effect"
        S.formFactor=0
        S.Size=vt(x1,y1,z1)
        S.BrickColor=color
        S.Reflectance = 0
        S.TopSurface=0
        S.BottomSurface=0
        S.Transparency=0
        S.Anchored=true
        S.CanCollide=false
        S.CFrame=part.CFrame*cf(x2,y2,z2)*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
        S.Parent=Character
        msh1.Parent = S
        coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + vt(0.1,0.1,0.1) Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 

function MMMAGIC2(part,x1,y1,z1,x2,y2,z2,color) 
        local msh1 = it("BlockMesh") 
        msh1.Scale = vt(0.5,0.5,0.5) 
        S=it("Part")
        S.Name="Effect"
        S.formFactor=0
        S.Size=vt(x1,y1,z1)
        S.BrickColor=color
        S.Reflectance = 0
        S.TopSurface=0
        S.BottomSurface=0
        S.Transparency=0
        S.Anchored=true
        S.CanCollide=false
        S.CFrame=part.CFrame*cf(x2,y2,z2)*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
        S.Parent=workspace
        msh1.Parent = S
        coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + vt(0.1,0.1,0.1) Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 

function MMMAGIC3(part,x1,y1,z1,x2,y2,z2,color) 
        local msh1 = it("BlockMesh") 
        msh1.Scale = vt(0.5,0.5,0.5) 
        S=it("Part")
        S.Name="Effect"
        S.formFactor=0
        S.Size=vt(x1,y1,z1)
        S.BrickColor=color
        S.Reflectance = 0
        S.TopSurface=0
        S.BottomSurface=0
        S.Transparency=0
        S.Anchored=true
        S.CanCollide=false
        S.CFrame=part*cf(x2,y2,z2)*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
        S.Parent=Character
        msh1.Parent = S
        coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + vt(0,0.3,0) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 

function UltimaMMMAGIC(part,x1,y1,z1,x2,y2,z2,color) 
        local msh1 = it("BlockMesh") 
        msh1.Scale = vt(x1,y1,z1) 
        S=it("Part")
        S.Name="Effect"
        S.formFactor=0
        S.Size=vt(1,1,1)
        S.BrickColor=color
        S.Reflectance = 0
        S.TopSurface=0
        S.BottomSurface=0
        S.Transparency=0
        S.Anchored=true
        S.CanCollide=false
        S.CFrame=part.CFrame*cf(x2,y2,z2)*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
        S.Parent=workspace
        msh1.Parent = S
        coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + vt(0.1,0.1,0.1) Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 

function MOREMAGIX(part,cframe,x,y,z,color) 
                p2=it("Part")
                p2.Name="Blast"
                p2.TopSurface=0
                p2.BottomSurface=0
                p2.CanCollide=false
                p2.Anchored=true
                p2.BrickColor=color
                p2.Size=vt(x,y,z)
                p2.formFactor="Symmetric"
                p2.CFrame=part.CFrame*cf(0,cframe,0)
                p2.Parent=Character
                m=it("BlockMesh")
                m.Parent=p2
                m.Name="BlastMesh"
                coroutine.resume(coroutine.create(function(part,dir) for loll=1, 15 do part.BlastMesh.Scale=part.BlastMesh.Scale-vt(.09,.09,.09) part.Transparency=loll/20 part.CFrame=part.CFrame*cf(dir)*euler(math.random(-100,100)/100, math.random(-100,100)/100, math.random(-100,100)/100) wait() end part.Parent=nil end),p2,vt(math.random(-10,10)/10,math.random(-10,10)/10,math.random(-10,10)/10))
end 

function EVENMOARMAGIX(part,x1,y1,z1,x2,y2,z2,x3,y3,z3,color) 
        local msh1 = it("SpecialMesh") 
        msh1.Scale = vt(0.5,0.5,0.5) 
        msh1.MeshType = "Sphere" 
        S=it("Part")
        S.Name="Effect"
        S.formFactor=0
        S.Size=vt(x1,y1,z1)
        S.BrickColor=color
        S.Reflectance = 0
        S.TopSurface=0
        S.BottomSurface=0
        S.Transparency=0
        S.Anchored=true
        S.CanCollide=false
        S.CFrame=part.CFrame*cf(x2,y2,z2)*euler(x3,y3,z3)
        S.Parent=Character
        msh1.Parent = S
        coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + vt(0.15,0.15,0.15) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 

function EVENMOARMAGIX2(part,x1,y1,z1,x2,y2,z2,x3,y3,z3,color) 
        local msh1 = it("SpecialMesh") 
        msh1.Scale = vt(0.5,0.5,0.5) 
        msh1.MeshType = "Sphere" 
        S=it("Part")
        S.Name="Effect"
        S.formFactor=0
        S.Size=vt(x1,y1,z1)
        S.BrickColor=color
        S.Reflectance = 0
        S.TopSurface=0
        S.BottomSurface=0
        S.Transparency=0
        S.Anchored=true
        S.CanCollide=false
        S.CFrame=part
        S.Parent=workspace
        msh1.Parent = S
        coroutine.resume(coroutine.create(function(Part,CF) for i=1, 14 do Part.Mesh.Scale = Part.Mesh.Scale + vt(1,1,1) Part.Transparency=Part.Transparency+0.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 

function ChargeEffect(part,x1,y1,z1,x2,y2,z2,x3,y3,z3,color) 
        local msh1 = it("SpecialMesh") 
        msh1.Scale = vt(0.5,0.5,0.5) 
        msh1.MeshType = "Sphere" 
        S=it("Part")
        S.Name="Effect"
        S.formFactor=0
        S.Size=vt(x1,y1,z1)
        S.BrickColor=color
        S.Reflectance = 0
        S.TopSurface=0
        S.BottomSurface=0
        S.Transparency=0
        S.Anchored=false
        S.CanCollide=false
        S.CFrame=part.CFrame*cf(x2,y2,z2)*euler(x3,y3,z3)
        S.Parent=modelzorz
        msh1.Parent = S
        coroutine.resume(coroutine.create(function(Part,CF) 
        f=it("BodyPosition")
        f.P=800
        f.D=100
        f.maxForce=vt(math.huge,math.huge,math.huge)
        f.position=part.Position
        f.Parent=Part
        for i=0,1,0.1 do
        wait()
        Part.Transparency=Part.Transparency+0.1
        end
        Part.Parent=nil
        end),S,S.CFrame)
end 

function ChargeEffect2(part,x1,y1,z1,x2,y2,z2,x3,y3,z3,color) 
        local msh1 = it("SpecialMesh") 
        msh1.Scale = vt(0.5,0.5,0.5) 
        msh1.MeshType = "Sphere" 
        S=it("Part")
        S.Name="Effect"
        S.formFactor=0
        S.Size=vt(x1,y1,z1)
        S.BrickColor=color
        S.Reflectance = 0
        S.TopSurface=0
        S.BottomSurface=0
        S.Transparency=0
        S.Anchored=false
        S.CanCollide=false
        S.CFrame=part.CFrame*cf(x2,y2,z2)*euler(x3,y3,z3)
        S.Parent=modelzorz
        msh1.Parent = S
        coroutine.resume(coroutine.create(function(Part,CF) 
        f=it("BodyPosition")
        f.P=800
        f.D=100
        f.maxForce=vt(math.huge,math.huge,math.huge)
        f.position=part.Position+vt(math.random(-30,30),math.random(-30,30),math.random(-30,30))
        f.Parent=Part
        for i=0,1,0.1 do
        wait()
        Part.Transparency=Part.Transparency+0.1
        end
        Part.Parent=nil
        end),S,S.CFrame)
end 

print("Y U NU GIVE CREDIT.") 

function WaveEffect(part,x1,y1,z1,x2,y2,z2,x3,y3,z3,color) 
        local msh1 = it("SpecialMesh") 
        msh1.Scale = vt(x1,y1,z1) 
        msh1.MeshId = "http://www.roblox.com/asset/?id=20329976" 
        S=it("Part")
        S.Name="Effect"
        S.formFactor=0
        S.Size=vt(1,1,1)
        S.BrickColor=color
        S.Reflectance = 0
        S.TopSurface=0
        S.BottomSurface=0
        S.Transparency=0
        S.Anchored=true
        S.CanCollide=false
        S.CFrame=part.CFrame*cf(x2,y2,z2)*euler(x3,y3,z3)
        S.Parent=workspace
        msh1.Parent = S
        coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + vt(0.3,0.3,0.3) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 

function BlastEffect(part,x1,y1,z1,x2,y2,z2,x3,y3,z3,color) 
        local msh1 = it("SpecialMesh") 
        msh1.Scale = vt(x1,y1,z1) 
        msh1.MeshId = "http://www.roblox.com/asset/?id=1323306" 
        S=it("Part")
        S.Name="Effect"
        S.formFactor=0
        S.Size=vt(1,1,1)
        S.BrickColor=color
        S.Reflectance = 0
        S.TopSurface=0
        S.BottomSurface=0
        S.Transparency=0
        S.Anchored=true
        S.CanCollide=false
        S.CFrame=part.CFrame*cf(x2,y2,z2)*euler(x3,y3,z3)
        S.Parent=workspace
        msh1.Parent = S
        coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + vt(0.5,0.8,0.5) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 

function DerpMagic(part,x1,y1,z1,x2,y2,z2,color) 
        local msh1 = it("BlockMesh") 
        msh1.Scale = vt(0.5,0.5,0.5) 
        S=it("Part")
        S.Name="Effect"
        S.formFactor=0
        S.Size=vt(x1,y1,z1)
        S.BrickColor=color
        S.Reflectance = 0
        S.TopSurface=0
        S.BottomSurface=0
        S.Transparency=0
        S.Anchored=false
        S.CanCollide=false
        S.CFrame=part.CFrame
        S.Parent=workspace
        msh1.Parent = S
        W=it("Weld")
        W.Parent=S
        W.Part0=S
        W.Part1=part
        W.C0=cf(x2,y2,z2) * euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
        W.Parent=nil
        S.Anchored=true
        coroutine.resume(coroutine.create(function(Part,Weld) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + vt(0.1,0.1,0.1) --[[Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))]] Part.Transparency=i*.1 wait() end Part.Parent=nil Weld.Parent=nil end),S,W)
end 

DarkRiftF=function(par) --Thank you turdulator for this :D
PWN={}
for _,v in pairs(workspace:children()) do
if v.className=="Model" and v:FindFirstChild("Humanoid")~=nil then
if v.Humanoid.Health>0 and v:FindFirstChild("Torso")~=nil then
if v~=Character and (v.Torso.Position-par.Position).magnitude<=25 then
table.insert(PWN,v.Torso)
end
end
end
end
for _,t in pairs(PWN) do
Mag=(par.Position-t.Position).magnitude/2
t.Parent.Humanoid:TakeDamage(.6)
rl=it("BodyAngularVelocity")
rl.P=3000
rl.maxTorque=vt(500000,500000,500000)*5000
rl.angularvelocity=vt(math.random(-20,20),math.random(-20,20),math.random(-20,20))/10
rl.Parent=t
game:GetService("Debris"):AddItem(rl,.1)
if Mag<=2 then
t.Parent.Humanoid:TakeDamage(.3)
else
vl=it("BodyVelocity")
vl.P=3000
vl.maxForce=vt(50000000000,50000000000,50000000000)
vl.velocity=(t.Position-par.Position).unit*-(70/(Mag))
vl.Parent=t
game:GetService("Debris"):AddItem(vl,.1)
end
end
wait(.08)
end

DBHit=function(hit,Damage) --credits to turdulator for making this function :D
        if hit.Parent==nil then
                return
        end
        h=hit.Parent:FindFirstChild("Humanoid")
        t=hit.Parent:FindFirstChild("Torso")
        if h~=nil and t~=nil then
                if h.Parent==Character then
                        return
                end
                        c=it("ObjectValue")
                        c.Name="creator"
                        c.Value=game.Players.LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                if math.random(0,99)+math.random()<=7.8 then
                        CRIT=true
                        Damage=Damage*3
--[[                        Knockback=Knockback*2
                        r=it("BodyAngularVelocity")
                        r.P=3000
                        r.maxTorque=vt(500000000,50000000000,500000000)*50000
                        r.angularvelocity=vt(math.random(-20,20),math.random(-20,20),math.random(-20,20))
                        r.Parent=hit.Parent.Torso]]
                        s=it("Sound")
                        s.SoundId="http://www.roblox.com/asset/?id=2801263"
                        s.Volume=1
                        s.Pitch=2
                        s.Parent=hit
                        s.PlayOnRemove=true
                        s.Parent=nil
        
                end
                h:TakeDamage(Damage) 
                showDamage(hit.Parent,Damage,.5) 
                vl=it("BodyVelocity")
                vl.P=4500
                vl.maxForce=vt(math.huge,math.huge,math.huge)
--                vl.velocity=vt(Torso.Velocity.x,0,Torso.Velocity.z)*1.05+vt(0,3,0)
                vl.velocity=vt(Torso.Velocity.x,0,Torso.Velocity.z)*1.05+vt(0,45,0)
                vl.Parent=t
                game:GetService("Debris"):AddItem(vl,.2)
                rl=it("BodyAngularVelocity")
                rl.P=3000
                rl.maxTorque=vt(500000,500000,500000)*50000000000000
                rl.angularvelocity=vt(math.random(-40,40),math.random(-40,40),math.random(-40,40))
                rl.Parent=t
                game:GetService("Debris"):AddItem(rl,.2)
        else
                if hit.CanCollide==false then
                        return
                end
                MagicCom:disconnect()
--                DBExplode(DB)
        end
end

DBHit2=function(hit,Damage) --credits to turdulator for making this function :D
        if hit.Parent==nil then
                return
        end
        h=hit.Parent:FindFirstChild("Humanoid")
        t=hit.Parent:FindFirstChild("Torso")
        if h~=nil and t~=nil then
                if h.Parent==Character then
                        return
                end
                        c=it("ObjectValue")
                        c.Name="creator"
                        c.Value=game.Players.LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                if math.random(0,99)+math.random()<=7.8 then
                        CRIT=true
                        Damage=Damage*3
--[[                        Knockback=Knockback*2
                        r=it("BodyAngularVelocity")
                        r.P=3000
                        r.maxTorque=vt(500000000,50000000000,500000000)*50000
                        r.angularvelocity=vt(math.random(-20,20),math.random(-20,20),math.random(-20,20))
                        r.Parent=hit.Parent.Torso]]
                        s=it("Sound")
                        s.SoundId="http://www.roblox.com/asset/?id=2801263"
                        s.Volume=1
                        s.Pitch=2
                        s.Parent=hit
                        s.PlayOnRemove=true
                        s.Parent=nil
        
                end
                h:TakeDamage(Damage) 
                showDamage(hit.Parent,Damage,.5) 
                vl=it("BodyVelocity")
                vl.P=4500
                vl.maxForce=vt(math.huge,math.huge,math.huge)
--                vl.velocity=vt(Torso.Velocity.x,0,Torso.Velocity.z)*1.05+vt(0,30,0)
                vl.velocity=Head.CFrame.lookVector*35+Head.Velocity/1.05
                vl.Parent=t
                game:GetService("Debris"):AddItem(vl,.2)
                rl=it("BodyAngularVelocity")
                rl.P=3000
                rl.maxTorque=vt(500000,500000,500000)*50000000000000
                rl.angularvelocity=vt(math.random(-5,5),math.random(-5,5),math.random(-5,5))
                rl.Parent=t
                game:GetService("Debris"):AddItem(rl,.2)
        else
                if hit.CanCollide==false then
                        return
                end
                MagicCom:disconnect()
--                DBExplode(DB)
        end
end

DOHHit=function(hit,Damage,Pos) --credits to turdulator for making this function :D
        if hit.Parent==nil then
                return
        end
        h=hit.Parent:FindFirstChild("Humanoid")
        t=hit.Parent:FindFirstChild("Torso")
        if h~=nil and t~=nil then
                if h.Parent==Character then
                        return
                end
                        c=it("ObjectValue")
                        c.Name="creator"
                        c.Value=game.Players.LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                if math.random(0,99)+math.random()<=7.8 then
                        CRIT=true
                        Damage=Damage*3
--[[                        Knockback=Knockback*2
                        r=it("BodyAngularVelocity")
                        r.P=3000
                        r.maxTorque=vt(500000000,50000000000,500000000)*50000
                        r.angularvelocity=vt(math.random(-20,20),math.random(-20,20),math.random(-20,20))
                        r.Parent=hit.Parent.Torso]]
                        s=it("Sound")
                        s.SoundId="http://www.roblox.com/asset/?id=2801263"
                        s.Volume=1
                        s.Pitch=2
                        s.Parent=hit
                        s.PlayOnRemove=true
                        s.Parent=nil
        
                end
                h:TakeDamage(Damage) 
                showDamage(hit.Parent,Damage,.5) 
                vl=it("BodyVelocity")
                vl.P=4500
                vl.maxForce=vt(math.huge,math.huge,math.huge)
--                vl.velocity=vt(Torso.Velocity.x,0,Torso.Velocity.z)*1.05+vt(0,60,0)
                vl.velocity=Head.CFrame.lookVector+Head.Velocity/1.05
                vl.Parent=t
                game:GetService("Debris"):AddItem(vl,.2)
                rl=it("BodyAngularVelocity")
                rl.P=3000
                rl.maxTorque=vt(500000,500000,500000)*50000000000000
                rl.angularvelocity=vt(math.random(-10,10),math.random(-10,10),math.random(-10,10))
                rl.Parent=t
                game:GetService("Debris"):AddItem(rl,.2)
        else
                if hit.CanCollide==false then
                        return
                end
                MagicCom:disconnect()
--                DBExplode(DB)
        end
end

Damagefunc1=function(hit,Damage,Knockback)
        if attackdebounce == false then 
        attackdebounce = true 
        coroutine.resume(coroutine.create(function() 
        wait(0.1) 
        attackdebounce = false 
        end)) 
        if hit.Parent==nil then
                return
        end
        CPlayer=Bin 
        h=hit.Parent:FindFirstChild("Humanoid")
        if h~=nil and hit.Parent.Name~="Fenrier" and hit.Parent:FindFirstChild("Torso")~=nil then
                Damage=Damage
--[[                if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
                        return
                end]]
                        if mana<400 then
                        mana=mana+math.random(10,20)
                        else
                        mana=400
                        end
                        c=it("ObjectValue")
                        c.Name="creator"
                        c.Value=game.Players.LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
--                        print(c.Value)
                if math.random(0,99)+math.random()<=7.8 then
                        CRIT=true
                        Damage=Damage*2
--[[                        Knockback=Knockback*2
                        r=it("BodyAngularVelocity")
                        r.P=3000
                        r.maxTorque=vt(500000000,50000000000,500000000)*50000
                        r.angularvelocity=vt(math.random(-20,20),math.random(-20,20),math.random(-20,20))
                        r.Parent=hit.Parent.Torso]]
                        s=it("Sound")
                        s.SoundId="http://www.roblox.com/asset/?id=2801263"
                        s.Volume=1
                        s.Pitch=2
                        s.Parent=hit
                        s.PlayOnRemove=true
                        s.Parent=nil
        
                end
                Damage=Damage+math.random(0,10)
--                Blood(hit.CFrame*cf(math.random(-10,10)/10,math.random(-10,10)/10,0),math.floor(Damage/2))
                h:TakeDamage(Damage)
                showDamage(hit.Parent,Damage,.5)
                vp=it("BodyVelocity")
                vp.P=500
                vp.maxForce=vt(math.huge,0,math.huge)
--                vp.velocity=Character.Torso.CFrame.lookVector*Knockback
                vp.velocity=Torso.CFrame.lookVector*Knockback+Torso.Velocity/1.05
                if Knockback>0 then
                        vp.Parent=hit.Parent.Torso
                end
                game:GetService("Debris"):AddItem(vp,1)
--[[                r=it("BodyAngularVelocity")
                r.P=3000
                r.maxTorque=vt(500000000,50000000000,500000000)*50000
                r.angularvelocity=vt(math.random(-20,20),math.random(-20,20),math.random(-20,20))
                r.Parent=hit.Parent.Torso]]
                game:GetService("Debris"):AddItem(r,.5)
                                c=it("ObjectValue")
                        c.Name="creator"
                        c.Value=Player
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                CRIT=false
                hitDeb=true
                AttackPos=6
        end
        end 
end

DOH=function(hit,Damage,Knockback)
        if attackdebounce == false then 
        attackdebounce = true 
        coroutine.resume(coroutine.create(function() 
        wait(0.2) 
        attackdebounce = false 
        end)) 
        if hit.Parent==nil then
                return
        end
        CPlayer=Bin 
        h=hit.Parent:FindFirstChild("Humanoid")
        if h~=nil and hit.Parent.Name~="Fenrier" and hit.Parent:FindFirstChild("Torso")~=nil then
                Damage=Damage
--[[                if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
                        return
                end]]
                        c=it("ObjectValue")
                        c.Name="creator"
                        c.Value=game.Players.LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
--                        print(c.Value)
                if math.random(0,99)+math.random()<=7.8 then
                        CRIT=true
                        Damage=Damage*3
--[[                        Knockback=Knockback*2
                        r=it("BodyAngularVelocity")
                        r.P=3000
                        r.maxTorque=vt(500000000,50000000000,500000000)*50000
                        r.angularvelocity=vt(math.random(-20,20),math.random(-20,20),math.random(-20,20))
                        r.Parent=hit.Parent.Torso]]
                        s=it("Sound")
                        s.SoundId="http://www.roblox.com/asset/?id=2801263"
                        s.Volume=1
                        s.Pitch=2
                        s.Parent=hit
                        s.PlayOnRemove=true
                        s.Parent=nil
        
                end
                Damage=Damage+math.random(0,10)
--                Blood(hit.CFrame*cf(math.random(-10,10)/10,math.random(-10,10)/10,0),math.floor(Damage/2))
                h:TakeDamage(Damage)
                showDamage(hit.Parent,Damage,.5)
                vp=it("BodyVelocity")
                vp.P=500
                vp.maxForce=vt(math.huge,0,math.huge)
--                vp.velocity=Character.Torso.CFrame.lookVector*Knockback
                vp.velocity=Torso.CFrame.lookVector*Knockback+Torso.Velocity/1.05
                if Knockback>0 then
                        vp.Parent=hit.Parent.Torso
                end
                game:GetService("Debris"):AddItem(vp,.25)
--[[                r=it("BodyAngularVelocity")
                r.P=3000
                r.maxTorque=vt(500000000,50000000000,500000000)*50000
                r.angularvelocity=vt(math.random(-20,20),math.random(-20,20),math.random(-20,20))
                r.Parent=hit.Parent.Torso]]
                game:GetService("Debris"):AddItem(r,.5)
                                c=it("ObjectValue")
                        c.Name="creator"
                        c.Value=Player
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                wait(1) 
                DOHeffect(hit,20,30,2,0,0) 
                bewm(workspace,1) 
                wait(0.1) 
                DOHeffect(hit,20,30,-2,0.5,0) 
                bewm(workspace,1) 
                wait(0.1) 
                DOHeffect(hit,20,30,2,1,0) 
                bewm(workspace,1) 
                wait(0.1) 
                DOHeffect(hit,20,30,-2,1.5,0) 
                bewm(workspace,1) 
                CRIT=false
                hitDeb=true
                AttackPos=6
        end
        end 
end

showDamage=function(Char,Dealt,du)
        m=it("Model")
        m.Name=tostring(Dealt)
        h=it("Humanoid")
        h.Health=0
        h.MaxHealth=0
        h.Parent=m
        c=it("Part")
        c.Transparency=0
        c.BrickColor=BrickColor:Red()
        if CRIT==true then
                c.BrickColor=BrickColor.new("Really red")
        end
        c.Name="Head"
        c.TopSurface=0
        c.BottomSurface=0
        c.formFactor="Plate"
        c.Size=vt(1,.4,1)
        ms=it("CylinderMesh")
        ms.Bevel=.1
        ms.Scale=vt(.8,.8,.8)
        if CRIT==true then
                ms.Scale=vt(1.25,1.5,1.25)
                ms.Bevel=.2
        end
        ms.Parent=c
        c.Reflectance=0
        it("BodyGyro").Parent=c
        c.Parent=m
        c.CFrame=cf(Char["Head"].CFrame.p+vt(0,1.5,0))
        f=it("BodyPosition")
        f.P=2000
        f.D=100
        f.maxForce=vt(math.huge,math.huge,math.huge)
        f.position=c.Position+vt(0,3,0)
        f.Parent=c
        game:GetService("Debris"):AddItem(m,.5+du)
        c.CanCollide=false
        m.Parent=workspace
        c.CanCollide=false
end

function shoottrail2(pos1,Damage) 
coroutine.resume(coroutine.create(function()
spread2 = 0 
range2 = 100
rangepower = 10
local spreadvector = (vt(math.random(-spread2,spread2),math.random(-spread2,spread2),math.random(-spread2,spread2)) / 100) * (pos1.Position).magnitude/100
local dir = Head.CFrame.lookVector+spreadvector 
--local dir = pos1.CFrame.lookVector+spreadvector
local ammount = 100
local hit2,pos = rayCast(pos1.Position,dir,10,Main)
local rangepos = range2
local function drawtrail(From,To)
local effectsmsh = it("SpecialMesh")
local Damg = Damage*2
effectsmsh.Scale = vt(1,1,1)
effectsmsh.MeshType="Sphere"
effectsmsh.Name = "Mesh"
local effectsg = it("Part")
effectsg.formFactor = 3
effectsg.CanCollide = false
effectsg.Name = "Eff"
effectsg.Locked = true
effectsg.Anchored = true
effectsg.Size = vt(1,0.4,1)
effectsg.Parent = Main
effectsmsh.Parent = effectsg
effectsg.BrickColor = BrickColor.new("Navy blue") 
effectsg.Reflectance = 0.25
local LP = From
local point1 = To
local mg = (LP - point1).magnitude
effectsmsh.Scale = vt(3,3,3)
effectsg.CFrame = cf((LP+point1)/2,point1) * CFrame.Angles(math.rad(90),0,0)
MMMAGIC(effectsg,4,4,4,0,0,0,BrickColor.new("Black")) 
MOREMAGIX(effectsg,0,2,2,2,BrickColor.new("Navy blue")) 
coroutine.resume(coroutine.create(function()
--[[for i = 0 , 1 , 0.1 do
wait()
effectsg.Transparency = 1*i
effectsmsh.Scale = vt(1-1*i,mg*5,1-1*i)
end ]]
wait()
effectsg.Transparency = 1
wait(2) 
effectsg.Parent = nil 
end))
end
local newpos = pos1.Position
local inc = rangepower
ammount=100
local Damg = Damage*2
local decr = 0
repeat
wait() 
decr = decr + 1
rangepos = rangepos - 10
dir = dir
--dir = dir 
ammount=ammount-3
if decr == 2 then
Damg = Damg/2
decr=0
end
hit2,pos = rayCast(newpos,dir,inc,Main)
drawtrail(newpos,pos)
newpos = newpos + (dir * inc)
if alt==1 then 
inc = 10 
if inc >= 20 then
inc = inc - 10
end
end 
if hit2 ~= nil then
rangepos = 0
end
until rangepos <= 0
EVENMOARMAGIX2(cf(newpos),2,2,2,0,0,0,0,0,0,BrickColor.new("Black")) 
local c = game.Workspace:GetChildren();
for i = 1, #c do
local hum = c[i]:findFirstChild("Humanoid")
if hum ~= nil and hum.Health ~= 0 then
local head = c[i]:findFirstChild("Head");
if head ~= nil then
local targ = head.Position - newpos;
local mag = targ.magnitude;
if mag <= 10 and c[i].Name ~= Player.Name then 
attackdebounce=false
Damagefunc1(head,math.floor(Damg),0.1)
end 
end 
end 
end
if hit2 ~= nil then
local effectsmsh = it("SpecialMesh")
effectsmsh.MeshId = "http://www.roblox.com/asset/?id=15887356"
--effectsmsh.Scale = vt(1,1,2.5)
effectsmsh.Scale = vt(3,3,3)
local effectsg = it("Part")
effectsg.formFactor = 3
effectsg.CanCollide = false
effectsg.Name = "Arrow"
effectsg.Locked = true
effectsg.Transparency = 1 
effectsg.Size = vt(0.2,0.2,0.2)
effectsg.Parent = Main
effectsg.BrickColor = BrickColor.new("Black") 
effectsmsh.Parent = effectsg
effectsg.CFrame = cf(newpos,pos) + cf(newpos,pos).lookVector*2.5*2
coroutine.resume(coroutine.create(function()
wait(0)
effectsg.Parent = nil 
end))
local efwel = it("Weld") 
efwel.Parent = effectsg 
efwel.Part0 = effectsg 
efwel.Part1 = hit2 
efwel.Parent = nil 
effectsg.Anchored = true 
--local HitPos = effectsg.Position + cf(newpos,pos).lookVector*0.75
--local HitPos = prt1.Position + cf(newpos,pos).lookVector*0.75
local HitPos = Prt4.Position + (Head.CFrame.lookVector * .5) 
local CJ = cf(HitPos) 
local C0 = effectsg.CFrame:inverse() * CJ
local C1 = hit2.CFrame:inverse() * CJ 
--efwel.C0 = C0
--efwel.C1 = C1
--efwel.Parent = effectsg 
if hit2.Parent:FindFirstChild("Humanoid") ~= nil then
hum = hit2.Parent.Humanoid
attackdebounce=false
Damagefunc1(hit2,math.floor(Damg),0.1)
elseif hit2.Parent.Parent ~= nil and hit2.Parent.Parent:FindFirstChild("Humanoid") ~= nil then
hum = hit2.Parent.Parent.Humanoid
attackdebounce=false
Damagefunc1(hum,math.floor(Damg),0.1)
end
end
end))
end

function shoottrail3(pos1,Damage) 
coroutine.resume(coroutine.create(function()
spread2 = 0 
range2 = 1000
rangepower = 2
local spreadvector = (vt(math.random(-spread2,spread2),math.random(-spread2,spread2),math.random(-spread2,spread2)) / 100) * (pos1.Position).magnitude/100
local dir = Head.CFrame.lookVector+spreadvector 
--local dir = pos1.CFrame.lookVector+spreadvector
local ammount = 100
local hit2,pos = rayCast(pos1.Position,dir,10,Character)
local rangepos = range2
local function drawtrail(From,To)
local effectsmsh = it("SpecialMesh")
local Damg = Damage*2
effectsmsh.Scale = vt(1,1,1)
effectsmsh.MeshType="Sphere"
effectsmsh.Name = "Mesh"
local effectsg = it("Part")
effectsg.formFactor = 3
effectsg.CanCollide = false
effectsg.Name = "Eff"
effectsg.Locked = true
effectsg.Anchored = true
effectsg.Size = vt(1,0.4,1)
effectsg.Parent = Main
effectsmsh.Parent = effectsg
effectsg.BrickColor = BrickColor.new("Black") 
effectsg.Reflectance = 0
effectsg.Transparency=0.3
local LP = From
local point1 = To
local mg = (LP - point1).magnitude
effectsmsh.Scale = vt(3,3,3)
effectsg.CFrame = cf((LP+point1)/2,point1) * CFrame.Angles(math.rad(90),0,0)
MMMAGIC3(effectsg.CFrame,1,6,1,0,0,0,BrickColor.new("Black")) 
EVENMOARMAGIX(effectsg,3,3,3,0,0,0,0,0,0,BrickColor.new("Black")) 
MOREMAGIX(effectsg,0,2,2,2,BrickColor.new("Navy blue")) 
coroutine.resume(coroutine.create(function()
--[[for i = 0 , 1 , 0.1 do
wait()
effectsg.Transparency = 1*i
effectsmsh.Scale = vt(1-1*i,mg*5,1-1*i)
end ]]
wait()
effectsg.Transparency = 1
wait(2) 
effectsg.Parent = nil 
end))
end
local newpos = pos1.Position
local inc = rangepower
ammount=100
local Damg = Damage*2
local decr = 0
repeat
wait() 
decr = decr + 1
rangepos = rangepos - 10
dir = dir
--dir = dir 
ammount=ammount-3
hit2,pos = rayCast(newpos,dir,inc,Character)
drawtrail(newpos,pos)
newpos = newpos + (dir * inc)
if alt==1 then 
inc = 10 
if inc >= 20 then
inc = inc - 10
end
end 
if hit2 ~= nil then
rangepos = 0
end
until rangepos <= 0
EVENMOARMAGIX2(cf(newpos),5,5,5,0,0,0,0,0,0,BrickColor.new("Black")) 
local c = game.Workspace:GetChildren();
for i = 1, #c do
local hum = c[i]:findFirstChild("Humanoid")
if hum ~= nil and hum.Health ~= 0 then
local head = c[i]:findFirstChild("Head");
if head ~= nil then
local targ = head.Position - newpos;
local mag = targ.magnitude;
if mag <= 30 and c[i].Name ~= Player.Name then 
attackdebounce=false
Damagefunc1(head,math.floor(Damg),0.1)
end 
end 
end 
end
if hit2 ~= nil then
print(hit2)
local effectsmsh = it("SpecialMesh")
effectsmsh.MeshId = "http://www.roblox.com/asset/?id=15887356"
--effectsmsh.Scale = vt(1,1,2.5)
effectsmsh.Scale = vt(3,3,3)
local effectsg = it("Part")
effectsg.formFactor = 3
effectsg.CanCollide = false
effectsg.Name = "Arrow"
effectsg.Locked = true
effectsg.Transparency = 1 
effectsg.Size = vt(0.2,0.2,0.2)
effectsg.Parent = Main
effectsg.BrickColor = BrickColor.new("Black") 
effectsmsh.Parent = effectsg
effectsg.CFrame = cf(newpos,pos) + cf(newpos,pos).lookVector*2.5*2
coroutine.resume(coroutine.create(function()
wait(0)
effectsg.Parent = nil 
end))
local efwel = it("Weld") 
efwel.Parent = effectsg 
efwel.Part0 = effectsg 
efwel.Part1 = hit2 
efwel.Parent = nil 
effectsg.Anchored = true 
--local HitPos = effectsg.Position + cf(newpos,pos).lookVector*0.75
--local HitPos = prt1.Position + cf(newpos,pos).lookVector*0.75
local HitPos = Prt4.Position + (Head.CFrame.lookVector * .5) 
local CJ = cf(HitPos) 
local C0 = effectsg.CFrame:inverse() * CJ
local C1 = hit2.CFrame:inverse() * CJ 
--efwel.C0 = C0
--efwel.C1 = C1
--efwel.Parent = effectsg 
if hit2.Parent:FindFirstChild("Humanoid") ~= nil then
hum = hit2.Parent.Humanoid
attackdebounce=false
Damagefunc1(hit2,math.floor(Damg),0.1)
elseif hit2.Parent.Parent ~= nil and hit2.Parent.Parent:FindFirstChild("Humanoid") ~= nil then
hum = hit2.Parent.Parent.Humanoid
attackdebounce=false
Damagefunc1(hum,math.floor(Damg),0.1)
end
end
end))
end


function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , Ignore Descendants
return game.Workspace:FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 

hold = false 

function ob1d(mouse) 
if attack == true then return end 
hold=true
if mode=="Shoot" then
shoottrail2(Prt4,15) 
attack=true
for i=0,1,0.4 do
wait()
Torso.Neck.C0=necko*euler(0,-offset,-1.57)
LW.C0 = cf(-1.5,0.5,0) * euler(0,0,-0.5) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,1.57) 
RW.C1 = cf(0, 0.5, 0) * euler(offset-0.3*i,1.57,0) 
end
for i=0,1,0.4 do
wait()
Torso.Neck.C0=necko*euler(0,-offset,-1.57)
LW.C0 = cf(-1.5,0.5,0) * euler(0,0,-0.5) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,1.57) 
RW.C1 = cf(0, 0.5, 0) * euler(offset-0.3+0.3*i,1.57,0) 
end
attack=false
Stance()
end
end 

function ob1u(mouse) 
hold = false 
end 

buttonhold = false 

function Key(key,mouse) 
if attack == true then return end 
if key=="f" then
Mode()
end
if key=="u" then
OverchargeBlast()
end
Stance()
pcall(function() act.key[key:lower()] = true end)
local kk = key:lower()
coroutine.resume(coroutine.create(function()
if kk == "w" or kk == "a" or kk == "s" or kk == "d" then
while act.key["w"] == true or act.key["a"] == true or act.key["s"] == true or act.key["d"] == true do
wait()
end
walking = false 
end
end)) 
if kk == "w" or kk == "a" or kk == "s" or kk == "d" then
if walking == true then return end
while act.key["w"] == true or act.key["a"] == true or act.key["s"] == true or act.key["d"] == true do
if mode=="Normal" then
Walking()
elseif mode=="Shoot" then
dodging=true
Torso.Neck.C0=necko*euler(0,-offset,-1.57)
if kk=="w" then
DodgeUp()
elseif kk=="a" then
DodgeLeft()
elseif kk=="s" then
DodgeRight()
elseif kk=="d" then
DodgeDown()
end
dodging=false
Stance()
end
wait()
end
walking = false 
Stance()
end
end 

function Key2(key,mouse) 
pcall(function() act.key[key:lower()] = false end)
end 

function s(mouse) 
mouse.Button1Down:connect(function() ob1d(mouse) end) 
mouse.Button1Up:connect(function() ob1u(mouse) end) 
mouse.KeyDown:connect(function(key) Key(key,mouse) end) 
--mouse.KeyDown:connect(key2) 
mouse.KeyUp:connect(function(key) Key2(key,mouse) end) 
mouse.KeyUp:connect(function(k) act.keydown = false 
pcall(function() act.key[k:lower()] = false  end)
hold = false 
end) 
MMouse = mouse 
sheathed = false 
player = Player 
ch = Character 
RSH = ch.Torso["Right Shoulder"] 
LSH = ch.Torso["Left Shoulder"] 
RHP = ch.Torso["Right Hip"] 
LHP = ch.Torso["Left Hip"] 
-- 
RSH.Parent = nil 
LSH.Parent = nil 
--[[RHP.C0 = cf(-0.5, -1.5, 0) * euler(0,0,0) 
RHP.C1 = cf(0, 0.5, 0) 
LHP.C0 = cf(0.5, -1.5, 0) * euler(0,0,0) 
LHP.C1 = cf(0, 0.5, 0) ]]
-- 
RW.Part0 = ch.Torso 
RW.C0 = cf(1.5, 0.5, 0) --* euler(1.3, 0, -0.5) 
RW.C1 = cf(0, 0.5, 0) 
RW.Part1 = ch["Right Arm"] 
RW.Parent = ch.Torso 
--_G.R = RW 
-- 
LW.Part0 = ch.Torso 
LW.C0 = cf(-1.5, 0.5, 0) --* euler(1.7, 0, 0.8) 
LW.C1 = cf(0, 0.5, 0) 
LW.Part1 = ch["Left Arm"] 
LW.Parent = ch.Torso 
--_G.L = LW 
-- 
--[[RW2.Part0 = ch.Torso 
RW2.C0 = cf(0.5, -1.5, 0) --* euler(1.7, 0, 0.8) 
RW2.C1 = cf(0, 0.5, 0) 
RW2.Part1 = ch["Right Leg"] 
RW2.Parent = ch.Torso 
--_G.L = LW 
-- 
LW2.Part0 = ch.Torso 
LW2.C0 = cf(-0.5, -1.5, 0) --* euler(1.7, 0, 0.8) 
LW2.C1 = cf(0, 0.5, 0) 
LW2.Part1 = ch["Left Leg"] 
LW2.Parent = ch.Torso 
--_G.L = LW 
-- ]]
equipanim(mouse) 
end 

function ds(mouse) 
sheathed = true 
guardy = false 
walking = nil 
Character.Humanoid.WalkSpeed = 16 
Torso.Neck.C1 = euler(1.57,3.14,0) * cf(0,0,-0.5) 
--[[RHP.C0 = cf(0.5, -1.5, 0) * euler(0,math.rad(90),0) 
RHP.C1 = cf(0, 0, 0) 
LHP.C0 = cf(-0.5, -1.5, 0) * euler(0,math.rad(90),0) 
LHP.C1 = cf(0, 0, 0) ]]
hideanim() 
RW.Parent = nil 
LW.Parent = nil 
RSH.Parent = player.Character.Torso 
LSH.Parent = player.Character.Torso 
end 

Bin.Selected:connect(s) 
Bin.Deselected:connect(ds) 

increase=0
--[[while true do
wait()
RH.Part0 = Torso
LH.Part0 = Torso
if mana < 0 then 
mana = 0
end 
if mana >= 400 then 
mana=400 
end
increase = increase + 1 
if increase == 5 then 
if mana < 400 then 
mana = mana + 1 
end 
increase = 0 
end 
fentext3.Size = UDim2.new(mana*0.007,0,0.200000006,0)
fentext.Text = "Dark Energy("..mana..")" 
end
-- mediafire
--[[ 
Copyrighted (C) Fenrier 2013
]]--
