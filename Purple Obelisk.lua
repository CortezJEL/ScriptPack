
--[[
Made by Fenrier.
]] 
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
LHC0=cf(-1,-1,0,-0,-0,-1,0,1,0,1,0,0)
LHC1=cf(-0.5,1,0,-0,-0,-1,0,1,0,1,0,0)
RHC0=cf(1,-1,0,0,0,1,0,1,0,-1,-0,-0)
RHC1=cf(0.5,1,0,0,0,1,0,1,0,-1,-0,-0)
RootPart=Character.HumanoidRootPart
RootJoint=RootPart.RootJoint
RootCF=euler(-1.57,0,3.14)
attack=false 
MMouse=nil
combo=0
blocked=false
local EffectParts={}
local Clone={}
Mode="Obelisk"
Weapon="None"
--player 
player = nil 
--save shoulders 
RSH, LSH = nil, nil 
--welds 
RW, LW = Instance.new("Weld"), Instance.new("Weld") 
RW.Name="Right Shoulder" LW.Name="Left Shoulder"
LH=Torso["Left Hip"]
RH=Torso["Right Hip"]
Asset="http://www.roblox.com/asset/?id="
 
function swait(num)
if num==0 or num==nil then
game:service'RunService'.RenderStepped:wait()
else
for i=0,num do
game:service'RunService'.RenderStepped:wait()
end
end
end
 
if Character:findFirstChild("Ark",true) ~= nil then 
Character:findFirstChild("Ark",true).Parent = nil 
end 
if Character:findFirstChild("Arkantus Blade",true) ~= nil then 
Character:findFirstChild("Arkantus Blade",true).Parent = nil 
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
fp.Material="Neon"
fp:BreakJoints()
return fp 
end 
 
function mesh(Mesh,part,meshtype,meshid,offset,scale)
local mesh = it(Mesh) 
mesh.Parent = part
if Mesh=="SpecialMesh" then
mesh.MeshType = meshtype
if meshtype=="FileMesh" then
mesh.MeshId = "http://www.roblox.com/asset/?id="..meshid
end
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
modelzorz.Name = "Ark" 
 
local prt1=part(1,modelzorz,0,0.9,BrickColor.new("Black"),"Part1",vt(1,1,1))
local prt2=part(1,modelzorz,0,0,BrickColor.new("White"),"Part2",vt(1,1,1))
local prt37=part(1,modelzorz,0,0,BrickColor.new("Medium stone grey"),"Part37",vt(1,1,1))
local prt38=part(1,modelzorz,0,0,BrickColor.new("White"),"Part38",vt(1,1,1))
local prt39=part(1,modelzorz,0,0,BrickColor.new("White"),"Part39",vt(1,1,1))
local prt40=part(1,modelzorz,0,0,BrickColor.new("White"),"Part40",vt(1,1,1))
local prt41=part(1,modelzorz,0,0.5,BrickColor.new("Bright red"),"Part41",vt(1,1,1))
local prt42=part(1,modelzorz,0,0,BrickColor.new("Bright red"),"Part42",vt(1,1,1))
local prt43=part(1,modelzorz,0,0,BrickColor.new("Bright red"),"Part43",vt(1,1,1))
local msh1=mesh("BlockMesh",prt1,"","",vt(0,0,0),vt(1.51,1,1.51))
local msh2=mesh("BlockMesh",prt2,"","",vt(0,0,0),vt(1.5,6,1.5))
local msh37=mesh("SpecialMesh",prt37,"Head","",vt(0,0,0),vt(2.3,1.3,2.3))
local msh38=mesh("SpecialMesh",prt38,"FileMesh","9756362",vt(0,0,0),vt(1,1.5,1))
local msh39=mesh("SpecialMesh",prt39,"FileMesh","9756362",vt(0,0,0),vt(0.8,2,0.8))
local msh40=mesh("BlockMesh",prt40,"","",vt(0,0,0),vt(0.5,0.5,0.5))
local msh41=mesh("BlockMesh",prt41,"","",vt(0,0,0),vt(0.8,0.8,0.8))
local msh42=mesh("SpecialMesh",prt42,"FileMesh","3270017",vt(0,0,0),vt(4,4,3))
local msh43=mesh("SpecialMesh",prt43,"FileMesh","3270017",vt(0,0,0),vt(4,4,3))
local wld1=weld(prt1,prt1,Torso,euler(0,0,1.3)*cf(0,0,-1))
local wld2=weld(prt2,prt2,prt1,euler(0,0,0)*cf(0,0.5,0))
local wld37=weld(prt37,prt37,prt2,euler(0,0,0)*cf(0,3.2,0))
local wld38=weld(prt38,prt38,prt37,euler(0,0,0)*cf(0,0.7,0))
local wld39=weld(prt39,prt39,prt2,euler(0,0,0)*cf(0,-3.7,0))
local wld40=weld(prt40,prt40,prt2,euler(0,1.57,0)*cf(0,-6,0))
local wld41=weld(prt41,prt41,prt40,euler(0,0,0)*cf(0,0,0))
local wld42=weld(prt42,prt42,prt40,euler(0,0,0)*cf(0,0,0))
local wld43=weld(prt43,prt43,prt40,euler(0,1.57,0)*cf(0,0,0))
local hitbox=part(1,nil,0,1,BrickColor.new("Black"),"Hitbox",vt(1,1,1))
hitbox.Anchored=false
 
numb=0.785
for i=1,7 do
local prt41=part(1,modelzorz,0,0,BrickColor.new("White"),"Part41",vt(1,1,1))
local msh41=mesh("SpecialMesh",prt41,"FileMesh","9756362",vt(0,0,0),vt(0.3,1,0.3))
local wld41=weld(prt41,prt41,prt40,cf(0,2.4,0)*euler(0,0,numb))
numb=numb+0.785
end
 
numb=0.785
for i=1,7 do
local prt41=part(1,modelzorz,0,0,BrickColor.new("White"),"Part41",vt(1,1,1))
local msh41=mesh("SpecialMesh",prt41,"FileMesh","9756362",vt(0,0,0),vt(0.3,1,0.3))
local wld41=weld(prt41,prt41,prt43,cf(0,2.4,0)*euler(0,0,numb))
numb=numb+0.785
end
 
coroutine.resume(coroutine.create(function(Part)
while true do
for i=0.5,1,0.01 do
swait()
prt1.Transparency=1
Part.Transparency=i
end
for i=1,0.5,-0.01 do
swait()
prt1.Transparency=1
Part.Transparency=i
end
end
end),prt41)
 
