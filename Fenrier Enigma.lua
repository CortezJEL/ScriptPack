--[[
Enigma Class Made by Fenrier.
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
attack = false 
attackdebounce = false 
MMouse=nil
combo=0
mana=0
heat=0
heatcooldown=false
--player 
player = nil 
--save shoulders 
RSH, LSH = nil, nil 
--welds 
RW, LW = Instance.new("Weld"), Instance.new("Weld") 
RW.Name="Right Shoulder" LW.Name="Left Shoulder"
LH=Torso["Left Hip"]
RH=Torso["Right Hip"]
cam=workspace.CurrentCamera
Targetting=false
RocketTarget=nil
 
function swait(num)
if num==0 or num==nil then
game:service'RunService'.RenderStepped:wait()
else
for i=0,num do
game:service'RunService'.RenderStepped:wait()
end
end
end
 
if Character:findFirstChild("Lock-on Hammer",true) ~= nil then 
Character:findFirstChild("Lock-on Hammer",true).Parent = nil 
end 
if Character:findFirstChild("Locking Gauntlet",true) ~= nil then 
Character:findFirstChild("Locking Gauntlet",true).Parent = nil 
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
 
local fengui = it("GuiMain") 
fengui.Parent = Player.PlayerGui 
fengui.Name = "WeaponGUI" 
local fenframemana = it("Frame") 
fenframemana.Parent = fengui
fenframemana.BackgroundColor3 = Color3.new(255,255,255) 
fenframemana.BackgroundTransparency = 1 
fenframemana.BorderColor3 = Color3.new(17,17,17) 
fenframemana.Size = UDim2.new(0.0500000007, 0, 0.100000001, 0)
fenframemana.Position=UDim2.new(0.4,0,0.1,0)
local fenbarmana1 = it("TextLabel") 
fenbarmana1.Parent = fenframemana 
fenbarmana1.Text = " " 
fenbarmana1.BackgroundTransparency = 0 
fenbarmana1.BackgroundColor3 = Color3.new(0,0,0) 
fenbarmana1.SizeConstraint = "RelativeXY" 
fenbarmana1.TextXAlignment = "Center" 
fenbarmana1.TextYAlignment = "Center" 
fenbarmana1.Position = UDim2.new(0,0,0,0)
fenbarmana1.Size = UDim2.new(4,0,0.2,0)
local fenbarmana2 = it("TextLabel") 
fenbarmana2.Parent = fenframemana 
fenbarmana2.Text = " " 
fenbarmana2.BackgroundTransparency = 0 
fenbarmana2.BackgroundColor3 = Color3.new(1,0.5,0.5) 
fenbarmana2.SizeConstraint = "RelativeXY" 
fenbarmana2.TextXAlignment = "Center" 
fenbarmana2.TextYAlignment = "Center" 
fenbarmana2.Position = UDim2.new(0,0,0,0)
fenbarmana2.Size = UDim2.new(mana/100,0,0.2,0)
local fenbarmana4 = it("TextLabel") 
fenbarmana4.Parent = fenframemana 
fenbarmana4.Text = "Mana("..mana..")"
fenbarmana4.BackgroundTransparency = 1 
fenbarmana4.BackgroundColor3 = Color3.new(0,0,0) 
fenbarmana4.SizeConstraint = "RelativeXY" 
fenbarmana4.TextXAlignment = "Center" 
fenbarmana4.TextYAlignment = "Center" 
fenbarmana4.Position = UDim2.new(0,0,-0.3,0)
fenbarmana4.Size = UDim2.new(4,0,0.2,0)
fenbarmana4.FontSize = "Size9"
fenbarmana4.TextStrokeTransparency = 0
fenbarmana4.TextColor = BrickColor.new("White")
local fenframeheat = it("Frame") 
fenframeheat.Parent = fengui
fenframeheat.BackgroundColor3 = Color3.new(255,255,255) 
fenframeheat.BackgroundTransparency = 1 
fenframeheat.BorderColor3 = Color3.new(17,17,17) 
fenframeheat.Size = UDim2.new(0.0500000007, 0, 0.100000001, 0)
fenframeheat.Position=UDim2.new(0.4,0,0.2,0)
local fenbarheat1 = it("TextLabel") 
fenbarheat1.Parent = fenframeheat 
fenbarheat1.Text = " " 
fenbarheat1.BackgroundTransparency = 0 
fenbarheat1.BackgroundColor3 = Color3.new(0,0,0) 
fenbarheat1.SizeConstraint = "RelativeXY" 
fenbarheat1.TextXAlignment = "Center" 
fenbarheat1.TextYAlignment = "Center" 
fenbarheat1.Position = UDim2.new(0,0,0,0)
fenbarheat1.Size = UDim2.new(4,0,0.2,0)
local fenbarheat2 = it("TextLabel") 
fenbarheat2.Parent = fenframeheat 
fenbarheat2.Text = " " 
fenbarheat2.BackgroundTransparency = 0 
fenbarheat2.BackgroundColor3 = Color3.new(1,0,0) 
fenbarheat2.SizeConstraint = "RelativeXY" 
fenbarheat2.TextXAlignment = "Center" 
fenbarheat2.TextYAlignment = "Center" 
fenbarheat2.Position = UDim2.new(0,0,0,0)
fenbarheat2.Size = UDim2.new(heat/100,0,0.2,0)
local fenbarheat4 = it("TextLabel") 
fenbarheat4.Parent = fenframeheat
fenbarheat4.Text = "Heat("..heat..")"
fenbarheat4.BackgroundTransparency = 1 
fenbarheat4.BackgroundColor3 = Color3.new(0,0,0) 
fenbarheat4.SizeConstraint = "RelativeXY" 
fenbarheat4.TextXAlignment = "Center" 
fenbarheat4.TextYAlignment = "Center" 
fenbarheat4.Position = UDim2.new(0,0,-0.3,0)
fenbarheat4.Size = UDim2.new(4,0,0.2,0)
fenbarheat4.FontSize = "Size9"
fenbarheat4.TextStrokeTransparency = 0
fenbarheat4.TextColor = BrickColor.new("White")
heatnum=0
mananum=0
coroutine.resume(coroutine.create(function()
overheatnum=0
heatcol=false
while true do
swait()
fenbarheat2:TweenSize(UDim2.new(heat/100,0,0.2,0),nil,1,0.4,true)
if heat>=300 and heatcooldown==false then
overheatnum=overheatnum+1
if overheatnum==8 then
overheatnum=0
if heatcol==false then
heatcol=true
fenbarheat4.TextColor = BrickColor.new("Bright red")
else
heatcol=false
fenbarheat4.TextColor = BrickColor.new("White")
end
end
fenbarheat4.Text = "WARNING! ("..heat..")"
elseif heatcooldown==false then
fenbarheat4.TextColor = BrickColor.new("White")
fenbarheat4.Text = "Heat ("..heat..")"
end
fenbarmana2:TweenSize(UDim2.new(mana/100,0,0.2,0),nil,1,0.4,true)
fenbarmana4.Text = "Mana ("..mana..")"
if heat>=400 then
fenbarheat4.TextColor = BrickColor.new("Bright blue")
fenbarheat4.Text = "Cooling down"
heatcooldown=true
coroutine.resume(coroutine.create(function()
while heat>0 do
wait()
end
heatcooldown=false
end))
heat=400
end
if heat<=0 then
heat=0
end
if mana>=400 then
mana=400
end
if mana<=0 then
mana=0
end
if heatnum>=10 then
if heat>0 then
heat=heat-1
--heat=0
end
heatnum=0
end
if mananum>=40 then
if mana<400 then
mana=mana+1
--mana=400
end
mananum=0
end
heatnum=heatnum+1
mananum=mananum+1
--heatnum=heatnum+20
--mananum=mananum+20
end
end))
 
local modelzorz=Instance.new("Model") 
modelzorz.Parent=Character 
modelzorz.Name="Lock-on Hammer" 
 
local handle=part(3,modelzorz,0,1,BrickColor.new("Black"),"Handle",vt(0.5,0.5,0.5))
local prt1=part(1,modelzorz,0,0,Torso.BrickColor,"Part1",vt(1,1,1))
local prt2=part(1,modelzorz,0,0,BrickColor.new("Dark orange"),"Part2",vt(1,1,1))
local prt3=part(1,modelzorz,0,0,BrickColor.new("Bright red"),"Part3",vt(1,1,1))
local prt4=part(1,modelzorz,0,0,BrickColor.new("Dark orange"),"Part4",vt(1,1,1))
local prt5=part(1,modelzorz,0,0,BrickColor.new("Dark orange"),"Part5",vt(1,1,1))
local prt6=part(1,modelzorz,0,0,BrickColor.new("Dark orange"),"Part6",vt(1,1,1))
local prt7=part(1,modelzorz,0,0,BrickColor.new("Dark orange"),"Part7",vt(1,1,1))
local prt8=part(1,modelzorz,0,0,BrickColor.new("Dark orange"),"Part8",vt(1,1,1))
local prt9=part(1,modelzorz,0,0,BrickColor.new("Black"),"Part9",vt(1,1,1))
local prt10=part(1,modelzorz,0,0,BrickColor.new("Bright orange"),"Part10",vt(1,1,1))
local prt11=part(1,modelzorz,0,0,BrickColor.new("Bright red"),"Part11",vt(1,1,1))
local prt12=part(1,modelzorz,0,0,BrickColor.new("Medium stone grey"),"Part12",vt(1,1,1))
local prt13=part(1,modelzorz,0,0,BrickColor.new("Bright red"),"Part13",vt(1,1,1))
local prt14=part(1,modelzorz,0,0,BrickColor.new("Bright red"),"Part14",vt(1,1,1))
local prt15=part(1,modelzorz,0,0,BrickColor.new("Black"),"Part15",vt(1,1,1))
local prt16=part(1,modelzorz,0,0,BrickColor.new("Black"),"Part16",vt(1,1,1))
local prt17=part(1,modelzorz,0,0,BrickColor.new("Black"),"Part17",vt(1,1,1))
 
local msh1=mesh("CylinderMesh",prt1,"","",vt(0,0,0),vt(0.4,3,0.4))
local msh2=mesh("BlockMesh",prt2,"","",vt(0,0,0),vt(0.3,4,0.3))
local msh3=mesh("BlockMesh",prt3,"","",vt(0,0,0),vt(0.31,0.7,0.6))
local msh4=mesh("BlockMesh",prt4,"","",vt(0,0,0),vt(0.3,0.6,0.4))
local msh5=mesh("BlockMesh",prt5,"","",vt(0,0,0),vt(0.31,0.6,0.4))
local msh6=mesh("BlockMesh",prt6,"","",vt(0,0,0),vt(0.3,0.6,0.4))
local msh7=mesh("BlockMesh",prt7,"","",vt(0,0,0),vt(0.31,0.6,0.4))
local msh8=mesh("SpecialMesh",prt8,"Wedge","",vt(0,0,0),vt(0.3,0.5,0.4))
local msh9=mesh("BlockMesh",prt9,"","",vt(0,0,0),vt(0.8,0.5,0.5))
local msh10=mesh("CylinderMesh",prt10,"","",vt(0,0,0),vt(1,2.3,1))
local msh11=mesh("CylinderMesh",prt11,"","",vt(0,0,0),vt(1.2,2.25,1.2))
local msh12=mesh("CylinderMesh",prt12,"","",vt(0,0,0),vt(1.8,2.2,1.8))
local msh13=mesh("BlockMesh",prt13,"","",vt(0,0,0),vt(0.1,2.225,1.7))
local msh14=mesh("BlockMesh",prt14,"","",vt(0,0,0),vt(1.7,2.225,0.1))
local msh15=mesh("BlockMesh",prt15,"","",vt(0,0,0),vt(1.9,2.19,0.3))
local msh16=mesh("CylinderMesh",prt16,"","",vt(0,0,0),vt(1.81,0.5,1.81))
local msh17=mesh("BlockMesh",prt17,"","",vt(0,0,0),vt(1.9,2.19,0.3))
 
local handlewld=weld(handle,handle,Torso,euler(0,1.57,-1.7)*cf(0,0,-0.6))
local wld1=weld(prt1,prt1,handle,euler(0,0,0)*cf(0,0,0))
local wld2=weld(prt2,prt2,prt1,euler(0,0,0)*cf(0,0,0))
local wld3=weld(prt3,prt3,prt2,euler(0,0,0)*cf(0,2.5,0))
local wld4=weld(prt4,prt4,prt3,euler(-0.5,0,0)*cf(0,0.5,0.3))
local wld5=weld(prt5,prt5,prt4,euler(0.5,0,0)*cf(0,0.5,-0.125))
local wld6=weld(prt6,prt6,prt3,euler(0.5,0,0)*cf(0,0.5,-0.3))
local wld7=weld(prt7,prt7,prt6,euler(-0.5,0,0)*cf(0,0.5,0.125))
local wld8=weld(prt8,prt8,prt7,euler(3.14,0,0)*cf(0,0.65,0))
local wld9=weld(prt9,prt9,prt2,euler(0,0,0)*cf(0,-2.5,0))
local wld10=weld(prt10,prt10,prt9,euler(1.57,0,0)*cf(0,-0.6,0))
local wld11=weld(prt11,prt11,prt10,euler(0,0,0)*cf(0,0,0))
local wld12=weld(prt12,prt12,prt10,euler(0,0,0)*cf(0,0,0))
local wld13=weld(prt13,prt13,prt10,euler(0,0,0)*cf(0,0,0))
local wld14=weld(prt14,prt14,prt10,euler(0,0,0)*cf(0,0,0))
local wld15=weld(prt15,prt15,prt10,euler(0,0.785,0)*cf(0,0,0))
local wld16=weld(prt16,prt16,prt10,euler(0,0,0)*cf(0,0,0))
local wld17=weld(prt17,prt17,prt10,euler(0,-0.785,0)*cf(0,0,0))
 
local modelzorz2=Instance.new("Model") 
modelzorz2.Parent=Character 
modelzorz2.Name="Locking Gauntlet" 
 
local lprt1=part(1,modelzorz2,0,0,Torso.BrickColor,"Part1",vt(1,1,1))
local lprt2=part(1,modelzorz2,0,0,BrickColor.new("Medium stone grey"),"Part2",vt(1,1,1))
local lprt3=part(1,modelzorz2,0,0,BrickColor.new("Bright red"),"Part3",vt(1,1,1))
local lprt4=part(1,modelzorz2,0,0,BrickColor.new("Bright orange"),"Part4",vt(1,1,1))
local lprt5=part(1,modelzorz2,0,0,BrickColor.new("Bright red"),"Part5",vt(1,1,1))
local lprt6=part(1,modelzorz2,0,0,BrickColor.new("Bright red"),"Part6",vt(1,1,1))
local lprt7=part(1,modelzorz2,0,0,BrickColor.new("Bright red"),"Part7",vt(1,1,1))
local lprt8=part(1,modelzorz2,0,0,BrickColor.new("Bright red"),"Part8",vt(1,1,1))
 
local lmsh1=mesh("BlockMesh",lprt1,"","",vt(0,0,0),vt(1.01,0.4,1.01))
local lmsh2=mesh("BlockMesh",lprt2,"","",vt(0,0,0),vt(0.2,0.8,0.75))
local lmsh3=mesh("CylinderMesh",lprt3,"","",vt(0,0,0),vt(0.4,0.2,0.4))
local lmsh4=mesh("CylinderMesh",lprt4,"","",vt(0,0,0),vt(0.3,0.21,0.3))
local lmsh5=mesh("BlockMesh",lprt5,"","",vt(0,0,0),vt(0.05,0.19,0.7))
local lmsh6=mesh("BlockMesh",lprt6,"","",vt(0,0,0),vt(0.7,0.19,0.05))
local lmsh7=mesh("SpecialMesh",lprt7,"Wedge","",vt(0,0,0),vt(0.1,0.2,0.375))
local lmsh8=mesh("SpecialMesh",lprt8,"Wedge","",vt(0,0,0),vt(0.1,0.2,0.375))
 
local lwld1=weld(lprt1,lprt1,LeftArm,euler(0,0,0)*cf(0,0.5,0))
local lwld2=weld(lprt2,lprt2,lprt1,euler(0,0,0)*cf(0.5,0,0))
local lwld3=weld(lprt3,lprt3,lprt2,euler(0,0,1.57)*cf(0,0,0))
local lwld4=weld(lprt4,lprt4,lprt3,euler(0,0,0)*cf(0,0,0))
local lwld5=weld(lprt5,lprt5,lprt3,euler(0,0,0)*cf(0,0,0))
local lwld6=weld(lprt6,lprt6,lprt3,euler(0,0,0)*cf(0,0,0))
local lwld7=weld(lprt7,lprt7,lprt2,euler(3.14,0,0)*cf(0.05,0.6,-0.185))
local lwld8=weld(lprt8,lprt8,lprt2,euler(3.14,3.14,0)*cf(0.05,0.6,0.185))
 
local hitbox=part(1,nil,0,1,BrickColor.new("Black"),"Hitbox",vt(1,1,1))
hitbox.Anchored=false
 
if (script.Parent.className ~= "HopperBin") then 
Tool = Instance.new("HopperBin") 
Tool.Parent = Backpack 
Tool.Name = "Lock-on Hammer" 
script.Parent = Tool 
end 
Bin = script.Parent 
 
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
handlewld.Part1=Torso
handlewld.C0=euler(0,1.57,-1.7)*cf(0,0,-0.6)
handlewld.C1=euler(0,0,0)*cf(0,0,0)
wld1.C0=cf(0,0,0)
end 
 
function equipanim() 
equipped=true
Torso.Neck.C1=necko2
Torso.Neck.C0=necko*euler(0,0,0.785)
RootJoint.C0=RootCF*euler(0,0,-0.785)
RW.C0=cf(1.5,0.5,0)*euler(1,-1.4,0)
RW.C1=cf(0,0.5,0)*euler(-0.5,0,0)
LW.C0=cf(-1.2,0.5-0.2,-0.5)*euler(0.6,-1.57,0)
LW.C1=cf(0,0.5,0)*euler(-0.6,0,0)
RH.C0=RHC0
RH.C1=RHC1
LH.C0=LHC0
LH.C1=LHC1
handlewld.Part1=RightArm
handlewld.C0=euler(1.9,0,0.2)*cf(0,1,0)
handlewld.C1=euler(0,0,0)
wld1.C0=euler(0,0,0)*cf(0,1.5,0)
--[[Torso.Neck.C1=necko2
Torso.Neck.C0=necko*euler(0.2,0,-0.2)
RootJoint.C0=RootCF*euler(0,0,0)
RW.C0=cf(1.5,0.5,0)*euler(1.3,-3.14,-1)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5,0.7,0)*euler(3,0,0.5)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
handlewld.Part1=RightArm
handlewld.C0=euler(1.5,0.1,1.57)*cf(0,1,0)
handlewld.C1=euler(0,0,0)
wld1.C0=euler(0,0,0)*cf(0,0.5,0)]]
end 
 
function attackone()
attack=true
for i=0,1,0.1 do
swait()
Torso.Neck.C0=necko*euler(0,0,0.785+0.415*i)
RootJoint.C0=RootCF*euler(0,0,-0.785-0.415*i)
RW.C0=cf(1.5,0.5,0)*euler(1+0.2*i,-1.4-0.1*i,0)
RW.C1=cf(0,0.5,0)*euler(-0.5-0.2*i,0,0)
LW.C0=cf(-1.2,0.3,-0.5)*euler(0.6,-1.57+0.27*i,0)
LW.C1=cf(0,0.5,0)*euler(-0.6-0.1*i,0,0)
handlewld.C0=euler(1.9+0.2*i,0,0.2+0.2*i)*cf(0,1,0)
end
n=2
for i=0,1,0.1 do
swait()
Torso.Neck.C0=necko*euler(0,0,1.2+0.1*i*n)
RootJoint.C0=RootCF*euler(0,0,-1.2-0.1*i*n)
RW.C0=cf(1.5,0.5,0)*euler(1.2,-1.5,0)
RW.C1=cf(0,0.5,0)*euler(-0.7-0.2*i*n,0,0)
LW.C0=cf(-1.2,0.3,-0.5)*euler(0.6,-1.3-0.2*i*n,0)
LW.C1=cf(0,0.5,0)*euler(-0.7-0.2*i*n,0,0)
handlewld.C0=euler(2.1+0.2*i*n,0,0.4-0.2*i*n)*cf(0,1,0)
n=n-0.1
end
so("http://roblox.com/asset/?id=10209640",prt10,1,0.4) 
con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,10,20,math.random(20,40),"Normal",RootPart,.2,1) end) 
hitbox.Parent=modelzorz
hitbox.Size=vt(2,4,2)
hitbox.Transparency=1
hitbox.CFrame=prt10.CFrame
for i=0,1,0.2 do
swait()
if i==0.4 then
ShootRocket(10,20,100)
end
Torso.Neck.C0=necko*euler(0,0,1.3-2.5*i)
RootJoint.C0=RootCF*euler(0,0,-1.3+2.5*i)
RW.C0=cf(1.5-0.5*i,0.5,-0.5*i)*euler(1.2,-1.5,0)
RW.C1=cf(0,0.5,0)*euler(-0.9+1*i,0,0)
LW.C0=cf(-1.2,0.3,-0.5)*euler(0.6+0.5*i,-1.5,0)
LW.C1=cf(0,0.5,0)*euler(-0.9,0,0)
handlewld.C0=euler(2.3,0,0.2+0.1*i)*cf(0,1,0)
wld1.C0=euler(0,0,0)*cf(0,1.5-1.5*i,0)
hitbox.CFrame=prt10.CFrame
end
n=2
for i=0,1,0.1 do
swait()
Torso.Neck.C0=necko*euler(0,0,-1.2-0.2*i*n)
RootJoint.C0=RootCF*euler(0,0,1.2+0.2*i*n)
RW.C0=cf(1,0.5,-0.5)*euler(1.2,-1.5,0)
RW.C1=cf(0,0.5,0)*euler(0.1+0.2*i*n,0,0)
LW.C0=cf(-1.2,0.3,-0.5)*euler(1.1+0.2*i*n,-1.5,0)
LW.C1=cf(0,0.5,0)*euler(-0.9,0,0)
handlewld.C0=euler(2.3-0.2*i*n,0,0.3)*cf(0,1,0)
wld1.C0=euler(0,0,0)*cf(0,0,0)
hitbox.CFrame=prt10.CFrame
n=n-0.1
end
con1:disconnect()
hitbox.Parent=nil
attack=false
end
 
