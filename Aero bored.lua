--[[
Cyber Stratosphere Class Made by Fenrier.
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
local Effects={}
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
 
function swait(num)
if num==0 or num==nil then
game:service'RunService'.RenderStepped:wait()
else
for i=0,num do
game:service'RunService'.RenderStepped:wait()
end
end
end
 
if Character:findFirstChild("Aero Board",true) ~= nil then 
Character:findFirstChild("Aero Board",true).Parent = nil 
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
modelzorz.Name="Aero Board" 
 
local handle=part(3,modelzorz,0,0,BrickColor.new("Black"),"Handle1",vt())
local hprt2=part(3,modelzorz,0,0,BrickColor.new("Black"),"Handle2",vt())
local hprt3=part(3,modelzorz,0,0,BrickColor.new("Black"),"Handle3",vt())
local prt1=part(3,modelzorz,0,0,BrickColor.new("Black"),"Part1",vt())
local prt2=part(3,modelzorz,0,0,BrickColor.new("Black"),"Part2",vt())
local prt3=part(3,modelzorz,0,0,BrickColor.new("Black"),"Part3",vt())
local prt4=part(3,modelzorz,0,0,TorsoColor,"Part4",vt())
local prt5=part(3,modelzorz,0,0,BrickColor.new("Black"),"Part5",vt())
local prt6=part(3,modelzorz,0,0,BrickColor.new("Black"),"Part6",vt())
local prt7=part(3,modelzorz,0,0,TorsoColor,"Part7",vt())
local prt8=part(3,modelzorz,0,0,BrickColor.new("Black"),"Part8",vt())
local prt9=part(3,modelzorz,0,0,BrickColor.new("Black"),"Part9",vt())
local prt10=part(3,modelzorz,0,0,TorsoColor,"Part10",vt())
local prt11=part(3,modelzorz,0,0,TorsoColor,"Part11",vt())
local prt12=part(3,modelzorz,0,0,BrickColor.new("Black"),"Part12",vt())
local prt13=part(3,modelzorz,0,0,BrickColor.new("Black"),"Part13",vt())
local prt14=part(3,modelzorz,0,0,BrickColor.new("Black"),"Part14",vt())
local prt15=part(3,modelzorz,0,0,TorsoColor,"Part15",vt())
local prt16=part(3,modelzorz,0,0,TorsoColor,"Part16",vt())
local prt17=part(3,modelzorz,0,0,TorsoColor,"Part17",vt())
local prt18=part(3,modelzorz,0,0,TorsoColor,"Part18",vt())
local prt19=part(3,modelzorz,0,0,TorsoColor,"Part19",vt())
local prt20=part(3,modelzorz,0,0,TorsoColor,"Part20",vt())
local prt21=part(3,modelzorz,0,0,TorsoColor,"Part21",vt())
local prt22=part(3,modelzorz,0,0,BrickColor.new("White"),"Part22",vt())
local prt23=part(3,modelzorz,0,0,BrickColor.new("White"),"Part23",vt())
local prt24=part(3,modelzorz,0,0,TorsoColor,"Part24",vt())
local prt25=part(3,modelzorz,0,0,TorsoColor,"Part25",vt())
 
local hmsh=mesh("BlockMesh",handle,"","",vt(0,0,0),vt(1,1,5))
local hmsh2=mesh("BlockMesh",hprt2,"","",vt(0,0,0),vt(1,1,2))
local hmsh3=mesh("BlockMesh",hprt3,"","",vt(0,0,0),vt(1,1,2))
local msh1=mesh("BlockMesh",prt1,"","",vt(0,0,0),vt(2,30,12))
local msh2=mesh("CylinderMesh",prt2,"","",vt(0,0,0),vt(5,1.99,5))
local msh3=mesh("SpecialMesh",prt3,"Wedge","",vt(0,0,0),vt(2,3,2.3))
local msh4=mesh("SpecialMesh",prt4,"Wedge","",vt(0,0,0),vt(2.1,1.5,1.15))
local msh5=mesh("CylinderMesh",prt5,"","",vt(0,0,0),vt(5,1.99,5))
local msh6=mesh("SpecialMesh",prt6,"Wedge","",vt(0,0,0),vt(2,3,2.3))
local msh7=mesh("SpecialMesh",prt7,"Wedge","",vt(0,0,0),vt(2.1,1.5,1.15))
local msh8=mesh("SpecialMesh",prt8,"Torso","",vt(0,0,0),vt(6,1,1.98))
local msh9=mesh("SpecialMesh",prt9,"Torso","",vt(0,0,0),vt(6,1,1.98))
local msh10=mesh("SpecialMesh",prt10,"Wedge","",vt(0,0,0),vt(2,1,8))
local msh11=mesh("SpecialMesh",prt11,"Wedge","",vt(0,0,0),vt(2,1,8))
local msh12=mesh("SpecialMesh",prt12,"Torso","",vt(0,0,0),vt(10,3,2.05))
local msh13=mesh("SpecialMesh",prt13,"Torso","",vt(0,0,0),vt(10,3,2.05))
local msh14=mesh("BlockMesh",prt14,"","",vt(0,0,0),vt(10,10,2.05))
local msh15=mesh("SpecialMesh",prt15,"Torso","",vt(0,0,0),vt(8,2,2.1))
local msh16=mesh("SpecialMesh",prt16,"Torso","",vt(0,0,0),vt(8,2,2.1))
local msh17=mesh("BlockMesh",prt17,"","",vt(0,0,0),vt(8,.5,2.1))
local msh18=mesh("BlockMesh",prt18,"","",vt(0,0,0),vt(8,.5,2.1))
local msh19=mesh("BlockMesh",prt19,"","",vt(0,0,0),vt(2.1,5,6))
local msh20=mesh("SpecialMesh",prt20,"Wedge","",vt(0,0,0),vt(2.1,3,2))
local msh21=mesh("SpecialMesh",prt21,"Wedge","",vt(0,0,0),vt(2.1,3,2))
local msh22=mesh("SpecialMesh",prt22,"Sphere","",vt(0,0,0),vt(1,6,5))
local msh23=mesh("SpecialMesh",prt23,"Sphere","",vt(0,0,0),vt(1,8,5))
local msh24=mesh("BlockMesh",prt24,"","",vt(0,0,0),vt(2.1,16,5))
local msh25=mesh("SpecialMesh",prt25,"Torso","",vt(0,0,0),vt(5,5,2.1))
 
local hwld=weld(handle,handle,Torso,euler(1,1.57,0)*cf(-1,-1,-1))
--local hwld=weld(handle,handle,RightArm,euler(0,0,0)*cf(0,1,0))
--local hwld=weld(handle,handle,Torso,euler(0,0,-1.57)*cf(1,2.5,0))
local hwld2=weld(hprt2,hprt2,handle,euler(0,1.57,0)*cf(.2,0,.4))
local hwld3=weld(hprt3,hprt3,handle,euler(0,1.57,0)*cf(.2,0,-.4))
local wld1=weld(prt1,prt1,handle,euler(0,0,0)*cf(.5,1,0))
local wld2=weld(prt2,prt2,prt1,euler(0,0,1.57)*cf(0,-2.5,1.2))
local wld3=weld(prt3,prt3,prt2,euler(0,0,1.57)*cf(-.5,0,.23))
local wld4=weld(prt4,prt4,prt3,euler(0,0,0)*cf(0,0,-0.1))
local wld5=weld(prt5,prt5,prt1,euler(0,0,1.57)*cf(0,-2.5,-1.2))
local wld6=weld(prt6,prt6,prt5,euler(0,3.14,1.57)*cf(-.5,0,-.23))
local wld7=weld(prt7,prt7,prt6,euler(0,0,0)*cf(0,0,-0.1))
local wld8=weld(prt8,prt8,prt1,euler(1.57,0,1.57)*cf(0,-1.4,1.3))
local wld9=weld(prt9,prt9,prt1,euler(-1.57,0,1.57)*cf(0,-1.4,-1.3))
local wld10=weld(prt10,prt10,prt1,euler(1.57,0,0)*cf(0,-.1,1.3))
local wld11=weld(prt11,prt11,prt1,euler(1.57,3.14,0)*cf(0,-.1,-1.3))
local wld12=weld(prt12,prt12,prt1,euler(1.57,0,1.57)*cf(0,3,1.3))
local wld13=weld(prt13,prt13,prt1,euler(-1.57,0,1.57)*cf(0,3,-1.3))
local wld14=weld(prt14,prt14,prt1,euler(1.57,0,1.57)*cf(0,3,0))
local wld15=weld(prt15,prt15,prt12,euler(0,0,0)*cf(0,.2,0))
local wld16=weld(prt16,prt16,prt13,euler(0,0,0)*cf(0,.2,0))
local wld17=weld(prt17,prt17,prt12,euler(0,0,0)*cf(0,.6,0))
local wld18=weld(prt18,prt18,prt13,euler(0,0,0)*cf(0,.6,0))
local wld19=weld(prt19,prt19,prt1,euler(0,0,0)*cf(0,-2,0))
local wld20=weld(prt20,prt20,prt1,euler(3.14,0,0)*cf(0,-1.2,.4))
local wld21=weld(prt21,prt21,prt1,euler(0,0,3.14)*cf(0,-1.2,-.4))
local wld22=weld(prt22,prt22,prt1,euler(0,0,0)*cf(.2,-.5,0))
local wld23=weld(prt23,prt23,prt1,euler(0,0,0)*cf(.2,1.7,0))
local wld24=weld(prt24,prt24,prt1,euler(0,0,0)*cf(0,2.39,0))
local wld25=weld(prt25,prt25,prt1,euler(0,1.57,0)*cf(0,.29,0))
 
local bprt1=part(3,modelzorz,0,1,TorsoColor,"Boomerang1",vt())
local bmsh1=mesh("CylinderMesh",bprt1,"","",vt(0,0,0),vt(40,1,40))
local bwld1=weld(bprt1,bprt1,prt1,euler(0,0,1.57)*cf(0,.5,0))
eul=0
for i=1,4 do
local bprt2=part(3,modelzorz,0,1,TorsoColor,"Boomerang2",vt())
local bmsh2=mesh("BlockMesh",bprt2,"","",vt(0,0,0),vt(45,1,10))
local bwld2=weld(bprt2,bprt2,bprt1,euler(0,eul,0)*cf(0,0,0))
eul=eul+0.785
end
 
local hitbox=part(3,nil,0,1,BrickColor.new("Black"),"Hitbox",vt(1,1,1))
hitbox.Anchored=false
 
if (script.Parent.className~="HopperBin") then 
Tool=Instance.new("HopperBin") 
Tool.Parent=Backpack 
Tool.Name="Aero Board" 
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
for i=0,1,0.1 do
swait()
hwld.C0=clerp(hwld.C0,euler(1.57,-1.57,3.5)*cf(.6,.4,1),.3)
Neck.C0=clerp(Neck.C0,necko*euler(-.2,0,-.8),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,-0.5),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(3.3,0,-0.1),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(0,0,-.2),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
end
hwld.Part1=Torso
hwld.C0=euler(1,1.57,0)*cf(-1,-1,-1)
for i=0,1,0.1 do
swait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.4)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0,0,0),.4)
Torso.Neck.C1=clerp(Torso.Neck.C1,necko2*euler(0,0,0),.4)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(0,0,0),.4)
RW.C1=clerp(RW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(0,0,0),.4)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
RH.C0=clerp(RH.C0,RHC0,.3)
RH.C1=clerp(RH.C1,RHC1,.3)
LH.C0=clerp(LH.C0,LHC0,.3)
LH.C1=clerp(LH.C1,LHC1,.3)
end
end 
 