local prt3=part(1,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part3",vt(1,1,1))
local prt4=part(1,modelzorz,0,0,BrickColor.new("White"),"Part4",vt(1,1,1))
local prt5=part(1,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part5",vt(1,1,1))
local prt6=part(1,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part6",vt(1,1,1))
local prt7=part(1,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part7",vt(1,1,1))
local prt8=part(1,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part8",vt(1,1,1))
local prt9=part(1,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part9",vt(1,1,1))
local prt12=part(1,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part12",vt(1,1,1))
local prt13=part(1,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part13",vt(1,1,1))
local prt14=part(1,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part14",vt(1,1,1))
local prt15=part(1,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part15",vt(1,1,1))
local prt16=part(1,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part16",vt(1,1,1))
local prt17=part(1,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part17",vt(1,1,1))
local prt18=part(1,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part18",vt(1,1,1))
local prt19=part(1,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part19",vt(1,1,1))
local prt20=part(1,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part20",vt(1,1,1))
local prt21=part(1,modelzorz,0,1,BrickColor.new("White"),"Part21",vt(1,1,1))
local prt22=part(1,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part22",vt(1,1,1))
local prt23=part(1,modelzorz,0,0,BrickColor.new("White"),"Part23",vt(1,1,1))
local prt24=part(1,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part24",vt(1,1,1))
local prt25=part(1,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part25",vt(1,1,1))
local prt26=part(1,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part26",vt(1,1,1))
local prt27=part(1,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part27",vt(1,1,1))
local prt28=part(1,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part28",vt(1,1,1))
local prt29=part(1,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part29",vt(1,1,1))
local prt30=part(1,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part30",vt(1,1,1))
local prt31=part(1,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part31",vt(1,1,1))
local prt32=part(1,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part32",vt(1,1,1))
local prt33=part(1,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part33",vt(1,1,1))
local prt34=part(1,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part34",vt(1,1,1))
local prt35=part(1,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part35",vt(1,1,1))
local prt36=part(1,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part36",vt(1,1,1))
local prt37=part(1,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part37",vt(1,1,1))
local msh3=mesh("CylinderMesh",prt3,"","",vt(0,0,0),vt(1,1.3,1))
local msh4=mesh("CylinderMesh",prt4,"","",vt(0,0,0),vt(0.5,1.33,0.5))
local msh5=mesh("BlockMesh",prt5,"","",vt(0,0,0),vt(0.2,1.3,1))
local msh6=mesh("BlockMesh",prt6,"","",vt(0,0,0),vt(0.2,1.3,1))
local msh7=mesh("BlockMesh",prt7,"","",vt(0,0,0),vt(0.2,1.3,1))
local msh8=mesh("BlockMesh",prt8,"","",vt(0,0,0),vt(0.2,1.3,0.8))
local msh9=mesh("BlockMesh",prt9,"","",vt(0,0,0),vt(0.2,1.3,0.8))
local msh12=mesh("BlockMesh",prt12,"","",vt(0,0,0),vt(0.2,1.3,1.6))
local msh13=mesh("BlockMesh",prt13,"","",vt(0,0,0),vt(0.2,1.3,1.6))
local msh14=mesh("CylinderMesh",prt14,"","",vt(0,0,0),vt(0.5,1.3,0.5))
local msh15=mesh("CylinderMesh",prt15,"","",vt(0,0,0),vt(0.5,1.3,0.5))
local msh16=mesh("BlockMesh",prt16,"","",vt(0,0,0),vt(0.3,1.3,3.6))
local msh17=mesh("BlockMesh",prt17,"","",vt(0,0,0),vt(0.3,1.3,3.6))
local msh18=mesh("BlockMesh",prt18,"","",vt(0,0,0),vt(0.1,1.3,0.5))
local msh19=mesh("BlockMesh",prt19,"","",vt(0,0,0),vt(0.1,1.3,0.5))
local msh20=mesh("BlockMesh",prt20,"","",vt(0,0,0),vt(0.1,1.3,0.5))
local msh21=mesh("BlockMesh",prt21,"","",vt(0,0,0),vt(0.1,0.1,0.1))
local msh22=mesh("CylinderMesh",prt22,"","",vt(0,0,0),vt(1,1.3,1))
local msh23=mesh("CylinderMesh",prt23,"","",vt(0,0,0),vt(0.5,1.33,0.5))
local msh24=mesh("BlockMesh",prt24,"","",vt(0,0,0),vt(0.2,1.3,1))
local msh25=mesh("BlockMesh",prt25,"","",vt(0,0,0),vt(0.2,1.3,1))
local msh26=mesh("BlockMesh",prt26,"","",vt(0,0,0),vt(0.2,1.3,1))
local msh27=mesh("BlockMesh",prt27,"","",vt(0,0,0),vt(0.2,1.3,0.8))
local msh28=mesh("BlockMesh",prt28,"","",vt(0,0,0),vt(0.2,1.3,0.8))
local msh29=mesh("BlockMesh",prt29,"","",vt(0,0,0),vt(0.2,1.3,1.6))
local msh30=mesh("BlockMesh",prt30,"","",vt(0,0,0),vt(0.2,1.3,1.6))
local msh31=mesh("CylinderMesh",prt31,"","",vt(0,0,0),vt(0.5,1.3,0.5))
local msh32=mesh("CylinderMesh",prt32,"","",vt(0,0,0),vt(0.5,1.3,0.5))
local msh33=mesh("BlockMesh",prt33,"","",vt(0,0,0),vt(0.3,1.3,3.6))
local msh34=mesh("BlockMesh",prt34,"","",vt(0,0,0),vt(0.3,1.3,3.6))
local msh35=mesh("BlockMesh",prt35,"","",vt(0,0,0),vt(0.1,1.3,0.5))
local msh36=mesh("BlockMesh",prt36,"","",vt(0,0,0),vt(0.1,1.3,0.5))
local msh37=mesh("BlockMesh",prt37,"","",vt(0,0,0),vt(0.1,1.3,0.5))
local wld3=weld(prt3,prt3,prt2,euler(1.57,0,0)*cf(0,2,0))
local wld4=weld(prt4,prt4,prt2,euler(1.57,0,0)*cf(0,2,0))
local wld5=weld(prt5,prt5,prt2,euler(1.57,0,0)*cf(0,1.1,0))
local wld6=weld(prt6,prt6,prt2,euler(1.57,0,0.5)*cf(-0.25,0.2,0))
local wld7=weld(prt7,prt7,prt2,euler(1.57,0,-0.5)*cf(0.25,0.2,0))
local wld8=weld(prt8,prt8,prt2,euler(1.57,0,-0.7)*cf(0.3,1.6,0))
local wld9=weld(prt9,prt9,prt2,euler(1.57,0,0.7)*cf(-0.3,1.6,0))
local wld12=weld(prt12,prt12,prt2,euler(1.57,0,0)*cf(0.53,0.55,0))
local wld13=weld(prt13,prt13,prt2,euler(1.57,0,0)*cf(-0.53,0.55,0))
local wld14=weld(prt14,prt14,prt2,euler(1.57,0,0)*cf(0.45,-0.2,0))
local wld15=weld(prt15,prt15,prt2,euler(1.57,0,0)*cf(-0.45,-0.2,0))
local wld16=weld(prt16,prt16,prt2,euler(1.57,0,0)*cf(-0.45,-1.79,0))
local wld17=weld(prt17,prt17,prt2,euler(1.57,0,0)*cf(0.45,-1.79,0))
local wld18=weld(prt18,prt18,prt2,euler(1.57,0,0)*cf(0,-0.7,0))
local wld19=weld(prt19,prt19,prt2,euler(1.57,0,0)*cf(0,-1.9,0))
local wld20=weld(prt20,prt20,prt2,euler(1.57,0,0)*cf(0,-3.1,0))
local wld21=weld(prt21,prt21,prt2,euler(0,1.57,0)*cf(0,0,0))
local wld22=weld(prt22,prt22,prt21,euler(1.57,0,0)*cf(0,2,0))
local wld23=weld(prt23,prt23,prt21,euler(1.57,0,0)*cf(0,2,0))
local wld24=weld(prt24,prt24,prt21,euler(1.57,0,0)*cf(0,1.1,0))
local wld25=weld(prt25,prt25,prt21,euler(1.57,0,0.5)*cf(-0.25,0.2,0))
local wld26=weld(prt26,prt26,prt21,euler(1.57,0,-0.5)*cf(0.25,0.2,0))
local wld27=weld(prt27,prt27,prt21,euler(1.57,0,-0.7)*cf(0.3,1.6,0))
local wld28=weld(prt28,prt28,prt21,euler(1.57,0,0.7)*cf(-0.3,1.6,0))
local wld29=weld(prt29,prt29,prt21,euler(1.57,0,0)*cf(0.53,0.55,0))
local wld30=weld(prt30,prt30,prt21,euler(1.57,0,0)*cf(-0.53,0.55,0))
local wld31=weld(prt31,prt31,prt21,euler(1.57,0,0)*cf(0.45,-0.2,0))
local wld32=weld(prt32,prt32,prt21,euler(1.57,0,0)*cf(-0.45,-0.2,0))
local wld33=weld(prt33,prt33,prt21,euler(1.57,0,0)*cf(-0.45,-1.79,0))
local wld34=weld(prt34,prt34,prt21,euler(1.57,0,0)*cf(0.45,-1.79,0))
local wld35=weld(prt35,prt35,prt21,euler(1.57,0,0)*cf(0,-0.7,0))
local wld36=weld(prt36,prt36,prt21,euler(1.57,0,0)*cf(0,-1.9,0))
local wld37=weld(prt37,prt37,prt21,euler(1.57,0,0)*cf(0,-3.1,0))
table.insert(EffectParts,prt3)
table.insert(EffectParts,prt5)
table.insert(EffectParts,prt6)
table.insert(EffectParts,prt7)
table.insert(EffectParts,prt8)
table.insert(EffectParts,prt9)
table.insert(EffectParts,prt10)
table.insert(EffectParts,prt11)
table.insert(EffectParts,prt12)
table.insert(EffectParts,prt13)
table.insert(EffectParts,prt14)
table.insert(EffectParts,prt15)
table.insert(EffectParts,prt16)
table.insert(EffectParts,prt17)
table.insert(EffectParts,prt18)
table.insert(EffectParts,prt19)
table.insert(EffectParts,prt20)
table.insert(EffectParts,prt21)
table.insert(EffectParts,prt22)
table.insert(EffectParts,prt24)
table.insert(EffectParts,prt25)
table.insert(EffectParts,prt26)
table.insert(EffectParts,prt27)
table.insert(EffectParts,prt28)
table.insert(EffectParts,prt29)
table.insert(EffectParts,prt30)
table.insert(EffectParts,prt31)
table.insert(EffectParts,prt32)
table.insert(EffectParts,prt33)
table.insert(EffectParts,prt34)
table.insert(EffectParts,prt35)
table.insert(EffectParts,prt36)
table.insert(EffectParts,prt37)
 
--[[ARKANTUS BLADE THINGS]]
local modelzorz2=Instance.new("Model") 
modelzorz2.Parent=nil 
modelzorz2.Name="Arkantus Blade" 
 
local SwordWelds={}
local sprt1=part(1,modelzorz2,0,0,BrickColor.new("White"),"Sword Part1",vt(1,1,1))
local sprt2=part(1,modelzorz2,0,0,BrickColor.new("Bright red"),"Sword Part2",vt(1,1,1))
local sprt3=part(1,modelzorz2,0,0,BrickColor.new("Bright red"),"Sword Part3",vt(1,1,1))
local sprt4=part(1,modelzorz2,0,0,BrickColor.new("Bright red"),"Sword Part4",vt(1,1,1))
local sprt5=part(1,modelzorz2,0,0,BrickColor.new("Bright red"),"Sword Part5",vt(1,1,1))
local sprt6=part(1,modelzorz2,0,0,BrickColor.new("Light stone grey"),"Sword Part6",vt(1,1,1))
local sprt7=part(1,modelzorz2,0,0,BrickColor.new("Light stone grey"),"Sword Part7",vt(1,1,1))
local sprt8=part(1,modelzorz2,0,0,BrickColor.new("Dark stone grey"),"Sword Part8",vt(1,1,1))
local sprt9=part(1,modelzorz2,0,0,BrickColor.new("Medium stone grey"),"Sword Part9",vt(1,1,1))
local sprt10=part(1,modelzorz2,0.2,0,BrickColor.new("Institutional white"),"Sword Part10",vt(1,1,1))
local sprt11=part(1,modelzorz2,0,0,BrickColor.new("White"),"Sword Part11",vt(1,1,1))
local sprt12=part(1,modelzorz2,0,0,BrickColor.new("Black"),"Sword Part12",vt(1,1,1))
local sprt13=part(1,modelzorz2,0,0.5,BrickColor.new("Dark indigo"),"Sword Part13",vt(1,1,1))
local sprt14=part(1,modelzorz2,0,0.5,BrickColor.new("Dark indigo"),"Sword Part14",vt(1,1,1))
local smsh1=mesh("CylinderMesh",sprt1,"","",vt(0,0,0),vt(0.4,1.5,0.4))
local smsh2=mesh("CylinderMesh",sprt2,"","",vt(0,0,0),vt(0.41,0.2,0.41))
local smsh3=mesh("CylinderMesh",sprt3,"","",vt(0,0,0),vt(0.41,0.2,0.41))
local smsh4=mesh("CylinderMesh",sprt4,"","",vt(0,0,0),vt(0.41,0.2,0.41))
local smsh5=mesh("SpecialMesh",sprt5,"Sphere","",vt(0,0,0),vt(0.4,0.6,0.4))
local smsh6=mesh("BlockMesh",sprt6,"","",vt(0,0,0),vt(0.6,0.4,0.8))
local smsh7=mesh("BlockMesh",sprt7,"","",vt(0,0,0),vt(0.6,0.2,0.4))
local smsh8=mesh("SpecialMesh",sprt8,"Wedge","",vt(0,0,0),vt(0.4,0.5,1))
local smsh9=mesh("CylinderMesh",sprt9,"","",vt(0,0,0),vt(0.4,0.4,0.4))
local smsh10=mesh("BlockMesh",sprt10,"","",vt(0,0,0),vt(0.1,2.5,0.3))
local smsh11=mesh("CylinderMesh",sprt11,"","",vt(0,0,0),vt(0.4,0.2,0.4))
local smsh12=mesh("CylinderMesh",sprt12,"","",vt(0,0,0),vt(0.6,0.1,0.6))
local smsh13=mesh("BlockMesh",sprt13,"","",vt(0,0,0),vt(0.2,2.7,0.49))
local smsh14=mesh("SpecialMesh",sprt14,"Wedge","",vt(0,0,0),vt(0.2,0.5,0.49))
local swld1=weld(sprt1,sprt1,LeftArm,euler(1.57,0,0)*cf(0,1,0))
local swld2=weld(sprt1,sprt2,sprt1,euler(0,0,0)*cf(0,0,0))
local swld3=weld(sprt1,sprt3,sprt1,euler(0,0,0)*cf(0,0.5,0))
local swld4=weld(sprt1,sprt4,sprt1,euler(0,0,0)*cf(0,-0.5,0))
local swld5=weld(sprt1,sprt5,sprt1,euler(0,0,0)*cf(0,0.9,0))
local swld6=weld(sprt1,sprt6,sprt1,euler(0,0,0)*cf(0,-0.9,0))
local swld7=weld(sprt1,sprt7,sprt6,euler(1.57,0,0)*cf(0,-0.4,0.275))
local swld8=weld(sprt1,sprt8,sprt6,euler(-1.57+0.1,0,0)*cf(0,-0.7,0.1))
local swld9=weld(sprt1,sprt9,sprt6,euler(-0.2,0,0)*cf(0,-0.5,-0.2))
local swld10=weld(sprt1,sprt10,sprt6,euler(0,0,0)*cf(0,-2,0))
local swld11=weld(sprt1,sprt11,sprt9,euler(0,0,1.57)*cf(0,-0.3,0))
local swld12=weld(sprt1,sprt12,sprt11,euler(0,0,0)*cf(0,0,0))
local swld13=weld(sprt1,sprt13,sprt10,euler(0,0,0)*cf(0,0,0))
local swld14=weld(sprt1,sprt14,sprt10,euler(0,3.14,0)*cf(0,-1.92,0))
 
numb=0.9
for i=1,3 do
local sprt13=part(1,modelzorz2,0,0,BrickColor.new("Bright red"),"Sword Part13",vt(1,1,1))
local smsh13=mesh("SpecialMesh",sprt13,"FileMesh","9756362",vt(0,0,0),vt(0.2,0.4,0.2))
local swld13=weld(sprt1,sprt13,sprt11,cf(0,0.8,0)*euler(1.57,numb,0))
numb=numb-0.7
end
 
for _,i in pairs(sprt1:children()) do
if i.className=="Weld" then
print(i.Part0)
table.insert(SwordWelds,i)
end
end
 
function SummonSword()
Weapon="ArkBlade"
modelzorz2.Parent=Character
for i=1,#SwordWelds do
SwordWelds[i].Parent=sprt1
end
end
 
function UnsummonSword()
Weapon="None"
modelzorz2.Parent=nil
end
--[[END OF ARKANTUS BLADE THINGS]]
 
if (script.Parent.className ~= "HopperBin") then 
Tool = Instance.new("HopperBin") 
Tool.Parent = Backpack 
Tool.Name = "Fen" 
script.Parent = Tool 
end 
Bin = script.Parent 
 
BPos=Instance.new("BodyPosition")
Gy=Instance.new("BodyGyro")
 
function so(id,par,vol,pit) 
coroutine.resume(coroutine.create(function()
local sou = Instance.new("Sound",par or workspace)
sou.Volume=vol
sou.Pitch=pit or 1
sou.SoundId=Sounds[id].Id
--sou.SoundId=id
swait() 
sou:play() 
swait(6) 
sou:Remove() 
end))
end
 
Sounds={
Woosh1={Id=Asset..(169445092)},
Woosh2={Id=Asset..(169445073)},
Woosh3={Id=Asset..(169445121)},
AirWoosh={Id=Asset..(147722270)},
Smash={Id=Asset..(2760979)},
Hit1={Id=Asset..(169380525)},
Hit2={Id=Asset..(169380538)},
Hit3={Id=Asset..(169380528)},
Swing1={Id=Asset..(10209640)},
Appear={Id=Asset..(161006033)},
TeslaShot={Id=Asset..(169445602)},
Explosion1={Id=Asset..(153092334)},
Charge2={Id=Asset..(169380495)},
PileDrive={Id=Asset..(2974000)},
BeamLockon={Id=Asset..(169445683)},
Elec={Id=Asset..(169380505)},
DoctorOctogonapus={Id=Asset..(130781950)},
Activate={Id=Asset..(169445572)},
}
 
ContentProvider = game:GetService("ContentProvider")
for _,v in pairs(Sounds) do
ContentProvider:Preload(v.Id)
end
 
function hideanim() 
equipped=false
Neck.C0=necko
RootJoint.C0=RootCF
if Mode=="Obelisk" then
wld1.C0=euler(0,0,1.3)*cf(0,0,-1)
wld1.C1=euler(0,0,0)
wld2.C0=euler(0,0,0)*cf(0,0.5,0)
elseif Mode=="Planted" then
wld2.C0=euler(0,0,0)*cf(0,-1,0)
end
end 
 
function equipanim() 
equipped=true
if Mode=="Obelisk" then
wld1.C0=euler(1.4,0,0)*cf(0.5,0.5,0)
wld1.C1=euler(0,0,-0.5)
wld2.C0=euler(0,0,0)*cf(0,-1,0)
Neck.C0=necko*euler(0,0,0.5)
RootJoint.C0=RootCF*euler(0,0,-0.5)
RW.C0=cf(1.5,0.5,0)*euler(2.8,0,0.5)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(0,0,-0.2)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
RH.C0=RHC0*cf(0,0,0)*euler(0,0,0)
RH.C1=RHC1
LH.C0=LHC0*cf(0,0,0)*euler(0,0,0)
LH.C1=LHC1
RootJoint.C1=RootCF
elseif Mode=="Planted" then
wld1.C0=euler(1.57,0,0)*cf(1,1.5,0)
wld1.C1=euler(0,0,0.6)
wld2.C0=euler(0,0,0)*cf(0,-1,0)
Neck.C0=necko*euler(0,0,0)
RootJoint.C0=RootCF*cf(0,0,0)
RW.C0=cf(1.5,0.5,0)*euler(0,0,0.2)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(0,0,-0.2)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
RH.C0=RHC0*cf(0,0,0)*euler(0,0,0)
RH.C1=RHC1
LH.C0=LHC0*cf(0,0,0)*euler(0,0,0)
LH.C1=LHC1
end
end 
 
function lightattackone()
attack=true
for i=0,1,0.1 do
swait()
Neck.C0=necko*euler(0,0,0.5+0.5*i)
RootJoint.C0=RootCF*euler(0,0,-0.5-0.5*i)
LW.C0=cf(-1.5+0.5*i,0.5,-0.5*i)*euler(1.57*i,0,-0.2+1.2*i)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
end
so("Woosh1",LeftArm,1,1) 
con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,10,20,5,"Normal",hitbox,.5,"Hit1",1) end) 
hitbox.Parent=modelzorz
hitbox.Size=vt(1,2,1)
hitbox.CFrame=LeftArm.CFrame
for i=0,1,0.2 do
swait()
Neck.C0=necko*euler(0,0,1)
RootJoint.C0=RootCF*euler(0,0,-1)
LW.C0=cf(-1-0.5*i,0.5,-0.5+0.5*i)*euler(1.57,0,1-2.3*i)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
hitbox.CFrame=LeftArm.CFrame
end
numb=2
for i=0,1,0.1 do
swait()
Neck.C0=necko*euler(0,0,1)
RootJoint.C0=RootCF*euler(0,0,-1)
LW.C0=cf(-1.5,0.5,0)*euler(1.57,0,-1.3-0.27*(i*numb))
LW.C1=cf(0,0.5,0)*euler(0,0,0)
hitbox.CFrame=LeftArm.CFrame
numb=numb-0.1
end
con1:disconnect()
hitbox.Parent=nil
for i=0,1,0.1 do
swait()
Neck.C0=necko*euler(0,0,1-0.5*i)
RootJoint.C0=RootCF*euler(0,0,-1+0.5*i)
LW.C0=cf(-1.5,0.5,0)*euler(1.57-1.57*i,0,-1.57+1.37*i)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
end
attack=false
end
 
function lightattacktwo()
attack=true
so("Woosh1",LeftLeg,1,1.4) 
con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,10,20,math.random(10,20),"Normal",hitbox,.5,"Hit2",1.1) end) 
hitbox.Parent=modelzorz
hitbox.Size=vt(1,2,1)
hitbox.CFrame=LeftLeg.CFrame
for i=0,1,0.2 do
swait()
Neck.C0=necko*euler(0.2*i,0,0.5)
RootJoint.C0=RootCF*euler(0,0,-0.5)
LW.C0=cf(-1.5,0.5,0)*euler(-0.4*i,0,-0.2)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
RH.C0=RHC0*cf(0,0.1*i,0)*euler(-0.1*i,0,0)
RH.C1=RHC1
LH.C0=LHC0*cf(-0.8*i,0,0.8*i)*euler(0,0.6*i,1*i)
LH.C1=LHC1
hitbox.CFrame=LeftLeg.CFrame
end
con1:disconnect()
hitbox.Parent=nil
for i=0,1,0.05 do
swait()
Neck.C0=necko*euler(0.2-0.2*i,0,0.5)
RootJoint.C0=RootCF*euler(0,0,-0.5)
LW.C0=cf(-1.5,0.5,0)*euler(-0.4+0.4*i,0,-0.2)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
RH.C0=RHC0*cf(0,0.1-0.1*i,0)*euler(-0.1+0.1*i,0,0)
RH.C1=RHC1
LH.C0=LHC0*cf(-0.8+0.8*i,0,0.8-0.8*i)*euler(0,0.6-0.6*i,1-1*i)
LH.C1=LHC1
end
attack=false
end
 
function lightattackthree()
attack=true
so("Woosh1",LeftLeg,1,2) 
con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,10,25,math.random(20,40),"Normal",hitbox,.5,"Hit2",1) end) 
hitbox.Parent=modelzorz
hitbox.Size=vt(1,2,1)
hitbox.CFrame=LeftLeg.CFrame
for i=0,1,0.2 do
swait()
Neck.C0=necko*euler(0.3*i,0,0.5)
RootJoint.C0=RootCF*euler(0,0,-0.5)
LW.C0=cf(-1.5,0.5,0)*euler(0,0,-0.2)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
RH.C0=RHC0*cf(0,0,0)*euler(0,0,0)
RH.C1=RHC1
LH.C0=LHC0*cf(0,0,0)*euler(0,0.5*i,-1.5*i)
LH.C1=LHC1
hitbox.CFrame=LeftLeg.CFrame
end
con1:disconnect()
hitbox.Parent=nil
for i=0,1,0.05 do
swait()
Neck.C0=necko*euler(0.3-0.3*i,0,0.5)
RootJoint.C0=RootCF*euler(0,0,-0.5)
RH.C0=RHC0*cf(0,0,0)*euler(0,0,0)
RH.C1=RHC1
LH.C0=LHC0*cf(0,0,0)*euler(0,0.5-0.5*i,-1.5+1.5*i)
LH.C1=LHC1
end
attack=false
end
 
function lightattackfour()
attack=true
so("Woosh2",LeftLeg,1,1) 
con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,15,30,math.random(20,40),"Normal",hitbox,.8,"Hit3",1) end) 
hitbox.Parent=modelzorz
hitbox.Size=vt(2,2,2)
hitbox.CFrame=prt38.CFrame
for i=0,1,0.2 do
swait()
wld1.C0=euler(1.4+0.5*i,-1*i,0)*cf(0.5,0.5,0)
wld1.C1=euler(0,0,-0.5-0.2*i)
wld2.C0=euler(0,0,0)*cf(0,-1,0)
Neck.C0=necko*euler(0,0,0.5-0.9*i)
RootJoint.C0=RootCF*euler(0,0,-0.5+0.9*i)
RW.C0=cf(1.5,0.5,0)*euler(2.8-0.5*i,0,0.5)
RW.C1=cf(0,0.5,0)*euler(0,1*i,0)
LW.C0=cf(-1.5,0.5,0)*euler(0,0,-0.2)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
hitbox.CFrame=prt38.CFrame
end
numb=2
for i=0,1,0.1 do
swait()
Neck.C0=necko*euler(0,0,-0.4-0.1*(i*numb))
RootJoint.C0=RootCF*euler(0,0,0.4+0.1*(i*numb))
RW.C0=cf(1.5,0.5,0)*euler(2.3-0.1*(i*numb),0,0.5)
RW.C1=cf(0,0.5,0)*euler(0,1,0)
LW.C0=cf(-1.5,0.5,0)*euler(0,0,-0.2)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
hitbox.CFrame=prt38.CFrame
numb=numb-0.1
end
con1:disconnect()
hitbox.Parent=nil
for i=0,1,0.1 do
swait()
wld1.C0=euler(1.9-0.5*i,-1+1*i,0)*cf(0.5,0.5,0)
wld1.C1=euler(0,0,-0.7+0.2*i)
wld2.C0=euler(0,0,0)*cf(0,-1,0)
Neck.C0=necko*euler(0,0,-0.5+1*i)
RootJoint.C0=RootCF*euler(0,0,0.5-1*i)
RW.C0=cf(1.5,0.5,0)*euler(2.2+0.6*i,0,0.5)
RW.C1=cf(0,0.5,0)*euler(0,1-1*i,0)
LW.C0=cf(-1.5,0.5,0)*euler(0,0,-0.2)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
end
attack=false
end
 
function heavyattackone()
attack=true
for i=0,1,0.05 do
swait()
wld1.C0=euler(1.4,0,0)*cf(0.5,0.5,0)
wld1.C1=euler(0,0,-0.5)
wld2.C0=euler(0,0,0)*cf(0,-1,0)
Neck.C0=necko*euler(-0.2*i,0,0.5+0.3*i)
RootJoint.C0=RootCF*euler(0,0,-0.5-0.3*i)
RW.C0=cf(1.5,0.5,0)*euler(2.8+0.2*i,0,0.5+0.2*i)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5+1*i,0.5,-0.5*i)*euler(2.8*i,0,-0.2+1*i)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
end
so("Woosh2",prt2,1,0.9) 
con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,15,20,math.random(20,40),"Normal",hitbox,1,"Hit3",1) end) 
hitbox.Parent=modelzorz
hitbox.Size=vt(2.5,10,2.5)
hitbox.CFrame=prt2.CFrame*cf(0,2,0)
for i=0,1,0.1 do
swait()
wld1.C0=euler(1.4+0.1*i,0,0)*cf(0.5+0.5*i,0.5-0.5*i,0)
wld1.C1=euler(0.5*i,0,-0.5+1*i)
wld2.C0=euler(0,0,0)*cf(0,-1,0)
Neck.C0=necko*euler(-0.2+0.3*i,0,0.8-2*i)
RootJoint.C0=RootCF*euler(0,0,-0.8+2*i)
RW.C0=cf(1.5,0.5,0)*euler(3-2.5*i,0,0.7-1*i)
RW.C1=cf(0,0.5,0)*euler(0,1.57*i,0)
LW.C0=cf(-0.5,0.5,-0.5)*euler(2.8-1.5*i,0,0.8)
LW.C1=cf(0,0.5,0)*euler(0.5*i,0,0.5*i)
hitbox.CFrame=prt2.CFrame*cf(0,2,0)
end
numb=2
for i=0,1,0.1 do
swait()
wld1.C0=euler(1.5,0,0)*cf(1,0,0)
wld1.C1=euler(0.5-0.2*i*numb,0,0.5)
wld2.C0=euler(0,0,0)*cf(0,-1,0)
Neck.C0=necko*euler(0.1,0,-1.2)
RootJoint.C0=RootCF*euler(0,0,1.2)
RW.C0=cf(1.5,0.5,0)*euler(0.5-0.1*i*numb,0,-0.3-0.1*i*numb)
RW.C1=cf(0,0.5,0)*euler(0,1.57,0)
LW.C0=cf(-0.5,0.5,-0.5)*euler(1.3+0.7*i*numb,0,0.8)
LW.C1=cf(0,0.5,0)*euler(0.5,0,0.5)
hitbox.CFrame=prt2.CFrame*cf(0,2,0)
numb=numb-0.1
end
con1:disconnect()
hitbox.Parent=nil
for i=0,1,0.1 do
swait()
wld1.C0=euler(1.5-0.1*i,0,0)*cf(1-0.5*i,0.5*i,0)
wld1.C1=euler(0.3-0.3*i,0,0.5-1*i)
wld2.C0=euler(0,0,0)*cf(0,-1,0)
Neck.C0=necko*euler(0.1,0,-1.2+1.7*i)
RootJoint.C0=RootCF*euler(0,0,1.2-1.7*i)
RW.C0=cf(1.5,0.5,0)*euler(0.4+2.4*i,0,-0.4+0.9*i)
RW.C1=cf(0,0.5,0)*euler(0,1.57-1.57*i,0)
LW.C0=cf(-0.5-1*i,0.5,-0.5+0.5*i)*euler(2-2*i,0,0.8-1*i)
LW.C1=cf(0,0.5,0)*euler(0.5-0.5*i,0,0.5-0.5*i)
end
attack=false
end
 
function heavyattackthree()
attack=true
for i=0,1,0.05 do
swait()
wld1.C0=euler(1.4+0.5*i,0,0)*cf(0.5,0.5,0)
wld1.C1=euler(0,0,-0.5+0.5*i)
wld2.C0=euler(0,0,0)*cf(0,-1+0.5*i,0)
Neck.C0=necko*euler(0,0,0.5+1*i)
RootJoint.C0=RootCF*euler(0,0,-0.5-1*i)
RW.C0=cf(1.5,0.5,0)*euler(2.8-2.8*i,0,0.5)
RW.C1=cf(0,0.5,0)*euler(0,1.57*i,0)
LW.C0=cf(-1.5+1.5*i,0.5,-0.5*i)*euler(0.6*i,0,-0.2+1*i)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
end
so("Woosh2",prt2,1,0.7) 
con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,10,15,math.random(20,40),"Normal",hitbox,.6,"Hit2",1) end) 
hitbox.Parent=modelzorz
hitbox.Size=vt(2.5,10,2.5)
hitbox.CFrame=prt2.CFrame*cf(0,2,0)
for i=0,1,0.05 do
swait()
Neck.C0=necko*euler(0,0,1.5-2.9*i)
RootJoint.C0=RootCF*euler(0,0,-1.5+2.9*i)
RootJoint.C1=RootCF*euler(0,0,-6.28*i)
hitbox.CFrame=prt2.CFrame*cf(0,2,0)
end
numb=2
for i=0,1,0.1 do
swait()
Neck.C0=necko*euler(0,0,1.5-2.9-0.1*i*numb)
RootJoint.C0=RootCF*euler(0,0,-1.5+2.9+0.1*i*numb)
RootJoint.C1=RootCF
RW.C0=cf(1.5,0.5,0)*euler(0,0,0.5)
RW.C1=cf(0,0.5,0)*euler(0,1.57,0)
LW.C0=cf(0,0.5,-0.5)*euler(0.6-0.2*i*numb,0,0.8-0.2*i*numb)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
hitbox.CFrame=prt2.CFrame*cf(0,2,0)
numb=numb-0.1
end
con1:disconnect()
hitbox.Parent=nil
for i=0,1,0.1 do
swait()
wld1.C0=euler(1.9-0.5*i,0,0)*cf(0.5,0.5,0)
wld1.C1=euler(0,0,-0.5*i)
wld2.C0=euler(0,0,0)*cf(0,-0.5-0.5*i,0)
Neck.C0=necko*euler(0,0,-1.5+2*i)
RootJoint.C0=RootCF*euler(0,0,1.5-2*i)
RW.C0=cf(1.5,0.5,0)*euler(2.8*i,0,0.5)
RW.C1=cf(0,0.5,0)*euler(0,1.57-1.57*i,0)
LW.C0=cf(-1.5*i,0.5,-0.5+0.5*i)*euler(0.4-0.4*i,0,0.6-0.8*i)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
end
attack=false
end
 
function heavyattackfour()
attack=true
for i=0,1,0.1 do
swait()
wld1.C0=euler(1.4+0.17*i,0,0)*cf(0.5+0.5*i,0.5+1*i,0)
wld1.C1=euler(0,0,-0.5+0.9*i)
wld2.C0=euler(0,0,0)*cf(0,-1,0)
Neck.C0=necko*euler(-0.4*i,0,0.5-0.5*i)
RootJoint.C0=RootCF*euler(0,0,-0.5+0.5*i)
RW.C0=cf(1.5-0.2*i,0.5+0.4*i,0)*euler(2.8+0.3*i,0,0.5-0.9*i)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5+0.2*i,0.5+0.4*i,0)*euler(3.1*i,0,-0.2+0.6*i)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
RH.C0=RHC0*cf(0,0,0)*euler(0,0,0)
RH.C1=RHC1
LH.C0=LHC0*cf(0,0,0)*euler(0,0,0)
LH.C1=LHC1
end
Humanoid.WalkSpeed=0
so("Woosh3",prt2,1,1) 
for i=0,1,0.1 do
swait()
wld1.C0=euler(1.57+0.43*i,0,0)*cf(1,1.5,0)
wld1.C1=euler(0,0,0.4)
wld2.C0=euler(0,0,0)*cf(0,-1,0)
Neck.C0=necko*euler(-0.4+0.8*i,0,0)
RootJoint.C0=RootCF*cf(0,0,-1*i)
RW.C0=cf(1.5-0.2-0.2*i,0.5+0.4-0.4*i,0)*euler(3.1-2.7*i,0,-0.4)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5+0.2-0.2*i,0.5+0.4-0.4*i,0)*euler(3.1-2.7*i,0,0.4)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
RH.C0=RHC0*cf(0,0.5*i,0.3*i)*euler(0,0,-0.5*i)
RH.C1=RHC1
LH.C0=LHC0*cf(-0.5*i,0.8*i,0.5*i)*euler(0,0,0.2*i)
LH.C1=LHC1
end
hitfloor=false
while hitfloor==false do
swait()
hit,pos = rayCast(prt41.Position, (CFrame.new(prt41.Position,prt41.Position - Vector3.new(0,2,0))).lookVector, 2, Character)
if hit ~= nil then
hitfloor = true
end
end
local paint=part(1,workspace,0,1,BrickColor.new("Black"),"BreakEffect",vt(5,1,5))
paint.CFrame=prt41.CFrame*euler(0,0,-1.57)*cf(0,-1,0)
paint.Anchored=true
decc=Instance.new("Decal")
decc.Parent=paint
decc.Shiny=0
decc.Specular=0
decc.Texture="http://www.roblox.com/asset/?id=49173398"
decc.Face="Top"
so("Smash",paint,1,0.3) 
--so("Smash",paint,1,0.1) 
MagicCircle(BrickColor.new("White"),prt41.CFrame,0,0,0,0.5,0.5,0.5,0.01)
--MagicCircle(BrickColor.new("Dark indigo"),prt41.CFrame,0,0,0,2,2,2,0.01)
WaveEffect2(BrickColor.new("White"),prt41.CFrame*euler(0,0,-1.57),0,0,0,0.3,0.3,0.3,0.02)
coroutine.resume(coroutine.create(function()
con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,20,30,math.random(20,40),"Knockdown",RootPart,2,"Hit3",0.8) end) 
--con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,2000,3000,math.random(9000,10000),"Knockdown",RootPart,2) end) 
hitbox.Parent=workspace
hitbox.Size=vt(5,5,5)
--hitbox.Size=vt(100,100,100)
CF=prt41.CFrame
hitbox.CFrame=prt41.CFrame
for i=0,1,0.1 do
swait()
hitbox.CFrame=CF
end
con1:disconnect()
hitbox.Parent=nil
end))
game:GetService("Debris"):AddItem(paint,10)
wait(0.5)
Humanoid.WalkSpeed=16
for i=0,1,0.05 do
swait()
wld1.C0=euler(2-0.6*i,0,0)*cf(1-0.5*i,1.5-1*i,0)
wld1.C1=euler(0,0,0.4-0.9*i)
wld2.C0=euler(0,0,0)*cf(0,-1,0)
Neck.C0=necko*euler(0.4-0.4*i,0,0.5*i)
RootJoint.C0=RootCF*cf(0,0,-1+1*i)*euler(0,0,-0.5*i)
RW.C0=cf(1.5,0.5,0)*euler(0.4+2.4*i,0,-0.4+0.9*i)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(0.4-0.4*i,0,0.4-0.6*i)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
RH.C0=RHC0*cf(0,0.5-0.5*i,0.3-0.3*i)*euler(0,0,-0.5+0.5*i)
RH.C1=RHC1
LH.C0=LHC0*cf(-0.5+0.5*i,0.8-0.8*i,0.5-0.5*i)*euler(0,0,0.2-0.2*i)
LH.C1=LHC1
end
attack=false
end
 
function Plant()
attack=true
Humanoid.WalkSpeed=0
for i=0,1,0.1 do
swait()
wld1.C0=euler(1.4+0.17*i,0,0)*cf(0.5+0.5*i,0.5+1*i,0)
wld1.C1=euler(0,0,-0.5+1.1*i)
wld2.C0=euler(0,0,0)*cf(0,-1,0)
Neck.C0=necko*euler(-0.4*i,0,0.5-0.5*i)
RootJoint.C0=RootCF*euler(0,0,-0.5+0.5*i)
RW.C0=cf(1.5-0.2*i,0.5+0.4*i,0)*euler(2.8-0.3*i,0,0.5-1.1*i)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5+0.2*i,0.5+0.4*i,0)*euler(2.5*i,0,-0.2+0.8*i)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
RH.C0=RHC0*cf(0,0,0)*euler(0,0,0)
RH.C1=RHC1
LH.C0=LHC0*cf(0,0,0)*euler(0,0,0)
LH.C1=LHC1
end
so("Swing1",prt2,1,0.6) 
for i=0,1,0.1 do
swait()
wld1.C0=euler(1.57,0,0)*cf(1,1.5,0)
wld1.C1=euler(0,0,0.6)
wld2.C0=euler(0,0,0)*cf(0,-1,0)
Neck.C0=necko*euler(-0.4+0.4*i,0,0)
RootJoint.C0=RootCF*cf(0,0,-1*i)
RW.C0=cf(1.5-0.2+0.2*i,0.5+0.4-0.4*i,0)*euler(2.5-0.93*i,0,-0.6)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5+0.2-0.2*i,0.5+0.4-0.4*i,0)*euler(2.5-0.93*i,0,0.6)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
RH.C0=RHC0*cf(0,0.5*i,0.1*i)*euler(0,0,-0.5*i)
RH.C1=RHC1
LH.C0=LHC0*cf(-0.5*i,0.8*i,0.1*i)*euler(0,0,0.2*i)
LH.C1=LHC1
end
hitfloor=false
while hitfloor==false do
swait()
hit,pos = rayCast(prt1.Position, (CFrame.new(prt1.Position,prt1.Position - Vector3.new(0,2,0))).lookVector, 2.5, Character)
if hit ~= nil then
hitfloor = true
end
end
for i=1,10 do
Col=BrickColor.new("DarkGreen")
if hit~=nil then
Col=hit.BrickColor
end
local groundpart=part(3,workspace,0,0,Col,"Ground",vt(math.random(2,3)+math.random(),math.random(2,3)+math.random(),math.random(2,3)+math.random()))
print(groundpart.BrickColor)
groundpart.Anchored=true
groundpart.CanCollide=true
groundpart.CFrame=cf(pos)*cf(math.random(-3,2)+math.random(),0,math.random(-3,2)+math.random())*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
game:GetService("Debris"):AddItem(groundpart,10)
coroutine.resume(coroutine.create(function(Part) 
wait(5)
for i=0,1,0.05 do
wait(0)
Part.Transparency=i
end
Part.Parent=nil
end),groundpart)
end
coroutine.resume(coroutine.create(function()
con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,10,20,math.random(20,40),"Knockdown",RootPart,2) end) 
hitbox.Parent=workspace
hitbox.Size=vt(8,8,8)
CF=prt38.CFrame
hitbox.CFrame=prt38.CFrame
for i=0,1,0.1 do
swait()
hitbox.CFrame=CF
end
con1:disconnect()
hitbox.Parent=nil
end))
wld1.Part1=nil
BPos.P=50000
BPos.D=1000
BPos.maxForce=Vector3.new(math.huge,math.huge,math.huge)
BPos.position=prt1.Position
BPos.Parent=prt1
Gy.maxTorque = vt(math.huge,math.huge,math.huge) 
Gy.P = 20e+003 
Gy.cframe=prt1.CFrame
Gy.Parent=prt1
prt1.CanCollide=true
prt41.CanCollide=true
MagicCircle(BrickColor.new("White"),prt38.CFrame,0,0,0,2,2,2,0.05)
so("Smash",prt38,1,0.5) 
Mode="Planted"
wait(0.5)
ArkActivate()
for i=0,1,0.1 do
swait()
wld1.C0=euler(1.57,0,0)*cf(1,1.5,0)
wld1.C1=euler(0,0,0.6)
wld2.C0=euler(0,0,0)*cf(0,-1,0)
Neck.C0=necko*euler(0,0,0)
RootJoint.C0=RootCF*cf(0,0,-1+1*i)
RW.C0=cf(1.5,0.5,0)*euler(1.57-1.57*i,0,-0.6+0.8*i)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(1.57-1.57*i,0,0.6-0.8*i)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
RH.C0=RHC0*cf(0,0.5-0.5*i,0.1-0.1*i)*euler(0,0,-0.5+0.5*i)
RH.C1=RHC1
LH.C0=LHC0*cf(-0.5+0.5*i,0.8-0.8*i,0.1-0.1*i)*euler(0,0,0.2-0.2*i)
LH.C1=LHC1
end
Humanoid.WalkSpeed=16
hideanim()
attack=false
end
 
function GetArk()
attack=true
Disappear(modelzorz)
wait(0.5)
ArkUnactivate()
Mode="Obelisk"
prt1.CanCollide=false
prt41.CanCollide=false
BPos.Parent=nil
Gy.Parent=nil
wld1.Part1=RightArm
Reappear(modelzorz)
equipanim() 
attack=false
end
 
function ObeliskHop()
attack=true
Humanoid.WalkSpeed=0
--so("http://roblox.com/asset/?id=166095295",Torso,1,1)  --boidzerg
so("AirWoosh",Torso,1,1.5)
for i=0,1,0.1 do
swait()
Neck.C0=necko*euler(-0.3*i,0,0)
RootJoint.C0=RootCF*cf(0,0,-1.9*i)*euler(0.7*i,0,0)
RW.C0=cf(1.5,0.5,0)*euler(0.7*i,0,0.2-0.2*i)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(-0.2*i,0,-0.2-0.2*i)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
RH.C0=RHC0*cf(0,0.5*i,0.1*i)*euler(0,0,-0.5*i)
RH.C1=RHC1
LH.C0=LHC0*cf(-0.5*i,1.6*i,0.1*i)*euler(0,0,-0.2*i)
LH.C1=LHC1
end
Disappear(Character)
swait(5)
so("AirWoosh",Torso,1,1)
swait(5)
Torso.CFrame=prt1.CFrame*cf(math.random(-5,5),math.random(1,5),math.random(-5,5))
Reappear(Character)
Neck.C0=necko*euler(0,0,0)
RootJoint.C0=RootCF*cf(0,0,0)*euler(0.5,0,0)
RW.C0=cf(1.5,0.5,0)*euler(-0.8,0,0.4)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(-0.8,0,-0.4)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
RH.C0=RHC0*cf(0,0,0)*euler(-0.3,0,-0.3)
RH.C1=RHC1
LH.C0=LHC0*cf(0,0,0)*euler(-0.3,0,0.3)
LH.C1=LHC1
swait(2)
numb=2
for i=0,1,0.1 do
swait()
Neck.C0=necko*euler(0,0,0)
RootJoint.C0=RootCF*cf(0,0,-1.5*i*numb)*euler(0.5-0.2*i*numb,0,0)
RW.C0=cf(1.5,0.5,0)*euler(-0.8-0.2*i,0,0.4)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(-0.8-0.2*i,0,-0.4)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
RH.C0=RHC0*cf(0,0.5*i,0.1*i)*euler(-0.3+0.3*i,0,-0.3-0.2*i)
RH.C1=RHC1
LH.C0=LHC0*cf(-0.5*i,1.2*i,0.1*i)*euler(-0.3+0.3*i,0,0.3-0.1*i)
LH.C1=LHC1
numb=numb-0.1
end
swait(5)
for i=0,1,0.1 do
swait()
Neck.C0=necko*euler(0,0,0)
RootJoint.C0=RootCF*cf(0,0,-1.5+1.5*i)*euler(0.3-0.3*i,0,0)
RW.C0=cf(1.5,0.5,0)*euler(-1+1*i,0,0.4-0.2*i)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(-1+1*i,0,-0.4+0.2*i)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
RH.C0=RHC0*cf(0,0.5-0.5*i,0.1-0.1*i)*euler(0,0,-0.5+0.5*i)
RH.C1=RHC1
LH.C0=LHC0*cf(-0.5+0.5*i,1.2-1.2*i,0.1-0.1*i)*euler(0,0,0.2-0.2*i)
LH.C1=LHC1
end
Humanoid.WalkSpeed=16
attack=false
end
 
function ObeliskSmash()
attack=true
for i=0,1,0.1 do
swait()
Neck.C0=necko*euler(0,0,0)
RootJoint.C0=RootCF*cf(0,0,0)
RW.C0=cf(1.5-0.5*i,0.5,-0.5*i)*euler(1.57*i,0,0.2-0.8*i)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5+0.5*i,0.5,-0.5*i)*euler(1.57*i,0,-0.2+0.8*i)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
RH.C0=RHC0*cf(0,0,0)*euler(0,0,0)
RH.C1=RHC1
LH.C0=LHC0*cf(0,0,0)*euler(0,0,0)
LH.C1=LHC1
end
swait(10)
so("Appear",RightArm,1,1) 
MagicCircle(BrickColor.new("White"),LeftArm.CFrame*cf(0,-1,0)*euler(0,0,0),0,0,0,1,0.2,0.2,0.05)
MagicCircle(BrickColor.new("White"),LeftArm.CFrame*cf(0,-1,0)*euler(0,0,0),0,0,0,0.2,1,0.2,0.05)
MagicCircle(BrickColor.new("White"),LeftArm.CFrame*cf(0,-1,0)*euler(0,0,0),0,0,0,0.2,0.2,1,0.05)
Disappear(modelzorz)
swait(20)
TehCF=Torso.CFrame
BPos.position=Torso.Position+vt(0,80,0)
prt1.CFrame=cf(Torso.Position+vt(0,80,0))
Gy.cframe=TehCF*euler((math.random(-1,0)+math.random())/3,(math.random(-1,0)+math.random())/3,(math.random(-1,0)+math.random())/3)
swait(40)
coroutine.resume(coroutine.create(function()
Reappear(modelzorz)
BPos.Parent=nil
local vel=Instance.new("BodyVelocity")
vel.Parent=prt1
vel.maxForce=vt(4e+005,4e+005,4e+005)*1
PrtCF=prt1.CFrame*euler(1.57,0,0)
vel.velocity=PrtCF.lookVector*-150
hitfloor=false
while hitfloor==false do
swait()
hit,pos = rayCast(prt1.Position, (CFrame.new(prt1.Position,prt1.Position - Vector3.new(0,2,0))).lookVector, 2, Character)
if hit ~= nil then
hitfloor = true
end
end
vel.Parent=nil
game:GetService("Debris"):AddItem(vel,0.1)
prt1.Anchored=true
coroutine.resume(coroutine.create(function()
swait(50)
prt1.Anchored=false
print("underp")
end))
for i=1,10 do
Col=BrickColor.new("DarkGreen")
if hit~=nil then
Col=hit.BrickColor
end
local groundpart=part(3,workspace,0,0,Col,"Ground",vt(math.random(2,3)+math.random(),math.random(2,3)+math.random(),math.random(2,3)+math.random()))
print(groundpart.BrickColor)
groundpart.Anchored=true
groundpart.CanCollide=true
groundpart.CFrame=cf(pos)*cf(math.random(-3,2)+math.random(),0,math.random(-3,2)+math.random())*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
game:GetService("Debris"):AddItem(groundpart,10)
coroutine.resume(coroutine.create(function(Part) 
wait(5)
for i=0,1,0.05 do
wait(0)
Part.Transparency=i
end
Part.Parent=nil
end),groundpart)
end
coroutine.resume(coroutine.create(function()
con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,10,15,math.random(10,20),"Knockdown",prt1,2) end) 
hitbox.Parent=workspace
hitbox.Size=vt(11,11,11)
CF=prt38.CFrame
hitbox.CFrame=cf(prt38.Position)
for i=0,1,0.1 do
swait()
hitbox.CFrame=CF
end
con1:disconnect()
hitbox.Parent=nil
end))
BPos.P=50000
BPos.D=1000
BPos.maxForce=Vector3.new(math.huge,math.huge,math.huge)
BPos.position=prt1.Position
BPos.Parent=prt1
MagicCircle(BrickColor.new("White"),prt38.CFrame,0,0,0,3,3,3,0.05)
WaveEffect2(BrickColor.new("White"),prt38.CFrame*cf(0,4,0),0,0,0,0.3,0.3,0.3,0.02)
so("Smash",prt38,1,0.5) 
end))
for i=0,1,0.1 do
swait()
Neck.C0=necko*euler(0,0,0)
RootJoint.C0=RootCF*cf(0,0,0)
RW.C0=cf(1+0.5*i,0.5,-0.5+0.5*i)*euler(1.57-1.57*i,0,-0.6+0.8*i)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5+0.5-0.5*i,0.5,-0.5+0.5*i)*euler(1.57-1.57*i,0,0.6-0.8*i)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
RH.C0=RHC0*cf(0,0,0)*euler(0,0,0)
RH.C1=RHC1
LH.C0=LHC0*cf(0,0,0)*euler(0,0,0)
LH.C1=LHC1
end
attack=false
end
 
function LightningBlasts()
attack=true
Humanoid.WalkSpeed=0
for i=0,1,0.1 do
swait()
Neck.C0=necko*euler(0,0,0)
RootJoint.C0=RootCF*cf(0,0,0)
RW.C0=cf(1.5,0.5,0)*euler(0,0,0.2+1.37*i)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(0,0,-0.2-1.37*i)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
end
for i=0,1,0.1 do
swait()
Neck.C0=necko*euler(-0.4*i,0,-0.2*i)
RootJoint.C0=RootCF*cf(0,0,-1.5*i)*euler(0.8*i,0,0.5*i)
RW.C0=cf(1.5,0.5,0)*euler(1.4*i,0,1.57-1.07*i)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(-0.2*i,0,-1.57+1.17*i)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
RH.C0=RHC0*cf(0,0,0)*euler(0,-0.5*i,-0.5*i)
LH.C0=LHC0*cf(-0.5*i,1*i,0)*euler(0.5*i,0,-0.5*i)
end
con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,20,30,0,"Knockdown",hitbox,.4) end) 
for i=1,2 do
MagicBlock(BrickColor.new("Bright red"),cf(prt41.Position+vt(0,750,0)),0.1,3000,0.1,0.05,0.05,0.05,0.01)
CF=RootPart.CFrame*cf(math.random(-15,15),-3.5,-12-math.random(0,15))
MagicBlock(BrickColor.new("Bright red"),CF,0.1,3000,0.1,0.05,0.05,0.05,0.01)
local efprt=part(1,workspace,0,0.5,BrickColor.new("Black"),"Effect",vt(1,1,1))
efprt.CFrame=CF
efprt.Anchored=true
local efmsh=mesh("CylinderMesh",efprt,"","",vt(0,0,0),vt(20,1,20))
local efprt2=part(1,workspace,0,0.5,BrickColor.new("White"),"Effect",vt(1,1,1))
efprt2.CFrame=CF
efprt2.Anchored=true
local efmsh2=mesh("CylinderMesh",efprt2,"","",vt(0,0,0),vt(0,1,0))
coroutine.resume(coroutine.create(function(Part1,Part2,Mesh2) 
--[[so("http://www.roblox.com/asset/?id=2233908",Part1,1,1.1) 
so("http://www.roblox.com/asset/?id=153092334",Part1,0.7,0.9)]]
so("TeslaShot",Part1,1,1) 
teh=math.random()
WaveEffect2(BrickColor.new("Bright red"),CFrame.new(Part1.Position),5,1.5,5,0.7,0.7,0.7,0.02)
MagicCircle(BrickColor.new("White"),CFrame.new(Part1.Position),20,20,20,1.6,1.6,1.6,0.03)
--[[Lightning(prt41.Position,prt41.Position+vt(math.random(-5,5),800,math.random(-5,5)),20,1,"White",0.1,0.1,0.2)
for i=1,5 do
Lightning(Part1.Position+vt(math.random(-5,5),0,math.random(-5,5)),Part1.Position+vt(math.random(-5,5),800,math.random(-5,5)),20,1,"White",0.1,0.1,0.2)
end]]
Part1.Transparency=1
Part2.Transparency=1
hitbox.Parent=workspace
hitbox.Size=vt(17,17,17)
hitbox.CFrame=Part1.CFrame
coroutine.resume(coroutine.create(function(Part,tehCF) 
for i=0,1,0.1 do
swait()
Part.CFrame=tehCF*cf(0,2,0)
end
Part.Parent=nil
end),hitbox,Part1.CFrame)
swait(20)
Part1.Parent=nil
Part2.Parent=nil
end),efprt,efprt2,efmsh2)
so("Appear",efprt,1,1.5)
game:GetService("Debris"):AddItem(efprt,5)
end
swait(30)
Humanoid.WalkSpeed=16
for i=0,1,0.05 do
swait()
Neck.C0=necko*euler(-0.4+0.4*i,0,-0.2+0.2*i)
RootJoint.C0=RootCF*cf(0,0,-1.5+1.5*i)*euler(0.8-0.8*i,0,0.5-0.5*i)
RW.C0=cf(1.5,0.5,0)*euler(1.4-1.4*i,0,0.5-0.3*i)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(-0.2+0.2*i,0,-0.4+0.2*i)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
RH.C0=RHC0*cf(0,0,0)*euler(0,-0.5+0.5*i,-0.5+0.5*i)
LH.C0=LHC0*cf(-0.5+0.5*i,1-1*i,0)*euler(0.5-0.5*i,0,-0.5+0.5*i)
end
con1:disconnect()
attack=false
end
 
function PileDrive()
attack=true
for i=0,1,0.1 do
swait()
Neck.C0=necko*euler(0,0,1*i)
RootJoint.C0=RootCF*euler(0,0,-1*i)
RW.C0=cf(1.5,0.5,0)*euler(0,0,0.2+1.37*i)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(-0.5*i,0,-0.2)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
end
local efprt=part(3,workspace,0,1,BrickColor.new("Black"),"Effect",vt(1,1,1))
local efwld=weld(efprt,efprt,RightArm,cf(0,1,0))
game:GetService("Debris"):AddItem(efprt,10)
so("Explosion1",prt41,1,0.3)
so("Explosion1",efprt,1,0.5)
so("Charge2",efprt,1,1)
for i=0,30 do
swait()
Lightning(efprt.Position,prt41.Position,5,0.5,"Bright red",0.1,0.1,0.1)
MagicBlock(BrickColor.new("Bright red"),efprt.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50)),0,0,0,0.3,0.3,0.3,0.05)
end
for i=0,1,0.1 do
swait()
Neck.C0=necko*euler(0,0,1-2.57*i)
RootJoint.C0=RootCF*euler(0,0,-1+2.57*i)
RW.C0=cf(1.5,0.5,0)*euler(0,0,1.57)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(-0.5,0,-0.2)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
Lightning(efprt.Position,prt41.Position,5,0.5,"Bright red",0.1,0.1,0.1)
MagicBlock(BrickColor.new("Bright red"),efprt.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50)),0,0,0,0.3,0.3,0.3,0.05)
end
bodvel=it("BodyVelocity")
bodvel.Parent=RootPart
bodvel.maxForce=vt(4e+005,4e+005,4e+005)*1
bodvel.velocity=Head.CFrame.lookVector*30
bg=it("BodyGyro") 
bg.maxTorque=Vector3.new(4e+005,4e+005,4e+005)*math.huge 
bg.P=20e+003 
bg.Parent=RootPart
bg.cframe=RootPart.CFrame 
game:GetService("Debris"):AddItem(bodvel,1)
game:GetService("Debris"):AddItem(bg,1)
efwld.C0=cf(0,4,0)
so("PileDrive",efprt,1,0.7) 
MagicCircle(BrickColor.new("White"),efprt.CFrame,0,0,0,0.7,0.7,0.7,0.01)
MagicRing(BrickColor.new("White"),efprt.CFrame*euler(-1.57,0,0),0,0,0,0.5,0.5,0.5,0.01)
con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,30,40,50,"Knockdown",hitbox,1) end) 
hitbox.Parent=modelzorz
hitbox.Size=vt(5,10,5)
hitbox.CFrame=RightArm.CFrame
for i=1,30 do
swait()
MagicBlock(BrickColor.new("Bright red"),efprt.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50)),2,2,2,0.8,0.8,0.8,0.1)
hitbox.CFrame=RightArm.CFrame
end
con1:disconnect()
hitbox.Parent=nil
swait(30)
attack=false
end
 
