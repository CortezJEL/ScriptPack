--[[
Cyber Vitruoso Class Made by Fenrier.
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
local idle=0
local Anim="Idle"
--player 
player=nil 
--save shoulders 
RSH, LSH=nil, nil 
--welds 
RW, LW=Instance.new("Weld"), Instance.new("Weld") 
RW.Name="Right Shoulder" LW.Name="Left Shoulder"
LH=Torso["Left Hip"]
RH=Torso["Right Hip"]
Charge=0
TorsoColor=Torso.BrickColor
Keys={}
KeysWeld={}
KeysC0={}
keypress=false
Input=""
Allies={}
Orbs={}
orbget=false
 
function swait(num)
if num==0 or num==nil then
game:service'RunService'.RenderStepped:wait()
else
for i=0,num do
game:service'RunService'.RenderStepped:wait()
end
end
end
 
if Character:findFirstChild("Magi Keytar",true) ~= nil then 
Character:findFirstChild("Magi Keytar",true).Parent = nil 
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
fp.Material="SmoothPlastic"
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
 
local Color1=Torso.BrickColor
 
local fengui=it("GuiMain") 
fengui.Parent=Player.PlayerGui 
fengui.Name="WeaponGUI" 
local fenframe=it("Frame") 
fenframe.Parent=fengui
fenframe.BackgroundColor3=Color3.new(255,255,255) 
fenframe.BackgroundTransparency=1 
fenframe.BorderColor3=Color3.new(17,17,17) 
fenframe.Size=UDim2.new(0.0500000007, 0, 0.100000001, 0)
fenframe.Position=UDim2.new(0.4,0,0.1,0)
local fenbarmana1=it("TextLabel") 
fenbarmana1.Parent=fenframe 
fenbarmana1.Text=" " 
fenbarmana1.BackgroundTransparency=0 
fenbarmana1.BackgroundColor3=Color3.new(0,0,0) 
fenbarmana1.SizeConstraint="RelativeXY" 
fenbarmana1.TextXAlignment="Center" 
fenbarmana1.TextYAlignment="Center" 
fenbarmana1.Position=UDim2.new(0,0,0,0)
fenbarmana1.Size=UDim2.new(4,0,0.2,0)
local fenbarmana2=it("TextLabel") 
fenbarmana2.Parent=fenframe 
fenbarmana2.Text=" " 
fenbarmana2.BackgroundTransparency=0 
fenbarmana2.BackgroundColor3=Torso.Color
fenbarmana2.SizeConstraint="RelativeXY" 
fenbarmana2.TextXAlignment="Center" 
fenbarmana2.TextYAlignment="Center" 
fenbarmana2.Position=UDim2.new(0,0,0,0)
fenbarmana2.Size=UDim2.new(4*mana/100,0,0.2,0)
local fenbarmana3=it("TextLabel") 
fenbarmana3.Parent=fenframe 
fenbarmana3.Text=" " 
fenbarmana3.BackgroundTransparency=0 
fenbarmana3.BackgroundColor3=Color3.new(Col1,Col2,Col3)
fenbarmana3.SizeConstraint="RelativeXY" 
fenbarmana3.TextXAlignment="Center" 
fenbarmana3.TextYAlignment="Center" 
fenbarmana3.Position=UDim2.new(0,0,0,0)
fenbarmana3.Size=UDim2.new(0,0,0.2,0)
local fenbarmana4=it("TextLabel") 
fenbarmana4.Parent=fenframe 
fenbarmana4.Text="Energy("..mana..")"
fenbarmana4.BackgroundTransparency=1 
fenbarmana4.BackgroundColor3=Color3.new(0,0,0) 
fenbarmana4.SizeConstraint="RelativeXY" 
fenbarmana4.TextXAlignment="Center" 
fenbarmana4.TextYAlignment="Center" 
fenbarmana4.Position=UDim2.new(0,0,-0.3,0)
fenbarmana4.Size=UDim2.new(4,0,0.2,0)
fenbarmana4.FontSize="Size9"
fenbarmana4.TextStrokeTransparency=0
fenbarmana4.TextColor=BrickColor.new("White")
 
local modelzorz=Instance.new("Model") 
modelzorz.Parent=Character 
modelzorz.Name="Magi Keytar" 
 
local handle=part(3,modelzorz,0,0,BrickColor.new("Black"),"Handle",vt())
local prt1=part(3,modelzorz,0,0,TorsoColor,"Part1",vt())
local prt2=part(3,modelzorz,0,0,TorsoColor,"Part2",vt())
local prt3=part(3,modelzorz,0,0,TorsoColor,"Part3",vt())
local prt4=part(3,modelzorz,0,0,TorsoColor,"Part4",vt())
local prt5=part(3,modelzorz,0,0,TorsoColor,"Part5",vt())
local prt6=part(3,modelzorz,0,0,TorsoColor,"Part6",vt())
local prt7=part(3,modelzorz,0,0,TorsoColor,"Part7",vt())
local prt8=part(3,modelzorz,0,0,BrickColor.new("Medium stone grey"),"Part8",vt())
local prt9=part(3,modelzorz,0,0,BrickColor.new("Medium stone grey"),"Part9",vt())
local prt10=part(3,modelzorz,0,0,BrickColor.new("Medium stone grey"),"Part10",vt()) --
local prt11=part(3,modelzorz,0,0,BrickColor.new("Black"),"Part11",vt())
local prt12=part(3,modelzorz,0,0,TorsoColor,"Part12",vt())
local prt13=part(3,modelzorz,0,0,TorsoColor,"Part13",vt())
local prt14=part(3,modelzorz,0,0,TorsoColor,"Part14",vt())
local prt15=part(3,modelzorz,0,0,TorsoColor,"Part15",vt())
local prt16=part(3,modelzorz,0,0,BrickColor.new("Black"),"Part16",vt())
local prt17=part(3,modelzorz,0,0,BrickColor.new("Really black"),"Cyber Sig Part1",vt())
local prt18=part(3,modelzorz,0,0,TorsoColor,"Cyber Sig Part2",vt())
local prt19=part(3,modelzorz,0,0,BrickColor.new("Really black"),"Cyber Sig Part1",vt())
local prt20=part(3,modelzorz,0,0,TorsoColor,"Cyber Sig Part2",vt())
 
local msh1=mesh("BlockMesh",prt1,"","",vt(0,0,0),vt(6,20,2))
local msh2=mesh("CylinderMesh",prt2,"","",vt(0,0,0),vt(3,1.99,3))
local msh3=mesh("BlockMesh",prt3,"","",vt(0,0,0),vt(5,3,1.98))
local msh4=mesh("SpecialMesh",prt4,"Wedge","",vt(0,0,0),vt(2,1,6))
local msh5=mesh("SpecialMesh",prt5,"Wedge","",vt(0,0,0),vt(2,1,1))
local msh6=mesh("BlockMesh",prt6,"","",vt(0,0,0),vt(2,3,2))
local msh7=mesh("SpecialMesh",prt7,"Wedge","",vt(0,0,0),vt(2,2,6))
local msh8=mesh("SpecialMesh",prt8,"Wedge","",vt(0,0,0),vt(3,2,6))
local msh9=mesh("BlockMesh",prt9,"","",vt(0,0,0),vt(5.99,1.99,3))
local msh10=mesh("BlockMesh",prt10,"","",vt(0,0,0),vt(1.99,17,3))
local msh11=mesh("SpecialMesh",prt11,"Wedge","",vt(0,0,0),vt(15,2,.5))
local msh12=mesh("SpecialMesh",prt12,"Wedge","",vt(0,0,0),vt(1,2,1))
local msh13=mesh("SpecialMesh",prt13,"Wedge","",vt(0,0,0),vt(1,2,1))
local msh14=mesh("BlockMesh",prt14,"","",vt(0,0,0),vt(3,13,2))
local msh15=mesh("CylinderMesh",prt15,"","",vt(0,0,0),vt(3,1.99,3))
local msh16=mesh("BlockMesh",prt16,"","",vt(0,0,0),vt(2,12,2))
local msh17=mesh("BlockMesh",prt17,"","",vt(0,0,0),vt(3.1,2,2.1))
local msh18=mesh("BlockMesh",prt18,"","",vt(0,0,0),vt(3.2,1,2.2))
local msh19=mesh("BlockMesh",prt19,"","",vt(0,0,0),vt(3.1,2,2.1))
local msh20=mesh("BlockMesh",prt20,"","",vt(0,0,0),vt(3.2,1,2.2))
 
local hwld=weld(handle,handle,Torso,euler(0,3.14,2)*cf(3,-1.2,-.7))
local wld1=weld(prt1,prt1,handle,euler(0,0,0)*cf(-.2,-3.5,0))
local wld2=weld(prt2,prt2,prt1,euler(1.57,0,0)*cf(.3,-2,0))
local wld3=weld(prt3,prt3,prt1,euler(0,0,0)*cf(-.1,-2,0))
local wld4=weld(prt4,prt4,prt1,euler(0,1.57,0)*cf(-.4,-2.4,0))
local wld5=weld(prt5,prt5,prt1,euler(0,-1.57,0)*cf(.3,-2.4,0))
local wld6=weld(prt6,prt6,prt1,euler(0,0,0)*cf(-.8,-2,0))
local wld7=weld(prt7,prt7,prt1,euler(0,1.57,1.57)*cf(-.8,-1.1,0))
local wld8=weld(prt8,prt8,prt1,euler(0,-1.57,0)*cf(0,-2,.3))
local wld9=weld(prt9,prt9,prt1,euler(0,0,0)*cf(0,1.8,.3))
local wld10=weld(prt10,prt10,prt1,euler(0,0,0)*cf(-.4,-.1,.3))
local wld11=weld(prt11,prt11,prt1,euler(0,0,-1.57)*cf(-.4,-.1,.65))
local wld12=weld(prt12,prt12,prt1,euler(0,0,-1.57)*cf(-.4,1.5,.7))
local wld13=weld(prt13,prt13,prt1,euler(0,0,-1.57)*cf(-.4,-1.7,.7))
local wld14=weld(prt14,prt14,prt1,euler(0,0,0)*cf(0.3,3.3,0))
local wld15=weld(prt15,prt15,prt1,euler(1.57,0,0)*cf(0.3,4.6,0))
local wld16=weld(prt16,prt16,prt1,euler(0,0,0)*cf(0.21,3.1,0.1))
local wld17=weld(prt17,prt17,prt14,euler(0,0,0)*cf(0,-0.5,0))
local wld18=weld(prt18,prt18,prt17,euler(0,0,0)*cf(0,0,0))
local wld19=weld(prt19,prt19,prt14,euler(0,0,0)*cf(0,0.2,0))
local wld20=weld(prt20,prt20,prt19,euler(0,0,0)*cf(0,0,0))
 
num=1.55
num2=5.15
for i=1,14 do --11
local key=part(3,modelzorz,0.1,0,BrickColor.new("Light stone grey"),"Key",vt())
local kmsh=mesh("BlockMesh",key,"","",vt(0,0,0),vt(4,1,1))
local kwld=weld(key,key,prt10,euler(0,0,0)*cf(.6,num,0))
local sou=Instance.new("Sound",key)
sou.Volume=5
sou.Pitch=num2
sou.SoundId="http://www.roblox.com/asset/?id=1079839"
table.insert(KeysC0,euler(0,0,0)*cf(.6,num,0))
table.insert(Keys,key)
table.insert(KeysWeld,kwld)
num=num-0.24
num2=num2-0.15
end
 
num=1.45
for i=1,13 do
if i~=4 and i~=7 and i~=11 then
local prt18=part(3,modelzorz,0.1,0,BrickColor.new("Black"),"Part18",vt())
local msh18=mesh("BlockMesh",prt18,"","",vt(0,0,0),vt(3,1,1.1))
local wld18=weld(prt18,prt18,prt10,euler(0,0,0)*cf(.4,num,0.1))
end
num=num-0.24
end
 
local hitbox=part(3,nil,0,1,BrickColor.new("Black"),"Hitbox",vt(1,1,1))
hitbox.Anchored=false
local orb=part(3,nil,0,.5,BrickColor.new("Really red"),"Orb",vt(1,1,1))
orb.Anchored=true
local omsh=mesh("SpecialMesh",orb,"Sphere","",vt(0,0,0),vt(3,3,3))
local osound=Instance.new("Sound",orb)
osound.Volume=5
osound.Pitch=1.3
osound.Looped=true
osound.SoundId="http://www.roblox.com/asset/?id=82277505"
 
if (script.Parent.className~="HopperBin") then 
Tool=Instance.new("HopperBin") 
Tool.Parent=Backpack 
Tool.Name="Magi Keytar" 
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
 
function clerp(a,b,t) 
local qa = {QuaternionFromCFrame(a)}
local qb = {QuaternionFromCFrame(b)} 
local ax, ay, az = a.x, a.y, a.z 
local bx, by, bz = b.x, b.y, b.z
local _t = 1-t
return QuaternionToCFrame(_t*ax + t*bx, _t*ay + t*by, _t*az + t*bz,QuaternionSlerp(qa, qb, t)) 
end 
 
function QuaternionFromCFrame(cf) 
local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components() 
local trace = m00 + m11 + m22 
if trace > 0 then 
local s = math.sqrt(1 + trace) 
local recip = 0.5/s 
return (m21-m12)*recip, (m02-m20)*recip, (m10-m01)*recip, s*0.5 
else 
local i = 0 
if m11 > m00 then
i = 1
end
if m22 > (i == 0 and m00 or m11) then 
i = 2 
end 
if i == 0 then 
local s = math.sqrt(m00-m11-m22+1) 
local recip = 0.5/s 
return 0.5*s, (m10+m01)*recip, (m20+m02)*recip, (m21-m12)*recip 
elseif i == 1 then 
local s = math.sqrt(m11-m22-m00+1) 
local recip = 0.5/s 
return (m01+m10)*recip, 0.5*s, (m21+m12)*recip, (m02-m20)*recip 
elseif i == 2 then 
local s = math.sqrt(m22-m00-m11+1) 
local recip = 0.5/s return (m02+m20)*recip, (m12+m21)*recip, 0.5*s, (m10-m01)*recip 
end 
end 
end
 
function QuaternionToCFrame(px, py, pz, x, y, z, w) 
local xs, ys, zs = x + x, y + y, z + z 
local wx, wy, wz = w*xs, w*ys, w*zs 
local xx = x*xs 
local xy = x*ys 
local xz = x*zs 
local yy = y*ys 
local yz = y*zs 
local zz = z*zs 
return CFrame.new(px, py, pz,1-(yy+zz), xy - wz, xz + wy,xy + wz, 1-(xx+zz), yz - wx, xz - wy, yz + wx, 1-(xx+yy)) 
end
 
function QuaternionSlerp(a, b, t) 
local cosTheta = a[1]*b[1] + a[2]*b[2] + a[3]*b[3] + a[4]*b[4] 
local startInterp, finishInterp; 
if cosTheta >= 0.0001 then 
if (1 - cosTheta) > 0.0001 then 
local theta = math.acos(cosTheta) 
local invSinTheta = 1/math.sin(theta) 
startInterp = math.sin((1-t)*theta)*invSinTheta 
finishInterp = math.sin(t*theta)*invSinTheta  
else 
startInterp = 1-t 
finishInterp = t 
end 
else 
if (1+cosTheta) > 0.0001 then 
local theta = math.acos(-cosTheta) 
local invSinTheta = 1/math.sin(theta) 
startInterp = math.sin((t-1)*theta)*invSinTheta 
finishInterp = math.sin(t*theta)*invSinTheta 
else 
startInterp = t-1 
finishInterp = t 
end 
end 
return a[1]*startInterp + b[1]*finishInterp, a[2]*startInterp + b[2]*finishInterp, a[3]*startInterp + b[3]*finishInterp, a[4]*startInterp + b[4]*finishInterp 
end
 
function hideanim() 
equipped=false
so("http://roblox.com/asset/?id=161006212",handle,.6,.6) 
for i=0,1,0.1 do
swait()
hwld.C0=clerp(hwld.C0,euler(.2,.5,.2)*cf(0,1,0),.3)
Neck.C0=clerp(Neck.C0,necko*euler(-.2,0,.8),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0.5),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(0,0,0.1),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(3.8,0,-1),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
end
hwld.Part1=Torso
hwld.C0=euler(0,3.14,2)*cf(3,-1.2,-.7)
for i=0,1,0.1 do
swait()
Neck.C0=clerp(Neck.C0,necko*euler(0,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(0,0,0),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(0,0,0),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,RHC0,.2)
RH.C1=clerp(RH.C1,RHC1,.2)
LH.C0=clerp(LH.C0,LHC0,.2)
LH.C1=clerp(LH.C1,LHC1,.2)
end
end 
 
function equipanim() 
equipped=true
for i=0,1,0.1 do
swait()
Neck.C0=clerp(Neck.C0,necko*euler(-.2,0,.8),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0.5),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(0,0,0.1),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(3.8,0,-1),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
end
hwld.Part1=LeftArm
hwld.C0=euler(.2,.5,.2)*cf(0,1,0)
so("http://roblox.com/asset/?id=161006212",handle,1,1) 
for i=0,1,0.15 do
swait()
hwld.C0=clerp(hwld.C0,cf(0,1,1)*euler(1.57,3,0),.4)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,.8),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(0,0,0.3),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(2,0,-1.3),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
end
so("http://roblox.com/asset/?id=161006195",handle,1,1) 
for i=0,1,0.1 do
swait()
hwld.C0=clerp(hwld.C0,cf(0,1,1)*euler(1.57,6,0),.3)
Neck.C0=clerp(Neck.C0,necko*euler(-.2,0,.6),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(0,0,0.6),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(2.5,0,-.8),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
end
for i=0,1,0.1 do
swait()
hwld.C0=clerp(hwld.C0,euler(0,-.5,0)*cf(0,1,1)*euler(.7,1.9,0),.3)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,.3),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,-.3),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(.8,0,0.2),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(1.2,0,-.8),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
end
end 
 
function attackone()
attack=true
so("http://roblox.com/asset/?id=161006221",handle,1,1) 
for i=0,1,0.1 do
swait()
--hwld.C0=clerp(hwld.C0,euler(0,-.5,0)*cf(0,1,1)*euler(.7,1.9,0),.3)
hwld.C0=euler(0,-.5-(1.07+5.8)*i,0)*cf(-.2*i,1-.4*i,1)*euler(.7+0.1*i,1.9-0.4*i,0)
Neck.C0=clerp(Neck.C0,necko*euler(.2,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(1.8,0,-.2),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(1.4,0,-.8),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,RHC0,.3)
LH.C0=clerp(LH.C0,LHC0,.3)
end
for i=0,1,0.1 do
swait()
hwld.C0=clerp(hwld.C0,euler(0,-1.7,0)*cf(-.2,.6,1)*euler(.8,1.5,0),.3)
end
for i=0,1,0.05 do
swait()
if i==0 then
KeyPress("v",false)
elseif i==0.3 then
KeyPress("b",false)
end
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(1.7,0,.2),.2)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.2)
end
--[[
MagniDamage(Torso,25,5,15,math.random(20,40),"Knockdown2")
MagicWave(BrickColor.new("Bright yellow"),cf(Torso.Position)*cf(0,-2,0),1,1,1,1.5,0.5,1.5,0.05)
so("http://www.roblox.com/asset/?id=161006033",Torso,1,3) 
so("http://www.roblox.com/asset/?id=10756104",Torso,1,2) 
]]
local hit,pos=rayCast(orb.Position,(CFrame.new(orb.Position,orb.Position - Vector3.new(0,1,0))).lookVector,200,modelzorz)
if hit~=nil then
local ref=part(3,workspace,0,1,BrickColor.new("Black"),"Effect",vt())
ref.Anchored=true
ref.CFrame=cf(pos)
game:GetService("Debris"):AddItem(ref,1)
for i=1,3 do
Lightning(orb.Position,pos,5,1,"Bright yellow",.1,.5,.5)
end
MagniDamage(orb,30,5,10,math.random(30,50),"Knockdown2")
MagicWave(BrickColor.new("Bright yellow"),cf(ref.Position),1,1,1,1.5,0.5,1.5,0.05)
so("http://www.roblox.com/asset/?id=161006033",ref,1,3) 
so("http://www.roblox.com/asset/?id=10756104",ref,1,2) 
end
MagicBlock(BrickColor.new("Bright red"),cf(orb.Position)*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50)),1,1,1,3,3,3,0.05,2)
orb.Parent=nil
swait(10)
attack=false
end
 