function equipanim() 
equipped=true
for i=0,1,0.1 do
swait()
Neck.C0=clerp(Neck.C0,necko*euler(-.2,0,-.8),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,-0.5),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(3.3,0,-0.1),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(0,0,-.2),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
end
hwld.Part1=RightArm
hwld.C0=euler(1.57,-1.57,3.5)*cf(.6,.4,1)
so("http://roblox.com/asset/?id=161006212",prt1,1,.6) 
for i=0,1,0.1 do
swait()
hwld.C0=clerp(hwld.C0,euler(3.14,3.14,0)*cf(0,1,0),.3)
Neck.C0=clerp(Neck.C0,necko*euler(.2,0,-.3),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,.3),.3)
RW.C0=clerp(RW.C0,cf(1.3,0.5,-.2)*euler(1.3,0,-.3),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(0,0,-.2),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
end
end 
 
function attackone()
attack=true
so("http://roblox.com/asset/?id=2101137",prt1,1,1.4) 
for i=0,1,0.1 do
swait()
hwld.C0=clerp(hwld.C0,euler(3.14,3.14,0)*cf(0,1,0),.3)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,.8),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,-.8),.3)
RW.C0=clerp(RW.C0,cf(1.3,0.5,-.2)*euler(2,0,.5),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(1.57,0,-.8),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
end
Torso.Velocity=RootPart.CFrame.lookVector*100
so("http://roblox.com/asset/?id=161006195",prt1,1,.6) 
so("http://roblox.com/asset/?id=2248511",prt1,1,1.4) 
MagicCircle(TorsoColor,prt1.CFrame,1,1,1,5,5,5,.05)
hitbox.Parent=modelzorz
hitbox.Size=vt(2,7,4)
hitbox.Transparency=1
hitbox.CFrame=prt1.CFrame
con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,5,10,math.random(1,5),"Normal",RootPart,.5,1) end) 
num=0
for i=0,1,0.1 do
swait()
hitbox.CFrame=prt1.CFrame
if num>=3 then
MagicWave(TorsoColor,prt1.CFrame*cf(0,1,0)*euler(3.14,0,0),1,1,1,.5,1,.5,.1)
num=0
end
num=num+1
Neck.C0=clerp(Neck.C0,necko*euler(0,0,-1.2)*euler(.2,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,1.2),.3)
RW.C0=clerp(RW.C0,cf(1.3,0.5,-.2)*euler(1,0,.5),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(0,0,-.8),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(.5,-1,1)*euler(0,1.57,0)*euler(0,-1.2,0),.3)
LH.C0=clerp(LH.C0,cf(-.5,-1,-1)*euler(0,-1.57,0)*euler(0,-1.2,0),.3)
end
con1:disconnect()
hitbox.Parent=nil
swait(10)
attack=false
end
 
