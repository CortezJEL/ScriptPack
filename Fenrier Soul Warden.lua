
Player = game:GetService("Players").LocalPlayer
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
Neck = Torso.Neck
it=Instance.new
vt=Vector3.new
cf=CFrame.new
euler=CFrame.fromEulerAnglesXYZ
angles=CFrame.Angles
necko=cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
necko2=cf(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
neckoav=cf(0, -2.25, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
neckoav2=cf(0, 1.125, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
LHC0=cf(-1,-1,0,-0,-0,-1,0,1,0,1,0,0)
RHC0=cf(1,-1,0,0,0,1,0,1,0,-1,-0,-0)
RootPart=Character.HumanoidRootPart
RootJoint=RootPart.RootJoint
RootCF=euler(-1.57,0,3.14)
attack = false 
shadowattack=false
attackdebounce = false 
MMouse=nil
combo=0
cancombo=false
combomove=false
combotype="None"
AvatarMode="Follow"
lifestolen=false
LifeStolenTorso=nil
local LastPoint=nil
local LastPoint2=nil
local LastPoint3=nil
local Point=LastPoint
local Point2=LastPoint2
local Point3=LastPoint3
local rLastPoint=nil
local rLastPoint2=nil
local rLastPoint3=nil
local rPoint=rLastPoint
local rPoint2=rLastPoint2
local rPoint3=rLastPoint3
local avLastPoint=nil
local avLastPoint2=nil
local avLastPoint3=nil
local avPoint=avLastPoint
local avPoint2=avLastPoint2
local avPoint3=avLastPoint3
local TargetTorso=nil
local con1=nil
local con2=nil
local shadowcon=nil
--player 
player = nil 
--save shoulders 
RSH, LSH = nil, nil 
--welds 
RW, LW = Instance.new("Weld"), Instance.new("Weld") 
RW.Name="Right Shoulder" LW.Name="Left Shoulder"
LH=Torso["Left Hip"]
RH=Torso["Right Hip"]
 
if Character:findFirstChild("Warden Claws",true) ~= nil then 
Character:findFirstChild("Warden Claws",true).Parent = nil 
end 
if Character:findFirstChild("Avatar",true) ~= nil then 
Character:findFirstChild("Avatar",true).Parent = nil 
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
fp.Position = Torso.Position+vt(0,50,0) 
NoOutline(fp)
fp.Material="Neon"
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
 
local modelzorz = Instance.new("Model") 
modelzorz.Parent = Character 
modelzorz.Name = "Warden Claws" 
 
local prt1=part(1,modelzorz,0,0,BrickColor.new("Black"),"Part1",vt(1,1,1))
local prt2=part(1,modelzorz,0,0,BrickColor.new("Really black"),"Part2",vt(1,1,1))
local prt3=part(1,modelzorz,0,0,BrickColor.new("Black"),"Part3",vt(1,1,1))
local prt4=part(1,modelzorz,0,0,BrickColor.new("Really black"),"Part4",vt(1,1,1))
local prt5=part(1,modelzorz,0,0,BrickColor.new("Black"),"Part5",vt(1,1,1))
local prt6=part(1,modelzorz,0,0,BrickColor.new("Really black"),"Part6",vt(1,1,1))
local prt7=part(1,modelzorz,0,0,BrickColor.new("Black"),"Part7",vt(1,1,1))
local prt8=part(1,modelzorz,0,0,BrickColor.new("Really black"),"Part8",vt(1,1,1))
local prt9=part(1,modelzorz,0,0,BrickColor.new("Black"),"Part9",vt(1,1,1))
local prt10=part(1,modelzorz,0,0,BrickColor.new("Really black"),"Part10",vt(1,1,1))
local prt11=part(1,modelzorz,0,0,BrickColor.new("Black"),"Part11",vt(1,1,1))
local prt12=part(1,modelzorz,0,0,BrickColor.new("Really black"),"Part12",vt(1,1,1))
 
local msh1=mesh("BlockMesh",prt1,"","",vt(0,0,0),vt(0.2,1,0.1))
local msh2=mesh("SpecialMesh",prt2,"Wedge","",vt(0,0,0),vt(0.1,0.2,0.2))
local msh3=mesh("BlockMesh",prt3,"","",vt(0,0,0),vt(0.2,1,0.1))
local msh4=mesh("SpecialMesh",prt4,"Wedge","",vt(0,0,0),vt(0.1,0.2,0.2))
local msh5=mesh("BlockMesh",prt5,"","",vt(0,0,0),vt(0.2,1,0.1))
local msh6=mesh("SpecialMesh",prt6,"Wedge","",vt(0,0,0),vt(0.1,0.2,0.2))
local msh7=mesh("BlockMesh",prt7,"","",vt(0,0,0),vt(0.2,1,0.1))
local msh8=mesh("SpecialMesh",prt8,"Wedge","",vt(0,0,0),vt(0.1,0.2,0.2))
local msh9=mesh("BlockMesh",prt9,"","",vt(0,0,0),vt(0.2,1,0.1))
local msh10=mesh("SpecialMesh",prt10,"Wedge","",vt(0,0,0),vt(0.1,0.2,0.2))
local msh11=mesh("BlockMesh",prt11,"","",vt(0,0,0),vt(0.2,1,0.1))
local msh12=mesh("SpecialMesh",prt12,"Wedge","",vt(0,0,0),vt(0.1,0.2,0.2))
 
local wld1=weld(prt1,prt1,LeftArm,euler(0,0,0)*cf(0.41,1,0.4))
local wld2=weld(prt2,prt2,prt1,euler(0,1.57,3.14)*cf(0,0.715,0))
local wld3=weld(prt3,prt3,LeftArm,euler(0,0,0)*cf(0.41,1,0))
local wld4=weld(prt4,prt4,prt3,euler(0,1.57,3.14)*cf(0,0.715,0))
local wld5=weld(prt5,prt5,LeftArm,euler(0,0,0)*cf(0.41,1,-0.4))
local wld6=weld(prt6,prt6,prt5,euler(0,1.57,3.14)*cf(0,0.715,0))
local wld7=weld(prt7,prt7,RightArm,euler(0,0,0)*cf(-0.41,1,0.4))
local wld8=weld(prt8,prt8,prt7,euler(0,-1.57,3.14)*cf(0,0.715,0))
local wld9=weld(prt9,prt9,RightArm,euler(0,0,0)*cf(-0.41,1,0))
local wld10=weld(prt10,prt10,prt9,euler(0,-1.57,3.14)*cf(0,0.715,0))
local wld11=weld(prt11,prt11,RightArm,euler(0,0,0)*cf(-0.41,1,-0.4))
local wld12=weld(prt12,prt12,prt11,euler(0,-1.57,3.14)*cf(0,0.715,0))
 
local Avatar=Instance.new("Model")
Avatar.Parent=modelzorz
Avatar.Name="Shadow"
 
local aroot=part(1,Avatar,0,1,BrickColor.new("Black"),"RootPart2",vt(1,1,1))
local aprt1=part(1,Avatar,0,1,BrickColor.new("Black"),"Torso",vt(1,1,1))
local aprt2=part(1,Avatar,0,0.5,BrickColor.new("Black"),"Head",vt(1,1,1))
local aprt3=part(1,Avatar,0,0.5,BrickColor.new("Black"),"Left Arm",vt(1,1,1))
local aprt4=part(1,Avatar,0,1,BrickColor.new("Black"),"Right Arm",vt(1,1,1))
local aprt5=part(1,Avatar,0,0.5,BrickColor.new("Black"),"Claw1",vt(1,1,1))
local aprt6=part(1,Avatar,0,0.5,BrickColor.new("Black"),"Claw1.1",vt(1,1,1))
local aprt7=part(1,Avatar,0,0.5,BrickColor.new("Black"),"Claw2",vt(1,1,1))
local aprt8=part(1,Avatar,0,0.5,BrickColor.new("Black"),"Claw2.1",vt(1,1,1))
local aprt9=part(1,Avatar,0,0.5,BrickColor.new("Black"),"Claw3",vt(1,1,1))
local aprt10=part(1,Avatar,0,0.5,BrickColor.new("Black"),"Claw3.1",vt(1,1,1))
local aprt11=part(1,Avatar,0,1,BrickColor.new("Black"),"Left Arm Hit",vt(1,1,1))
 
local arootmsh=mesh("BlockMesh",aroot,"","",vt(0,0,0),vt(2,2,1))
local amsh1=mesh("BlockMesh",aprt1,"","",vt(0,0,0),vt(4,4,2))
local amsh2=mesh("SpecialMesh",aprt2,"Head","",vt(0,0,0),vt(2.5,2,2.5))
local amsh3=mesh("BlockMesh",aprt3,"","",vt(0,0,0),vt(2,4,2))
local amsh4=mesh("BlockMesh",aprt4,"","",vt(0,0,0),vt(2,4,2))
local amsh5=mesh("BlockMesh",aprt5,"","",vt(0,0,0),vt(0.3,1.5,0.1))
local amsh6=mesh("SpecialMesh",aprt6,"Wedge","",vt(0,0,0),vt(0.1,0.3,0.3))
local amsh7=mesh("BlockMesh",aprt7,"","",vt(0,0,0),vt(0.3,1.5,0.1))
local amsh8=mesh("SpecialMesh",aprt8,"Wedge","",vt(0,0,0),vt(0.1,0.3,0.3))
local amsh9=mesh("BlockMesh",aprt9,"","",vt(0,0,0),vt(0.3,1.5,0.1))
local amsh10=mesh("SpecialMesh",aprt10,"Wedge","",vt(0,0,0),vt(0.1,0.3,0.3))
local amsh11=mesh("BlockMesh",aprt11,"","",vt(0,0,0),vt(1,1,1))
Avatar:BreakJoints()
 
local arwld=weld(aroot,aroot,RootPart,euler(0,0,0)*cf(0,0,0))
local awld1=weld(aprt1,aprt1,aroot,euler(0,0,0)*cf(0,-3,-2))
local awld2=weld(aprt2,aprt2,aprt1,neckoav)
awld2.C1=neckoav2
local awld3=weld(aprt3,aprt1,aprt3,cf(3,1,0)*euler(0,0,0))
awld3.C1=cf(0,1,0)
local awld4=weld(aprt4,aprt1,aprt4,cf(-3,1,0)*euler(0,0,0))
awld4.C1=cf(0,1,0)
local awld5=weld(aprt5,aprt5,aprt3,euler(0,0,0)*cf(-0.8,2.5,-0.6))
local awld6=weld(aprt6,aprt6,aprt5,euler(0,-1.57,3.14)*cf(0,1.05,0))
local awld7=weld(aprt7,aprt7,aprt3,euler(0,0,0)*cf(-0.8,2.5,0))
local awld8=weld(aprt8,aprt8,aprt7,euler(0,-1.57,3.14)*cf(0,1.05,0))
local awld9=weld(aprt9,aprt9,aprt3,euler(0,0,0)*cf(-0.8,2.5,0.6))
local awld10=weld(aprt10,aprt10,aprt9,euler(0,-1.57,3.14)*cf(0,1.05,0))
local awld11=weld(aprt11,aprt11,aprt4,euler(1.57,0,0)*cf(0,2,0))
 
numb=-1.8
numb2=0.8
for i=1,5 do
local aprt12=part(1,Avatar,0,numb2,BrickColor.new("Black"),"Left Arm Fade",vt(1,1,1))
local amsh12=mesh("BlockMesh",aprt12,"","",vt(0,0,0),vt(2,1,2))
local awld12=weld(aprt12,aprt12,aprt4,cf(0,numb,0))
numb=numb+1.2
numb2=numb2+0.05
end
 
local aprt14=part(1,Avatar,0,0.5,BrickColor.new("Black"),"Torso Fade1",vt(1,1,1))
local amsh14=mesh("BlockMesh",aprt14,"","",vt(0,0,0),vt(4,2,2))
local awld14=weld(aprt14,aprt14,aprt1,cf(0,-1.2,0))
numb=0.2
numb2=0.8
for i=1,5 do
local aprt13=part(1,Avatar,0,numb2,BrickColor.new("Black"),"Torso Fade2",vt(1,1,1))
local amsh13=mesh("BlockMesh",aprt13,"","",vt(0,0,0),vt(4,0.5,2))
local awld13=weld(aprt13,aprt13,aprt1,cf(0,numb,0))
numb=numb+0.5
numb2=numb2+0.05
end
 
coroutine.resume(coroutine.create(function()
wait(1)
for i=0,1,0.1 do
wait()
awld2.C0=neckoav*euler(-0.5*i,0,0)
awld3.C0=cf(3,1,0)*euler(-0.5*i,0,0)
awld3.C1=cf(0,1,0)*euler(0,0,-0.7*i)
awld4.C0=cf(-3,1,0)*euler(-0.5*i,0,0)
awld4.C1=cf(0,1,0)*euler(0,0,0.7*i)
end
end))
 
shadowfollowing=false
shadowgyro="TrueAim"
aroot.CFrame=Torso.CFrame
BodPos=Instance.new("BodyPosition")
BodPos.P=50000
BodPos.D=1000
BodPos.maxForce=Vector3.new(math.huge,math.huge,math.huge)
BodPos.position=Torso.Position
BodPos.Parent=aroot
BodPos.Parent=nil
BodGy = it("BodyGyro") 
BodGy.maxTorque = vt(math.huge,math.huge,math.huge) 
BodGy.P = 20e+003 
BodGy.Parent=aroot
BodGy.cframe=Torso.CFrame
BodGy.Parent=nil
coroutine.resume(coroutine.create(function(BodyyPosition,BodyGyro)
while true do
wait()
Avatar.Parent=modelzorz
--awld1.C0=euler(0,0,0)*cf(0,-3,-2)
if AvatarMode=="Follow" then
BodyyPosition.P=50000
BodyyPosition.D=1000
BodyyPosition.position=RootPart.Position
BodyGyro.cframe=Torso.CFrame
--[[elseif AvatarMode=="Aim" then
BodPos.P=1000
BodPos.D=100
coroutine.resume(coroutine.create(function(Gairo)
while AvatarMode=="Aim" do
wait()
if TargetTorso.Parent==nil then
AvatarMode="Follow"
end
if shadowgyro=="TrueAim" then
Gairo.cframe=cf(aroot.Position,TargetTorso.Position)
elseif shadowgyro=="YAim" then
Gairo.cframe=cf(aroot.Position,TargetTorso.Position)
end
end
end),BodyGyro)
shadowdebounce=false
if math.random(1,2)==1 then
shadowfollowing=true
BodyPosition.position=TargetTorso.Position
shadowgyro="TrueAim"
shadowcon=aroot.Touched:connect(function(hit) 
shadowattack=true
if hit==TargetTorso then
if shadowdebounce==false then
shadowdebounce=true
shadowgyro="YAim"
shadowfollowing=false
so("http://www.roblox.com/asset/?id=28144425",aprt3,1,1) 
avLastPoint=aprt6.CFrame*CFrame.new(0,aprt6.Size.Y/7,0)
avLastPoint2=aprt8.CFrame*CFrame.new(0,aprt8.Size.Y/7,0)
avLastPoint3=aprt10.CFrame*CFrame.new(0,aprt10.Size.Y/7,0)
avcon1=aprt6.Touched:connect(function(hit) Damagefunc(hit,20,40,math.random(50,80),"Knockdown",aprt1) end) 
avcon2=aprt8.Touched:connect(function(hit) Damagefunc(hit,20,40,math.random(50,80),"Knockdown",aprt1) end) 
avcon3=aprt10.Touched:connect(function(hit) Damagefunc(hit,20,40,math.random(50,80),"Knockdown",aprt1) end) 
for i=0,1,0.1 do
wait()
awld1.C0=euler(0,-1*i,0)*cf(0,-3,-2)
awld3.C0=cf(3-2*i,1,-0.5*i)*euler(-0.5+2.5*i,0,0)
awld3.C1=cf(0,1,0)*euler(0,1*i,-0.7+1.4*i)
AvatarClawEffect()
end
avcon1:disconnect()
avcon2:disconnect()
avcon3:disconnect()
wait(0.5)
for i=0,1,0.1 do
wait()
awld1.C0=euler(0,-1+1*i,0)*cf(0,-3,-2)
awld3.C0=cf(1+2*i,1,-0.5+0.5*i)*euler(2-2.5*i,0,0)
awld3.C1=cf(0,1,0)*euler(0,1-1*i,0.7-1.4*i)
end
end
end
shadowattack=false
end) 
coroutine.resume(coroutine.create(function(Connect)
while shadowgyro=="TrueAim" do
wait()
end
print("DISCONNECT")
Connect:disconnect()
end),shadowcon)
coroutine.resume(coroutine.create(function()
wait(5)
aroot.CFrame=TargetTorso.CFrame
end))
while shadowfollowing==true do
wait()
BodyPosition.position=TargetTorso.Position
end
else
shadowgyro="TrueAim"
shadowattack=true
for i=0,1,0.1 do
wait()
local pos5 = Vector3.new(TargetTorso.Position.X,aprt11.Position.Y,TargetTorso.Position.Z)
offset=(aprt11.Position.y-TargetTorso.Position.Y)/60
mag=(aprt11.Position-TargetTorso.Position).magnitude/80
offset=offset/mag 
print(offset)
awld1.C0=euler(0,1.57*i,0)*cf(0,-3,-2)
awld4.C0=cf(-3,1,0)*euler(-0.5+0.5*i,0,(-1.57+offset)*i)
awld4.C1=cf(0,1,0)*euler(0,0,0.7-0.7*i)
end
wait(0.3)
shoottrail(aprt11,0)
for i=1,6 do
wait(0.1)
shoottrail(aprt11,10)
end
for i=0,1,0.1 do
wait()
awld1.C0=euler(0,1.57-1.57*i,0)*cf(0,-3,-2)
awld4.C0=cf(-3,1,0)*euler(-0.5*i,0,(-1.57+offset)+(1.57-offset)*i)
awld4.C1=cf(0,1,0)*euler(0,0,0.7*i)
end
shadowattack=false
end
wait(2)]]
else
BodyyPosition.P=50000
BodyyPosition.D=1000
end
end
end),BodPos,BodGy)
 
if (script.Parent.className ~= "HopperBin") then 
Tool = Instance.new("HopperBin") 
Tool.Parent = Backpack 
Tool.Name = "Warden Claws" 
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
wait() 
sou:play() 
wait(6) 
sou:Remove() 
end))
end
 
function hideanim() 
equipped=false
Torso.Neck.C0=necko
RootJoint.C0=RootCF
end 
 
function equipanim() 
equipped=true
Torso.Neck.C0=necko*euler(0.2,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(0,1.57,-0.2)
LW.C1=cf(0,0.5,0)*euler(-0.2,0,0) 
RW.C0=cf(1.5,0.5,0)*euler(0,-1.57,0.2)
RW.C1=cf(0,0.5,0)*euler(-0.2,0,0)
end 
 
function attackone()
attack=true
for i=0,1,0.1 do
wait()
RootJoint.C0=RootCF*euler(0,0,0.8*i)
Torso.Neck.C0=necko*euler(0.2,0,-0.8*i)
LW.C0=cf(-1.5,0.5,0)*euler(0,1.57,-0.2+0.2*i)
LW.C1=cf(0,0.5,0)*euler(-0.2-1.37*i,0,0) 
RW.C0=cf(1.5,0.5,0)*euler(0,-1.57,0.2-0.2*i)
RW.C1=cf(0,0.5,0)*euler(-0.2-0.2*i,0,0)
end
LastPoint=prt2.CFrame*CFrame.new(0,prt2.Size.Y/7,0)
LastPoint2=prt4.CFrame*CFrame.new(0,prt4.Size.Y/7,0)
LastPoint3=prt6.CFrame*CFrame.new(0,prt6.Size.Y/7,0)
--so("http://www.roblox.com/asset/?id=28144425",prt4,1,1.5) 
con1=prt4.Touched:connect(function(hit) Damagefunc(hit,10,20,nil,"Snare") end) 
so("http://www.roblox.com/Asset?ID=92597369",prt4,1,1) 
for i=0,1,0.2 do
wait()
RootJoint.C0=RootCF*euler(0,0,0.8-2*i)
Torso.Neck.C0=necko*euler(0.2,0,-0.8+2*i)
LW.C0=cf(-1.5,0.5,0)*euler(0,1.57-0.2*i,0)
LW.C1=cf(0,0.5,0)*euler(-1.57,0,0) 
RW.C0=cf(1.5,0.5,0)*euler(0,-1.57,0)
RW.C1=cf(0,0.5,0)*euler(-0.4,0,0)
LeftClawEffect()
end
for i=0,1,0.2 do
wait()
RootJoint.C0=RootCF*euler(0,0,-1.2-0.3*i)
Torso.Neck.C0=necko*euler(0.2,0,1.2+0.3*i)
LW.C0=cf(-1.5,0.5,0)*euler(0,1.37-0.17*i,0)
LW.C1=cf(0,0.5,0)*euler(-1.57,0,0) 
RW.C0=cf(1.5,0.5,0)*euler(0,-1.57,0)
RW.C1=cf(0,0.5,0)*euler(-0.4,0,0)
LeftClawEffect()
end
con1:disconnect()
attack=false
end
 
function attacktwo()
attack=true
rLastPoint=prt8.CFrame*CFrame.new(0,prt8.Size.Y/7,0)
rLastPoint2=prt10.CFrame*CFrame.new(0,prt10.Size.Y/7,0)
rLastPoint3=prt12.CFrame*CFrame.new(0,prt12.Size.Y/7,0)
con1=prt10.Touched:connect(function(hit) Damagefunc(hit,5,30,nil,"Snare") end) 
so("http://www.roblox.com/Asset?ID=92597369",prt10,1,0.8) 
for i=0,1,0.2 do
wait()
RootJoint.C0=RootCF*euler(0,0,-1.5+2*i)
Torso.Neck.C0=necko*euler(0.2,0,1.5-2*i)
LW.C0=cf(-1.5,0.5,0)*euler(0,1.2,0)
LW.C1=cf(0,0.5,0)*euler(-1.57,0,0) 
RW.C0=cf(1.5-0.5*i,0.5,-0.5*i)*euler(0,-1.57-1*i,-2*i)
RW.C1=cf(0,0.5,0)*euler(-0.4+1*i,0,0)
RightClawEffect()
end
con1:disconnect()
attack=false
end
 
function attackthree()
attack=true
for i=0,1,0.2 do
wait()
RootJoint.C0=RootCF*euler(0,0,0.5-0.5*i)
Torso.Neck.C0=necko*euler(0.2,0,-0.5+0.5*i)
LW.C0=cf(-1.5,0.5,0)*euler(0,1.2+0.37*i,0)
LW.C1=cf(0,0.5,0)*euler(-1.57,0,0) 
RW.C0=cf(1+0.5*i,0.5,-0.5+0.5*i)*euler(0,-2.57+1*i,-2+2*i)
RW.C1=cf(0,0.5,0)*euler(0.6-2.17*i,0,3.14*i)
end
LastPoint=prt2.CFrame*CFrame.new(0,prt2.Size.Y/7,0)
LastPoint2=prt4.CFrame*CFrame.new(0,prt4.Size.Y/7,0)
LastPoint3=prt6.CFrame*CFrame.new(0,prt6.Size.Y/7,0)
rLastPoint=prt8.CFrame*CFrame.new(0,prt8.Size.Y/7,0)
rLastPoint2=prt10.CFrame*CFrame.new(0,prt10.Size.Y/7,0)
rLastPoint3=prt12.CFrame*CFrame.new(0,prt12.Size.Y/7,0)
con1=prt4.Touched:connect(function(hit) Damagefunc(hit,5,10,nil,"Snare") end) 
con2=prt10.Touched:connect(function(hit) Damagefunc(hit,5,10,nil,"Snare") end) 
for i=1,2 do
so("http://www.roblox.com/Asset?ID=92597369",Torso,1,1.1) 
for i=0,1,0.3 do
wait()
RootJoint.C0=RootCF*euler(0,0,-3.14*i)
LeftClawEffect()
RightClawEffect()
end
so("http://www.roblox.com/Asset?ID=92597369",Torso,1,1.2) 
for i=0,1,0.3 do
wait()
RootJoint.C0=RootCF*euler(0,0,-3.14-3.14*i)
LeftClawEffect()
RightClawEffect()
end
end
con1:disconnect()
con2:disconnect()
RootJoint.C0=RootCF*euler(0,0,0)
attack=false
end
 
function LifeSteal()
attack=true
lifestolen=false
for i=0,1,0.1 do
wait()
RootJoint.C0=RootCF*euler(0,0,1*i)
Torso.Neck.C0=necko*euler(0.2,0,-1*i)
LW.C0=cf(-1.5+0.5*i,0.5,-0.5*i)*euler(0,1.57-3.14*i,-0.2+0.2*i)
LW.C1=cf(0,0.5,0)*euler(-0.2-1*i,0,0.2*i) 
RW.C0=cf(1.5,0.5,0)*euler(0,-1.57,0.2)
RW.C1=cf(0,0.5,0)*euler(-0.2-1*i,0,0)
end
wait(0.1)
con1=prt4.Touched:connect(function(hit) Damagefunc(hit,20,30,0,"LifeSteal",nil) end) 
LastPoint=prt2.CFrame*CFrame.new(0,prt2.Size.Y/7,0)
LastPoint2=prt4.CFrame*CFrame.new(0,prt4.Size.Y/7,0)
LastPoint3=prt6.CFrame*CFrame.new(0,prt6.Size.Y/7,0)
so("http://www.roblox.com/Asset?ID=92597369",prt4,1,1.2) 
for i=0,1,0.2 do
wait()
RootJoint.C0=RootCF*cf(0,-5*i,0)*euler(0,0,1-2.57*i)
Torso.Neck.C0=necko*euler(0.2,0,-1+2.57*i)
LW.C0=cf(-1-0.5*i,0.5,-0.5+0.5*i)*euler(0,-1.57,0)
LW.C1=cf(0,0.5,0)*euler(-1.2-0.37*i,-3.14*i,0.2-0.2*i) 
RW.C0=cf(1.5,0.5,0)*euler(0,-1.57,0.2)
RW.C1=cf(0,0.5,0)*euler(-1.2,0,0)
LeftClawEffect()
end
con1:disconnect()
for i=1,5 do
if combomove==false then
wait(0.1)
end
end
if lifestolen==false then
cancombo=false
for i=0,1,0.1 do
wait()
RootJoint.C0=RootCF*cf(0,-5+5*i,0)*euler(0,0,-1.57+1.57*i)
Torso.Neck.C0=necko*euler(0.2,0,1.57-1.57*i)
LW.C0=cf(-1.5,0.5,0)*euler(0,-1.57+3.14*i,-0.2*i)
LW.C1=cf(0,0.5,0)*euler(-1.57+1.37*i,-3.14+3.14*i,0) 
RW.C0=cf(1.5,0.5,0)*euler(0,-1.57,0.2)
RW.C1=cf(0,0.5,0)*euler(-1.2+1*i,0,0)
end
attack=false
else
cancombo=false
if combomove==false then
for i=0,1,0.2 do
wait()
RootJoint.C0=RootCF*cf(0,-5+5*i,0)*euler(0,0,-1.57+2.57*i)
Torso.Neck.C0=necko*euler(0.2,0,1.57-2.57*i)
LW.C0=cf(-1.5+0.5*i,0.5,-0.5*i)*euler(0,-1.57,0)
LW.C1=cf(0,0.5,0)*euler(-1.57,-3.14+2.57*i,0) 
RW.C0=cf(1.5,0.5,0)*euler(0,-1.57,0.2)
RW.C1=cf(0,0.5,0)*euler(-1.2,0,0)
LeftClawEffectRed()
end
wait(0.5)
for i=0,1,0.1 do
wait()
RootJoint.C0=RootCF*euler(0,0,1-1*i)
Torso.Neck.C0=necko*euler(0.2,0,-1+1*i)
LW.C0=cf(-1-0.5*i,0.5,-0.5+0.5*i)*euler(0,-1.57+3.14*i,-0.2*i)
LW.C1=cf(0,0.5,0)*euler(-1.2+1*i,-0.57+0.57*i,0.2-0.2*i) 
RW.C0=cf(1.5,0.5,0)*euler(0,-1.57,0.2)
RW.C1=cf(0,0.5,0)*euler(-1.2+1*i,0,0)
end
end
attack=false
end
end
 
function LifeStealCombo()
attack=true
con2=prt10.Touched:connect(function(hit) Damagefunc(hit,10,20,60,"Knockdown",Torso) end) 
rLastPoint=prt8.CFrame*CFrame.new(0,prt8.Size.Y/7,0)
rLastPoint2=prt10.CFrame*CFrame.new(0,prt10.Size.Y/7,0)
rLastPoint3=prt12.CFrame*CFrame.new(0,prt12.Size.Y/7,0)
so("http://www.roblox.com/Asset?ID=92597369",prt10,1,1.4) 
for i=0,1,0.2 do
wait()
attack=true
RootJoint.C0=RootCF*cf(0,-5,0)*euler(0,0,-1.57+3.14*i)
Torso.Neck.C0=necko*euler(0.2,0,1.57)
LW.C0=cf(-1.5,0.5,0)*euler(0,-1.57,0)
LW.C1=cf(0,0.5,0)*euler(-1.57+1.37*i,-3.14,0) 
RW.C0=cf(1.5,0.5,0)*euler(0,-1.57,0.2-0.2*i)
RW.C1=cf(0,0.5,0)*euler(-1.2-0.37*i,0,0)
RightClawEffect()
end
for i=0,1,0.2 do
wait()
attack=true
RootJoint.C0=RootCF*cf(0,-5+2*i,0)*euler(0,0,1.57+1.57*i)
Torso.Neck.C0=necko*euler(0.2,0,1.57-1.57*i)
LW.C0=cf(-1.5,0.5,0)*euler(0,-1.57,0)
LW.C1=cf(0,0.5,0)*euler(-0.2,-3.14,0) 
RW.C0=cf(1.5,0.5,0)*euler(0,-1.57,0)
RW.C1=cf(0,0.5,0)*euler(-1.57,0,0)
RightClawEffect()
end
con2:disconnect()
for i=0,1,0.1 do
wait()
RootJoint.C0=RootCF*cf(0,-3+3*i,0)*euler(0,0,3.14+3.14*i)
Torso.Neck.C0=necko*euler(0.2,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(0,-1.57,0)
LW.C1=cf(0,0.5,0)*euler(-0.2,-3.14,0) 
RW.C0=cf(1.5,0.5,0)*euler(0,-1.57,0)
RW.C1=cf(0,0.5,0)*euler(-1.57+1.37*i,0,0)
end
wait(0.5)
combomove=false
attack=false
end
 
function Raise()
attack=true
for i=0,1,0.1 do
wait()
RootJoint.C0=RootCF
Torso.Neck.C0=necko*euler(0.2+0.1*i,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(0,1.57,-0.2-0.1*i)
LW.C1=cf(0,0.5,0)*euler(-0.2+0.1*i,0,0) 
RW.C0=cf(1.5,0.5,0)*euler(0,-1.57,0.2+0.1*i)
RW.C1=cf(0,0.5,0)*euler(-0.2+0.1*i,0,0)
end
LastPoint=prt2.CFrame*CFrame.new(0,prt2.Size.Y/7,0)
LastPoint2=prt4.CFrame*CFrame.new(0,prt4.Size.Y/7,0)
LastPoint3=prt6.CFrame*CFrame.new(0,prt6.Size.Y/7,0)
rLastPoint=prt8.CFrame*CFrame.new(0,prt8.Size.Y/7,0)
rLastPoint2=prt10.CFrame*CFrame.new(0,prt10.Size.Y/7,0)
rLastPoint3=prt12.CFrame*CFrame.new(0,prt12.Size.Y/7,0)
con1=prt4.Touched:connect(function(hit) Damagefunc(hit,5,10,0,"Up",Torso) end) 
con2=prt10.Touched:connect(function(hit) Damagefunc(hit,5,10,0,"Up",Torso) end) 
so("http://www.roblox.com/Asset?ID=92597369",Torso,1,0.9) 
for i=0,1,0.2 do
wait()
RootJoint.C0=RootCF
Torso.Neck.C0=necko*euler(0.3-0.6*i,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(0,1.57,-0.3+2.8*i)
LW.C1=cf(0,0.5,0)*euler(-0.1+0.1*i,0,0) 
RW.C0=cf(1.5,0.5,0)*euler(0,-1.57,0.3-2.8*i)
RW.C1=cf(0,0.5,0)*euler(-0.1+0.1*i,0,0)
LeftClawEffect()
RightClawEffect()
end
con1:disconnect()
con2:disconnect()
for i=0,1,0.2 do
wait()
Torso.Neck.C0=necko*euler(-0.3-0.1*i,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(0,1.57,2.5+0.1*i)
LW.C1=cf(0,0.5,0)*euler(0,0,0) 
RW.C0=cf(1.5,0.5,0)*euler(0,-1.57,-2.5-0.1*i)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LeftClawEffect()
RightClawEffect()
end
cancombo=true
for i=1,2 do
if combomove==false then
wait(0.1)
end
end
if combomove==false then
for i=0,1,0.1 do
wait()
Torso.Neck.C0=necko*euler(-0.4+0.6*i,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(0,1.57,2.6-2.8*i)
LW.C1=cf(0,0.5,0)*euler(-0.2*i,0,0) 
RW.C0=cf(1.5,0.5,0)*euler(0,-1.57,-2.6+2.8*i)
RW.C1=cf(0,0.5,0)*euler(-0.2*i,0,0)
end
attack=false
cancombo=false
end
end
 
function RaiseCombo()
attack=true
bp2=Instance.new("BodyPosition")
bp2.P=2000
bp2.D=100
bp2.maxForce=Vector3.new(math.huge,math.huge,math.huge)
bp2.position=Torso.Position+vt(0,20,0)
bp2.Parent=Torso
for i=0,1,0.2 do
wait()
attack=true
Torso.Neck.C0=necko*euler(-0.4,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(0,1.57-3.14*i,2.6)
LW.C1=cf(0,0.5,0)*euler(0,0,0) 
RW.C0=cf(1.5,0.5,0)*euler(0,-1.57+3.14*i,-2.6)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
end
bp2.Parent=nil
LastPoint=prt2.CFrame*CFrame.new(0,prt2.Size.Y/7,0)
LastPoint2=prt4.CFrame*CFrame.new(0,prt4.Size.Y/7,0)
LastPoint3=prt6.CFrame*CFrame.new(0,prt6.Size.Y/7,0)
rLastPoint=prt8.CFrame*CFrame.new(0,prt8.Size.Y/7,0)
rLastPoint2=prt10.CFrame*CFrame.new(0,prt10.Size.Y/7,0)
rLastPoint3=prt12.CFrame*CFrame.new(0,prt12.Size.Y/7,0)
con1=prt4.Touched:connect(function(hit) Damagefunc(hit,10,15,50,"Knockdown",Torso) end) 
con2=prt10.Touched:connect(function(hit) Damagefunc(hit,10,15,50,"Knockdown",Torso) end) 
so("http://www.roblox.com/Asset?ID=92597369",Torso,1,0.7) 
for i=0,1,0.1 do
wait()
attack=true
Torso.Neck.C0=necko*euler(-0.4+0.6*i,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(0,-1.57,2.6+4*i)
LW.C1=cf(0,0.5,0)*euler(0,0,0) 
RW.C0=cf(1.5,0.5,0)*euler(0,1.57,-2.6-4*i)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LeftClawEffect()
RightClawEffect()
end
con1:disconnect()
con2:disconnect()
for i=0,1,0.1 do
wait()
attack=true
Torso.Neck.C0=necko*euler(0.2,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(0,-1.57+3.14*i,0.1-0.3*i)
LW.C1=cf(0,0.5,0)*euler(-0.2*i,0,0) 
RW.C0=cf(1.5,0.5,0)*euler(0,1.57-3.14*i,-0.1+0.3*i)
RW.C1=cf(0,0.5,0)*euler(-0.2*i,0,0)
end
wait(0.5)
combomove=false
attack=false
end
 
function ChangeAvatarMode(Mode)
attack=true
for i=0,1,0.1 do
wait()
Torso.Neck.C0=necko*euler(0.2-0.8*i,0,0)
LW.C0=cf(-1.5+0.5*i,0.5,-0.5*i)*euler(3*i,1.57-1.57*i,-0.2+0.8*i)
LW.C1=cf(0,0.5,0)*euler(-0.2+0.2*i,0,0) 
RW.C0=cf(1.5-0.5*i,0.5,-0.5*i)*euler(3*i,-1.57+1.57*i,0.2-0.8*i)
RW.C1=cf(0,0.5,0)*euler(-0.2+0.2*i,0,0)
end
MagicCircle(BrickColor.new("Black"),prt4.CFrame,1,1,1,0.5,0.5,0.5,0.05)
MagicCircle(BrickColor.new("Black"),prt10.CFrame,1,1,1,0.5,0.5,0.5,0.05)
AvatarMode=Mode
wait(0.5)
for i=0,1,0.1 do
wait()
Torso.Neck.C0=necko*euler(-0.6+0.8*i,0,0)
LW.C0=cf(-1-0.5*i,0.5,-0.5+0.5*i)*euler(3-3*i,1.57*i,0.6-0.8*i)
LW.C1=cf(0,0.5,0)*euler(-0.2*i,0,0) 
RW.C0=cf(1+0.5*i,0.5,-0.5+0.5*i)*euler(3-3*i,-1.57*i,-0.6+0.8*i)
RW.C1=cf(0,0.5,0)*euler(-0.2*i,0,0)
end
attack=false
end
 
function ShadowSlash()
shadowattack=true
so("http://www.roblox.com/asset/?id=28144425",aprt3,1,1) 
avLastPoint=aprt6.CFrame*CFrame.new(0,aprt6.Size.Y/7,0)
avLastPoint2=aprt8.CFrame*CFrame.new(0,aprt8.Size.Y/7,0)
avLastPoint3=aprt10.CFrame*CFrame.new(0,aprt10.Size.Y/7,0)
avcon1=aprt6.Touched:connect(function(hit) Damagefunc(hit,20,40,math.random(50,80),"Knockdown",aprt1) end) 
avcon2=aprt8.Touched:connect(function(hit) Damagefunc(hit,20,40,math.random(50,80),"Knockdown",aprt1) end) 
avcon3=aprt10.Touched:connect(function(hit) Damagefunc(hit,20,40,math.random(50,80),"Knockdown",aprt1) end) 
for i=0,1,0.1 do
wait()
awld1.C0=euler(0,-1*i,0)*cf(0,-3,-2)
awld3.C0=cf(3-2*i,1,-0.5*i)*euler(-0.5+2.5*i,0,0)
awld3.C1=cf(0,1,0)*euler(0,1*i,-0.7+1.4*i)
AvatarClawEffect()
end
avcon1:disconnect()
avcon2:disconnect()
avcon3:disconnect()
wait(0.5)
for i=0,1,0.1 do
wait()
awld1.C0=euler(0,-1+1*i,0)*cf(0,-3,-2)
awld3.C0=cf(1+2*i,1,-0.5+0.5*i)*euler(2-2.5*i,0,0)
awld3.C1=cf(0,1,0)*euler(0,1-1*i,0.7-1.4*i)
end
shadowattack=false
end
 
function ShadowDash()
shadowattack=true
for i=0,1,0.1 do
wait()
awld1.C0=euler(0,-1*i,0)*cf(0,-3,-2)
awld3.C0=cf(3,1,0)*euler(-0.5+0.5*i,0,0)
awld3.C1=cf(0,1,0)*euler(0,2.5*i,-0.7+0.5*i)
end
so("http://www.roblox.com/asset/?id=28144425",aprt3,1,0.9) 
avLastPoint=aprt6.CFrame*CFrame.new(0,aprt6.Size.Y/7,0)
avLastPoint2=aprt8.CFrame*CFrame.new(0,aprt8.Size.Y/7,0)
avLastPoint3=aprt10.CFrame*CFrame.new(0,aprt10.Size.Y/7,0)
avcon1=aprt6.Touched:connect(function(hit) Damagefunc(hit,20,30,math.random(50,80),"Snare",aprt1) end) 
avcon2=aprt8.Touched:connect(function(hit) Damagefunc(hit,20,30,math.random(50,80),"Snare",aprt1) end) 
avcon3=aprt10.Touched:connect(function(hit) Damagefunc(hit,20,30,math.random(50,80),"Snare",aprt1) end) 
for i=0,1,0.1 do
wait()
awld1.C0=euler(0,-1-0.6*i,0)*cf(0,-3+1*i,-2+6*i)
awld3.C0=cf(3,1,0)*euler(0,0,0)
awld3.C1=cf(0,1,0)*euler(0.5*i,2.5+0.5*i,-0.2-1.5*i)
AvatarClawEffect()
end
avcon1:disconnect()
avcon2:disconnect()
avcon3:disconnect()
wait(0.2)
for i=0,1,0.1 do
wait()
awld1.C0=euler(0,-1.6+1.6*i,0)*cf(0,-2-1*i,-2+6-6*i)
awld3.C0=cf(3,1,0)*euler(-0.5*i,0,0)
awld3.C1=cf(0,1,0)*euler(0.5-0.5*i,3-3*i,-1.7+1*i)
end
shadowattack=false
end
 
function ShadowExplode()
shadowattack=true
for i=0,1,0.1 do
wait()
awld3.C0=cf(3,1,-0.5*i)*euler(-0.5+1.7*i,0,0)
awld3.C1=cf(0,1,0)*euler(0,0,-0.7+1.4*i)
awld4.C0=cf(-3,1,-0.5*i)*euler(-0.5+1.7*i,0,0)
awld4.C1=cf(0,1,0)*euler(0,0,0.7-1.4*i)
end
local boom=part(3,workspace,0,0,BrickColor.new("Black"),"Effect",vt(0.5,0.5,0.5))
boom.Anchored=true
boom.CFrame=aprt1.CFrame*cf(0,0,-4)
so("http://roblox.com/asset/?id=10209624",boom,0.1,.75) 
so("http://www.roblox.com/asset/?id=2101137",boom,1,0.3) 
--s.SoundId="http://www.roblox.com/asset/?id=3264793"
game:GetService("Debris"):AddItem(boom,10)
coroutine.resume(coroutine.create(function()
for i=0,1,0.01 do
wait()
awld3.C0=cf(3,1+0.5*i,-0.5+0.5*i)*euler(1.5,0,0)
awld3.C1=cf(0,1,0)*euler(0,0,0.7-2.27*i)
awld4.C0=cf(-3,1+0.5*i,-0.5+0.5*i)*euler(1.5,0,0)
awld4.C1=cf(0,1,0)*euler(0,0,-0.7+2.27*i)
end
end))
numb=0.01
for i=1,100 do
wait()
MagicCircle(BrickColor.new("Black"),boom.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))*cf(0,5,0),1,1,1,0.02,0.5,0.02,0.05)
MagicBlock(BrickColor.new("Black"),boom.CFrame,1,1,1,numb,numb,numb)
numb=numb+0.01
end
so("http://www.roblox.com/asset/?id=3264793",boom,0.5,0.5) 
so("http://roblox.com/asset/?id=144844438",boom,1,1) 
so("http://www.roblox.com/asset/?id=2974249",boom,1,0.7) 
shadowattack=false
end
 
function ShadowShoot()
shadowattack=true
for i=0,1,0.1 do
wait()
local pos5 = Vector3.new(MMouse.Hit.p.x,aroot.Position.Y,MMouse.Hit.p.z)
offset=(aroot.Position.y-MMouse.Hit.p.y)/60
mag=(aroot.Position-MMouse.Hit.p).magnitude/80
offset=offset/mag 
awld1.C0=euler(0,1.57*i,0)*cf(0,-3,-2)
awld4.C0=cf(-3,1,0)*euler(-0.5+0.5*i,0,(-1.57+offset)*i)
awld4.C1=cf(0,1,0)*euler(0,0,0.7-0.7*i)
end
wait(0.1)
shoottrail(aprt11,0)
for i=0,1,0.1 do
wait()
awld1.C0=euler(0,1.57-1.57*i,0)*cf(0,-3,-2)
awld4.C0=cf(-3,1,0)*euler(-0.5*i,0,(-1.57+offset)+(1.57-offset)*i)
awld4.C1=cf(0,1,0)*euler(0,0,0.7*i)
end
shadowattack=false
end
 
function ShadowWave()
shadowattack=true
for i=0,1,0.1 do
wait()
awld1.C0=euler(0,1.57*i,0)*cf(0,-3,-2)
awld4.C0=cf(-3,1,0)*euler(-0.5+0.5*i,0,-1*i)
awld4.C1=cf(0,1,0)*euler(0,0,0.7-0.7*i)
end
local bprt=part(3,workspace,0,1,BrickColor.new("Black"),"Effect",vt(0.5,0.5,0.5))
bprt.Anchored=true
bprt.CFrame=Torso.CFrame*cf(0,-2.7,-5)
local bmsh=mesh("CylinderMesh",bprt,"","",vt(0,0,0),vt(5,1,5))
coroutine.resume(coroutine.create(function(Part,Mesh)
for i=1,0.5,-0.1 do
wait()
Part.Transparency=i
end
end),bprt)
game:GetService("Debris"):AddItem(bprt,5)
for i=0,1,0.05 do
wait()
awld1.C0=euler(0,1.57,0)*cf(0,-3,-2)
awld4.C0=cf(-3,1+1*i,0)*euler(0,0,-1-1*i)
awld4.C1=cf(0,1,0)*euler(0,0,0)
end
shadowattack=false
end
 
function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 
 
function effect(Color,Ref,LP,P1,returnn)
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
effectsg.Parent = workspace
effectsmsh.Parent = effectsg
effectsg.BrickColor = BrickColor.new(Color)
effectsg.Reflectance = Ref
local point1 = P1
local mg = (LP.p - point1.p).magnitude
effectsg.Size = Vector3.new(0.5,mg,0.5)
effectsg.CFrame = CFrame.new((LP.p+point1.p)/2,point1.p) * CFrame.Angles(math.rad(90),0,0)
effectsmsh.Scale = Vector3.new(0.2,1,0.2)
game:GetService("Debris"):AddItem(effectsg,2)
if returnn then return effectsg end
coroutine.resume(coroutine.create(function(Part,Mesh)
if not returnn then
for i = 0 , 1 , 0.1 do
wait()
Part.Transparency = 1*i
Mesh.Scale = Vector3.new(0.2-0.2*i,1,0.2-0.2*i)
end
wait()
Part.Parent = nil
end
end),effectsg,effectsmsh)
end
 
function LeftClawEffect()
local Point=prt2.CFrame*CFrame.new(0,prt2.Size.Y/7,0)
effect("Black",0.5,LastPoint,Point)
LastPoint=Point
local Point2=prt4.CFrame*CFrame.new(0,prt4.Size.Y/7,0)
effect("Black",0.5,LastPoint2,Point2)
LastPoint2=Point2
local Point3=prt6.CFrame*CFrame.new(0,prt6.Size.Y/7,0)
effect("Black",0.5,LastPoint3,Point3)
LastPoint3=Point3
end
 
function LeftClawEffectRed()
local Point=prt2.CFrame*CFrame.new(0,prt2.Size.Y/7,0)
effect("Bright red",0.5,LastPoint,Point)
LastPoint=Point
local Point2=prt4.CFrame*CFrame.new(0,prt4.Size.Y/7,0)
effect("Bright red",0.5,LastPoint2,Point2)
LastPoint2=Point2
local Point3=prt6.CFrame*CFrame.new(0,prt6.Size.Y/7,0)
effect("Bright red",0.5,LastPoint3,Point3)
LastPoint3=Point3
end
 
function RightClawEffect()
local rPoint=prt8.CFrame*CFrame.new(0,prt8.Size.Y/7,0)
effect("Black",0.5,rLastPoint,rPoint)
rLastPoint=rPoint
local rPoint2=prt10.CFrame*CFrame.new(0,prt10.Size.Y/7,0)
effect("Black",0.5,rLastPoint2,rPoint2)
rLastPoint2=rPoint2
local rPoint3=prt12.CFrame*CFrame.new(0,prt12.Size.Y/7,0)
effect("Black",0.5,rLastPoint3,rPoint3)
rLastPoint3=rPoint3
end
 
function AvatarClawEffect()
local avPoint=aprt6.CFrame*CFrame.new(0,aprt6.Size.Y/7,0)
effect("Black",0.5,avLastPoint,avPoint)
avLastPoint=avPoint
local avPoint2=aprt8.CFrame*CFrame.new(0,aprt8.Size.Y/7,0)
effect("Black",0.5,avLastPoint2,avPoint2)
avLastPoint2=avPoint2
local avPoint3=aprt10.CFrame*CFrame.new(0,aprt10.Size.Y/7,0)
effect("Black",0.5,avLastPoint3,avPoint3)
avLastPoint3=avPoint3
MagicBlock(BrickColor.new("Black"),aprt6.CFrame,3,3,3,-0.5,-0.5,-0.5)
MagicBlock(BrickColor.new("Black"),aprt8.CFrame,3,3,3,-0.5,-0.5,-0.5)
MagicBlock(BrickColor.new("Black"),aprt10.CFrame,3,3,3,-0.5,-0.5,-0.5)
end
 
function ElecEffect(cff,x,y,z)
local prt=part(3,workspace,0,0,BrickColor.new("White"),"Part",vt(1,1,1))
prt.Anchored=true
xval=math.random()
yval=math.random()
zval=math.random()
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(xval,yval,zval))
coroutine.resume(coroutine.create(function(Part,Mesh,Frame,xvaal,yvaal,zvaal)
Part.CFrame=Frame*cf(math.random(-x,x),math.random(-y,y),math.random(-z,z))
for i=1,8 do
wait()
xvaal=xvaal-0.1
yvaal=yvaal-0.1
zvaal=zvaal-0.1
Mesh.Scale=vt(xvaal,yvaal,zvaal)
Part.Transparency=Part.Transparency+0.09
end
Part.Parent=nil
end),prt,msh,cff,xval,yval,zval)
end
 
function MagicBlock(brickcolor,cframe,x1,y1,z1,x3,y3,z3)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
local msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,0.1 do
wait()
Part.CFrame=Part.CFrame
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end
 
function MagicBlock2(brickcolor,cframe,x1,y1,z1,x3,y3,z3)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
local msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
CF=prt.CFrame
num=math.random(5,20)
coroutine.resume(coroutine.create(function(Part,Mesh,CF2,Num) 
for i=0,1.05,0.05 do
wait()
Part.CFrame=CF2*cf(0,i*Num,0)*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh,CF,num)
end
 
function MagicCircle(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
wait()
Part.CFrame=Part.CFrame
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end
 
function MagicRing(brickcolor,cframe,x1,y1,z1,x2,y2,z2,x3,y3,z3)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe*euler(x2,y2,z2)
local msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=3270017",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,0.03 do
wait()
Part.CFrame=Part.CFrame
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end
 
function BreakEffect(brickcolor,cframe,x1,y1,z1)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
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
wait()
CF=CF*cf(0,1,0)
--Part.CFrame=Part.CFrame*euler(0.5,0,0)*cf(0,1,0)
Part.CFrame=CF*euler(Numbb,0,0)
Part.Transparency=i
Numbb=Numbb+randnumb
end
Part.Parent=nil
end),prt,CF,Numbb,randnumb)
end
 
function MagicFreeze(brickcolor,cframe,x1,y1,z1,x3,y3,z3)
local prt=part(3,workspace,0.4,0.3,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
local msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=1778999",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,0.1 do
Part.CFrame=Part.CFrame*cf(0,0.3,0)
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
wait(5)
Part.Parent=nil
end),prt,msh)
end
 
function MagicFire(brickcolor,cframe,x1,y1,z1)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
local msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,0.1 do
wait()
Part.CFrame=cf(Part.Position+vt(0,0.5,0))*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(0.1,0.1,0.1)
end
Part.Parent=nil
end),prt,msh)
end
 
function LifeStealEffect(brickcolor,cframe,x1,y1,z1)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=false
prt.CFrame=cframe*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
game:GetService("Debris"):AddItem(prt,4)
local msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(x1,y1,z1))
bp=Instance.new("BodyPosition")
bp.P=2000
bp.D=100
bp.maxForce=Vector3.new(math.huge,math.huge,math.huge)
bp.position=prt.Position+vt(math.random(-5,5),math.random(0,5),math.random(-5,5))
bp.Parent=prt
coroutine.resume(coroutine.create(function(Part) 
wait(1.5)
MagicCircle(BrickColor.new("Bright red"),Part.CFrame,2,2,2,0.2,0.2,0.2,0.05)
Part.Transparency=1
local pprt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
local mmsh=mesh("SpecialMesh",pprt,"Sphere","",vt(0,0,0),vt(1,1,1))
pprt.Anchored=true
cnM = ((Torso.Position + Part.Position) / 2).Magnitude
pprt.Size=Vector3.new(1,1,cnM)
pprt.CFrame=cf(Torso.Position,Part.Position)*cf(0,0,-cnM/2)
game:GetService("Debris"):AddItem(pprt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,0.05 do
wait()
Part.Transparency=1*i
Mesh.Scale=vt(0.5-0.5*i,0.5-0.5*i,1)
end
Part.Parent=nil
end),pprt,mmsh)
end),prt)
--[[coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,0.1 do
wait()
Part.CFrame=Part.CFrame
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)]]
end
 
range=300
rangepower=5
function shoottrail(baseprt,spread)
so("http://www.roblox.com/asset/?id=2767090",baseprt,2,1) 
coroutine.resume(coroutine.create(function(v) 
local spreadvector = (vt(math.random(-spread,spread),math.random(-spread,spread),math.random(-spread,spread)) / 100) * (baseprt.Position).magnitude/100
local dir = aprt11.CFrame.lookVector+spreadvector
local hit,pos = rayCast(baseprt.Position,dir,10,workspace)
local rangepos = range
local function drawtrail(From,To)
local effectsmsh = Instance.new("CylinderMesh")
effectsmsh.Scale = Vector3.new(1,1,1)
effectsmsh.Name = "Mesh"
local effectsg = Instance.new("Part")
effectsg.Transparency = 1
effectsg.formFactor = 3
effectsg.CanCollide = false
effectsg.Name = "Eff"
effectsg.Locked = true
effectsg.Anchored = true
effectsg.Size = Vector3.new(0.2,0.2,0.2)
effectsg.Parent = Avatar
effectsmsh.Parent = effectsg
game:GetService("Debris"):AddItem(effectsg,0.2)
local LP = From
local point1 = To
local mg = (LP - point1).magnitude
effectsg.CFrame = CFrame.new((LP+point1)/2,point1) * CFrame.Angles(math.rad(90),0,0)
local prt=part(3,Avatar,0,0,BrickColor.new("Black"),"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=effectsg.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
local msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(2,2,2))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,0.1 do
wait()
Part.CFrame=Part.CFrame
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(-0.5,-0.5,-0.5)
end
Part.Parent=nil
end),prt,msh)
end
local newpos = baseprt.Position
local inc = rangepower
repeat
wait() wait() 
rangepos = rangepos - 10
dir = dir
hit,pos = rayCast(newpos,dir,inc,Avatar)
drawtrail(newpos,pos)
newpos = newpos + (dir * inc)
if inc >= 20 then
inc = inc - 10
end
if hit ~= nil then
rangepos = 0
end
until rangepos <= 0
if hit ~= nil then
MagicCircle(BrickColor.new("Black"),CFrame.new(pos),1,1,1,0.5,0.5,0.5,0.05)
if hit.Parent:FindFirstChild("Humanoid") ~= nil then
hum = hit.Parent.Humanoid
tTorso=hit.Parent.Torso
Damagefunc(hit,10,20,math.random(50,80),"Snare",aprt1)
so("http://www.roblox.com/asset/?id=4678959",hit.Parent.Torso,2,1) 
--ADmg(hum,hit)
elseif hit.Parent.Parent ~= nil and hit.Parent.Parent:FindFirstChild("Humanoid") ~= nil then
hum = hit.Parent.Parent.Humanoid
tTorso=hit.Parent.Parent.Torso
Damagefunc(hit.Parent,10,20,math.random(50,80),"Snare",aprt1)
so("http://www.roblox.com/asset/?id=4678959",hit.Parent.Parent.Torso,2,1) 
--ADmg(hum,hit)
end
end
end))
end
 
