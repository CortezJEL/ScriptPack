
--[[
Cyber Samurai Class Made by Fenrier.
]] 
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
Neck=Torso.Neck
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
mana=0
heat=0
heatcooldown=false
--player 
player=nil 
--save shoulders 
RSH, LSH=nil, nil 
--welds 
RW, LW=Instance.new("Weld"), Instance.new("Weld") 
RW.Name="Right Shoulder" LW.Name="Left Shoulder"
LH=Torso["Left Hip"]
RH=Torso["Right Hip"]
Sheathed=true
SwordStance=false
Charge=0
 
function swait(num)
if num==0 or num==nil then
game:service'RunService'.RenderStepped:wait()
else
for i=0,num do
game:service'RunService'.RenderStepped:wait()
end
end
end
 
if Character:findFirstChild("Cyber Edge",true) ~= nil then 
Character:findFirstChild("Cyber Edge",true).Parent = nil 
end 
if Player.PlayerGui:findFirstChild("WeaponGUI",true) ~= nil then 
Player.PlayerGui:findFirstChild("WeaponGUI",true).Parent = nil 
end 
 
 
function NoOutline(Part)
Part.TopSurface,Part.BottomSurface,Part.LeftSurface,Part.RightSurface,Part.FrontSurface,Part.BackSurface = 10,10,10,10,10,10
end
 
function part(formfactor,parent,reflectance,transparency,brickcolor,name,size)
local fp=it("Part")
fp.formFactor=formfactor 
fp.Parent=parent
fp.Reflectance=reflectance
fp.Transparency=transparency
fp.CanCollide=false 
fp.Locked=true
fp.BrickColor=brickcolor
fp.Name=name
fp.Size=size
fp.Position=Torso.Position 
NoOutline(fp)
fp.Material="Neon"
fp:BreakJoints()
return fp 
end 
 
function mesh(Mesh,part,meshtype,meshid,offset,scale)
local mesh=it(Mesh) 
mesh.Parent=part
if Mesh=="SpecialMesh" then
mesh.MeshType=meshtype
mesh.MeshId=meshid
end
mesh.Offset=offset
mesh.Scale=scale
return mesh
end
 
function weld(parent,part0,part1,c0)
local weld=it("Weld") 
weld.Parent=parent
weld.Part0=part0 
weld.Part1=part1 
weld.C0=c0
return weld
end
 
local fengui=it("GuiMain") 
fengui.Parent=Player.PlayerGui 
fengui.Name="WeaponGUI" 
 
local modelzorz=Instance.new("Model") 
modelzorz.Parent=Character 
modelzorz.Name="Cyber Edge" 
 
local handle=part(3,modelzorz,0,0.5,BrickColor.new("Dark stone grey"),"Handle",vt())
local prt1=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part1",vt())
local prt2=part(3,modelzorz,0,0,BrickColor.new("Really red"),"Part2",vt())
local prt3=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part3",vt())
local prt4=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part4",vt())
local prt11=part(3,modelzorz,0,0,Torso.BrickColor,"Part11",vt())
local prt12=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part12",vt())
local prt13=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part13",vt())
local prt14=part(3,modelzorz,0.6,0.4,BrickColor.new("Really red"),"Part14",vt())
prt14.Material="Neon"
local prt15=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part15",vt())
local prt16=part(3,modelzorz,0.6,0.4,BrickColor.new("Really red"),"Part16",vt())
prt16.Material="Neon"
local prt17=part(3,modelzorz,0.6,0.4,BrickColor.new("Really red"),"Part17",vt())
prt17.Material="Neon"
 
local msh1=mesh("BlockMesh",prt1,"","",vt(0,0,0),vt(1.5,20,2))
local msh2=mesh("BlockMesh",prt2,"","",vt(0,0,0),vt(1.25,20.1,1.75))
local msh3=mesh("BlockMesh",prt3,"","",vt(0,0,0),vt(1.6,5,2.1))
local msh4=mesh("SpecialMesh",prt4,"Wedge","",vt(0,0,0),vt(1.6,2,2.1))
local msh11=mesh("BlockMesh",prt11,"","",vt(0,0,0),vt(1,4,1))
local msh12=mesh("BlockMesh",prt12,"","",vt(0,0,0),vt(0.9,5,0.9))
local msh13=mesh("CylinderMesh",prt13,"","",vt(0,0,0),vt(2.5,0.5,2.5))
local msh14=mesh("CylinderMesh",prt14,"","",vt(0,0,0),vt(2,0.5,2))
local msh15=mesh("BlockMesh",prt15,"","",vt(0,0,0),vt(0.5,15,0.5))
local msh16=mesh("BlockMesh",prt16,"","",vt(0,0,0),vt(0.2,15,1))
local msh17=mesh("SpecialMesh",prt17,"Wedge","",vt(0,0,0),vt(0.2,2,1.2))
 
--local handlewld=weld(handle,handle,Torso,euler(0,0,0)*cf(0,0,-1))
local handlewld=weld(handle,handle,LeftArm,euler(1.57,0,0)*cf(0,1,0))
local wld1=weld(prt1,prt1,handle,euler(0,0,0)*cf(0,1,0))
local wld2=weld(prt2,prt2,prt1,euler(0,0,0)*cf(0,0,0))
local wld3=weld(prt3,prt3,prt1,euler(0,0,0)*cf(0,1.7,0))
local wld4=weld(prt4,prt4,prt3,euler(3.14,3.14,0)*cf(0,0.7,0))
local wld11=weld(prt11,prt11,prt1,euler(0,0,0)*cf(0,-2.55,-0.05))
--local wld11=weld(prt11,prt11,RightArm,euler(1.57,3.14,0)*cf(0,1,0))
local wld12=weld(prt12,prt12,prt11,euler(0,0,0)*cf(0,0,0))
local wld13=weld(prt13,prt13,prt12,euler(0,0,0)*cf(0,0.5,0.1))
local wld14=weld(prt14,prt14,prt13,euler(0,0,0)*cf(0,0.01,0))
local wld15=weld(prt15,prt15,prt12,euler(0,0,0)*cf(0,2,0))
local wld16=weld(prt16,prt16,prt12,euler(0,0,0)*cf(0,2,0.1))
local wld17=weld(prt17,prt17,prt16,euler(3.14,3.14,0)*cf(0,1.7,-0.02))
 
n=0.2
n2=5
for i=1,3 do
Name="Part"..n2
local prt5=part(3,modelzorz,0,0,BrickColor.new("Black"),Name,vt())
local msh5=mesh("BlockMesh",prt5,"","",vt(0,0,0),vt(1.6,1,2.1))
local wld5=weld(prt5,prt5,prt1,euler(0,0,0)*cf(0,n,0))
n2=n2+1
Name="Part"..n2
local prt6=part(3,modelzorz,0,0,BrickColor.new("Really red"),Name,vt())
local msh6=mesh("BlockMesh",prt6,"","",vt(0,0,0),vt(1.61,0.5,2.11))
local wld6=weld(prt6,prt6,prt5,euler(0,0,0)*cf(0,0,0))
n2=n2+1
n=n+0.4
end
 
local hitbox=part(3,nil,0,1,BrickColor.new("Black"),"Hitbox",vt(1,1,1))
hitbox.Anchored=false
 
if (script.Parent.className~="HopperBin") then 
Tool=Instance.new("HopperBin") 
Tool.Parent=Backpack 
Tool.Name="Cyber Edge" 
script.Parent=Tool 
end 
Bin=script.Parent 
 
local bodvel=Instance.new("BodyVelocity")
local bg=Instance.new("BodyGyro")
 
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
 