function attacktwo()
attack=true
for i=0,1,0.1 do
swait()
Torso.Neck.C0=necko*euler(0,0,-1.4-0.1*i)
RootJoint.C0=RootCF*euler(0,0,1.4+0.1*i)
RW.C0=cf(1,0.5,-0.5)*euler(1.2+0.2*i,-1.5+3*i,0)
RW.C1=cf(0,0.5,0)*euler(0.3-0.6*i,0,0)
LW.C0=cf(-1.2,0.3,-0.5)*euler(1.3+0.2*i,-1.5,0)
LW.C1=cf(0,0.5,0)*euler(-0.9+0.3*i,0,0)
handlewld.C0=euler(2.1-0.5*i,0,0.3-0.5*i)*cf(0,1,0)
wld1.C0=euler(0,0,0)*cf(0,0,0)
end
n=2
for i=0,1,0.1 do
swait()
Torso.Neck.C0=necko*euler(0,0,-1.5)
RootJoint.C0=RootCF*euler(0,0,1.5)
RW.C0=cf(1,0.5,-0.5)*euler(1.4-0.2*i*n,1.5+0.1*i*n,0)
RW.C1=cf(0,0.5,0)*euler(-0.3,0,0)
LW.C0=cf(-1.2,0.3,-0.5)*euler(1.5-0.1*i*n,-1.5,0)
LW.C1=cf(0,0.5,0)*euler(-0.6-0.1*i*n,0,0)
handlewld.C0=euler(1.6,0,-0.2-0.1*i*n)*cf(0,1,0)
wld1.C0=euler(0,0,0)*cf(0,0,0)
n=n-0.1
end
so("http://roblox.com/asset/?id=10209640",prt10,1,0.5) 
con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,10,20,math.random(20,40),"Normal",RootPart,.2,1) end) 
hitbox.Parent=modelzorz
hitbox.Size=vt(2,4,2)
hitbox.Transparency=1
hitbox.CFrame=prt10.CFrame
for i=0,1,0.2 do
swait()
if i==0.4 then
ShootRocket(10,20,100)
end
Torso.Neck.C0=necko*euler(0,0,-1.5+2.5*i)
RootJoint.C0=RootCF*euler(0,0,1.5-2.5*i)
RW.C0=cf(1+0.3*i,0.5,-0.5+0.3*i)*euler(1.2+0.3*i,1.6,0)
RW.C1=cf(0,0.5,0)*euler(-0.3+0.2*i,0,0)
LW.C0=cf(-1.2+0.8*i,0.3,-0.5-0.1*i)*euler(1.4+0.2*i,-1.5,0)
LW.C1=cf(0,0.5,0)*euler(-0.7-0.2*i,0,0)
handlewld.C0=euler(1.6+0.5*i,0,-0.3+0.3*i)*cf(0,1,0)
wld1.C0=euler(0,0,0)*cf(0,0,0)
hitbox.CFrame=prt10.CFrame
end
n=2
for i=0,1,0.1 do
swait()
Torso.Neck.C0=necko*euler(0,0,1+0.2*i*n)
RootJoint.C0=RootCF*euler(0,0,-1-0.2*i*n)
RW.C0=cf(1.3+0.2*i*n,0.5,-0.2+0.2*i*n)*euler(1.5,1.6,0)
RW.C1=cf(0,0.5,0)*euler(-0.1+0.2*i*n,0,0)
LW.C0=cf(-0.4+0.2*i*n,0.3,-0.6)*euler(1.6,-1.5,0)
LW.C1=cf(0,0.5,0)*euler(-0.9-0.1*i*n,0,0)
handlewld.C0=euler(2.1+0.2*i*n,0,0)*cf(0,1,0)
wld1.C0=euler(0,0,0)*cf(0,0,0)
hitbox.CFrame=prt10.CFrame
n=n-0.1
end
con1:disconnect()
hitbox.Parent=nil
attack=false
end
 
