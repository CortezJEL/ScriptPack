Player = game:GetService("Players").Cobalt1164
Character = Player.Character 
PlayerGui = Player.PlayerGui 
Backpack = Player.Backpack 
Torso = Character.Torso 
Head = Character.Head 
LeftArm = Character["Left Arm"] 
LeftLeg = Character["Left Leg"] 
RightArm = Character["Right Arm"] 
RightLeg = Character["Right Leg"] 
LS = Torso["Left Shoulder"] 
LH = Torso["Left Hip"] 
RS = Torso["Right Shoulder"] 
RH = Torso["Right Hip"] 
attack = false 
attackdebounce = false 
combo = 0 
mana = 400 
necko=CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
necko2=CFrame.new(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
hold=false
MMouse=nil
equipped=false
attack=false
holddash=false
dashing=false
act = {key = {}}
walking = false 
normattack=false
sitting=false
--player 
player = nil 
--save shoulders 
RSH, LSH = nil, nil 
--welds 
RW, LW , RWL, LWL = Instance.new("Weld"), Instance.new("Weld"), Instance.new("Weld"), Instance.new("Weld")
--what anim 
anim = "none" 
bodpos=Instance.new("BodyPosition")
bodpos.P=2000
bodpos.D=100
bodpos.maxForce=Vector3.new(math.huge,math.huge,math.huge)
if Character:findFirstChild("AeroBlade",true) ~= nil then 
Character:findFirstChild("AeroBlade",true).Parent = nil 
end 
if Player.PlayerGui:findFirstChild("manaGUI",true) ~= nil then 
Player.PlayerGui:findFirstChild("manaGUI",true).Parent = nil 
end 
function part(formfactor,parent,reflectance,transparency,brickcolor,name,size)
local fp = Instance.new("Part")
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
local modelzorz = Instance.new("Model") 
modelzorz.Name = "AeroBlade" 
modelzorz.Parent = Character 
local prt1 = part(1,modelzorz,0,0,BrickColor.new("Navy blue"),"Part1",Vector3.new(1,1,1))
local prt2 = part(1,modelzorz,0,0,BrickColor.new("Black"),"Part2",Vector3.new(1,1,1))
local prt3 = part(1,modelzorz,0,0,BrickColor.new("Deep blue"),"Part3",Vector3.new(1,1,1))
local prt4 = part(1,modelzorz,0,0,BrickColor.new("Deep blue"),"Part4",Vector3.new(1,1,1))
local prt5 = part(1,modelzorz,0,0,BrickColor.new("Black"),"Part5",Vector3.new(1,1,1))
local prt6 = part(1,modelzorz,0,0,BrickColor.new("Really blue"),"Part6",Vector3.new(1,1,1))
local prt7 = part(1,modelzorz,0,0,BrickColor.new("Black"),"Part7",Vector3.new(1,1,1))
local prt8 = part(1,modelzorz,0,0,BrickColor.new("Black"),"Part8",Vector3.new(1,1,1))
local prt9 = part(1,modelzorz,0,0,BrickColor.new("White"),"Part9",Vector3.new(1,1,1))
local prt10 = part(1,modelzorz,0.5,0,BrickColor.new("White"),"Part10",Vector3.new(1,1,1))
local prt11 = part(1,modelzorz,0,0,BrickColor.new("Black"),"Part11",Vector3.new(1,1,1))
local prt12 = part(1,modelzorz,0,0,BrickColor.new("White"),"Part12",Vector3.new(1,1,1))
local prt13 = part(1,modelzorz,0,0,BrickColor.new("Black"),"Part13",Vector3.new(1,1,1))
local prt14 = part(1,modelzorz,0,0,BrickColor.new("Deep blue"),"Part14",Vector3.new(1,1,1))
local prt15 = part(1,modelzorz,0,0,BrickColor.new("Black"),"Part15",Vector3.new(1,1,1))
local prt16 = part(1,modelzorz,0,0,BrickColor.new("Deep blue"),"Part16",Vector3.new(1,1,1))
local prt17 = part(1,modelzorz,0,0,BrickColor.new("Black"),"Part17",Vector3.new(1,1,1))
local prt18 = part(1,modelzorz,0,0,BrickColor.new("Black"),"Part18",Vector3.new(1,1,1))
local msh1 = Instance.new("CylinderMesh") 
msh1.Parent = prt1 
msh1.Scale = Vector3.new(0.5,1,0.5) 
local msh2 = Instance.new("CylinderMesh") 
msh2.Parent = prt2 
msh2.Scale = Vector3.new(0.4,2,0.4) 
local msh3 = Instance.new("CylinderMesh") 
msh3.Parent = prt3 
msh3.Scale = Vector3.new(0.41,0.1,0.41) 
local msh4 = Instance.new("CylinderMesh") 
msh4.Parent = prt4 
msh4.Scale = Vector3.new(0.41,0.1,0.41) 
local msh5 = Instance.new("CylinderMesh") 
msh5.Parent = prt5 
msh5.Scale = Vector3.new(0.5,0.5,0.5) 
local msh6 = Instance.new("SpecialMesh") 
msh6.Parent = prt6 
msh6.MeshType="Sphere"
msh6.Scale = Vector3.new(0.49,0.8,0.49) 
local msh7 = Instance.new("CylinderMesh") 
msh7.Parent = prt7 
msh7.Scale = Vector3.new(0.5,0.5,0.5) 
local msh8 = Instance.new("BlockMesh") 
msh8.Parent = prt8 
msh8.Scale = Vector3.new(0.35,1,0.35) 
local msh9 = Instance.new("CylinderMesh") 
msh9.Parent = prt9 
msh9.Scale = Vector3.new(0.5,0.1,0.5) 
local msh10 = Instance.new("BlockMesh") 
msh10.Parent = prt10 
msh10.Scale = Vector3.new(0.4,2,0.1) 
local msh11 = Instance.new("BlockMesh") 
msh11.Parent = prt11 
msh11.Scale = Vector3.new(0.21,1,0.11) 
local msh12 = Instance.new("CylinderMesh") 
msh12.Parent = prt12 
msh12.Scale = Vector3.new(0.5,0.1,0.5) 
local msh13 = Instance.new("BlockMesh") 
msh13.Parent = prt13 
msh13.Scale = Vector3.new(0.5,2,0.5) 
local msh14 = Instance.new("CylinderMesh") 
msh14.Parent = prt14 
msh14.Scale = Vector3.new(0.49,0.1,0.49) 
local msh15 = Instance.new("CylinderMesh") 
msh15.Parent = prt15 
msh15.Scale = Vector3.new(0.48,1,0.48) 
local msh16 = Instance.new("CylinderMesh") 
msh16.Parent = prt16 
msh16.Scale = Vector3.new(0.49,0.1,0.49) 
local msh17 = Instance.new("BlockMesh") 
msh17.Parent = prt17 
msh17.Scale = Vector3.new(0.5,1,0.5) 
local msh18 = Instance.new("SpecialMesh") 
msh18.Parent = prt18 
msh18.MeshType="Wedge"
msh18.Scale = Vector3.new(0.5,0.5,0.5) 
local wld1 = Instance.new("Weld") 
wld1.Parent = prt1 
wld1.Part0 = prt1 
wld1.Part1 = Torso 
wld1.C0 = CFrame.fromEulerAnglesXYZ(0,0,-1) * CFrame.new(3,-2,-0.7) 
local wld2 = Instance.new("Weld") 
wld2.Parent = prt2 
wld2.Part0 = prt2 
wld2.Part1 = prt1 
wld2.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local wld3 = Instance.new("Weld") 
wld3.Parent = prt3 
wld3.Part0 = prt3 
wld3.Part1 = prt2 
wld3.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.8,0) 
local wld4 = Instance.new("Weld") 
wld4.Parent = prt4 
wld4.Part0 = prt4 
wld4.Part1 = prt2 
wld4.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-0.8,0) 
local wld5 = Instance.new("Weld") 
wld5.Parent = prt5 
wld5.Part0 = prt5 
wld5.Part1 = prt2 
wld5.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-1.2,0) 
local wld6 = Instance.new("Weld") 
wld6.Parent = prt6 
wld6.Part0 = prt6 
wld6.Part1 = prt5 
wld6.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-0.2,0) 
local wld7 = Instance.new("Weld") 
wld7.Parent = prt7 
wld7.Part0 = prt7 
wld7.Part1 = prt2 
wld7.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,1.2,0) 
local wld8 = Instance.new("Weld") 
wld8.Parent = prt8 
wld8.Part0 = prt8 
wld8.Part1 = prt7 
wld8.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.5,0) 
local wld9 = Instance.new("Weld") 
wld9.Parent = prt9 
wld9.Part0 = prt9 
wld9.Part1 = prt8 
wld9.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.6,0) 
local wld10 = Instance.new("Weld") 
wld10.Parent = prt10 
wld10.Part0 = prt10 
wld10.Part1 = prt9 
wld10.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,1.2,0) 
local wld11 = Instance.new("Weld") 
wld11.Parent = prt11 
wld11.Part0 = prt11 
wld11.Part1 = prt10 
wld11.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(-0.1,-0.6,0) 
local wld12 = Instance.new("Weld") 
wld12.Parent = prt12 
wld12.Part0 = prt12 
wld12.Part1 = prt9 
wld12.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.1,0) 
local wld13 = Instance.new("Weld") 
wld13.Parent = prt13 
wld13.Part0 = prt13 
wld13.Part1 = prt12 
wld13.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,1.2,0) 
local wld14 = Instance.new("Weld") 
wld14.Parent = prt14 
wld14.Part0 = prt14 
wld14.Part1 = prt13 
wld14.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,1.2,0) 
local wld15 = Instance.new("Weld") 
wld15.Parent = prt15 
wld15.Part0 = prt15 
wld15.Part1 = prt14 
wld15.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.3,0) 
local wld16 = Instance.new("Weld") 
wld16.Parent = prt16 
wld16.Part0 = prt16 
wld16.Part1 = prt15 
wld16.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.3,0) 
local wld17 = Instance.new("Weld") 
wld17.Parent = prt17 
wld17.Part0 = prt17 
wld17.Part1 = prt16 
wld17.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.6,0) 
local wld18 = Instance.new("Weld") 
wld18.Parent = prt18 
wld18.Part0 = prt18 
wld18.Part1 = prt17 
wld18.C0 = CFrame.fromEulerAnglesXYZ(3.14,3.14,0) * CFrame.new(0,0.9,0) 
local fengui = Instance.new("GuiMain") 
fengui.Parent = Player.PlayerGui 
fengui.Name = "manaGUI" 
local fenframe = Instance.new("Frame") 
fenframe.Parent = fengui
fenframe.BackgroundColor3 = Color3.new(255,255,255) 
fenframe.BackgroundTransparency = 1 
fenframe.BorderColor3 = Color3.new(17,17,17) 
fenframe.Size = UDim2.new(0.0500000007, 0, 0.100000001, 0)
local fentext = Instance.new("TextLabel") 
fentext.Parent = fenframe 
fentext.Text = "Mana("..mana..")" 
fentext.BackgroundTransparency = 1 
fentext.SizeConstraint = "RelativeXY" 
fentext.TextXAlignment = "Center" 
fentext.TextYAlignment = "Center" 
fentext.Position = UDim2.new(0,80,1,200) 
local fentext2 = Instance.new("TextLabel") 
fentext2.Parent = fenframe 
fentext2.Text = " " 
fentext2.BackgroundTransparency = 0 
fentext2.BackgroundColor3 = Color3.new(0,0,0) 
fentext2.SizeConstraint = "RelativeXY" 
fentext2.TextXAlignment = "Center" 
fentext2.TextYAlignment = "Center" 
fentext2.Position = UDim2.new(0,10,1,170)
fentext2.Size = UDim2.new(2.79999995,0,0.210000306,0)
local fentext3 = Instance.new("TextLabel") 
fentext3.Parent = fenframe 
fentext3.Text = " " 
fentext3.BackgroundTransparency = 0 
fentext3.BackgroundColor3 = Color3.new(1,1,0) 
fentext3.SizeConstraint = "RelativeXY" 
fentext3.TextXAlignment = "Center" 
fentext3.TextYAlignment = "Center" 
fentext3.Position = UDim2.new(0,10,1,170)
fentext3.Size = UDim2.new(mana*0.007,0,0.400000006,0)
--2.9000001, 0}, {0.450000018, 0}
local gairo = Instance.new("BodyGyro") 
gairo.Parent = nil 
gairo.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge 
gairo.P = 20e+003 
if (script.Parent.className ~= "HopperBin") then 
Tool = Instance.new("HopperBin") 
Tool.Parent = Backpack 
Tool.Name = "AeroBlade" 
script.Parent = Tool 
end 
Bin = script.Parent 
local gairo = Instance.new("BodyGyro") 
gairo.Parent = nil 
gairo.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge 
gairo.P = 20e+003 
function hideanim() 
equipped=false
wld1.Parent = prt1 
wld1.Part0 = prt1 
wld1.Part1 = Torso 
wld1.C0 = CFrame.fromEulerAnglesXYZ(0,0,-1) * CFrame.new(3,-2,-0.7) 
wld1.C1=CFrame.fromEulerAnglesXYZ(0,0,0)
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0) * CFrame.new(0,0,-0.5) 
gairo.Parent=nil
wait()
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
end 
function equipanim() 
equipped=true
wld1.Parent = prt13 
wld1.Part0 = prt13 
wld1.Part1 = RightArm
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,0,0) * CFrame.new(0,1,1) 
wld1.C1=CFrame.fromEulerAnglesXYZ(0.2,0,0)
Stance()
RWL.C0 = CFrame.new(0.5,-1.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RWL.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LWL.C0 = CFrame.new(-0.5-0.6,-1.5+0.3,-0.3) * CFrame.fromEulerAnglesXYZ(0.5,0,-0.7+0.2) 
LWL.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
--[[gairo.Parent=Head
gairo.cframe=Head.CFrame
for i=0,1,0.1 do
wait()
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57-0.3*i,3.14,-0.3*i) * CFrame.new(0,0,-0.5) 
--gairo.cframe=Torso.CFrame*CFrame.fromEulerAnglesXYZ(-0.05,-0.1,0)
end]]
end 
function Walking(speed)
walking=true
for i=0,1,speed do
wait()
RWL.C0 = CFrame.new(0.5,-1.5,0) * CFrame.fromEulerAnglesXYZ(0.5-1*i,0,0) 
RWL.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LWL.C0 = CFrame.new(-0.5-0.6,-1.5+0.3,-0.3) * CFrame.fromEulerAnglesXYZ(1*i,0,-0.7+0.2) 
LWL.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end
for i=0,1,speed do
wait()
RWL.C0 = CFrame.new(0.5,-1.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+1*i,0,0) 
RWL.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LWL.C0 = CFrame.new(-0.5-0.6,-1.5+0.3,-0.3) * CFrame.fromEulerAnglesXYZ(0.5+0.5-1*i,0,-0.7+0.2) 
LWL.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end
if walking==false then
RWL.C0 = CFrame.new(0.5,-1.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RWL.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LWL.C0 = CFrame.new(-0.5-0.6,-1.5+0.3,-0.3) * CFrame.fromEulerAnglesXYZ(0.5,0,-0.7+0.2) 
LWL.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
end
end
function Stance()
coroutine.resume(coroutine.create(function()
gairo.maxTorque = Vector3.new(math.huge,math.huge,math.huge) 
gairo.P = 10000000
--gairo.D = 2000
gairo.Parent = Torso
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,0,0) * CFrame.new(0,1,-0.7) 
wait()
while equipped==true and attack==false do
wait()
offset=(Torso.Position.y-MMouse.Hit.p.y)/60
mag=(Torso.Position-MMouse.Hit.p).magnitude/80
offset=offset/mag 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,-0.2,0.7)
--Torso.Neck.C1=necko2*CFrame.fromEulerAnglesXYZ(-offset/10,0,0) 
local pos4 = Vector3.new(MMouse.Hit.p.x,Head.Position.Y,MMouse.Hit.p.z)
gairo.cframe = CFrame.new(Torso.Position,pos4) * CFrame.fromEulerAnglesXYZ(-0.4,-0.5,0) * CFrame.new(0,0,0) --CFrame.new(Torso.Position,MMouse.Hit.p) * 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.5,0,0.4) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,1,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.5+0.2,0,0) 
--[[RWL.C0 = CFrame.new(0.5,-1.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RWL.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LWL.C0 = CFrame.new(-0.5-0.6,-1.5+0.3,-0.3) * CFrame.fromEulerAnglesXYZ(0.5,0,-0.7+0.2) 
LWL.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) ]]
end
--Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
gairo.Parent=nil
end))
end
function Sit()
attack=true
Character.Humanoid.WalkSpeed=0
gairo.Parent=nil
for i=0,1,0.1 do
wait()
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,0,0) * CFrame.new(0,1,-0.7) 
wld1.C1=CFrame.fromEulerAnglesXYZ(0.2-0.2*i,0,0)
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,-0.2+0.2*i,0.7-0.7*i)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.5-1.7*i,0,0.4-0.4*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.2*i,1-1*i,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.3+0.3*i,0,0) 
RWL.C0 = CFrame.new(0.5,-1.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RWL.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LWL.C0 = CFrame.new(-0.5-0.6+0.6*i,-1.5+0.3-0.3*i,-0.3+0.3*i) * CFrame.fromEulerAnglesXYZ(0.5-0.5*i,0,-0.5+0.5*i) 
LWL.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
end
bodpos.position=Torso.Position-Vector3.new(0,3,0)
bodpos.Parent=Torso
gairo.maxTorque = Vector3.new(math.huge,math.huge,math.huge) 
gairo.P = 10000000
--gairo.D = 2000
gairo.Parent = Torso
gairo.cframe=Torso.CFrame
for i=0,1,0.1 do
wait()
gairo.cframe=Torso.CFrame*CFrame.fromEulerAnglesXYZ(0.07*i,0,0)
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,0,0) * CFrame.new(0,1-0.5*i,-0.7+1.2*i) 
wld1.C1=CFrame.fromEulerAnglesXYZ(1.2*i,0,-0.5*i)
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.2-0.2*i,0,-0.3*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.2+1.77*i,0,0.7*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RWL.C0 = CFrame.new(0.5+0.1*i,-1.5+0.6*i,-0.7*i) * CFrame.fromEulerAnglesXYZ(1.2*i,0,0.5*i) 
RWL.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LWL.C0 = CFrame.new(-0.5-0.1*i,-1.5+0.6*i,-0.7*i) * CFrame.fromEulerAnglesXYZ(1.2*i,0,-0.5*i) 
LWL.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
end
while attack==true do
wait()
Character.Humanoid.Health = Character.Humanoid.Health + 0.1 
end
end
function UnSit()
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,0,0) * CFrame.new(0,1,-0.7) 
wld1.C1=CFrame.fromEulerAnglesXYZ(0.2,0,0)
bodpos.Parent=nil
gairo.Parent=nil
Character.Humanoid.WalkSpeed=16
attack=false
end
function Slash()
--ss(1)
equipsound(1.3) 
wld13.Part0 = LeftArm 
wld13.Part1 = prt12
wld13.C0 = CFrame.fromEulerAnglesXYZ(0,0,1.8) * CFrame.new(-1,0,0) 
wld13.C1 = CFrame.fromEulerAnglesXYZ(0.7,0,0) * CFrame.new(0,1.2,-1)
SlashEffect(prt6,0,-6,-1,0,3.14,0,BrickColor.new("Black"),1.5,1,2)
for i=0,1,0.8 do
wait()
LW.C0 = CFrame.new(-1.5-0.5*i,0.5,0) * CFrame.fromEulerAnglesXYZ(1.5,0,0.4) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.5*i,0,0.5*i) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,1,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.5+0.2,0,0) 
if wld13.Part0==LeftArm then
wld13.C0 = CFrame.fromEulerAnglesXYZ(0,0,1.8-0.2*i) * CFrame.new(-1,0,0) 
wld13.C1 = CFrame.fromEulerAnglesXYZ(0.7-0.2*i,0,0) * CFrame.new(0,1.2,-1)
end
end
local ppart = part(1,workspace,0,1,BrickColor.new("Navy blue"),"DerpPart",Vector3.new(1,1,1))
ppart.Anchored=true
ppart.CFrame=Head.CFrame*CFrame.new(0,0,-15)
SlashEffect(ppart,0,-6,-3,-1.57,math.random(-50,50),0,BrickColor.new("Black"),2,2,4)
for i=0,1,0.8 do
wait()
LW.C0 = CFrame.new(-1.5-0.5+0.5*i,0.5,0) * CFrame.fromEulerAnglesXYZ(1.5,0,0.4) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.5+0.5*i,0,0.5-0.5*i) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,1,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.5+0.2,0,0) 
--wld13.C0 = CFrame.fromEulerAnglesXYZ(0,0,1.6) * CFrame.new(-1,0,0) 
--wld13.C1 = CFrame.fromEulerAnglesXYZ(0.5,0,0) * CFrame.new(0,2,-1)
end
wait(0.1)
wld13.Part0 = prt13 
wld13.Part1 = prt12 
wld13.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,1.2,0) 
wld13.C1 = CFrame.fromEulerAnglesXYZ(0,0,0)
wait(1)
ppart.Parent=nil
end
function SlashTwo()
coroutine.resume(coroutine.create(function()
equipsound(1.3) 
wld13.Part0 = LeftArm 
wld13.Part1 = prt12
wld13.C0 = CFrame.fromEulerAnglesXYZ(0,0,1.8) * CFrame.new(-1,0,0) 
wld13.C1 = CFrame.fromEulerAnglesXYZ(0.7,0,0) * CFrame.new(0,1.2,-1)
SlashEffect(prt6,0,-6,-1,0,3.14,0,BrickColor.new("Black"),1.5,1,2)
for i=0,1,0.8 do
wait()
LW.C0 = CFrame.new(-1.5-0.5*i,0.5,0) * CFrame.fromEulerAnglesXYZ(1.5,0,0.4) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.5*i,0,0.5*i) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,1,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.5+0.2,0,0) 
if wld13.Part0==LeftArm then
wld13.C0 = CFrame.fromEulerAnglesXYZ(0,0,1.8-0.2*i) * CFrame.new(-1,0,0) 
wld13.C1 = CFrame.fromEulerAnglesXYZ(0.7-0.2*i,0,0) * CFrame.new(0,1.2,-1)
end
end
local ppart = part(1,workspace,0,1,BrickColor.new("Navy blue"),"DerpPart",Vector3.new(1,1,1))
ppart.Anchored=true
ppart.CFrame=Head.CFrame*CFrame.new(0,5,-30)
SlashEffect(ppart,0,-8,-3,-1.57,-0.4,0,BrickColor.new("Black"),2.5,1,5)
SlashEffect(ppart,0,-8,-3,-1.57,0.4,0,BrickColor.new("Black"),2.5,1,5)
for i=0,1,0.8 do
wait()
LW.C0 = CFrame.new(-1.5-0.5+0.5*i,0.5,0) * CFrame.fromEulerAnglesXYZ(1.5,0,0.4) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.5+0.5*i,0,0.5-0.5*i) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,1,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.5+0.2,0,0) 
--wld13.C0 = CFrame.fromEulerAnglesXYZ(0,0,1.6) * CFrame.new(-1,0,0) 
--wld13.C1 = CFrame.fromEulerAnglesXYZ(0.5,0,0) * CFrame.new(0,2,-1)
end
wait(0.1)
wld13.Part0 = prt13 
wld13.Part1 = prt12 
wld13.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,1.2,0) 
wld13.C1 = CFrame.fromEulerAnglesXYZ(0,0,0)
wait(1)
ppart.Parent=nil
end))
end
function Punch()
attack=true
for i=0,1,0.15 do
wait()
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,-0.2+0.2*i,0.7-0.7*i)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.5-2*i,0,0.4-0.8*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,1-1*i,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.5+0.2,0,0) 
RWL.C0 = CFrame.new(0.5,-1.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RWL.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LWL.C0 = CFrame.new(-0.5-0.6+0.6*i,-1.5+0.3-0.3*i,-0.3+0.3*i) * CFrame.fromEulerAnglesXYZ(0.5-0.5*i,0,-0.5+0.5*i) 
LWL.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
end
ss(1.2)
local vel = Instance.new("BodyGyro") 
vel.Parent = Head
vel.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge 
vel.P = 20e+003 
vel.cframe=Head.CFrame
con1=LeftArm.Touched:connect(function(hit) Damagefunc2(hit,5,1) punched=true end) 
for i=0,1,0.15 do
wait()
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,1.57*i)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+2.07*i,0,-0.4-1.17*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0.3*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.5+0.2,0,0) 
RWL.C0 = CFrame.new(0.5,-1.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RWL.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LWL.C0 = CFrame.new(-0.5,-1.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LWL.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
end
con1:disconnect()
for i=0,1,0.15 do
wait()
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,1.57-1.57*i)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57-0.07*i,0,-1.57+1.97*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,1*i,0.3-0.3*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.5+0.2,0,0) 
RWL.C0 = CFrame.new(0.5,-1.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RWL.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LWL.C0 = CFrame.new(-0.5-0.6*i,-1.5+0.3*i,-0.3*i) * CFrame.fromEulerAnglesXYZ(0.5*i,0,-0.5*i) 
LWL.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
end
wait()
vel.Parent=nil
attack=false
coroutine.resume(coroutine.create(function()
wait(0.2)
punched=false
end))
end
function Kick()
attack=true
for i=0,1,0.15 do
wait()
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,-0.2+0.2*i,0.7-0.7*i)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.5-1.9*i,0,0.4-0.4*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,1-1*i,0.3*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.5+0.2+0.3*i,0,0) 
RWL.C0 = CFrame.new(0.5,-1.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RWL.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LWL.C0 = CFrame.new(-0.5-0.6+0.6*i,-1.5+0.3-0.3*i,-0.3+0.3*i) * CFrame.fromEulerAnglesXYZ(0.5-0.5*i,0,-0.5+0.5*i) 
LWL.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
end
ss(1)
local vel = Instance.new("BodyGyro") 
vel.Parent = Head
vel.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge 
vel.P = 20e+003 
vel.cframe=Head.CFrame
local vel2 = Instance.new("BodyVelocity")
vel2.Parent = Torso
vel2.maxForce = Vector3.new(4e+005,4e+005,4e+005)*2
vel2.velocity = Head.CFrame.lookVector * 40
con1=RightLeg.Touched:connect(function(hit) Damagefunc2(hit,10,1) kicked=true end) 
for i=0,1,0.15 do
wait()
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0.5*i,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.4-0.3*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.3*i,0,0.3) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RWL.C0 = CFrame.new(0.5,-1.5+0.3*i,-0.5*i) * CFrame.fromEulerAnglesXYZ(1*i,0,0) 
RWL.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LWL.C0 = CFrame.new(-0.5,-1.5,0) * CFrame.fromEulerAnglesXYZ(-0.5*i,0,0) 
LWL.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
end
con1:disconnect()
vel2.velocity = Head.CFrame.lookVector * -40
for i=0,1,0.15 do
wait()
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0.5-0.5*i,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.4-0.3+0.3*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.3+0.3*i,0,0.3) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RWL.C0 = CFrame.new(0.5,-1.5+0.3-0.3*i,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(1-1*i,0,0) 
RWL.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LWL.C0 = CFrame.new(-0.5,-1.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+0.5*i,0,0) 
LWL.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
end
vel2.Parent=nil
for i=0,1,0.15 do
wait()
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,-0.2*i,0.7*i)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.4+1.9*i,0,0.4*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,1*i,0.3) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.3*i,0,0) 
RWL.C0 = CFrame.new(0.5,-1.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RWL.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LWL.C0 = CFrame.new(-0.5-0.6*i,-1.5+0.3*i,-0.3*i) * CFrame.fromEulerAnglesXYZ(0.5*i,0,-0.5*i) 
LWL.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
end
wait()
vel.Parent=nil
attack=false
coroutine.resume(coroutine.create(function()
wait(0.2)
kicked=false
end))
end
function WinrarDash()
coroutine.resume(coroutine.create(function()
local LastPoint = Torso.CFrame
for i=0,1,0.1 do
wait()
        local Point = Torso.CFrame
        effect2("Black",0,LastPoint,Point)
        LastPoint = Point
end
end))
attack=true
local vel = Instance.new("BodyGyro") 
vel.Parent = Head
vel.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge 
vel.P = 20e+003 
vel.cframe=Head.CFrame
local vel2 = Instance.new("BodyVelocity")
vel2.Parent = Torso
vel2.maxForce = Vector3.new(4e+005,4e+005,4e+005)*2
vel2.velocity = Head.CFrame.lookVector * -150  + (Vector3.new(0,1,0) * -37)
wait(0.15)
vel2.Parent=nil
for i=1,8 do
wait(math.random()/7)
SlashTwo()
end
vel.Parent=nil
attack=false
end
function DashForward()
wait()
--abscond(4) 
local vel = Instance.new("BodyVelocity")
vel.Parent = Torso
vel.maxForce = Vector3.new(4e+005,4e+005,4e+005)*2
vel.velocity = Head.CFrame.lookVector * 250  + (Vector3.new(0,1,0) * 63)
local LastPoint = Torso.CFrame
coroutine.resume(coroutine.create(function()
for i=0,1,0.1 do
wait()
if holddash==true then
        local Point = Torso.CFrame
        effect2("Black",0,LastPoint,Point)
        LastPoint = Point
end
end
end))
for i=0,1,0.3 do
wait() 
vel.velocity = Head.CFrame.lookVector * 250  + (Vector3.new(0,1,0) * 63)
--[[LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.3,0.3,-0.3) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.2,0.2,0.5) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) ]]
end 
vel.Parent=nil
end
function DashBackwards()
wait()
--abscond(2) 
local vel = Instance.new("BodyVelocity")
vel.Parent = Torso
vel.maxForce = Vector3.new(4e+005,4e+005,4e+005)*2
vel.velocity = Head.CFrame.lookVector * -250  + (Vector3.new(0,1,0) * -63)
print(vel.velocity)
local LastPoint = Torso.CFrame
coroutine.resume(coroutine.create(function()
for i=0,1,0.1 do
wait()
if holddash==true then
        local Point = Torso.CFrame
        effect2("Black",0,LastPoint,Point)
        LastPoint = Point
end
end
end))
for i=0,1,0.3 do
wait() 
vel.velocity = Head.CFrame.lookVector * -250  + (Vector3.new(0,1,0) * -63)
--[[LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.3,0.3,-0.3) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.2,0.2,0.5) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) ]]
end 
vel.Parent=nil
end
function CarnageDash()
--attack=true
wait()
local vel = Instance.new("BodyVelocity")
vel.Parent = Torso
vel.maxForce = Vector3.new(4e+005,4e+005,4e+005)*2
vel.velocity = Head.CFrame.lookVector * 150  + (Vector3.new(0,1,0) * 37)
coroutine.resume(coroutine.create(function()
while dashing==true do
wait()
Walking(0.15)
end
end))
while dashing==true do
wait(0.08)
vel.velocity = Head.CFrame.lookVector * 150  + (Vector3.new(0,1,0) * 37)
coroutine.resume(coroutine.create(function()
--ss(1)
equipsound(1.3) 
--for i=1,2 do
wld13.Part0 = LeftArm 
wld13.Part1 = prt12
wld13.C0 = CFrame.fromEulerAnglesXYZ(0,0,1.8) * CFrame.new(-1,0,0) 
wld13.C1 = CFrame.fromEulerAnglesXYZ(0.7,0,0) * CFrame.new(0,1.2,-1)
SlashEffect(prt6,0,-6,-1,0,3.14,0,BrickColor.new("Black"),1.5,1,2)
for i=0,1,0.8 do
wait()
LW.C0 = CFrame.new(-1.5-0.5*i,0.5,0) * CFrame.fromEulerAnglesXYZ(1.5,0,0.4) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.5*i,0,0.5*i) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,1,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.5+0.2,0,0) 
if wld13.Part0==LeftArm then
wld13.C0 = CFrame.fromEulerAnglesXYZ(0,0,1.8-0.2*i) * CFrame.new(-1,0,0) 
wld13.C1 = CFrame.fromEulerAnglesXYZ(0.7-0.2*i,0,0) * CFrame.new(0,1.2,-1)
end
end
local ppart = part(1,workspace,0,1,BrickColor.new("Navy blue"),"DerpPart",Vector3.new(1,1,1))
ppart.Anchored=true
ppart.CFrame=Head.CFrame*CFrame.new(0,0,-5)*CFrame.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))
coroutine.resume(coroutine.create(function(PART)
wait(1)
PART.Parent=nil
end),ppart)
SlashEffect(ppart,0,-6,-3,-1.57,math.random(-50,50),0,BrickColor.new("Black"),2,2,4)
for i=0,1,0.8 do
wait()
LW.C0 = CFrame.new(-1.5-0.5+0.5*i,0.5,0) * CFrame.fromEulerAnglesXYZ(1.5,0,0.4) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.5+0.5*i,0,0.5-0.5*i) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,1,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.5+0.2,0,0) 
--wld13.C0 = CFrame.fromEulerAnglesXYZ(0,0,1.6) * CFrame.new(-1,0,0) 
--wld13.C1 = CFrame.fromEulerAnglesXYZ(0.5,0,0) * CFrame.new(0,2,-1)
--end
end
end))
end
vel.Parent=nil
wld13.Part0 = prt13 
wld13.Part1 = prt12 
wld13.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,1.2,0) 
wld13.C1 = CFrame.fromEulerAnglesXYZ(0,0,0)
--attack=false
end
function DownwardSlash()
attack=true
wait()
local vel = Instance.new("BodyVelocity")
vel.Parent = Torso
vel.maxForce = Vector3.new(4e+005,4e+005,4e+005)*2
vel.velocity = Vector3.new(0,1,0) * 40  
gairo.maxTorque = Vector3.new(math.huge,math.huge,math.huge) 
gairo.P = 10000000
--gairo.D = 2000
gairo.Parent = Torso
gairo.cframe=Torso.CFrame
for i=0,1,0.1 do
wait()
--gairo.cframe=Torso.CFrame*CFrame.fromEulerAnglesXYZ(0,0,0.3*i)
gairo.cframe=Torso.CFrame*CFrame.fromEulerAnglesXYZ(-0.1*i,0,0.2*i)
end
vel.velocity = Vector3.new(0,1,0) * 0 
for i=1,20 do
wait(0.05)
coroutine.resume(coroutine.create(function()
Slash()
end))
end
vel.Parent=nil
gairo.Parent=nil
attack=false
end
function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game.Workspace:FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 
function MMMAGIC(part,x1,y1,z1,x2,y2,z2,color) 
        local msh1 = Instance.new("BlockMesh") 
        msh1.Scale = Vector3.new(0.5,0.5,0.5) 
        S=Instance.new("Part")
        S.Name="Effect"
        S.formFactor=0
        S.Size=Vector3.new(x1,y1,z1)
        S.BrickColor=color
        S.Reflectance = 0
        S.TopSurface=0
        S.BottomSurface=0
        S.Transparency=0
        S.Anchored=true
        S.CanCollide=false
        S.CFrame=part.CFrame*CFrame.new(x2,y2,z2)*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
        S.Parent=Character
        msh1.Parent = S
        coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.1,0.1,0.1) Part.CFrame=Part.CFrame*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 