so = function(id,par,vol,pit) 
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
 
Damagefunc=function(hit,minim,maxim,knockback,Type,Property)
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
        if attackdebounce == false then 
        attackdebounce = true 
        coroutine.resume(coroutine.create(function() 
        wait(0.2) 
        attackdebounce = false 
        end)) 
--[[                if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
                        return
                end]]
--                        hs(hit,1.2) 
                        c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=game:service("Players").LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                Damage=math.random(minim,maxim)
--                h:TakeDamage(Damage)
                blocked=false
                block=hit.Parent:findFirstChild("Block")
                if block~=nil then
                print("herp")
                if block.Value>0 then
                blocked=true
                block.Value=block.Value-1
                print(block.Value)
                end
                end
                if blocked==false then
--                h:TakeDamage(Damage)
                h.Health=h.Health-Damage
                showDamage(hit.Parent,Damage,.5,BrickColor:Red())
                else
                h.Health=h.Health-(Damage/2)
                showDamage(hit.Parent,Damage/2,.5,BrickColor.new("Bright blue"))
                end
                if Type=="Knockdown" then
                hum=hit.Parent.Humanoid
hum.PlatformStand=true
coroutine.resume(coroutine.create(function(HHumanoid)
wait(1)
HHumanoid.PlatformStand=false
end),hum)
                local angle=(hit.Position-(Property.Position+Vector3.new(0,0,0))).unit