function attackthree()
attack=true
for i=0,1,0.1 do
swait()
Torso.Neck.C0=necko*euler(-0.4*i,0,1.2-1.2*i)
RootJoint.C0=RootCF*euler(0,0,-1.2+1.2*i)
RW.C0=cf(1.5-0.5*i,0.5+0.8*i,0)*euler(1.5+1.2*i,1.6-1.6*i,-0.785*i)
RW.C1=cf(0,0.5,0)*euler(0.1-0.1*i,0,0)
LW.C0=cf(-0.2-0.8*i,0.3+1*i,-0.6+0.6*i)*euler(1.6+1.1*i,-1.5+1.5*i,0.785*i)
LW.C1=cf(0,0.5,0)*euler(-1+1*i,0,0)
handlewld.C0=euler(2.3-0.8*i,0,-0.785*i)*cf(0,1,0)
wld1.C0=euler(0,0,0)*cf(0,0,0)
end
n=2
for i=0,1,0.1 do
swait()
Torso.Neck.C0=necko*euler(-0.4-0.2*i*n,0,0)
RootJoint.C0=RootCF*euler(0,0,0)
RW.C0=cf(1,1.3+0.2*i*n,0)*euler(2.7+0.2*i*n,0,-0.785)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1,1.3+0.2*i*n,0)*euler(2.7+0.2*i*n,0,0.785)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
handlewld.C0=euler(1.5,0,-0.785)*cf(0,1,0)
wld1.C0=euler(0,0,0)*cf(0,0,0)
n=n-0.1
end
so("http://roblox.com/asset/?id=10209640",prt10,1,0.35) 
con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,15,25,math.random(30,60),"Normal",RootPart,.2,1) end) 
hitbox.Parent=modelzorz
hitbox.Size=vt(2,4,2)
hitbox.Transparency=1
hitbox.CFrame=prt10.CFrame
for i=0,1,0.2 do
swait()
if i==0.4 then
ShootRocket(10,20,400)
end
Torso.Neck.C0=necko*euler(-0.6+0.7*i,0,0)
RootJoint.C0=RootCF*euler(0,0,0)
RW.C0=cf(1,1.5-1*i,0)*euler(2.9-2.2*i,0,-0.785+0.085*i)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1,1.5-1*i,0)*euler(2.9-2.2*i,0,0.785+0.085*i)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
handlewld.C0=euler(1.5+0.5*i,0,-0.785+0.085*i)*cf(0,1,0)
handlewld.C1=cf(0,0,0)
wld1.C0=euler(0,0,0)*cf(0,-0.5*i,0)
hitbox.CFrame=prt10.CFrame
end
n=2
for i=0,1,0.1 do
swait()
Torso.Neck.C0=necko*euler(0.1+0.1*i*n,0,0)
RootJoint.C0=RootCF*euler(0,0,0)
RW.C0=cf(1,0.5-0.1*i*n,0)*euler(0.7-0.2*i*n,0,-0.7)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1,0.5-0.1*i*n,0)*euler(0.7-0.2*i*n,0,0.7)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
handlewld.C0=euler(2,0,-0.7)*cf(0,1,0)
handlewld.C1=cf(0,0,0)
wld1.C0=euler(0,0,0)*cf(0,-0.5,0)
hitbox.CFrame=prt10.CFrame
n=n-0.1
end
swait(10)
for i=0,1,0.1 do
swait()
Torso.Neck.C0=necko*euler(0.2-0.2*i,0,0.785*i)
RootJoint.C0=RootCF*euler(0,0,-0.785*i)
RW.C0=cf(1+0.5*i,0.4+0.1*i,0)*euler(0.5+0.5*i,-1.4*i,-0.7+0.7*i)
RW.C1=cf(0,0.5,0)*euler(-0.5*i,0,0)
LW.C0=cf(-1-0.2*i,0.4-0.1*i,-0.5*i)*euler(0.5+0.1*i,-1.57*i,0.7-0.7*i)
LW.C1=cf(0,0.5,0)*euler(-0.6*i,0,0)
handlewld.C0=euler(2-0.1*i,0,-0.7+0.9*i)*cf(0,1,0)
wld1.C0=euler(0,0,0)*cf(0,-0.5+2*i,0)
n=n-0.1
end
con1:disconnect()
hitbox.Parent=nil
attack=false
end
 