function UltimaMMMAGIC(part,x1,y1,z1,x2,y2,z2,color) 
        local msh1 = Instance.new("BlockMesh") 
        msh1.Scale = Vector3.new(x1,y1,z1) 
        S=Instance.new("Part")
        S.Name="Effect"
        S.formFactor=0
        S.Size=Vector3.new(1,1,1)
        S.BrickColor=color
        S.Reflectance = 0
        S.TopSurface=0
        S.BottomSurface=0
        S.Transparency=0
        S.Anchored=true
        S.CanCollide=false
        S.CFrame=part.CFrame*CFrame.new(x2,y2,z2)*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
        S.Parent=Character
        msh1.Parent = S
        coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.1,0.1,0.1) Part.CFrame=Part.CFrame*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 
function MOREMAGIX(part,cframe,x,y,z,color) 
                p2=Instance.new("Part")
                p2.Name="Blast"
                p2.TopSurface=0
                p2.BottomSurface=0
                p2.CanCollide=false
                p2.Anchored=true
                p2.BrickColor=color
                p2.Size=Vector3.new(x,y,z)
                p2.formFactor="Symmetric"
                p2.CFrame=part.CFrame*CFrame.new(0,cframe,0)
                p2.Parent=workspace
                m=Instance.new("BlockMesh")
                m.Parent=p2
                m.Name="BlastMesh"
                coroutine.resume(coroutine.create(function(part,dir) for loll=1, 15 do part.BlastMesh.Scale=part.BlastMesh.Scale-Vector3.new(.09,.09,.09) part.Transparency=loll/20 part.CFrame=part.CFrame*CFrame.new(dir)*CFrame.fromEulerAnglesXYZ(math.random(-100,100)/100, math.random(-100,100)/100, math.random(-100,100)/100) wait() end part.Parent=nil end),p2,Vector3.new(math.random(-10,10)/10,math.random(-10,10)/10,math.random(-10,10)/10))