function LaserBarrage()
attack=true
for i=0,1,0.1 do
swait()
Neck.C0=necko*euler(0,0,0)
RootJoint.C0=RootCF*cf(0,0,-1*i)*euler(0,0,0)
RW.C0=cf(1.5,0.5,0)*euler(1.57*i,1.57*i,0.2-0.2*i)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5+1.5*i,0.5,-0.5*i)*euler(1.2*i,-1.2*i,-0.2+0.2*i)
LW.C1=cf(0,0.5,0)*euler(-1.4*i,0,0)
RH.C0=RHC0*cf(0,0,0)*euler(0,0.1*i,-1*i)
LH.C0=LHC0*cf(-0.5*i,1*i,0)*euler(-0.1*i,0,0)
end
--so("BeamLockon",prt41,1,1) 
for i=1,10 do
local efprt=part(3,modelzorz,0,0.5,BrickColor.new("Bright red"),"Effect",vt(0.2,0.2,0.2))
efprt.Anchored=true
local efmsh=mesh("CylinderMesh",efprt,"","",vt(0,0,0),vt(1,1,1))
spread=vt((math.random(-1,0)+math.random())*7,(math.random(-1,0)+math.random())*7,(math.random(-1,0)+math.random())*7)*(prt41.Position-MMouse.Hit.p).magnitude/100
--spread=vt(0,0,0)
coroutine.resume(coroutine.create(function(Part,Mesh,Spreaded) 
game:GetService("Debris"):AddItem(Part,6)
local TheHit=MMouse.Hit.p
local MouseLook=cf((prt41.Position+TheHit)/2,TheHit+Spreaded)
local hit,pos = rayCast(prt41.Position,MouseLook.lookVector,1000,modelzorz)
so("Elec",prt41,0.2,1) 
local tefprt=part(3,workspace,0,1,BrickColor.new("Black"),"Effect",vt(0.2,0.2,0.2))
tefprt.CFrame=cf(pos)
MagicCircle(BrickColor.new("Dark indigo"),cf(pos),0.5,0.5,0.5,0.5,0.5,0.5,0.04)
so("Elec",tefprt,0.3,1) 
game:GetService("Debris"):AddItem(tefprt,3)
Part.CFrame=CFrame.new((prt41.Position+pos)/2,pos)*angles(1.57,0,0) 
local mag=(prt41.Position-pos).magnitude 
if hit~=nil then
Damagefunc(hit,10,20,1,"Normal",RootPart,0,"TeslaShot",2)
end
MagicCylinder(BrickColor.new("Bright red"),Part.CFrame,1,mag*5,1,0.5,0,0.5,0.05)
Part.Parent=nil
end),efprt,efmsh,spread)
end
swait(20)
for i=0,1,0.1 do
swait()
Neck.C0=necko*euler(0,0,0)
RootJoint.C0=RootCF*cf(0,0,-1+1*i)*euler(0,0,0)
RW.C0=cf(1.5,0.5,0)*euler(1.57-1.57*i,1.57-1.57*i,0.2*i)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5*i,0.5,-0.5+0.5*i)*euler(1.2-1.2*i,-1.2+1.2*i,-0.2*i)
LW.C1=cf(0,0.5,0)*euler(-1.4+1.4*i,0,0)
RH.C0=RHC0*cf(0,0,0)*euler(0,0.1-0.1*i,-1+1*i)
LH.C0=LHC0*cf(-0.5+0.5*i,1-1*i,0)*euler(-0.1+0.1*i,0,0)
end
attack=false
end
 