function Cooldown()
attack=true
Humanoid.WalkSpeed=5
for i=0,1,0.1 do
swait()
Torso.Neck.C0=necko*euler(0,0,0.785-0.785*i)
RootJoint.C0=RootCF*euler(0,0,-0.785+0.785*i)
RW.C0=cf(1.5,0.5,0)*euler(1,-1.4+2.97*i,0)
RW.C1=cf(0,0.5,0)*euler(-0.5+0.5*i,0,0)
LW.C0=cf(-1.2-0.3*i,0.3+0.2*i,-0.5+0.5*i)*euler(0.6+0.4*i,-1.57,0)
LW.C1=cf(0,0.5,0)*euler(-0.6+0.6*i,0,0)
handlewld.C0=euler(1.9-0.33*i,0,0.2-0.2*i)*cf(0,1,0)
handlewld.C1=euler(0,0,0)
wld1.C0=euler(0,0,0)*cf(0,1.5-3*i,0)
end
so("http://www.roblox.com/asset/?id=2101137",prt10,1,0.8) 
local cdprt=part(3,modelzorz,0,0.5,BrickColor.new("Bright stone grey"),"Effect",vt(0.5,0.5,0.5))
cdmsh=mesh("SpecialMesh",cdprt,"Sphere","",vt(0,0,0),vt(1,1,1))
cdwld=weld(cdprt,cdprt,prt10,euler(0,0,0)*cf(0,0,0))
coroutine.resume(coroutine.create(function(Part,Mesh)
for i=0,1,0.1 do
swait()
Mesh.Scale=vt(1+9*i,1+9*i,1+9*i)
end
while holdg==true do
swait()
heatnum=heatnum+30
MagicBlock(BrickColor.new("Bright stone grey"),euler(math.random(-50,50),math.random(-50,50),math.random(-50,50)),1,1,1,0,math.random(1,9),0,0.1,4,Part)
end
for i=0,1,0.1 do
swait()
Mesh.Scale=vt(10-10*i,10-10*i,10-10*i)
end
Part.Parent=nil
end),cdprt,cdmsh)
while holdg==true do
swait()
end
for i=0,1,0.1 do
swait()
Torso.Neck.C0=necko*euler(0,0,0.785*i)
RootJoint.C0=RootCF*euler(0,0,-0.785*i)
RW.C0=cf(1.5,0.5,0)*euler(1,1.57-2.97*i,0)
RW.C1=cf(0,0.5,0)*euler(-0.5*i,0,0)
LW.C0=cf(-1.5+0.3*i,0.5-0.2*i,-0.5*i)*euler(1-0.4*i,-1.57,0)
LW.C1=cf(0,0.5,0)*euler(-0.6*i,0,0)
handlewld.C0=euler(1.57+0.33*i,0,0.2*i)*cf(0,1,0)
handlewld.C1=euler(0,0,0)
wld1.C0=euler(0,0,0)*cf(0,-1.5+3*i,0)
end
Humanoid.WalkSpeed=16
attack=false
end
 
function Regain()
attack=true
Humanoid.WalkSpeed=5
for i=0,1,0.1 do
swait()
Torso.Neck.C0=necko*euler(0,0,0.785-0.785*i)
RootJoint.C0=RootCF*euler(0,0,-0.785+0.785*i)
RW.C0=cf(1.5,0.5,0)*euler(1,-1.4+2.97*i,0)
RW.C1=cf(0,0.5,0)*euler(-0.5+0.5*i,0,0)
LW.C0=cf(-1.2-0.3*i,0.3+0.2*i,-0.5+0.5*i)*euler(0.6+0.4*i,-1.57,0)
LW.C1=cf(0,0.5,0)*euler(-0.6+0.6*i,0,0)
handlewld.C0=euler(1.9-0.33*i,0,0.2-0.2*i)*cf(0,1,0)
handlewld.C1=euler(0,0,0)
wld1.C0=euler(0,0,0)*cf(0,1.5-3*i,0)
end
so("http://www.roblox.com/asset/?id=2101144",Torso,1,1) 
local cdprt=part(3,modelzorz,0,0.5,BrickColor.new("White"),"Effect",vt(0.5,0.5,0.5))
cdmsh=mesh("SpecialMesh",cdprt,"Sphere","",vt(0,0,0),vt(1,1,1))
cdwld=weld(cdprt,cdprt,Torso,euler(0,0,0)*cf(0,0,0))
coroutine.resume(coroutine.create(function(Part,Mesh)
for i=0,1,0.1 do
swait()
Mesh.Scale=vt(1+14*i,1+14*i,1+14*i)
end
while holdg==true do
swait()
mananum=mananum+20
MagicBlock(BrickColor.new("White"),euler(math.random(-50,50),math.random(-50,50),math.random(-50,50)),1,1,1,0,math.random(1,9),0,0.1,4,Torso)
end
for i=0,1,0.1 do
swait()
Mesh.Scale=vt(10-10*i,10-10*i,10-10*i)
end
Part.Parent=nil
end),cdprt,cdmsh)
while holdg==true do
swait()
end
for i=0,1,0.1 do
swait()
Torso.Neck.C0=necko*euler(0,0,0.785*i)
RootJoint.C0=RootCF*euler(0,0,-0.785*i)
RW.C0=cf(1.5,0.5,0)*euler(1,1.57-2.97*i,0)
RW.C1=cf(0,0.5,0)*euler(-0.5*i,0,0)
LW.C0=cf(-1.5+0.3*i,0.5-0.2*i,-0.5*i)*euler(1-0.4*i,-1.57,0)
LW.C1=cf(0,0.5,0)*euler(-0.6*i,0,0)
handlewld.C0=euler(1.57+0.33*i,0,0.2*i)*cf(0,1,0)
handlewld.C1=euler(0,0,0)
wld1.C0=euler(0,0,0)*cf(0,-1.5+3*i,0)
end
Humanoid.WalkSpeed=16
attack=false
end
 