function attacktwo()
attack=true
so("http://roblox.com/asset/?id=147722227",prt1,1,.6) 
for i=0,1,0.1 do
swait()
Neck.C0=clerp(Neck.C0,necko*euler(0,0,-1.2)*euler(.2,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,1.2),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(1,0,-.8)*euler(0,1.57,0),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-.2,0,-.2),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
end
so("http://www.roblox.com/asset/?id=153092348",prt1,1,1.2) 
Torso.Velocity=RootPart.CFrame.lookVector*50
hitbox.Parent=modelzorz
hitbox.Size=vt(2,7,4)
hitbox.Transparency=1
hitbox.CFrame=prt1.CFrame
con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,10,20,math.random(1,5),"Normal",RootPart,1,1) end) 
for i=0,1,0.1 do
swait()
Torso.Velocity=RootPart.CFrame.lookVector*50
MagicCircle(TorsoColor,prt1.CFrame*cf(0,3,0),1,1,1,5,5,5,.1)
hitbox.CFrame=prt1.CFrame
Neck.C0=clerp(Neck.C0,necko*euler(0,0,-.5),.3)
--RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,.8),.3)
RootJoint.C0=RootCF*euler(0,0,1.2-6.28*i)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(1.57,0,1)*euler(0,1.57,0),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-.2,0,-1),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
end
for i=0,1,0.1 do
swait()
hitbox.CFrame=prt1.CFrame
Neck.C0=clerp(Neck.C0,necko*euler(0,0,-1),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,1),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(2,0,1)*euler(0,1.57,0),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-.4,0,-1),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
end
con1:disconnect()
hitbox.Parent=nil
swait(5)
attack=false
end
 