function BLAAAAARGH()
attack=true
for i=0,1,0.1 do
swait()
Neck.C0=necko*euler(0,0,0)
RootJoint.C0=RootCF*cf(0,0,-1*i)*euler(0,0,0)
RW.C0=cf(1.5,0.5,0)*euler(1.57*i,1.57*i,0.2-0.2*i)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5+1.5*i,0.5,-0.5*i)*euler(1.2*i,-1.2*i,-0.2+0.2*i)
LW.C1=cf(0,0.5,0)*euler(-1.4*i,0,0)
RH.C0=RHC0*cf(0,0,0)*euler(0,0.1*i,-1*i)
LH.C0=LHC0*cf(-0.5*i,1*i,0)*euler(-0.1*i,0,0)
end
for i=1,3 do
so("DoctorOctogonapus",prt41,1,1) 
end
for i=1,1 do
local efprt=part(3,modelzorz,0,0.5,BrickColor.new("Bright red"),"Effect",vt(0.6,0.2,0.6))
efprt.Anchored=true
local efmsh=mesh("CylinderMesh",efprt,"","",vt(0,0,0),vt(1,1,1))
--spread=vt((math.random(-1,0)+math.random())*5,(math.random(-1,0)+math.random())*5,(math.random(-1,0)+math.random())*5)
spread=vt(0,0,0)
coroutine.resume(coroutine.create(function(Part,Mesh,Spreaded) 
game:GetService("Debris"):AddItem(Part,6)
for i=1,70 do
swait()
local MouseLook=cf((prt41.Position+MMouse.Hit.p)/2,MMouse.Hit.p+Spreaded)
local hit,pos = rayCast(prt41.Position,MouseLook.lookVector,1000,modelzorz)
Part.CFrame=CFrame.new((prt41.Position+pos)/2,pos)*angles(1.57,0,0) 
local mag=(prt41.Position-pos).magnitude 
Mesh.Scale=vt(1,mag*5,1)
end
local MouseLook=cf((prt41.Position+MMouse.Hit.p)/2,MMouse.Hit.p+Spreaded)
local hit,pos = rayCast(prt41.Position,MouseLook.lookVector,1000,modelzorz)
--so("http://www.roblox.com/asset/?id=169380505",prt41,0.5,1) 
local tefprt=part(3,workspace,0,1,BrickColor.new("Black"),"Effect",vt(0.2,0.2,0.2))
tefprt.CFrame=cf(pos)
MagicCircle(BrickColor.new("Dark indigo"),cf(pos),3,3,3,4,4,4,0.04)
--so("http://www.roblox.com/asset/?id=169380505",tefprt,0.5,1) 
game:GetService("Debris"):AddItem(tefprt,3)
Part.CFrame=CFrame.new((prt41.Position+pos)/2,pos)*angles(1.57,0,0) 
local mag=(prt41.Position-pos).magnitude 
if hit~=nil and hit.Name~="Base" then
Damagefunc(hit,9999,9999,1000,"Knockdown",prt41,0,"",2)
hit.Anchored=false
hit:BreakJoints()
local angle=(hit.Position-(prt41.Position+Vector3.new(0,0,0))).unit
local bodvol=Instance.new("BodyVelocity")
bodvol.velocity=angle*100000000
bodvol.P=5000
bodvol.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
bodvol.Parent=hit
game:GetService("Debris"):AddItem(bodvol,5)
end
MagicCylinder(BrickColor.new("Bright red"),Part.CFrame,20,mag*5,20,4,0,4,0.05)
Part.Parent=nil
end),efprt,efmsh,spread)
end
swait(100)
for i=0,1,0.1 do
swait()
Neck.C0=necko*euler(0,0,0)
RootJoint.C0=RootCF*cf(0,0,-1+1*i)*euler(0,0,0)
RW.C0=cf(1.5,0.5,0)*euler(1.57-1.57*i,1.57-1.57*i,0.2*i)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5*i,0.5,-0.5+0.5*i)*euler(1.2-1.2*i,-1.2+1.2*i,-0.2*i)
LW.C1=cf(0,0.5,0)*euler(-1.4+1.4*i,0,0)
RH.C0=RHC0*cf(0,0,0)*euler(0,0.1-0.1*i,-1+1*i)
LH.C0=LHC0*cf(-0.5+0.5*i,1-1*i,0)*euler(-0.1+0.1*i,0,0)
end
attack=false
end
 