function hideanim() 
equipped=false
for i=0,1,0.1 do
swait()
handlewld.C0=euler(1.57,0,0)*cf(0,1,0)
handlewld.C1=euler(0.2-0.2*i,0,0)
Torso.Neck.C0=necko*euler(0,0,-1+1*i)
Torso.Neck.C1=necko2*euler(-0.2+0.2*i,0,0)
RootJoint.C0=RootCF*euler(0,0,1-1*i)
RW.C0=cf(.5+1*i,0.2+0.3*i,-0.5+0.5*i)*euler(0.7-0.7*i,0,-0.6+0.6*i)
RW.C1=cf(0,0.5,0)*euler(0,-1.57+1.57*i,0)
LW.C0=cf(-1.3-0.2*i,0.5,-0.3+0.3*i)*euler(0,-0.8+0.8*i,0)
LW.C1=cf(0,0.5,0)*euler(0.1-0.1*i,0,0)
RH.C0=cf(0.5,-1,0)*euler(0,1.57-1+1*i,0)
RH.C1=cf(0,1,0)*euler(0,1.57,0)
LH.C0=cf(-0.5,-1,0)*euler(-0.2+0.2*i,-1.57-1+1*i,0)
LH.C1=cf(0,1,0)*euler(0,-1.57,0)
end
wld11.Part1=prt1
wld11.C0=euler(0,0,0)*cf(0,-2.55,-0.05)
handlewld.C0=euler(1.57,0,0)*cf(0,1,0)
handlewld.C1=euler(0,0,0)
Torso.Neck.C0=necko
Torso.Neck.C1=necko2
RootJoint.C0=RootCF
RW.C0=cf(1.5,0.5,0)*euler(0,0,0)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(0,0,0)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
RH.C0=RHC0
RH.C1=RHC1
LH.C0=LHC0
LH.C1=LHC1
end 
 
function equipanim() 
equipped=true
for i=0,1,0.1 do
swait()
handlewld.C0=euler(1.57,0,0)*cf(0,1,0)
handlewld.C1=euler(0.2*i,0,0)
Torso.Neck.C0=necko*euler(0,0,-1*i)
Torso.Neck.C1=necko2*euler(-0.2*i,0,0)
RootJoint.C0=RootCF*euler(0,0,1*i)
RW.C0=cf(1.5-1*i,0.5-0.3*i,-0.5*i)*euler(0.7*i,0,-0.6*i)
RW.C1=cf(0,0.5,0)*euler(0,-1.57*i,0)
LW.C0=cf(-1.5+0.2*i,0.5,-0.3*i)*euler(0,-0.8*i,0)
LW.C1=cf(0,0.5,0)*euler(0.1*i,0,0)
RH.C0=cf(0.5,-1,0)*euler(0,1.57-1*i,0)
RH.C1=cf(0,1,0)*euler(0,1.57,0)
LH.C0=cf(-0.5,-1,0)*euler(-0.2*i,-1.57-1*i,0)
LH.C1=cf(0,1,0)*euler(0,-1.57,0)
end
handlewld.C0=euler(1.57,0,0)*cf(0,1,0)
handlewld.C1=euler(0.2,0,0)
Torso.Neck.C0=necko*euler(0,0,-1)
Torso.Neck.C1=necko2*euler(-0.2,0,0)
RootJoint.C0=RootCF*euler(0,0,1)
RW.C0=cf(.5,0.2,-0.5)*euler(0.7,0,-0.6)
RW.C1=cf(0,0.5,0)*euler(0,-1.57,0)
LW.C0=cf(-1.3,0.5,-0.3)*euler(0,-0.8,0)
LW.C1=cf(0,0.5,0)*euler(0.1,0,0)
RH.C0=cf(0.5,-1,0)*euler(0,1.57-1,0)
RH.C1=cf(0,1,0)*euler(0,1.57,0)
LH.C0=cf(-0.5,-1,0)*euler(-0.2,-1.57-1,0)
LH.C1=cf(0,1,0)*euler(0,-1.57,0)
end 
 
function IaidoStrike()
attack=true
wld11.Part1=RightArm
wld11.C0=euler(1.57-0.2,2.5,0)*cf(-0.2,1,-0.2)
local Point=prt17.CFrame*cf(0,prt17.Size.Y,0)
LastPoint=Point
so("rbxasset://sounds\\unsheath.wav",prt11,1,1.4)
so("http://www.roblox.com/asset/?id=161006195",prt11,1,1)
local ef=part(3,workspace,0,1,BrickColor.new("Black"),"Effect",vt())
ef.Anchored=true
ef.CFrame=RootPart.CFrame*cf(0,0,-6)
MagniDamage(ef,7,10,20,math.random(10,20),"Normal")
game:GetService("Debris"):AddItem(ef,2)
for i=0,1,0.1 do
wld11.C0=euler(1.57-0.2-1.37*i,2.5+0.2*i,0)*cf(-0.2+0.2*i,1,-0.2+0.2*i)
Torso.Neck.C0=necko*euler(0,0,-1+0.5*i)
Torso.Neck.C1=necko2*euler(-0.2,0,0)
RootJoint.C0=RootCF*euler(0,0,1-0.5*i)
RW.C0=cf(.5+1*i,0.2+0.3*i,-0.5+0.5*i)*euler(0.7+1.4*i,0,-0.6+1.4*i)
RW.C1=cf(0,0.5+4*i,0)*euler(0,-1.57-0.43*i,0)
LW.C0=cf(-1.3,0.5,-0.3)*euler(0,-0.8,0)
LW.C1=cf(0,0.5,0)*euler(0.1,0,0)
local Point=prt17.CFrame*cf(0,prt17.Size.Y,0)
effect("Bright red",0.4,LastPoint,Point)
LastPoint=Point
end
n=2
for i=0,1,0.05 do
swait()
Torso.Neck.C0=necko*euler(0,0,-0.5)
Torso.Neck.C1=necko2*euler(-0.2+0.2*i,0,0)
RootJoint.C0=RootCF*euler(0,0,0.5)
RW.C0=cf(1.5,0.5,0)*euler(2.1+0.2*i*n,0,0.8+0.2*i*n)
RW.C1=cf(0,0.5,0)*euler(0,-2.07-0.2*i*n,0)
LW.C0=cf(-1.3,0.5,-0.3)*euler(0,-0.8,-0.4*i*n)
LW.C1=cf(0,0.5,0)*euler(0.1,0,0)
RH.C0=cf(0.5,-1,0)*euler(0,1.57-1+1*i,0)
RH.C1=cf(0,1,0)*euler(0,1.57,0)
LH.C0=cf(-0.5,-1,0)*euler(-0.2+0.2*i,-1.57-1+1*i,0)
LH.C1=cf(0,1,0)*euler(0,-1.57,0)
n=n-0.05
end
for i=0,1,0.1 do
swait()
handlewld.C1=euler(0.2-0.2*i,0,0)
wld11.C0=euler(1.57*i,2.7+0.44*i,0)*cf(0,1,0)
RW.C0=cf(1.5-0.5*i,0.5,-0.5*i)*euler(2.3-1*i,1.57*i,1-1*i)
RW.C1=cf(0,0.5,0)*euler(-0.3*i,-2.27+2.27*i,0)
LW.C0=cf(-1.3,0.5,-0.3)*euler(0,-0.8+0.2*i,-0.4+0.2*i)
LW.C1=cf(0,0.5,0)*euler(0.1,0,0)
end
handlewld.C1=euler(0,0,0)
wld11.C0=euler(1.57,3.14,0)*cf(0,1,0)
RW.C0=cf(1,0.5,-0.5)*euler(1.3,1.57,0)
RW.C1=cf(0,0.5,0)*euler(-0.3,0,0)
LW.C0=cf(-1.3,0.5,-0.3)*euler(0,-0.6,-0.2)
LW.C1=cf(0,0.5,0)*euler(0.1,0,0)
attack=false
end
 