function attackthree()
attack=true
so("http://roblox.com/asset/?id=147722227",prt1,1,.6) 
for i=0,1,0.1 do
swait()
hwld.C0=clerp(hwld.C0,euler(3.14,3.14,0)*cf(0,1,0),.3)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,-1)*euler(.2,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,1),.3)
RW.C0=clerp(RW.C0,cf(1,0.5,-.5)*euler(1.57,0,-.6),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1,0.5,-.5)*euler(1.57,0,.8),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(.5,-1,.5)*euler(0,1.57,0)*euler(0,-1,0),.3)
LH.C0=clerp(LH.C0,cf(-.5,-1,-.5)*euler(0,-1.57,0)*euler(0,-1,0),.3)
end
so("http://roblox.com/asset/?id=161006212",prt1,1,.5) 
vel=Instance.new("BodyVelocity")
vel.Parent=RootPart
vel.maxForce=Vector3.new(4e+005,4e+005,4e+005)*2
vel.velocity=RootPart.CFrame.lookVector*70
gairo=Instance.new("BodyGyro") 
gairo.Parent=RootPart
gairo.maxTorque=Vector3.new(4e+005,4e+005,4e+005)*math.huge 
gairo.P=20e+003 
gairo.cframe=RootPart.CFrame
hitbox.Parent=modelzorz
hitbox.Size=vt(2,7,4)
hitbox.Transparency=1
hitbox.CFrame=prt1.CFrame
con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,10,15,math.random(30,40),"Knockdown2",RootPart,.5,2) end) 
num=0
for i=0,2,0.1 do
swait()
hitbox.CFrame=prt1.CFrame
if num>=3 then
MagicWave(TorsoColor,prt1.CFrame*euler(0,0,-1.57),1,1,1,.8,.7,.8,.1)
num=0
end
num=num+1
end
vel.Parent=nil
gairo.Parent=nil
con1:disconnect()
hitbox.Parent=nil
swait(10)
attack=false
end
 