function ALLCHILD()
local all={}
for _,v in pairs(workspace:children()) do
table.insert(all,v)
end
return all
end
 
function Disappear(Mod)
for _,v in pairs(Mod:children()) do
if v.className=="Hat" then
for _,i in pairs(v:children()) do
if i.className=="Part" then
coroutine.resume(coroutine.create(function(Part) 
for i=0,1,0.1 do
swait()
Part.Transparency=i
end
Part.Transparency=1
end),i)
end
end
end
if v.className=="Part" and v.Name~="HumanoidRootPart" then
coroutine.resume(coroutine.create(function(Part) 
for i=0,1,0.1 do
swait()
Part.Transparency=i
end
Part.Transparency=1
end),v)
end
end
end
 
function Reappear(Mod)
for _,v in pairs(Mod:children()) do
if v.className=="Hat" then
for _,i in pairs(v:children()) do
if i.className=="Part" then
coroutine.resume(coroutine.create(function(Part) 
for i=1,0,-0.1 do
swait()
Part.Transparency=i
end
Part.Transparency=0
end),i)
end
end
end
if v.className=="Part" and v.Name~="HumanoidRootPart" then
coroutine.resume(coroutine.create(function(Partt) 
for i=1,0,-0.1 do
swait()
Partt.Transparency=i
end
Partt.Transparency=0
end),v)
end
end
end
 