function ChargeHammer()
attack=true
for i=0,1,0.1 do
swait()
Torso.Neck.C1=necko2
Torso.Neck.C0=necko*euler(0,-0.2*i,0.785+0.215*i)
RootJoint.C0=RootCF*cf(0,0,-0.5*i)*euler(0.4*i,0,-0.785-0.215*i)
RW.C0=cf(1.5,0.5,0)*euler(1+0.2*i,-1.4-0.1*i,0)
RW.C1=cf(0,0.5,0)*euler(-0.5-0.8*i,0,0)
LW.C0=cf(-1.2+0.5*i,0.5-0.2,-0.5-0.2*i)*euler(0.6+0.1*i,-1.57,0)
LW.C1=cf(0,0.5,0)*euler(-0.6-0.2*i,0,0)
RH.C0=RHC0*cf(0,0,0)*euler(0,0,0.1*i)
LH.C0=LHC0*cf(0,0.5*i,0)*euler(-0.5*i,0,-0.2*i)
handlewld.Part1=RightArm
handlewld.C0=euler(1.9+0.5*i,0,0.2)*cf(0,1,0)
handlewld.C1=euler(0,0,0)
wld1.C0=euler(0,0,0)*cf(0,1.5,0)
end
counter=0
size=1
while holdz==true and heat<=400 do
swait()
counter=counter+1
if counter==20 then
size=2
so("http://www.roblox.com/asset/?id=157487812",prt10,0.6,0.4) 
elseif counter==60 then
size=3
so("http://www.roblox.com/asset/?id=157487812",prt10,0.6,0.5) 
end
if counter%10==0 then
heat=heat+2
--[[if size==1 then
MagicRing(BrickColor.new("Bright yellow"),prt10.CFrame,1,1,1,0.5,0.5,0.5,0.1,2,prt10)
elseif size==3 then
MagicRing(BrickColor.new("Bright red"),prt10.CFrame,1,1,1,1,1,1,0.1,2,prt10)
end]]
if size==3 then
MagicRing(BrickColor.new("Bright red"),euler(0,1.57,0),1,1,1,1,1,1,0.1,2,prt10)
elseif size==2 then
MagicRing(BrickColor.new("Bright yellow"),euler(0,1.57,0),1,1,1,0.5,0.5,0.5,0.1,2,prt10)
end
end
if counter%5==0 then
if size==1 then
MagicBlock(BrickColor.new("Bright red"),prt10.CFrame,5,5,5,1,1,1,0.1,3,prt10)
elseif size==2 then
MagicBlock(BrickColor.new("Bright red"),prt10.CFrame,7,7,7,1,1,1,0.1,3,prt10)
elseif size==3 then
MagicBlock(BrickColor.new("Bright red"),prt10.CFrame,9,9,9,1,1,1,0.1,3,prt10)
end
end
end
for i=0,1,0.1 do
swait()
if i==0.7 then
--[[so("http://roblox.com/asset/?id=169445121",prt10,1,0.7) 
local disk=part(3,workspace,0,0.7,BrickColor.new("Bright yellow"),"Disk",vt(0.5,0.5,0.5))
local diskmsh=mesh("CylinderMesh",disk,"","",vt(0,0,0),vt(7,0.2,7))
disk.CFrame=cf(prt10.Position)
local dbg=it("BodyGyro") 
dbg.maxTorque=vt(4e+005,4e+005,4e+005)*math.huge 
dbg.P=20e+003 
dbg.Parent=disk
dbg.cframe=euler(0,0,0)
game:GetService("Debris"):AddItem(disk,5)
local MouseLook=cf((prt10.Position+MMouse.Hit.p)/2,MMouse.Hit.p)
hit,pos = rayCast(prt10.Position,MouseLook.lookVector,999,modelzorz)
local ef=part(3,workspace,0,1,BrickColor.new("Black"),"Effect",vt())
ef.Anchored=true
ef.CFrame=cf(pos)
game:GetService("Debris"):AddItem(ef,5)
dprop=Instance.new("RocketPropulsion")
dprop.ThrustP=10
dprop.MaxSpeed=50
--prop.TurnP=1500
dprop.MaxThrust=7000
dprop.CartoonFactor=0
dprop.TurnP=0
dprop.Parent=disk
dprop.Target=ef
dprop:Fire()
local wave=part(3,disk,0,0.3,BrickColor.new("Bright red"),"Effect",vt())
wave.CFrame=disk.CFrame
wmsh=mesh("SpecialMesh",wave,"FileMesh","http://www.roblox.com/asset/?id=1051557",vt(0,0,0),vt(3,0.5,3))
wwld=weld(wave,wave,disk,euler(0,0,0)*cf(0,0,0))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Weld)
while Part.Parent~=nil do
swait()
hit,pos=rayCast(Part.Position,Part.CFrame.lookVector,2,modelzorz)
if hit~=nil and hit.Name~="Effect" then
print(hit)
Part.Parent=nil
local dur=part(3,workspace,0,1,BrickColor.new("Bright red"),"Effect",vt())
dur.Anchored=true
dur.CFrame=Part.CFrame
game:GetService("Debris"):AddItem(dur,5)
so("http://roblox.com/asset/?id=142070127",dur,1,1) 
MagicWaveThing(BrickColor.new("Bright red"),Part.CFrame,1,1,1,0.6,1.5,0.6,0.02)
if size==1 then
Damagefunc(hit,5,10,0,"Target",200,1,2)
elseif size==2 then
Damagefunc(hit,10,15,0,"Target",400,1,2)
elseif size==3 then
Damagefunc(hit,20,30,0,"Target",600,1,2)
end
end
MagicBlock(BrickColor.new("Bright red"),Part.CFrame,5,5,5,1,1,1,0.2,1)
Weld.C0=Weld.C0*euler(0,0.5,0)
end
end),disk,wwld)]]
CeEf=RootPart.CFrame
coroutine.resume(coroutine.create(function()
num=1
for i=1,size do
local ef=part(3,workspace,0,1,BrickColor.new("Black"),"Effect",vt())
ef.Anchored=true
ef.CFrame=CeEf*cf(0,0,-6*(num*1.5))
game:GetService("Debris"):AddItem(ef,.1)
so("http://roblox.com/asset/?id=142070127",ef,1,0.8) 
for _,c in pairs(workspace:children()) do
local hum=c:findFirstChild("Humanoid")
if hum~=nil then
local head=c:findFirstChild("Torso")
if head~=nil then
local targ=head.Position-ef.Position
local mag=targ.magnitude
if mag<=20 and c.Name~=Player.Name then 
coroutine.resume(coroutine.create(function(hit)
Damagefunc(hit,10,15,math.random(10,20),"Target",400,1,2)
end),head)
end
end
end
end
coroutine.resume(coroutine.create(function(Part)
MagicRing(BrickColor.new("Bright yellow"),Part.CFrame,1,1,1,0.5,0.5,0.5,0.02,1)
MagicCircle(BrickColor.new("Bright red"),Part.CFrame,1,1,1,2,2,2,0.01,1)
for i=0,0.5,0.1 do
swait()
MagicBlock(BrickColor.new("Bright red"),Part.CFrame,5,5,5,1.4,1.4,1.4,0.05,1)
end
end),ef)
num=num+1
swait(5)
end
end))
end
Torso.Neck.C1=necko2
Torso.Neck.C0=necko*euler(0,-0.2+0.2*i,1-2.3*i)
RootJoint.C0=RootCF*cf(0,0,-0.5+0.5*i)*euler(0.4-0.4*i,0,-1+2.3*i)
RW.C0=cf(1.5-0.5*i,0.5,-0.5*i)*euler(1.2+0.2*i,-1.5,0)
RW.C1=cf(0,0.5,0)*euler(-1.3+2*i,0,0)
LW.C0=cf(-0.7-0.5*i,0.3+0.2*i,-0.7+0.2*i)*euler(0.7+0.5*i,-1.57,0)
LW.C1=cf(0,0.5,0)*euler(-0.8,0,0)
RH.C0=RHC0*cf(0,0,0)*euler(0,0,0.1-0.1*i)
LH.C0=LHC0*cf(0,0.5-0.5*i,0)*euler(-0.5+0.5*i,0,-0.2+0.2*i)
handlewld.Part1=RightArm
handlewld.C0=euler(2.4-0.2*i,0,0.2)*cf(0,1,0)
handlewld.C1=euler(0,0,0)
wld1.C0=euler(0,0,0)*cf(0,1.5-3*i,0)
end
n=2
for i=0,1,0.1 do
swait()
Torso.Neck.C1=necko2
Torso.Neck.C0=necko*euler(0,0,-1.3-0.2*i*n)
RootJoint.C0=RootCF*cf(0,0,0)*euler(0,0,1.3+0.2*i*n)
RW.C0=cf(1,0.5,-0.5)*euler(1.4,-1.5,0)
RW.C1=cf(0,0.5,0)*euler(0.7+0.1*i*n,0,0)
LW.C0=cf(-1.2,0.5,-0.5)*euler(1.2+0.1*i*n,-1.57,0)
LW.C1=cf(0,0.5,0)*euler(-0.8+0.2*i*n,0,0)
handlewld.Part1=RightArm
handlewld.C0=euler(2.2,0,0.2)*cf(0,1,0)
handlewld.C1=euler(0,0,0)
wld1.C0=euler(0,0,0)*cf(0,-1.5,0)
n=n-0.1
end
for i=0,1,0.1 do
swait()
Torso.Neck.C1=necko2
Torso.Neck.C0=necko*euler(0,0,-1.5+2.285*i)
RootJoint.C0=RootCF*cf(0,0,0)*euler(0,0,1.5-2.285*i)
RW.C0=cf(1+0.5*i,0.5,-0.5+0.5*i)*euler(1.4-0.4*i,-1.5+0.1*i,0)
RW.C1=cf(0,0.5,0)*euler(0.8-1.3*i,0,0)
LW.C0=cf(-1.2,0.5-0.2*i,-0.5)*euler(1.3-0.7*i,-1.57,0)
LW.C1=cf(0,0.5,0)*euler(-0.6,0,0)
handlewld.Part1=RightArm
handlewld.C0=euler(2.2-0.3*i,0,0.2)*cf(0,1,0)
handlewld.C1=euler(0,0,0)
wld1.C0=euler(0,0,0)*cf(0,-1.5+3*i,0)
end
attack=false
end
 