end 
function EVENMOARMAGIX(part,x1,y1,z1,x2,y2,z2,x3,y3,z3,color) 
        local msh1 = Instance.new("SpecialMesh") 
        msh1.Scale = Vector3.new(0.5,0.5,0.5) 
        msh1.MeshType = "Sphere" 
        S=Instance.new("Part")
        S.Name="Effect"
        S.formFactor=0
        S.Size=Vector3.new(x1,y1,z1)
        S.BrickColor=color
        if Style == "WingBlade" and element == "Dark" then 
        S.BrickColor=BrickColor.new("Black") 
        end 
        S.Reflectance = 0
        S.TopSurface=0
        S.BottomSurface=0
        S.Transparency=0
        S.Anchored=true
        S.CanCollide=false
        S.CFrame=part.CFrame*CFrame.new(x2,y2,z2)*CFrame.fromEulerAnglesXYZ(x3,y3,z3)
        S.Parent=Character
        msh1.Parent = S
        coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.15,0.3,0.15) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 
function WaveEffect(part,x1,y1,z1,x2,y2,z2,x3,y3,z3,color) 
        local msh1 = Instance.new("SpecialMesh") 
        msh1.Scale = Vector3.new(x1,y1,z1) 
        msh1.MeshId = "http://www.roblox.com/asset/?id=20329976" 
        S=Instance.new("Part")
        S.Name="Effect"
        S.formFactor=0
        S.Size=Vector3.new(1,1,1)
        S.BrickColor=color
        S.Reflectance = 0
        S.TopSurface=0
        S.BottomSurface=0
        S.Transparency=0
        S.Anchored=true
        S.CanCollide=false
        S.CFrame=part.CFrame*CFrame.new(x2,y2,z2)*CFrame.fromEulerAnglesXYZ(x3,y3,z3)
        S.Parent=Character
        msh1.Parent = S
        coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.15,0.3,0.15) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 