function OverDrive()
attack=true
for i=0,1,0.1 do
swait()
hwld.C0=clerp(hwld.C0,euler(3.14,3.14,0)*cf(0,1,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-.6)*euler(.2,0,-.5),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0,0,.5),.4)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(2,0,.6)*euler(0,1,0),.4)
RW.C1=clerp(RW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(0,0,-.8),.4)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
RH.C0=clerp(RH.C0,cf(1,-1,-.2)*euler(0,1.57,0)*euler(-.1,.5,-.6),.3)
LH.C0=clerp(LH.C0,cf(-1.1,-.4,-.1)*euler(0,-1.57,0)*euler(.1,.5,-.2),.3)
end
Humanoid.WalkSpeed=5
for i=1,2 do
so("http://roblox.com/asset/?id=2101137",RootPart,1,1.2) 
num=0
for i=0,4,0.1 do
swait()
hit,pos=rayCast(RootPart.Position,(CFrame.new(RootPart.Position,RootPart.Position - Vector3.new(0,1,0))).lookVector,50,Character)
if hit~=nil then
if num>=10 then
MagicWave(TorsoColor,cf(pos),1,1,1,.6,.2,.6,.05)
num=0
end
num=num+1
end
end
MagicBlock(TorsoColor,cf(prt1.Position)*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50)),1,1,1,6,6,6,.1,2)
so("http://roblox.com/asset/?id=2248511",prt1,1,2) 
mana=mana-5
end
swait(5)
so("http://roblox.com/asset/?id=161006093",prt1,1,1) 
so("http://roblox.com/asset/?id=169380505",prt1,1,1) 
vel=Instance.new("BodyVelocity")
vel.Parent=RootPart
vel.maxForce=Vector3.new(4e+005,4e+005,4e+005)*2
vel.velocity=RootPart.CFrame.lookVector*50
hitbox.Parent=modelzorz
hitbox.Size=vt(2,7,4)
hitbox.Transparency=1
hitbox.CFrame=prt1.CFrame
con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,10,15,math.random(1,5),"OrbBlast",RootPart,1,1,1) end) 
for i=0,1,0.1 do
swait()
if num>=5 then
MagicWave(TorsoColor,prt1.CFrame*cf(0,1,0)*euler(3.14,0,0),1,1,1,.5,1,.5,.1)
num=0
end
num=num+1
hitbox.CFrame=prt1.CFrame
vel.velocity=RootPart.CFrame.lookVector*50
Neck.C0=clerp(Neck.C0,necko*euler(0,0,-1.2)*euler(.2,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,1.2),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(1.57,0,1.2),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-.2,0,-.8),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(.5,-1,1)*euler(0,1.57,0)*euler(0,-1.2,0),.3)
LH.C0=clerp(LH.C0,cf(-.5,-1,-1)*euler(0,-1.57,0)*euler(0,-1.2,0),.3)
end
for i=1,7,0.1 do
swait()
hitbox.CFrame=prt1.CFrame
if num>=5 then
MagicWave(TorsoColor,prt1.CFrame*cf(0,1,0)*euler(3.14,0,0),1,1,1,.5,1,.5,.1)
num=0
end
num=num+1
vel.velocity=RootPart.CFrame.lookVector*50
end
con1:disconnect()
hitbox.Parent=nil
Humanoid.WalkSpeed=0
for i=0,1,0.02 do
swait()
vel.velocity=RootPart.CFrame.lookVector*(50-50*i)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-.6)*euler(.2,0,.5),.2)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0,0,-.5)*euler(.2,0,0),.2)
RW.C0=clerp(RW.C0,cf(1,0.5,-.5)*euler(1,0,-.4)*euler(0,.5,0),.2)
RW.C1=clerp(RW.C1,cf(0,0.5,0)*euler(0,0,0),.2)
LW.C0=clerp(LW.C0,cf(-1,0.5,-.5)*euler(.5,0,.8),.2)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.2)
RH.C0=clerp(RH.C0,cf(1.1,-.4,-.1)*euler(0,1.57,0)*euler(-.1,-.5,.2),.2)
LH.C0=clerp(LH.C0,cf(-1,-.8,-.2)*euler(0,-1.57,0)*euler(-.1,-.5,.4),.2)
end
vel.Parent=nil
Humanoid.WalkSpeed=16
attack=false
end
 