function RocketBarrage()
attack=true
for i=0,1,0.1 do
swait()
Torso.Neck.C1=necko2
Torso.Neck.C0=necko*euler(0,0,0.785-0.785*i)
RootJoint.C0=RootCF*euler(0,0,-0.785+0.785*i)
RW.C0=cf(1.5-0.5*i,0.5+1*i,0)*euler(1+2.1*i,-1.4+1.4*i,-0.785*i)
RW.C1=cf(0,0.5,0)*euler(-0.5+0.5*i,0,0)
LW.C0=cf(-1.2+0.2*i,0.3+1.2*i,-0.5+0.5*i)*euler(0.6+2.5*i,-1.57+1.57*i,0.785*i)
LW.C1=cf(0,0.5,0)*euler(-0.6+0.6*i,0,0)
handlewld.Part1=RightArm
handlewld.C0=euler(1.9-0.4*i,0,0.2-0.985*i)*cf(0,1,0)
handlewld.C1=euler(0,0,0)
wld1.C0=euler(0,1.57*i,0)*cf(0,1.5-1.5*i,0)
end
num=5
while holdx==true do
swait()
so("http://roblox.com/asset/?id=10209640",prt10,1,0.4) 
for i=0,1,0.08 do
swait()
if num==16 then
ShootRocket(7,15,math.random(50,300))
num=0
end
handlewld.C0=euler(1.5,6.28*i,-0.785)*cf(0,1,0)
num=num+1
end
end
for i=0,1,0.1 do
swait()
Torso.Neck.C1=necko2
Torso.Neck.C0=necko*euler(0,0,0.785*i)
RootJoint.C0=RootCF*euler(0,0,-0.785*i)
RW.C0=cf(1+0.5*i,1.5-1*i,0)*euler(3.1-2.1*i,-1.4*i,-0.785+0.785*i)
RW.C1=cf(0,0.5,0)*euler(-0.5*i,0,0)
LW.C0=cf(-1-0.2*i,1.5-1.2*i,-0.5*i)*euler(3.1-2.5*i,-1.57*i,0.785-0.785*i)
LW.C1=cf(0,0.5,0)*euler(-0.6*i,0,0)
handlewld.Part1=RightArm
handlewld.C0=euler(1.5+0.4*i,0,-0.785+0.985*i)*cf(0,1,0)
handlewld.C1=euler(0,0,0)
wld1.C0=euler(0,1.57-1.57*i,0)*cf(0,1.5*i,0)
end
attack=false
end
 
function PushExplosion()
attack=true
bodvel.P=5000
bodvel.maxForce=vt(4e+005,4e+005,4e+005)*2
bodvel.Parent=RootPart
bodvel.velocity=RootPart.CFrame.lookVector*20
bg.maxTorque=vt(math.huge,math.huge,math.huge) 
bg.P=9000
bg.Parent=Torso
local pos4=vt(workspace.CurrentCamera.CoordinateFrame.X,RootPart.Position.Y,workspace.CurrentCamera.CoordinateFrame.Z)
bg.cframe=cf(RootPart.Position,pos4)*euler(0,3.14,0)*cf(0,0,0)
coroutine.resume(coroutine.create(function(Gyro)
while attack==true do
swait()
local pos4=vt(workspace.CurrentCamera.CoordinateFrame.X,RootPart.Position.Y,workspace.CurrentCamera.CoordinateFrame.Z)
Gyro.cframe=cf(RootPart.Position,pos4)*euler(0,3.14,0)*cf(0,0,0)
end
Gyro.Parent=nil
end),bg)
fireballd=false
coroutine.resume(coroutine.create(function()
local fireball=part(3,workspace,0,0.5,BrickColor.new("Bright red"),"Fireball",vt(0.5,0.5,0.5))
local firemsh=mesh("SpecialMesh",fireball,"Sphere","",vt(0,0,0),vt(1,1,1))
local firewld=weld(fireball,fireball,Torso,euler(0,0,0)*cf(0,0,0))
so("http://roblox.com/asset/?id=32791565",fireball,1,1) 
fire=Instance.new("Fire")
fire.Parent=fireball
fire.Color=Color3.new(255,127,0)
fire.SecondaryColor=Color3.new(255,0,0)
fire.Size=5
fire.Heat=20
n=2
for i=0,1,0.01 do
swait()
firemsh.Scale=vt(1+14*i*n,1+14*i*n,1+14*i*n)
n=n-0.01
end
while holdc==true do
swait()
end
fireballd=true
for _,c in pairs(workspace:children()) do
local hum=c:findFirstChild("Humanoid")
if hum~=nil then
local head=c:findFirstChild("Torso")
if head~=nil then
local targ=head.Position-fireball.Position
local mag=targ.magnitude
if mag<=25 and c.Name~=Player.Name then 
Damagefunc(head,20,40,math.random(20,40),"Knockdown",fireball,.2,1)
end
end
end
end
coroutine.resume(coroutine.create(function(Part)
n=0
for i=0,1,0.05 do
swait(1)
MagicBlock(BrickColor.new("Bright red"),Part.CFrame,1,1,1,5,5,5,0.05,1)
if n==5 then
MagicRing(BrickColor.new("Really red"),Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50)),10,10,10,0.5,0.5,0.5,0.03,1)
n=0
end
n=n+1
end
end),fireball)
so("http://www.roblox.com/asset/?id=2101148",fireball,1,0.6) 
firewld.Parent=nil
fireball.Anchored=true
fireball.Transparency=1
fire.Parent=nil
swait(100)
fireball.Parent=nil
end))
for i=0,1,0.1 do
swait()
Torso.Neck.C0=necko*euler(-0.2*i,0,0.785-0.785*i)
RootJoint.C0=RootCF*euler(0,0,-0.785+0.785*i)
RW.C0=cf(1.5,0.5,0)*euler(1+1.5*i,-1.4+1.4*i,0.4*i)
RW.C1=cf(0,0.5,0)*euler(-0.5+0.5*i,0,0)
LW.C0=cf(-1.2-0.3*i,0.3+0.2*i,-0.5+0.5*i)*euler(0.6+1.9*i,-1.57+1.57*i,-0.4*i)
LW.C1=cf(0,0.5,0)*euler(-0.6+0.6*i,0,0)
RH.C0=RHC0*cf(0,0.2*i,0)*euler(-0.2*i,0,-0.2*i)
LH.C0=LHC0*cf(0,0.2*i,0)*euler(-0.2*i,0,0.2*i)
handlewld.C0=euler(1.9-0.4*i,0,0.2)*cf(0,1,0)
wld1.C0=euler(0,0,0)*cf(0,1.5-1.5*i,0)
end
while holdc==true do
swait()
end
while fireballd==false do
swait()
end
bodvel.velocity=(RootPart.CFrame.lookVector+vt(0,-0.5,0))*-80
bg.Parent=nil
for i=0,1,0.1 do
swait()
Torso.Neck.C0=necko*euler(-0.2+0.2*i,0,0)
RootJoint.C0=RootCF*euler(0,0,0)
RW.C0=cf(1.5,0.5,0)*euler(2.5-1*i,0,0.4-0.4*i)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(2.5-1*i,0,-0.4+0.4*i)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
RH.C0=RHC0*cf(0,0.2,0)*euler(-0.2,0,-0.2+0.4*i)
LH.C0=LHC0*cf(0,0.2,0)*euler(-0.2,0,0.2-0.4*i)
handlewld.C0=euler(1.5,0,0.2)*cf(0,1,0)
wld1.C0=euler(0,0,0)*cf(0,0,0)
end
bodvel.Parent=nil
n2=2
for i=0,1,0.1 do
swait()
Torso.Neck.C0=necko*euler(0.1*i*n2,0,0)
RootJoint.C0=RootCF*euler(0,0,0)
RW.C0=cf(1.5,0.5,0)*euler(1.5-0.1*i*n2,0,0)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(1.5-0.1*i*n2,0,0)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
n2=n2-0.1
end
swait(10)
for i=0,1,0.1 do
swait()
Torso.Neck.C0=necko*euler(0.1-0.1*i,0,0.785*i)
RootJoint.C0=RootCF*euler(0,0,-0.785*i)
RW.C0=cf(1.5,0.5,0)*euler(1.4-0.4*i,-1.4*i,0)
RW.C1=cf(0,0.5,0)*euler(-0.5*i,0,0)
LW.C0=cf(-1.5+0.3*i,0.5-0.2*i,-0.5*i)*euler(1.4-0.8*i,-1.57*i,0)
LW.C1=cf(0,0.5,0)*euler(-0.6*i,0,0)
RH.C0=RHC0*cf(0,0.2-0.2*i,0)*euler(-0.2+0.2*i,0,0.2-0.2*i)
LH.C0=LHC0*cf(0,0.2-0.2*i,0)*euler(-0.2+0.2*i,0,-0.2+0.2*i)
handlewld.C0=euler(1.5+0.4*i,0,0.2)*cf(0,1,0)
wld1.C0=euler(0,0,0)*cf(0,1.5*i,0)
end
equipanim()
attack=false
end
 