function BlastEffect(part,x1,y1,z1,x2,y2,z2,x3,y3,z3,color) 
        local msh1 = Instance.new("SpecialMesh") 
        msh1.Scale = Vector3.new(x1,y1,z1) 
        msh1.MeshId = "http://www.roblox.com/asset/?id=1323306" 
        S=Instance.new("Part")
        S.Name="Effect"
        S.formFactor=0
        S.Size=Vector3.new(1,1,1)
        S.BrickColor=color
        S.Reflectance = 0
        S.TopSurface=0
        S.BottomSurface=0
        S.Transparency=0
        S.Anchored=true
        S.CanCollide=false
        S.CFrame=part.CFrame*CFrame.new(x2,y2,z2)*CFrame.fromEulerAnglesXYZ(x3,y3,z3)
        S.Parent=Character
        msh1.Parent = S
        coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.15,0.3,0.15) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 
LastPoint = Torso
function effect(Color,Ref,LP,P1,returnn)
local effectsmsh = Instance.new("CylinderMesh")
effectsmsh.Scale = Vector3.new(1,1,1)
effectsmsh.Name = "Mesh"
local effectsg = Instance.new("Part")
effectsg.formFactor = 3
effectsg.CanCollide = false
effectsg.Name = "Eff"
effectsg.Locked = true
effectsg.Anchored = true
effectsg.Transparency=0.7
effectsg.Size = Vector3.new(0.5,1,0.5)
effectsg.Parent = workspace
effectsmsh.Parent = effectsg
effectsg.BrickColor = BrickColor.new(Color)
effectsg.Reflectance = Ref
local point1 = P1
local mg = (LP.p - point1.p).magnitude
effectsg.Size = Vector3.new(0.5,mg,0.5)
effectsg.CFrame = CFrame.new((LP.p+point1.p)/2,point1.p) * CFrame.Angles(math.rad(90),0,0)
if returnn then return effectsg end
coroutine.resume(coroutine.create(function()
con1=effectsg.Touched:connect(function(hit) Damagefunc2(hit,5,1) end) 
        local c = game.Workspace:GetChildren();
        for i = 1, #c do
                local hum = c[i]:findFirstChild("Humanoid")
                if hum ~= nil and hum.Health ~= 0 then
                local head = c[i]:findFirstChild("Head");
                if head ~= nil then
                local targ = head.Position - effectsg.Position;
                local mag = targ.magnitude;
                if mag <= 6 then 
                Damagefunc1(head,5,1) 
                end 
                end 
                end 
        end 
if not returnn then
for i = 0 , 1 , 0.2 do
wait()
local dir = effectsg.CFrame.lookVector+Vector3.new(0,0,0)
local hit2,pos = rayCast(effectsg.Position,effectsg.CFrame.lookVector,10,Character)
if hit2 ~= nil then
if hit2.Parent:FindFirstChild("Humanoid") ~= nil then
hum = hit2.Parent.Humanoid
Damagefunc1(hit2,5,5)
end
end
effectsmsh.Scale = Vector3.new(1-1*i,1,1-1*i)
end
wait()
effectsg.Parent = nil
end
end))
end
function effect2(Color,Ref,LP,P1,returnn)
local effectsmsh = Instance.new("BlockMesh")
effectsmsh.Scale = Vector3.new(1,1,1)
effectsmsh.Name = "Mesh"
local effectsg = Instance.new("Part")
effectsg.formFactor = 3
effectsg.CanCollide = false
effectsg.Name = "Eff"
effectsg.Locked = true
effectsg.Anchored = true
effectsg.Transparency=0.4
effectsg.Size = Vector3.new(1,1,1)
effectsg.Parent = workspace
effectsmsh.Parent = effectsg
effectsg.BrickColor = BrickColor.new(Color)
effectsg.Reflectance = Ref
local point1 = P1
local mg = (LP.p - point1.p).magnitude
effectsg.Size = Vector3.new(5,mg,5)
effectsg.CFrame = CFrame.new((LP.p+point1.p)/2,point1.p) * CFrame.Angles(math.rad(90),0,0)
if returnn then return effectsg end
coroutine.resume(coroutine.create(function()
con1=effectsg.Touched:connect(function(hit) Damagefunc2(hit,5,1) end) 
        local c = game.Workspace:GetChildren();
        for i = 1, #c do
                local hum = c[i]:findFirstChild("Humanoid")
                if hum ~= nil and hum.Health ~= 0 then
                local head = c[i]:findFirstChild("Head");
                if head ~= nil then
                local targ = head.Position - effectsg.Position;
                local mag = targ.magnitude;
                if mag <= 6 then 
                Damagefunc1(head,5,1) 
                end 
                end 
                end 
        end 
if not returnn then
for i = 0 , 1 , 0.2 do
wait()
effectsg.Transparency=effectsg.Transparency+0.1
end
wait()
effectsg.Parent = nil
end
end))
end
function SlashEffect(part,x1,y1,z1,x2,y2,z2,color,size,power,repeats) 
        p2=Instance.new("Part")
        p2.Name="Blast"
        p2.TopSurface=0
        p2.BottomSurface=0
        p2.CanCollide=false
        p2.Anchored=true
        p2.BrickColor=color
        p2.Size=Vector3.new(2,2,2)
        p2.formFactor="Symmetric"
        p2.CFrame=part.CFrame*CFrame.fromEulerAnglesXYZ(x2,y2,z2)*CFrame.new(x1,y1,z1)
        p2.Parent=workspace
        p2.Transparency=1
        m=Instance.new("BlockMesh")
        m.Parent=p2
        m.Name="BlastMesh"
        local LastPoint = p2.CFrame
        coroutine.resume(coroutine.create(function(part,dir) 
        for loll=1, repeats do 
        part.BlastMesh.Scale=part.BlastMesh.Scale-Vector3.new(.09,.09,.09) 
        part.CFrame=part.CFrame*CFrame.new(0,2.5*size,0)*CFrame.fromEulerAnglesXYZ(0.6*power,0,0) 
        local Point = part.CFrame
        effect("White",0.5,LastPoint,Point)
        LastPoint = Point
        wait(0) 
        end 
        part.Parent=nil 
        end),p2,0)