function Boomerang()
attack=true
mana=mana-20
Humanoid.WalkSpeed=5
so("http://roblox.com/asset/?id=10209296",prt1,1,1.2) 
so("http://roblox.com/asset/?id=2101144",prt1,1,1) 
for _,c in pairs(modelzorz:children()) do
if c.Name=="Boomerang1" or c.Name=="Boomerang2" then
coroutine.resume(coroutine.create(function(Part)
for i=1,.2,-0.1 do
swait()
Part.Transparency=i
end
end),c)
end
end
for i=0,1,0.1 do
swait()
hwld.C0=clerp(hwld.C0,euler(3.14,3.14,0)*cf(0,1,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-.6)*euler(.2,0,-.5),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0,0,.5),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(2,0,1)*euler(0,1.5,0),.3)
RW.C1=clerp(RW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(0,0,-.6),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(1,-1,-.2)*euler(0,1.57,0)*euler(-.1,.5,-.6),.3)
LH.C0=clerp(LH.C0,cf(-1.1,-.4,-.1)*euler(0,-1.57,0)*euler(.1,.5,-.2),.3)
end
hitbox.Parent=modelzorz
hitbox.Size=vt(1,10,10)
hitbox.Transparency=1
hitbox.CFrame=prt1.CFrame
con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,10,20,math.random(30,40),"Knockdown2",prt1,.5,2) end) 
so("http://roblox.com/asset/?id=10209640",prt1,1,.6) 
for i=0,1,0.03 do
so("rbxasset://sounds\\swordslash.wav",prt1,1,1.5) 
swait()
hitbox.CFrame=prt1.CFrame
--hwld.C0=clerp(hwld.C0,euler(3.14,3.14,0)*cf(0,1,0),.3)
hwld.C0=euler(3.14+6.28*i,3.14,0)*cf(0,1+40*i,0)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*euler(0,0,1),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0,0,-1),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(1.57,0,1)*euler(0,1.5,0),.3)
RW.C1=clerp(RW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(0,0,-.6),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(.5,-1,.5)*euler(0,1.57,0)*euler(0,-1,0),.3)
LH.C0=clerp(LH.C0,cf(-.5,-1,-.5)*euler(0,-1.57,0)*euler(0,-1,0),.3)
end
for i=0,1,0.03 do
so("rbxasset://sounds\\swordslash.wav",prt1,1,1.5) 
swait()
hitbox.CFrame=prt1.CFrame
hwld.C0=euler(3.14+6.28+6.28*i,3.14,0)*cf(0,1+40-40*i,0)
end
con1:disconnect()
hitbox.Parent=nil
for _,c in pairs(modelzorz:children()) do
if c.Name=="Boomerang1" or c.Name=="Boomerang2" then
coroutine.resume(coroutine.create(function(Part)
for i=.2,1,0.1 do
swait()
Part.Transparency=i
end
end),c)
end
end
for i=0,1,0.05 do
swait()
hwld.C0=clerp(hwld.C0,euler(3.14,3.14,0)*cf(0,1,0),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*euler(0,0,-1),.2)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0,0,1)*euler(.2,0,0),.2)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(1,0,1)*euler(0,.5,0),.2)
RW.C1=clerp(RW.C1,cf(0,0.5,0)*euler(0,0,0),.2)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(0,0,-1),.2)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.2)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(0,0,0),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(0,0,0),.3)
end
swait(10)
Humanoid.WalkSpeed=16
attack=false
end
 