function attacktwo()
attack=true
for i=0,1,0.1 do
swait()
hwld.C0=clerp(hwld.C0,euler(0,-.5,0)*cf(0,1,1)*euler(.7,1.9,0),.3)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,1.3)*euler(-.1,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,-1.3),.3)
RW.C0=clerp(RW.C0,cf(.6,0.3,-.5)*euler(.6,0,-1),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(1.2,0,-.8),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(.5,-1,-.5)*euler(0,1.57,0)*euler(0,1.3,0),.3)
LH.C0=clerp(LH.C0,cf(-.5,-1,.5)*euler(0,-1.57,0)*euler(0,1.3,0),.3)
end
KeyPress("z",false)
for i=0,1,0.1 do
swait()
if i==0.6 then
KeyPress("v",false)
end
RW.C0=clerp(RW.C0,cf(1.2,0.4,-.3)*euler(.5,0,-.2),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
end
MagicBlock(BrickColor.new("Bright red"),cf(prt15.Position)*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50)),1,1,1,2,2,2,0.05,2)
so("http://www.roblox.com/asset/?id=153092334",prt15,1,1) 
so("http://www.roblox.com/asset/?id=192603389",prt15,1,1) 
local TheHit=MMouse.Hit.p
local MouseLook=cf((prt15.Position+TheHit)/2,TheHit)
local hit,pos=rayCast(prt15.Position,MouseLook.lookVector,200,modelzorz)
if hit~=nil then
Damagefunc(hit,5,10,math.random(10,20),"Knockdown2",RootPart,0,1,1)
end
orb.Parent=workspace
orb.CFrame=cf(pos)+vt(0,1,0)
for i=1,30 do
swait()
MagicBlock(BrickColor.new("Bright red"),cf(prt15.Position)*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50)),1,1,1,1,1,1,0.1,2)
Lightning(prt15.Position,pos,5,1,"Bright red",.1,.5,.03)
end
attack=false
end
 