function TornadoSpire()
attack=true
for i=0,1,0.1 do
swait()
Torso.Neck.C0=necko*euler(0,0,0.785-0.785*i)
RootJoint.C0=RootCF*euler(0,0,-0.785+0.785*i)
RW.C0=cf(1.5-0.5*i,0.5,-0.5*i)*euler(1-0.4*i,-1.4+1.4*i,-0.785*i)
RW.C1=cf(0,0.5,0)*euler(-0.5+0.5*i,0,0)
LW.C0=cf(-1.2+0.2*i,0.3+0.2*i,-0.5)*euler(0.6,-1.57+1.57*i,0.785*i)
LW.C1=cf(0,0.5,0)*euler(-0.6+0.6*i,0,0)
handlewld.C0=euler(1.9-1.9*i,0.5*i,0.2+1.37*i)*cf(0,1,0)
wld1.C0=cf(0,1.5-2*i,0)*euler(1.57*i,0,-0.5*i)
end
con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,1,5,0,"Normal",RootPart,.05,1) end) 
hitbox.Parent=modelzorz
hitbox.Size=vt(2,4,2)
hitbox.Transparency=1
hitbox.CFrame=prt10.CFrame
ro=0
while holdv==true do
so("http://roblox.com/asset/?id=10209640",prt10,1,0.8) 
for i=0,1,0.05 do
swait()
if ro==13 then
ShootRocket(5,10,100)
ro=0
end
RootJoint.C0=RootCF*euler(0,0,6.28*i)
hitbox.CFrame=prt10.CFrame
ro=ro+1
end
end
heat=heat+50
con1:disconnect()
hitbox.Parent=nil
CF=cf(hitbox.Position)
WaveEffect(BrickColor.new("Bright red"),CF,1,1,1,0.2,0.8,0.2,0.02,2)
MagicWaveThing(BrickColor.new("Bright red"),CF,1,1,1,0.4,1,0.4,0.01)
coroutine.resume(coroutine.create(function(ceef)
con2=hitbox.Touched:connect(function(hit) Damagefunc(hit,30,40,math.random(10,20),"Up",0,1,2) end) 
hitbox.Parent=Character
hitbox.Size=vt(5,10,5)
hitbox.Transparency=1
hitbox.CFrame=ceef
refprt=part(3,workspace,0,1,BrickColor.new("Black"),"Effect",vt())
refprt.Anchored=true
refprt.CFrame=ceef
game:GetService("Debris"):AddItem(refprt,5)
so("http://www.roblox.com/asset/?id=81116747",refprt,1,.5) 
so("http://www.roblox.com/asset/?id=144844438",refprt,1,1.5) 
for i=0,1,0.1 do
swait()
hitbox.Size=vt(5+5*i,10+40*i,5+5*i)
hitbox.CFrame=ceef
end
for i=0,9,0.1 do
swait()
hitbox.CFrame=ceef*cf(math.random(-100,100)/500,math.random(-100,100)/500,math.random(-100,100)/500)
end
con2:disconnect()
hitbox.Parent=nil
end),CF)
coroutine.resume(coroutine.create(function(ceef)
num=1
for i=0,6 do
MagicRing(BrickColor.new("Bright red"),ceef*euler(1.57,0,0),1,1,1,num,num,0.5,0.05,1)
num=num+0.5
swait(5)
end
end),CF)
Humanoid.WalkSpeed=0
bodvel.P=5000
bodvel.maxForce=vt(4e+005,4e+005,4e+005)*2
bodvel.Parent=RootPart
bodvel.velocity=vt(0,1,0)*100
bg.maxTorque=vt(math.huge,math.huge,math.huge) 
bg.P=9000
bg.Parent=RootPart
bg.cframe=RootPart.CFrame
for i=0,1,0.1 do
swait()
Torso.Neck.C0=necko*euler(0,0,-1.57*i)
RootJoint.C0=RootCF*euler(0,0,1.57*i)
RW.C0=cf(1,0.5,-0.5)*euler(0.6+2.4*i,-1.57*i,-0.785+0.785*i)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1-0.5*i,0.5,-0.5+0.5*i)*euler(0.6+2*i,1.57*i,0.785-0.785*i)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
handlewld.C0=euler(1.57*i,0.5-0.5*i,1.57)*cf(0,1,0)
wld1.C0=cf(0,-0.5,0)*euler(1.57-1.57*i,1.57*i,-0.5+0.5*i)
end
bodvel.Parent=nil
hitfloor=false
while hitfloor==false do
swait()
hit,pos=rayCast(RootPart.Position, (CFrame.new(RootPart.Position,RootPart.Position - Vector3.new(0,1,0))).lookVector,6,Character)
if hit~=nil then
hitfloor=true
end
end
Humanoid.WalkSpeed=16
bg.Parent=nil
for i=0,1,0.1 do
swait()
Torso.Neck.C0=necko*euler(0,0,-1.57+2.355*i)
RootJoint.C0=RootCF*euler(0,0,1.57-2.355*i)
RW.C0=cf(1+0.5*i,0.5,-0.5+0.5*i)*euler(3-2*i,-1.57+0.17*i,0)
RW.C1=cf(0,0.5,0)*euler(-0.5*i,0,0)
LW.C0=cf(-1.5+0.3*i,0.5-0.2*i,-0.5*i)*euler(2.6-2*i,1.57+3.14*i,0)
LW.C1=cf(0,0.5,0)*euler(-0.6*i,0,0)
handlewld.C0=euler(1.57+0.33*i,0,1.57-1.37*i)*cf(0,1,0)
wld1.C0=cf(0,-0.5+2*i,0)*euler(0,1.57-1.57*i,0)
end
attack=false
end
 
function Target()
attack=true
for i=0,1,0.1 do
swait()
Torso.Neck.C1=necko2
Torso.Neck.C0=necko*euler(0,0,0.785-0.985*i)
RootJoint.C0=RootCF*euler(0,0,-0.785+0.985*i)
RW.C0=cf(1.5,0.5,0)*euler(1-0.5*i,-1.4-1.57*i,-0.2*i)
RW.C1=cf(0,0.5,0)*euler(-0.5+0.5*i,0,0)
LW.C0=cf(-1.2-0.3*i,0.3+0.2*i,-0.5+0.5*i)*euler(0.6-0.8*i,-1.57+1.57*i,-0.3*i)
LW.C1=cf(0,0.5,0)*euler(-0.6+0.6*i,0,0)
handlewld.Part1=RightArm
handlewld.C0=euler(1.9,0,0.2)*cf(0,1,0)
handlewld.C1=euler(0,0,0)
wld1.C0=euler(0,0,0)*cf(0,1.5-0.5*i,0)
end
so("http://roblox.com/asset/?id=10209640",LeftArm,1,1) 
con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,1,5,0,"Target",600,1,2) end) 
hitbox.Parent=modelzorz
hitbox.Size=vt(1,2,1)
hitbox.CFrame=lprt2.CFrame
for i=0,1,0.1 do
swait()
Torso.Neck.C1=necko2
Torso.Neck.C0=necko*euler(0,0,-0.2+0.6*i)
RootJoint.C0=RootCF*euler(0,0,0.2-0.6*i)
RW.C0=cf(1.5,0.5,0)*euler(0.5-0.6*i,-2.97,-0.2-0.2*i)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5+0.5*i,0.5,-0.5*i)*euler(-0.2+1.9*i,0,-0.3+0.7*i)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
handlewld.C0=euler(1.9+0.4*i,0,0.2)*cf(0,1,0)
handlewld.C1=euler(0,0,0)
wld1.C0=euler(0,0,0)*cf(0,1-1*i,0)
hitbox.CFrame=lprt2.CFrame
end
n=2
for i=0,1,0.1 do
swait()
Torso.Neck.C1=necko2
Torso.Neck.C0=necko*euler(0,0,0.4)
RootJoint.C0=RootCF*euler(0,0,-0.4)
RW.C0=cf(1.5,0.5,0)*euler(-0.1-0.1*i*n,-2.97,-0.4)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1,0.5,-0.5)*euler(1.7+0.2*i*n,0,0.4+0.2*i*n)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
handlewld.C0=euler(2.3+0.2*i*n,0,0.2)*cf(0,1,0)
hitbox.CFrame=lprt2.CFrame
n=n-0.1
end
con1:disconnect()
hitbox.Parent=nil
for i=0,1,0.1 do
swait()
Torso.Neck.C1=necko2
Torso.Neck.C0=necko*euler(0,0,0.4+0.385*i)
RootJoint.C0=RootCF*euler(0,0,-0.4-0.385*i)
RW.C0=cf(1.5,0.5,0)*euler(-0.2+1.2*i,-2.97+1.57*i,-0.4+0.4*i)
RW.C1=cf(0,0.5,0)*euler(-0.5*i,0,0)
LW.C0=cf(-1-0.2*i,0.5-0.2*i,-0.5)*euler(1.9-1.3*i,-1.57*i,0.6-0.6*i)
LW.C1=cf(0,0.5,0)*euler(-0.6*i,0,0)
handlewld.C0=euler(2.5-0.6*i,0,0.2)*cf(0,1,0)
handlewld.C1=euler(0,0,0)
wld1.C0=euler(0,0,0)*cf(0,1.5*i,0)
end
attack=false
end
 
function Lock()
attack=true
for i=0,1,0.1 do
swait()
Torso.Neck.C1=necko2
Torso.Neck.C0=necko*euler(0,0,0.785-0.585*i)
RootJoint.C0=RootCF*euler(0,0,-0.785+0.585*i)
RW.C0=cf(1.5,0.5,0)*euler(1-1.5*i,-1.4-1.57*i,-0.2*i)
RW.C1=cf(0,0.5,0)*euler(-0.5+0.5*i,0,0)
LW.C0=cf(-1.2+0.2*i,0.3+0.2*i,-0.5)*euler(0.6+0.97*i,-1.57+1.57*i,1.4*i)
LW.C1=cf(0,0.5,0)*euler(-0.6+0.6*i,0,0)
handlewld.Part1=RightArm
handlewld.C0=euler(1.9-0.4*i,0,0.2)*cf(0,1,0)
handlewld.C1=euler(0,0,0)
wld1.C0=euler(0,0,0)*cf(0,1.5-1.5*i,0)
end
local laser=part(3,modelzorz,0,0.5,BrickColor.new("Bright orange"),"Effect",vt(0.6,0.2,0.6))
laser.Anchored=true
local lasmsh=mesh("CylinderMesh",laser,"","",vt(0,0,0),vt(1,1,1))
local hit=nil
while holdf==true do
swait()
local MouseLook=cf((lprt2.Position+MMouse.Hit.p)/2,MMouse.Hit.p)
hit,pos = rayCast(lprt2.Position,MouseLook.lookVector,999,modelzorz)
laser.CFrame=CFrame.new((lprt2.Position+pos)/2,pos)*angles(1.57,0,0) 
local mag=(lprt2.Position-pos).magnitude 
lasmsh.Scale=vt(0.5,mag*5,0.5)
end
laser.Parent=nil
coroutine.resume(coroutine.create(function(Hitted)
Damagefunc(Hitted,1,1,0,"Target",300,1,2)
end),hit)
for i=0,1,0.1 do
swait()
Torso.Neck.C1=necko2
Torso.Neck.C0=necko*euler(0,0,0.2+0.585*i)
RootJoint.C0=RootCF*euler(0,0,-0.2-0.585*i)
RW.C0=cf(1.5,0.5,0)*euler(-0.5+1.5*i,-2.97+1.57*i,-0.2+0.2*i)
RW.C1=cf(0,0.5,0)*euler(-0.5*i,0,0)
LW.C0=cf(-1-0.2*i,0.5-0.2*i,-0.5)*euler(1.57-0.97*i,-1.57*i,1.4-1.4*i)
LW.C1=cf(0,0.5,0)*euler(-0.6*i,0,0)
handlewld.Part1=RightArm
handlewld.C0=euler(1.5+0.4*i,0,0.2)*cf(0,1,0)
handlewld.C1=euler(0,0,0)
wld1.C0=euler(0,0,0)*cf(0,1.5*i,0)
end
attack=false
end
 