function ArkActivate()
coroutine.resume(coroutine.create(function()
clone=prt3:Clone()
clone.Parent=modelzorz
clone.BrickColor=BrickColor.new("Bright red")
clone.Mesh.Scale=clone.Mesh.Scale+vt(0.01,0.005,0.01)
local awld3=weld(clone,clone,prt3,cf(0,0,0))
so("Activate",prt41,1,1) 
coroutine.resume(coroutine.create(function(Part)
for i=1,0,-0.01 do
swait()
Part.Transparency=i
end
Part.Transparency=0
end),clone)
table.insert(Clone,clone)
for i=2,31 do
--prt22
clone=EffectParts[i]:Clone()
clone.Parent=modelzorz
clone.BrickColor=BrickColor.new("Bright red")
if clone.Name=="Part22" then
clone.Mesh.Scale=clone.Mesh.Scale+vt(0.01,0.005,0.01)
else
clone.Mesh.Scale=clone.Mesh.Scale+vt(0.01,0.01,0.01)
end
local awld3=weld(clone,clone,EffectParts[i],cf(0,0,0))
coroutine.resume(coroutine.create(function(Part)
for i=1,0,-0.01 do
swait()
Part.Transparency=i
end
Part.Transparency=0
end),clone)
table.insert(Clone,clone)
end
end))
coroutine.resume(coroutine.create(function()
numb=0
numbderp=0.785*3
for i=1,3 do
for i=1,4 do
MagicShard(BrickColor.new("Bright red"),prt43.CFrame*euler(0,numb,numbderp)*cf(0,5,0),0,0,0,0.03,0.07,0.03,0.02)
numb=numb+1.57
--local wld41=weld(prt41,prt41,prt43,cf(0,2.4,0)*euler(0,0,numb))
end
swait(10)
numbderp=numbderp-0.785
end
MagicShard(BrickColor.new("Bright red"),prt43.CFrame*euler(0,0,0)*cf(0,5,0),0,0,0,0.03,0.07,0.03,0.02)
end))
coroutine.resume(coroutine.create(function(Part)
while Mode=="Planted" do
swait(math.random(5,10))
ElecEffect(Part.Position,4,4,4)
end
end),prt41)
end
 