function attackthree()
attack=true
for i=0,1,0.1 do
swait()
hwld.C0=clerp(hwld.C0,euler(0,0,0)*cf(0,1,.8)*euler(.5,2.5,0),.3)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,1.6)*euler(-.1,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,-1.6),.3)
RW.C0=clerp(RW.C0,cf(1,0.3,-.5)*euler(.8,0,-.4),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(2.5,0,-.6),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(.5,-1,-.5)*euler(0,1.57,0)*euler(0,1.3,0),.3)
LH.C0=clerp(LH.C0,cf(-.5,-1,.5)*euler(0,-1.57,0)*euler(0,1.3,0),.3)
end
KeyPress("c",false)
for i=0,1,0.1 do
swait()
hwld.C0=clerp(hwld.C0,euler(0,0,0)*cf(0,1,.8)*euler(.5,2.3,0),.3)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,1.6)*euler(-.1,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,-1.6),.3)
RW.C0=clerp(RW.C0,cf(1,0.3,-.3)*euler(.6,0,-.6),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(2.6,0,-.4),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
end
MagniDamage(orb,15,5,10,math.random(-30,-20),"Knockdown2")
local ref=part(3,workspace,0,1,BrickColor.new("Black"),"Effect",vt())
ref.Anchored=true
ref.CFrame=cf(orb.Position)
game:GetService("Debris"):AddItem(ref,.5)
so("http://www.roblox.com/asset/?id=87784452",ref,1,2) 
so("http://www.roblox.com/asset/?id=169380598",ref,1,2) 
MagicCircle(BrickColor.new("Bright yellow"),cf(orb.Position),1,1,1,10,10,10,0.1)
MagicBlock(BrickColor.new("Bright yellow"),cf(orb.Position)*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50)),1,1,1,3,3,3,0.05,1)
MagicBlock(BrickColor.new("Bright red"),cf(orb.Position)*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50)),1,1,1,2.5,2.5,2.5,0.02,2)
swait(10)
attack=false
end
 