end 
--SlashEffect(workspace.Fenrier.Torso,0,-6,-3,-1.57,math.random(-1,1)+math.random(),0,BrickColor.new("Black"),1.5,1.5)
function ss(pitch) 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "rbxasset://sounds\\swordslash.wav" 
--SlashSound.SoundId = "http://roblox.com/asset/?id=10209645" 
SlashSound.Parent = workspace 
SlashSound.Volume = .5 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 
function equipsound(pitch) 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "rbxasset://sounds\\unsheath.wav" 
SlashSound.Parent = workspace 
SlashSound.Volume = .3 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 
function abscond(pitch) 
local SlashSound = Instance.new("Sound") 
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
function magicsound(pitch) 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2248511" 
SlashSound.Parent = workspace 
SlashSound.Volume = .5 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 
function critsound(pitch) 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2801263" 
SlashSound.Parent = workspace 
SlashSound.Volume = .7 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 
function spikesound(pitch) 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=3264793" 
SlashSound.Parent = workspace 
SlashSound.Volume = .7 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
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
        if h~=nil and hit.Parent.Name~=Character.Name and hit.Parent:FindFirstChild("Torso")~=nil then
                if mana < 400 then 
                mana = mana + math.random(10,20)  
                end 
                if mana > 400 then 
                mana = 400 
                end 
                Damage=Damage