function Sheath()
attack=true
for i=0,1,0.1 do
swait()
wld11.C0=euler(1.57+0.6*i,3.14,0)*cf(0,1,0)
handlewld.C1=euler(0.6*i,0,0)
Torso.Neck.C0=necko*euler(0.2*i,0,-0.5+0.5*i)
RootJoint.C0=RootCF*euler(0,0,0.5-0.5*i)
RW.C0=cf(1+0.5*i,0.5,-0.5+0.5*i)*euler(1.3+0.27*i,1.57,0)
RW.C1=cf(0,0.5,0)*euler(-0.3+0.9*i,0,0)
LW.C0=cf(-1.3-0.2*i,0.5,-0.3+0.3*i)*euler(1.57*i,-0.6-0.97*i,-0.2+0.2*i)
LW.C1=cf(0,0.5,0)*euler(0.1+0.5*i,0,0)
end
so("rbxasset://sounds\\unsheath.wav",prt11,1,1)
wld11.Part1=prt1
wld11.C0=euler(0,0,0)*cf(0,-2.55-2.5,-0.05)
for i=0,1,0.05 do
swait()
Torso.Neck.C0=necko*euler(0.2+0.1*i,0,0)
handlewld.C1=euler(0.6-1*i,0,0)
wld11.C0=euler(0,0,0)*cf(0,-2.55-2.5+2.5*i,-0.05)
RW.C0=cf(1.5-0.5*i,0.5,-0.5*i)*euler(1.57,1.57,0)
RW.C1=cf(0,0.5,0)*euler(0.6-1*i,0,0)
LW.C0=cf(-1.5+0.5*i,0.5,-0.5*i)*euler(1.57,-1.57,0)
LW.C1=cf(0,0.5,0)*euler(0.6-1*i,0,0)
end
for i=0,1,0.05 do
swait()
Torso.Neck.C0=necko*euler(0.3-0.3*i,0,-1*i)
Torso.Neck.C1=necko2*euler(-0.2*i,0,0)
RootJoint.C0=RootCF*euler(0,0,1*i)
handlewld.C1=euler(-0.4+0.6*i,0,0)
RW.C0=cf(1-0.5*i,0.5-0.3*i,-0.5)*euler(1.57-0.87*i,1.57-1.57*i,-0.6*i)
RW.C1=cf(0,0.5,0)*euler(-0.4+0.4*i,-1.57*i,0)
LW.C0=cf(-1-0.3*i,0.5,-0.5+0.2*i)*euler(1.57-1.57*i,-1.57+0.77*i,0)
LW.C1=cf(0,0.5,0)*euler(-0.4+0.5*i,0,0)
RH.C0=cf(0.5,-1,0)*euler(0,1.57-1*i,0)
RH.C1=cf(0,1,0)*euler(0,1.57,0)
LH.C0=cf(-0.5,-1,0)*euler(-0.2*i,-1.57-1*i,0)
LH.C1=cf(0,1,0)*euler(0,-1.57,0)
end
handlewld.C0=euler(1.57,0,0)*cf(0,1,0)
handlewld.C1=euler(0.2,0,0)
wld11.C0=euler(0,0,0)*cf(0,-2.55,-0.05)
Torso.Neck.C0=necko*euler(0,0,-1)
Torso.Neck.C1=necko2*euler(-0.2,0,0)
RootJoint.C0=RootCF*euler(0,0,1)
RW.C0=cf(.5,0.2,-0.5)*euler(0.7,0,-0.6)
RW.C1=cf(0,0.5,0)*euler(0,-1.57,0)
LW.C0=cf(-1.3,0.5,-0.3)*euler(0,-0.8,0)
LW.C1=cf(0,0.5,0)*euler(0.1,0,0)
RH.C0=cf(0.5,-1,0)*euler(0,1.57-1,0)
RH.C1=cf(0,1,0)*euler(0,1.57,0)
LH.C0=cf(-0.5,-1,0)*euler(-0.2,-1.57-1,0)
LH.C1=cf(0,1,0)*euler(0,-1.57,0)
attack=false
end
 
function attackone()
attack=true
for i=0,1,0.1 do
swait()
Torso.Neck.C0=necko*euler(0,0,-0.5-0.3*i)
RootJoint.C0=RootCF*euler(0,0,0.5+0.3*i)
wld11.C0=euler(1.57,3.14,0)*cf(0,1,0)
RW.C0=cf(1-0.5*i,0.5,-0.5)*euler(1.3+0.2*i,1.57,0)
RW.C1=cf(0,0.5,0)*euler(-0.3-0.3*i,0,0)
LW.C0=cf(-1.3,0.5,-0.3)*euler(0,-0.6,-0.2)
LW.C1=cf(0,0.5,0)*euler(0.1+0.2*i,0,0)
end
con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,5,10,math.random(5,10),"Normal",RootPart,.2,1,nil,1) end) 
hitbox.Parent=modelzorz
hitbox.Size=vt(1,4,1)
hitbox.Transparency=1
hitbox.CFrame=prt16.CFrame
so("http://www.roblox.com/asset/?id=161006195",prt11,1,1.1)
local Point=prt17.CFrame*cf(0,prt17.Size.Y,0)
LastPoint=Point*cf(0,0,.1)
for i=0,1,0.2 do
swait()
Torso.Neck.C0=necko*euler(0,0,-0.8+1.2*i)
RootJoint.C0=RootCF*euler(0,0,0.8-1.2*i)
wld11.C0=euler(1.57-1.57*i,3.14,0)*cf(0,1,0)
RW.C0=cf(0.5+1*i,0.5,-0.5+0.5*i)*euler(1.5,1.57,0)
RW.C1=cf(0,0.5,0)*euler(-0.6+1.6*i,0,0)
LW.C0=cf(-1.3-0.2*i,0.5,-0.3+0.3*i)*euler(0,-0.6,-0.2-0.2*i)
LW.C1=cf(0,0.5,0)*euler(0.3,0,0)
local Point=prt17.CFrame*cf(0,prt17.Size.Y,0)
effect("Bright red",0.4,LastPoint,Point)
LastPoint=Point
hitbox.CFrame=prt16.CFrame
end
con1:disconnect()
hitbox.Parent=nil
n=2
for i=0,1,0.2 do
swait()
Torso.Neck.C0=necko*euler(0,0,0.4+0.2*i*n)
RootJoint.C0=RootCF*euler(0,0,-0.4-0.2*i*n)
wld11.C0=euler(0,3.14,0)*cf(0,1,0)
RW.C0=cf(1.5,0.5,0)*euler(1.5,1.57,0)
RW.C1=cf(0,0.5,0)*euler(1+0.2*i*n,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(0,-0.6,-0.4)
LW.C1=cf(0,0.5,0)*euler(0.3,0,0)
local Point=prt17.CFrame*cf(0,prt17.Size.Y,0)
effect("Bright red",0.4,LastPoint,Point)
LastPoint=Point
n=n-0.2
end
attack=false
end
 
function attacktwo()
attack=true
so("http://www.roblox.com/asset/?id=161006212",prt11,1,1.3)
local Point=prt17.CFrame*cf(0,prt17.Size.Y,0)
LastPoint=Point
local ef=part(3,workspace,0,1,BrickColor.new("Black"),"Effect",vt())
ef.Anchored=true
ef.CFrame=RootPart.CFrame*cf(0,0,-3)
MagniDamage(ef,5,10,15,math.random(10,20),"Normal")
game:GetService("Debris"):AddItem(ef,2)
for i=0,1,0.1 do
wld11.C0=euler(3.14-1.57*i,3.14,3.14)*cf(0,1,0)
Torso.Neck.C0=necko*euler(0,0,0.6-1.2*i)
RootJoint.C0=RootCF*euler(0,0,-0.6+1.2*i)
RW.C0=cf(1.5-1*i,0.5,-0.5*i)*euler(1.5+0.2*i,1.57,0)
RW.C1=cf(0,0.5,0)*euler(1.2-2.1*i,0.5*i,0)
LW.C0=cf(-1.5,0.5,0)*euler(0,-0.6,-0.4)
LW.C1=cf(0,0.5,0)*euler(0.3,0,0)
local Point=prt17.CFrame*cf(0,prt17.Size.Y,0)
effect("Bright red",0.4,LastPoint,Point)
LastPoint=Point
end
n=2
for i=0,1,0.05 do
swait()
wld11.C0=euler(1.57,3.14,3.14)*cf(0,1,0)
Torso.Neck.C0=necko*euler(0,0,-0.6-0.1*i*n)
RootJoint.C0=RootCF*euler(0,0,0.6+0.1*i*n)
RW.C0=cf(.5,0.5,-0.5)*euler(1.7,1.57,0)
RW.C1=cf(0,0.5,0)*euler(-0.9-0.2*i*n,0.5,0)
LW.C0=cf(-1.5,0.5,0)*euler(0,-0.6+0.2*i*n,-0.4+0.2*i*n)
LW.C1=cf(0,0.5,0)*euler(0.3+0.2*i*n,0,0)
n=n-0.05
end
attack=false
end
 
function attackthree()
attack=true
local Point=prt17.CFrame*cf(0,prt17.Size.Y,0)
LastPoint=Point
con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,5,10,math.random(5,10),"Normal",RootPart,.2,1,nil,1) end) 
hitbox.Parent=modelzorz
hitbox.Size=vt(1,4,1)
hitbox.Transparency=1
hitbox.CFrame=prt16.CFrame
so("http://www.roblox.com/asset/?id=161006195",prt11,1,0.9)
for i=0,1,0.2 do
swait()
wld11.C0=euler(1.57-1.57*i,3.14,0)*cf(0,1,0)
Torso.Neck.C0=necko*euler(0,0,-0.7+0.2*i)
RootJoint.C0=RootCF*euler(0,0,0.7-0.2*i)
RW.C0=cf(.5+1*i,0.5,-0.5+0.5*i)*euler(1.7,1.57,0)
RW.C1=cf(0,0.5,0)*euler(-1.1+2.6*i,0.5,0)
LW.C0=cf(-1.5,0.5,0)*euler(0,-0.4,-0.2)
LW.C1=cf(0,0.5,0)*euler(0.5,0,0)
local Point=prt17.CFrame*cf(0,prt17.Size.Y,0)
effect("Bright red",0.4,LastPoint,Point)
LastPoint=Point
hitbox.CFrame=prt16.CFrame
end
con1:disconnect()
hitbox.Parent=nil
n=2
for i=0,1,0.2 do
swait()
Torso.Neck.C0=necko*euler(0,0,-0.5+0.2*i*n)
RootJoint.C0=RootCF*euler(0,0,0.5-0.2*i*n)
RW.C0=cf(1.5,0.5,0)*euler(1.7,1.57,0)
RW.C1=cf(0,0.5,0)*euler(1.5+0.2*i*n,0.5,0)
LW.C0=cf(-1.5,0.5,0)*euler(0,-0.4,-0.2)
LW.C1=cf(0,0.5,0)*euler(0.5,0,0)
n=n-0.2
end
attack=false
end
 