function KeyPress(keyp,RWCan)
keypress=true
keynum=0
RWC0=cf(1.5,0.5,0)*euler(.8,0,0.2)
if keyp=="z" then
keynum=2
RWC0=cf(.6,0.3,-.5)*euler(.6,0,-1)
elseif keyp=="x" then
keynum=4
RWC0=cf(.8,0.4,-.5)*euler(.6,0,-.8)
elseif keyp=="c" then
keynum=6
RWC0=cf(1,0.4,-.5)*euler(.5,0,-.5)
elseif keyp=="v" then
keynum=8
RWC0=cf(1.2,0.5,-.3)*euler(.5,0,-.2)
elseif keyp=="b" then
keynum=10
RWC0=cf(1.5,0.5,-.2)*euler(.5,0,0)
elseif keyp=="n" then
keynum=12
RWC0=cf(1.5,0.4,-.1)*euler(.5,0,.2)
elseif keyp=="m" then
keynum=14
RWC0=cf(1.5,0.3,-.1)*euler(.4,0,.8)
end
Keys[keynum].Sound:Play()
coroutine.resume(coroutine.create(function(Num,CeOh,Weld)
--local Num=KeysC0[keynum]
--local CeOh=KeysWeld[keynum].C0
for j=0,1,0.1 do
swait()
if RWCan==true then
RW.C0=clerp(RW.C0,RWC0,.4)
end
Weld.C0=clerp(CeOh,Num*euler(0,-.2,0),.25)
end
keypress=false
for j=0,1,0.2 do
swait()
Weld.C0=clerp(CeOh,Num*euler(0,0,0),.4)
end
end),KeysC0[keynum],KeysWeld[keynum].C0,KeysWeld[keynum])
end
 