print(angle)
--hit.CFrame=CFrame.new(hit.Position,Vector3.new(angle.x,hit.Position.y,angle.z))*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
local bodvol=Instance.new("BodyVelocity")
bodvol.velocity=angle*knockback
bodvol.P=5000
bodvol.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
bodvol.Parent=hit
rl=Instance.new("BodyAngularVelocity")
rl.P=3000
rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
rl.angularvelocity=Vector3.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))
rl.Parent=hit
game:GetService("Debris"):AddItem(bodvol,.5)
game:GetService("Debris"):AddItem(rl,.5)
                elseif Type=="Normal" then
                vp=Instance.new("BodyVelocity")
                vp.P=500
                vp.maxForce=Vector3.new(math.huge,0,math.huge)
--                vp.velocity=Character.Torso.CFrame.lookVector*Knockback
                vp.velocity=RootPart.CFrame.lookVector*knockback+RootPart.Velocity/1.05
                if knockback>0 then
                        vp.Parent=hit.Parent.Torso
                end
                game:GetService("Debris"):AddItem(vp,.5)
                elseif Type=="Up" then
                local bodyVelocity=Instance.new("BodyVelocity")
                bodyVelocity.velocity=vt(0,40,0)
                bodyVelocity.P=5000
                bodyVelocity.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
                bodyVelocity.Parent=hit
                game:GetService("Debris"):AddItem(bodyVelocity,.5)