function Stance()
attack=true
SwordStance=true
Humanoid.WalkSpeed=0.1
for i=0,1,0.05 do
handlewld.C0=euler(1.57,0,0)*cf(0,1,0)
handlewld.C1=euler(0.2+0.1*i,0,0)
wld11.C0=euler(0,0,0)*cf(0,-2.55,-0.05)
Torso.Neck.C0=necko*euler(0,0,-1-0.1*i)
Torso.Neck.C1=necko2*euler(-0.2-0.1*i,0,0)
RootJoint.C0=RootCF*euler(0,0,1+0.1*i)
RW.C0=cf(.5,0.2,-0.5)*euler(0.7,0,-0.6+0.1*i)
RW.C1=cf(0,0.5,0)*euler(0,-1.57,0)
LW.C0=cf(-1.3,0.5,-0.3)*euler(0,-0.8,0)
LW.C1=cf(0,0.5,0)*euler(0.1+0.1*i,0,0)
end
coroutine.resume(coroutine.create(function()
for i=1,100 do
if SwordStance==true then
swait()
end
end
SwordStance=false
Humanoid.WalkSpeed=16
for i=0,1,0.1 do
if attack==false then
swait()
handlewld.C0=euler(1.57,0,0)*cf(0,1,0)
handlewld.C1=euler(0.2,0,0)
wld11.C0=euler(0,0,0)*cf(0,-2.55,-0.05)
Torso.Neck.C0=necko*euler(0,0,-1)
Torso.Neck.C1=necko2*euler(-0.2,0,0)
RootJoint.C0=RootCF*euler(0,0,1)
RW.C0=cf(.5,0.2,-0.5)*euler(0.7,0,-0.6)
RW.C1=cf(0,0.5,0)*euler(0,-1.57,0)
LW.C0=cf(-1.3,0.5,-0.3)*euler(0,-0.8,0)
LW.C1=cf(0,0.5,0)*euler(0.1,0,0)
RH.C0=cf(0.5,-1,0)*euler(0,1.57-1,0)
RH.C1=cf(0,1,0)*euler(0,1.57,0)
LH.C0=cf(-0.5,-1,0)*euler(-0.2,-1.57-1,0)
LH.C1=cf(0,1,0)*euler(0,-1.57,0)
end
end
end))
attack=false
end
 