function ArkUnactivate()
for i=1,#Clone do
--[[print(Clone[i])
print(i)]]
Clone[i].Parent=nil
end
for i=1,#Clone do
table.remove(Clone,i)
end
end
 
function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 
 
--[[local LastPoint=prt4.CFrame*CFrame.new(0,prt4.Size.Y*2.5,0)
local Point=prt4.CFrame*CFrame.new(0,prt4.Size.Y*2.5,0)]]
function effect(Color,Ref,Size,LP,P1,returnn)
local effectsmsh = Instance.new("BlockMesh")
effectsmsh.Scale = Vector3.new(0.4,1,0.4)
effectsmsh.Name = "Mesh"
local effectsg = Instance.new("Part")
effectsg.formFactor = 3
effectsg.CanCollide = false
effectsg.Name = "Eff"
effectsg.Locked = true
effectsg.Anchored = true
effectsg.Size = Vector3.new(0.2,1,0.2)
effectsg.Parent = workspace
effectsmsh.Parent = effectsg
effectsg.BrickColor = BrickColor.new(Color)
effectsg.Reflectance = Ref
local point1 = P1
local mg = (LP.p - point1.p).magnitude
effectsg.Size = Vector3.new(Size,mg,Size)
effectsg.CFrame = CFrame.new((LP.p+point1.p)/2,point1.p) * CFrame.Angles(math.rad(90),0,0)
if returnn then return effectsg end
coroutine.resume(coroutine.create(function()
if not returnn then
for i = 0 , 1 , 0.1 do
swait()
effectsg.Transparency = 1*i
effectsmsh.Scale = Vector3.new(Size-Size*i,1,Size-Size*i)
end
swait()
effectsg.Parent = nil
end
end))
end
 