function EnergyBlades()
attack=true
for i=0,1,0.1 do
swait()
hwld.C0=clerp(hwld.C0,euler(3.14,3.14,0)*cf(0,1,0),.3)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,-1),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,1),.3)
RW.C0=clerp(RW.C0,cf(1.3,1,-.2)*euler(3.14,0,-.3)*euler(0,-.5,0),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(0,0,-.2),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
end
Humanoid.WalkSpeed=0
for i=0,1,0.15 do
swait()
hwld.C0=clerp(hwld.C0,euler(3.14,3.14,0)*cf(0,1,0),.3)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,-1),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,1),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(3.14,0,0)*euler(0,-.5,0),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(0,0,-.5),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
end
MagicCircle(TorsoColor,prt1.CFrame*cf(0,-4.5,0),1,1,1,5,.5,5,.05)
so("http://roblox.com/asset/?id=169445602",prt1,1,.8) 
mana=mana-20
for i=100,300,50 do
local sord=part(3,modelzorz,0,0.5,TorsoColor,"Sord",vt(1,1,5))
local smsh=mesh("SpecialMesh",sord,"FileMesh","rbxasset://fonts/sword.mesh",vt(0,0,0),vt(1,1,1))
sord.Anchored=true
newCF=cf(math.random(-600,600)/100,math.random(500,1000)/100,math.random(-600,600)/100)
sord.CFrame=cf(RootPart.Position)*newCF
sord.CFrame=cf(sord.Position,MMouse.Hit.p)*euler(3.14,0,0)
MagicCircle(TorsoColor,sord.CFrame,5,5,10,1,1,3,.05)
so("http://roblox.com/asset/?id=2101144",sord,.6,.7) 
game:GetService("Debris"):AddItem(sord,10)
local hitt=false
con=sord.Touched:connect(function(hit) 
if hitt==true then return end
hitt=true
--if hit.Parent:findFirstChild("DebounceHit")~=nil then if hit.Parent.DebounceHit.Value==true then return end end
if hit.Name~="Sord" then
sord.Parent=nil
print("hit")
local ref=part(3,workspace,0,1,hit.BrickColor,"Effect",vt())
ref.Anchored=true
ref.CFrame=cf(sord.Position)
so("http://roblox.com/asset/?id=161006093",ref,1,1) 
so("http://roblox.com/asset/?id=10209303",ref,1,1) 
MagicCircle(TorsoColor,cf(ref.Position),1,1,1,2,2,2,.01)
for i=0,10 do
MagicBlock(TorsoColor,cf(ref.Position),1,1,1,1,1,1,.05,3)
end
game:GetService("Debris"):AddItem(ref,1)
MagniDamage(ref,15,10,20,math.random(10,30),"Knockdown2")
end
debounce=Instance.new("BoolValue")
debounce.Name="DebounceHit"
debounce.Parent=hit.Parent
debounce.Value=true
game:GetService("Debris"):AddItem(debounce,.5)
end) 
coroutine.resume(coroutine.create(function(Part,Cframe,numb)
while Part.Parent~=nil do
swait()
numb=numb-1
if numb<=0 then
Part.CFrame=Part.CFrame*cf(0,0,2)
local prt=Part:clone()
prt.Size=vt()
prt.Parent=workspace
prt.CFrame=Part.CFrame
table.insert(Effects,{prt,"Disappear",.1})
else
Part.CFrame=cf(RootPart.Position)*Cframe
Part.CFrame=cf(Part.Position,MMouse.Hit.p)*euler(3.14,0,0)
end
end
end),sord,newCF,i)
end
 