function IaidoDash()
attack=true
explode=false
Humanoid.WalkSpeed=0
wld11.Part1=RightArm
wld11.C0=euler(1.57-0.2,2.5,0)*cf(-0.2,1,-0.2)
local Point=prt17.CFrame*cf(0,prt17.Size.Y,0)
LastPoint=Point
so("rbxasset://sounds\\unsheath.wav",prt11,1,1.6)
so("http://www.roblox.com/asset/?id=161006195",prt11,1,0.9)
range=20
if Charge>=3 then
print("KABOOM")
Charge=0
explode=true
end
for i=0,1,0.1 do
local ef=part(3,workspace,0,1,BrickColor.new("Black"),"Effect",vt())
ef.Anchored=true
ef.CFrame=Torso.CFrame*cf(0,0,-2)*euler(0,0,1-0.5*i)
if i==0.6 and explode==true then
print("die")
MagniDamage(Torso,10,20,30,math.random(20,40),"Knockdown")
so("http://www.roblox.com/Asset?ID=87784452",Torso,1,1.2)
for i=1,3 do
MagicBlock(BrickColor.new("Bright red"),Torso.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50)),1,1,1,3,3,3,0.06,2,Torso)
MagicCircle(BrickColor.new("Bright red"),Torso.CFrame,1,1,1,3,3,3,0.03)
end
end
if explode==false then
MagniDamage(ef,5,10,20,math.random(10,20),"Charge")
end
game:GetService("Debris"):AddItem(ef,2)
wld11.C0=euler(1.57-0.2-1.37*i,2.5+0.2*i,0)*cf(-0.2+0.2*i,1,-0.2+0.2*i)
Torso.Neck.C0=necko*euler(0,0,-1+0.5*i)
Torso.Neck.C1=necko2*euler(-0.2,0,0)
RootJoint.C0=RootCF*cf(0,-range*i,0)*euler(0,0,1-0.5*i)
RW.C0=cf(.5+1*i,0.2+0.3*i,-0.5+0.5*i)*euler(0.7+1.4*i,0,-0.6+1.4*i)
RW.C1=cf(0,0.5,0)*euler(0,-1.57-0.43*i,0)
LW.C0=cf(-1.3,0.5,-0.3)*euler(0,-0.8,0)
LW.C1=cf(0,0.5,0)*euler(0.1,0,0)
local Point=prt17.CFrame*cf(0,prt17.Size.Y,0)
effect("Bright red",0.4,LastPoint,Point)
LastPoint=Point
end
RootJoint.C0=RootCF*cf(0,0,0)*euler(0,0,0.5)
RootPart.CFrame=RootPart.CFrame*cf(0,0,-range)
n=2
for i=0,1,0.05 do
swait()
Humanoid.WalkSpeed=0
Torso.Neck.C0=necko*euler(0,0,-0.5)
Torso.Neck.C1=necko2*euler(-0.2+0.2*i,0,0)
RootJoint.C0=RootCF*euler(0,0,0.5)
RW.C0=cf(1.5,0.5,0)*euler(2.1+0.2*i*n,0,0.8+0.2*i*n)
RW.C1=cf(0,0.5,0)*euler(0,-2.07-0.2*i*n,0)
LW.C0=cf(-1.3,0.5,-0.3)*euler(0,-0.8,-0.4*i*n)
LW.C1=cf(0,0.5,0)*euler(0.1,0,0)
RH.C0=cf(0.5,-1,0)*euler(0,1.57-1+1*i,0)
RH.C1=cf(0,1,0)*euler(0,1.57,0)
LH.C0=cf(-0.5,-1,0)*euler(-0.2+0.2*i,-1.57-1+1*i,0)
LH.C1=cf(0,1,0)*euler(0,-1.57,0)
n=n-0.05
end
local Point=prt17.CFrame*cf(0,prt17.Size.Y,0)
LastPoint=Point
for i=0,1,0.05 do
swait()
if i==0.1 then
so("http://www.roblox.com/asset/?id=161006212",prt11,1,1)
elseif i==0.6 then
so("http://www.roblox.com/asset/?id=161006195",prt11,1,1)
end
wld11.C0=euler(15.5*i,2.7,0)*cf(0,1,0)
Torso.Neck.C0=necko*euler(0,0,-0.5-0.5*i)
Torso.Neck.C1=necko2*euler(0,0,0)
RootJoint.C0=RootCF*euler(0,0,0.5+0.5*i)
RW.C0=cf(1.5,0.5,0)*euler(2.3-0.2*i,0,1-0.2*i)
RW.C1=cf(0,0.5,0)*euler(0,-2.27,0)
LW.C0=cf(-1.3,0.5,-0.3)*euler(0,-0.8,-0.4)
LW.C1=cf(0,0.5,0)*euler(0.1+0.2*i,0,0)
local Point=prt17.CFrame*cf(0,prt17.Size.Y,0)
effect("Bright red",0.4,LastPoint,Point)
LastPoint=Point
end
swait(5)
so("rbxasset://sounds\\unsheath.wav",prt11,1,1)
Humanoid.WalkSpeed=16
wld11.Part1=prt1
wld11.C0=euler(0,0,0)*cf(0,-2.55,-0.05)
handlewld.C0=euler(1.57,0,0)*cf(0,1,0)
handlewld.C1=euler(0.2,0,0)
Torso.Neck.C0=necko*euler(0,0,-1)
Torso.Neck.C1=necko2*euler(-0.2,0,0)
RootJoint.C0=RootCF*euler(0,0,1)
RW.C0=cf(.5,0.2,-0.5)*euler(0.7,0,-0.6)
RW.C1=cf(0,0.5,0)*euler(0,-1.57,0)
LW.C0=cf(-1.3,0.5,-0.3)*euler(0,-0.8,0)
LW.C1=cf(0,0.5,0)*euler(0.1,0,0)
RH.C0=cf(0.5,-1,0)*euler(0,1.57-1,0)
RH.C1=cf(0,1,0)*euler(0,1.57,0)
LH.C0=cf(-0.5,-1,0)*euler(-0.2,-1.57-1,0)
LH.C1=cf(0,1,0)*euler(0,-1.57,0)
eul=euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
MagicCircle(BrickColor.new("White"),cf(prt13.Position)*eul,0.5,1,0.5,0.1,2.5,0.1,0.1)
MagicCircle(BrickColor.new("White"),cf(prt13.Position)*euler(1.57,0,0)*eul,0.5,1,0.5,0.1,2.5,0.1,0.1)
MagicCircle(BrickColor.new("White"),cf(prt13.Position)*euler(1.57,0,1.57)*eul,0.5,1,0.5,0.1,2.5,0.1,0.1)
swait(10)
attack=false
end
 
function Wilt()
attack=true
Humanoid.WalkSpeed=0
up=-1
range=2
for i=1,3 do
wld11.Part1=RightArm
wld11.C0=euler(1.57-0.2,2.5,0)*cf(-0.2,1,-0.2)
local Point=prt17.CFrame*cf(0,prt17.Size.Y,0)
LastPoint=Point
so("rbxasset://sounds\\unsheath.wav",prt11,1,1.6)
so("http://www.roblox.com/asset/?id=161006195",prt11,1,0.9)
for i=0,1,0.1 do
local ef=part(3,workspace,0,1,BrickColor.new("Black"),"Effect",vt())
ef.Anchored=true
ef.CFrame=Torso.CFrame*cf(4*i,1,-4*i)*euler(0,0,1-0.5*i)
MagniDamage(ef,6,5,10,math.random(10,20),"Normal")
game:GetService("Debris"):AddItem(ef,2)
wld11.C0=euler(1.57-0.2-1.37*i,2.5+0.2*i,0)*cf(-0.2+0.2*i,1,-0.2+0.2*i)
Torso.Neck.C0=necko*euler(0,0,-1+0.5*i)
Torso.Neck.C1=necko2*euler(-0.2,0,0)
RootJoint.C0=RootCF*cf(0,-range*i,up*i)*euler(0,0,1-0.5*i)
RW.C0=cf(.5+1*i,0.2+0.3*i,-0.5+0.5*i)*euler(0.7+1.4*i,0,-0.6+1.4*i)
RW.C1=cf(0,0.5,0)*euler(-(up*i)/10,-1.57-0.43*i,0)
LW.C0=cf(-1.3,0.5,-0.3)*euler(0,-0.8,0)
LW.C1=cf(0,0.5,0)*euler(0.1,0,0)
local Point=prt17.CFrame*cf(0,prt17.Size.Y,0)
effect("Bright red",0.4,LastPoint,Point)
LastPoint=Point
end
RootJoint.C0=RootCF*cf(0,0,0)*euler(0,0,0.5)
n=2
for i=0,1,0.1 do
swait()
Humanoid.WalkSpeed=0
Torso.Neck.C0=necko*euler(0,0,-0.5)
Torso.Neck.C1=necko2*euler(-0.2+0.2*i,0,0)
RootJoint.C0=RootCF*euler(0,0,0.5)
RW.C0=cf(1.5,0.5,0)*euler(2.1+0.2*i*n,0,0.8+0.2*i*n)
RW.C1=cf(0,0.5,0)*euler(-up/10,-2-0.2*i*n,0)
LW.C0=cf(-1.3,0.5,-0.3)*euler(0,-0.8,-0.4*i*n)
LW.C1=cf(0,0.5,0)*euler(0.1,0,0)
n=n-0.1
end
wld11.Part1=prt1
wld11.C0=euler(0,0,0)*cf(0,-2.55,-0.05)
handlewld.C0=euler(1.57,0,0)*cf(0,1,0)
handlewld.C1=euler(0.2,0,0)
Torso.Neck.C0=necko*euler(0,0,-1)
Torso.Neck.C1=necko2*euler(-0.2,0,0)
RootJoint.C0=RootCF*euler(0,0,1)
RW.C0=cf(.5,0.2,-0.5)*euler(0.7,0,-0.6)
RW.C1=cf(0,0.5,0)*euler(0,-1.57,0)
LW.C0=cf(-1.3,0.5,-0.3)*euler(0,-0.8,0)
LW.C1=cf(0,0.5,0)*euler(0.1,0,0)
RH.C0=cf(0.5,-1,0)*euler(0,1.57-1,0)
RH.C1=cf(0,1,0)*euler(0,1.57,0)
LH.C0=cf(-0.5,-1,0)*euler(-0.2,-1.57-1,0)
LH.C1=cf(0,1,0)*euler(0,-1.57,0)
swait(10)
up=up+2
range=range+2
end
swait(10)
Humanoid.WalkSpeed=16
attack=false
end
 