--[[                if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
                        return
                end]]
                        c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=game.Players.LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
--                        print(c.Value)
                if math.random(0,99)+math.random()<=5 then
                        CRIT=true
                        Damage=Damage*1.5
--[[                        Knockback=Knockback*2
                        r=Instance.new("BodyAngularVelocity")
                        r.P=3000
                        r.maxTorque=Vector3.new(500000000,50000000000,500000000)*50000
                        r.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
                        r.Parent=hit.Parent.Torso]]
                        critsound(2) 
        
                end
                Damage=Damage+math.random(0,10)
--                Blood(hit.CFrame*CFrame.new(math.random(-10,10)/10,math.random(-10,10)/10,0),math.floor(Damage/2))
                h.Health=h.Health-Damage
                showDamage(hit.Parent,Damage,.5)
                vp=Instance.new("BodyVelocity")
                vp.P=500
                vp.maxForce=Vector3.new(math.huge,0,math.huge)
--                vp.velocity=Character.Torso.CFrame.lookVector*Knockback
                vp.velocity=Torso.CFrame.lookVector*Knockback+Torso.Velocity/1.05
                if Knockback>0 then
                        vp.Parent=hit.Parent.Torso
                end
                game:GetService("Debris"):AddItem(vp,.25)
--[[                r=Instance.new("BodyAngularVelocity")
                r.P=3000
                r.maxTorque=Vector3.new(500000000,50000000000,500000000)*50000
                r.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
                r.Parent=hit.Parent.Torso]]
                game:GetService("Debris"):AddItem(r,.5)
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
Damagefunc1=function(hit,Damage,Knockback)
        if hit.Parent==nil then
                return
        end