swait(100)
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
Damagefunc(head,mindam,maxdam,knock,Type,Part,.2,1,3,1)
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
elseif Type==3 then
table.insert(Effects,{prt,"Block3",delay,x3,y3,z3,msh,vt(math.random(-10,10)/10,math.random(-10,10)/10,math.random(-10,10)/10)})
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
                elseif Type=="OrbBlast" then
                if mana>=15 then
                mana=mana-15
                so("http://roblox.com/asset/?id=161006093",hit,1,1) 
                so("http://roblox.com/asset/?id=10209303",hit,1,1) 
                MagicCircle(TorsoColor,cf(hit.Position),1,1,1,2,2,2,.01)
                coroutine.resume(coroutine.create(function(Part) 
                for i=0,30 do
                swait()
                MagicBlock(TorsoColor,cf(Part.Position),1,1,1,1,1,1,.05,3)
                end
                end),hit)
                local ref=part(3,workspace,0,1,hit.BrickColor,"Effect",vt())
                ref.Anchored=true
                ref.CFrame=cf(hit.Position)*cf(math.random(-10,10)/100,-.1,math.random(-10,10)/100)
                game:GetService("Debris"):AddItem(ref,1)
                MagniDamage(ref,15,20,30,math.random(20,40),"Knockdown2")
                end
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
if attack==true or equipped==false then return end
hold=true
if combo==0 then
combo=1
attackone()
elseif combo==1 then
combo=2
attackthree()
elseif combo==2 then
combo=0
attacktwo()
end
coroutine.resume(coroutine.create(function() 
for i=1,50 do
if attack==false then
swait()
end
end
if attack==false then
combo=0
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
if key=="z" and mana>=10 then
OverDrive()
end
if key=="x" and mana>=20 then
Boomerang()
end
if key=="c" and mana>=20 then
EnergyBlades()
end
if key=="h" then
mana=100
end
if key=="e" then
idle=500
end
coroutine.resume(coroutine.create(function() 
for i=1,50 do
if attack==false then
swait()
end
end
if attack==false then
combo=0
end
end))
combo=0
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
print("Cyber Stratosphere loaded.")
 
local mananum=0
local handidle=false
local donum=0
while true do
swait()
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
if Anim=="Idle" and attack==false then
idle=idle+1
else
idle=0
end
if RootPart.Velocity.y > 1 and hitfloor==nil then 
Anim="Jump"
if attack==false then
Neck.C0=clerp(Neck.C0,necko*euler(-0.2,0,0),.2)
Neck.C1=clerp(Neck.C1,necko2*euler(0,0,0),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.2)
RW.C0=clerp(RW.C0,cf(1.3,0.5,-.2)*euler(1.2,0,-.5),.2)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.2)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-.5,0,-0.5),.2)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.2)
RH.C0=clerp(RH.C0,cf(1,-1,-.3)*euler(-0.5,1.57,0)*euler(-.2,0,0),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,-.3)*euler(-0.5,-1.57,0)*euler(-.2,0,0),.2)
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
Anim="Fall"
if attack==false then
Neck.C0=clerp(Neck.C0,necko*euler(0.4,0,0),.1)
Neck.C1=clerp(Neck.C1,necko2*euler(0,0,0),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.1)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(1,0,.3),.1)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.1)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(0.3,0,-0.2),.1)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.1)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0.4,1.57,0),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(-0.2,-1.57,0),.2)
end
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
if idle>=300 then
if attack==false then
--hwld.C0=clerp(hwld.C0,euler(0,3.14,1.4)*euler(-.5,0,0)*cf(-1.2,.4,-.8),.1)
hwld.C0=clerp(hwld.C0,euler(-.3,2.8,1.4)*cf(-1.5,0,0.7),.1)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,0),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.1)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(0,0,1.3)*euler(.5,0,0),.1)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.1)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(0,0,-.2),.1)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.1)
end
else
if attack==false then
hwld.C0=clerp(hwld.C0,euler(3.14,3.14,0)*cf(0,1,0),.3)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,-.3),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,.3),.3)
RW.C0=clerp(RW.C0,cf(1.3,0.5,-.2)*euler(1.3-(donum/3),0,-.3-(donum/5)),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(0,0,-.2+(donum/5)),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,RHC0,.3)
LH.C0=clerp(LH.C0,LHC0,.3)
end
end
elseif torvel>2 and torvel<22 and hitfloor~=nil then
Anim="Walk"
if attack==false then
hwld.C0=clerp(hwld.C0,euler(3.14,3.14,0)*cf(0,1,0),.3)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,-.5),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0.2,0,.5),.3)
RW.C0=clerp(RW.C0,cf(1.3,0.5,-.2)*euler(1.2,0,-.5),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-.2,0,-.2),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(0,-.5,0),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(0,-.5,0),.3)
end
elseif torvel>=22 and hitfloor~=nil then
Anim="Run"
if attack==false then
hwld.C0=clerp(hwld.C0,euler(3.14,3.14,0)*cf(0,1,0),.3)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,-.5),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0.2,0,.5),.3)
RW.C0=clerp(RW.C0,cf(1.3,0.5,-.2)*euler(1.2,0,-.5),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-.2,0,-.2),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(0,-.5,0),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(0,-.5,0),.3)
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
Thing[1].CFrame=Thing[1].CFrame*cf(Thing[8])*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
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
if mana>=100 then
mana=100
else
if mananum<=15 then
mananum=mananum+1
else
mananum=0
mana=mana+1
end
end
fenbarmana2:TweenSize(UDim2.new(4*mana/100,0,0.2,0),nil,1,0.4,true)
fenbarmana4.Text="Energy("..mana..")"
end
 
--[[ 
Copyrighted (C) Fenrier 2014
]]