function Rose()
attack=true
CF=RootPart.CFrame
local ef=part(3,workspace,0,0.2,BrickColor.new("Really red"),"Effect",vt(1,1,1))
ef.Anchored=true
ef.CFrame=CF
efmsh=mesh("SpecialMesh",ef,"FileMesh","http://www.roblox.com/asset/?id=1051557",vt(0,0,0),vt(3,3,3))
coroutine.resume(coroutine.create(function(Part,Mesh,CeEf)
for i=0,1,0.05 do
swait()
MagniDamage(Part,5,5,10,20,"Up")
Mesh.Scale=vt(3,3+3*i,3)
Part.CFrame=CeEf*cf(0,0,-35*i)*euler(0,15*i,0)
MagicBlock(BrickColor.new("Bright red"),ef.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50)),1,1,1,1.2,1.2,1.2,0.1,2,ef)
Part.Transparency=i
end
ef.Parent=nil
end),ef,efmsh,CF)
wld11.Part1=RightArm
wld11.C0=euler(1.57-0.2,2.5,0)*cf(-0.2,1,-0.2)
local Point=prt17.CFrame*cf(0,prt17.Size.Y,0)
LastPoint=Point
so("rbxasset://sounds\\unsheath.wav",prt11,1,1.2)
so("http://www.roblox.com/asset/?id=161006195",prt11,1,0.9)
for i=0,1,0.2 do
swait()
wld11.C0=euler(1.57-0.2-1.37*i,2.5+0.2*i,0)*cf(-0.2+0.2*i,1,-0.2+0.2*i)
Torso.Neck.C0=necko*euler(0,0,-1+0.5*i)
Torso.Neck.C1=necko2*euler(-0.2,0,0)
RootJoint.C0=RootCF*euler(0,0,1-0.5*i)
RW.C0=cf(.5+1*i,0.2+0.3*i,-0.5+0.5*i)*euler(0.7+1.4*i,0,-0.6+1.4*i)
RW.C1=cf(0,0.5,0)*euler(0,-1.57-0.43*i,0)
LW.C0=cf(-1.3,0.5,-0.3)*euler(0,-0.8,0)
LW.C1=cf(0,0.5,0)*euler(0.1,0,0)
local Point=prt17.CFrame*cf(0,prt17.Size.Y,0)
effect("Bright red",0.4,LastPoint,Point)
LastPoint=Point
end
n=2
for i=0,1,0.1 do
swait()
Humanoid.WalkSpeed=0
Torso.Neck.C0=necko*euler(0,0,-0.5)
Torso.Neck.C1=necko2*euler(-0.2+0.2*i,0,0)
RootJoint.C0=RootCF*euler(0,0,0.5)
RW.C0=cf(1.5,0.5,0)*euler(2.1+0.2*i*n,0,0.8+0.4*i*n)
RW.C1=cf(0,0.5,0)*euler(0,-2-0.2*i*n,0)
LW.C0=cf(-1.3,0.5,-0.3)*euler(0,-0.8,-0.4*i*n)
LW.C1=cf(0,0.5,0)*euler(0.1,0,0)
RH.C0=cf(0.5,-1,0)*euler(0,1.57-1+1*i,0)
RH.C1=cf(0,1,0)*euler(0,1.57,0)
LH.C0=cf(-0.5,-1,0)*euler(-0.2+0.2*i,-1.57-1+1*i,0)
LH.C1=cf(0,1,0)*euler(0,-1.57,0)
n=n-0.1
end
for i=0,1,0.05 do
swait()
wld11.C0=euler(2.5*i,2.7,0)*cf(0,1,0)
Torso.Neck.C0=necko*euler(0,0,-0.5-0.5*i)
Torso.Neck.C1=necko2*euler(0,0,0)
RootJoint.C0=RootCF*euler(0,0,0.5+0.5*i)
RW.C0=cf(1.5,0.5,0)*euler(2.3-0.2*i,0,1-0.2*i)
RW.C1=cf(0,0.5,0)*euler(0,-2,0)
LW.C0=cf(-1.3,0.5,-0.3)*euler(0,-0.8,-0.4)
LW.C1=cf(0,0.5,0)*euler(0.1+0.2*i,0,0)
end
swait(5)
so("rbxasset://sounds\\unsheath.wav",prt11,1,1)
Humanoid.WalkSpeed=16
wld11.Part1=prt1
wld11.C0=euler(0,0,0)*cf(0,-2.55,-0.05)
handlewld.C0=euler(1.57,0,0)*cf(0,1,0)
handlewld.C1=euler(0.2,0,0)
Torso.Neck.C0=necko*euler(0,0,-1)
Torso.Neck.C1=necko2*euler(-0.2,0,0)
RootJoint.C0=RootCF*euler(0,0,1)
RW.C0=cf(.5,0.2,-0.5)*euler(0.7,0,-0.6)
RW.C1=cf(0,0.5,0)*euler(0,-1.57,0)
LW.C0=cf(-1.3,0.5,-0.3)*euler(0,-0.8,0)
LW.C1=cf(0,0.5,0)*euler(0.1,0,0)
RH.C0=cf(0.5,-1,0)*euler(0,1.57-1,0)
RH.C1=cf(0,1,0)*euler(0,1.57,0)
LH.C0=cf(-0.5,-1,0)*euler(-0.2,-1.57-1,0)
LH.C1=cf(0,1,0)*euler(0,-1.57,0)
eul=euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
MagicCircle(BrickColor.new("White"),cf(prt13.Position)*eul,0.5,1,0.5,0.1,2.5,0.1,0.1)
MagicCircle(BrickColor.new("White"),cf(prt13.Position)*euler(1.57,0,0)*eul,0.5,1,0.5,0.1,2.5,0.1,0.1)
MagicCircle(BrickColor.new("White"),cf(prt13.Position)*euler(1.57,0,1.57)*eul,0.5,1,0.5,0.1,2.5,0.1,0.1)
attack=false
end
 