--        CPlayer=Bin 
        h=hit.Parent:FindFirstChild("Humanoid")
        if h~=nil and hit.Parent.Name~=Character.Name and hit.Parent:FindFirstChild("Torso")~=nil then
        if attackdebounce == false then 
        attackdebounce = true 
        coroutine.resume(coroutine.create(function() 
        wait(0.1) 
        attackdebounce = false 
        end)) 
                Damage=Damage
--[[                if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
                        return
                end]]
--                        print("NOPE.AVI")
                if math.random(0,99)+math.random()<=5 then
                        CRIT=true
                        Damage=Damage*1.5
--[[                        Knockback=Knockback*2
                        r=Instance.new("BodyAngularVelocity")
                        r.P=3000
                        r.maxTorque=Vector3.new(500000000,50000000000,500000000)*50000
                        r.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
                        r.Parent=hit.Parent.Torso]]
        
                end
                Damage=Damage+math.random(0,10)
--                Blood(hit.CFrame*CFrame.new(math.random(-10,10)/10,math.random(-10,10)/10,0),math.floor(Damage/2))
                h:TakeDamage(Damage)
                showDamage(hit.Parent,Damage,.5)
                vp=Instance.new("BodyVelocity")
                vp.P=500
                vp.maxForce=Vector3.new(math.huge,0,math.huge)
--                vp.velocity=Character.Torso.CFrame.lookVector*Knockback
                vp.velocity=Torso.CFrame.lookVector*Knockback+Torso.Velocity/1.05
                if Knockback>0 then
                        vp.Parent=hit.Parent.Torso
                end
                game:GetService("Debris"):AddItem(vp,.25)
--[[                r=Instance.new("BodyAngularVelocity")
                r.P=3000
                r.maxTorque=Vector3.new(500000000,50000000000,500000000)*50000
                r.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
                r.Parent=hit.Parent.Torso
                game:GetService("Debris"):AddItem(r,.5)]]
                CRIT=false
                hitDeb=true
                AttackPos=6
        end
        end 
end
Damagefunc2=function(hit,Damage,Knockback)
        if hit.Parent==nil then
                return
        end
--        CPlayer=Bin 
        h=hit.Parent:FindFirstChild("Humanoid")
        if h~=nil and hit.Parent.Name~=Character.Name and hit.Parent:FindFirstChild("Torso")~=nil then
        if attackdebounce == false then 
        attackdebounce = true 
        coroutine.resume(coroutine.create(function() 
        wait(0.1) 
        attackdebounce = false 
        end)) 
                Damage=Damage