function KeyStopSound(keyp)
if keyp=="z" then
keynum=2
elseif keyp=="x" then
keynum=4
elseif keyp=="c" then
keynum=6
elseif keyp=="v" then
keynum=8
elseif keyp=="b" then
keynum=10
elseif keyp=="n" then
keynum=12
elseif keyp=="m" then
keynum=14
end
Keys[keynum].Sound:Stop()
end
 
function DreamHarmony()
attack=true
local TheHit=MMouse.Hit.p
local MouseLook=cf((prt15.Position+TheHit)/2,TheHit)
local hit,pos=rayCast(prt15.Position,MouseLook.lookVector,500,modelzorz)
if hit~=nil and hit.Parent:findFirstChild("Humanoid")~=nil and hit.Parent:findFirstChild("Torso")~=nil then
hum=hit.Parent.Humanoid
Tors=hit.Parent.Torso
if #Allies>0 then
for i=1,#Allies do
if hit.Parent~=Allies[i] then
table.insert(Allies,hit.Parent)
end
end
else
table.insert(Allies,hit.Parent)
end
for i=0,1,0.15 do
swait()
hwld.C0=clerp(hwld.C0,euler(0,-.5,0)*cf(0,1,1)*euler(.7,1.9,0),.35)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,1.3)*euler(0,0,0),.35)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,-1.3),.35)
RW.C0=clerp(RW.C0,cf(1,0.3,-.3)*euler(.6,0,-.2),.35)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.35)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(1.2,0,-.8),.35)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.35)
RH.C0=clerp(RH.C0,cf(.5,-1,-.5)*euler(0,1.57,0)*euler(0,1.3,0),.3)
LH.C0=clerp(LH.C0,cf(-.5,-1,.5)*euler(0,-1.57,0)*euler(0,1.3,0),.3)
end
so("http://roblox.com/asset/?id=2101144",prt15,1,1) 
for i=1,100 do
swait(1)
if i%10==0 then
so("http://roblox.com/asset/?id=153092334",Tors,1,3) 
heal=1
hum.Health=hum.Health+heal
MagicBlock(BrickColor.new("White"),cf(Tors.Position)*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50)),1,1,1,3,3,3,0.08,2)
end
if i%5==0 then
derppos=Tors.Position+vt(math.random(-500,500)/100,10,math.random(-500,500)/100)
local hitef,posef=rayCast(derppos,(CFrame.new(derppos,derppos - Vector3.new(0,1,0))).lookVector,100,Tors.Parent)
if hitef~=nil then
MagicCircle(BrickColor.new("White"),cf(posef),1,2,1,1,8,1,.1)
end
end
Lightning(prt15.Position,Tors.Position,5,1,"White",.1,.5,.03)
end
end
swait(10)
attack=false
end
 
function NightmareDiscord()
attack=true
local TheHit=MMouse.Hit.p
local MouseLook=cf((prt15.Position+TheHit)/2,TheHit)
local hit,pos=rayCast(prt15.Position,MouseLook.lookVector,500,modelzorz)
if hit~=nil and hit.Parent:findFirstChild("Humanoid")~=nil and hit.Parent:findFirstChild("Torso")~=nil then
hum=hit.Parent.Humanoid
Tors=hit.Parent.Torso
for i=1,#Allies do
if hit.Parent==Allies[i] then
table.remove(Allies,i)
end
end
for i=0,1,0.15 do
swait()
hwld.C0=clerp(hwld.C0,euler(0,-.5,0)*cf(0,1,1)*euler(.7,1.9,0),.35)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,1.3)*euler(0,0,0),.35)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,-1.3),.35)
RW.C0=clerp(RW.C0,cf(1,0.3,-.3)*euler(.6,0,-.2),.35)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.35)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(1.2,0,-.8),.35)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.35)
RH.C0=clerp(RH.C0,cf(.5,-1,-.5)*euler(0,1.57,0)*euler(0,1.3,0),.3)
LH.C0=clerp(LH.C0,cf(-.5,-1,.5)*euler(0,-1.57,0)*euler(0,1.3,0),.3)
end
so("http://www.roblox.com/asset/?id=3264923",prt15,1,1) 
for i=1,100 do
swait(1)
if hum.WalkSpeed>=10 then
hum.WalkSpeed=10
end
if i%10==0 then
so("http://www.roblox.com/asset/?id=160773067",Tors,.6,3) 
Damagefunc(hit,1,3,0,"Normal",RootPart,0,1,0)
MagicBlock(BrickColor.new("Black"),cf(Tors.Position)*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50)),1,1,1,3,3,3,0.08,2)
end
if i%2==0 then
MagicCircle(BrickColor.new("Black"),cf(Tors.Position)*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50)),1,1,1,.1,10,.1,.1)
end
Lightning(prt15.Position,Tors.Position,5,1,"Black",.1,.5,.03)
end
hum.WalkSpeed=16
end
attack=false
end
 
function DistuneField()
attack=true
Humanoid.WalkSpeed=0
for i=0,1,0.1 do
swait()
hwld.C0=clerp(hwld.C0,euler(0,-1.7,0)*cf(-.2,.6,1)*euler(.8,1.5,0),.3)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(1.8,0,-.2),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(1.2,0,-.8),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,RHC0,.3)
LH.C0=clerp(LH.C0,LHC0,.3)
end
so("http://roblox.com/asset/?id=192597368",RootPart,1,1) 
MagicWave(BrickColor.new("Bright yellow"),cf(RootPart.Position)*cf(0,-2,0),1,1,1,1.3,0.5,1.3,0.02)
MagicCircle(BrickColor.new("New Yeller"),cf(RootPart.Position),1,1,1,20,20,20,0.05)
MagniDamage(RootPart,40,10,20,math.random(30,50),"Knockdown2",true)
for i=0,1,0.1 do
swait()
MagicNote(BrickColor:random(),RootPart.CFrame*cf(math.random(-10,10),math.random(-10,10),math.random(-10,10))*euler(1.57,0,math.random(-50,50)),.1,.1,.1,0,0,0,.02)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(1.57,0,1),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
end
for i=1,20 do
swait(1)
MagicNote(BrickColor:random(),RootPart.CFrame*cf(math.random(-10,10),math.random(-10,10),math.random(-10,10))*euler(1.57,0,math.random(-50,50)),.1,.1,.1,0,0,0,.02)
end
swait(10)
Humanoid.WalkSpeed=16
attack=false
end
 