function ShootRocket(mindam,maxdam,vel)
if heat<=400 and heatcooldown==false then
heat=heat+math.random(mindam,maxdam)
so("http://www.roblox.com/asset/?id=2697431",prt9,0.3,0.5) 
MagicCircle(BrickColor.new("Bright red"),prt9.CFrame,1,1,1,1.5,1.5,1.5,0.05,2)
local rockt=part(1,workspace,0,1,BrickColor.new("Black"),"Rocket",vt(1,1,1))
local rocktmesh=part(1,rockt,0,0,BrickColor.new("Bright red"),"Rocket",vt(1,1,1))
local rocktmsh=mesh("SpecialMesh",rocktmesh,"FileMesh","http://www.roblox.com/asset/?id=2251534",vt(0,0,0),vt(0.2,0.2,0.2))
local rocktwld=weld(rockt,rockt,rocktmesh,euler(0,0,1.57)*cf(0,0,0))
game:GetService("Debris"):AddItem(rockt,5)
game:GetService("Debris"):AddItem(rocktmesh,5)
game:GetService("Debris"):AddItem(rocktmsh,5)
game:GetService("Debris"):AddItem(rocktwld,5)
rockt.CFrame=prt10.CFrame
prop=Instance.new("RocketPropulsion")
--[[prop.MaxSpeed=5000
prop.CartoonFactor=10
prop.MaxThrust=10000
prop.ThrustD=1.5
prop.TurnD=0
prop.TurnP=0]]
if Targetting==false then
prop.ThrustP=10
prop.MaxSpeed=50
else
prop.ThrustP=50
prop.MaxSpeed=100
end
--prop.TurnP=1500
prop.MaxThrust=7000
prop.CartoonFactor=1
prop.Parent=rockt
rockt.Velocity=prt1.CFrame.lookVector*vel
coroutine.resume(coroutine.create(function(Part,Part2)
while Part.Parent~=nil do
swait()
hit,pos=rayCast(Part.Position,Part.CFrame.lookVector,2,modelzorz)
if hit~=nil then
Part:Remove()
Part2:Remove()
if hit.Parent:findFirstChild("Humanoid")~=nil then
Damagefunc(hit,mindam,maxdam,math.random(5,10),"Normal",rockt,0,2,false)
elseif hit.Parent.Parent:findFirstChild("Humanoid")~=nil then
Damagefunc(hit.Parent,mindam,maxdam,math.random(5,10),"Normal",rockt,0,2,false)
end
--so("http://www.roblox.com/asset/?id=2101148",hit,1,0.6) 
so("http://www.roblox.com/asset/?id=81116747",hit,1,1) 
MagicBlock(BrickColor.new("Bright red"),cf(pos),1,1,1,2,2,2,0.05,1)
end
end
Part.Parent=nil
Part2.Parent=nil
end),rockt,rocktmesh)
hit,pos=rayCast(Head.Position,Head.CFrame.lookVector,999,modelzorz)
if Targetting==false then
if hit==nil or hit.Anchored==true then
local ref=part(1,workspace,0,1,BrickColor.new("Black"),"Effect",vt(1,1,1))
ref.Anchored=true
ref.CFrame=cf(pos)
local msh=mesh("BlockMesh",ref,"","",vt(0,0,0),vt(1,1,1))
game:GetService("Debris"):AddItem(ref,.5)
prop.Target=ref
prop:Fire()
else
prop.Target=hit
prop:Fire()
end
else
prop.Target=RocketTarget
prop:Fire()
end
end
end
 
function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 
 
local Point=Torso.CFrame*CFrame.new(0,Torso.Size.Y,0)
LastPoint=Point
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
swait()
Part.Transparency = 1*i
Mesh.Scale = Vector3.new(0.1-0.1*i,1,0.1-0.1*i)
end
swait()
Part.Parent = nil
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
                bodyVelocity.velocity=vt(0,60,0)
                bodyVelocity.P=5000
                bodyVelocity.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
                bodyVelocity.Parent=hit
                game:GetService("Debris"):AddItem(bodyVelocity,1)
                rl=Instance.new("BodyAngularVelocity")
                rl.P=3000
                rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
                rl.angularvelocity=Vector3.new(math.random(-30,30),math.random(-30,30),math.random(-30,30))
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
                elseif Type=="Target" then
                if Targetting==false then
                ZTarget=hit.Parent.Torso
                coroutine.resume(coroutine.create(function(Part) 
                so("http://www.roblox.com/asset/?id=15666462",Part,1,1.5) 
                swait(5)
                so("http://www.roblox.com/asset/?id=15666462",Part,1,1.5) 
                end),ZTarget)
                TargHum=ZTarget.Parent:findFirstChild("Humanoid")
                targetgui=Instance.new("BillboardGui")
                targetgui.Parent=ZTarget
                targetgui.Size=UDim2.new(10,100,10,100)
                targ=Instance.new("ImageLabel")
                targ.Parent=targetgui
                targ.BackgroundTransparency=1
                targ.Image="rbxassetid://4834067"
                targ.Size=UDim2.new(1,0,1,0)
                cam.CameraType="Scriptable"
                cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
                dir=Vector3.new(cam.CoordinateFrame.lookVector.x,0,cam.CoordinateFrame.lookVector.z)
                workspace.CurrentCamera.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
                Targetting=true
                RocketTarget=ZTarget
                for i=1,Property do
                --while Targetting==true and Humanoid.Health>0 and Character.Parent~=nil do
                if Humanoid.Health>0 and Character.Parent~=nil and TargHum.Health>0 and TargHum.Parent~=nil and Targetting==true then
                swait()
                end
                --workspace.CurrentCamera.CoordinateFrame=CFrame.new(Head.CFrame.p,Head.CFrame.p+rmdir*100)
                cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
                dir=Vector3.new(cam.CoordinateFrame.lookVector.x,0,cam.CoordinateFrame.lookVector.z)
                cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)*cf(0,5,10)*euler(-0.3,0,0)
                end
                Targetting=false
                RocketTarget=nil
                targetgui.Parent=nil
                cam.CameraType="Custom"
                end
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
        c.CFrame=CFrame.new(Char["Head"].CFrame.p+Vector3.new(0,1.5,0))
        elseif Char.Parent:findFirstChild("Head")~=nil then
        c.CFrame=CFrame.new(Char.Parent["Head"].CFrame.p+Vector3.new(0,1.5,0))
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
for i=1,40 do
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
holdq=false
holdf=false
holdg=false
holdz=false
holdx=false
holdc=false
holdv=false
clickedf=true
function key(key) 
if key=="q" then
holdq=true
end
if key=="f" then
holdf=true
end
if key=="g" then
holdg=true
end
if key=="z" then
holdz=true
end
if key=="x" then
holdx=true
end
if key=="c" then
holdc=true
end
if key=="v" then
holdv=true
end
if attack==true then return end
if key=="g" then
if holdq==false then
Cooldown()
else
Regain()
end
end
if key=="z" and mana>=30 and heat<=400 and heatcooldown==false then
mana=mana-30
ChargeHammer()
end
if key=="x"then
RocketBarrage()
end
if key=="c" and mana>=50 then
mana=mana-50
PushExplosion()
end
if key=="v" and mana>=200 and heat<=400 and heatcooldown==false then
mana=mana-200
TornadoSpire()
end
if key=="f" then
if holdq==true then
Lock()
else
Target()
end
end
if key=="g" then
Targetting=false
end
end 
 
function key2(key) 
if key=="q" then
holdq=false
end
if key=="f" then
holdf=false
end
if key=="g" then
holdg=false
end
if key=="z" then
holdz=false
end
if key=="x" then
holdx=false
end
if key=="c" then
holdc=false
end
if key=="v" then
holdv=false
end
end 
 
function s(mouse) 
mouse.Button1Down:connect(function() ob1d(mouse) end) 
mouse.Button1Up:connect(function() ob1u(mouse) end) 
mouse.KeyDown:connect(key) 
mouse.KeyUp:connect(key2) 
unsheathed=true 
player=Player 
ch=Character 
MMouse=mouse 
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
end 
 
function ds(mouse) 
hideanim() 
swait(0) 
RW.Parent=nil 
LW.Parent=nil 
RSH.Parent=player.Character.Torso 
LSH.Parent=player.Character.Torso 
end 
 
Bin.Selected:connect(s) 
Bin.Deselected:connect(ds) 
print("Lock-on Hammer loaded.")
 
--[[ 
Copyrighted (C) Fenrier 2014
]] 
 