--[[                if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
                        return
                end]]
--                        print("NOPE.AVI")
                if math.random(0,99)+math.random()<=5 then
                        CRIT=true
                        Damage=Damage*1.5
--[[                        Knockback=Knockback*2
                        r=Instance.new("BodyAngularVelocity")
                        r.P=3000
                        r.maxTorque=Vector3.new(500000000,50000000000,500000000)*50000
                        r.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
                        r.Parent=hit.Parent.Torso]]
        
                end
                Damage=Damage+math.random(0,10)
--                Blood(hit.CFrame*CFrame.new(math.random(-10,10)/10,math.random(-10,10)/10,0),math.floor(Damage/2))
                h:TakeDamage(Damage)
                showDamage(hit.Parent,Damage,.5)
                vp=Instance.new("BodyVelocity")
                vp.P=500
                vp.maxForce=Vector3.new(math.huge,0,math.huge)
--                vp.velocity=Character.Torso.CFrame.lookVector*Knockback
                vp.velocity=Torso.CFrame.lookVector*Knockback
                if Knockback>0 then
                        vp.Parent=hit.Parent.Torso
                end
                game:GetService("Debris"):AddItem(vp,2)
--[[                r=Instance.new("BodyAngularVelocity")
                r.P=3000
                r.maxTorque=Vector3.new(500000000,50000000000,500000000)*50000
                r.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
                r.Parent=hit.Parent.Torso
                game:GetService("Debris"):AddItem(r,.5)]]
                CRIT=false
                hitDeb=true
                AttackPos=6
        end
        end 
end
showDamage=function(Char,Dealt,du)
        m=Instance.new("Model")
        m.Name=tostring(Dealt)
        h=Instance.new("Humanoid")
        h.Health=0
        h.MaxHealth=0
        h.Parent=m
        c=Instance.new("Part")
        c.Transparency=0
        c.BrickColor=BrickColor:Red()
        if CRIT==true then
                c.BrickColor=BrickColor.new("Really red")
        end
        c.Name="Head"
        c.TopSurface=0
        c.BottomSurface=0
        c.formFactor="Plate"
        c.Size=Vector3.new(1,.4,1)
        ms=Instance.new("CylinderMesh")
        ms.Scale=Vector3.new(.8,.8,.8)
        if CRIT==true then
                ms.Scale=Vector3.new(1.25,1.5,1.25)
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
hold = false 
function ob1d(mouse) 
if attack == true then return end 
hold = true 
Slash()
--[[if combo == 0 then 
combo = 1 
onehit() 
coroutine.resume(coroutine.create(function()
wait(0.5) 
if attack == false then 
combo = 0 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end)) 
elseif combo == 1 then 
combo = 2 
twohit() 
coroutine.resume(coroutine.create(function()
wait(0.5) 
if attack == false then 
combo = 0 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end)) 
elseif combo == 2 then 
combo = 3 
threehit() 
wait(0.5) 
combo = 0 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end ]]
end 
function ob1u(mouse) 
hold = false 
end 
buttonhold = false 
function Key(key,mouse) 
if key=="k" then
if sitting==false then
sitting=true
normattack=true
Sit()
elseif sitting==true then
sitting=false
UnSit()
normattack=false
end
end
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
if normattack==true then return end 
while act.key["w"] == true or act.key["a"] == true or act.key["s"] == true or act.key["d"] == true do
Walking(0.1)
wait()
end
walking = false 
Stance()
end
if attack == true then return end 
if key == "y" then 
holddash=true
DashForward()
end 
if key == "h" then 
holddash=true
DashBackwards()
end 
if key=="g" then
dashing=true
CarnageDash()
end
if key=="q" then
DownwardSlash()
end
if punched==true then
if key=="c" then
normattack=true
WinrarDash()
normattack=false
end
elseif kicked==true then
if key=="z" then
normattack=true
normattack=false
end
else
if key=="z" then
normattack=true
Punch()
normattack=false
end
if key=="x" then
normattack=true
Kick()
normattack=false
end
end
--[[if key=="c" then
normattack=true
WinrarDash()
normattack=false
end]]
RWL.C0 = CFrame.new(0.5,-1.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RWL.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LWL.C0 = CFrame.new(-0.5-0.6,-1.5+0.3,-0.3) * CFrame.fromEulerAnglesXYZ(0.5,0,-0.7+0.2) 
LWL.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
Stance()
end 
function Key2(key,mouse) 
pcall(function() act.key[key:lower()] = false end)
if key=="f" then
holddash=false
end
if key=="g" then
dashing=false
end
end 
function s(mouse) 
mouse.Button1Down:connect(function() ob1d(mouse) end) 
mouse.Button1Up:connect(function() ob1u(mouse) end) 
mouse.KeyDown:connect(function(key) Key(key,mouse) end) 
mouse.KeyUp:connect(function(key) Key2(key,mouse) end) 
--mouse.KeyDown:connect(key,mouse) 
--mouse.KeyUp:connect(key2,mouse) 
MMouse=mouse
player = Player 
ch = Character 
RSH = ch.Torso["Right Shoulder"] 
LSH = ch.Torso["Left Shoulder"] 
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
RHP = ch.Torso["Right Hip"] 
LHP = ch.Torso["Left Hip"] 
-- 
RWL.Part0 = ch.Torso 
RWL.C0 = CFrame.new(0, -1.5, 0) --* CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5) 
RWL.C1 = CFrame.new(-0.5, 0.5, 0) 
RWL.Part1 = ch["Right Leg"] 
RWL.Parent = ch.Torso 
--_G.R = RW 
-- 
LWL.Part0 = ch.Torso 
LWL.C0 = CFrame.new(0, -1.5, 0) --* CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8) 
LWL.C1 = CFrame.new(0.5, 0.5, 0) 
LWL.Part1 = ch["Left Leg"] 
LWL.Parent = ch.Torso 
--_G.L = LW 
-- 
equipanim() 
end 
function ds(mouse) 
hideanim() 
RW.Parent = nil 
LW.Parent = nil 
RWL.Parent = nil 
LWL.Parent = nil 
RSH.Parent = player.Character.Torso 
LSH.Parent = player.Character.Torso 
RHP.Parent = player.Character.Torso 
LHP.Parent = player.Character.Torso 
end 
Bin.Selected:connect(s) 
Bin.Deselected:connect(ds) 
--[[function onRunning(speed)
if attack == true then return end 
        if speed>0 then 
walking = true 
for i = 0,1,0.1 do 
wait() 
if attack == false then 
--Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 
        else 
walking = false 
for i = 0,1,0.1 do 
wait() 
if attack == false then 
--Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end
end 
        end 
end 
Character.Humanoid.Running:connect(onRunning) ]]
local BladeHealth=Character.Humanoid.MaxHealth/2
coroutine.resume(coroutine.create(function()
for i=0,1,0.1 do
wait()
Character.Humanoid.Maxhealth=BladeHealth
end 
end))
while true do 
wait(0)  
fentext3.Size = UDim2.new(mana*0.007,0,0.200000006,0)
fentext.Text = "Mana("..mana..")" 
fentext3.BackgroundColor3 = Color3.new(1,1,1) 
end 