function MelodyOrb()
attack=true
so("http://www.roblox.com/asset/?id=192603389",prt15,1,1.2) 
for i=0,1,0.15 do
swait()
hwld.C0=clerp(hwld.C0,euler(0,0,0)*cf(0,1,.8)*euler(.5,2.3,0),.35)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,1.6)*euler(-.1,0,0),.35)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,-1.6),.35)
RW.C0=clerp(RW.C0,cf(1,0.3,-.3)*euler(.6,0,-.6),.35)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.35)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(2.6,0,-.4),.35)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.35)
RH.C0=clerp(RH.C0,cf(.5,-1,-.5)*euler(0,1.57,0)*euler(0,1.3,0),.35)
LH.C0=clerp(LH.C0,cf(-.5,-1,.5)*euler(0,-1.57,0)*euler(0,1.3,0),.35)
end
local orb2=part(3,workspace,0,.5,BrickColor.new("Bright yellow"),"Orb",vt(1,1,1))
orb2.Anchored=true
local omsh=mesh("SpecialMesh",orb2,"Sphere","",vt(0,0,0),vt(2,2,2))
local osound2=Instance.new("Sound",orb2)
osound2.Volume=.5
osound2.Pitch=1.2
osound2.Looped=true
osound2.SoundId="http://www.roblox.com/asset/?id=192603255"
osound2:Play()
orb2.CFrame=RootPart.CFrame*cf(0,0,-5)
table.insert(Orbs,orb2)
attack=false
end
 
function Detonation()
attack=true
for i=0,1,0.1 do
swait()
hwld.C0=clerp(hwld.C0,euler(0,-1.7,0)*cf(-.2,.6,1)*euler(.8,1.5,0),.3)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(1.8,0,-.2),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(1.2,0,-.8),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,RHC0,.3)
LH.C0=clerp(LH.C0,LHC0,.3)
end
if #Orbs>0 then
for i=1,#Orbs do
MagniDamage(Orbs[1],15,10,20,math.random(20,30),"Knockdown2",true)
local ref=part(3,workspace,0,1,BrickColor.new("Black"),"Effect",vt())
ref.Anchored=true
ref.CFrame=cf(Orbs[1].Position)
game:GetService("Debris"):AddItem(ref,.5)
--[[so("http://www.roblox.com/asset/?id=87784452",ref,1,2) 
so("http://www.roblox.com/asset/?id=169380598",ref,1,2) ]]
so("http://roblox.com/asset/?id=192597368",ref,.6,1.4) 
MagicCircle(BrickColor.new("Bright yellow"),cf(Orbs[1].Position),1,1,1,10,10,10,0.1)
MagicBlock(BrickColor.new("Bright yellow"),cf(Orbs[1].Position)*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50)),1,1,1,3,3,3,0.05,1)
MagicBlock(BrickColor.new("Bright red"),cf(Orbs[1].Position)*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50)),1,1,1,2.5,2.5,2.5,0.02,2)
for i=1,2 do
MagicNote(BrickColor:random(),cf(Orbs[1].Position)*euler(1.57,0,math.random(-50,50)),.1,.1,.1,0,0,0,.02)
end
Orbs[1].Parent=nil
table.remove(Orbs,1)
end
end
for i=0,1,0.1 do
swait()
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(1.57,0,1),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
end
swait(10)
attack=false
end
 
function MelodyBlast()
attack=true
if MMouse.Target~=nil and MMouse.Target.Name=="Orb" then
MainOrb=MMouse.Target
orbget=true
for i=0,1,0.1 do
swait()
hwld.C0=clerp(hwld.C0,euler(0,-.5,0)*cf(0,1,1)*euler(.7,1.9,0),.3)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,1.3)*euler(0,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,-1.3),.3)
RW.C0=clerp(RW.C0,cf(1,0.3,-.3)*euler(.6,0,-.2),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(1.2,0,-.8),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(.5,-1,-.5)*euler(0,1.57,0)*euler(0,1.3,0),.3)
LH.C0=clerp(LH.C0,cf(-.5,-1,.5)*euler(0,-1.57,0)*euler(0,1.3,0),.3)
end
effect("Bright yellow",.2,MainOrb.CFrame,prt15.CFrame)
so("http://roblox.com/asset/?id=192603389",prt15,1,1) 
while orbget==true do
swait()
MainOrb.CFrame=prt15.CFrame
end
so("http://roblox.com/asset/?id=192603356",prt15,1,1) 
local MainPos=MainOrb.Position
local MainPos2=MMouse.Hit.p
local MouseLook=cf((MainPos+MainPos2)/2,MainPos2)
local num=30
coroutine.resume(coroutine.create(function(Pos1,Pos2,Look) 
repeat
swait()
local ohit,opos=rayCast(Pos1,Look.lookVector,5,Character)
MainOrb.CFrame=CFrame.new((Pos1+opos)/2,opos)
Pos1=Pos1+(Look.lookVector*5)
MainOrb.CFrame=CFrame.new(MainOrb.Position,MMouse.Hit.p) 
if ohit~=nil then
num=0
MagniDamage(MainOrb,15,10,20,math.random(10,20),"Knockdown2")
local ref=part(3,workspace,0,1,BrickColor.new("Black"),"Effect",vt())
ref.Anchored=true
ref.CFrame=cf(MainOrb.Position)
game:GetService("Debris"):AddItem(ref,.5)
so("http://www.roblox.com/asset/?id=87784452",ref,1,2.3) 
so("http://www.roblox.com/asset/?id=169380598",ref,1,2.3) 
MagicCircle(BrickColor.new("Bright yellow"),cf(MainOrb.Position),1,1,1,10,10,10,0.1)
MagicBlock(BrickColor.new("Bright yellow"),cf(MainOrb.Position)*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50)),1,1,1,3,3,3,0.05,1)
MagicBlock(BrickColor.new("Bright red"),cf(MainOrb.Position)*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50)),1,1,1,2.5,2.5,2.5,0.02,2)
for i=1,2 do
MagicNote(BrickColor:random(),cf(MainOrb.Position)*euler(1.57,0,math.random(-50,50)),.1,.1,.1,0,0,0,.02)
end
end
--MainOrb.CFrame=MainOrb.CFrame+MainOrb.CFrame.lookVector * 1 
num=num-1
until num<=0
end),MainPos,MainPos2,MouseLook)
--[[local TheHit=MMouse.Hit.p
local MouseLook=cf((prt15.Position+TheHit)/2,TheHit)
MainOrb.CFrame=MouseLook.lookVector]]
else
mana=mana+15
end
attack=false
end
 