coroutine.resume(coroutine.create(function(HitPers)
wait(0.2)
rl=Instance.new("BodyAngularVelocity")
rl.P=3000
rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
rl.angularvelocity=Vector3.new(math.random(-50,50),math.random(-50,50),math.random(-50,50))
rl.Parent=HitPers
game:GetService("Debris"):AddItem(rl,.5)
end),hit)
                elseif Type=="Snare" then
                bp=Instance.new("BodyPosition")
                bp.P=2000
                bp.D=100
                bp.maxForce=Vector3.new(math.huge,math.huge,math.huge)
                bp.position=hit.Parent.Torso.Position
                bp.Parent=hit.Parent.Torso
                coroutine.resume(coroutine.create(function(Part,BodPoss)
                while BodPoss.Parent~=nil do
                wait(0.1)
                MagicBlock(BrickColor.new("Black"),Part.CFrame,3,3,3,-0.2,-0.2,-0.2)
                end
                end),hit.Parent.Torso,bp)
                game:GetService("Debris"):AddItem(bp,2)
                elseif Type=="LifeSteal" then
                cancombo=true
                if lifestolen==false then
                lifestolen=true
                LifeStolenTorso=hit.Parent.Torso
                for i=1,5 do
                LifeStealEffect(BrickColor.new("Bright red"),hit.Parent.Torso.CFrame,1,1,1)
                end
                coroutine.resume(coroutine.create(function(Dam) 
                wait(1.5)
                Heal=Dam
                Humanoid.Health=Humanoid.Health+Heal
                showDamage(Torso.Parent,Heal,.5,BrickColor.new("Medium green"))
                end),Damage)
                end
                end
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
eul=0
game:GetService("RunService").Stepped:connect(function() 
 
function ob1d(mouse) 
if cancombo==true then
cancombo=false
combomove=true
if combotype=="LifeSteal" then
LifeStealCombo()
elseif combotype=="Raise" then
RaiseCombo()
end
return end
if attack==true then return end
hold=true
if combo==0 then
combo=1
attackone()
elseif combo==1 then
combo=2
attacktwo()
elseif combo==2 then
combo=3
attackthree()
elseif combo==3 then
combo=0
end
coroutine.resume(coroutine.create(function() 
wait(1)
if attack==false then
combo=0
RootJoint.C0=RootCF
Torso.Neck.C0=necko*euler(0.2,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(0,1.57,-0.2)
LW.C1=cf(0,0.5,0)*euler(-0.2,0,0) 
RW.C0=cf(1.5,0.5,0)*euler(0,-1.57,0.2)
RW.C1=cf(0,0.5,0)*euler(-0.2,0,0)
end
end))
end 
 
function ob1u(mouse) 
hold = false 
end 
 
buttonhold = false 
 
function key(key) 
if shadowattack==false then
if key=="z" then
ShadowSlash()
end
if key=="x" then
ShadowShoot()
end
if key=="c" then
ShadowDash()
end
if key=="v" then
ShadowExplode()
--ShadowWave()
end
end
if attack==true then return end
if key=="g" then
combotype="LifeSteal"
LifeSteal()
combotype="None"
end
if key=="h" then
combotype="Raise"
Raise()
combotype="None"
end
--[[if key=="q" then
ChangeAvatarMode("Follow")
end
if key=="e" then
ChangeAvatarMode("Stay")
end
if key=="r" then
if MMouse.Target~=nil and MMouse.Target.Parent:findFirstChild("Humanoid")~=nil and MMouse.Target.Parent:findFirstChild("Torso")~=nil then
TargetTorso=MMouse.Target.Parent.Torso
ChangeAvatarMode("Aim")
end
end]]
end 
end)
 
function key2(key) 
 
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
RW.Part0 = ch.Torso 
RW.C0 = CFrame.new(1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5) 
RW.C1 = CFrame.new(0, 0.5, 0) 
RW.Part1 = ch["Right Arm"] 
RW.Parent = ch.Torso 
--_G.R = RW 
-- 
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
wait(0) 
RW.Parent = nil 
LW.Parent = nil 
RSH.Parent = player.Character.Torso 
LSH.Parent = player.Character.Torso 
end 
 
Bin.Selected:connect(s) 
Bin.Deselected:connect(ds) 
print("Warden Claws loaded.")
 
--[[ 
Copyrighted (C) Fenrier 2014
]] 