function ElecStorm()
attack=true
Humanoid.WalkSpeed=0
wld11.Part1=RightArm
wld11.C0=euler(1.57-0.2,2.5,0)*cf(-0.2,1,-0.2)
local Point=prt17.CFrame*cf(0,prt17.Size.Y,0)
LastPoint=Point
so("rbxasset://sounds\\unsheath.wav",prt11,1,1.2)
so("http://www.roblox.com/asset/?id=161006195",prt11,1,0.9)
for i=0,1,0.1 do
swait()
Humanoid.WalkSpeed=0
wld11.C0=euler(1.57-0.2+0.2*i,2.5-2.5*i,0)*cf(-0.2+0.2*i,1,-0.2+0.2*i)
handlewld.C1=euler(0.2-0.2*i,0,0)
Torso.Neck.C0=necko*euler(0,0,-1+1*i)
Torso.Neck.C1=necko2*euler(-0.2,0,0)
RootJoint.C0=RootCF*euler(0,0,1-1*i)
RW.C0=cf(.5+1*i,0.2+0.3*i,-0.5+0.5*i)*euler(0.7+2*i,0,-0.6+0.4*i)
RW.C1=cf(0,0.5,0)*euler(0,-1.57+1.57*i,0)
LW.C0=cf(-1.3,0.5,-0.3)*euler(-0.5*i,-0.8+0.4*i,0)
LW.C1=cf(0,0.5,0)*euler(0.1-0.1*i,0,0.4*i)
RH.C0=cf(0.5,-1,0)*euler(0,1.57-1+1*i,0)
RH.C1=cf(0,1,0)*euler(0,1.57,0)
LH.C0=cf(-0.5,-1,0)*euler(-0.2+0.2*i,-1.57-1+1*i,0)
LH.C1=cf(0,1,0)*euler(0,-1.57,0)
local Point=prt17.CFrame*cf(0,prt17.Size.Y,0)
effect("Bright red",0.4,LastPoint,Point)
LastPoint=Point
end
for i=0,1,0.2 do
swait()
Torso.Neck.C0=necko*euler(0.2*i,0,0)
Torso.Neck.C1=necko2*euler(-0.2,0,0)
RootJoint.C0=RootCF*cf(0,0,-0.8*i)
RW.C0=cf(1.5-0.5*i,0.5,-0.5*i)*euler(2.7-1.2*i,0,-0.2-0.5*i)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.3-0.2*i,0.5,-0.3+0.3*i)*euler(-0.5-0.2*i,-0.4+0.2*i,0)
LW.C1=cf(0,0.5,0)*euler(0,0,0.4+0.2*i)
RH.C0=cf(0.5,-1,0)*euler(0,1.57,-1*i)
RH.C1=cf(0,1,0)*euler(0,1.57,0)
LH.C0=cf(-0.5,-1+0.2*i,-0.5*i)*euler(0,-1.57,0.2*i)
LH.C1=cf(0,1,0)*euler(0,-1.57,0)
local Point=prt17.CFrame*cf(0,prt17.Size.Y,0)
effect("Bright red",0.4,LastPoint,Point)
LastPoint=Point
end
coroutine.resume(coroutine.create(function(Part)
MagicCircle(BrickColor.new("Really red"),Part.CFrame,150,150,150,-2,-2,-2,0.03)
for i=1,20 do
wait()
for i=1,2 do
MagicBlock(BrickColor.new("Bright red"),Part.CFrame*cf(math.random(-20,20),math.random(-20,20),math.random(-20,20))*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50)),1,1,1,1,1,1,0.1,2,Part)
end
end
end),RootPart)
so("http://www.roblox.com/asset/?id=2974000",prt11,1,0.8)
MagniDamage(RootPart,20,5,20,math.random(-40,-20),"Knockdown")
swait(10)
local Point=prt17.CFrame*cf(0,prt17.Size.Y,0)
LastPoint=Point
for i=0,1,0.05 do
swait()
if i==0.1 then
so("http://www.roblox.com/asset/?id=161006212",prt11,1,1)
elseif i==0.6 then
so("http://www.roblox.com/asset/?id=161006195",prt11,1,1)
end
wld11.C0=euler(1.57-9.42*i,0,0)*cf(0,1,0)
Torso.Neck.C0=necko*euler(0.2-0.2*i,0,0)
Torso.Neck.C1=necko2*euler(-0.2+0.2*i,0,0)
RootJoint.C0=RootCF*cf(0,0,-0.8+0.8*i)
RW.C0=cf(1,0.5,-0.5)*euler(1.5+1*i,0,-0.7)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(-0.7,-0.2,0)
LW.C1=cf(0,0.5,0)*euler(0,0,0.6)
RH.C0=cf(0.5,-1,0)*euler(0,1.57,-1+1*i)
RH.C1=cf(0,1,0)*euler(0,1.57,0)
LH.C0=cf(-0.5,-0.8-0.2*i,-0.5+0.5*i)*euler(0,-1.57,0.2-0.2*i)
LH.C1=cf(0,1,0)*euler(0,-1.57,0)
local Point=prt17.CFrame*cf(0,prt17.Size.Y,0)
effect("Bright red",0.4,LastPoint,Point)
LastPoint=Point
end
for i=0,1,0.1 do
swait()
Torso.Neck.C0=necko*euler(0,0,-0.5*i)
RootJoint.C0=RootCF*euler(0,0,0.5*i)
RW.C0=cf(1,0.5,-0.5)*euler(2.5-1.2*i,1.57*i,-0.7+0.7*i)
RW.C1=cf(0,0.5,0)*euler(-0.3*i,0,0)
LW.C0=cf(-1.5+0.2*i,0.5,-0.3*i)*euler(-0.7+0.7*i,-0.2-0.4*i,-0.2*i)
LW.C1=cf(0,0.5,0)*euler(0.1*i,0,0.6-0.6*i)
local Point=prt17.CFrame*cf(0,prt17.Size.Y,0)
effect("Bright red",0.4,LastPoint,Point)
LastPoint=Point
end
wld11.C0=euler(1.57,3.14,0)*cf(0,1,0)
Humanoid.WalkSpeed=16
attack=false
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
Damagefunc(head,mindam,maxdam,knock,Type,RootPart,.2,1,nil,1)
end
end
end
end
end
 
function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 
 
local Point=Torso.CFrame*cf(0,Torso.Size.Y,0)
LastPoint=Point
function effect(Color,Ref,LP,P1,returnn)
local effectsmsh=Instance.new("CylinderMesh")
effectsmsh.Scale=Vector3.new(0.2,1,0.2)
effectsmsh.Name="Mesh"
local effectsg=Instance.new("Part")
effectsg.formFactor=3
effectsg.CanCollide=false
effectsg.Name="Eff"
effectsg.Locked=true
effectsg.Anchored=true
effectsg.Size=Vector3.new(0.5,1,0.5)
effectsg.Parent=workspace
effectsmsh.Parent=effectsg
effectsg.BrickColor=BrickColor.new(Color)
effectsg.Reflectance=Ref
local point1=P1
local mg=(LP.p - point1.p).magnitude
effectsg.Size=Vector3.new(0.5,mg,0.5)
effectsg.CFrame=cf((LP.p+point1.p)/2,point1.p) * CFrame.Angles(math.rad(90),0,0)
effectsmsh.Scale=Vector3.new(0.2,1,0.2)
game:GetService("Debris"):AddItem(effectsg,2)
if returnn then return effectsg end
coroutine.resume(coroutine.create(function(Part,Mesh)
if not returnn then
for i=0,1,0.05 do
wait()
Part.Transparency=1*i
Mesh.Scale=Vector3.new(0.5-0.5*i,1,0.5-0.5*i)
end
Part.Parent=nil
end
end),effectsg,effectsmsh)
end
 
function MagicBlock(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay,Type,parent)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt())
if Type~=3 and Type~=4 then
prt.Anchored=true
end
prt.CFrame=cframe
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh,dur,ceef) 
local wld=nil
if dur==3 or dur==4 then
wld=weld(Part,Part,parent,euler(0,0,0)*cf(0,0,0))
end
for i=0,1,delay do
wait()
if dur==1 then
Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
elseif dur==2 then
Part.CFrame=Part.CFrame
elseif dur==3 then
wld.C0=wld.C0*euler(math.random(-100,100)/100,math.random(-100,100)/100,math.random(-100,100)/100)
elseif dur==4 then
wld.C0=ceef
end
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh,Type,cframe)
end
 
function MagicCircle(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
local wld=nil
for i=0,1,delay do
wait()
Part.CFrame=Part.CFrame
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end
 
function MagicRing(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay,Type,parent)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt())
if Type~=2 then
prt.Anchored=true
end
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=3270017",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh,dur) 
local wld=nil
if dur==2 then
wld=weld(Part,Part,parent,euler(0,0,0)*cf(0,0,0))
end
for i=0,1,delay do
wait()
if dur==1 then
Part.CFrame=Part.CFrame
elseif dur==2 then
wld.C0=cframe
end
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh,Type)
end
 