function MagniDamage(Part,magni,mindam,maxdam,knock,Type,Heal)
for _,c in pairs(workspace:children()) do
local hum=c:findFirstChild("Humanoid")
if hum~=nil then
local head=c:findFirstChild("Torso")
if head~=nil then
local targ=head.Position-Part.Position
local mag=targ.magnitude
if mag<=magni and c.Name~=Player.Name then 
Damagefunc(head,mindam,maxdam,knock,Type,Part,.2,1,3,1)
if Heal~=nil and Heal==true then
print("derp")
for i=1,#Allies do
if head.Parent==Allies[i] then
hnum=math.random(mindam,maxdam)
hum.Health=hum.Health+hnum
showDamage(head.Parent,hnum,.5,BrickColor.new("White"))
end
end
end
end
end
end
end
end
 
function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 
 
local Effects={}
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
effectsg.BrickColor=Color1
effectsg.Reflectance=Ref
local point1=P1
local mg=(LP.p - point1.p).magnitude
effectsg.Size=Vector3.new(0.5,mg,0.5)
effectsg.CFrame=cf((LP.p+point1.p)/2,point1.p) * CFrame.Angles(math.rad(90),0,0)
effectsmsh.Scale=Vector3.new(0.4,1,0.4)
game:GetService("Debris"):AddItem(effectsg,2)
if returnn then return effectsg end
if not returnn then
table.insert(Effects,{effectsg,"Cylinder",0.05,0.01,0,0.01,effectsmsh})
end
end
 
function MagicBlock(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay,Type)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
if Type==1 or Type==nil then
table.insert(Effects,{prt,"Block1",delay,x3,y3,z3,msh})
elseif Type==2 then
table.insert(Effects,{prt,"Block2",delay,x3,y3,z3,msh})
end
end
 
function MagicCircle(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
table.insert(Effects,{prt,"Cylinder",delay,x3,y3,z3,msh})
end
 
function MagicWave(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=20329976",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
table.insert(Effects,{prt,"Cylinder",delay,x3,y3,z3,msh})
end
 
function MagicNote(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay,Type)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=1088207",vt(0,0,0),vt(x1,y1,z1))
--msh.TextureId="http://www.roblox.com/asset/?id=1088099"
game:GetService("Debris"):AddItem(prt,5)
table.insert(Effects,{prt,"Block3",delay,x3,y3,z3,msh,cf(math.random(-100,100)/100,math.random(-100,100)/100,math.random(-50,-10)/100)})
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
 
Damagefunc=function(hit,minim,maxim,knockback,Type,Property,Delay,KnockbackType,decreaseblock)
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
        for i=1,#Allies do
        if hit.Parent==Allies[i] or hit.Parent.Parent==Allies[i] then print("noe ally") return end
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
                Damage=math.random(minim,maxim)
--                h:TakeDamage(Damage)
                blocked=false
                block=hit.Parent:findFirstChild("Block")
                if block~=nil then
                print(block.className)
                if block.className=="NumberValue" then
                if block.Value>0 then
                blocked=true
                if decreaseblock~=nil then
                block.Value=block.Value-decreaseblock
                end
                end
                end
                if block.className=="IntValue" then
                if block.Value>0 then
                blocked=true
                if decreaseblock~=nil then
                block.Value=block.Value-decreaseblock
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
                elseif Type=="Knockdown2" then
                hum=hit.Parent.Humanoid
                local angle=(hit.Position-(Property.Position+Vector3.new(0,0,0))).unit
--hit.CFrame=cf(hit.Position,Vector3.new(angle.x,hit.Position.y,angle.z))*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
local bodvol=Instance.new("BodyVelocity")
bodvol.velocity=angle*knockback
bodvol.P=5000
bodvol.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
bodvol.Parent=hit
game:GetService("Debris"):AddItem(bodvol,.5)
--game:GetService("Debris"):AddItem(rl,.5)
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
                rl.angularvelocity=Vector3.new(math.random(-2,2),math.random(-2,2),math.random(-2,2))
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
        end
end
 
showDamage=function(Char,Dealt,du,Color)
        m=Instance.new("Model")
        m.Name=tostring(math.floor(Dealt))
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
if orbget==true then
orbget=false
end
if attack==true or equipped==false then return end
hold=true
size=0
fenbarmana3:TweenSize(UDim2.new(4*0/100,0,0.2,0),nil,1,0.4,true)
Input=""
if combo==0 then
combo=1
attacktwo()
elseif combo==1 then
combo=2
attackthree()
elseif combo==2 then
combo=0
attackone()
end
coroutine.resume(coroutine.create(function() 
for i=1,50 do
if attack==false then
swait()
end
end
if attack==false then
combo=0
orb.Parent=nil
end
end))
end 
 
function ob1u(mouse) 
hold = false 
end 
 
buttonhold = false 
 
eul=0
size=0
holdz=false
equipped=false
function key(key) 
if attack==true then return end
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
if key=="h" then
mana=100
end
if key=="j" then
if #Orbs>0 then
for i=1,#Orbs do
Orbs[1].Parent=nil
table.remove(Orbs,1)
end
end
end
if key=="q" then
mana=mana-size
fenbarmana3:TweenSize(UDim2.new(4*0/100,0,0.2,0),nil,1,0.4,true)
if size>0 then
MagicBlock(BrickColor.new("Bright red"),cf(prt15.Position)*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50)),1,1,1,2,2,2,0.1,2)
end
if Input=="xcz" then
print("dream")
DreamHarmony()
elseif Input=="nvm" then
print("nightmare")
NightmareDiscord()
elseif Input=="bvnc" then
print("distune")
DistuneField()
elseif Input=="zc" and #Orbs<3 then
print("melody")
MelodyOrb()
elseif Input=="vcm" then
print("detonate")
Detonation()
elseif Input=="vvc" then
print("mblast")
MelodyBlast()
end
Input=""
size=0
end
if (key=="z" or key=="x" or key=="c" or key=="v" or key=="b" or key=="n" or key=="m") and mana>=size then
Input=Input..key
if size<=40 then
size=size+5
fenbarmana3:TweenSize(UDim2.new(4*size/100,0,0.2,0),nil,1,0.4,true)
end
print(Input)
KeyPress(key,true)
coroutine.resume(coroutine.create(function() 
while keypress==true do
swait()
end
for i=1,50 do
if keypress==false then
swait()
end
end
if keypress==false and attack==false then
size=0
fenbarmana3:TweenSize(UDim2.new(4*0/100,0,0.2,0),nil,1,0.4,true)
Input=""
print("ded")
end
end))
end
coroutine.resume(coroutine.create(function() 
for i=1,50 do
if attack==false then
swait()
end
end
if attack==false then
combo=0
orb.Parent=nil
end
end))
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
print("Cyber Virtuoso loaded.")
 