function ElecEffect(cff,x,y,z)
local prt=part(3,workspace,0,0,BrickColor.new("White"),"Part",vt(1,1,1))
prt.Anchored=true
game:GetService("Debris"):AddItem(prt,2)
xval=math.random()
yval=math.random()
zval=math.random()
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(xval,yval,zval))
coroutine.resume(coroutine.create(function(Part,Mesh,Frame,xvaal,yvaal,zvaal)
Part.CFrame=cf(Frame)*cf(math.random(-x,x),math.random(-y,y),math.random(-z,z))
for i=0,1,0.05 do
swait()
xvaal=xvaal-0.1
yvaal=yvaal-0.1
zvaal=zvaal-0.1
Mesh.Scale=vt(xvaal,yvaal,zvaal)
Part.Transparency=i
end
Part.Parent=nil
end),prt,msh,cff,xval,yval,zval)
end
 
function MagicBlock(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
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
 
function MagicBlock2(brickcolor,cframe,x1,y1,z1,x3,y3,z3,decrease)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
CF=prt.CFrame
num=math.random(5,20)
coroutine.resume(coroutine.create(function(Part,Mesh,CF2,Num) 
for i=0,1.05,0.05 do
swait()
Part.CFrame=CF2*cf(0,i*Num,0)*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
Num=Num-decrease
end
Part.Parent=nil
end),prt,msh,CF,num)
end
 
function MagicBlock3(brickcolor,cframe,x1,y1,z1,x3,y3,z3)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,0.1 do
swait()
TehCF=cframe
Part.CFrame=TehCF*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end
 
function MagicCylinder(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.2,0.2,0.2))
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("SpecialMesh",prt,"Head","",vt(0,0,0),vt(x1,y1,z1))
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
 
function MagicCircle(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(x1,y1,z1))
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
 
function MagicRing(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=3270017",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh,num) 
for i=0,1,delay do
swait()
Part.CFrame=Part.CFrame*cf(0,0,-num)
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh,(math.random(0,1)+math.random())/5)
end
 
function MagicFire(brickcolor,cframe,x1,y1,z1)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,0.1 do
swait()
Part.CFrame=cf(Part.Position+vt(0,0.5,0))*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(0.1,0.1,0.1)
end
Part.Parent=nil
end),prt,msh)
end
 
function BlastEffect(brickcolor,cframe,x1,y1,z1,x3,y3,z3)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=24388358",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,0.05 do
swait()
Part.CFrame=Part.CFrame
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end
 
function WaveEffect(brickcolor,cframe,x1,y1,z1,x3,y3,z3)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("SpecialMesh",prt,"FileMesh","1323306",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,0.1 do
swait()
Part.CFrame=Part.CFrame*cf(0,y3,0)
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end
 
function WaveEffect2(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("SpecialMesh",prt,"FileMesh","20329976",vt(0,0,0),vt(x1,y1,z1))
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
 
function MagicShard(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("SpecialMesh",prt,"FileMesh","9756362",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
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
 
function Lightning(p0,p1,tym,ofs,col,th,tra,last)
--[[p0=pos1
p1=pos2
tym=times
ofs=offset
col=color
th=size
tra=transparency
last=lastingtime]]
local magz = (p0 - p1).magnitude local curpos = p0 local trz = {-ofs,ofs}
for i=1,tym do 
local li = Instance.new("Part",workspace) li.TopSurface =0 li.BottomSurface = 0 li.Anchored = true  li.Transparency = tra or 0.4 li.BrickColor = BrickColor.new(col)
li.formFactor = "Custom" li.CanCollide = false li.Size = Vector3.new(th,th,magz/tym) local ofz = Vector3.new(trz[math.random(1,2)],trz[math.random(1,2)],trz[math.random(1,2)]) 
light1=Instance.new("PointLight")
light1.Brightness=.8
light1.Color=Color3.new(.2,255,.2)
light1.Range=8
light1.Parent=li
local trolpos = CFrame.new(curpos,p1)*CFrame.new(0,0,magz/tym).p+ofz
if tym == i then 
local magz2 = (curpos - p1).magnitude li.Size = Vector3.new(th,th,magz2)
li.CFrame = CFrame.new(curpos,p1)*CFrame.new(0,0,-magz2/2)
else
li.CFrame = CFrame.new(curpos,trolpos)*CFrame.new(0,0,magz/tym/2)
end
curpos = li.CFrame*CFrame.new(0,0,magz/tym/2).p game.Debris:AddItem(li,last)
end
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
        if h.MaxHealth>=math.huge then
        hit:BreakJoints()
        end
        --[[                if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
                        return
                end]]
--                        hs(hit,1.2) 
                        c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=game:service("Players").LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                if HitSound~=nil and HitPitch~=nil then
                so(HitSound,hit,1,HitPitch) 
                end
                Damage=math.random(minim,maxim)
--                h:TakeDamage(Damage)
                blocked=false
                block=hit.Parent:findFirstChild("Block")
                if block~=nil then
                if block.className=="IntValue" then
                if block.Value>0 then
                blocked=true
                block.Value=block.Value-1
                print(block.Value)
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
num=0
function ob1d(mouse) 
if attack==true then return end
hold=true
if combo==0 then
combo=1
if holdz==true then
heavyattackone()
else
lightattackone()
end
elseif combo==1 then
combo=2
if holdz==true then
lightattackfour()
else
lightattacktwo()
end
elseif combo==2 then
combo=3
if holdz==true then
heavyattackthree()
else
lightattackthree()
end
elseif combo==3 then
combo=4
if holdz==true then
heavyattackfour()
else
lightattackfour()
end
end
coroutine.resume(coroutine.create(function() 
swait(8)
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
holdq=false
holdz=false
function key(key) 
if key=="q" then
holdq=true
end
if key=="z" then
holdz=true
end
if attack==true then return end
if Mode=="Planted" and holdq==true then
if key=="z" then
LightningBlasts()
end
if key=="x" then
PileDrive()
end
if key=="c" then
LaserBarrage()
end
if key=="v" then
BLAAAAARGH()
end
elseif holdq==false then
if key=="j" then
if Weapon=="None" then
SummonSword()
else
UnsummonSword()
end
end
end
--[[if key=="j" then
heavyattackfour()
end]]
if key=="f" then
if Mode=="Obelisk" then
Plant()
elseif Mode=="Planted" then
GetArk()
end
end
if key=="g" then
if Mode=="Planted" then
ObeliskHop()
end
end
if key=="h" then
if Mode=="Planted" then
ObeliskSmash()
end
end
equipanim()
--[[if key=="c" then
--so("http://www.roblox.com/asset/?id=130818264",Torso,1,1) 
ArkActivate()
wld1.Part1=RootPart
wld1.C0=euler(-0.05,0,0)*cf(0,0,-1.3)
wld1.C1=euler(0,0,0)
wld2.C0=euler(0,0,0)*cf(0,0.5,0)
Neck.C0=necko*euler(0.4,0,0)
RootJoint.C0=RootCF*cf(0,0,-0.3)*euler(-0.05,0,0)
RW.C0=cf(1.5,0.5,0)*euler(-0.2,0,0.4)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(-0.1,0,0)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
RH.C0=RHC0*cf(0,0,0)*euler(-0.1,0,0.5)
RH.C1=RHC1
LH.C0=LHC0*cf(0,0,0)*euler(0,0,0.2)
LH.C1=LHC1
for i=1,100 do
swait()
MagicBlock(BrickColor.new("Bright red"),RightArm.CFrame*cf(0,-1,0)*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50)),0,0,0,0.3,0.3,0.3,0.05)
end
end
if key=="v" then
ArkUnactivate()
wld1.Part1=RightArm
equipanim()
end]]
end 
 
function key2(key) 
if key=="q" then
holdq=false
end
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
if Mode=="Obelisk" then
wld1.Part1=RightArm
end
equipanim() 
end 
 
function ds(mouse) 
if Mode=="Obelisk" then
wld1.Part1=Torso
end
hideanim() 
swait(0) 
RW.Parent = nil 
LW.Parent = nil 
RSH.Parent = player.Character.Torso 
LSH.Parent = player.Character.Torso 
end 
 
Bin.Selected:connect(s) 
Bin.Deselected:connect(ds) 
--[[ 
Copyrighted (C) Fenrier 2014
]]