function MagicWaveThing(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=1051557",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
wait()
Part.CFrame=Part.CFrame*euler(0,0.7,0)
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end
 
function WaveEffect(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay,mshtype)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
local thetype=""
if mshtype==1 then
thetype="http://www.roblox.com/asset/?id=20329976"
elseif mshtype==2 then
thetype="http://www.roblox.com/asset/?id=1323306"
end
msh=mesh("SpecialMesh",prt,"FileMesh",thetype,vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
wait()
Part.CFrame=Part.CFrame*cf(0,y3/2,0)
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end
 
Damagefunc=function(hit,minim,maxim,knockback,Type,Property,Delay,KnockbackType,decreaseblock,Slash)
        if hit.Parent==nil then
                return
        end
        h=hit.Parent:FindFirstChild("Humanoid")
        for _,v in pairs(hit.Parent:children()) do
        if v:IsA("Humanoid") then
        h=v
        end
        end
        if hit.Parent.Parent:FindFirstChild("Torso")~=nil then
        h=hit.Parent.Parent:FindFirstChild("Humanoid")
        end
        if hit.Parent.className=="Hat" then
        hit=hit.Parent.Parent:findFirstChild("Head")
        end
        if h~=nil and hit.Parent.Name~=Character.Name and hit.Parent:FindFirstChild("Torso")~=nil then
        if hit.Parent:findFirstChild("DebounceHit")~=nil then if hit.Parent.DebounceHit.Value==true then return end end
        --[[                if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
                        return
                end]]
--                        hs(hit,1.2) 
                if Slash==1 then
                so("http://www.roblox.com/asset/?id=10209590",hit,1,1)
                MagicCircle(BrickColor.new("Bright red"),hit.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50)),.2,2,.2,.2,6,.2,0.1)
                end
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
                print(block.className)
                if block.className=="NumberValue" then
                if block.Value>0 then
                blocked=true
                if decreaseblock==nil then
                block.Value=block.Value-1
                end
                end
                end
                if block.className=="IntValue" then
                if block.Value>0 then
                blocked=true
                if decreaseblock~=nil then
                block.Value=block.Value-1
                end
                end
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
swait(1)
HHumanoid.PlatformStand=false
end),hum)
                local angle=(hit.Position-(Property.Position+Vector3.new(0,0,0))).unit
--hit.CFrame=cf(hit.Position,Vector3.new(angle.x,hit.Position.y,angle.z))*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
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
                if KnockbackType==1 then
                vp.velocity=Property.CFrame.lookVector*knockback+Property.Velocity/1.05
                elseif KnockbackType==2 then
                vp.velocity=Property.CFrame.lookVector*knockback
                end
                if knockback>0 then
                        vp.Parent=hit.Parent.Torso
                end
                game:GetService("Debris"):AddItem(vp,.5)
                elseif Type=="Up" then
                local bodyVelocity=Instance.new("BodyVelocity")
                bodyVelocity.velocity=vt(0,30,0)
                bodyVelocity.P=5000
                bodyVelocity.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
                bodyVelocity.Parent=hit
                game:GetService("Debris"):AddItem(bodyVelocity,1)
                rl=Instance.new("BodyAngularVelocity")
                rl.P=3000
                rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
                rl.angularvelocity=Vector3.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))
                rl.Parent=hit
                game:GetService("Debris"):AddItem(rl,.5)
                elseif Type=="Snare" then
                bp=Instance.new("BodyPosition")
                bp.P=2000
                bp.D=100
                bp.maxForce=Vector3.new(math.huge,math.huge,math.huge)
                bp.position=hit.Parent.Torso.Position
                bp.Parent=hit.Parent.Torso
                game:GetService("Debris"):AddItem(bp,1)
                elseif Type=="Charge" then
                Charge=Charge+1
                coroutine.resume(coroutine.create(function(Part)
                swait(30)
                for i=1,5 do
                swait(5)
                so("rbxasset://sounds\\unsheath.wav",hit,1,2)
                MagicCircle(BrickColor.new("Bright red"),hit.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50)),.2,2,.1,.2,8,.1,0.05)
                newdam=math.random(1,5)
                if blocked==false then
                h:TakeDamage(newdam)
                showDamage(hit.Parent,newdam,.5,BrickColor:Red())
                else
                h:TakeDamage(newdam/2)
                showDamage(hit.Parent,newdam,.5,BrickColor.new("Bright blue"))
                end
                end
                end),hit)
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
        if Char:findFirstChild("Head")~=nil then
        c.CFrame=cf(Char["Head"].CFrame.p+Vector3.new(0,1.5,0))
        elseif Char.Parent:findFirstChild("Head")~=nil then
        c.CFrame=cf(Char.Parent["Head"].CFrame.p+Vector3.new(0,1.5,0))
        end
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
--[[if SwordStance==true then
SwordStance=false
Sheathed=false
IaidoStrike()
return end]]
if SwordStance==true then return end
if Sheathed==true then return end
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
for i=1,50 do
if attack==false then
swait()
end
end
if attack==false then
combo=0
Torso.Neck.C0=necko*euler(0,0,-0.5)
RootJoint.C0=RootCF*euler(0,0,0.5)
handlewld.C1=euler(0,0,0)
wld11.C0=euler(1.57,3.14,0)*cf(0,1,0)
RW.C0=cf(1,0.5,-0.5)*euler(1.3,1.57,0)
RW.C1=cf(0,0.5,0)*euler(-0.3,0,0)
LW.C0=cf(-1.3,0.5,-0.3)*euler(0,-0.6,-0.2)
LW.C1=cf(0,0.5,0)*euler(0.1,0,0)
end
end))
end 
 
function ob1u(mouse) 
hold = false 
end 
 
buttonhold = false 
 
eul=0
equipped=false
function key(key) 
if attack==true then return end
if Sheathed==true then
if key=="z" then
IaidoDash()
end
if key=="x" then
Wilt()
end
if key=="c" then
Rose()
end
if key=="v" then
Sheathed=false
ElecStorm()
end
end
if key=="f" then
attack=true
if equipped==false then
equipped=true
RSH=ch.Torso["Right Shoulder"] 
LSH=ch.Torso["Left Shoulder"] 
-- 
RSH.Parent=nil 
LSH.Parent=nil 
-- 
RW.Name="Right Shoulder"
RW.Part0=ch.Torso 
RW.C0=cf(1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5) 
RW.C1=cf(0, 0.5, 0) 
RW.Part1=ch["Right Arm"] 
RW.Parent=ch.Torso 
-- 
LW.Name="Left Shoulder"
LW.Part0=ch.Torso 
LW.C0=cf(-1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8) 
LW.C1=cf(0, 0.5, 0) 
LW.Part1=ch["Left Arm"] 
LW.Parent=ch.Torso 
--
equipanim() 
else
if Sheathed==false then
Sheathed=true
Sheath()
end
equipped=false
hideanim() 
swait(0) 
RW.Parent=nil 
LW.Parent=nil 
RSH.Parent=player.Character.Torso 
LSH.Parent=player.Character.Torso 
end
attack=false
end
if equipped==false then return end
--[[if key=="g" then
if Sheathed==true then
Sheathed=false
IaidoStrike()
else
Sheathed=true
Sheath()
end
end]]
if key=="g" then
if Sheathed==false then
Sheathed=true
Sheath()
else
Sheathed=false
IaidoStrike()
end
end
end 
 
function key2(key) 
 
end 
 
function s(mouse) 
mouse.Button1Down:connect(function() ob1d(mouse) end) 
mouse.Button1Up:connect(function() ob1u(mouse) end) 
mouse.KeyDown:connect(key) 
mouse.KeyUp:connect(key2) 
 
player=Player 
ch=Character 
MMouse=mouse 
end 
 
function ds(mouse) 
end 
 
Bin.Selected:connect(s) 
Bin.Deselected:connect(ds) 
print("Cyber Samurai loaded.")
 
--[[ 
Copyrighted (C) Fenrier 2014
]] 
 