local mananum=0
local donum=0
local handidle=false
local orbnum=0
while true do
swait()
if #Orbs>0 then
for i=1,#Orbs do
if Humanoid.Health<=0 or Torso.Parent==nil then
Orbs[1].Parent=nil
table.remove(Orbs,1)
else
MagicBlock(BrickColor.new("New Yeller"),cf(Orbs[i].Position)*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50)),1,1,1,2,2,2,0.2,2)
end
end
end
if orb.Parent~=nil then
osound:Play()
if orbnum>=2 then
orbnum=0
MagicBlock(BrickColor.new("Bright red"),cf(orb.Position)*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50)),1,1,1,2,2,2,0.1,1)
end
orbnum=orbnum+1
else
osound:Pause()
end
if donum>=.5 then
handidle=true
elseif donum<=0 then
handidle=false
end
if handidle==false then
donum=donum+0.003
else
donum=donum-0.003
end
local torvel=(RootPart.Velocity*Vector3.new(1,0,1)).magnitude 
local velderp=RootPart.Velocity.y
hitfloor,posfloor=rayCast(RootPart.Position,(CFrame.new(RootPart.Position,RootPart.Position - Vector3.new(0,1,0))).lookVector,4,Character)
if equipped==true then
if attack==false then
idle=idle+1
else
idle=0
end
if idle>=500 then
if attack==false then
--Sheath()
end
end
if RootPart.Velocity.y > 1 and hitfloor==nil then 
Anim="Jump"
if attack==false then
Neck.C0=clerp(Neck.C0,necko*euler(-0.2,0,0),.3)
Neck.C1=clerp(Neck.C1,necko2*euler(0,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.3)
if keypress==false then
for i=1,#KeysWeld do
KeysWeld[i].C0=clerp(KeysWeld[i].C0,KeysC0[i],.3)
end
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(.8,0,0.2),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
end
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(1.2,0,-.8),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(1,-1,-.3)*euler(-0.5,1.57,0)*euler(-.2,0,0),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,-.3)*euler(-0.5,-1.57,0)*euler(-.2,0,0),.2)
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
Anim="Fall"
if attack==false then
Neck.C0=clerp(Neck.C0,necko*euler(0.4,0,0),.3)
Neck.C1=clerp(Neck.C1,necko2*euler(0,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.3)
if keypress==false then
for i=1,#KeysWeld do
KeysWeld[i].C0=clerp(KeysWeld[i].C0,KeysC0[i],.3)
end
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(.8,0,0.2),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
end
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(1.2,0,-.8),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0.4,1.57,0),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(-0.2,-1.57,0),.2)
end
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
if attack==false then
hwld.C0=clerp(hwld.C0,euler(0,-.5,0)*cf(0,1,1)*euler(.7,1.9,0),.3)
Neck.C0=clerp(Neck.C0,necko*euler(.3,0,-.2),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,-.3),.3)
if keypress==false then
for i=1,#KeysWeld do
KeysWeld[i].C0=clerp(KeysWeld[i].C0,KeysC0[i],.3)
end
RW.C0=clerp(RW.C0,cf(1.2,0.5,-.3)*euler(.8,0,-.4),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
end
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(1.2,0,-.8),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,RHC0,.3)
RH.C1=clerp(RH.C1,RHC1,.3)
LH.C0=clerp(LH.C0,LHC0,.3)
LH.C1=clerp(LH.C1,LHC1,.3)
end
elseif torvel>2 and torvel<22 and hitfloor~=nil then
Anim="Walk"
if attack==false then
hwld.C0=clerp(hwld.C0,euler(0,-.5,0)*cf(0,1,1)*euler(.7,1.9,0),.3)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,.6)*euler(-.1,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0.2,0,-.6),.3)
if keypress==false then
for i=1,#KeysWeld do
KeysWeld[i].C0=clerp(KeysWeld[i].C0,KeysC0[i],.3)
end
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(.8,0,0.2),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
end
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(1.2,0,-.8),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(0,.6,0),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(0,.6,0),.3)
end
elseif torvel>=22 and hitfloor~=nil then
Anim="Run"
if attack==false then
Neck.C0=clerp(Neck.C0,necko*euler(0,0,.6)*euler(-.3,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0.3,0,-.6),.3)
if keypress==false then
for i=1,#KeysWeld do
KeysWeld[i].C0=clerp(KeysWeld[i].C0,KeysC0[i],.3)
end
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(.8,0,0.2),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
end
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(1.2,0,-.8),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(0,.6,0),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(0,.6,0),.3)
end
end
end
if #Effects>0 then
--table.insert(Effects,{prt,"Block1",delay})
for e=1,#Effects do
if Effects[e]~=nil then
--for j=1,#Effects[e] do
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
Mesh=Thing[7]
Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Block2" then
Thing[1].CFrame=Thing[1].CFrame
Mesh=Thing[7]
Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Block3" then
Thing[1].CFrame=Thing[1].CFrame*Thing[8]
Mesh=Thing[7]
Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Cylinder" then
Mesh=Thing[7]
Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Blood" then
Mesh=Thing[7]
Thing[1].CFrame=Thing[1].CFrame*cf(0,.5,0)
Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Elec" then
Mesh=Thing[7]
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
--end
end
end
end
fenbarmana2:TweenSize(UDim2.new(4*mana/100,0,0.2,0),nil,1,0.4,true)
fenbarmana4.Text="Energy("..mana..")"
if mana>=100 then
mana=100
else
if mananum<=15 then
mananum=mananum+1
else
mananum=0
if Input=="" then
mana=mana+1
end
end
end
end
--[[ 
Copyrighted (C) Fenrier 2014
]] 
 