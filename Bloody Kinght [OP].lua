Player=game:GetService("Players").LocalPlayer
Character=Player.Character 
PlayerGui=Player.PlayerGui
Backpack=Player.Backpack 
Torso=Character.Torso 
Head=Character.Head 
Humanoid=Character.Humanoid
m=Instance.new('Model',Character)
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
local gun=false
local shoot=false
player=nil 
mana=0
local CurrentMode = "Unsheathed"
plr = game.Players.LocalPlayer
asdasd = plr.Name
ws = game.Workspace[asdasd]
Mouse = Player:GetMouse()
--NFSBOYLOL EDIT
Player.CanLoadCharacterAppearance = false
Character.Humanoid.MaxHealth = math.huge
Character.Humanoid.JumpPower = 100
Character.Humanoid.WalkSpeed = (90)
function clearshirt() for i,v in pairs(Player:GetChildren()) do
	if v:IsA("Shirt") or v:IsA("Pants") or v:IsA("Hat") then v:remove()
	end
end
end
-------------------------------
p = game.Players.LocalPlayer
char = p.Character
local char = p.Character
torso = char.Torso
neck = char.Torso.Neck
hum = char.Humanoid

CV="Really red"

local txt = Instance.new("BillboardGui", char)
txt.Adornee = char .Head
txt.Name = "_status"
txt.Size = UDim2.new(2, 0, 1.2, 0)
txt.StudsOffset = Vector3.new(-9, 8, 0)
local text = Instance.new("TextLabel", txt)
text.Size = UDim2.new(10, 0, 7, 0)
text.FontSize = "Size24"
text.TextScaled = true
text.TextTransparency = 0
text.BackgroundTransparency = 1 
text.TextTransparency = 0
text.TextStrokeTransparency = 0
text.Font = "SciFi"
text.TextStrokeColor3 = Color3.new(0,0,0)

v=Instance.new("Part")
v.Name = "ColorBrick"
v.Parent=p.Character
v.FormFactor="Symmetric"
v.Anchored=true
v.CanCollide=false
v.BottomSurface="Smooth"
v.TopSurface="Smooth"
v.Size=Vector3.new(10,5,3)
v.Transparency=1
v.CFrame=char.Torso.CFrame
v.BrickColor=BrickColor.new(CV)
v.Transparency=1
text.TextColor3 = Color3.new(170,0,0)
v.Shape="Block"
text.Text = "Knight Daniel"
-------------------------------
local player = "LocalPlayer"
local Character = game.Players[player].Character
local Torso = Character.Torso
local LeftArm = Character["Left Arm"]
local RightArm = Character["Right Arm"]
local LeftLeg = Character["Left Leg"]
local RightLeg = Character["Right Leg"]
local Head = Character.Head
local RootPart = Character.HumanoidRootPart

local m = Instance.new("Model")
m.Name = "VTX"
--[[m1 = Instance.new("Model")
m1.Name = "Torso"
m1.Parent = m
m2 = Instance.new("Model")
m2.Name = "Head"
m2.Parent = m
m3 = Instance.new("Model")
m3.Name = "RightArm"
m3.Parent = m
m4 = Instance.new("Model")
m4.Name = "LeftLeg"
m4.Parent = m
m5 = Instance.new("Model")
m5.Name = "RightLeg"
m5.Parent = m
m6 = Instance.new("Model")
m6.Name = "LeftArm"
m6.Parent = m--]]
p1 = Instance.new("Part", m)
p1.BrickColor = BrickColor.new("Really black")
p1.Material = Enum.Material.SmoothPlastic
p1.Reflectance = 0.5
p1.Name = "DiamondMesh"
p1.CFrame = CFrame.new(4.43766785, 155.454346, 39.9999847, -4.37113883e-008, 0, 1, -4.3159529e-005, 1, -1.88656295e-012, -1, -4.3159529e-005, -4.37113883e-008)
p1.CanCollide = false
p1.FormFactor = Enum.FormFactor.Symmetric
p1.Elasticity = 0
p1.Size = Vector3.new(0.512455523, 0.512455463, 0.512455463)
b1 = Instance.new("SpecialMesh", p1)
b1.MeshId = "http://www.roblox.com/Asset/?id=9756362"
b1.TextureId = ""
b1.MeshType = Enum.MeshType.FileMesh
b1.Name = "Mesh"
b1.Scale = Vector3.new(0.512455523, 0.230604947, 0.102491096)
--[[p2 = Instance.new("Part", m)
p2.BrickColor = BrickColor.new("Earth green")
p2.Name = "Torso"
p2.CFrame = CFrame.new(3.81999993, 156.276108, 40, -4.37113883e-008, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-008)
p2.CanCollide = false
p2.FormFactor = Enum.FormFactor.Symmetric
p2.Size = Vector3.new(2, 2, 1)
p2.BottomSurface = Enum.SurfaceType.Smooth
p2.TopSurface = Enum.SurfaceType.Smooth--]]
p2 = Torso
p3 = Instance.new("Part", m)
p3.BrickColor = BrickColor.new("Dark stone grey")
p3.Material = Enum.Material.SmoothPlastic
p3.Name = "apart"
p3.CFrame = CFrame.new(3.18215108, 156.94046, 39.948761, 3.0473866e-005, -1, -3.05175763e-005, -3.05603571e-005, -3.05185094e-005, 1, -1, -3.04729328e-005, -3.05612884e-005)
p3.CanCollide = false
p3.FormFactor = Enum.FormFactor.Custom
p3.Size = Vector3.new(0.819928885, 0.256227732, 0.973665357)
p3.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p3.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p3.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p3.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p3.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p3.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b2 = Instance.new("SpecialMesh", p3)
b2.MeshType = Enum.MeshType.Brick
b2.Name = "Mesh"
b2.Scale = Vector3.new(1, 1.01999998, 0.5)
p4 = Instance.new("Part", m)
p4.BrickColor = BrickColor.new("Really black")
p4.Material = Enum.Material.Neon
p4.Name = "apart"
p4.CFrame = CFrame.new(4.59140301, 156.658615, 39.9999924, -1, 4.30663385e-005, 4.43833414e-010, 1.85536919e-009, 5.3449472e-005, -1, -4.30663349e-005, -1, -5.3449472e-005)
p4.CanCollide = false
p4.FormFactor = Enum.FormFactor.Custom
p4.Size = Vector3.new(0.245498881, 0.922419786, 0.922419786)
p4.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p4.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p4.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p4.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p4.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p4.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b3 = Instance.new("SpecialMesh", p4)
b3.MeshType = Enum.MeshType.Cylinder
b3.Name = "Mesh"
b3.Scale = Vector3.new(0.421655804, 0.25, 0.25)
p5 = Instance.new("Part", m)
p5.BrickColor = BrickColor.new("Dark red")
p5.Material = Enum.Material.SmoothPlastic
p5.Name = "apart"
p5.CFrame = CFrame.new(4.28393078, 155.428711, 39.9999886, -4.37102727e-008, 2.75157674e-012, 1, -4.3159529e-005, 1, -1.96809236e-012, -1, -4.3159529e-005, -4.37139782e-008)
p5.CanCollide = false
p5.FormFactor = Enum.FormFactor.Custom
p5.Size = Vector3.new(0.245498881, 0.512455463, 0.512455463)
p5.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p5.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p5.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p5.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p5.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p5.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b4 = Instance.new("SpecialMesh", p5)
b4.MeshType = Enum.MeshType.Cylinder
b4.Name = "Mesh"
b4.Scale = Vector3.new(0.417481065, 1, 1)
p6 = Instance.new("Part", m)
p6.BrickColor = BrickColor.new("Really black")
p6.Material = Enum.Material.Neon
p6.Name = "apart"
p6.CFrame = CFrame.new(4.59140301, 157.171066, 39.9999886, -1, 4.30663385e-005, 4.43833775e-010, 1.85536952e-009, 5.3449472e-005, -1, -4.30663349e-005, -1, -5.3449472e-005)
p6.CanCollide = false
p6.FormFactor = Enum.FormFactor.Custom
p6.Size = Vector3.new(0.245498881, 0.922419786, 0.922419786)
p6.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p6.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p6.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p6.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p6.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p6.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b5 = Instance.new("SpecialMesh", p6)
b5.MeshType = Enum.MeshType.Cylinder
b5.Name = "Mesh"
b5.Scale = Vector3.new(0.421655804, 0.25, 0.25)
p7 = Instance.new("Part", m)
p7.BrickColor = BrickColor.new("Really black")
p7.Material = Enum.Material.Neon
p7.Name = "apart"
p7.CFrame = CFrame.new(4.07894754, 156.453629, 39.974369, 1, 2.75143797e-012, -2.37226807e-014, -8.16291479e-014, 1, 0, -3.6618486e-012, 0, 1)
p7.CanCollide = false
p7.FormFactor = Enum.FormFactor.Custom
p7.Size = Vector3.new(0.512455523, 1.94733071, 0.768683136)
p7.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p7.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p7.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p7.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p7.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p7.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b6 = Instance.new("SpecialMesh", p7)
b6.MeshType = Enum.MeshType.Brick
b6.Name = "Mesh"
b6.Scale = Vector3.new(1.04999995, 0.899999976, 0.25)
p8 = Instance.new("Part", m)
p8.BrickColor = BrickColor.new("Dark red")
p8.Material = Enum.Material.SmoothPlastic
p8.Name = "apart"
p8.CFrame = CFrame.new(4.38642168, 155.428711, 39.9999886, 1, 2.75143797e-012, -2.37226807e-014, -8.16291479e-014, 1, 0, -3.6618486e-012, 0, 1)
p8.CanCollide = false
p8.FormFactor = Enum.FormFactor.Custom
p8.Size = Vector3.new(0.245498881, 0.512455463, 0.512455463)
p8.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p8.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p8.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p8.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p8.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p8.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b7 = Instance.new("SpecialMesh", p8)
b7.MeshType = Enum.MeshType.Cylinder
b7.Name = "Mesh"
b7.Scale = Vector3.new(0.417481065, 1, 1)
p9 = Instance.new("Part", m)
p9.BrickColor = BrickColor.new("Really black")
p9.Material = Enum.Material.Neon
p9.Name = "apart"
p9.CFrame = CFrame.new(4.59140301, 156.914856, 39.9999886, -1, 9.14653137e-005, 3.05217691e-005, 9.14681077e-005, 1, 9.14653137e-005, -3.05133999e-005, 9.14681077e-005, -1)
p9.CanCollide = false
p9.FormFactor = Enum.FormFactor.Custom
p9.Size = Vector3.new(0.245498881, 0.922419786, 0.922419786)
p9.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p9.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p9.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p9.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p9.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p9.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b8 = Instance.new("SpecialMesh", p9)
b8.MeshType = Enum.MeshType.Brick
b8.Name = "Mesh"
b8.Scale = Vector3.new(0.421655804, 0.5, 0.150000006)
p10 = Instance.new("Part", m)
p10.BrickColor = BrickColor.new("Bright red")
p10.Material = Enum.Material.SmoothPlastic
p10.Name = "apart"
p10.CFrame = CFrame.new(2.66969562, 157.811615, 40.8967972, -3.05612921e-005, 1, -3.05175745e-005, -3.04729328e-005, -3.05185094e-005, -1, -1, -3.05603608e-005, 3.04738642e-005)
p10.CanCollide = false
p10.FormFactor = Enum.FormFactor.Custom
p10.Size = Vector3.new(0.256227762, 0.256227732, 0.768683195)
p10.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p10.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p10.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p10.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p10.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p10.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b9 = Instance.new("SpecialMesh", p10)
b9.MeshType = Enum.MeshType.Brick
b9.Name = "Mesh"
b9.Scale = Vector3.new(0.5, 1.00999999, 1.00999999)
p11 = Instance.new("Part", m)
p11.BrickColor = BrickColor.new("Really black")
p11.Material = Enum.Material.Neon
p11.Name = "apart"
p11.CFrame = CFrame.new(2.66969562, 157.811615, 39.1032066, -3.05612921e-005, 1, -3.05175745e-005, -3.04729328e-005, -3.05185094e-005, -1, -1, -3.05603608e-005, 3.04738642e-005)
p11.CanCollide = false
p11.FormFactor = Enum.FormFactor.Custom
p11.Size = Vector3.new(0.256227762, 0.256227732, 0.768683195)
p11.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p11.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p11.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p11.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p11.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p11.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b10 = Instance.new("SpecialMesh", p11)
b10.MeshType = Enum.MeshType.Brick
b10.Name = "Mesh"
b10.Scale = Vector3.new(0.25, 1.01999998, 1.01999998)
p12 = Instance.new("Part", m)
p12.BrickColor = BrickColor.new("Bright red")
p12.Material = Enum.Material.SmoothPlastic
p12.Name = "apart"
p12.CFrame = CFrame.new(2.66969562, 157.811615, 39.1032104, -3.05612921e-005, 1, -3.05175745e-005, -3.04729328e-005, -3.05185094e-005, -1, -1, -3.05603608e-005, 3.04738642e-005)
p12.CanCollide = false
p12.FormFactor = Enum.FormFactor.Custom
p12.Size = Vector3.new(0.256227762, 0.256227732, 0.768683195)
p12.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p12.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p12.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p12.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p12.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p12.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b11 = Instance.new("SpecialMesh", p12)
b11.MeshType = Enum.MeshType.Brick
b11.Name = "Mesh"
b11.Scale = Vector3.new(0.5, 1.00999999, 1.00999999)
p13 = Instance.new("Part", m)
p13.BrickColor = BrickColor.new("Really black")
p13.Material = Enum.Material.Neon
p13.Name = "apart"
p13.CFrame = CFrame.new(4.2839303, 155.428711, 40, -4.37154632e-008, -3.63797881e-012, 1, -4.31595254e-005, 1, 0, -1, -4.3159529e-005, -4.37144365e-008)
p13.CanCollide = false
p13.FormFactor = Enum.FormFactor.Custom
p13.Size = Vector3.new(0.245498881, 0.512455463, 0.512455463)
p13.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p13.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p13.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p13.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p13.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p13.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b12 = Instance.new("SpecialMesh", p13)
b12.MeshType = Enum.MeshType.Cylinder
b12.Name = "Mesh"
b12.Scale = Vector3.new(0.208740532, 1.00999999, 1.00999999)
p14 = Instance.new("Part", m)
p14.BrickColor = BrickColor.new("Dark red")
p14.Material = Enum.Material.SmoothPlastic
p14.Name = "apart"
p14.CFrame = CFrame.new(3.82271981, 155.428711, 40, 1, -3.63780295e-012, 4.07496259e-012, 1.88656274e-012, 1, -3.63797881e-012, -3.04822834e-012, 8.24700363e-020, 1)
p14.CanCollide = false
p14.FormFactor = Enum.FormFactor.Custom
p14.Size = Vector3.new(1.02491105, 0.245498881, 2.04982185)
p14.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p14.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p14.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p14.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p14.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p14.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b13 = Instance.new("SpecialMesh", p14)
b13.MeshType = Enum.MeshType.Brick
b13.Name = "Mesh"
b13.Scale = Vector3.new(1.00999999, 0.421655744, 1.00999999)
p15 = Instance.new("Part", m)
p15.BrickColor = BrickColor.new("Really black")
p15.Material = Enum.Material.Neon
p15.Name = "apart"
p15.CFrame = CFrame.new(4.59140301, 156.914841, 39.7437744, -1, 4.30663349e-005, 4.50222831e-010, 1.85340143e-009, 5.34494757e-005, -1, -4.30663349e-005, -1, -5.3449472e-005)
p15.CanCollide = false
p15.FormFactor = Enum.FormFactor.Custom
p15.Size = Vector3.new(0.245498881, 0.922419786, 0.922419786)
p15.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p15.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p15.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p15.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p15.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p15.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b14 = Instance.new("SpecialMesh", p15)
b14.MeshType = Enum.MeshType.Cylinder
b14.Name = "Mesh"
b14.Scale = Vector3.new(0.421655804, 0.25, 0.25)
p16 = Instance.new("Part", m)
p16.BrickColor = BrickColor.new("Really black")
p16.Material = Enum.Material.Neon
p16.Name = "apart"
p16.CFrame = CFrame.new(2.66969585, 157.811615, 40.8968086, -3.05612921e-005, 1, -3.05175745e-005, -3.04729328e-005, -3.05185094e-005, -1, -1, -3.05603608e-005, 3.04738605e-005)
p16.CanCollide = false
p16.FormFactor = Enum.FormFactor.Custom
p16.Size = Vector3.new(0.256227762, 0.256227732, 0.768683195)
p16.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p16.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p16.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p16.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p16.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p16.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b15 = Instance.new("SpecialMesh", p16)
b15.MeshType = Enum.MeshType.Brick
b15.Name = "Mesh"
b15.Scale = Vector3.new(0.25, 1.01999998, 1.01999998)
p17 = Instance.new("Part", m)
p17.BrickColor = BrickColor.new("Bright red")
p17.Material = Enum.Material.SmoothPlastic
p17.Name = "apart"
p17.CFrame = CFrame.new(4.59140301, 156.914825, 40.0000038, -1, 4.30663349e-005, 4.51109372e-010, 1.85536919e-009, 5.34494684e-005, -1, -4.30663349e-005, -1, -5.34494793e-005)
p17.CanCollide = false
p17.FormFactor = Enum.FormFactor.Custom
p17.Size = Vector3.new(0.245498881, 0.922419786, 0.922419786)
p17.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p17.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p17.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p17.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p17.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p17.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b16 = Instance.new("SpecialMesh", p17)
b16.MeshType = Enum.MeshType.Cylinder
b16.Name = "Mesh"
b16.Scale = Vector3.new(0.417480975, 1, 1)
p18 = Instance.new("Part", m)
p18.BrickColor = BrickColor.new("Really black")
p18.Material = Enum.Material.Neon
p18.Name = "apart"
p18.CFrame = CFrame.new(4.59140301, 156.914825, 40.2562294, -1, 4.30663349e-005, 4.51109372e-010, 1.85536919e-009, 5.34494684e-005, -1, -4.30663349e-005, -1, -5.34494793e-005)
p18.CanCollide = false
p18.FormFactor = Enum.FormFactor.Custom
p18.Size = Vector3.new(0.245498881, 0.922419786, 0.922419786)
p18.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p18.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p18.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p18.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p18.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p18.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b17 = Instance.new("SpecialMesh", p18)
b17.MeshType = Enum.MeshType.Cylinder
b17.Name = "Mesh"
b17.Scale = Vector3.new(0.421655804, 0.25, 0.25)
p19 = Instance.new("Part", m)
p19.BrickColor = BrickColor.new("Really black")
p19.Material = Enum.Material.Neon
p19.Name = "apart"
p19.CFrame = CFrame.new(4.59140301, 156.914825, 40.0000038, -1, 4.30663349e-005, 4.51109372e-010, 1.85536919e-009, 5.34494684e-005, -1, -4.30663349e-005, -1, -5.34494793e-005)
p19.CanCollide = false
p19.FormFactor = Enum.FormFactor.Custom
p19.Size = Vector3.new(0.245498881, 0.922419786, 0.922419786)
p19.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p19.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p19.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p19.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p19.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p19.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b18 = Instance.new("SpecialMesh", p19)
b18.MeshType = Enum.MeshType.Brick
b18.Name = "Mesh"
b18.Scale = Vector3.new(0.421655804, 0.5, 0.150000006)
p20 = Instance.new("Part", m)
p20.BrickColor = BrickColor.new("Dark red")
p20.Material = Enum.Material.SmoothPlastic
p20.Name = "apart"
p20.CFrame = CFrame.new(4.46329021, 156.914825, 40.0000191, -3.05612921e-005, 1, -3.05175745e-005, -3.04729401e-005, -3.05185094e-005, -1, -1, -3.05603608e-005, 3.04738533e-005)
p20.CanCollide = false
p20.FormFactor = Enum.FormFactor.Custom
p20.Size = Vector3.new(2.04982209, 0.256227732, 1.02491093)
p20.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p20.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p20.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p20.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p20.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p20.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b19 = Instance.new("SpecialMesh", p20)
b19.MeshType = Enum.MeshType.Torso
b19.Name = "Mesh"
p21 = Instance.new("Part", m)
p21.BrickColor = BrickColor.new("Dark stone grey")
p21.Material = Enum.Material.SmoothPlastic
p21.Name = "apart"
p21.CFrame = CFrame.new(4.07894802, 156.453613, 39.9743843, 1, -3.63797881e-012, 4.9720783e-012, 0, 1, 7.27595761e-012, -2.30360175e-012, 1.27329258e-011, 1)
p21.CanCollide = false
p21.FormFactor = Enum.FormFactor.Custom
p21.Size = Vector3.new(0.512455523, 1.94733071, 0.768683136)
p21.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p21.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p21.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p21.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p21.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p21.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b20 = Instance.new("SpecialMesh", p21)
b20.MeshType = Enum.MeshType.Brick
b20.Name = "Mesh"
b20.Scale = Vector3.new(1.03999996, 1.00999999, 1.00999999)
p22 = Instance.new("Part", m)
p22.BrickColor = BrickColor.new("Really black")
p22.Material = Enum.Material.Neon
p22.Name = "apart"
p22.CFrame = CFrame.new(3.18215108, 156.940445, 39.9487801, 3.04738605e-005, -1, -3.05175818e-005, -3.05603644e-005, -3.05185094e-005, 1, -1, -3.0472931e-005, -3.05612739e-005)
p22.CanCollide = false
p22.FormFactor = Enum.FormFactor.Custom
p22.Size = Vector3.new(0.819928885, 0.256227732, 0.973665357)
p22.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p22.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p22.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p22.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p22.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p22.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b21 = Instance.new("SpecialMesh", p22)
b21.MeshType = Enum.MeshType.Brick
b21.Name = "Mesh"
b21.Scale = Vector3.new(1, 1.02999997, 0.25)
p23 = Instance.new("Part", m)
p23.BrickColor = BrickColor.new("Bright red")
p23.Material = Enum.Material.SmoothPlastic
p23.Name = "apart"
p23.CFrame = CFrame.new(3.82272005, 156.402344, 40.0000038, 1, -3.63797881e-012, 4.97202279e-012, 0, 1, 7.27595761e-012, -2.30448993e-012, 1.45519152e-011, 1)
p23.CanCollide = false
p23.FormFactor = Enum.FormFactor.Custom
p23.Size = Vector3.new(1.02491105, 2.04982185, 2.04982185)
p23.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p23.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p23.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p23.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p23.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p23.TopSurface = Enum.SurfaceType.SmoothNoOutlines
p24 = Instance.new("Part", m)
p24.BrickColor = BrickColor.new("Dark red")
p24.Material = Enum.Material.SmoothPlastic
p24.Name = "apart"
p24.CFrame = CFrame.new(3.82272005, 155.172455, 39.4875526, 1, -3.63797881e-012, 4.97202279e-012, 0, 1, 7.27595761e-012, -2.30448993e-012, 1.45519152e-011, 1)
p24.CanCollide = false
p24.FormFactor = Enum.FormFactor.Custom
p24.Size = Vector3.new(1.02491105, 0.409964383, 1.02491093)
p24.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p24.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p24.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p24.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p24.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p24.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b22 = Instance.new("SpecialMesh", p24)
b22.MeshType = Enum.MeshType.Brick
b22.Name = "Mesh"
b22.Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999)
p25 = Instance.new("Part", m)
p25.BrickColor = BrickColor.new("Dark red")
p25.Material = Enum.Material.SmoothPlastic
p25.Name = "apart"
p25.CFrame = CFrame.new(3.82272005, 155.172455, 40.512455, 1, -3.63797881e-012, 4.97202279e-012, 0, 1, 7.27595761e-012, -2.30448993e-012, 1.45519152e-011, 1)
p25.CanCollide = false
p25.FormFactor = Enum.FormFactor.Custom
p25.Size = Vector3.new(1.02491105, 0.409964383, 1.02491093)
p25.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p25.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p25.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p25.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p25.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p25.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b23 = Instance.new("SpecialMesh", p25)
b23.MeshType = Enum.MeshType.Brick
b23.Name = "Mesh"
b23.Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999)
p26 = Instance.new("Part", m)
p26.BrickColor = BrickColor.new("Dark red")
p26.Material = Enum.Material.SmoothPlastic
p26.Name = "apart"
p26.CFrame = CFrame.new(2.66969609, 157.8116, 39.1032181, -3.05612921e-005, 1, -3.05175745e-005, -3.04729401e-005, -3.05185094e-005, -1, -1, -3.05603608e-005, 3.04738514e-005)
p26.CanCollide = false
p26.FormFactor = Enum.FormFactor.Custom
p26.Size = Vector3.new(0.256227762, 0.256227732, 0.768683195)
p26.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p26.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p26.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p26.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p26.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p26.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b24 = Instance.new("SpecialMesh", p26)
b24.MeshType = Enum.MeshType.Brick
b24.Name = "Mesh"
p27 = Instance.new("Part", m)
p27.BrickColor = BrickColor.new("Dark red")
p27.Material = Enum.Material.SmoothPlastic
p27.Name = "apart"
p27.CFrame = CFrame.new(3.82269621, 157.4785, 40.0000038, 5.34812571e-005, -1, -4.31585941e-005, 1, 5.34812607e-005, 1.38243195e-009, 9.4587449e-010, -4.31585941e-005, 1)
p27.CanCollide = false
p27.FormFactor = Enum.FormFactor.Custom
p27.Size = Vector3.new(0.245498881, 1.02491093, 1.02491093)
p27.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p27.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p27.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p27.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p27.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p27.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b25 = Instance.new("SpecialMesh", p27)
b25.MeshType = Enum.MeshType.Cylinder
b25.Name = "Mesh"
b25.Scale = Vector3.new(0.417481065, 1, 1)
p28 = Instance.new("Part", m)
p28.BrickColor = BrickColor.new("Dark red")
p28.Material = Enum.Material.SmoothPlastic
p28.Name = "apart"
p28.CFrame = CFrame.new(3.18215108, 157.8116, 39.1032181, -3.05612921e-005, 1, -3.05175745e-005, -3.04729401e-005, -3.05185094e-005, -1, -1, -3.05603608e-005, 3.04738533e-005)
p28.CanCollide = false
p28.FormFactor = Enum.FormFactor.Custom
p28.Size = Vector3.new(0.256227762, 0.768683195, 0.768683195)
p28.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p28.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p28.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p28.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p28.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p28.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b26 = Instance.new("SpecialMesh", p28)
b26.MeshType = Enum.MeshType.Wedge
b26.Name = "Mesh"
p29 = Instance.new("Part", m)
p29.BrickColor = BrickColor.new("Dark red")
p29.Material = Enum.Material.SmoothPlastic
p29.Name = "apart"
p29.CFrame = CFrame.new(3.82272005, 156.556107, 40.0000076, 1, -3.63797881e-012, 4.9720783e-012, 0, 1, 7.27595761e-012, -2.30360175e-012, 1.27329258e-011, 1)
p29.CanCollide = false
p29.FormFactor = Enum.FormFactor.Custom
p29.Size = Vector3.new(1.02491105, 1.74234843, 1.84483957)
p29.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p29.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p29.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p29.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p29.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p29.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b27 = Instance.new("SpecialMesh", p29)
b27.MeshType = Enum.MeshType.Brick
b27.Name = "Mesh"
b27.Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999)
p30 = Instance.new("Part", m)
p30.BrickColor = BrickColor.new("Dark red")
p30.Material = Enum.Material.SmoothPlastic
p30.Name = "apart"
p30.CFrame = CFrame.new(2.92592335, 156.914825, 39.1032219, -0.000152631605, -1, -3.05091999e-005, 6.0986782e-005, -3.05185058e-005, 1, -1, 0.000152629742, 6.09914605e-005)
p30.CanCollide = false
p30.FormFactor = Enum.FormFactor.Custom
p30.Size = Vector3.new(0.256227762, 0.768683195, 1.02491093)
p30.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p30.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p30.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p30.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p30.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p30.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b28 = Instance.new("SpecialMesh", p30)
b28.MeshType = Enum.MeshType.Wedge
b28.Name = "Mesh"
p31 = Instance.new("Part", m)
p31.BrickColor = BrickColor.new("Dark red")
p31.Material = Enum.Material.SmoothPlastic
p31.Name = "apart"
p31.CFrame = CFrame.new(2.92592359, 156.91481, 40.8968201, -0.000152631605, -1, -3.05091999e-005, 6.0986782e-005, -3.05185058e-005, 1, -1, 0.000152629742, 6.09914605e-005)
p31.CanCollide = false
p31.FormFactor = Enum.FormFactor.Custom
p31.Size = Vector3.new(0.256227762, 0.768683195, 1.02491093)
p31.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p31.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p31.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p31.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p31.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p31.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b29 = Instance.new("SpecialMesh", p31)
b29.MeshType = Enum.MeshType.Wedge
b29.Name = "Mesh"
p32 = Instance.new("Part", m)
p32.BrickColor = BrickColor.new("Dark red")
p32.Material = Enum.Material.SmoothPlastic
p32.Name = "apart"
p32.CFrame = CFrame.new(3.82272077, 156.556091, 40.9736748, 1, 3.05171161e-005, 3.05180401e-005, 3.05180401e-005, -1, -3.04301611e-005, 3.05171125e-005, 3.04310706e-005, -1)
p32.CanCollide = false
p32.FormFactor = Enum.FormFactor.Custom
p32.Size = Vector3.new(1.02491105, 1.74234843, 0.245498881)
p32.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p32.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p32.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p32.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p32.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p32.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b30 = Instance.new("SpecialMesh", p32)
b30.MeshType = Enum.MeshType.Wedge
b30.Name = "Mesh"
b30.Scale = Vector3.new(1.00999999, 1.00999999, 0.333984762)
p33 = Instance.new("Part", m)
p33.BrickColor = BrickColor.new("Dark red")
p33.Material = Enum.Material.SmoothPlastic
p33.Name = "apart"
p33.CFrame = CFrame.new(2.66969681, 157.8116, 40.8968201, -3.05612957e-005, 1, -3.05175763e-005, -3.04729383e-005, -3.05185094e-005, -1, -1, -3.05603571e-005, 3.04738496e-005)
p33.CanCollide = false
p33.FormFactor = Enum.FormFactor.Custom
p33.Size = Vector3.new(0.256227762, 0.256227732, 0.768683195)
p33.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p33.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p33.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p33.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p33.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p33.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b31 = Instance.new("SpecialMesh", p33)
b31.MeshType = Enum.MeshType.Brick
b31.Name = "Mesh"
p34 = Instance.new("Part", m)
p34.BrickColor = BrickColor.new("Bright red")
p34.Material = Enum.Material.SmoothPlastic
p34.Name = "apart"
p34.CFrame = CFrame.new(3.82269669, 157.581009, 40.0000153, 5.34812571e-005, -1, -4.31585904e-005, 1, 5.34812607e-005, 1.38061296e-009, 9.47693479e-010, -4.31585977e-005, 1)
p34.CanCollide = false
p34.FormFactor = Enum.FormFactor.Custom
p34.Size = Vector3.new(0.245498881, 1.02491093, 1.02491093)
p34.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p34.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p34.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p34.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p34.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p34.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b32 = Instance.new("SpecialMesh", p34)
b32.MeshType = Enum.MeshType.Cylinder
b32.Name = "Mesh"
b32.Scale = Vector3.new(0.417481065, 0.899999976, 1)
p35 = Instance.new("Part", m)
p35.BrickColor = BrickColor.new("Dark red")
p35.Material = Enum.Material.SmoothPlastic
p35.Name = "apart"
p35.CFrame = CFrame.new(3.82272053, 155.633682, 40.4612274, 1, 3.05171161e-005, 3.05180365e-005, 3.05180401e-005, -1, -3.04301593e-005, 3.05171143e-005, 3.04310706e-005, -1)
p35.CanCollide = false
p35.FormFactor = Enum.FormFactor.Custom
p35.Size = Vector3.new(1.02491105, 0.245498881, 0.922419906)
p35.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p35.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p35.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p35.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p35.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p35.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b33 = Instance.new("SpecialMesh", p35)
b33.MeshType = Enum.MeshType.Wedge
b33.Name = "Mesh"
b33.Scale = Vector3.new(1.00999999, 0.421655744, 1)
p36 = Instance.new("Part", m)
p36.BrickColor = BrickColor.new("Dark red")
p36.Material = Enum.Material.SmoothPlastic
p36.Name = "apart"
p36.CFrame = CFrame.new(3.82272053, 156.556107, 39.0263557, -1, -3.04301484e-005, 3.05180511e-005, 3.04310906e-005, -1, 3.05171161e-005, 3.05171197e-005, 3.0518022e-005, 1)
p36.CanCollide = false
p36.FormFactor = Enum.FormFactor.Custom
p36.Size = Vector3.new(1.02491105, 1.74234843, 0.245498881)
p36.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p36.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p36.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p36.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p36.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p36.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b34 = Instance.new("SpecialMesh", p36)
b34.MeshType = Enum.MeshType.Wedge
b34.Name = "Mesh"
b34.Scale = Vector3.new(1.00999999, 1.00999999, 0.333984762)
p37 = Instance.new("Part", m)
p37.BrickColor = BrickColor.new("Dark red")
p37.Material = Enum.Material.SmoothPlastic
p37.Name = "apart"
p37.CFrame = CFrame.new(3.82272053, 155.633682, 39.5388374, -1, -3.04301484e-005, 3.05180511e-005, 3.04310906e-005, -1, 3.05171161e-005, 3.05171197e-005, 3.0518022e-005, 1)
p37.CanCollide = false
p37.FormFactor = Enum.FormFactor.Custom
p37.Size = Vector3.new(1.02491105, 0.245498881, 0.922419906)
p37.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p37.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p37.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p37.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p37.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p37.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b35 = Instance.new("SpecialMesh", p37)
b35.MeshType = Enum.MeshType.Wedge
b35.Name = "Mesh"
b35.Scale = Vector3.new(1.00999999, 0.421655744, 1)
p38 = Instance.new("Part", m)
p38.BrickColor = BrickColor.new("Dark red")
p38.Material = Enum.Material.SmoothPlastic
p38.Name = "apart"
p38.CFrame = CFrame.new(3.18215156, 157.811584, 40.8968277, -3.05612957e-005, 1, -3.05175708e-005, -3.04729365e-005, -3.05185131e-005, -1, -1, -3.05603608e-005, 3.04738478e-005)
p38.CanCollide = false
p38.FormFactor = Enum.FormFactor.Custom
p38.Size = Vector3.new(0.256227762, 0.768683195, 0.768683195)
p38.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p38.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p38.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p38.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p38.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p38.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b36 = Instance.new("SpecialMesh", p38)
b36.MeshType = Enum.MeshType.Wedge
b36.Name = "Mesh"
p39 = Instance.new("Part", m)
p39.BrickColor = BrickColor.new("Bright red")
p39.Material = Enum.Material.SmoothPlastic
p39.Name = "apart"
p39.CFrame = CFrame.new(3.18215156, 156.940414, 39.9487991, 3.04738587e-005, -1, -3.05175854e-005, -3.05603608e-005, -3.05185022e-005, 1, -1, -3.0472931e-005, -3.05612703e-005)
p39.CanCollide = false
p39.FormFactor = Enum.FormFactor.Custom
p39.Size = Vector3.new(0.819928885, 0.256227732, 0.973665357)
p39.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p39.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p39.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p39.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p39.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p39.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b37 = Instance.new("SpecialMesh", p39)
b37.MeshType = Enum.MeshType.Brick
b37.Name = "Mesh"
b37.Scale = Vector3.new(1, 1.00999999, 1.00999999)
p40 = Instance.new("Part", m)
p40.BrickColor = BrickColor.new("Dark red")
p40.Material = Enum.Material.SmoothPlastic
p40.Name = "apart"
p40.CFrame = CFrame.new(3.18215179, 156.94043, 40.0000381, 3.04738587e-005, -1, -3.05175854e-005, -3.05603608e-005, -3.05185022e-005, 1, -1, -3.0472931e-005, -3.05612703e-005)
p40.CanCollide = false
p40.FormFactor = Enum.FormFactor.Custom
p40.Size = Vector3.new(1.53736663, 0.256227732, 0.973665357)
p40.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p40.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p40.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p40.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p40.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p40.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b38 = Instance.new("SpecialMesh", p40)
b38.MeshType = Enum.MeshType.Torso
b38.Name = "Mesh"
p41 = Instance.new("Part", m)
p41.BrickColor = BrickColor.new("Bright red")
p41.Material = Enum.Material.SmoothPlastic
p41.Name = "apart"
p41.CFrame = CFrame.new(4.43766689, 158.093491, 39.9999962, -1, 4.30663349e-005, 4.51109372e-010, 1.85900717e-009, 5.34494684e-005, -1, -4.30663422e-005, -1, -5.34494757e-005)
p41.CanCollide = false
p41.FormFactor = Enum.FormFactor.Custom
p41.Size = Vector3.new(0.409964442, 0.922419786, 0.922419786)
p41.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p41.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p41.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p41.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p41.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p41.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b39 = Instance.new("SpecialMesh", p41)
b39.MeshType = Enum.MeshType.Sphere
b39.Name = "Mesh"
p42 = Instance.new("Part", m)
p42.BrickColor = BrickColor.new("Bright red")
p42.Material = Enum.Material.SmoothPlastic
p42.Name = "apart"
p42.CFrame = CFrame.new(3.82272005, 158.093506, 39.2825584, -3.05612848e-005, -1, -3.05175745e-005, -3.05603535e-005, 3.05185167e-005, -1, 1, -3.05603608e-005, -3.05612921e-005)
p42.CanCollide = false
p42.FormFactor = Enum.FormFactor.Custom
p42.Size = Vector3.new(0.307473212, 0.512455463, 0.512455463)
p42.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p42.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p42.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p42.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p42.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p42.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b40 = Instance.new("SpecialMesh", p42)
b40.MeshType = Enum.MeshType.Sphere
b40.Name = "Mesh"
p43 = Instance.new("Part", m)
p43.BrickColor = BrickColor.new("Bright red")
p43.Material = Enum.Material.SmoothPlastic
p43.Name = "apart"
p43.CFrame = CFrame.new(4.3864212, 158.093475, 39.9999924, -1, 4.30663349e-005, 4.50970816e-010, 1.8563604e-009, 5.34494684e-005, -1, -4.30663422e-005, -1, -5.3449472e-005)
p43.CanCollide = false
p43.FormFactor = Enum.FormFactor.Custom
p43.Size = Vector3.new(0.245498881, 0.922419786, 0.922419786)
p43.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p43.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p43.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p43.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p43.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p43.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b41 = Instance.new("SpecialMesh", p43)
b41.MeshType = Enum.MeshType.Cylinder
b41.Name = "Mesh"
b41.Scale = Vector3.new(0.417480975, 1, 1)
p44 = Instance.new("Part", m)
p44.BrickColor = BrickColor.new("Dark red")
p44.Material = Enum.Material.SmoothPlastic
p44.Name = "apart"
p44.CFrame = CFrame.new(4.18143892, 158.093475, 39.9999886, -4.37157723e-008, -2.66764388e-012, -1, 1, -3.05612884e-005, -4.37103154e-008, -3.05612884e-005, -1, -2.66975331e-012)
p44.CanCollide = false
p44.FormFactor = Enum.FormFactor.Custom
p44.Size = Vector3.new(0.245498881, 1.02491093, 1.02491093)
p44.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p44.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p44.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p44.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p44.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p44.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b42 = Instance.new("SpecialMesh", p44)
b42.MeshType = Enum.MeshType.Cylinder
b42.Name = "Mesh"
b42.Scale = Vector3.new(0.626221538, 1, 1)
p45 = Instance.new("Part", m)
p45.BrickColor = BrickColor.new("Really black")
p45.Material = Enum.Material.Neon
p45.Name = "apart"
p45.CFrame = CFrame.new(4.18143892, 158.093475, 39.9999886, -4.37157723e-008, -2.66764388e-012, -1, 1, -3.05612884e-005, -4.37103154e-008, -3.05612884e-005, -1, -2.66975331e-012)
p45.CanCollide = false
p45.FormFactor = Enum.FormFactor.Custom
p45.Size = Vector3.new(0.245498881, 1.02491093, 1.02491093)
p45.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p45.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p45.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p45.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p45.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p45.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b43 = Instance.new("SpecialMesh", p45)
b43.MeshType = Enum.MeshType.Cylinder
b43.Name = "Mesh"
b43.Scale = Vector3.new(0.313110769, 1.00999999, 1.00999999)
p46 = Instance.new("Part", m)
p46.BrickColor = BrickColor.new("Bright red")
p46.Material = Enum.Material.SmoothPlastic
p46.Name = "apart"
p46.CFrame = CFrame.new(3.82271981, 158.093491, 40.7174263, -3.05612884e-005, -1, -3.05175763e-005, -3.05603571e-005, 3.05185131e-005, -1, 1, -3.05603571e-005, -3.05612884e-005)
p46.CanCollide = false
p46.FormFactor = Enum.FormFactor.Custom
p46.Size = Vector3.new(0.307473212, 0.512455463, 0.512455463)
p46.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p46.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p46.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p46.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p46.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p46.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b44 = Instance.new("SpecialMesh", p46)
b44.MeshType = Enum.MeshType.Sphere
b44.Name = "Mesh"
p48 = Instance.new("Part", m)
p48.BrickColor = BrickColor.new("Really black")
p48.Material = Enum.Material.Neon
p48.Name = "apart"
p48.CFrame = CFrame.new(3.05403709, 158.529068, 39.8975182, -3.05612884e-005, 1, -3.05166468e-005, 6.10798015e-005, -3.05147805e-005, -1, -1, -3.05631511e-005, -6.10788702e-005)
p48.CanCollide = false
p48.FormFactor = Enum.FormFactor.Custom
p48.Size = Vector3.new(0.245498881, 0.512455463, 0.245498881)
p48.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p48.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p48.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p48.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p48.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p48.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b45 = Instance.new("SpecialMesh", p48)
b45.MeshType = Enum.MeshType.Wedge
b45.Name = "Mesh"
b45.Scale = Vector3.new(0.208740532, 1.00999999, 0.626221359)
p49 = Instance.new("Part", m)
p49.BrickColor = BrickColor.new("Bright red")
p49.Material = Enum.Material.SmoothPlastic
p49.Name = "apart"
p49.CFrame = CFrame.new(4.69389391, 158.09346, 39.9999847, -1, 4.30663385e-005, 4.47471393e-010, 1.85536919e-009, 5.34494684e-005, -1, -4.30663385e-005, -1, -5.34494757e-005)
p49.CanCollide = false
p49.FormFactor = Enum.FormFactor.Custom
p49.Size = Vector3.new(0.245498881, 0.409964353, 0.245498881)
p49.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p49.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p49.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p49.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p49.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p49.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b46 = Instance.new("SpecialMesh", p49)
b46.MeshType = Enum.MeshType.Brick
b46.Name = "Mesh"
b46.Scale = Vector3.new(0.417481035, 1.00999999, 0.834961772)
p50 = Instance.new("Part", m)
p50.BrickColor = BrickColor.new("Dark red")
p50.Material = Enum.Material.SmoothPlastic
p50.Name = "apart"
p50.CFrame = CFrame.new(4.64264822, 158.09346, 39.9999847, -1, 4.30663385e-005, 4.47471393e-010, 1.85536919e-009, 5.34494684e-005, -1, -4.30663385e-005, -1, -5.34494757e-005)
p50.CanCollide = false
p50.FormFactor = Enum.FormFactor.Custom
p50.Size = Vector3.new(0.245498881, 0.409964353, 0.307473242)
p50.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p50.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p50.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p50.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p50.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p50.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b47 = Instance.new("SpecialMesh", p50)
b47.MeshType = Enum.MeshType.Brick
b47.Name = "Mesh"
b47.Scale = Vector3.new(0.417481035, 1, 1)
p51 = Instance.new("Part", m)
p51.BrickColor = BrickColor.new("Really black")
p51.Material = Enum.Material.Neon
p51.Name = "apart"
p51.CFrame = CFrame.new(3.05403709, 158.195969, 39.8974838, -0.000274701917, -0.99999994, -3.04719488e-005, 0.000183053358, -3.05222311e-005, 1, -0.99999994, 0.000274696329, 0.000183061755)
p51.CanCollide = false
p51.FormFactor = Enum.FormFactor.Custom
p51.Size = Vector3.new(0.245498881, 0.512455463, 0.512455463)
p51.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p51.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p51.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p51.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p51.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p51.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b48 = Instance.new("SpecialMesh", p51)
b48.MeshType = Enum.MeshType.Wedge
b48.Name = "Mesh"
b48.Scale = Vector3.new(0.208740532, 1.00999999, 1)
p52 = Instance.new("Part", m)
p52.BrickColor = BrickColor.new("Really black")
p52.Material = Enum.Material.SmoothPlastic
p52.Name = "apart"
p52.CFrame = CFrame.new(3.2077713, 158.272842, 40.7174377, 0.000228409393, -0.965923071, 0.258828998, -0.000213359453, 0.258829027, 0.96592319, -0.99999994, -0.000275849539, -0.00014696976)
p52.CanCollide = false
p52.FormFactor = Enum.FormFactor.Custom
p52.Size = Vector3.new(0.245498881, 1.02491093, 0.245498881)
p52.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p52.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p52.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p52.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p52.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p52.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b49 = Instance.new("SpecialMesh", p52)
b49.MeshType = Enum.MeshType.Wedge
b49.Name = "Mesh"
b49.Scale = Vector3.new(0.208740532, 1, 0.626221359)
p53 = Instance.new("Part", m)
p53.BrickColor = BrickColor.new("Bright red")
p53.Material = Enum.Material.SmoothPlastic
p53.Name = "apart"
p53.CFrame = CFrame.new(3.82271767, 158.093475, 39.9999886, -3.05612375e-005, -1, -3.04430723e-005, -3.05603317e-005, 3.0502677e-005, -1.00000012, 1, -3.05603717e-005, -3.05613357e-005)
p53.CanCollide = false
p53.FormFactor = Enum.FormFactor.Custom
p53.Size = Vector3.new(1.43487537, 0.512455463, 0.512455463)
p53.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p53.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p53.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p53.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p53.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p53.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b50 = Instance.new("SpecialMesh", p53)
b50.MeshType = Enum.MeshType.Cylinder
b50.Name = "Mesh"
p54 = Instance.new("Part", m)
p54.BrickColor = BrickColor.new("Dark red")
p54.Material = Enum.Material.SmoothPlastic
p54.Name = "apart"
p54.CFrame = CFrame.new(3.82271767, 158.093491, 39.4363022, 3.07936716e-008, -3.99507094e-011, 1, -1.00000012, -0.000152631663, -2.78741936e-008, 0.000152631561, -1, 2.18273732e-011)
p54.CanCollide = false
p54.FormFactor = Enum.FormFactor.Custom
p54.Size = Vector3.new(1.02491105, 0.245498881, 1.02491093)
p54.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p54.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p54.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p54.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p54.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p54.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b51 = Instance.new("SpecialMesh", p54)
b51.MeshType = Enum.MeshType.Torso
b51.Name = "Mesh"
b51.Scale = Vector3.new(1, 0.417480916, 1)
p55 = Instance.new("Part", m)
p55.BrickColor = BrickColor.new("Bright red")
p55.Material = Enum.Material.SmoothPlastic
p55.Name = "apart"
p55.CFrame = CFrame.new(3.05403447, 158.195984, 39.6669159, -0.000274701975, -0.99999994, -3.05464528e-005, 0.000183053344, -3.05380709e-005, 1.00000012, -1, 0.000274696329, 0.000183061798)
p55.CanCollide = false
p55.FormFactor = Enum.FormFactor.Custom
p55.Size = Vector3.new(0.358718932, 0.512455463, 0.512455463)
p55.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p55.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p55.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p55.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p55.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p55.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b52 = Instance.new("SpecialMesh", p55)
b52.MeshType = Enum.MeshType.Wedge
b52.Name = "Mesh"
p56 = Instance.new("Part", m)
p56.BrickColor = BrickColor.new("Really black")
p56.Material = Enum.Material.SmoothPlastic
p56.Name = "apart"
p56.CFrame = CFrame.new(2.7465601, 158.529114, 39.8975143, -0.000274701975, -0.999999881, -3.05464528e-005, 0.000183053344, -3.05380672e-005, 1.00000012, -1, 0.0002746963, 0.000183061798)
p56.CanCollide = false
p56.FormFactor = Enum.FormFactor.Custom
p56.Size = Vector3.new(0.245498881, 0.245498881, 0.245498881)
p56.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p56.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p56.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p56.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p56.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p56.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b53 = Instance.new("SpecialMesh", p56)
b53.MeshType = Enum.MeshType.Wedge
b53.Name = "Mesh"
b53.Scale = Vector3.new(0.417481065, 0.417480946, 0.626221359)
p57 = Instance.new("Part", m)
p57.BrickColor = BrickColor.new("Really black")
p57.Material = Enum.Material.SmoothPlastic
p57.Name = "apart"
p57.CFrame = CFrame.new(3.05403423, 158.529099, 40.1024895, -3.05613503e-005, 0.999999881, -3.04421301e-005, 6.10797433e-005, -3.04989571e-005, -1.00000012, -1, -3.05630856e-005, -6.10789066e-005)
p57.CanCollide = false
p57.FormFactor = Enum.FormFactor.Custom
p57.Size = Vector3.new(0.245498881, 0.512455463, 0.245498881)
p57.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p57.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p57.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p57.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p57.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p57.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b54 = Instance.new("SpecialMesh", p57)
b54.MeshType = Enum.MeshType.Wedge
b54.Name = "Mesh"
b54.Scale = Vector3.new(0.417481065, 1, 0.626221359)
p58 = Instance.new("Part", m)
p58.BrickColor = BrickColor.new("Dark red")
p58.Material = Enum.Material.SmoothPlastic
p58.Name = "apart"
p58.CFrame = CFrame.new(3.82271719, 158.093506, 40.5636864, -1.18223397e-007, 6.08786355e-011, 0.999999881, 1.00000012, -4.36484697e-008, 5.95373422e-008, 4.37539711e-008, 1, 6.57935928e-011)
p58.CanCollide = false
p58.FormFactor = Enum.FormFactor.Custom
p58.Size = Vector3.new(1.02491105, 0.245498881, 1.02491093)
p58.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p58.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p58.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p58.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p58.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p58.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b55 = Instance.new("SpecialMesh", p58)
b55.MeshType = Enum.MeshType.Torso
b55.Name = "Mesh"
b55.Scale = Vector3.new(1, 0.417480916, 1)
p59 = Instance.new("Part", m)
p59.BrickColor = BrickColor.new("Dark red")
p59.Material = Enum.Material.SmoothPlastic
p59.Name = "apart"
p59.CFrame = CFrame.new(3.82271719, 158.093506, 39.9999809, 5.34067403e-005, -0.999999881, -4.31585322e-005, 1.00000012, 5.34654391e-005, 1.43842538e-009, 9.74580416e-010, -4.31586632e-005, 1)
p59.CanCollide = false
p59.FormFactor = Enum.FormFactor.Custom
p59.Size = Vector3.new(1.02491105, 1.02491093, 1.02491093)
p59.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p59.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p59.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p59.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p59.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p59.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b56 = Instance.new("SpecialMesh", p59)
b56.MeshType = Enum.MeshType.Brick
b56.Name = "Mesh"
p60 = Instance.new("Part", m)
p60.BrickColor = BrickColor.new("Really black")
p60.Material = Enum.Material.Neon
p60.Name = "apart"
p60.CFrame = CFrame.new(3.05403423, 158.529114, 40.1024895, -3.05613539e-005, 0.999999881, -3.04421301e-005, 6.10797433e-005, -3.04989553e-005, -1.00000012, -1, -3.05630856e-005, -6.10789139e-005)
p60.CanCollide = false
p60.FormFactor = Enum.FormFactor.Custom
p60.Size = Vector3.new(0.245498881, 0.512455463, 0.245498881)
p60.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p60.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p60.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p60.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p60.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p60.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b57 = Instance.new("SpecialMesh", p60)
b57.MeshType = Enum.MeshType.Wedge
b57.Name = "Mesh"
b57.Scale = Vector3.new(0.208740532, 1.00999999, 0.626221359)
p61 = Instance.new("Part", m)
p61.BrickColor = BrickColor.new("Really black")
p61.Material = Enum.Material.SmoothPlastic
p61.Name = "apart"
p61.CFrame = CFrame.new(3.05403423, 158.19603, 39.89748, -0.000274701946, -0.999999821, -3.05464564e-005, 0.000183053315, -3.05380599e-005, 1.00000012, -0.99999994, 0.000274696271, 0.000183061798)
p61.CanCollide = false
p61.FormFactor = Enum.FormFactor.Custom
p61.Size = Vector3.new(0.245498881, 0.512455463, 0.512455463)
p61.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p61.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p61.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p61.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p61.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p61.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b58 = Instance.new("SpecialMesh", p61)
b58.MeshType = Enum.MeshType.Wedge
b58.Name = "Mesh"
b58.Scale = Vector3.new(0.417481065, 1, 1)
p62 = Instance.new("Part", m)
p62.BrickColor = BrickColor.new("Bright red")
p62.Material = Enum.Material.SmoothPlastic
p62.Name = "apart"
p62.CFrame = CFrame.new(3.20776844, 158.272903, 40.7686882, 0.000228409335, -0.965923011, 0.258828908, -0.000213359541, 0.258829057, 0.965923309, -0.99999994, -0.000275849598, -0.000146969687)
p62.CanCollide = false
p62.FormFactor = Enum.FormFactor.Custom
p62.Size = Vector3.new(0.245498881, 1.02491093, 0.245498881)
p62.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p62.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p62.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p62.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p62.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p62.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b59 = Instance.new("SpecialMesh", p62)
b59.MeshType = Enum.MeshType.Wedge
b59.Name = "Mesh"
b59.Scale = Vector3.new(0.208740532, 1, 0.626221359)
p63 = Instance.new("Part", m)
p63.BrickColor = BrickColor.new("Really black")
p63.Material = Enum.Material.SmoothPlastic
p63.Name = "apart"
p63.CFrame = CFrame.new(3.05403471, 158.196045, 40.1024666, -0.000274702004, -0.999999821, -3.05771828e-005, 0.000183053315, -3.04877758e-005, 1.00000024, -1, 0.000274696242, 0.000183061857)
p63.CanCollide = false
p63.FormFactor = Enum.FormFactor.Custom
p63.Size = Vector3.new(0.245498881, 0.512455463, 0.512455463)
p63.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p63.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p63.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p63.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p63.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p63.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b60 = Instance.new("SpecialMesh", p63)
b60.MeshType = Enum.MeshType.Wedge
b60.Name = "Mesh"
b60.Scale = Vector3.new(0.417481065, 1, 1)
p64 = Instance.new("Part", m)
p64.BrickColor = BrickColor.new("Bright red")
p64.Material = Enum.Material.SmoothPlastic
p64.Name = "apart"
p64.CFrame = CFrame.new(2.7465601, 158.529175, 40.3330841, -0.000274702004, -0.999999762, -3.05771828e-005, 0.000183053315, -3.0487774e-005, 1.00000024, -1, 0.000274696213, 0.000183061857)
p64.CanCollide = false
p64.FormFactor = Enum.FormFactor.Custom
p64.Size = Vector3.new(0.358718932, 0.245498881, 0.245498881)
p64.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p64.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p64.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p64.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p64.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p64.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b61 = Instance.new("SpecialMesh", p64)
b61.MeshType = Enum.MeshType.Wedge
b61.Name = "Mesh"
b61.Scale = Vector3.new(1, 0.417480946, 0.626221359)
p65 = Instance.new("Part", m)
p65.BrickColor = BrickColor.new("Bright red")
p65.Material = Enum.Material.SmoothPlastic
p65.Name = "apart"
p65.CFrame = CFrame.new(2.74655938, 158.52919, 39.6668968, -0.000274702004, -0.999999702, -3.05771828e-005, 0.000183053315, -3.04877722e-005, 1.00000024, -1, 0.000274696184, 0.000183061857)
p65.CanCollide = false
p65.FormFactor = Enum.FormFactor.Custom
p65.Size = Vector3.new(0.358718932, 0.245498881, 0.245498881)
p65.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p65.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p65.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p65.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p65.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p65.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b62 = Instance.new("SpecialMesh", p65)
b62.MeshType = Enum.MeshType.Wedge
b62.Name = "Mesh"
b62.Scale = Vector3.new(1, 0.417480946, 0.626221359)
p66 = Instance.new("Part", m)
p66.BrickColor = BrickColor.new("Bright red")
p66.Material = Enum.Material.SmoothPlastic
p66.Name = "apart"
p66.CFrame = CFrame.new(3.05403376, 158.196106, 40.3330727, -0.000274702004, -0.999999642, -3.05771828e-005, 0.000183053315, -3.04877703e-005, 1.00000024, -1, 0.000274696155, 0.000183061857)
p66.CanCollide = false
p66.FormFactor = Enum.FormFactor.Custom
p66.Size = Vector3.new(0.358718932, 0.512455463, 0.512455463)
p66.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p66.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p66.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p66.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p66.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p66.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b63 = Instance.new("SpecialMesh", p66)
b63.MeshType = Enum.MeshType.Wedge
b63.Name = "Mesh"
p67 = Instance.new("Part", m)
p67.BrickColor = BrickColor.new("Really black")
p67.Material = Enum.Material.Neon
p67.Name = "apart"
p67.CFrame = CFrame.new(3.05403376, 158.196106, 40.1024437, -0.000274702004, -0.999999583, -3.05771828e-005, 0.000183053315, -3.04877685e-005, 1.00000024, -1, 0.000274696125, 0.000183061857)
p67.CanCollide = false
p67.FormFactor = Enum.FormFactor.Custom
p67.Size = Vector3.new(0.245498881, 0.512455463, 0.512455463)
p67.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p67.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p67.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p67.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p67.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p67.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b64 = Instance.new("SpecialMesh", p67)
b64.MeshType = Enum.MeshType.Wedge
b64.Name = "Mesh"
b64.Scale = Vector3.new(0.208740532, 1.00999999, 1)
p68 = Instance.new("Part", m)
p68.BrickColor = BrickColor.new("Really black")
p68.Material = Enum.Material.SmoothPlastic
p68.Name = "apart"
p68.CFrame = CFrame.new(2.74655938, 158.529221, 40.1024551, -0.000274702004, -0.999999523, -3.05771828e-005, 0.000183053315, -3.04877667e-005, 1.00000024, -1, 0.000274696096, 0.000183061857)
p68.CanCollide = false
p68.FormFactor = Enum.FormFactor.Custom
p68.Size = Vector3.new(0.245498881, 0.245498881, 0.245498881)
p68.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p68.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p68.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p68.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p68.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p68.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b65 = Instance.new("SpecialMesh", p68)
b65.MeshType = Enum.MeshType.Wedge
b65.Name = "Mesh"
b65.Scale = Vector3.new(0.417481065, 0.417480946, 0.626221359)
p69 = Instance.new("Part", m)
p69.BrickColor = BrickColor.new("Bright red")
p69.Material = Enum.Material.SmoothPlastic
p69.Name = "apart"
p69.CFrame = CFrame.new(3.05403352, 158.529205, 40.3330612, -3.05614631e-005, 0.999999523, -3.04113782e-005, 6.10796851e-005, -3.05492649e-005, -1.00000024, -1, -3.05628819e-005, -6.10789648e-005)
p69.CanCollide = false
p69.FormFactor = Enum.FormFactor.Custom
p69.Size = Vector3.new(0.358718932, 0.512455463, 0.245498881)
p69.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p69.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p69.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p69.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p69.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p69.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b66 = Instance.new("SpecialMesh", p69)
b66.MeshType = Enum.MeshType.Wedge
b66.Name = "Mesh"
b66.Scale = Vector3.new(1, 1, 0.626221359)
p70 = Instance.new("Part", m)
p70.BrickColor = BrickColor.new("Really black")
p70.Material = Enum.Material.SmoothPlastic
p70.Name = "apart"
p70.CFrame = CFrame.new(3.05403328, 158.529221, 39.89748, -3.05614631e-005, 0.999999523, -3.04113782e-005, 6.10796851e-005, -3.05492649e-005, -1.00000024, -1, -3.05628819e-005, -6.10789648e-005)
p70.CanCollide = false
p70.FormFactor = Enum.FormFactor.Custom
p70.Size = Vector3.new(0.245498881, 0.512455463, 0.245498881)
p70.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p70.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p70.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p70.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p70.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p70.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b67 = Instance.new("SpecialMesh", p70)
b67.MeshType = Enum.MeshType.Wedge
b67.Name = "Mesh"
b67.Scale = Vector3.new(0.417481065, 1, 0.626221359)
p71 = Instance.new("Part", m)
p71.BrickColor = BrickColor.new("Really black")
p71.Material = Enum.Material.Neon
p71.Name = "apart"
p71.CFrame = CFrame.new(3.82271624, 158.093628, 40.6661491, -3.05610884e-005, -0.999999523, -3.04123096e-005, -3.05602262e-005, 3.05529975e-005, -1.00000024, 1, -3.05606263e-005, -3.0561383e-005)
p71.CanCollide = false
p71.FormFactor = Enum.FormFactor.Custom
p71.Size = Vector3.new(0.245498881, 0.512455463, 0.512455463)
p71.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p71.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p71.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p71.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p71.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p71.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b68 = Instance.new("SpecialMesh", p71)
b68.MeshType = Enum.MeshType.Cylinder
b68.Name = "Mesh"
b68.Scale = Vector3.new(0.208740488, 1.00999999, 1.00999999)
p72 = Instance.new("Part", m)
p72.BrickColor = BrickColor.new("Bright red")
p72.Material = Enum.Material.SmoothPlastic
p72.Name = "apart"
p72.CFrame = CFrame.new(3.05403328, 158.529221, 39.6668777, -3.05614631e-005, 0.999999523, -3.04113764e-005, 6.10796851e-005, -3.05492686e-005, -1.00000024, -1, -3.05628819e-005, -6.10789648e-005)
p72.CanCollide = false
p72.FormFactor = Enum.FormFactor.Custom
p72.Size = Vector3.new(0.358718932, 0.512455463, 0.245498881)
p72.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p72.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p72.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p72.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p72.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p72.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b69 = Instance.new("SpecialMesh", p72)
b69.MeshType = Enum.MeshType.Wedge
b69.Name = "Mesh"
b69.Scale = Vector3.new(1, 1, 0.626221359)
p73 = Instance.new("Part", m)
p73.BrickColor = BrickColor.new("Bright red")
p73.Material = Enum.Material.SmoothPlastic
p73.Name = "apart"
p73.CFrame = CFrame.new(3.20776749, 158.27298, 39.2312889, 0.000228409161, -0.965922713, 0.258828849, -0.000213359599, 0.258829117, 0.965923429, -1, -0.00027584983, -0.000146969658)
p73.CanCollide = false
p73.FormFactor = Enum.FormFactor.Custom
p73.Size = Vector3.new(0.245498881, 1.02491093, 0.245498881)
p73.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p73.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p73.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p73.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p73.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p73.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b70 = Instance.new("SpecialMesh", p73)
b70.MeshType = Enum.MeshType.Wedge
b70.Name = "Mesh"
b70.Scale = Vector3.new(0.208740532, 1, 0.626221359)
p74 = Instance.new("Part", m)
p74.BrickColor = BrickColor.new("Really black")
p74.Material = Enum.Material.SmoothPlastic
p74.Name = "apart"
p74.CFrame = CFrame.new(3.20777059, 158.27298, 39.282547, 0.000228409161, -0.965922713, 0.258828819, -0.000213359614, 0.258829117, 0.965923369, -1.00000012, -0.000275849859, -0.000146969644)
p74.CanCollide = false
p74.FormFactor = Enum.FormFactor.Custom
p74.Size = Vector3.new(0.245498881, 1.02491093, 0.245498881)
p74.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p74.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p74.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p74.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p74.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p74.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b71 = Instance.new("SpecialMesh", p74)
b71.MeshType = Enum.MeshType.Wedge
b71.Name = "Mesh"
b71.Scale = Vector3.new(0.208740532, 1, 0.626221359)
p75 = Instance.new("Part", m)
p75.BrickColor = BrickColor.new("Really black")
p75.Material = Enum.Material.Neon
p75.Name = "apart"
p75.CFrame = CFrame.new(3.82271242, 158.093628, 39.3337746, -3.05610592e-005, -0.999999583, -3.03685665e-005, -3.05602152e-005, 3.05473804e-005, -1.00000036, 1.00000024, -3.05606482e-005, -3.05614085e-005)
p75.CanCollide = false
p75.FormFactor = Enum.FormFactor.Custom
p75.Size = Vector3.new(0.245498881, 0.512455463, 0.512455463)
p75.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p75.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p75.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p75.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p75.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p75.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b72 = Instance.new("SpecialMesh", p75)
b72.MeshType = Enum.MeshType.Cylinder
b72.Name = "Mesh"
b72.Scale = Vector3.new(0.208740488, 1.00999999, 1.00999999)
p76 = Instance.new("Part", m)
p76.BrickColor = BrickColor.new("Really black")
p76.Material = Enum.Material.Neon
p76.Name = "apart"
p76.CFrame = CFrame.new(4.6938858, 158.093613, 39.999958, -0.999999583, 4.30660984e-005, 1.49448169e-007, 3.07118171e-008, 5.34493374e-005, -1.00000036, -4.30666332e-005, -1.00000024, -5.34495957e-005)
p76.CanCollide = false
p76.FormFactor = Enum.FormFactor.Custom
p76.Size = Vector3.new(0.245498881, 0.409964353, 0.245498881)
p76.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p76.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p76.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p76.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p76.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p76.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b73 = Instance.new("SpecialMesh", p76)
b73.MeshType = Enum.MeshType.Brick
b73.Name = "Mesh"
b73.Scale = Vector3.new(0.421655834, 1.01999998, 0.333984703)
p77 = Instance.new("Part", m)
p77.BrickColor = BrickColor.new("Really black")
p77.Material = Enum.Material.Neon
p77.Name = "apart"
p77.CFrame = CFrame.new(2.74655533, 158.529221, 40.1024628, -0.000274702033, -0.999999523, -3.06209367e-005, 0.000183053286, -3.04933837e-005, 1.00000036, -1.00000012, 0.000274696125, 0.0001830619)
p77.CanCollide = false
p77.FormFactor = Enum.FormFactor.Custom
p77.Size = Vector3.new(0.245498881, 0.245498881, 0.245498881)
p77.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p77.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p77.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p77.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p77.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p77.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b74 = Instance.new("SpecialMesh", p77)
b74.MeshType = Enum.MeshType.Wedge
b74.Name = "Mesh"
b74.Scale = Vector3.new(0.208740532, 0.417480946, 0.632483602)
p78 = Instance.new("Part", m)
p78.BrickColor = BrickColor.new("Really black")
p78.Material = Enum.Material.Neon
p78.Name = "apart"
p78.CFrame = CFrame.new(2.74655509, 158.529236, 39.8974838, -0.000274702033, -0.999999464, -3.06209367e-005, 0.000183053286, -3.04933819e-005, 1.00000036, -1.00000012, 0.000274696096, 0.0001830619)
p78.CanCollide = false
p78.FormFactor = Enum.FormFactor.Custom
p78.Size = Vector3.new(0.245498881, 0.245498881, 0.245498881)
p78.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p78.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p78.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p78.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p78.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p78.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b75 = Instance.new("SpecialMesh", p78)
b75.MeshType = Enum.MeshType.Wedge
b75.Name = "Mesh"
b75.Scale = Vector3.new(0.208740532, 0.417480946, 0.632483602)
p79 = Instance.new("Part", m)
p79.BrickColor = BrickColor.new("Dark red")
p79.Material = Enum.Material.SmoothPlastic
p79.Name = "apart"
p79.CFrame = CFrame.new(3.82272029, 157.171036, 41.537384, 1, 7.27595761e-012, 0, 0, 0.999999881, -2.98023224e-008, 0, 2.98023224e-008, 0.999999881)
p79.CanCollide = false
p79.FormFactor = Enum.FormFactor.Custom
p79.Size = Vector3.new(1.02491105, 0.512455463, 1.02491093)
p79.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p79.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p79.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p79.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p79.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p79.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b76 = Instance.new("SpecialMesh", p79)
b76.MeshType = Enum.MeshType.Brick
b76.Name = "Mesh"
b76.Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999)
p80 = Instance.new("Part", m)
p80.BrickColor = BrickColor.new("Bright red")
p80.Material = Enum.Material.SmoothPlastic
p80.Name = "apart"
p80.CFrame = CFrame.new(3.82272029, 157.350388, 41.9729614, 1, 7.27595761e-012, 0, 0, 0.999999881, -2.98023224e-008, 0, 2.98023224e-008, 0.999999881)
p80.CanCollide = false
p80.FormFactor = Enum.FormFactor.Custom
p80.Size = Vector3.new(1.02491105, 0.256227732, 0.256227732)
p80.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p80.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p80.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p80.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p80.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p80.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b77 = Instance.new("SpecialMesh", p80)
b77.MeshType = Enum.MeshType.Cylinder
b77.Name = "Mesh"
b77.Scale = Vector3.new(1.01999998, 1, 1)
p81 = Instance.new("Part", m)
p81.BrickColor = BrickColor.new("Persimmon")
p81.Material = Enum.Material.SmoothPlastic
p81.Name = "apart"
p81.CFrame = CFrame.new(3.41275811, 157.555359, 42.3316841, 1, 1.11727404e-005, -4.16862822e-005, -4.16866351e-005, 0.500085592, -0.865975857, 1.11713871e-005, 0.865975857, 0.500085592)
p81.CanCollide = false
p81.FormFactor = Enum.FormFactor.Custom
p81.Size = Vector3.new(0.245498881, 0.768683195, 0.245498881)
p81.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p81.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p81.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p81.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p81.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p81.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b78 = Instance.new("SpecialMesh", p81)
b78.MeshType = Enum.MeshType.Wedge
b78.Name = "Mesh"
b78.Scale = Vector3.new(0.417481035, 1, 0.626221299)
p82 = Instance.new("Part", m)
p82.BrickColor = BrickColor.new("Dark red")
p82.Material = Enum.Material.SmoothPlastic
p82.Name = "apart"
p82.CFrame = CFrame.new(3.82271981, 156.018005, 41.4092636, 1, 3.05180438e-005, -3.05171125e-005, -3.05171106e-005, 0.99999994, 3.05180401e-005, 3.05180401e-005, -3.05171106e-005, 0.99999994)
p82.CanCollide = false
p82.FormFactor = Enum.FormFactor.Custom
p82.Size = Vector3.new(1.02491105, 0.256227732, 0.768683195)
p82.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p82.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p82.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p82.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p82.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p82.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b79 = Instance.new("SpecialMesh", p82)
b79.MeshType = Enum.MeshType.Wedge
b79.Name = "Mesh"
b79.Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999)
p83 = Instance.new("Part", m)
p83.BrickColor = BrickColor.new("Dark red")
p83.Material = Enum.Material.SmoothPlastic
p83.Name = "apart"
p83.CFrame = CFrame.new(3.82271981, 156.018005, 41.9217148, 1, 0, 0, 0, 0.99999994, 0, 0, 0, 0.99999994)
p83.CanCollide = false
p83.FormFactor = Enum.FormFactor.Custom
p83.Size = Vector3.new(1.02491105, 0.256227732, 0.256227732)
p83.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p83.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p83.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p83.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p83.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p83.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b80 = Instance.new("SpecialMesh", p83)
b80.MeshType = Enum.MeshType.Brick
b80.Name = "Mesh"
b80.Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999)
p84 = Instance.new("Part", m)
p84.BrickColor = BrickColor.new("Dark red")
p84.Material = Enum.Material.SmoothPlastic
p84.Name = "apart"
p84.CFrame = CFrame.new(3.82271981, 155.633667, 41.5373764, 1, 0, 0, 0, 0.99999994, 0, 0, 0, 0.99999994)
p84.CanCollide = false
p84.FormFactor = Enum.FormFactor.Custom
p84.Size = Vector3.new(1.02491105, 0.512455463, 1.02491093)
p84.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p84.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p84.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p84.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p84.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p84.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b81 = Instance.new("SpecialMesh", p84)
b81.MeshType = Enum.MeshType.Brick
b81.Name = "Mesh"
b81.Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999)
p85 = Instance.new("Part", m)
p85.BrickColor = BrickColor.new("Persimmon")
p85.Material = Enum.Material.SmoothPlastic
p85.Name = "apart"
p85.CFrame = CFrame.new(4.23268604, 157.555389, 42.331665, 1, 1.11727377e-005, -4.16862786e-005, -4.16866387e-005, 0.500085652, -0.865975916, 1.1171388e-005, 0.865975916, 0.500085652)
p85.CanCollide = false
p85.FormFactor = Enum.FormFactor.Custom
p85.Size = Vector3.new(0.245498881, 0.768683195, 0.245498881)
p85.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p85.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p85.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p85.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p85.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p85.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b82 = Instance.new("SpecialMesh", p85)
b82.MeshType = Enum.MeshType.Wedge
b82.Name = "Mesh"
b82.Scale = Vector3.new(0.417481035, 1, 0.626221299)
p86 = Instance.new("Part", m)
p86.BrickColor = BrickColor.new("Dark red")
p86.Material = Enum.Material.SmoothPlastic
p86.Name = "apart"
p86.CFrame = CFrame.new(3.82272005, 156.402374, 41.9217072, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p86.CanCollide = false
p86.FormFactor = Enum.FormFactor.Custom
p86.Size = Vector3.new(1.02491105, 0.512455463, 0.256227732)
p86.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p86.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p86.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p86.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p86.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p86.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b83 = Instance.new("SpecialMesh", p86)
b83.MeshType = Enum.MeshType.Wedge
b83.Name = "Mesh"
b83.Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999)
p87 = Instance.new("Part", m)
p87.BrickColor = BrickColor.new("Bright red")
p87.Material = Enum.Material.SmoothPlastic
p87.Name = "apart"
p87.CFrame = CFrame.new(3.82272005, 155.633698, 41.5629883, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p87.CanCollide = false
p87.FormFactor = Enum.FormFactor.Custom
p87.Size = Vector3.new(1.02491105, 0.512455463, 0.973665357)
p87.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p87.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p87.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p87.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p87.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p87.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b84 = Instance.new("SpecialMesh", p87)
b84.MeshType = Enum.MeshType.Brick
b84.Name = "Mesh"
b84.Scale = Vector3.new(0.5, 1.01999998, 1.01999998)
p88 = Instance.new("Part", m)
p88.BrickColor = BrickColor.new("Dark stone grey")
p88.Material = Enum.Material.SmoothPlastic
p88.Name = "apart"
p88.CFrame = CFrame.new(3.82272005, 157.350418, 41.9729462, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p88.CanCollide = false
p88.FormFactor = Enum.FormFactor.Custom
p88.Size = Vector3.new(1.02491105, 0.256227732, 0.256227732)
p88.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p88.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p88.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p88.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p88.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p88.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b85 = Instance.new("SpecialMesh", p88)
b85.MeshType = Enum.MeshType.Cylinder
b85.Name = "Mesh"
b85.Scale = Vector3.new(1.02999997, 0.5, 0.5)
p89 = Instance.new("Part", m)
p89.BrickColor = BrickColor.new("Really black")
p89.Material = Enum.Material.Neon
p89.Name = "apart"
p89.CFrame = CFrame.new(3.82272005, 155.633698, 41.5629883, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p89.CanCollide = false
p89.FormFactor = Enum.FormFactor.Custom
p89.Size = Vector3.new(1.02491105, 0.512455463, 0.973665357)
p89.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p89.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p89.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p89.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p89.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p89.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b86 = Instance.new("SpecialMesh", p89)
b86.MeshType = Enum.MeshType.Brick
b86.Name = "Mesh"
b86.Scale = Vector3.new(0.25, 1.02999997, 1.02999997)
p90 = Instance.new("Part", m)
p90.BrickColor = BrickColor.new("Bright red")
p90.Material = Enum.Material.SmoothPlastic
p90.Name = "apart"
p90.CFrame = CFrame.new(3.82272005, 156.402374, 41.5373688, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p90.CanCollide = false
p90.FormFactor = Enum.FormFactor.Custom
p90.Size = Vector3.new(1.02491105, 2.04982185, 1.02491093)
p90.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p90.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p90.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p90.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p90.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p90.TopSurface = Enum.SurfaceType.SmoothNoOutlines
--[[p91 = Instance.new("Part", m)
p91.BrickColor = BrickColor.new("Bright orange")
p91.Name = "Right Arm"
p91.CFrame = CFrame.new(3.81999993, 156.276108, 41.5, -4.37113883e-008, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-008)
p91.CanCollide = false
p91.FormFactor = Enum.FormFactor.Symmetric
p91.Size = Vector3.new(1, 2, 1)
p91.BottomSurface = Enum.SurfaceType.Smooth
p91.TopSurface = Enum.SurfaceType.Smooth--]]
p91 = RightArm
p92 = Instance.new("Part", m)
p92.BrickColor = BrickColor.new("Bright red")
p92.Material = Enum.Material.SmoothPlastic
p92.Name = "apart"
p92.CFrame = CFrame.new(3.82272005, 154.35257, 39.4875336, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p92.CanCollide = false
p92.FormFactor = Enum.FormFactor.Custom
p92.Size = Vector3.new(1.02491105, 2.04982185, 1.02491093)
p92.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p92.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p92.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p92.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p92.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p92.TopSurface = Enum.SurfaceType.SmoothNoOutlines
--[[p93 = Instance.new("Part", m)
p93.BrickColor = BrickColor.new("Earth green")
p93.Name = "Left Leg"
p93.CFrame = CFrame.new(3.81999993, 154.276123, 39.5, -4.37113883e-008, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-008)
p93.CanCollide = false
p93.FormFactor = Enum.FormFactor.Symmetric
p93.Size = Vector3.new(1, 2, 1)
p93.BottomSurface = Enum.SurfaceType.Smooth
p93.TopSurface = Enum.SurfaceType.Smooth--]]
p93 = LeftLeg
p94 = Instance.new("Part", m)
p94.BrickColor = BrickColor.new("Dark red")
p94.Material = Enum.Material.SmoothPlastic
p94.Name = "apart"
p94.CFrame = CFrame.new(3.82272005, 154.403824, 39.4875336, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p94.CanCollide = false
p94.FormFactor = Enum.FormFactor.Custom
p94.Size = Vector3.new(1.02491105, 1.12740207, 0.409964353)
p94.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p94.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p94.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p94.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p94.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p94.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b87 = Instance.new("SpecialMesh", p94)
b87.MeshType = Enum.MeshType.Brick
b87.Name = "Mesh"
b87.Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999)
p95 = Instance.new("Part", m)
p95.BrickColor = BrickColor.new("Dark stone grey")
p95.Material = Enum.Material.SmoothPlastic
p95.Name = "apart"
p95.CFrame = CFrame.new(3.8483429, 153.558273, 39.4875336, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p95.CanCollide = false
p95.FormFactor = Enum.FormFactor.Custom
p95.Size = Vector3.new(0.973665535, 0.256227732, 0.307473242)
p95.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p95.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p95.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p95.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p95.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p95.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b88 = Instance.new("SpecialMesh", p95)
b88.MeshType = Enum.MeshType.Brick
b88.Name = "Mesh"
b88.Scale = Vector3.new(1.02999997, 1.00999999, 1.00999999)
p96 = Instance.new("Part", m)
p96.BrickColor = BrickColor.new("Really black")
p96.Material = Enum.Material.Neon
p96.Name = "apart"
p96.CFrame = CFrame.new(3.82272005, 154.403824, 39.4875336, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p96.CanCollide = false
p96.FormFactor = Enum.FormFactor.Custom
p96.Size = Vector3.new(1.02491105, 1.12740207, 0.409964353)
p96.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p96.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p96.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p96.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p96.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p96.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b89 = Instance.new("SpecialMesh", p96)
b89.MeshType = Enum.MeshType.Brick
b89.Name = "Mesh"
b89.Scale = Vector3.new(1.02999997, 1.00999999, 0.25)
p97 = Instance.new("Part", m)
p97.BrickColor = BrickColor.new("Really black")
p97.Material = Enum.Material.Neon
p97.Name = "apart"
p97.CFrame = CFrame.new(3.8483429, 153.558273, 39.4875336, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p97.CanCollide = false
p97.FormFactor = Enum.FormFactor.Custom
p97.Size = Vector3.new(0.973665535, 0.256227732, 0.307473242)
p97.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p97.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p97.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p97.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p97.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p97.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b90 = Instance.new("SpecialMesh", p97)
b90.MeshType = Enum.MeshType.Brick
b90.Name = "Mesh"
b90.Scale = Vector3.new(1.03999996, 0.5, 1.00999999)
p98 = Instance.new("Part", m)
p98.BrickColor = BrickColor.new("Dark red")
p98.Material = Enum.Material.SmoothPlastic
p98.Name = "apart"
p98.CFrame = CFrame.new(3.56649303, 154.045105, 39.4362946, -4.37113883e-008, 0, -1, 9.29513355e-010, 1, -4.06303176e-017, 1, -9.29513355e-010, -4.37113883e-008)
p98.CanCollide = false
p98.FormFactor = Enum.FormFactor.Custom
p98.Size = Vector3.new(0.922420025, 0.409964412, 0.512455404)
p98.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p98.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p98.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p98.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p98.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p98.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b91 = Instance.new("SpecialMesh", p98)
b91.MeshType = Enum.MeshType.Wedge
b91.Name = "Mesh"
b91.Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999)
p99 = Instance.new("Part", m)
p99.BrickColor = BrickColor.new("Bright red")
p99.Material = Enum.Material.SmoothPlastic
p99.Name = "apart"
p99.CFrame = CFrame.new(3.8483429, 153.558273, 39.4875336, -4.37113883e-008, -2.16840434e-019, 1, -4.3159529e-005, 1, -1.88656317e-012, -1, -4.3159529e-005, -4.37113883e-008)
p99.CanCollide = false
p99.FormFactor = Enum.FormFactor.Custom
p99.Size = Vector3.new(0.922419965, 0.256227762, 0.973665476)
p99.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p99.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p99.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p99.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p99.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p99.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b92 = Instance.new("SpecialMesh", p99)
b92.MeshType = Enum.MeshType.Torso
b92.Name = "Mesh"
b92.Scale = Vector3.new(1, 1, 1.01999998)
p100 = Instance.new("Part", m)
p100.BrickColor = BrickColor.new("Dark stone grey")
p100.Material = Enum.Material.SmoothPlastic
p100.Name = "apart"
p100.CFrame = CFrame.new(3.82272005, 154.403824, 39.4875298, 1, -2.16840434e-019, 0, -2.16840434e-019, 1, 8.24642978e-020, 0, 8.24642848e-020, 1)
p100.CanCollide = false
p100.FormFactor = Enum.FormFactor.Custom
p100.Size = Vector3.new(1.02491105, 1.12740207, 0.409964353)
p100.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p100.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p100.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p100.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p100.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p100.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b93 = Instance.new("SpecialMesh", p100)
b93.MeshType = Enum.MeshType.Brick
b93.Name = "Mesh"
b93.Scale = Vector3.new(1.01999998, 1.00999999, 0.5)
p101 = Instance.new("Part", m)
p101.BrickColor = BrickColor.new("Dark stone grey")
p101.Material = Enum.Material.SmoothPlastic
p101.Name = "apart"
p101.CFrame = CFrame.new(3.82272005, 153.378906, 39.4875298, 1, -2.16840434e-019, 0, -2.16840434e-019, 1, 8.24642978e-020, 0, 8.24642848e-020, 1)
p101.CanCollide = false
p101.FormFactor = Enum.FormFactor.Custom
p101.Size = Vector3.new(1.02491105, 0.245498881, 1.02491093)
p101.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p101.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p101.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p101.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p101.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p101.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b94 = Instance.new("SpecialMesh", p101)
b94.MeshType = Enum.MeshType.Brick
b94.Name = "Mesh"
b94.Scale = Vector3.new(1.00999999, 0.421655744, 1.00999999)
p102 = Instance.new("Part", m)
p102.BrickColor = BrickColor.new("Dark red")
p102.Material = Enum.Material.SmoothPlastic
p102.Name = "apart"
p102.CFrame = CFrame.new(3.82272005, 153.635132, 39.4875298, 1, -2.16840434e-019, 0, -2.16840434e-019, 1, 8.24642978e-020, 0, 8.24642848e-020, 1)
p102.CanCollide = false
p102.FormFactor = Enum.FormFactor.Custom
p102.Size = Vector3.new(1.02491105, 0.409964383, 1.02491093)
p102.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p102.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p102.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p102.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p102.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p102.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b95 = Instance.new("SpecialMesh", p102)
b95.MeshType = Enum.MeshType.Brick
b95.Name = "Mesh"
b95.Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999)
--[[p103 = Instance.new("Part", m)
p103.BrickColor = BrickColor.new("Earth green")
p103.Name = "Right Leg"
p103.CFrame = CFrame.new(3.81999993, 154.276123, 40.5, -4.37113883e-008, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-008)
p103.CanCollide = false
p103.FormFactor = Enum.FormFactor.Symmetric
p103.Size = Vector3.new(1, 2, 1)
p103.BottomSurface = Enum.SurfaceType.Smooth
p103.TopSurface = Enum.SurfaceType.Smooth--]]
p103 = RightLeg
p104 = Instance.new("Part", m)
p104.BrickColor = BrickColor.new("Bright red")
p104.Material = Enum.Material.SmoothPlastic
p104.Name = "apart"
p104.CFrame = CFrame.new(3.82272005, 154.35257, 40.5124359, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p104.CanCollide = false
p104.FormFactor = Enum.FormFactor.Custom
p104.Size = Vector3.new(1.02491105, 2.04982185, 1.02491093)
p104.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p104.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p104.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p104.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p104.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p104.TopSurface = Enum.SurfaceType.SmoothNoOutlines
p105 = Instance.new("Part", m)
p105.BrickColor = BrickColor.new("Dark stone grey")
p105.Material = Enum.Material.SmoothPlastic
p105.Name = "apart"
p105.CFrame = CFrame.new(3.82272005, 154.403824, 40.5124359, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p105.CanCollide = false
p105.FormFactor = Enum.FormFactor.Custom
p105.Size = Vector3.new(1.02491105, 1.12740207, 0.409964353)
p105.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p105.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p105.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p105.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p105.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p105.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b96 = Instance.new("SpecialMesh", p105)
b96.MeshType = Enum.MeshType.Brick
b96.Name = "Mesh"
b96.Scale = Vector3.new(1.01999998, 1.00999999, 0.5)
p106 = Instance.new("Part", m)
p106.BrickColor = BrickColor.new("Dark red")
p106.Material = Enum.Material.SmoothPlastic
p106.Name = "apart"
p106.CFrame = CFrame.new(3.82272005, 154.403824, 40.5124359, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p106.CanCollide = false
p106.FormFactor = Enum.FormFactor.Custom
p106.Size = Vector3.new(1.02491105, 1.12740207, 0.409964353)
p106.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p106.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p106.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p106.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p106.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p106.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b97 = Instance.new("SpecialMesh", p106)
b97.MeshType = Enum.MeshType.Brick
b97.Name = "Mesh"
b97.Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999)
p107 = Instance.new("Part", m)
p107.BrickColor = BrickColor.new("Dark red")
p107.Material = Enum.Material.SmoothPlastic
p107.Name = "apart"
p107.CFrame = CFrame.new(3.56649303, 154.045105, 40.5636902, -4.37113883e-008, 0, -1, 9.29513355e-010, 1, -4.06303176e-017, 1, -9.29513355e-010, -4.37113883e-008)
p107.CanCollide = false
p107.FormFactor = Enum.FormFactor.Custom
p107.Size = Vector3.new(0.922420025, 0.409964412, 0.512455404)
p107.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p107.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p107.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p107.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p107.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p107.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b98 = Instance.new("SpecialMesh", p107)
b98.MeshType = Enum.MeshType.Wedge
b98.Name = "Mesh"
b98.Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999)
p108 = Instance.new("Part", m)
p108.BrickColor = BrickColor.new("Bright red")
p108.Material = Enum.Material.SmoothPlastic
p108.Name = "apart"
p108.CFrame = CFrame.new(3.8483429, 153.558273, 40.5124359, -4.37113883e-008, -2.16840434e-019, 1, -4.3159529e-005, 1, -1.88656317e-012, -1, -4.3159529e-005, -4.37113883e-008)
p108.CanCollide = false
p108.FormFactor = Enum.FormFactor.Custom
p108.Size = Vector3.new(0.922419965, 0.256227762, 0.973665476)
p108.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p108.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p108.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p108.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p108.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p108.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b99 = Instance.new("SpecialMesh", p108)
b99.MeshType = Enum.MeshType.Torso
b99.Name = "Mesh"
b99.Scale = Vector3.new(1, 1, 1.01999998)
p109 = Instance.new("Part", m)
p109.BrickColor = BrickColor.new("Dark red")
p109.Material = Enum.Material.SmoothPlastic
p109.Name = "apart"
p109.CFrame = CFrame.new(3.82272005, 153.635132, 40.5124359, 1, -2.16840434e-019, 0, -2.16840434e-019, 1, 8.24642978e-020, 0, 8.24642848e-020, 1)
p109.CanCollide = false
p109.FormFactor = Enum.FormFactor.Custom
p109.Size = Vector3.new(1.02491105, 0.409964383, 1.02491093)
p109.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p109.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p109.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p109.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p109.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p109.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b100 = Instance.new("SpecialMesh", p109)
b100.MeshType = Enum.MeshType.Brick
b100.Name = "Mesh"
b100.Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999)
p110 = Instance.new("Part", m)
p110.BrickColor = BrickColor.new("Dark stone grey")
p110.Material = Enum.Material.SmoothPlastic
p110.Name = "apart"
p110.CFrame = CFrame.new(3.82272005, 153.378906, 40.5124359, 1, -2.16840434e-019, 0, -2.16840434e-019, 1, 8.24642978e-020, 0, 8.24642848e-020, 1)
p110.CanCollide = false
p110.FormFactor = Enum.FormFactor.Custom
p110.Size = Vector3.new(1.02491105, 0.245498881, 1.02491093)
p110.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p110.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p110.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p110.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p110.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p110.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b101 = Instance.new("SpecialMesh", p110)
b101.MeshType = Enum.MeshType.Brick
b101.Name = "Mesh"
b101.Scale = Vector3.new(1.00999999, 0.421655744, 1.00999999)
p111 = Instance.new("Part", m)
p111.BrickColor = BrickColor.new("Dark stone grey")
p111.Material = Enum.Material.SmoothPlastic
p111.Name = "apart"
p111.CFrame = CFrame.new(3.8483429, 153.558273, 40.5124359, 1, -2.16840434e-019, 0, -2.16840434e-019, 1, 8.24642978e-020, 0, 8.24642848e-020, 1)
p111.CanCollide = false
p111.FormFactor = Enum.FormFactor.Custom
p111.Size = Vector3.new(0.973665535, 0.256227732, 0.307473242)
p111.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p111.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p111.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p111.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p111.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p111.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b102 = Instance.new("SpecialMesh", p111)
b102.MeshType = Enum.MeshType.Brick
b102.Name = "Mesh"
b102.Scale = Vector3.new(1.02999997, 1.00999999, 1.00999999)
p112 = Instance.new("Part", m)
p112.BrickColor = BrickColor.new("Really black")
p112.Material = Enum.Material.Neon
p112.Name = "apart"
p112.CFrame = CFrame.new(3.8483429, 153.558273, 40.5124359, 1, -2.16840434e-019, 0, -2.16840434e-019, 1, 8.24642978e-020, 0, 8.24642848e-020, 1)
p112.CanCollide = false
p112.FormFactor = Enum.FormFactor.Custom
p112.Size = Vector3.new(0.973665535, 0.256227732, 0.307473242)
p112.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p112.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p112.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p112.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p112.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p112.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b103 = Instance.new("SpecialMesh", p112)
b103.MeshType = Enum.MeshType.Brick
b103.Name = "Mesh"
b103.Scale = Vector3.new(1.03999996, 0.5, 1.00999999)
p113 = Instance.new("Part", m)
p113.BrickColor = BrickColor.new("Really black")
p113.Material = Enum.Material.Neon
p113.Name = "apart"
p113.CFrame = CFrame.new(3.82272005, 154.403824, 40.5124359, 1, -2.16840434e-019, 0, -2.16840434e-019, 1, 8.24642978e-020, 0, 8.24642848e-020, 1)
p113.CanCollide = false
p113.FormFactor = Enum.FormFactor.Custom
p113.Size = Vector3.new(1.02491105, 1.12740207, 0.409964353)
p113.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p113.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p113.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p113.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p113.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p113.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b104 = Instance.new("SpecialMesh", p113)
b104.MeshType = Enum.MeshType.Brick
b104.Name = "Mesh"
b104.Scale = Vector3.new(1.02999997, 1.00999999, 0.25)
p114 = Instance.new("Part", m)
p114.BrickColor = BrickColor.new("Bright red")
p114.Material = Enum.Material.SmoothPlastic
p114.Name = "apart"
p114.CFrame = CFrame.new(3.82272005, 157.350449, 38.0270462, 1, -2.72848411e-012, 1.07291953e-012, 0, 1, 0, 6.20303808e-012, 0, 1)
p114.CanCollide = false
p114.FormFactor = Enum.FormFactor.Custom
p114.Size = Vector3.new(1.02491105, 0.256227732, 0.256227732)
p114.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p114.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p114.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p114.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p114.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p114.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b105 = Instance.new("SpecialMesh", p114)
b105.MeshType = Enum.MeshType.Cylinder
b105.Name = "Mesh"
b105.Scale = Vector3.new(1.01999998, 1, 1)
p115 = Instance.new("Part", m)
p115.BrickColor = BrickColor.new("Dark red")
p115.Material = Enum.Material.SmoothPlastic
p115.Name = "apart"
p115.CFrame = CFrame.new(3.82272005, 157.171097, 38.4626236, 1, -2.72848411e-012, 1.07291953e-012, 0, 1, 0, 6.20303808e-012, 0, 1)
p115.CanCollide = false
p115.FormFactor = Enum.FormFactor.Custom
p115.Size = Vector3.new(1.02491105, 0.512455463, 1.02491093)
p115.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p115.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p115.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p115.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p115.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p115.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b106 = Instance.new("SpecialMesh", p115)
b106.MeshType = Enum.MeshType.Brick
b106.Name = "Mesh"
b106.Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999)
--[[p116 = Instance.new("Part", m)
p116.BrickColor = BrickColor.new("Bright orange")
p116.Name = "Left Arm"
p116.CFrame = CFrame.new(3.81999993, 156.276138, 38.5000076, -4.37103154e-008, -2.72848411e-012, -1, 0, 1, 0, 1, 0, -4.37175913e-008)
p116.CanCollide = false
p116.FormFactor = Enum.FormFactor.Symmetric
p116.Size = Vector3.new(1, 2, 1)
p116.BottomSurface = Enum.SurfaceType.Smooth
p116.TopSurface = Enum.SurfaceType.Smooth--]]
p116 = LeftArm
p117 = Instance.new("Part", m)
p117.BrickColor = BrickColor.new("Persimmon")
p117.Material = Enum.Material.SmoothPlastic
p117.Name = "apart"
p117.CFrame = CFrame.new(4.232687, 157.55545, 37.668335, -1, 4.16358271e-005, 1.11714198e-005, 1.11466707e-005, 0.500072539, -0.865983546, -4.16424664e-005, -0.865983546, -0.500072539)
p117.CanCollide = false
p117.FormFactor = Enum.FormFactor.Custom
p117.Size = Vector3.new(0.245498881, 0.768683195, 0.245498881)
p117.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p117.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p117.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p117.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p117.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p117.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b107 = Instance.new("SpecialMesh", p117)
b107.MeshType = Enum.MeshType.Wedge
b107.Name = "Mesh"
b107.Scale = Vector3.new(0.417481035, 1, 0.626221299)
p118 = Instance.new("Part", m)
p118.BrickColor = BrickColor.new("Dark red")
p118.Material = Enum.Material.SmoothPlastic
p118.Name = "apart"
p118.CFrame = CFrame.new(3.82272029, 156.018066, 38.0782814, 1, -2.6537661e-012, 0, -8.34776692e-013, 1, 0, 3.63797881e-012, 0, 1)
p118.CanCollide = false
p118.FormFactor = Enum.FormFactor.Custom
p118.Size = Vector3.new(1.02491105, 0.256227732, 0.256227732)
p118.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p118.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p118.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p118.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p118.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p118.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b108 = Instance.new("SpecialMesh", p118)
b108.MeshType = Enum.MeshType.Brick
b108.Name = "Mesh"
b108.Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999)
p119 = Instance.new("Part", m)
p119.BrickColor = BrickColor.new("Dark red")
p119.Material = Enum.Material.SmoothPlastic
p119.Name = "apart"
p119.CFrame = CFrame.new(3.82272029, 156.402405, 38.0782814, -1, 3.04301539e-005, 3.05180438e-005, 3.04310852e-005, 1, 3.04301557e-005, -3.05171197e-005, 3.04310852e-005, -1)
p119.CanCollide = false
p119.FormFactor = Enum.FormFactor.Custom
p119.Size = Vector3.new(1.02491105, 0.512455463, 0.256227732)
p119.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p119.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p119.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p119.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p119.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p119.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b109 = Instance.new("SpecialMesh", p119)
b109.MeshType = Enum.MeshType.Wedge
b109.Name = "Mesh"
b109.Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999)
p120 = Instance.new("Part", m)
p120.BrickColor = BrickColor.new("Dark stone grey")
p120.Material = Enum.Material.SmoothPlastic
p120.Name = "apart"
p120.CFrame = CFrame.new(3.82272005, 157.350449, 38.0270424, 1, -9.09494702e-013, 9.09494702e-013, -9.09494702e-013, 1, 0, 1.36424205e-012, 0, 1)
p120.CanCollide = false
p120.FormFactor = Enum.FormFactor.Custom
p120.Size = Vector3.new(1.02491105, 0.256227732, 0.256227732)
p120.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p120.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p120.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p120.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p120.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p120.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b110 = Instance.new("SpecialMesh", p120)
b110.MeshType = Enum.MeshType.Cylinder
b110.Name = "Mesh"
b110.Scale = Vector3.new(1.02999997, 0.5, 0.5)
p121 = Instance.new("Part", m)
p121.BrickColor = BrickColor.new("Persimmon")
p121.Material = Enum.Material.SmoothPlastic
p121.Name = "apart"
p121.CFrame = CFrame.new(3.41275764, 157.555435, 37.6683273, -1, 4.16358271e-005, 1.1171418e-005, 1.11466707e-005, 0.500072539, -0.865983546, -4.16424627e-005, -0.865983546, -0.500072539)
p121.CanCollide = false
p121.FormFactor = Enum.FormFactor.Custom
p121.Size = Vector3.new(0.245498881, 0.768683195, 0.245498881)
p121.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p121.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p121.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p121.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p121.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p121.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b111 = Instance.new("SpecialMesh", p121)
b111.MeshType = Enum.MeshType.Wedge
b111.Name = "Mesh"
b111.Scale = Vector3.new(0.417481035, 1, 0.626221299)
p122 = Instance.new("Part", m)
p122.BrickColor = BrickColor.new("Dark red")
p122.Material = Enum.Material.SmoothPlastic
p122.Name = "apart"
p122.CFrame = CFrame.new(3.82272029, 156.018051, 38.590744, -1, 3.04301557e-005, 3.05180438e-005, 3.04310852e-005, 1, 3.04301557e-005, -3.05171179e-005, 3.04310852e-005, -1)
p122.CanCollide = false
p122.FormFactor = Enum.FormFactor.Custom
p122.Size = Vector3.new(1.02491105, 0.256227732, 0.768683195)
p122.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p122.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p122.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p122.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p122.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p122.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b112 = Instance.new("SpecialMesh", p122)
b112.MeshType = Enum.MeshType.Wedge
b112.Name = "Mesh"
b112.Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999)
p123 = Instance.new("Part", m)
p123.BrickColor = BrickColor.new("Dark red")
p123.Material = Enum.Material.SmoothPlastic
p123.Name = "apart"
p123.CFrame = CFrame.new(3.82272005, 155.633713, 38.462616, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p123.CanCollide = false
p123.FormFactor = Enum.FormFactor.Custom
p123.Size = Vector3.new(1.02491105, 0.512455463, 1.02491093)
p123.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p123.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p123.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p123.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p123.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p123.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b113 = Instance.new("SpecialMesh", p123)
b113.MeshType = Enum.MeshType.Brick
b113.Name = "Mesh"
b113.Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999)
p124 = Instance.new("Part", m)
p124.BrickColor = BrickColor.new("Really black")
p124.Material = Enum.Material.Neon
p124.Name = "apart"
p124.CFrame = CFrame.new(3.82272005, 155.633713, 38.4369965, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p124.CanCollide = false
p124.FormFactor = Enum.FormFactor.Custom
p124.Size = Vector3.new(1.02491105, 0.512455463, 0.973665357)
p124.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p124.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p124.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p124.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p124.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p124.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b114 = Instance.new("SpecialMesh", p124)
b114.MeshType = Enum.MeshType.Brick
b114.Name = "Mesh"
b114.Scale = Vector3.new(0.25, 1.02999997, 1.02999997)
p125 = Instance.new("Part", m)
p125.BrickColor = BrickColor.new("Bright red")
p125.Material = Enum.Material.SmoothPlastic
p125.Name = "apart"
p125.CFrame = CFrame.new(3.82272005, 155.633713, 38.4369965, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p125.CanCollide = false
p125.FormFactor = Enum.FormFactor.Custom
p125.Size = Vector3.new(1.02491105, 0.512455463, 0.973665357)
p125.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p125.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p125.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p125.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p125.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p125.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b115 = Instance.new("SpecialMesh", p125)
b115.MeshType = Enum.MeshType.Brick
b115.Name = "Mesh"
b115.Scale = Vector3.new(0.5, 1.01999998, 1.01999998)
p126 = Instance.new("Part", m)
p126.BrickColor = BrickColor.new("Bright red")
p126.Material = Enum.Material.SmoothPlastic
p126.Name = "apart"
p126.CFrame = CFrame.new(3.82272005, 156.40239, 38.462616, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p126.CanCollide = false
p126.FormFactor = Enum.FormFactor.Custom
p126.Size = Vector3.new(1.02491105, 2.04982185, 1.02491093)
p126.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p126.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p126.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p126.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p126.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p126.TopSurface = Enum.SurfaceType.SmoothNoOutlines
w1 = Instance.new("Weld", p1)
w1.Name = "Torso_Weld"
w1.Part0 = p1
w1.C0 = CFrame.new(40.0074806, -173.696487, -4.43766594, -4.37113883e-008, -4.3159529e-005, -1, 0, 1, -4.3159529e-005, 1, -1.88656295e-012, -4.37113883e-008)
w1.Part1 = p2
w1.C1 = CFrame.new(-40, -174.519974, 3.8200016, -4.37113883e-008, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-008)
w2 = Instance.new("Weld", p2)
w2.Name = "apart_Weld"
w2.Part0 = p2
w2.C0 = CFrame.new(-40, -174.519974, 3.8200016, -4.37113883e-008, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-008)
w2.Part1 = p3
w2.C1 = CFrame.new(39.9540176, 3.18871474, -175.183014, 3.0473866e-005, -3.05603571e-005, -1, -1, -3.05185094e-005, -3.04729328e-005, -3.05175781e-005, 1, -3.05612884e-005)
w3 = Instance.new("Weld", p3)
w3.Name = "apart_Weld"
w3.Part0 = p3
w3.C0 = CFrame.new(39.9540176, 3.18871474, -175.183014, 3.0473866e-005, -3.05603571e-005, -1, -1, -3.05185094e-005, -3.04729328e-005, -3.05175781e-005, 1, -3.05612884e-005)
w3.Part1 = p4
w3.C1 = CFrame.new(4.59312534, 39.9904404, 174.904617, -1, 1.85528792e-009, -4.30663385e-005, 4.30663385e-005, 5.3449472e-005, -1, 4.46585241e-010, -1, -5.3449472e-005)
w4 = Instance.new("Weld", p4)
w4.Name = "apart_Weld"
w4.Part0 = p4
w4.C0 = CFrame.new(4.59312534, 39.9904404, 174.904617, -1, 1.85528792e-009, -4.30663385e-005, 4.30663385e-005, 5.3449472e-005, -1, 4.46585241e-010, -1, -5.3449472e-005)
w4.Part1 = p5
w4.C1 = CFrame.new(40.0074806, -173.670853, -4.28392887, -4.37113883e-008, -4.3159529e-005, -1, 0, 1, -4.3159529e-005, 1, -1.88656295e-012, -4.37113883e-008)
w5 = Instance.new("Weld", p5)
w5.Name = "apart_Weld"
w5.Part0 = p5
w5.C0 = CFrame.new(40.0074806, -173.670853, -4.28392887, -4.37113883e-008, -4.3159529e-005, -1, 0, 1, -4.3159529e-005, 1, -1.88656295e-012, -4.37113883e-008)
w5.Part1 = p6
w5.C1 = CFrame.new(4.59312534, 39.9904099, 175.417068, -1, 1.85528792e-009, -4.30663385e-005, 4.30663385e-005, 5.3449472e-005, -1, 4.46585241e-010, -1, -5.3449472e-005)
w6 = Instance.new("Weld", p6)
w6.Name = "apart_Weld"
w6.Part0 = p6
w6.C0 = CFrame.new(4.59312534, 39.9904099, 175.417068, -1, 1.85528792e-009, -4.30663385e-005, 4.30663385e-005, 5.3449472e-005, -1, 4.46585241e-010, -1, -5.3449472e-005)
w6.Part1 = p7
w6.C1 = CFrame.new(-4.07894802, -174.697495, -39.9743652, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w7 = Instance.new("Weld", p7)
w7.Name = "apart_Weld"
w7.Part0 = p7
w7.C0 = CFrame.new(-4.07894802, -174.697495, -39.9743652, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w7.Part1 = p8
w7.C1 = CFrame.new(-4.38642216, -173.672577, -39.9999847, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w8 = Instance.new("Weld", p8)
w8.Name = "apart_Weld"
w8.Part0 = p8
w8.C0 = CFrame.new(-4.38642216, -173.672577, -39.9999847, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w8.Part1 = p9
w8.C1 = CFrame.new(4.57660246, -175.162796, 39.9838219, -1, 9.14681077e-005, -3.05134035e-005, 9.14653137e-005, 1, 9.14681077e-005, 3.05217691e-005, 9.14653137e-005, -1)
w9 = Instance.new("Weld", p9)
w9.Name = "apart_Weld"
w9.Part0 = p9
w9.C0 = CFrame.new(4.57660246, -175.162796, 39.9838219, -1, 9.14681077e-005, -3.05134035e-005, 9.14653137e-005, 1, 9.14681077e-005, 3.05217691e-005, 9.14653137e-005, -1)
w9.Part1 = p10
w9.C1 = CFrame.new(40.9022369, -2.6630733, 176.054321, -3.05612884e-005, -3.04729328e-005, -1, 1, -3.05185094e-005, -3.05603571e-005, -3.05175781e-005, -1, 3.0473866e-005)
w10 = Instance.new("Weld", p10)
w10.Name = "apart_Weld"
w10.Part0 = p10
w10.C0 = CFrame.new(40.9022369, -2.6630733, 176.054321, -3.05612884e-005, -3.04729328e-005, -1, 1, -3.05185094e-005, -3.05603571e-005, -3.05175781e-005, -1, 3.0473866e-005)
w10.Part1 = p11
w10.C1 = CFrame.new(39.1086426, -2.66312814, 176.054382, -3.05612884e-005, -3.04729328e-005, -1, 1, -3.05185094e-005, -3.05603571e-005, -3.05175781e-005, -1, 3.0473866e-005)
w11 = Instance.new("Weld", p11)
w11.Name = "apart_Weld"
w11.Part0 = p11
w11.C0 = CFrame.new(39.1086426, -2.66312814, 176.054382, -3.05612884e-005, -3.04729328e-005, -1, 1, -3.05185094e-005, -3.05603571e-005, -3.05175781e-005, -1, 3.0473866e-005)
w11.Part1 = p12
w11.C1 = CFrame.new(39.1086426, -2.66312814, 176.054382, -3.05612884e-005, -3.04729328e-005, -1, 1, -3.05185094e-005, -3.05603571e-005, -3.05175781e-005, -1, 3.0473866e-005)
w12 = Instance.new("Weld", p12)
w12.Name = "apart_Weld"
w12.Part0 = p12
w12.C0 = CFrame.new(39.1086426, -2.66312814, 176.054382, -3.05612884e-005, -3.04729328e-005, -1, 1, -3.05185094e-005, -3.05603571e-005, -3.05175781e-005, -1, 3.0473866e-005)
w12.Part1 = p13
w12.C1 = CFrame.new(40.0074806, -173.670853, -4.28392887, -4.37113883e-008, -4.3159529e-005, -1, 0, 1, -4.3159529e-005, 1, -1.88656295e-012, -4.37113883e-008)
w13 = Instance.new("Weld", p13)
w13.Name = "apart_Weld"
w13.Part0 = p13
w13.C0 = CFrame.new(40.0074806, -173.670853, -4.28392887, -4.37113883e-008, -4.3159529e-005, -1, 0, 1, -4.3159529e-005, 1, -1.88656295e-012, -4.37113883e-008)
w13.Part1 = p14
w13.C1 = CFrame.new(-3.82272005, -173.672577, -39.9999847, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w14 = Instance.new("Weld", p14)
w14.Name = "apart_Weld"
w14.Part0 = p14
w14.C0 = CFrame.new(-3.82272005, -173.672577, -39.9999847, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w14.Part1 = p15
w14.C1 = CFrame.new(4.59311438, 39.7341995, 175.160828, -1, 1.85528792e-009, -4.30663385e-005, 4.30663385e-005, 5.3449472e-005, -1, 4.46585241e-010, -1, -5.3449472e-005)
w15 = Instance.new("Weld", p15)
w15.Name = "apart_Weld"
w15.Part0 = p15
w15.C0 = CFrame.new(4.59311438, 39.7341995, 175.160828, -1, 1.85528792e-009, -4.30663385e-005, 4.30663385e-005, 5.3449472e-005, -1, 4.46585241e-010, -1, -5.3449472e-005)
w15.Part1 = p16
w15.C1 = CFrame.new(40.9022369, -2.6630733, 176.054321, -3.05612884e-005, -3.04729328e-005, -1, 1, -3.05185094e-005, -3.05603571e-005, -3.05175781e-005, -1, 3.0473866e-005)
w16 = Instance.new("Weld", p16)
w16.Name = "apart_Weld"
w16.Part0 = p16
w16.C0 = CFrame.new(40.9022369, -2.6630733, 176.054321, -3.05612884e-005, -3.04729328e-005, -1, 1, -3.05185094e-005, -3.05603571e-005, -3.05175781e-005, -1, 3.0473866e-005)
w16.Part1 = p17
w16.C1 = CFrame.new(4.59312534, 39.9904251, 175.160843, -1, 1.85528792e-009, -4.30663385e-005, 4.30663385e-005, 5.3449472e-005, -1, 4.46585241e-010, -1, -5.3449472e-005)
w17 = Instance.new("Weld", p17)
w17.Name = "apart_Weld"
w17.Part0 = p17
w17.C0 = CFrame.new(4.59312534, 39.9904251, 175.160843, -1, 1.85528792e-009, -4.30663385e-005, 4.30663385e-005, 5.3449472e-005, -1, 4.46585241e-010, -1, -5.3449472e-005)
w17.Part1 = p18
w17.C1 = CFrame.new(4.59313631, 40.2466507, 175.160858, -1, 1.85528792e-009, -4.30663385e-005, 4.30663385e-005, 5.3449472e-005, -1, 4.46585241e-010, -1, -5.3449472e-005)
w18 = Instance.new("Weld", p18)
w18.Name = "apart_Weld"
w18.Part0 = p18
w18.C0 = CFrame.new(4.59313631, 40.2466507, 175.160858, -1, 1.85528792e-009, -4.30663385e-005, 4.30663385e-005, 5.3449472e-005, -1, 4.46585241e-010, -1, -5.3449472e-005)
w18.Part1 = p19
w18.C1 = CFrame.new(4.59312534, 39.9904251, 175.160843, -1, 1.85528792e-009, -4.30663385e-005, 4.30663385e-005, 5.3449472e-005, -1, 4.46585241e-010, -1, -5.3449472e-005)
w19 = Instance.new("Weld", p19)
w19.Name = "apart_Weld"
w19.Part0 = p19
w19.C0 = CFrame.new(4.59312534, 39.9904251, 175.160843, -1, 1.85528792e-009, -4.30663385e-005, 4.30663385e-005, 5.3449472e-005, -1, 4.46585241e-010, -1, -5.3449472e-005)
w19.Part1 = p20
w19.C1 = CFrame.new(40.0054741, -4.45672226, 175.157623, -3.05612884e-005, -3.04729328e-005, -1, 1, -3.05185094e-005, -3.05603571e-005, -3.05175781e-005, -1, 3.0473866e-005)
w20 = Instance.new("Weld", p20)
w20.Name = "apart_Weld"
w20.Part0 = p20
w20.C0 = CFrame.new(40.0054741, -4.45672226, 175.157623, -3.05612884e-005, -3.04729328e-005, -1, 1, -3.05185094e-005, -3.05603571e-005, -3.05175781e-005, -1, 3.0473866e-005)
w20.Part1 = p21
w20.C1 = CFrame.new(-4.07894802, -174.697495, -39.9743652, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w21 = Instance.new("Weld", p21)
w21.Name = "apart_Weld"
w21.Part0 = p21
w21.C0 = CFrame.new(-4.07894802, -174.697495, -39.9743652, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w21.Part1 = p22
w21.C1 = CFrame.new(39.9540176, 3.18871474, -175.183014, 3.0473866e-005, -3.05603571e-005, -1, -1, -3.05185094e-005, -3.04729328e-005, -3.05175781e-005, 1, -3.05612884e-005)
w22 = Instance.new("Weld", p22)
w22.Name = "apart_Weld"
w22.Part0 = p22
w22.C0 = CFrame.new(39.9540176, 3.18871474, -175.183014, 3.0473866e-005, -3.05603571e-005, -1, -1, -3.05185094e-005, -3.04729328e-005, -3.05175781e-005, 1, -3.05612884e-005)
w22.Part1 = p23
w22.C1 = CFrame.new(-3.82272005, -174.64624, -39.9999847, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w23 = Instance.new("Weld", p23)
w23.Name = "apart_Weld"
w23.Part0 = p23
w23.C0 = CFrame.new(-3.82272005, -174.64624, -39.9999847, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w23.Part1 = p24
w23.C1 = CFrame.new(-3.82272005, -173.416351, -39.4875336, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w24 = Instance.new("Weld", p24)
w24.Name = "apart_Weld"
w24.Part0 = p24
w24.C0 = CFrame.new(-3.82272005, -173.416351, -39.4875336, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w24.Part1 = p25
w24.C1 = CFrame.new(-3.82272005, -173.416351, -40.5124359, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w25 = Instance.new("Weld", p25)
w25.Name = "apart_Weld"
w25.Part0 = p25
w25.C0 = CFrame.new(-3.82272005, -173.416351, -40.5124359, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w25.Part1 = p26
w25.C1 = CFrame.new(39.1086426, -2.66312814, 176.054382, -3.05612884e-005, -3.04729328e-005, -1, 1, -3.05185094e-005, -3.05603571e-005, -3.05175781e-005, -1, 3.0473866e-005)
w26 = Instance.new("Weld", p26)
w26.Name = "apart_Weld"
w26.Part0 = p26
w26.C0 = CFrame.new(39.1086426, -2.66312814, 176.054382, -3.05612884e-005, -3.04729328e-005, -1, 1, -3.05185094e-005, -3.05603571e-005, -3.05175781e-005, -1, 3.0473866e-005)
w26.Part1 = p27
w26.C1 = CFrame.new(-175.722595, 3.81502461, -39.9998207, 5.34812607e-005, 1, 9.31994482e-010, -1, 5.34812607e-005, -4.31585977e-005, -4.31585977e-005, 1.37618184e-009, 1)
w27 = Instance.new("Weld", p27)
w27.Name = "apart_Weld"
w27.Part0 = p27
w27.C0 = CFrame.new(-175.722595, 3.81502461, -39.9998207, 5.34812607e-005, 1, 9.31994482e-010, -1, 5.34812607e-005, -4.31585977e-005, -4.31585977e-005, 1.37618184e-009, 1)
w27.Part1 = p28
w27.C1 = CFrame.new(39.1086578, -3.17558312, 176.054398, -3.05612884e-005, -3.04729328e-005, -1, 1, -3.05185094e-005, -3.05603571e-005, -3.05175781e-005, -1, 3.0473866e-005)
w28 = Instance.new("Weld", p28)
w28.Name = "apart_Weld"
w28.Part0 = p28
w28.C0 = CFrame.new(39.1086578, -3.17558312, 176.054398, -3.05612884e-005, -3.04729328e-005, -1, 1, -3.05185094e-005, -3.05603571e-005, -3.05175781e-005, -1, 3.0473866e-005)
w28.Part1 = p29
w28.C1 = CFrame.new(-3.82272005, -174.799988, -39.9999847, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w29 = Instance.new("Weld", p29)
w29.Name = "apart_Weld"
w29.Part0 = p29
w29.C0 = CFrame.new(-3.82272005, -174.799988, -39.9999847, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w29.Part1 = p30
w29.C1 = CFrame.new(39.0929604, 2.92530036, -175.160995, -0.000152631605, 6.09867893e-005, -1, -1, -3.05185058e-005, 0.000152629742, -3.05091962e-005, 1, 6.09914459e-005)
w30 = Instance.new("Weld", p30)
w30.Name = "apart_Weld"
w30.Part0 = p30
w30.C0 = CFrame.new(39.0929604, 2.92530036, -175.160995, -0.000152631605, 6.09867893e-005, -1, -1, -3.05185058e-005, 0.000152629742, -3.05091962e-005, 1, 6.09914459e-005)
w30.Part1 = p31
w30.C1 = CFrame.new(40.8865547, 2.92502666, -175.161102, -0.000152631605, 6.09867893e-005, -1, -1, -3.05185058e-005, 0.000152629742, -3.05091962e-005, 1, 6.09914459e-005)
w31 = Instance.new("Weld", p31)
w31.Name = "apart_Weld"
w31.Part0 = p31
w31.C0 = CFrame.new(40.8865547, 2.92502666, -175.161102, -0.000152631605, 6.09867893e-005, -1, -1, -3.05185058e-005, 0.000152629742, -3.05091962e-005, 1, 6.09914459e-005)
w31.Part1 = p32
w31.C1 = CFrame.new(-3.82930517, 174.798615, 40.9788513, 1, 3.05180401e-005, 3.05171143e-005, 3.05171125e-005, -1, 3.0431087e-005, 3.05180438e-005, -3.04301557e-005, -1)
w32 = Instance.new("Weld", p32)
w32.Name = "apart_Weld"
w32.Part0 = p32
w32.C0 = CFrame.new(-3.82930517, 174.798615, 40.9788513, 1, 3.05180401e-005, 3.05171143e-005, 3.05171125e-005, -1, 3.0431087e-005, 3.05180438e-005, -3.04301557e-005, -1)
w32.Part1 = p33
w32.C1 = CFrame.new(40.9022369, -2.6630733, 176.054321, -3.05612884e-005, -3.04729328e-005, -1, 1, -3.05185094e-005, -3.05603571e-005, -3.05175781e-005, -1, 3.0473866e-005)
w33 = Instance.new("Weld", p33)
w33.Name = "apart_Weld"
w33.Part0 = p33
w33.C0 = CFrame.new(40.9022369, -2.6630733, 176.054321, -3.05612884e-005, -3.04729328e-005, -1, 1, -3.05185094e-005, -3.05603571e-005, -3.05175781e-005, -1, 3.0473866e-005)
w33.Part1 = p34
w33.C1 = CFrame.new(-175.825089, 3.81501913, -39.9998207, 5.34812607e-005, 1, 9.31994482e-010, -1, 5.34812607e-005, -4.31585977e-005, -4.31585977e-005, 1.37618184e-009, 1)
w34 = Instance.new("Weld", p34)
w34.Name = "apart_Weld"
w34.Part0 = p34
w34.C0 = CFrame.new(-175.825089, 3.81501913, -39.9998207, 5.34812607e-005, 1, 9.31994482e-010, -1, 5.34812607e-005, -4.31585977e-005, -4.31585977e-005, 1.37618184e-009, 1)
w34.Part1 = p35
w34.C1 = CFrame.new(-3.8292613, 173.876205, 40.4663696, 1, 3.05180401e-005, 3.05171143e-005, 3.05171125e-005, -1, 3.0431087e-005, 3.05180438e-005, -3.04301557e-005, -1)
w35 = Instance.new("Weld", p35)
w35.Name = "apart_Weld"
w35.Part0 = p35
w35.C0 = CFrame.new(-3.8292613, 173.876205, 40.4663696, 1, 3.05180401e-005, 3.05171143e-005, 3.05171125e-005, -1, 3.0431087e-005, 3.05180438e-005, -3.04301557e-005, -1)
w35.Part1 = p36
w35.C1 = CFrame.new(3.81620979, 174.79892, -39.0317726, -1, 3.0431087e-005, 3.05171143e-005, -3.04301557e-005, -1, 3.05180401e-005, 3.05180438e-005, 3.05171125e-005, 1)
w36 = Instance.new("Weld", p36)
w36.Name = "apart_Weld"
w36.Part0 = p36
w36.C0 = CFrame.new(3.81620979, 174.79892, -39.0317726, -1, 3.0431087e-005, 3.05171143e-005, -3.04301557e-005, -1, 3.05180401e-005, 3.05180438e-005, 3.05171125e-005, 1)
w36.Part1 = p37
w36.C1 = CFrame.new(3.81622219, 173.87648, -39.5442276, -1, 3.0431087e-005, 3.05171143e-005, -3.04301557e-005, -1, 3.05180401e-005, 3.05180438e-005, 3.05171125e-005, 1)
w37 = Instance.new("Weld", p37)
w37.Name = "apart_Weld"
w37.Part0 = p37
w37.C0 = CFrame.new(3.81622219, 173.87648, -39.5442276, -1, 3.0431087e-005, 3.05171143e-005, -3.04301557e-005, -1, 3.05180401e-005, 3.05180438e-005, 3.05171125e-005, 1)
w37.Part1 = p38
w37.C1 = CFrame.new(40.9022522, -3.17552829, 176.054337, -3.05612884e-005, -3.04729328e-005, -1, 1, -3.05185094e-005, -3.05603571e-005, -3.05175781e-005, -1, 3.0473866e-005)
w38 = Instance.new("Weld", p38)
w38.Name = "apart_Weld"
w38.Part0 = p38
w38.C0 = CFrame.new(40.9022522, -3.17552829, 176.054337, -3.05612884e-005, -3.04729328e-005, -1, 1, -3.05185094e-005, -3.05603571e-005, -3.05175781e-005, -1, 3.0473866e-005)
w38.Part1 = p39
w38.C1 = CFrame.new(39.9540176, 3.18871474, -175.183014, 3.0473866e-005, -3.05603571e-005, -1, -1, -3.05185094e-005, -3.04729328e-005, -3.05175781e-005, 1, -3.05612884e-005)
w39 = Instance.new("Weld", p39)
w39.Name = "apart_Weld"
w39.Part0 = p39
w39.C0 = CFrame.new(39.9540176, 3.18871474, -175.183014, 3.0473866e-005, -3.05603571e-005, -1, -1, -3.05185094e-005, -3.04729328e-005, -3.05175781e-005, 1, -3.05612884e-005)
w39.Part1 = p40
w39.C1 = CFrame.new(40.0052567, 3.18871641, -175.183014, 3.0473866e-005, -3.05603571e-005, -1, -1, -3.05185094e-005, -3.04729328e-005, -3.05175781e-005, 1, -3.05612884e-005)
w40 = Instance.new("Weld", p41)
w40.Name = "apart_Weld"
w40.Part0 = p41
w40.C0 = CFrame.new(4.43938923, 39.9903679, 176.339478, -1, 1.85528792e-009, -4.30663385e-005, 4.30663385e-005, 5.3449472e-005, -1, 4.46585241e-010, -1, -5.3449472e-005)
w40.Part1 = p42
w40.C1 = CFrame.new(-39.2770424, 3.8185389, 176.338669, -3.05612884e-005, -3.05603571e-005, 1, -1, 3.05185131e-005, -3.05603571e-005, -3.05175781e-005, -1, -3.05612884e-005)
w41 = Instance.new("Weld", p42)
w41.Name = "apart_Weld"
w41.Part0 = p42
w41.C0 = CFrame.new(-39.2770424, 3.8185389, 176.338669, -3.05612884e-005, -3.05603571e-005, 1, -1, 3.05185131e-005, -3.05603571e-005, -3.05175781e-005, -1, -3.05612884e-005)
w41.Part1 = p43
w41.C1 = CFrame.new(4.38814354, 39.9903717, 176.339478, -1, 1.85528792e-009, -4.30663385e-005, 4.30663385e-005, 5.3449472e-005, -1, 4.46585241e-010, -1, -5.3449472e-005)
w42 = Instance.new("Weld", p43)
w42.Name = "apart_Weld"
w42.Part0 = p43
w42.C0 = CFrame.new(4.38814354, 39.9903717, 176.339478, -1, 1.85528792e-009, -4.30663385e-005, 4.30663385e-005, 5.3449472e-005, -1, 4.46585241e-010, -1, -5.3449472e-005)
w42.Part1 = p44
w42.C1 = CFrame.new(-176.336121, 40.0053749, 4.18144655, -4.37113883e-008, 1, -3.05612884e-005, 0, -3.05612884e-005, -1, -1, -4.37113883e-008, 1.3358764e-012)
w43 = Instance.new("Weld", p44)
w43.Name = "apart_Weld"
w43.Part0 = p44
w43.C0 = CFrame.new(-176.336121, 40.0053749, 4.18144655, -4.37113883e-008, 1, -3.05612884e-005, 0, -3.05612884e-005, -1, -1, -4.37113883e-008, 1.3358764e-012)
w43.Part1 = p45
w43.C1 = CFrame.new(-176.336121, 40.0053749, 4.18144655, -4.37113883e-008, 1, -3.05612884e-005, 0, -3.05612884e-005, -1, -1, -4.37113883e-008, 1.3358764e-012)
w44 = Instance.new("Weld", p45)
w44.Name = "apart_Weld"
w44.Part0 = p45
w44.C0 = CFrame.new(-176.336121, 40.0053749, 4.18144655, -4.37113883e-008, 1, -3.05612884e-005, 0, -3.05612884e-005, -1, -1, -4.37113883e-008, 1.3358764e-012)
w44.Part1 = p46
w44.C1 = CFrame.new(-40.7119179, 3.81858277, 176.338715, -3.05612884e-005, -3.05603571e-005, 1, -1, 3.05185131e-005, -3.05603571e-005, -3.05175781e-005, -1, -3.05612884e-005)
w45 = Instance.new("Weld", p46)
w45.Name = "Head_Weld"
w45.Part0 = p46
w45.C0 = CFrame.new(-40.7119179, 3.81858277, 176.338715, -3.05612884e-005, -3.05603571e-005, 1, -1, 3.05185131e-005, -3.05603571e-005, -3.05175781e-005, -1, -3.05612884e-005)
w45.Part1 = p47
w45.C1 = CFrame.new(-40, -176.019974, 3.8200016, -4.37113883e-008, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-008)
w46 = Instance.new("Weld", p47)
w46.Name = "apart_Weld"
w46.Part0 = p47
w46.C0 = CFrame.new(-40, -176.019974, 3.8200016, -4.37113883e-008, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-008)
w46.Part1 = p48
w46.C1 = CFrame.new(39.8868141, -3.04742336, 176.775467, -3.05612884e-005, 6.10798015e-005, -1, 1, -3.05147805e-005, -3.05631511e-005, -3.05166468e-005, -1, -6.10788702e-005)
w47 = Instance.new("Weld", p48)
w47.Name = "apart_Weld"
w47.Part0 = p48
w47.C0 = CFrame.new(39.8868141, -3.04742336, 176.775467, -3.05612884e-005, 6.10798015e-005, -1, 1, -3.05147805e-005, -3.05631511e-005, -3.05166468e-005, -1, -6.10788702e-005)
w47.Part1 = p49
w47.C1 = CFrame.new(4.69561625, 39.9903564, 176.339478, -1, 1.85528792e-009, -4.30663385e-005, 4.30663385e-005, 5.3449472e-005, -1, 4.46585241e-010, -1, -5.3449472e-005)
w48 = Instance.new("Weld", p49)
w48.Name = "apart_Weld"
w48.Part0 = p49
w48.C0 = CFrame.new(4.69561625, 39.9903564, 176.339478, -1, 1.85528792e-009, -4.30663385e-005, 4.30663385e-005, 5.3449472e-005, -1, 4.46585241e-010, -1, -5.3449472e-005)
w48.Part1 = p50
w48.C1 = CFrame.new(4.64437056, 39.9903603, 176.339478, -1, 1.85528792e-009, -4.30663385e-005, 4.30663385e-005, 5.3449472e-005, -1, 4.46585241e-010, -1, -5.3449472e-005)
w49 = Instance.new("Weld", p50)
w49.Name = "apart_Weld"
w49.Part0 = p50
w49.C0 = CFrame.new(4.64437056, 39.9903603, 176.339478, -1, 1.85528792e-009, -4.30663385e-005, 4.30663385e-005, 5.3449472e-005, -1, 4.46585241e-010, -1, -5.3449472e-005)
w49.Part1 = p51
w49.C1 = CFrame.new(39.8660278, 3.04846263, -176.447052, -0.000274701917, 0.000183053373, -0.99999994, -0.99999994, -3.05222311e-005, 0.000274696329, -3.0471947e-005, 1, 0.000183061755)
w50 = Instance.new("Weld", p51)
w50.Name = "apart_Weld"
w50.Part0 = p51
w50.C0 = CFrame.new(39.8660278, 3.04846263, -176.447052, -0.000274701917, 0.000183053373, -0.99999994, -0.99999994, -3.05222311e-005, 0.000274696329, -3.0471947e-005, 1, 0.000183061755)
w50.Part1 = p52
w50.C1 = CFrame.new(40.7543678, -42.5779533, -171.325851, 0.000228409437, -0.000213359424, -1, -0.965923131, 0.258829027, -0.000275849598, 0.258829057, 0.965923131, -0.000146969804)
w51 = Instance.new("Weld", p52)
w51.Name = "apart_Weld"
w51.Part0 = p52
w51.C0 = CFrame.new(40.7543678, -42.5779533, -171.325851, 0.000228409437, -0.000213359424, -1, -0.965923131, 0.258829027, -0.000275849598, 0.258829057, 0.965923131, -0.000146969804)
w51.Part1 = p53
w51.C1 = CFrame.new(-39.9944801, 3.81856084, 176.338684, -3.05612884e-005, -3.05603571e-005, 1, -1, 3.05185131e-005, -3.05603571e-005, -3.05175781e-005, -1, -3.05612884e-005)
w52 = Instance.new("Weld", p53)
w52.Name = "apart_Weld"
w52.Part0 = p53
w52.C0 = CFrame.new(-39.9944801, 3.81856084, 176.338684, -3.05612884e-005, -3.05603571e-005, 1, -1, 3.05185131e-005, -3.05603571e-005, -3.05175781e-005, -1, -3.05612884e-005)
w52.Part1 = p54
w52.C1 = CFrame.new(176.331329, 39.4632111, -3.82271242, -4.37113883e-008, -1, 0.000152631605, 0, -0.000152631605, -1, 1, -4.37113883e-008, 6.67173912e-012)
w53 = Instance.new("Weld", p54)
w53.Name = "apart_Weld"
w53.Part0 = p54
w53.C0 = CFrame.new(176.331329, 39.4632111, -3.82271242, -4.37113883e-008, -1, 0.000152631605, 0, -0.000152631605, -1, 1, -4.37113883e-008, 6.67173912e-012)
w53.Part1 = p55
w53.C1 = CFrame.new(39.6354523, 3.04852581, -176.447006, -0.000274701917, 0.000183053373, -0.99999994, -0.99999994, -3.05222311e-005, 0.000274696329, -3.0471947e-005, 1, 0.000183061755)
w54 = Instance.new("Weld", p55)
w54.Name = "apart_Weld"
w54.Part0 = p55
w54.C0 = CFrame.new(39.6354523, 3.04852581, -176.447006, -0.000274701917, 0.000183053373, -0.99999994, -0.99999994, -3.05222311e-005, 0.000274696329, -3.0471947e-005, 1, 0.000183061755)
w54.Part1 = p56
w54.C1 = CFrame.new(39.8659096, 2.74099851, -176.780167, -0.000274701917, 0.000183053373, -0.99999994, -0.99999994, -3.05222311e-005, 0.000274696329, -3.0471947e-005, 1, 0.000183061755)
w55 = Instance.new("Weld", p56)
w55.Name = "apart_Weld"
w55.Part0 = p56
w55.C0 = CFrame.new(39.8659096, 2.74099851, -176.780167, -0.000274701917, 0.000183053373, -0.99999994, -0.99999994, -3.05222311e-005, 0.000274696329, -3.0471947e-005, 1, 0.000183061755)
w55.Part1 = p57
w55.C1 = CFrame.new(40.0917892, -3.04741716, 176.775482, -3.05612884e-005, 6.10798015e-005, -1, 1, -3.05147805e-005, -3.05631511e-005, -3.05166468e-005, -1, -6.10788702e-005)
w56 = Instance.new("Weld", p57)
w56.Name = "apart_Weld"
w56.Part0 = p57
w56.C0 = CFrame.new(40.0917892, -3.04741716, 176.775482, -3.05612884e-005, 6.10798015e-005, -1, 1, -3.05147805e-005, -3.05631511e-005, -3.05166468e-005, -1, -6.10788702e-005)
w56.Part1 = p58
w56.C1 = CFrame.new(-176.337341, -40.5636826, -3.82272768, -4.37113883e-008, 1, 4.37113883e-008, 0, -4.37113883e-008, 1, 1, 4.37113883e-008, 1.91068547e-015)
w57 = Instance.new("Weld", p58)
w57.Name = "apart_Weld"
w57.Part0 = p58
w57.C0 = CFrame.new(-176.337341, -40.5636826, -3.82272768, -4.37113883e-008, 1, 4.37113883e-008, 0, -4.37113883e-008, 1, 1, 4.37113883e-008, 1.91068547e-015)
w57.Part1 = p59
w57.C1 = CFrame.new(-176.33754, 3.81501579, -39.9998207, 5.34812607e-005, 1, 9.31994482e-010, -1, 5.34812607e-005, -4.31585977e-005, -4.31585977e-005, 1.37618184e-009, 1)
w58 = Instance.new("Weld", p59)
w58.Name = "apart_Weld"
w58.Part0 = p59
w58.C0 = CFrame.new(-176.33754, 3.81501579, -39.9998207, 5.34812607e-005, 1, 9.31994482e-010, -1, 5.34812607e-005, -4.31585977e-005, -4.31585977e-005, 1.37618184e-009, 1)
w58.Part1 = p60
w58.C1 = CFrame.new(40.0917892, -3.04741716, 176.775482, -3.05612884e-005, 6.10798015e-005, -1, 1, -3.05147805e-005, -3.05631511e-005, -3.05166468e-005, -1, -6.10788702e-005)
w59 = Instance.new("Weld", p60)
w59.Name = "apart_Weld"
w59.Part0 = p60
w59.C0 = CFrame.new(40.0917892, -3.04741716, 176.775482, -3.05612884e-005, 6.10798015e-005, -1, 1, -3.05147805e-005, -3.05631511e-005, -3.05166468e-005, -1, -6.10788702e-005)
w59.Part1 = p61
w59.C1 = CFrame.new(39.8660278, 3.04846263, -176.447052, -0.000274701917, 0.000183053373, -0.99999994, -0.99999994, -3.05222311e-005, 0.000274696329, -3.0471947e-005, 1, 0.000183061755)
w60 = Instance.new("Weld", p61)
w60.Name = "apart_Weld"
w60.Part0 = p61
w60.C0 = CFrame.new(39.8660278, 3.04846263, -176.447052, -0.000274701917, 0.000183053373, -0.99999994, -0.99999994, -3.05222311e-005, 0.000274696329, -3.0471947e-005, 1, 0.000183061755)
w60.Part1 = p62
w60.C1 = CFrame.new(40.8056221, -42.5779381, -171.325836, 0.000228409437, -0.000213359424, -1, -0.965923131, 0.258829027, -0.000275849598, 0.258829057, 0.965923131, -0.000146969804)
w61 = Instance.new("Weld", p62)
w61.Name = "apart_Weld"
w61.Part0 = p62
w61.C0 = CFrame.new(40.8056221, -42.5779381, -171.325836, 0.000228409437, -0.000213359424, -1, -0.965923131, 0.258829027, -0.000275849598, 0.258829057, 0.965923131, -0.000146969804)
w61.Part1 = p63
w61.C1 = CFrame.new(40.0710144, 3.04840636, -176.447083, -0.000274701917, 0.000183053373, -0.99999994, -0.99999994, -3.05222311e-005, 0.000274696329, -3.0471947e-005, 1, 0.000183061755)
w62 = Instance.new("Weld", p63)
w62.Name = "apart_Weld"
w62.Part0 = p63
w62.C0 = CFrame.new(40.0710144, 3.04840636, -176.447083, -0.000274701917, 0.000183053373, -0.99999994, -0.99999994, -3.05222311e-005, 0.000274696329, -3.0471947e-005, 1, 0.000183061755)
w62.Part1 = p64
w62.C1 = CFrame.new(40.3014908, 2.74087882, -176.780243, -0.000274701917, 0.000183053373, -0.99999994, -0.99999994, -3.05222311e-005, 0.000274696329, -3.0471947e-005, 1, 0.000183061755)
w63 = Instance.new("Weld", p64)
w63.Name = "apart_Weld"
w63.Part0 = p64
w63.C0 = CFrame.new(40.3014908, 2.74087882, -176.780243, -0.000274701917, 0.000183053373, -0.99999994, -0.99999994, -3.05222311e-005, 0.000274696329, -3.0471947e-005, 1, 0.000183061755)
w63.Part1 = p65
w63.C1 = CFrame.new(39.6353073, 2.74106169, -176.780121, -0.000274701917, 0.000183053373, -0.99999994, -0.99999994, -3.05222311e-005, 0.000274696329, -3.0471947e-005, 1, 0.000183061755)
w64 = Instance.new("Weld", p65)
w64.Name = "apart_Weld"
w64.Part0 = p65
w64.C0 = CFrame.new(39.6353073, 2.74106169, -176.780121, -0.000274701917, 0.000183053373, -0.99999994, -0.99999994, -3.05222311e-005, 0.000274696329, -3.0471947e-005, 1, 0.000183061755)
w64.Part1 = p66
w64.C1 = CFrame.new(40.3016357, 3.04834294, -176.447128, -0.000274701917, 0.000183053373, -0.99999994, -0.99999994, -3.05222311e-005, 0.000274696329, -3.0471947e-005, 1, 0.000183061755)
w65 = Instance.new("Weld", p66)
w65.Name = "apart_Weld"
w65.Part0 = p66
w65.C0 = CFrame.new(40.3016357, 3.04834294, -176.447128, -0.000274701917, 0.000183053373, -0.99999994, -0.99999994, -3.05222311e-005, 0.000274696329, -3.0471947e-005, 1, 0.000183061755)
w65.Part1 = p67
w65.C1 = CFrame.new(40.0710144, 3.04840636, -176.447083, -0.000274701917, 0.000183053373, -0.99999994, -0.99999994, -3.05222311e-005, 0.000274696329, -3.0471947e-005, 1, 0.000183061755)
w66 = Instance.new("Weld", p67)
w66.Name = "apart_Weld"
w66.Part0 = p67
w66.C0 = CFrame.new(40.0710144, 3.04840636, -176.447083, -0.000274701917, 0.000183053373, -0.99999994, -0.99999994, -3.05222311e-005, 0.000274696329, -3.0471947e-005, 1, 0.000183061755)
w66.Part1 = p68
w66.C1 = CFrame.new(40.0708847, 2.74094224, -176.780197, -0.000274701917, 0.000183053373, -0.99999994, -0.99999994, -3.05222311e-005, 0.000274696329, -3.0471947e-005, 1, 0.000183061755)
w67 = Instance.new("Weld", p68)
w67.Name = "apart_Weld"
w67.Part0 = p68
w67.C0 = CFrame.new(40.0708847, 2.74094224, -176.780197, -0.000274701917, 0.000183053373, -0.99999994, -0.99999994, -3.05222311e-005, 0.000274696329, -3.0471947e-005, 1, 0.000183061755)
w67.Part1 = p69
w67.C1 = CFrame.new(40.3223953, -3.04741025, 176.775482, -3.05612884e-005, 6.10798015e-005, -1, 1, -3.05147805e-005, -3.05631511e-005, -3.05166468e-005, -1, -6.10788702e-005)
w68 = Instance.new("Weld", p69)
w68.Name = "apart_Weld"
w68.Part0 = p69
w68.C0 = CFrame.new(40.3223953, -3.04741025, 176.775482, -3.05612884e-005, 6.10798015e-005, -1, 1, -3.05147805e-005, -3.05631511e-005, -3.05166468e-005, -1, -6.10788702e-005)
w68.Part1 = p70
w68.C1 = CFrame.new(39.8868141, -3.04742336, 176.775467, -3.05612884e-005, 6.10798015e-005, -1, 1, -3.05147805e-005, -3.05631511e-005, -3.05166468e-005, -1, -6.10788702e-005)
w69 = Instance.new("Weld", p70)
w69.Name = "apart_Weld"
w69.Part0 = p70
w69.C0 = CFrame.new(39.8868141, -3.04742336, 176.775467, -3.05612884e-005, 6.10798015e-005, -1, 1, -3.05147805e-005, -3.05631511e-005, -3.05166468e-005, -1, -6.10788702e-005)
w69.Part1 = p71
w69.C1 = CFrame.new(-40.6606789, 3.81858134, 176.338699, -3.05612884e-005, -3.05603571e-005, 1, -1, 3.05185131e-005, -3.05603571e-005, -3.05175781e-005, -1, -3.05612884e-005)
w70 = Instance.new("Weld", p71)
w70.Name = "apart_Weld"
w70.Part0 = p71
w70.C0 = CFrame.new(-40.6606789, 3.81858134, 176.338699, -3.05612884e-005, -3.05603571e-005, 1, -1, 3.05185131e-005, -3.05603571e-005, -3.05175781e-005, -1, -3.05612884e-005)
w70.Part1 = p72
w70.C1 = CFrame.new(39.6562119, -3.04743052, 176.775452, -3.05612884e-005, 6.10798015e-005, -1, 1, -3.05147805e-005, -3.05631511e-005, -3.05166468e-005, -1, -6.10788702e-005)
w71 = Instance.new("Weld", p72)
w71.Name = "apart_Weld"
w71.Part0 = p72
w71.C0 = CFrame.new(39.6562119, -3.04743052, 176.775452, -3.05612884e-005, 6.10798015e-005, -1, 1, -3.05147805e-005, -3.05631511e-005, -3.05166468e-005, -1, -6.10788702e-005)
w71.Part1 = p73
w71.C1 = CFrame.new(39.2682533, -42.5783615, -171.326065, 0.000228409437, -0.000213359424, -1, -0.965923131, 0.258829027, -0.000275849598, 0.258829057, 0.965923131, -0.000146969804)
w72 = Instance.new("Weld", p73)
w72.Name = "apart_Weld"
w72.Part0 = p73
w72.C0 = CFrame.new(39.2682533, -42.5783615, -171.326065, 0.000228409437, -0.000213359424, -1, -0.965923131, 0.258829027, -0.000275849598, 0.258829057, 0.965923131, -0.000146969804)
w72.Part1 = p74
w72.C1 = CFrame.new(39.3195076, -42.5783463, -171.326065, 0.000228409437, -0.000213359424, -1, -0.965923131, 0.258829027, -0.000275849598, 0.258829057, 0.965923131, -0.000146969804)
w73 = Instance.new("Weld", p74)
w73.Name = "apart_Weld"
w73.Part0 = p74
w73.C0 = CFrame.new(39.3195076, -42.5783463, -171.326065, 0.000228409437, -0.000213359424, -1, -0.965923131, 0.258829027, -0.000275849598, 0.258829057, 0.965923131, -0.000146969804)
w73.Part1 = p75
w73.C1 = CFrame.new(-39.3282967, 3.81854057, 176.338669, -3.05612884e-005, -3.05603571e-005, 1, -1, 3.05185131e-005, -3.05603571e-005, -3.05175781e-005, -1, -3.05612884e-005)
w74 = Instance.new("Weld", p75)
w74.Name = "apart_Weld"
w74.Part0 = p75
w74.C0 = CFrame.new(-39.3282967, 3.81854057, 176.338669, -3.05612884e-005, -3.05603571e-005, 1, -1, 3.05185131e-005, -3.05603571e-005, -3.05175781e-005, -1, -3.05612884e-005)
w74.Part1 = p76
w74.C1 = CFrame.new(4.69561625, 39.9903564, 176.339478, -1, 1.85528792e-009, -4.30663385e-005, 4.30663385e-005, 5.3449472e-005, -1, 4.46585241e-010, -1, -5.3449472e-005)
w75 = Instance.new("Weld", p76)
w75.Name = "apart_Weld"
w75.Part0 = p76
w75.C0 = CFrame.new(4.69561625, 39.9903564, 176.339478, -1, 1.85528792e-009, -4.30663385e-005, 4.30663385e-005, 5.3449472e-005, -1, 4.46585241e-010, -1, -5.3449472e-005)
w75.Part1 = p77
w75.C1 = CFrame.new(40.0708847, 2.74094224, -176.780197, -0.000274701917, 0.000183053373, -0.99999994, -0.99999994, -3.05222311e-005, 0.000274696329, -3.0471947e-005, 1, 0.000183061755)
w76 = Instance.new("Weld", p77)
w76.Name = "apart_Weld"
w76.Part0 = p77
w76.C0 = CFrame.new(40.0708847, 2.74094224, -176.780197, -0.000274701917, 0.000183053373, -0.99999994, -0.99999994, -3.05222311e-005, 0.000274696329, -3.0471947e-005, 1, 0.000183061755)
w76.Part1 = p78
w76.C1 = CFrame.new(39.8659096, 2.74099851, -176.780167, -0.000274701917, 0.000183053373, -0.99999994, -0.99999994, -3.05222311e-005, 0.000274696329, -3.0471947e-005, 1, 0.000183061755)
w77 = Instance.new("Weld", p79)
w77.Name = "apart_Weld"
w77.Part0 = p79
w77.C0 = CFrame.new(-3.82272005, -175.414932, -41.5373688, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w77.Part1 = p80
w77.C1 = CFrame.new(-3.82272005, -175.594284, -41.9729462, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w78 = Instance.new("Weld", p80)
w78.Name = "apart_Weld"
w78.Part0 = p80
w78.C0 = CFrame.new(-3.82272005, -175.594284, -41.9729462, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w78.Part1 = p81
w78.C1 = CFrame.new(-3.40590239, -124.572937, 131.068604, 1, -4.16866387e-005, 1.1171388e-005, 1.11727377e-005, 0.500085652, 0.865975916, -4.16862786e-005, -0.865975916, 0.500085652)
w79 = Instance.new("Weld", p81)
w79.Name = "apart_Weld"
w79.Part0 = p81
w79.C0 = CFrame.new(-3.40590239, -124.572937, 131.068604, 1, -4.16866387e-005, 1.1171388e-005, 1.11727377e-005, 0.500085652, 0.865975916, -4.16862786e-005, -0.865975916, 0.500085652)
w79.Part1 = p82
w79.C1 = CFrame.new(-3.81866574, -174.260757, -41.4144592, 1, -3.05171125e-005, 3.05180438e-005, 3.05180438e-005, 1, -3.05171125e-005, -3.05171125e-005, 3.05180438e-005, 1)
w80 = Instance.new("Weld", p82)
w80.Name = "apart_Weld"
w80.Part0 = p82
w80.C0 = CFrame.new(-3.81866574, -174.260757, -41.4144592, 1, -3.05171125e-005, 3.05180438e-005, 3.05180438e-005, 1, -3.05171125e-005, -3.05171125e-005, 3.05180438e-005, 1)
w80.Part1 = p83
w80.C1 = CFrame.new(-3.82272005, -174.261902, -41.9217072, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w81 = Instance.new("Weld", p83)
w81.Name = "apart_Weld"
w81.Part0 = p83
w81.C0 = CFrame.new(-3.82272005, -174.261902, -41.9217072, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w81.Part1 = p84
w81.C1 = CFrame.new(-3.82272005, -173.877563, -41.5373688, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w82 = Instance.new("Weld", p84)
w82.Name = "apart_Weld"
w82.Part0 = p84
w82.C0 = CFrame.new(-3.82272005, -173.877563, -41.5373688, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w82.Part1 = p85
w82.C1 = CFrame.new(-4.22583055, -124.572945, 131.068649, 1, -4.16866387e-005, 1.1171388e-005, 1.11727377e-005, 0.500085652, 0.865975916, -4.16862786e-005, -0.865975916, 0.500085652)
w83 = Instance.new("Weld", p85)
w83.Name = "apart_Weld"
w83.Part0 = p85
w83.C0 = CFrame.new(-4.22583055, -124.572945, 131.068649, 1, -4.16866387e-005, 1.1171388e-005, 1.11727377e-005, 0.500085652, 0.865975916, -4.16862786e-005, -0.865975916, 0.500085652)
w83.Part1 = p86
w83.C1 = CFrame.new(-3.82272005, -174.64624, -41.9217072, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w84 = Instance.new("Weld", p86)
w84.Name = "apart_Weld"
w84.Part0 = p86
w84.C0 = CFrame.new(-3.82272005, -174.64624, -41.9217072, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w84.Part1 = p87
w84.C1 = CFrame.new(-3.82272005, -173.877563, -41.5629883, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w85 = Instance.new("Weld", p87)
w85.Name = "apart_Weld"
w85.Part0 = p87
w85.C0 = CFrame.new(-3.82272005, -173.877563, -41.5629883, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w85.Part1 = p88
w85.C1 = CFrame.new(-3.82272005, -175.594284, -41.9729462, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w86 = Instance.new("Weld", p88)
w86.Name = "apart_Weld"
w86.Part0 = p88
w86.C0 = CFrame.new(-3.82272005, -175.594284, -41.9729462, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w86.Part1 = p89
w86.C1 = CFrame.new(-3.82272005, -173.877563, -41.5629883, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w87 = Instance.new("Weld", p89)
w87.Name = "apart_Weld"
w87.Part0 = p89
w87.C0 = CFrame.new(-3.82272005, -173.877563, -41.5629883, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w87.Part1 = p90
w87.C1 = CFrame.new(-3.82272005, -174.64624, -41.5373688, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w88 = Instance.new("Weld", p90)
w88.Name = "Right Arm_Weld"
w88.Part0 = p90
w88.C0 = CFrame.new(-3.82272005, -174.64624, -41.5373688, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w88.Part1 = p91
w88.C1 = CFrame.new(-41.5, -174.519974, 3.82000184, -4.37113883e-008, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-008)
w89 = Instance.new("Weld", p92)
w89.Name = "Left Leg_Weld"
w89.Part0 = p92
w89.C0 = CFrame.new(-3.82272005, -172.59642, -39.4875336, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w89.Part1 = p93
w89.C1 = CFrame.new(-39.5, -172.519974, 3.8200016, -4.37113883e-008, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-008)
w90 = Instance.new("Weld", p93)
w90.Name = "apart_Weld"
w90.Part0 = p93
w90.C0 = CFrame.new(-39.5, -172.519974, 3.8200016, -4.37113883e-008, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-008)
w90.Part1 = p94
w90.C1 = CFrame.new(-3.82272005, -172.647675, -39.4875336, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w91 = Instance.new("Weld", p94)
w91.Name = "apart_Weld"
w91.Part0 = p94
w91.C0 = CFrame.new(-3.82272005, -172.647675, -39.4875336, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w91.Part1 = p95
w91.C1 = CFrame.new(-3.8483429, -171.802124, -39.4875336, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w92 = Instance.new("Weld", p95)
w92.Name = "apart_Weld"
w92.Part0 = p95
w92.C0 = CFrame.new(-3.8483429, -171.802124, -39.4875336, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w92.Part1 = p96
w92.C1 = CFrame.new(-3.82272005, -172.647675, -39.4875336, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w93 = Instance.new("Weld", p96)
w93.Name = "apart_Weld"
w93.Part0 = p96
w93.C0 = CFrame.new(-3.82272005, -172.647675, -39.4875336, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w93.Part1 = p97
w93.C1 = CFrame.new(-3.8483429, -171.802124, -39.4875336, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w94 = Instance.new("Weld", p97)
w94.Name = "apart_Weld"
w94.Part0 = p97
w94.C0 = CFrame.new(-3.8483429, -171.802124, -39.4875336, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w94.Part1 = p98
w94.C1 = CFrame.new(-39.4362946, -172.288956, 3.5664947, -4.37113883e-008, 9.29513355e-010, 1, 0, 1, -9.29513355e-010, -1, -4.06303176e-017, -4.37113883e-008)
w95 = Instance.new("Weld", p98)
w95.Name = "apart_Weld"
w95.Part0 = p98
w95.C0 = CFrame.new(-39.4362946, -172.288956, 3.5664947, -4.37113883e-008, 9.29513355e-010, 1, 0, 1, -9.29513355e-010, -1, -4.06303176e-017, -4.37113883e-008)
w95.Part1 = p99
w95.C1 = CFrame.new(39.4949493, -171.800415, -3.84834123, -4.37113883e-008, -4.3159529e-005, -1, 0, 1, -4.3159529e-005, 1, -1.88656295e-012, -4.37113883e-008)
w96 = Instance.new("Weld", p99)
w96.Name = "apart_Weld"
w96.Part0 = p99
w96.C0 = CFrame.new(39.4949493, -171.800415, -3.84834123, -4.37113883e-008, -4.3159529e-005, -1, 0, 1, -4.3159529e-005, 1, -1.88656295e-012, -4.37113883e-008)
w96.Part1 = p100
w96.C1 = CFrame.new(-3.82272005, -172.647675, -39.4875336, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w97 = Instance.new("Weld", p100)
w97.Name = "apart_Weld"
w97.Part0 = p100
w97.C0 = CFrame.new(-3.82272005, -172.647675, -39.4875336, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w97.Part1 = p101
w97.C1 = CFrame.new(-3.82272005, -171.622757, -39.4875336, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w98 = Instance.new("Weld", p101)
w98.Name = "apart_Weld"
w98.Part0 = p101
w98.C0 = CFrame.new(-3.82272005, -171.622757, -39.4875336, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w98.Part1 = p102
w98.C1 = CFrame.new(-3.82272005, -171.878983, -39.4875336, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w99 = Instance.new("Weld", p103)
w99.Name = "apart_Weld"
w99.Part0 = p103
w99.C0 = CFrame.new(-40.5, -172.519974, 3.8200016, -4.37113883e-008, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-008)
w99.Part1 = p104
w99.C1 = CFrame.new(-3.82272005, -172.59642, -40.5124359, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w100 = Instance.new("Weld", p104)
w100.Name = "apart_Weld"
w100.Part0 = p104
w100.C0 = CFrame.new(-3.82272005, -172.59642, -40.5124359, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w100.Part1 = p105
w100.C1 = CFrame.new(-3.82272005, -172.647675, -40.5124359, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w101 = Instance.new("Weld", p105)
w101.Name = "apart_Weld"
w101.Part0 = p105
w101.C0 = CFrame.new(-3.82272005, -172.647675, -40.5124359, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w101.Part1 = p106
w101.C1 = CFrame.new(-3.82272005, -172.647675, -40.5124359, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w102 = Instance.new("Weld", p106)
w102.Name = "apart_Weld"
w102.Part0 = p106
w102.C0 = CFrame.new(-3.82272005, -172.647675, -40.5124359, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w102.Part1 = p107
w102.C1 = CFrame.new(-40.5636902, -172.288956, 3.5664947, -4.37113883e-008, 9.29513355e-010, 1, 0, 1, -9.29513355e-010, -1, -4.06303176e-017, -4.37113883e-008)
w103 = Instance.new("Weld", p107)
w103.Name = "apart_Weld"
w103.Part0 = p107
w103.C0 = CFrame.new(-40.5636902, -172.288956, 3.5664947, -4.37113883e-008, 9.29513355e-010, 1, 0, 1, -9.29513355e-010, -1, -4.06303176e-017, -4.37113883e-008)
w103.Part1 = p108
w103.C1 = CFrame.new(40.5198517, -171.800369, -3.84834123, -4.37113883e-008, -4.3159529e-005, -1, 0, 1, -4.3159529e-005, 1, -1.88656295e-012, -4.37113883e-008)
w104 = Instance.new("Weld", p108)
w104.Name = "apart_Weld"
w104.Part0 = p108
w104.C0 = CFrame.new(40.5198517, -171.800369, -3.84834123, -4.37113883e-008, -4.3159529e-005, -1, 0, 1, -4.3159529e-005, 1, -1.88656295e-012, -4.37113883e-008)
w104.Part1 = p109
w104.C1 = CFrame.new(-3.82272005, -171.878983, -40.5124359, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w105 = Instance.new("Weld", p109)
w105.Name = "apart_Weld"
w105.Part0 = p109
w105.C0 = CFrame.new(-3.82272005, -171.878983, -40.5124359, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w105.Part1 = p110
w105.C1 = CFrame.new(-3.82272005, -171.622757, -40.5124359, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w106 = Instance.new("Weld", p110)
w106.Name = "apart_Weld"
w106.Part0 = p110
w106.C0 = CFrame.new(-3.82272005, -171.622757, -40.5124359, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w106.Part1 = p111
w106.C1 = CFrame.new(-3.8483429, -171.802124, -40.5124359, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w107 = Instance.new("Weld", p111)
w107.Name = "apart_Weld"
w107.Part0 = p111
w107.C0 = CFrame.new(-3.8483429, -171.802124, -40.5124359, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w107.Part1 = p112
w107.C1 = CFrame.new(-3.8483429, -171.802124, -40.5124359, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w108 = Instance.new("Weld", p112)
w108.Name = "apart_Weld"
w108.Part0 = p112
w108.C0 = CFrame.new(-3.8483429, -171.802124, -40.5124359, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w108.Part1 = p113
w108.C1 = CFrame.new(-3.82272005, -172.647675, -40.5124359, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w109 = Instance.new("Weld", p114)
w109.Name = "apart_Weld"
w109.Part0 = p114
w109.C0 = CFrame.new(-3.82272005, -175.594284, -38.0270386, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w109.Part1 = p115
w109.C1 = CFrame.new(-3.82272005, -175.414932, -38.462616, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w110 = Instance.new("Weld", p115)
w110.Name = "Left Arm_Weld"
w110.Part0 = p115
w110.C0 = CFrame.new(-3.82272005, -175.414932, -38.462616, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w110.Part1 = p116
w110.C1 = CFrame.new(-38.5, -174.519974, 3.8200016, -4.37113883e-008, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-008)
w111 = Instance.new("Weld", p116)
w111.Name = "apart_Weld"
w111.Part0 = p116
w111.C0 = CFrame.new(-38.5, -174.519974, 3.8200016, -4.37113883e-008, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-008)
w111.Part1 = p117
w111.C1 = CFrame.new(4.23229599, -55.2924156, 171.076126, -1, 1.11466697e-005, -4.16424627e-005, 4.16358271e-005, 0.500072539, -0.865983546, 1.11714171e-005, -0.865983546, -0.500072539)
w112 = Instance.new("Weld", p117)
w112.Name = "apart_Weld"
w112.Part0 = p117
w112.C0 = CFrame.new(4.23229599, -55.2924156, 171.076126, -1, 1.11466697e-005, -4.16424627e-005, 4.16358271e-005, 0.500072539, -0.865983546, 1.11714171e-005, -0.865983546, -0.500072539)
w112.Part1 = p118
w112.C1 = CFrame.new(-3.82272005, -174.261902, -38.0782776, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w113 = Instance.new("Weld", p118)
w113.Name = "apart_Weld"
w113.Part0 = p118
w113.C0 = CFrame.new(-3.82272005, -174.261902, -38.0782776, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w113.Part1 = p119
w113.C1 = CFrame.new(3.81856751, -174.647522, 38.0728455, -1, 3.04310852e-005, -3.05171179e-005, 3.04301557e-005, 1, 3.04310852e-005, 3.05180438e-005, 3.04301557e-005, -1)
w114 = Instance.new("Weld", p119)
w114.Name = "apart_Weld"
w114.Part0 = p119
w114.C0 = CFrame.new(3.81856751, -174.647522, 38.0728455, -1, 3.04310852e-005, -3.05171179e-005, 3.04301557e-005, 1, 3.04310852e-005, 3.05180438e-005, 3.04301557e-005, -1)
w114.Part1 = p120
w114.C1 = CFrame.new(-3.82272005, -175.594284, -38.0270386, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w115 = Instance.new("Weld", p120)
w115.Name = "apart_Weld"
w115.Part0 = p120
w115.C0 = CFrame.new(-3.82272005, -175.594284, -38.0270386, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w115.Part1 = p121
w115.C1 = CFrame.new(3.41236687, -55.2923851, 171.076141, -1, 1.11466697e-005, -4.16424627e-005, 4.16358271e-005, 0.500072539, -0.865983546, 1.11714171e-005, -0.865983546, -0.500072539)
w116 = Instance.new("Weld", p121)
w116.Name = "apart_Weld"
w116.Part0 = p121
w116.C0 = CFrame.new(3.41236687, -55.2923851, 171.076141, -1, 1.11466697e-005, -4.16424627e-005, 4.16358271e-005, 0.500072539, -0.865983546, 1.11714171e-005, -0.865983546, -0.500072539)
w116.Part1 = p122
w116.C1 = CFrame.new(3.81859493, -174.263199, 38.5853233, -1, 3.04310852e-005, -3.05171179e-005, 3.04301557e-005, 1, 3.04310852e-005, 3.05180438e-005, 3.04301557e-005, -1)
w117 = Instance.new("Weld", p122)
w117.Name = "apart_Weld"
w117.Part0 = p122
w117.C0 = CFrame.new(3.81859493, -174.263199, 38.5853233, -1, 3.04310852e-005, -3.05171179e-005, 3.04301557e-005, 1, 3.04310852e-005, 3.05180438e-005, 3.04301557e-005, -1)
w117.Part1 = p123
w117.C1 = CFrame.new(-3.82272005, -173.877563, -38.462616, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w118 = Instance.new("Weld", p123)
w118.Name = "apart_Weld"
w118.Part0 = p123
w118.C0 = CFrame.new(-3.82272005, -173.877563, -38.462616, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w118.Part1 = p124
w118.C1 = CFrame.new(-3.82272005, -173.877563, -38.4369965, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w119 = Instance.new("Weld", p124)
w119.Name = "apart_Weld"
w119.Part0 = p124
w119.C0 = CFrame.new(-3.82272005, -173.877563, -38.4369965, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w119.Part1 = p125
w119.C1 = CFrame.new(-3.82272005, -173.877563, -38.4369965, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w120 = Instance.new("Weld", p125)
w120.Name = "apart_Weld"
w120.Part0 = p125
w120.C0 = CFrame.new(-3.82272005, -173.877563, -38.4369965, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w120.Part1 = p126
w120.C1 = CFrame.new(-3.82272005, -174.64624, -38.462616, 1, 0, 0, 0, 1, 0, 0, 0, 1)
m.Parent = game:service("Workspace")
m:MakeJoints()

RightArm.Transparency=1
LeftArm.Transparency=1
LeftLeg.Transparency=1
RightLeg.Transparency=1
-------------------------------------
local Character = game.Players.LocalPlayer.Character --game.Workspace.fefio92142
-------------------------------------
Lighting = game.Lighting
skybox = Instance.new("Sky", Lighting)

skybox.SkyboxBk = "rbxassetid://3433010" 
skybox.SkyboxDn = "rbxassetid://3433010" 
skybox.SkyboxFt = "rbxassetid://3433010" 
skybox.SkyboxLf = "rbxassetid://3433010" 
skybox.SkyboxRt = "rbxassetid://3433010" 
skybox.SkyboxUp = "rbxassetid://3433010" 
--SKYBOX
-------------------------------------------------------------------------------------
z = Instance.new("Sound", torso)
z.SoundId = "rbxassetid://402845379" -- Put Music ID Here.
z.Looped = true
z.Volume = 1
wait(.1)
z:Play()
-------------------------------------------------------------------------------------
local Color = 255,255,255

local Num = 0.5

local Num2 = 4 -------------Mods:1,4,8,10,15,20-------------------------------------
local Size = 0.8
local Rate = 300
-------------------------------------------------------------------------------------
local Player = game:service'Players'.LocalPlayer
local Character = Player.Character
Torso = Character:WaitForChild'Torso'

local Wing1 = Instance.new("Part",Character)
Wing1.FormFactor = Enum.FormFactor.Custom
Wing1.Size = Vector3.new(.2, .2, .2)
Wing1.Name = "WIng_1"

local fire = Instance.new("ParticleEmitter", Wing1)
fire.VelocitySpread = 0
fire.Lifetime = NumberRange.new(2)
fire.Acceleration = Vector3.new(0, 2, 2)
fire.RotSpeed = NumberRange.new(10)
fire.Rate = Rate
fire.Rotation = NumberRange.new(151515)
fire.Name = "Fire"
fire.LightEmission = 0.78
fire.LockedToPart = true
fire.Texture = "rbxasset://textures/particles/explosion01_implosion_main.dds"
fire.Color = ColorSequence.new(Color3.new(Color), Color3.new(Color))
fire.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, Size), NumberSequenceKeypoint.new(1, Size)})

local Wing2 = Wing1:Clone()
Wing2.Parent = Torso
local x,y,z = 0,-1,-6

Wld = function(a,b,cf)
local Weld = Instance.new('Weld',a)
Weld.Part0 = a
Weld.Part1 = b
Weld.C1 = cf
return Weld
end

local wld = Wld(Torso,Wing1,CFrame.new(0,0,-.5)*CFrame.Angles(-math.rad(90),-math.rad(20),-math.rad(90)))
local wld2 = Wld(Torso,Wing2,CFrame.new(0,0,.5)*CFrame.Angles(-math.rad(90),-math.rad(20),-math.rad(90)))


game:service'RunService'.Stepped:connect(function()
--z = 6+math.sin(tick()*2)
y = -1+math.sin(tick()*Num)*Num2
Wing1.Fire.Acceleration = Vector3.new(x,y,z)
Wing2.Fire.Acceleration = Vector3.new(x,y,-z)
end)
------------------------------------------------------------------------------------------------
local Player = game:service'Players'.LocalPlayer
local Character = Player.Character
Torso = Character:WaitForChild'Torso'

local Wing1 = Instance.new("Part",Character)
Wing1.FormFactor = Enum.FormFactor.Custom
Wing1.Size = Vector3.new(.2, .2, .2)
Wing1.Name = "WIng_1"

local fire = Instance.new("ParticleEmitter", Wing1)
fire.VelocitySpread = 0
fire.Lifetime = NumberRange.new(2.5)
fire.Acceleration = Vector3.new(0, 4, 4)
fire.RotSpeed = NumberRange.new(10)
fire.Rate = Rate
fire.Rotation = NumberRange.new(151515)
fire.Name = "Fire"
fire.LightEmission = 0.78
fire.LockedToPart = true
fire.Texture = "rbxasset://textures/particles/explosion01_implosion_main.dds"
fire.Color = ColorSequence.new(Color3.new(Color), Color3.new(Color))
fire.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, Size), NumberSequenceKeypoint.new(1, Size)})

local Wing2 = Wing1:Clone()
Wing2.Parent = Torso
local x,y,z = 0,-1,-6

Wld = function(a,b,cf)
local Weld = Instance.new('Weld',a)
Weld.Part0 = a
Weld.Part1 = b
Weld.C1 = cf
return Weld
end

local wld = Wld(Torso,Wing1,CFrame.new(0,0,-.5)*CFrame.Angles(-math.rad(90),-math.rad(30),-math.rad(90)))
local wld2 = Wld(Torso,Wing2,CFrame.new(0,0,.5)*CFrame.Angles(-math.rad(90),-math.rad(30),-math.rad(90)))

print'Loaded'

game:service'RunService'.Stepped:connect(function()
--z = 6+math.sin(tick()*2)
y = -1+math.sin(tick()*Num)*Num2
Wing1.Fire.Acceleration = Vector3.new(x,y,z)
Wing2.Fire.Acceleration = Vector3.new(x,y,-z)
end)

------------------------------------------------------------------------------------------------
local Player = game:service'Players'.LocalPlayer
local Character = Player.Character
Torso = Character:WaitForChild'Torso'

local Wing1 = Instance.new("Part",Character)
Wing1.FormFactor = Enum.FormFactor.Custom
Wing1.Size = Vector3.new(.2, .2, .2)
Wing1.Name = "WIng_1"

local fire = Instance.new("ParticleEmitter", Wing1)
fire.VelocitySpread = 0
fire.Lifetime = NumberRange.new(2.8)
fire.Acceleration = Vector3.new(0, 4, 4)
fire.RotSpeed = NumberRange.new(10)
fire.Rate = Rate
fire.Rotation = NumberRange.new(151515)
fire.Name = "Fire"
fire.LightEmission = 0.78
fire.LockedToPart = true
fire.Texture = "rbxasset://textures/particles/explosion01_implosion_main.dds"
fire.Color = ColorSequence.new(Color3.new(Color), Color3.new(Color))
fire.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, Size), NumberSequenceKeypoint.new(1, Size)})

local Wing2 = Wing1:Clone()
Wing2.Parent = Torso
local x,y,z = 0,-1,-6

Wld = function(a,b,cf)
local Weld = Instance.new('Weld',a)
Weld.Part0 = a
Weld.Part1 = b
Weld.C1 = cf
return Weld
end

local wld = Wld(Torso,Wing1,CFrame.new(0,0,-.5)*CFrame.Angles(-math.rad(90),-math.rad(40),-math.rad(90)))
local wld2 = Wld(Torso,Wing2,CFrame.new(0,0,.5)*CFrame.Angles(-math.rad(90),-math.rad(40),-math.rad(90)))

print'Loaded'

game:service'RunService'.Stepped:connect(function()
--z = 6+math.sin(tick()*2)
y = -1+math.sin(tick()*Num)*Num2
Wing1.Fire.Acceleration = Vector3.new(x,y,z)
Wing2.Fire.Acceleration = Vector3.new(x,y,-z)
end)

------------------------------------------------------------------------------------------------
local Player = game:service'Players'.LocalPlayer
local Character = Player.Character
Torso = Character:WaitForChild'Torso'

local Wing1 = Instance.new("Part",Character)
Wing1.FormFactor = Enum.FormFactor.Custom
Wing1.Size = Vector3.new(.2, .2, .2)
Wing1.Name = "WIng_1"

local fire = Instance.new("ParticleEmitter", Wing1)
fire.VelocitySpread = 0
fire.Lifetime = NumberRange.new(3)
fire.Acceleration = Vector3.new(0, 4, 4)
fire.RotSpeed = NumberRange.new(10)
fire.Rate = Rate
fire.Rotation = NumberRange.new(151515)
fire.Name = "Fire"
fire.LightEmission = 0.78
fire.LockedToPart = true
fire.Texture = "rbxasset://textures/particles/explosion01_implosion_main.dds"
fire.Color = ColorSequence.new(Color3.new(Color), Color3.new(Color))
fire.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, Size), NumberSequenceKeypoint.new(1, Size)})

local Wing2 = Wing1:Clone()
Wing2.Parent = Torso
local x,y,z = 0,-1,-6

Wld = function(a,b,cf)
local Weld = Instance.new('Weld',a)
Weld.Part0 = a
Weld.Part1 = b
Weld.C1 = cf
return Weld
end

local wld = Wld(Torso,Wing1,CFrame.new(0,0,-.5)*CFrame.Angles(-math.rad(90),-math.rad(50),-math.rad(90)))
local wld2 = Wld(Torso,Wing2,CFrame.new(0,0,.5)*CFrame.Angles(-math.rad(90),-math.rad(50),-math.rad(90)))

print'Loaded'

game:service'RunService'.Stepped:connect(function()
--z = 6+math.sin(tick()*2)
y = -1+math.sin(tick()*Num)*Num2
Wing1.Fire.Acceleration = Vector3.new(x,y,z)
Wing2.Fire.Acceleration = Vector3.new(x,y,-z)
end)

------------------------------------------------------------------------------------------------
local Player = game:service'Players'.LocalPlayer
local Character = Player.Character
Torso = Character:WaitForChild'Torso'

local Wing1 = Instance.new("Part",Character)
Wing1.FormFactor = Enum.FormFactor.Custom
Wing1.Size = Vector3.new(.2, .2, .2)
Wing1.Name = "WIng_1"

local fire = Instance.new("ParticleEmitter", Wing1)
fire.VelocitySpread = 0
fire.Lifetime = NumberRange.new(3.1)
fire.Acceleration = Vector3.new(0, 4, 4)
fire.RotSpeed = NumberRange.new(10)
fire.Rate = Rate
fire.Rotation = NumberRange.new(151515)
fire.Name = "Fire"
fire.LightEmission = 0.78
fire.LockedToPart = true
fire.Texture = "rbxasset://textures/particles/explosion01_implosion_main.dds"
fire.Color = ColorSequence.new(Color3.new(Color), Color3.new(Color))
fire.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, Size), NumberSequenceKeypoint.new(1, Size)})

local Wing2 = Wing1:Clone()
Wing2.Parent = Torso
local x,y,z = 0,-1,-6

Wld = function(a,b,cf)
local Weld = Instance.new('Weld',a)
Weld.Part0 = a
Weld.Part1 = b
Weld.C1 = cf
return Weld
end

local wld = Wld(Torso,Wing1,CFrame.new(0,0,-.5)*CFrame.Angles(-math.rad(90),-math.rad(60),-math.rad(90)))
local wld2 = Wld(Torso,Wing2,CFrame.new(0,0,.5)*CFrame.Angles(-math.rad(90),-math.rad(60),-math.rad(90)))

print'Loaded'

game:service'RunService'.Stepped:connect(function()
--z = 6+math.sin(tick()*2)
y = -1+math.sin(tick()*Num)*Num2
Wing1.Fire.Acceleration = Vector3.new(x,y,z)
Wing2.Fire.Acceleration = Vector3.new(x,y,-z)
end)
--------------------------------------
local Plr = game.Players.LocalPlayer --LocalScript
	local Char = Plr.Character
	local Mouse = Plr:GetMouse()
	local ra = Char:FindFirstChild('Right Arm')
	local ts = Char.Torso
	local la = Char:FindFirstChild('Left Arm')
	local ll = Char:FindFirstChild('Left Leg')
	local rl = Char:FindFirstChild('Right Leg')
	local hd = Char.Head
	local root = Char:FindFirstChild('HumanoidRootPart')
	
	rarm = ra
	larm = la
	torso = ts
	hed = hd
	root = root
	lleg = ll
	rleg = rl
	local PrimaryColor = 'Really red'
	local SecondaryColor = 'Really red'

FloatPart = function()
	local Part = Instance.new('Part',torso)
	Part.CFrame = CFrame.new(torso.CFrame.X,workspace.Base.CFrame.Y+1,torso.CFrame.Z) * CFrame.fromEulerAnglesXYZ(86.4,0,87)
	Part.Anchored = true
	Part.Material = 'Neon'
	Part.CanCollide = false
	Part.BrickColor = BrickColor.new(PrimaryColor)
	local Mesh = Instance.new('SpecialMesh',Part)
	Mesh.Scale = Vector3.new(4,4,.2)
	Mesh.MeshId = 'http://www.roblox.com/asset/?id=3270017'
	Mesh.VertexColor = Vector3.new(170,0,0)
	spawn(function()
		for i = 1,30 do
			Mesh.Scale = Mesh.Scale + Vector3.new(.04,.04,0)
			Part.Transparency = Part.Transparency + .035
			game["Run Service"].RenderStepped:wait()
		end
		Part:Destroy()
	end)
end;

DubPart = function()
	local Part = Instance.new('Part',torso)
	Part.CFrame = CFrame.new(torso.CFrame.X,workspace.Base.CFrame.Y+1,torso.CFrame.Z) * CFrame.fromEulerAnglesXYZ(86.4,0,87)
	Part.Anchored = true
	Part.CanCollide = false
	Part.Material = 'Neon'
	Part.BrickColor = BrickColor.new(SecondaryColor)
	local Mesh = Instance.new('SpecialMesh',Part)
	Mesh.Scale = Vector3.new(7,7,.2)
	Mesh.MeshId = 'http://www.roblox.com/asset/?id=3270017'
	Mesh.VertexColor = Vector3.new(170,0,0)
	spawn(function()
		for i = 1,30 do
			Mesh.Scale = Mesh.Scale + Vector3.new(.04,.04,0)
			Part.Transparency = Part.Transparency + .035
			game["Run Service"].RenderStepped:wait()
		end
		Part:Destroy()
	end)
end;

OnTouch = function(Toucher)
	if Toucher.Parent.Name ~= Plr.Name and Toucher.Parent:FindFirstChild('Humanoid') then
		local Hum = Toucher.Parent:FindFirstChild('Humanoid')
		Hum.Health = Hum.Health - .7		
	end
end;

Fade = function(Item,t)
	spawn(function()
		for i = 1,20 do
			Item.Transparency = Item.Transparency + .05
			if t then
				wait(t)
			else 
				wait()
			end
		end
		Item:Destroy()
	end)
end

TouchKill = function(Toucher)
	if Toucher.Parent then
		if Toucher.Parent:FindFirstChild('Humanoid') then
			local P = Toucher.Parent:FindFirstChild('Humanoid')
			if P ~= nil and P.Parent.Name ~= Plr.Name then
				P.Health = P.Health - math.random(4,17)
			end
		end
	end
end;

Particle = function()
	local Part = Instance.new('Part',torso)
	Part.BrickColor = BrickColor.new(PrimaryColor)
	Part.Anchored = true
	Part.Transparency = .3
	Part.Touched:connect(function(I)OnTouch(I)end)
	Part.CanCollide = false
	Part.CFrame = torso.CFrame * CFrame.new(math.random(-10,10),math.random(-15,15),math.random(-10,10)) * CFrame.fromEulerAnglesXYZ(math.random(),math.random(),math.random())
	local Mesh = Instance.new('BlockMesh',Part)
	Mesh.Scale = Vector3.new(.05,.1,.1)
	spawn(function()
		for i = 1,40 do
			Part.Transparency = Part.Transparency + .0125
			Part.CFrame = Part.CFrame * CFrame.new(0,-.07,0)
			game["Run Service"].RenderStepped:wait()
		end
		Part:Destroy()
	end)
end;

spawn(function()
	while wait() do
		wait(.05)
		FloatPart()
		wait(.08)
		FloatPart()
		wait(.05)
		DubPart()
		wait(.08)
	end
end)

wait(0.1)

rs = game:GetService'RunService'
plrs = game:GetService'Players'
lp = plrs.LocalPlayer
c = lp.Character
root = lp.Character.HumanoidRootPart
human = c.Humanoid
FPS = 0
inf = 0
opos1 = Vector3.new()
opos2 = Vector3.new()
opos3 = Vector3.new()
waves = Instance.new("Model", c)
res = Instance.new("Model", c) 
   
local function b()
local t=tick();
local l=t%1*3;
local t=.5*math.pi*(l%1);
if l<1 then
return Color3.new(0,0,0);
elseif l<2 then
return Color3.new(0,0,0);
else
return Color3.new(0,0,0);
end;
end;               
speedParts = function()
	for i = 1, 4 do
		local pos = Vector3.new(math.sin(math.rad(inf + 360 * i)) * 2, math.sin(math.rad(inf + 260 * i) + math.pi / 2) * 2, -c.HumanoidRootPart.Velocity / 5) * (math.sin(tick()) + 2)
		local CFramepos = root.CFrame:toWorldSpace(CFrame.new(pos)).p
		local opos
		if i == 1 then
			opos = opos1
		elseif i == 2 then
			opos = opos2
		else
			opos = opos3
		end
		if human.MoveDirection ~= Vector3.new(0, 0, 0)  then
			local e
			if #res:children() <= 3 then
				e = Instance.new("Part")
			else
				e = res:FindFirstChild("Trail")
			end
			e.Parent = waves
			e.Anchored = true
			e.CanCollide = false
			e.Transparency = 0
			e.Material = "Neon"
			e.Name = "Trail"
			e.Color = b(); --Color = a();
			e.Size = Vector3.new(.2, (CFramepos - opos).magnitude, .2)
			e.CFrame = CFrame.new((CFramepos + opos) / 2, opos) * CFrame.Angles(math.pi / 2, 0, 0)
		end
		if i == 1 then
			opos1 = CFramepos
		elseif i == 2 then
			opos2 = CFramepos
		else
			opos3 = CFramepos
		end
	end
end
                                                
rs.RenderStepped:connect(function()
	FPS = 1 / rs.RenderStepped:wait()
	for i, v in pairs (waves:children()) do
		v.Transparency = v.Transparency + .05 / (FPS / 60)
		if v.Transparency >= .98 then
			v.Transparency = 1
			v.Parent = res
		end
	end
	inf = inf + (8 + root.Velocity.magnitude / 15) / (FPS / 60)
	speedParts()
end)
-----------------------------------
local LocalPlayer = game:GetService("Players").LocalPlayer
local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:wait()

Character.Head.Transparency = 1
 
local Orb = Instance.new("Part", Character)
Orb.Name = "Orb"

Orb.CanCollide = false
Orb.BrickColor = BrickColor.new("Really red")
Orb.Transparency = 0
Orb.Material = "Plastic"
Orb.Size = Vector3.new(1.05, 1.05, 1.05)


local M = Instance.new("SpecialMesh")
M.Parent = Orb
M.MeshId = "http://www.roblox.com/asset/?id=21057410"
M.Scale = Vector3.new(1.05, 1.05, 1.05)

 
local Weld = Instance.new("Weld", Orb)
Weld.Part0 = Character.Head
Weld.Part1 = Orb
Weld.C1 = CFrame.new(0, -0.5, 0)
---------------------------------------
--The Color of the Attack and Sword--
tclr = "Really red"




Player=game:GetService("Players").LocalPlayer
Character=Player.Character 
PlayerGui=Player.PlayerGui
Backpack=Player.Backpack 
Torso=Character.Torso
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
local gun=false
local shoot=false

player=nil 
mana=0
cam = workspace.CurrentCamera
ZTarget = nil
RocketTarget = nil
local m = Instance.new("Model",Character)
m.Name = "WeaponModel"

mouse=Player:GetMouse()
--save shoulders 
RSH, LSH=nil, nil 
--welds 
RW, LW=Instance.new("Weld"), Instance.new("Weld") 
RW.Name="Right Shoulder" LW.Name="Left Shoulder"
LH=Torso["Left Hip"]
RH=Torso["Right Hip"]
TorsoColor=Torso.BrickColor
function NoOutline(Part)
Part.TopSurface,Part.BottomSurface,Part.LeftSurface,Part.RightSurface,Part.FrontSurface,Part.BackSurface = 10,10,10,10,10,10
end
player=Player 
ch=Character
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

	function swait(num)
    if num==0 or num==nil then
    game:service'RunService'.Stepped:wait(0)
    else
    for i=0,num do
    game:service'RunService'.Stepped:wait(0)
    end
    end
	    end
	
	function nooutline(part)
		part.TopSurface,part.BottomSurface,part.LeftSurface,part.RightSurface,part.FrontSurface,part.BackSurface = 10,10,10,10,10,10
	end
	
	function part(formfactor,parent,material,reflectance,transparency,brickcolor,name,size)
		local fp=it("Part")
		fp.formFactor=formfactor
		fp.Parent=parent
		fp.Reflectance=reflectance
		fp.Transparency=transparency
		fp.CanCollide=false
		fp.Locked=true
		fp.BrickColor=BrickColor.new(tostring(brickcolor))
		fp.Name=name
		fp.Size=size
		fp.Position=Character.Torso.Position
		nooutline(fp)
		fp.Material=material
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
	
	function weld(parent,part0,part1,c0,c1)
		local weld=it("Weld")
		weld.Parent=parent
		weld.Part0=part0
		weld.Part1=part1
		weld.C0=c0
		weld.C1=c1
		return weld
	end
	
	
local function CFrameFromTopBack(at, top, back)
local right = top:Cross(back)
return CFrame.new(at.x, at.y, at.z,
right.x, top.x, back.x,
right.y, top.y, back.y,
right.z, top.z, back.z)
end

function Triangle(a, b, c)
local edg1 = (c-a):Dot((b-a).unit)
local edg2 = (a-b):Dot((c-b).unit)
local edg3 = (b-c):Dot((a-c).unit)
if edg1 <= (b-a).magnitude and edg1 >= 0 then
a, b, c = a, b, c
elseif edg2 <= (c-b).magnitude and edg2 >= 0 then
a, b, c = b, c, a
elseif edg3 <= (a-c).magnitude and edg3 >= 0 then
a, b, c = c, a, b
else
assert(false, "unreachable")
end
 
local len1 = (c-a):Dot((b-a).unit)
local len2 = (b-a).magnitude - len1
local width = (a + (b-a).unit*len1 - c).magnitude
 
local maincf = CFrameFromTopBack(a, (b-a):Cross(c-b).unit, -(b-a).unit)
 
local list = {}

local TrailColor = tclr
 
if len1 > 0.01 then
local w1 = Instance.new('WedgePart', m)
game:GetService("Debris"):AddItem(w1,5)
w1.Material = "SmoothPlastic"
w1.FormFactor = 'Custom'
w1.BrickColor = BrickColor.new(TrailColor)
w1.Transparency = 0
w1.Reflectance = 0
w1.Material = "Neon"
w1.CanCollide = false
NoOutline(w1)
local sz = Vector3.new(0.2, width, len1)
w1.Size = sz
local sp = Instance.new("SpecialMesh",w1)
sp.MeshType = "Wedge"
sp.Scale = Vector3.new(0,1,1) * sz/w1.Size
w1:BreakJoints()
w1.Anchored = true
w1.Parent = workspace
w1.Transparency = 0.7
table.insert(Effects,{w1,"Disappear",.01})
w1.CFrame = maincf*CFrame.Angles(math.pi,0,math.pi/2)*CFrame.new(0,width/2,len1/2)
table.insert(list,w1)
end
 
if len2 > 0.01 then
local w2 = Instance.new('WedgePart', m)
game:GetService("Debris"):AddItem(w2,5)
w2.Material = "SmoothPlastic"
w2.FormFactor = 'Custom'
w2.BrickColor = BrickColor.new(TrailColor)
w2.Transparency = 0
w2.Reflectance = 0
w2.Material = "Neon"
w2.CanCollide = false
NoOutline(w2)
local sz = Vector3.new(0.2, width, len2)
w2.Size = sz
local sp = Instance.new("SpecialMesh",w2)
sp.MeshType = "Wedge"
sp.Scale = Vector3.new(0,1,1) * sz/w2.Size
w2:BreakJoints()
w2.Anchored = true
w2.Parent = workspace
w2.Transparency = 0.7
table.insert(Effects,{w2,"Disappear",.01})
w2.CFrame = maincf*CFrame.Angles(math.pi,math.pi,-math.pi/2)*CFrame.new(0,width/2,-len1 - len2/2)
table.insert(list,w2)
end
return unpack(list)
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

function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 

Damagefunc=function(Part,hit,minim,maxim,knockback,Type,Property,Delay,KnockbackType,decreaseblock)
        if hit.Parent==nil then
                return
        end
        local h=hit.Parent:FindFirstChild("Humanoid")
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
                        local c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=game:service("Players").LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                local Damage=math.random(minim,maxim)
--                h:TakeDamage(Damage)
                local  blocked=false
                local  block=hit.Parent:findFirstChild("Block")
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
                ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, Part.BrickColor.Color)
                else
                h.Health=h.Health-(Damage/2)
                ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, BrickColor.new("Bright blue").Color)
                end
                if Type=="Knockdown" then
                local hum=hit.Parent.Humanoid
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
local rl=Instance.new("BodyAngularVelocity")
rl.P=3000
rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
rl.angularvelocity=Vector3.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))
rl.Parent=hit
game:GetService("Debris"):AddItem(bodvol,.5)
game:GetService("Debris"):AddItem(rl,.5)
                elseif Type=="Normal" then
                local vp=Instance.new("BodyVelocity")
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
                local rl=Instance.new("BodyAngularVelocity")
                rl.P=3000
                rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
                rl.angularvelocity=Vector3.new(math.random(-30,30),math.random(-30,30),math.random(-30,30))
                rl.Parent=hit
                game:GetService("Debris"):AddItem(rl,.5)
                elseif Type=="Snare" then
                local bp=Instance.new("BodyPosition")
                bp.P=2000
                bp.D=100
                bp.maxForce=Vector3.new(math.huge,math.huge,math.huge)
                bp.position=hit.Parent.Torso.Position
                bp.Parent=hit.Parent.Torso
                game:GetService("Debris"):AddItem(bp,1)
                elseif Type=="Target" then
	            local Targetting = false
                if Targetting==false then
                ZTarget=hit.Parent.Torso
                coroutine.resume(coroutine.create(function(Part) 
                so("http://www.roblox.com/asset/?id=15666462",Part,1,1.5) 
                swait(5)
                so("http://www.roblox.com/asset/?id=15666462",Part,1,1.5) 
                end),ZTarget)
                local TargHum=ZTarget.Parent:findFirstChild("Humanoid")
                local  targetgui=Instance.new("BillboardGui")
                targetgui.Parent=ZTarget
                targetgui.Size=UDim2.new(10,100,10,100)
                local targ=Instance.new("ImageLabel")
                targ.Parent=targetgui
                targ.BackgroundTransparency=1
                targ.Image="rbxassetid://4834067"
                targ.Size=UDim2.new(1,0,1,0)
                cam.CameraType="Scriptable"
                cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
                local dir=Vector3.new(cam.CoordinateFrame.lookVector.x,0,cam.CoordinateFrame.lookVector.z)
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
                        local debounce=Instance.new("BoolValue")
                        debounce.Name="DebounceHit"
                        debounce.Parent=hit.Parent
                        debounce.Value=true
                        game:GetService("Debris"):AddItem(debounce,Delay)
                        c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=Player
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
        end
end


function ShowDamage(Pos, Text, Time, Color)
	local Rate = (1 / 30)
	local Pos = (Pos or Vector3.new(0, 0, 0))
	local Text = (Text or "")
	local Time = (Time or 2)
	local Color = (Color or Color3.new(1, 0, 0))
	local EffectPart = part("Custom",workspace,"SmoothPlastic",0,1,BrickColor.new(Color),"Effect",vt(0,0,0))
	EffectPart.Anchored = true
	local BillboardGui = Instance.new("BillboardGui")
	BillboardGui.Size = UDim2.new(3, 0, 3, 0)
	BillboardGui.Adornee = EffectPart
	local TextLabel = Instance.new("TextLabel")
	TextLabel.BackgroundTransparency = 1
	TextLabel.Size = UDim2.new(1, 0, 1, 0)
	TextLabel.Text = Text
	TextLabel.TextColor3 = Color
	TextLabel.TextScaled = true
	TextLabel.Font = Enum.Font.ArialBold
	TextLabel.Parent = BillboardGui
	BillboardGui.Parent = EffectPart
	game.Debris:AddItem(EffectPart, (Time + 0.1))
	EffectPart.Parent = game:GetService("Workspace")
	Delay(0, function()
		local Frames = (Time / Rate)
		for Frame = 1, Frames do
			wait(Rate)
			local Percent = (Frame / Frames)
			EffectPart.CFrame = CFrame.new(Pos) + Vector3.new(0, Percent, 0)
			TextLabel.TextTransparency = Percent
		end
		if EffectPart and EffectPart.Parent then
			EffectPart:Destroy()
		end
	end)
end

Player=game:GetService('Players').LocalPlayer
Character=Player.Character
Mouse=Player:GetMouse()
m=Instance.new('Model',Character)
it=Instance.new
function nooutline(part)
	part.TopSurface,part.BottomSurface,part.LeftSurface,part.RightSurface,part.FrontSurface,part.BackSurface = 10,10,10,10,10,10
end
function part(formfactor,parent,material,reflectance,transparency,brickcolor,name,size)
	local fp=it("Part")
	fp.formFactor=formfactor
	fp.Parent=parent
	fp.Reflectance=reflectance
	fp.Transparency=transparency
	fp.CanCollide=false
	fp.Locked=true
	fp.BrickColor=BrickColor.new(tostring(brickcolor))
	fp.Name=name
	fp.Size=size
	fp.Position=Character.Torso.Position
	nooutline(fp)
	fp.Material=material
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
function weld(parent,part0,part1,c0,c1)
	local weld=it("Weld")
	weld.Parent=parent
	weld.Part0=part0
	weld.Part1=part1
	weld.C0=c0
	weld.C1=c1
	return weld
end

Player=game:GetService('Players').LocalPlayer
Character=Player.Character
Mouse=Player:GetMouse()
m=Instance.new('Model',Character)
it=Instance.new
function nooutline(part)
	part.TopSurface,part.BottomSurface,part.LeftSurface,part.RightSurface,part.FrontSurface,part.BackSurface = 10,10,10,10,10,10
end
function part(formfactor,parent,material,reflectance,transparency,brickcolor,name,size)
	local fp=it("Part")
	fp.formFactor=formfactor
	fp.Parent=parent
	fp.Reflectance=reflectance
	fp.Transparency=transparency
	fp.CanCollide=false
	fp.Locked=true
	fp.BrickColor=BrickColor.new(tostring(brickcolor))
	fp.Name=name
	fp.Size=size
	fp.Position=Character.Torso.Position
	nooutline(fp)
	fp.Material=material
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
function weld(parent,part0,part1,c0,c1)
	local weld=it("Weld")
	weld.Parent=parent
	weld.Part0=part0
	weld.Part1=part1
	weld.C0=c0
	weld.C1=c1
	return weld
end

Handle=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Handle",Vector3.new(0.777778268, 0.259259313, 0.518518627))
handleweld=weld(m,Character["Right Arm"],Handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 0.999999881, 0, 0, 0, 1),CFrame.new(0.741678238, 0.794418335, -0.0370121002, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008))
mesh("BlockMesh",Handle,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.600000203, 0.200000003, 0.399999976))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-1.4672184, 1.46959305, 0.0142880678, -0.707106829, -7.4505806e-008, 0.707106709, -0.707106769, 1.49011647e-008, -0.707106829, 4.21468478e-008, -1, -6.32202628e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Hitbox=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Really black","Hitbox",Vector3.new(6.74074316, 0.259259313, 1.2962966))
Hitboxweld=weld(m,Handle,Hitbox,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-7.94812012, 9.15527344e-005, -0.00979995728, 7.26342932e-008, 0, -1, 1, -1.35872824e-008, 7.26342932e-008, -1.35872824e-008, -1, -9.86902651e-016))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.29629672, 0.259259313, 1.03703737))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-10.5536575, -3.57627869e-006, 0, 7.26342932e-008, 0, -1, 1, -1.35872824e-008, 7.26342932e-008, -1.35872824e-008, -1, -9.86902651e-016))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1.04999995, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(6.74074316, 0.259259313, 1.2962966))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-7.70182037, 9.15527344e-005, 0, 7.26342932e-008, 0, -1, 1, -1.35872824e-008, 7.26342932e-008, -1.35872824e-008, -1, -9.86902651e-016))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.259259343, 0.77777797, 2.59259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-9.3460083e-005, -0.324073672, 12.3684731, -1, 1.35872806e-008, -7.26343004e-008, -1.35872806e-008, -1, 0, -7.26343004e-008, 9.86902651e-016, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.839999974, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.259259343, 0.518518627, 2.07407475))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-5.53131104e-005, -0.207403183, 12.0443993, 1, -1.35872806e-008, 7.26343004e-008, 1.35872806e-008, 1, 0, -7.26343004e-008, 9.86902651e-016, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.01999998, 0.810000002, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.259259343, 0.518518686, 2.07407475))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(5.7220459e-005, -0.207421303, 12.0443993, -1, 1.35872806e-008, -7.26343004e-008, -1.35872806e-008, -1, 0, -7.26343004e-008, 9.86902651e-016, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.01999998, 0.810000002, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.259259343, 0.77777797, 2.59259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(9.3460083e-005, -0.324074984, 12.3684731, 1, -1.35872806e-008, 7.26343004e-008, 1.35872806e-008, 1, 0, -7.26343004e-008, 9.86902651e-016, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.839999974, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-0.18214798, 0.184528351, 0.00185966492, -0.707106829, -7.4505806e-008, 0.707106709, -0.707106769, 1.49011647e-008, -0.707106829, 4.21468478e-008, -1, -6.32202628e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-1.09992981, 1.09993172, 2.31266022e-005, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(0.733297348, -0.733297348, -1.33514404e-005, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(0.274971008, -0.27497673, 3.43322754e-005, -1.6963854e-007, 0.70710665, 0.707106888, -1.46491521e-008, 0.707106888, -0.707106709, -1, -1.30311079e-007, -1.09594069e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-0.641641617, 0.641643524, 1.74045563e-005, -1.6963854e-007, 0.70710665, 0.707106888, -1.46491521e-008, 0.707106888, -0.707106709, -1, -1.30311079e-007, -1.09594069e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-1.92491722, 1.92491722, 5.7220459e-005, -1.6963854e-007, 0.70710665, 0.707106888, -1.46491521e-008, 0.707106888, -0.707106709, -1, -1.30311079e-007, -1.09594069e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-1.37493706, 1.37493706, 3.4570694e-005, -1.6963854e-007, 0.70710665, 0.707106888, -1.46491521e-008, 0.707106888, -0.707106709, -1, -1.30311079e-007, -1.09594069e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-1.46542358, 1.46780205, 0.00187504292, -0.707106829, -7.4505806e-008, 0.707106709, -0.707106769, 1.49011647e-008, -0.707106829, 4.21468478e-008, -1, -6.32202628e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(0.0916500092, -0.0916557312, 1.71661377e-005, -1.6963854e-007, 0.70710665, 0.707106888, -1.46491521e-008, 0.707106888, -0.707106709, -1, -1.30311079e-007, -1.09594069e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(0.641609192, -0.641607285, 1.71661377e-005, -1.6963854e-007, 0.70710665, 0.707106888, -1.46491521e-008, 0.707106888, -0.707106709, -1, -1.30311079e-007, -1.09594069e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-0.732124329, 0.734502792, 0.00185978413, -0.707106829, -7.4505806e-008, 0.707106709, -0.707106769, 1.49011647e-008, -0.707106829, 4.21468478e-008, -1, -6.32202628e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(6.22222471, 0.518518627, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-0.0536880493, 7.62939453e-005, 0, 7.26342932e-008, 0, -1, 1, -1.35872824e-008, 7.26342932e-008, -1.35872824e-008, -1, -9.86902651e-016))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(0.366659164, -0.366657257, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(0.183334351, -0.183332443, -1.33514404e-005, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-1.00829315, 1.00829506, 3.4570694e-005, -1.6963854e-007, 0.70710665, 0.707106888, -1.46491521e-008, 0.707106888, -0.707106709, -1, -1.30311079e-007, -1.09594069e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-1.19162178, 1.19162369, 5.17368317e-005, -1.6963854e-007, 0.70710665, 0.707106888, -1.46491521e-008, 0.707106888, -0.707106709, -1, -1.30311079e-007, -1.09594069e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-1.55827904, 1.55827904, 5.12599945e-005, -1.6963854e-007, 0.70710665, 0.707106888, -1.46491521e-008, 0.707106888, -0.707106709, -1, -1.30311079e-007, -1.09594069e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-1.83205986, 1.83444023, 0.00188946724, -0.707106829, -7.4505806e-008, 0.707106709, -0.707106769, 1.49011647e-008, -0.707106829, 4.21468478e-008, -1, -6.32202628e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(0.824943542, -0.824941635, 1.90734863e-006, -1.6963854e-007, 0.70710665, 0.707106888, -1.46491521e-008, 0.707106888, -0.707106709, -1, -1.30311079e-007, -1.09594069e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-0.549957275, 0.549959183, -1.31130219e-005, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-0.274999619, 0.275001526, 3.4570694e-005, -1.6963854e-007, 0.70710665, 0.707106888, -1.46491521e-008, 0.707106888, -0.707106709, -1, -1.30311079e-007, -1.09594069e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(0.00117111206, 0.00120735168, 0.00185966492, -0.707106829, -7.4505806e-008, 0.707106709, -0.707106769, 1.49011647e-008, -0.707106829, 4.21468478e-008, -1, -6.32202628e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-0.457113266, 0.45949173, -0.00183963776, -0.70710665, 1.49011612e-008, -0.707106888, -0.707106888, 1.49011603e-008, 0.70710665, 2.10734239e-008, 1, 5.65233175e-015))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-1.55705452, 1.55943298, -0.00180530548, -0.70710665, 1.49011612e-008, -0.707106888, -0.707106888, 1.49011603e-008, 0.70710665, 2.10734239e-008, 1, 5.65233175e-015))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-1.28208542, 1.28446388, 0.00185978413, -0.707106829, -7.4505806e-008, 0.707106709, -0.707106769, 1.49011647e-008, -0.707106829, 4.21468478e-008, -1, -6.32202628e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(0.276185989, -0.273807526, -0.00183963776, -0.70710665, 1.49011612e-008, -0.707106888, -0.707106888, 1.49011603e-008, 0.70710665, 2.10734239e-008, 1, 5.65233175e-015))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-0.548799515, 0.55116272, 0.00185024738, -0.707106829, -7.4505806e-008, 0.707106709, -0.707106769, 1.49011647e-008, -0.707106829, 4.21468478e-008, -1, -6.32202628e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-0.915441513, 0.917819977, 0.00185978413, -0.707106829, -7.4505806e-008, 0.707106709, -0.707106769, 1.49011647e-008, -0.707106829, 4.21468478e-008, -1, -6.32202628e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-0.273786545, 0.276166916, -0.00180530548, -0.70710665, 1.49011612e-008, -0.707106888, -0.707106888, 1.49011603e-008, 0.70710665, 2.10734239e-008, 1, 5.65233175e-015))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-1.64990616, 1.64990807, 2.31266022e-005, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-1.74037552, 1.74275398, -0.00180244446, -0.70710665, 1.49011612e-008, -0.707106888, -0.707106888, 1.49011603e-008, 0.70710665, 2.10734239e-008, 1, 5.65233175e-015))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(1.00948334, -1.00710487, -0.00185012817, -0.70710665, 1.49011612e-008, -0.707106888, -0.707106888, 1.49011603e-008, 0.70710665, 2.10734239e-008, 1, 5.65233175e-015))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-0.365472794, 0.367851257, 0.00187504292, -0.707106829, -7.4505806e-008, 0.707106709, -0.707106769, 1.49011647e-008, -0.707106829, 4.21468478e-008, -1, -6.32202628e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-0.640443802, 0.642822266, -0.00182056427, -0.70710665, 1.49011612e-008, -0.707106888, -0.707106888, 1.49011603e-008, 0.70710665, 2.10734239e-008, 1, 5.65233175e-015))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-1.28325844, 1.28326035, 2.38418579e-007, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-0.18331337, 0.183315277, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-1.00708008, 1.00945854, -0.00180530548, -0.70710665, 1.49011612e-008, -0.707106888, -0.707106888, 1.49011603e-008, 0.70710665, 2.10734239e-008, 1, 5.65233175e-015))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(0.826148987, -0.823768616, -0.00183963776, -0.70710665, 1.49011612e-008, -0.707106888, -0.707106888, 1.49011603e-008, 0.70710665, 2.10734239e-008, 1, 5.65233175e-015))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-0.824975967, 0.824977875, 3.4570694e-005, -1.6963854e-007, 0.70710665, 0.707106888, -1.46491521e-008, 0.707106888, -0.707106709, -1, -1.30311079e-007, -1.09594069e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-1.83322906, 1.83323097, 3.64780426e-005, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(0.642831802, -0.640453339, -0.00183963776, -0.70710665, 1.49011612e-008, -0.707106888, -0.707106888, 1.49011603e-008, 0.70710665, 2.10734239e-008, 1, 5.65233175e-015))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-0.0904636383, 0.0928440094, -0.00182056427, -0.70710665, 1.49011612e-008, -0.707106888, -0.707106888, 1.49011603e-008, 0.70710665, 2.10734239e-008, 1, 5.65233175e-015))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(0.0928478241, -0.0904693604, -0.00182056427, -0.70710665, 1.49011612e-008, -0.707106888, -0.707106888, 1.49011603e-008, 0.70710665, 2.10734239e-008, 1, 5.65233175e-015))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(0.549985886, -0.549983978, -1.33514404e-005, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-1.19040871, 1.19278717, -0.00182056427, -0.70710665, 1.49011612e-008, -0.707106888, -0.707106888, 1.49011603e-008, 0.70710665, 2.10734239e-008, 1, 5.65233175e-015))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-0.823759079, 0.826137543, -0.00182056427, -0.70710665, 1.49011612e-008, -0.707106888, -0.707106888, 1.49011603e-008, 0.70710665, 2.10734239e-008, 1, 5.65233175e-015))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-1.46657944, 1.46658134, 2.31266022e-005, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-0.733295441, 0.733297348, 2.38418579e-007, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-0.458320618, 0.458322525, 5.17368317e-005, -1.6963854e-007, 0.70710665, 0.707106888, -1.46491521e-008, 0.707106888, -0.707106709, -1, -1.30311079e-007, -1.09594069e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-1.37374115, 1.37611961, -0.00180530548, -0.70710665, 1.49011612e-008, -0.707106888, -0.707106888, 1.49011603e-008, 0.70710665, 2.10734239e-008, 1, 5.65233175e-015))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(6.22222471, 0.518518627, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-0.0536880493, 0, 7.62939453e-005, 7.26342932e-008, 0, -1, -7.58196705e-008, 1, -5.50710795e-015, 1, 7.58196705e-008, 7.26342932e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-0.916606903, 0.91660881, 2.38418579e-007, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-0.0916824341, 0.0916843414, 2.67028809e-005, -1.6963854e-007, 0.70710665, 0.707106888, -1.46491521e-008, 0.707106888, -0.707106709, -1, -1.30311079e-007, -1.09594069e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(0.734451294, -0.732088089, 0.00185012817, -0.707106829, -7.4505806e-008, 0.707106709, -0.707106769, 1.49011647e-008, -0.707106829, 4.21468478e-008, -1, -6.32202628e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(0.916631699, -0.916629791, -1.71661377e-005, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(0.367816925, -0.365451813, 0.00185966492, -0.707106829, -7.4505806e-008, 0.707106709, -0.707106769, 1.49011647e-008, -0.707106829, 4.21468478e-008, -1, -6.32202628e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-1.64874077, 1.65112114, 0.00186932087, -0.707106829, -7.4505806e-008, 0.707106709, -0.707106769, 1.49011647e-008, -0.707106829, 4.21468478e-008, -1, -6.32202628e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(0.551136017, -0.548772812, 0.00185012817, -0.707106829, -7.4505806e-008, 0.707106709, -0.707106769, 1.49011647e-008, -0.707106829, 4.21468478e-008, -1, -6.32202628e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(0.458297729, -0.458295822, 1.71661377e-005, -1.6963854e-007, 0.70710665, 0.707106888, -1.46491521e-008, 0.707106888, -0.707106709, -1, -1.30311079e-007, -1.09594069e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(0.459510803, -0.457132339, -0.00182056427, -0.70710665, 1.49011612e-008, -0.707106888, -0.707106888, 1.49011603e-008, 0.70710665, 2.10734239e-008, 1, 5.65233175e-015))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-0.366638184, 0.366640091, 2.31266022e-005, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-1.74159431, 1.74159622, 5.12599945e-005, -1.6963854e-007, 0.70710665, 0.707106888, -1.46491521e-008, 0.707106888, -0.707106709, -1, -1.30311079e-007, -1.09594069e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(0.184497833, -0.182132721, 0.00183963776, -0.707106829, -7.4505806e-008, 0.707106709, -0.707106769, 1.49011647e-008, -0.707106829, 4.21468478e-008, -1, -6.32202628e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.777778268, 0.259259313, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(0.917798996, -0.915416718, 0.00183963776, -0.707106829, -7.4505806e-008, 0.707106709, -0.707106769, 1.49011647e-008, -0.707106829, 4.21468478e-008, -1, -6.32202628e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.959999979, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(6.22222471, 0.518518627, 0.518518627))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-0.0536880493, 0.000133514404, 0, 7.26342932e-008, 0, -1, 1, -1.35872824e-008, 7.26342932e-008, -1.35872824e-008, -1, -9.86902651e-016))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.518518567, 0.518518686, 0.259259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(3.90315247, -0.000120162964, 0.847258329, 9.47018997e-009, -1.1920929e-007, 1, -1, -8.30279134e-008, 9.47017753e-009, 8.30279134e-008, -1, -1.19209282e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.699999988, 0.699999988, 0.699999988))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.518518567, 0.518518686, 0.259259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(3.90315247, -0.00012421608, -0.837946296, 9.47018997e-009, -1.1920929e-007, 1, -1, -8.30279134e-008, 9.47017753e-009, 8.30279134e-008, -1, -1.19209282e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.699999988, 0.699999988, 0.699999988))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.259259343, 0.518518686, 1.03703749))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-0.000133275986, 2.90047836, 4.3380785, -0.999999762, -2.11777547e-008, 3.85407475e-008, 4.39660077e-008, -0.499999642, 0.866025031, 9.29916588e-010, 0.866025269, 0.499999523))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.99000001, 0.99000001, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.259259343, 0.518518686, 1.03703749))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(0.000120401382, 2.90047836, 4.33810234, 1, 2.27286364e-007, 2.32403181e-007, -3.14910324e-007, 0.499999881, 0.866025448, 8.0634095e-008, -0.866025448, 0.499999881))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.99000001, 0.99000001, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.518518567, 1.2962966, 0.259259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(2.90047836, 3.17142868, 0.000120162964, -1.26123183e-007, 0.49999994, 0.866025448, 8.06344076e-008, -0.866025448, 0.49999994, 1, 1.32893049e-007, 6.89086761e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.99000001, 1, 0.99000001))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.518518567, 1.2962966, 0.259259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(2.90048981, -3.1714077, 0.000133752823, -1.0990815e-007, -0.49999994, 0.866025388, -9.30000077e-010, -0.866025388, -0.49999994, 1, -5.57594753e-008, 9.47182528e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.99000001, 1, 0.99000001))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.03703725, 0.259259313, 1.03703737))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(2.78516388, 0.000163555145, -4.44323349, -7.26343217e-008, -1.78813963e-007, 1, -1, -5.96046519e-008, -7.26343359e-008, 5.96046661e-008, -1, -1.78813977e-007))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1.02999997, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.29629672, 0.259259313, 1.29629672))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(2.87590027, 0.000174999237, -4.53397942, -7.26343217e-008, -1.78813963e-007, 1, -1, -5.96046519e-008, -7.26343359e-008, 5.96046661e-008, -1, -1.78813977e-007))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1.00999999, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.29629672, 0.259259313, 1.29629672))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(2.20371246, 9.27448273e-005, 4.59070015, -1.35872718e-008, -1, -1.78813934e-007, 1, -1.35873384e-008, 3.73972171e-007, -3.73972171e-007, -1.78813934e-007, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1.00999999, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.03703725, 0.259259313, 1.03703737))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-4.68144608, 8.22544098e-005, -2.112957, 7.26342932e-008, 0, -1, 1, -1.35872824e-008, 7.26342932e-008, -1.35872824e-008, -1, -9.86902651e-016))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1.02999997, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.03703725, 0.259259313, 1.03703737))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(2.11297655, 8.32080841e-005, 4.68144417, -1.35872718e-008, -1, -1.78813934e-007, 1, -1.35873384e-008, 3.73972171e-007, -3.73972171e-007, -1.78813934e-007, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1.02999997, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.2962966, 0.518518627, 1.29629672))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-4.07218933, 9.1791153e-005, 0, 7.26342932e-008, 0, -1, 1, -1.35872824e-008, 7.26342932e-008, -1.35872824e-008, -1, -9.86902651e-016))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1.02999997, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.03703725, 0.259259313, 1.03703737))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(2.78264618, 8.17775726e-005, -4.555583, 7.26343217e-008, 1.78813934e-007, 1, 1, 1.35872735e-008, -7.26343217e-008, -1.35872877e-008, 1, -1.78813934e-007))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1.02999997, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.29629672, 0.259259313, 1.29629672))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(2.87337875, 9.13143158e-005, -4.64633274, 7.26343217e-008, 1.78813934e-007, 1, 1, 1.35872735e-008, -7.26343217e-008, -1.35872877e-008, 1, -1.78813934e-007))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1.00999999, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.29629672, 0.259259313, 1.29629672))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-4.59070206, 9.1791153e-005, -2.20370197, 7.26342932e-008, 0, -1, 1, -1.35872824e-008, 7.26342932e-008, -1.35872824e-008, -1, -9.86902651e-016))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1.00999999, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(1.29629672, 0.259259313, 1.29629672))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-10.8129234, 2.88486481e-005, 0, 7.26342932e-008, 0, -1, 1, -1.35872824e-008, 7.26342932e-008, -1.35872824e-008, -1, -9.86902651e-016))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1.03999996, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.259259343, 0.259259313, 1.94444513))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-0.000122070313, -0.116662025, 12.0443993, 1, -1.35872806e-008, 7.26343004e-008, 1.35872806e-008, 1, 0, -7.26343004e-008, 9.86902651e-016, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.02999997, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.259259343, 0.518518686, 2.07407475))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(3.24249268e-005, -0.259274483, 12.1092224, -1, 1.35872806e-008, -7.26343004e-008, -1.35872806e-008, -1, 0, -7.26343004e-008, 9.86902651e-016, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(6.74074316, 0.259259313, 0.259259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-7.70181274, -1.90734863e-006, 0.583325624, 7.26342932e-008, 0, -1, 1, -1.35872824e-008, 7.26342932e-008, -1.35872824e-008, -1, -9.86902651e-016))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1.02999997, 0.100000001))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(6.74074316, 0.259259313, 0.259259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-7.70181274, -1.90734863e-006, 0.259250879, 7.26342932e-008, 0, -1, 1, -1.35872824e-008, 7.26342932e-008, -1.35872824e-008, -1, -9.86902651e-016))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1.05999994, 0.100000001))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.259259343, 0.518518627, 2.07407475))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-3.24249268e-005, -0.259250879, 12.1092224, 1, -1.35872806e-008, 7.26343004e-008, 1.35872806e-008, 1, 0, -7.26343004e-008, 9.86902651e-016, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(6.74074316, 0.259259313, 0.259259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-7.70181274, -1.90734863e-006, -0.583348989, 7.26342932e-008, 0, -1, 1, -1.35872824e-008, 7.26342932e-008, -1.35872824e-008, -1, -9.86902651e-016))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1.02999997, 0.100000001))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.259259343, 0.259259313, 1.94444513))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(0.000122070313, -0.116671681, 12.0443993, -1, 1.35872806e-008, -7.26343004e-008, -1.35872806e-008, -1, 0, -7.26343004e-008, 9.86902651e-016, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.02999997, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(6.74074316, 0.259259313, 0.259259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-7.70181274, -1.90734863e-006, -0.259255409, 7.26342932e-008, 0, -1, 1, -1.35872824e-008, 7.26342932e-008, -1.35872824e-008, -1, -9.86902651e-016))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1.05999994, 0.100000001))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(6.74074316, 0.259259313, 0.259259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-7.70181274, -1.90734863e-006, -0.129636765, 7.26342932e-008, 0, -1, 1, -1.35872824e-008, 7.26342932e-008, -1.35872824e-008, -1, -9.86902651e-016))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1.05999994, 0.200000003))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(6.74074316, 0.259259313, 0.259259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-7.70182037, -1.90734863e-006, 0.129623413, 7.26342932e-008, 0, -1, 1, -1.35872824e-008, 7.26342932e-008, -1.35872824e-008, -1, -9.86902651e-016))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1.05999994, 0.200000003))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.259259343, 0.77777797, 2.59259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-7.05718994e-005, -0.337038875, 12.3684731, -1, 1.35872806e-008, -7.26343004e-008, -1.35872806e-008, -1, 0, -7.26343004e-008, 9.86902651e-016, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.839999974, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(6.74074316, 0.259259313, 1.2962966))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-7.70182037, -1.90734863e-006, 0, 7.26342932e-008, 0, -1, 1, -1.35872824e-008, 7.26342932e-008, -1.35872824e-008, -1, -9.86902651e-016))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.119999997, 1.00100005))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.259259343, 0.77777797, 2.59259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(7.05718994e-005, -0.33703351, 12.3684731, 1, -1.35872806e-008, 7.26343004e-008, 1.35872806e-008, 1, 0, -7.26343004e-008, 9.86902651e-016, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.839999974, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.259259343, 0.518518686, 0.518518686))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(0.000120639801, -3.70452118, -2.79076195, 1, 4.20377333e-008, 2.81075273e-007, 2.82378039e-007, -0.258818924, -0.965925813, 3.21423244e-008, 0.965925813, -0.258818954))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.99000001, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.518518567, 1.55555594, 0.259259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(3.26083183, -3.08899784, 0.000133752823, -8.63836647e-008, -0.422618359, 0.906307876, -4.29547775e-009, -0.906307757, -0.42261833, 1, -4.04003444e-008, 7.64748265e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.0599999987, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.518518567, 1.2962966, 0.259259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(2.90047836, 3.17142868, 0.000120162964, -1.26123183e-007, 0.49999994, 0.866025448, 8.06344076e-008, -0.866025448, 0.49999994, 1, 1.32893049e-007, 6.89086761e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.100000001))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.518518567, 1.55555594, 0.259259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(3.0921936, 2.85683537, 0.000120639801, -1.09868267e-007, 0.390732348, 0.920504391, -4.35992824e-008, -0.920504391, 0.390732348, 1, 2.79575652e-009, 1.18169858e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.0599999987, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.518518567, 1.2962966, 0.259259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(2.90048981, -3.1714077, 0.000133752823, -1.0990815e-007, -0.49999994, 0.866025388, -9.30000077e-010, -0.866025388, -0.49999994, 1, -5.57594753e-008, 9.47182528e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.100000001))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.518518567, 1.55555594, 0.259259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(3.54734802, -2.42215061, 0.000133991241, -9.79423547e-008, -0.258819193, 0.965925872, 4.70048391e-008, -0.965925872, -0.258819193, 1, 2.00538253e-008, 1.06770791e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.0599999987, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.518518567, 0.518518686, 0.259259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(3.89389801, -0.000120162964, 0.847258329, 9.47018997e-009, -1.1920929e-007, 1, -1, -8.30279134e-008, 9.47017753e-009, 8.30279134e-008, -1, -1.19209282e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 0.560000002, 0.709999979))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.259259343, 0.259259313, 0.518518806))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-0.000130414963, 0.86914444, -4.22298431, -1, -1.22191182e-006, 1.42418617e-006, -1.54888335e-006, 0.965925753, -0.25881955, -1.05940342e-006, -0.25881955, -0.965925753))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.99000001, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.518518567, 0.518518686, 0.259259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(3.89389801, -0.00012421608, -0.837946296, 9.47018997e-009, -1.1920929e-007, 1, -1, -8.30279134e-008, 9.47017753e-009, 8.30279134e-008, -1, -1.19209282e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 0.560000002, 0.709999979))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.259259343, 0.259259313, 0.777778149))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-0.000133275986, 3.89334488, -2.17629051, -1, -1.32561297e-006, 8.84132305e-007, -7.05949105e-007, 0.866025686, 0.499999583, -1.42848728e-006, 0.499999583, -0.866025686))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.99000001, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.259259343, 0.259259313, 1.03703749))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-0.000135421753, 4.64661407, 1.34696198, -1, -9.82721986e-007, 1.11105791e-007, -1.47027706e-007, 0.25881955, 0.965925753, -9.7799284e-007, 0.965925753, -0.25881955))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.99000001, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.259259343, 0.259259313, 1.03703749))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(0.000120162964, 4.64661789, 1.346982, 1, 4.00835432e-007, 3.23014717e-007, -2.08264595e-007, -0.258818746, 0.965925992, 4.70779611e-007, -0.965925992, -0.258818746))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.99000001, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.259259343, 0.259259313, 0.777778149))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(0.000119686127, 3.89336014, -2.17628479, 1, 4.28033047e-007, 1.74377874e-007, 2.83498451e-007, -0.866025269, 0.500000298, 3.65032292e-007, -0.500000298, -0.866025269))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.99000001, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.259259343, 0.259259313, 0.518518806))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(0.000119924545, 0.869161129, -4.22298813, 1, 5.51122014e-007, 2.59200249e-007, 5.99428972e-007, -0.965925992, -0.258818775, 1.0772753e-007, 0.258818775, -0.965925992))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.99000001, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.518518567, 1.55555594, 0.259259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(3.2608223, 3.08901405, 0.000119686127, -1.10378075e-007, 0.422619462, 0.90630722, -1.69980208e-009, -0.90630722, 0.422619462, 1, 4.51073809e-008, 1.00754818e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.0599999987, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.259259343, 0.518518686, 1.03703749))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(0.000120401382, 2.90047836, 4.33810234, 1, 2.27286364e-007, 2.32403181e-007, -3.14910324e-007, 0.499999881, 0.866025448, 8.0634095e-008, -0.866025448, 0.499999881))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 1.01999998, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.259259343, 0.518518686, 1.03703749))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-0.000133275986, 2.90695953, 4.32685566, -0.999999762, -2.11777547e-008, 3.85407475e-008, 4.39660077e-008, -0.499999642, 0.866025031, 9.29916588e-010, 0.866025269, 0.499999523))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 1.01999998, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.259259343, 0.518518686, 1.29629683))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-0.000133275986, 3.70452118, 3.69815493, -1, -1.61937432e-008, 4.06052507e-008, 4.34129106e-008, -0.258818865, 0.965925932, -5.13255038e-009, 0.965925932, 0.258818835))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.99000001, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.259259343, 0.518518686, 1.29629683))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(0.000120639801, 3.70451164, 3.69817638, 1, 8.18811756e-008, 2.70399255e-007, -2.82378039e-007, 0.258818924, 0.965925872, 9.10670028e-009, -0.965925872, 0.258818924))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.99000001, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.259259343, 0.518518686, 0.518518686))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-0.000133514404, -3.70451355, -2.7907486, -1, -4.76288342e-009, -2.05528039e-009, 7.52531371e-010, 0.258818656, -0.965925932, 5.13253973e-009, -0.965925932, -0.258818626))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.99000001, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.518518567, 1.55555594, 0.259259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(3.54733849, 2.42216587, 0.000120639801, -1.29213319e-007, 0.258820295, 0.965925574, -2.80968671e-009, -0.965925574, 0.258820295, 1, 3.07290726e-008, 1.25537639e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.0599999987, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.518518567, 1.55555594, 0.259259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(3.14159012, -2.8024168, 0.000133752823, -6.01987367e-008, -0.37460652, 0.927183867, 3.81304055e-008, -0.927183867, -0.37460655, 1, 1.28030564e-008, 7.00991976e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.0599999987, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(1.8148154, 0.518518627, 2.07407475))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-3.81292725, 0.00012421608, 0, 7.26342932e-008, 0, -1, 1, -1.35872824e-008, 7.26342932e-008, -1.35872824e-008, -1, -9.86902651e-016))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.899999976, 1.01999998, 0.899999976))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(1.8148154, 0.518518627, 2.07407475))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-3.81292725, 4.9829483e-005, 0, 7.26342932e-008, 0, -1, 1, -1.35872824e-008, 7.26342932e-008, -1.35872824e-008, -1, -9.86902651e-016))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 0.0599999987, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(1.29629672, 0.259259313, 1.29629672))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(2.87337875, 8.17775726e-005, -4.64633274, 7.26343217e-008, 1.78813934e-007, 1, 1, 1.35872735e-008, -7.26343217e-008, -1.35872877e-008, 1, -1.78813934e-007))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.899999976, 1.01999998, 0.899999976))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(1.29629672, 0.259259313, 1.29629672))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(2.87337875, -0.000175714493, -4.64633274, 7.26343217e-008, 1.78813934e-007, 1, 1, 1.35872735e-008, -7.26343217e-008, -1.35872877e-008, 1, -1.78813934e-007))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 0.100000001, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(1.29629672, 0.259259313, 1.29629672))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-4.59070206, -0.000175237656, -2.20370197, 7.26342932e-008, 0, -1, 1, -1.35872824e-008, 7.26342932e-008, -1.35872824e-008, -1, -9.86902651e-016))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 0.100000001, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(1.29629672, 0.259259313, 1.29629672))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(2.20371246, 8.32080841e-005, 4.59070015, -1.35872718e-008, -1, -1.78813934e-007, 1, -1.35873384e-008, 3.73972171e-007, -3.73972171e-007, -1.78813934e-007, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.899999976, 1.01999998, 0.899999976))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(1.29629672, 0.259259313, 1.29629672))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-4.59070206, -0.000215768814, 2.20371342, 7.26342932e-008, 0, -1, 1, -1.35872824e-008, 7.26342932e-008, -1.35872824e-008, -1, -9.86902651e-016))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 0.100000001, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(1.29629672, 0.259259313, 1.29629672))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-4.59070206, 8.22544098e-005, -2.20370197, 7.26342932e-008, 0, -1, 1, -1.35872824e-008, 7.26342932e-008, -1.35872824e-008, -1, -9.86902651e-016))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.899999976, 1.01999998, 0.899999976))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(1.29629672, 0.259259313, 1.29629672))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(2.87590027, -9.20295715e-005, -4.53397942, -7.26343217e-008, -1.78813963e-007, 1, -1, -5.96046519e-008, -7.26343359e-008, 5.96046661e-008, -1, -1.78813977e-007))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 0.100000001, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(1.29629672, 0.259259313, 1.29629672))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(2.87590027, 0.000163555145, -4.53397942, -7.26343217e-008, -1.78813963e-007, 1, -1, -5.96046519e-008, -7.26343359e-008, 5.96046661e-008, -1, -1.78813977e-007))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.899999976, 1.01999998, 0.899999976))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.259259343, 0.77777797, 2.33333421))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(8.01086426e-005, -5.50149727, 1.24056816, -1, -1.92401131e-007, -4.53303073e-007, 6.00274603e-008, 0.866025209, -0.500000358, 4.88772514e-007, -0.500000358, -0.866025209))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.259259343, 0.77777797, 1.03703737))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(0.000164270401, -0.294586182, 6.34798241, -1, -2.81808241e-007, -1.07155677e-006, 1.06889968e-006, -0.499999523, -0.866025686, -2.91724689e-007, -0.866025686, 0.499999523))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.39999997615814,tclr,"Part",Vector3.new(0.259259343, 0.77777797, 2.33333421))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-4.95910645e-005, -5.39571381, 1.16452789, -1, -1.92401131e-007, -4.53303073e-007, 6.00274603e-008, 0.866025209, -0.500000358, 4.88772514e-007, -0.500000358, -0.866025209))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.259259343, 0.77777797, 2.33333421))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(8.01086426e-005, -5.51445961, 1.21811485, -1, -1.92401131e-007, -4.53303073e-007, 6.00274603e-008, 0.866025209, -0.500000358, 4.88772514e-007, -0.500000358, -0.866025209))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.259259343, 0.77777797, 1.81481552))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(0.000111818314, -4.89693832, 3.89433098, -1, -6.54337043e-007, -1.05499896e-006, 5.86486806e-007, 0.500000536, -0.866025209, 1.09417238e-006, -0.866025209, -0.500000536))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.259259343, 0.77777797, 2.59259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(5.14984131e-005, -4.77596188, -1.17524147, -1, -1.35872629e-008, 7.26342932e-008, -1.35872771e-008, 1, -1.78813934e-007, -7.26342932e-008, -1.78813934e-007, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.39999997615814,tclr,"Part",Vector3.new(0.259259343, 0.77777797, 1.81481552))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-2.16960907e-005, -4.82089996, 3.78854847, -1, -6.54337043e-007, -1.05499896e-006, 5.86486806e-007, 0.500000536, -0.866025209, 1.09417238e-006, -0.866025209, -0.500000536))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.39999997615814,tclr,"Part",Vector3.new(0.259259343, 0.77777797, 1.03703737))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(3.6239624e-005, -0.171104431, 6.27668953, -1, -2.81808241e-007, -1.07155677e-006, 1.06889968e-006, -0.499999523, -0.866025686, -2.91724689e-007, -0.866025686, 0.499999523))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.259259343, 0.77777797, 1.55555618))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(0.000125408173, -2.85110855, 5.70879173, -1, -7.88447323e-007, -1.0545923e-006, 1.05459173e-006, 7.30156785e-007, -1, 7.88448119e-007, -1, -7.30155932e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.259259343, 0.77777797, 1.81481552))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(0.000112056732, -4.87447739, 3.90729904, -1, -6.54337043e-007, -1.05499896e-006, 5.86486806e-007, 0.500000536, -0.866025209, 1.09417238e-006, -0.866025209, -0.500000536))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.39999997615814,tclr,"Part",Vector3.new(0.259259343, 0.77777797, 1.55555618))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(1.47819519e-005, -2.86407852, 5.57916451, -1, -7.88447323e-007, -1.0545923e-006, 1.05459173e-006, 7.30156785e-007, -1, 7.88448119e-007, -1, -7.30155932e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.39999997615814,tclr,"Part",Vector3.new(0.259259343, 0.77777797, 2.59259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-8.20159912e-005, -4.64633274, -1.18819618, -1, -1.35872629e-008, 7.26342932e-008, -1.35872771e-008, 1, -1.78813934e-007, -7.26342932e-008, -1.78813934e-007, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.259259343, 0.77777797, 2.59259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(5.14984131e-005, -4.77596188, -1.20115852, -1, -1.35872629e-008, 7.26342932e-008, -1.35872771e-008, 1, -1.78813934e-007, -7.26342932e-008, -1.78813934e-007, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.259259343, 0.77777797, 1.03703737))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(0.000163793564, -0.272134781, 6.33502007, -1, -2.81808241e-007, -1.07155677e-006, 1.06889968e-006, -0.499999523, -0.866025686, -2.91724689e-007, -0.866025686, 0.499999523))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.259259343, 0.77777797, 1.55555618))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(0.000125408173, -2.87703323, 5.70879173, -1, -7.88447323e-007, -1.0545923e-006, 1.05459173e-006, 7.30156785e-007, -1, 7.88448119e-007, -1, -7.30155932e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.259259343, 0.77777797, 2.59259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(5.53131104e-005, -2.33333254, 6.26292419, -1, 1.35872806e-008, -7.26343004e-008, -1.35872806e-008, -1, 0, -7.26343004e-008, 9.86902651e-016, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.39999997615814,tclr,"Part",Vector3.new(0.259259343, 0.77777797, 1.55555618))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(2.07424164e-005, 4.60000801, 3.13654184, -1, 7.88447494e-007, 1.05459264e-006, 1.05459196e-006, -8.34465027e-007, 1, 7.88448347e-007, 1, 8.34464174e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.259259343, 0.77777797, 2.59259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-3.81469727e-005, -2.33333683, 6.26292419, 1, -1.35872806e-008, 7.26343004e-008, 1.35872806e-008, 1, 0, -7.26343004e-008, 9.86902651e-016, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.259259343, 0.77777797, 2.59259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-5.91278076e-005, 0.345923424, 6.61297035, 1, -1.35872806e-008, 7.26343004e-008, -2.45502303e-008, 0.866025329, 0.500000119, -6.96967817e-008, -0.500000119, 0.866025329))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.39999997615814,tclr,"Part",Vector3.new(0.259259343, 0.77777797, 2.59259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(6.67572021e-005, 0.451700211, 6.53692818, 1, -1.35872806e-008, 7.26343004e-008, -2.45502303e-008, 0.866025329, 0.500000119, -6.96967817e-008, -0.500000119, 0.866025329))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.259259343, 0.77777797, 2.33333421))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(8.39233398e-005, 0.345918655, 6.48334122, -1, 1.92401188e-007, 4.53303187e-007, 6.00273324e-008, -0.866025329, 0.500000119, 4.88772628e-007, 0.500000119, 0.866025329))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.39999997615814,tclr,"Part",Vector3.new(0.259259343, 0.77777797, 1.55555618))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-7.15255737e-007, 4.60000992, 3.1365478, 1, -1.92401188e-007, 2.57636145e-007, -2.57636145e-007, -5.96046377e-008, 1, -1.92401174e-007, -1, -5.96046874e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.259259343, 0.77777797, 1.55555618))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-0.000117063522, 4.61297989, 3.2661674, 1, -1.92401188e-007, 2.57636145e-007, -2.57636145e-007, -5.96046377e-008, 1, -1.92401174e-007, -1, -5.96046874e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.259259343, 0.77777797, 1.55555618))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-0.000117063522, 4.58705902, 3.2661674, 1, -1.92401188e-007, 2.57636145e-007, -2.57636145e-007, -5.96046377e-008, 1, -1.92401174e-007, -1, -5.96046874e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.259259343, 0.77777797, 1.03703737))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-0.000145196915, 4.970644, 0.487595558, 1, -5.64930247e-007, 1.63133308e-007, -4.23742733e-007, -0.50000006, 0.866025448, -4.07677305e-007, -0.866025448, -0.50000006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.259259343, 0.77777797, 2.33333421))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(8.39233398e-005, 0.332958221, 6.46089363, -1, 1.92401188e-007, 4.53303187e-007, 6.00273324e-008, -0.866025329, 0.500000119, 4.88772628e-007, 0.500000119, 0.866025329))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.259259343, 0.77777797, 1.03703737))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(0.000169277191, 4.97064209, 0.487604141, -1, 2.81808099e-007, 1.07155711e-006, 1.06889991e-006, 0.499999464, 0.866025746, -2.91724916e-007, 0.866025746, -0.499999464))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.259259343, 0.77777797, 1.55555618))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(0.000131368637, 4.61297798, 3.26617432, -1, 7.88447494e-007, 1.05459264e-006, 1.05459196e-006, -8.34465027e-007, 1, 7.88448347e-007, 1, 8.34464174e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.39999997615814,tclr,"Part",Vector3.new(0.259259343, 0.77777797, 1.03703737))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-2.50339508e-005, 5.07168198, 0.429261208, 1, -5.64930247e-007, 1.63133308e-007, -4.23742733e-007, -0.50000006, 0.866025448, -4.07677305e-007, -0.866025448, -0.50000006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.259259343, 0.77777797, 2.59259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-5.91278076e-005, 0.332961082, 6.59052086, 1, -1.35872806e-008, 7.26343004e-008, -2.45502303e-008, 0.866025329, 0.500000119, -6.96967817e-008, -0.500000119, 0.866025329))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.39999997615814,tclr,"Part",Vector3.new(0.259259343, 0.77777797, 2.33333421))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-4.38690186e-005, 0.451704025, 6.40730095, -1, 1.92401188e-007, 4.53303187e-007, 6.00273324e-008, -0.866025329, 0.500000119, 4.88772628e-007, 0.500000119, 0.866025329))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.259259343, 0.77777797, 1.03703737))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(0.000169277191, 4.94818306, 0.500570297, -1, 2.81808099e-007, 1.07155711e-006, 1.06889991e-006, 0.499999464, 0.866025746, -2.91724916e-007, 0.866025746, -0.499999464))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.259259343, 0.77777797, 1.81481552))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(0.00012254715, 2.81091881, 5.52395439, -1, 6.54337214e-007, 1.0549993e-006, 5.86486863e-007, -0.500000596, 0.866025031, 1.09417272e-006, 0.866025031, 0.500000596))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.39999997615814,tclr,"Part",Vector3.new(0.259259343, 0.77777797, 1.81481552))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-1.47819519e-005, 2.86450768, 5.40520668, -1, 6.54337214e-007, 1.0549993e-006, 5.86486863e-007, -0.500000596, 0.866025031, 1.09417272e-006, 0.866025031, 0.500000596))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.39999997615814,tclr,"Part",Vector3.new(0.259259343, 0.77777797, 1.03703737))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(3.95774841e-005, 5.07167244, 0.429275513, -1, 2.81808099e-007, 1.07155711e-006, 1.06889991e-006, 0.499999464, 0.866025746, -2.91724916e-007, 0.866025746, -0.499999464))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.39999997615814,tclr,"Part",Vector3.new(0.259259343, 0.77777797, 1.81481552))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(3.81469727e-005, 2.86450768, 5.4052124, 1, -3.41412829e-007, 2.95972967e-007, -8.56137845e-008, 0.499999881, 0.866025567, -4.43658678e-007, -0.866025567, 0.499999881))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.259259343, 0.77777797, 2.59259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(5.53131104e-005, -2.33333254, 6.28885269, -1, 1.35872806e-008, -7.26343004e-008, -1.35872806e-008, -1, 0, -7.26343004e-008, 9.86902651e-016, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.39999997615814,tclr,"Part",Vector3.new(0.259259343, 0.77777797, 2.59259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-8.20159912e-005, -2.20370197, 6.27588654, -1, 1.35872806e-008, -7.26343004e-008, -1.35872806e-008, -1, 0, -7.26343004e-008, 9.86902651e-016, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.259259343, 0.77777797, 1.81481552))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-8.74996185e-005, 2.81091881, 5.52396393, 1, -3.41412829e-007, 2.95972967e-007, -8.56137845e-008, 0.499999881, 0.866025567, -4.43658678e-007, -0.866025567, 0.499999881))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.259259343, 0.77777797, 1.03703737))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-0.000145196915, 4.94819832, 0.500566483, 1, -5.64930247e-007, 1.63133308e-007, -4.23742733e-007, -0.50000006, 0.866025448, -4.07677305e-007, -0.866025448, -0.50000006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.259259343, 0.77777797, 2.59259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-3.81469727e-005, -2.33333683, 6.28885269, 1, -1.35872806e-008, 7.26343004e-008, 1.35872806e-008, 1, 0, -7.26343004e-008, 9.86902651e-016, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.259259343, 0.77777797, 1.81481552))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-8.74996185e-005, 2.78847122, 5.51100349, 1, -3.41412829e-007, 2.95972967e-007, -8.56137845e-008, 0.499999881, 0.866025567, -4.43658678e-007, -0.866025567, 0.499999881))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.259259343, 0.77777797, 1.81481552))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(0.00012254715, 2.78846169, 5.51098824, -1, 6.54337214e-007, 1.0549993e-006, 5.86486863e-007, -0.500000596, 0.866025031, 1.09417272e-006, 0.866025031, 0.500000596))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.259259343, 0.77777797, 1.55555618))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(0.000131368637, 4.58704567, 3.26617432, -1, 7.88447494e-007, 1.05459264e-006, 1.05459196e-006, -8.34465027e-007, 1, 7.88448347e-007, 1, 8.34464174e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.39999997615814,tclr,"Part",Vector3.new(0.259259343, 0.77777797, 2.59259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(9.15527344e-005, -2.20371342, 6.27588654, 1, -1.35872806e-008, 7.26343004e-008, 1.35872806e-008, 1, 0, -7.26343004e-008, 9.86902651e-016, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.39999997615814,tclr,"Part",Vector3.new(0.259259343, 0.77777797, 1.55555618))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-6.72340393e-005, -2.86659622, 5.46681213, 1, 8.19563866e-007, -1.05459219e-006, -1.05459162e-006, -7.30156785e-007, -1, -8.19564661e-007, 1, -7.30155932e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.259259343, 0.77777797, 1.55555618))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(5.12599945e-005, -2.87955475, 5.59644508, 1, 8.19563866e-007, -1.05459219e-006, -1.05459162e-006, -7.30156785e-007, -1, -8.19564661e-007, 1, -7.30155932e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.259259343, 0.77777797, 2.33333421))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(2.38418579e-007, -5.41842747, 1.15975761, 1, 2.08616257e-007, -4.53303073e-007, -4.59847378e-008, -0.866025269, -0.500000358, -4.96880091e-007, 0.500000358, -0.866025269))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.39999997615814,tclr,"Part",Vector3.new(0.259259343, 0.77777797, 2.59259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-0.000163793564, -4.53397942, -1.19071579, 1, 5.96046519e-008, 7.26342861e-008, 5.96046661e-008, -1, -1.7881392e-007, 7.2634279e-008, 1.7881392e-007, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.259259343, 0.77777797, 1.81481552))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(2.76565552e-005, -4.84293938, 3.79575825, 1, 6.40749931e-007, -1.05499896e-006, -5.93280276e-007, -0.500000477, -0.86602515, -1.08240556e-006, 0.866025209, -0.500000477))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.259259343, 0.77777797, 1.55555618))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(5.12599945e-005, -2.85363007, 5.59644508, 1, 8.19563866e-007, -1.05459219e-006, -1.05459162e-006, -7.30156785e-007, -1, -8.19564661e-007, 1, -7.30155932e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.259259343, 0.77777797, 2.59259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-2.64644623e-005, -4.66361141, -1.20367813, 1, 5.96046519e-008, 7.26342861e-008, 5.96046661e-008, -1, -1.7881392e-007, 7.2634279e-008, 1.7881392e-007, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.39999997615814,tclr,"Part",Vector3.new(0.259259343, 0.77777797, 1.03703737))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-3.60012054e-005, -0.229459763, 6.18065071, 1, 3.27825546e-007, -1.07155665e-006, -1.09190842e-006, 0.499999553, -0.866025746, 2.51872478e-007, 0.866025746, 0.499999553))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.259259343, 0.77777797, 1.81481552))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(2.78949738e-005, -4.82047844, 3.80872631, 1, 6.40749931e-007, -1.05499896e-006, -5.93280276e-007, -0.500000477, -0.86602515, -1.08240556e-006, 0.866025209, -0.500000477))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.39999997615814,tclr,"Part",Vector3.new(0.259259343, 0.77777797, 2.33333421))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-0.000123739243, -5.29968166, 1.10616493, 1, 2.08616257e-007, -4.53303073e-007, -4.59847378e-008, -0.866025269, -0.500000358, -4.96880091e-007, 0.500000358, -0.866025269))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.259259343, 0.77777797, 2.59259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-2.64644623e-005, -4.66361141, -1.17776489, 1, 5.96046519e-008, 7.26342861e-008, 5.96046661e-008, -1, -1.7881392e-007, 7.2634279e-008, 1.7881392e-007, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.259259343, 0.77777797, 2.33333421))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(2.38418579e-007, -5.40546131, 1.18221474, 1, 2.08616257e-007, -4.53303073e-007, -4.59847378e-008, -0.866025269, -0.500000358, -4.96880091e-007, 0.500000358, -0.866025269))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.259259343, 0.77777797, 1.03703737))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(8.96453857e-005, -0.330493927, 6.23898315, 1, 3.27825546e-007, -1.07155665e-006, -1.09190842e-006, 0.499999553, -0.866025746, 2.51872478e-007, 0.866025746, 0.499999553))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.259259343, 0.77777797, 1.03703737))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(8.96453857e-005, -0.352949142, 6.2519474, 1, 3.27825546e-007, -1.07155665e-006, -1.09190842e-006, 0.499999553, -0.866025746, 2.51872478e-007, 0.866025746, 0.499999553))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.39999997615814,tclr,"Part",Vector3.new(0.259259343, 0.77777797, 1.81481552))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-9.25064087e-005, -4.7668972, 3.68998146, 1, 6.40749931e-007, -1.05499896e-006, -5.93280276e-007, -0.500000477, -0.86602515, -1.08240556e-006, 0.866025209, -0.500000477))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.8148154, 0.518518627, 2.07407475))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-3.81292725, 0.000133752823, 0, 7.26342932e-008, 0, -1, 1, -1.35872824e-008, 7.26342932e-008, -1.35872824e-008, -1, -9.86902651e-016))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1.00999999, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,1,"Really black","Part",Vector3.new(0.259259343, 0.259259313, 0.259259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-1.1920929e-007, -0.129768372, -3.81292725, -9.78950787e-009, -1, -2.98023224e-008, -1, 9.78950787e-009, 4.63133887e-009, -4.63133842e-009, 2.98023224e-008, -1))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=6547801",Vector3.new(0, 0, 0),Vector3.new(0.0518518686, 0.00129629672, 0.0518518686))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,1,"Really black","Part",Vector3.new(0.259259343, 0.259259313, 0.259259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-1.1920929e-007, -0.129768372, -3.81292725, -9.78950787e-009, -1, -2.98023224e-008, -1, 9.78950787e-009, 4.63133887e-009, -4.63133842e-009, 2.98023224e-008, -1))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=6547801",Vector3.new(0, 0, 0),Vector3.new(0.0518518686, 0.00129629672, 0.0518518686))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,1,"Really black","Part",Vector3.new(0.259259343, 0.259259313, 0.259259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(3.75984001, 0.000175714493, -3.91405869, -1.05164366e-008, -0.968119502, -0.250488758, -1, 9.91058347e-009, 3.68003583e-009, -1.08022657e-009, 0.250488758, -0.968119502))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=6547801",Vector3.new(0, 0, 0),Vector3.new(0.0518518686, 0.00129629672, 0.0518518686))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,1,"Really black","Part",Vector3.new(0.259259343, 0.259259313, 0.259259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(3.65045071, 9.1791153e-005, -3.88835716, -7.4505806e-008, 0.968119502, -0.250488728, 1, 7.40473354e-008, -1.12545493e-008, 7.65227881e-009, -0.250488728, -0.968119562))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=6547801",Vector3.new(0, 0, 0),Vector3.new(0.0518518686, 0.00129629672, 0.0518518686))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.259259343, 0.77777797, 1.03703737))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(0.000163793564, -0.283361435, 6.34150124, -1, -2.81808241e-007, -1.07155677e-006, 1.06889968e-006, -0.499999523, -0.866025686, -2.91724689e-007, -0.866025686, 0.499999523))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.699999988, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.259259343, 0.77777797, 2.33333421))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(8.01086426e-005, -5.50797844, 1.22934341, -1, -1.92401131e-007, -4.53303073e-007, 6.00274603e-008, 0.866025209, -0.500000358, 4.88772514e-007, -0.500000358, -0.866025209))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.699999988, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.259259343, 0.77777797, 1.55555618))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(0.000125408173, -2.86408234, 5.70879555, -1, -7.88447323e-007, -1.0545923e-006, 1.05459173e-006, 7.30156785e-007, -1, 7.88448119e-007, -1, -7.30155932e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.699999988, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.259259343, 0.77777797, 2.59259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(5.14984131e-005, -4.77596188, -1.18818855, -1, -1.35872629e-008, 7.26342932e-008, -1.35872771e-008, 1, -1.78813934e-007, -7.26342932e-008, -1.78813934e-007, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.699999988, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.259259343, 0.77777797, 1.81481552))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(0.000111818314, -4.88570976, 3.90081406, -1, -6.54337043e-007, -1.05499896e-006, 5.86486806e-007, 0.500000536, -0.866025209, 1.09417238e-006, -0.866025209, -0.500000536))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.699999988, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.259259343, 0.77777797, 1.81481552))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-8.74996185e-005, 2.79969025, 5.51748085, 1, -3.41412829e-007, 2.95972967e-007, -8.56137845e-008, 0.499999881, 0.866025567, -4.43658678e-007, -0.866025567, 0.499999881))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.699999988, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.259259343, 0.77777797, 2.59259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(5.53131104e-005, -2.33333254, 6.27589035, -1, 1.35872806e-008, -7.26343004e-008, -1.35872806e-008, -1, 0, -7.26343004e-008, 9.86902651e-016, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.699999988, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.259259343, 0.77777797, 1.03703737))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-0.000145196915, 4.95941925, 0.494076729, 1, -5.64930247e-007, 1.63133308e-007, -4.23742733e-007, -0.50000006, 0.866025448, -4.07677305e-007, -0.866025448, -0.50000006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.699999988, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.259259343, 0.77777797, 1.81481552))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(0.00012254715, 2.79969025, 5.51747131, -1, 6.54337214e-007, 1.0549993e-006, 5.86486863e-007, -0.500000596, 0.866025031, 1.09417272e-006, 0.866025031, 0.500000596))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.699999988, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.259259343, 0.77777797, 1.03703737))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(0.000169277191, 4.95941162, 0.494087219, -1, 2.81808099e-007, 1.07155711e-006, 1.06889991e-006, 0.499999464, 0.866025746, -2.91724916e-007, 0.866025746, -0.499999464))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.699999988, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.259259343, 0.77777797, 2.59259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-3.81469727e-005, -2.33333683, 6.27589035, 1, -1.35872806e-008, 7.26343004e-008, 1.35872806e-008, 1, 0, -7.26343004e-008, 9.86902651e-016, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.699999988, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.259259343, 0.77777797, 2.33333421))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(8.39233398e-005, 0.339439392, 6.47211838, -1, 1.92401188e-007, 4.53303187e-007, 6.00273324e-008, -0.866025329, 0.500000119, 4.88772628e-007, 0.500000119, 0.866025329))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.699999988, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.259259343, 0.77777797, 2.59259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-5.91278076e-005, 0.339440346, 6.6017437, 1, -1.35872806e-008, 7.26343004e-008, -2.45502303e-008, 0.866025329, 0.500000119, -6.96967817e-008, -0.500000119, 0.866025329))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.699999988, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.259259343, 0.77777797, 1.55555618))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(0.000131368637, 4.60000801, 3.26617432, -1, 7.88447494e-007, 1.05459264e-006, 1.05459196e-006, -8.34465027e-007, 1, 7.88448347e-007, 1, 8.34464174e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.699999988, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.259259343, 0.77777797, 1.55555618))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-0.000117063522, 4.60001373, 3.2661674, 1, -1.92401188e-007, 2.57636145e-007, -2.57636145e-007, -5.96046377e-008, 1, -1.92401174e-007, -1, -5.96046874e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.699999988, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.259259343, 0.77777797, 1.03703737))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(8.96453857e-005, -0.341720581, 6.24546432, 1, 3.27825546e-007, -1.07155665e-006, -1.09190842e-006, 0.499999553, -0.866025746, 2.51872478e-007, 0.866025746, 0.499999553))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.699999988, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.259259343, 0.77777797, 1.55555618))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(5.12599945e-005, -2.86659622, 5.59644508, 1, 8.19563866e-007, -1.05459219e-006, -1.05459162e-006, -7.30156785e-007, -1, -8.19564661e-007, 1, -7.30155932e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.699999988, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.259259343, 0.77777797, 2.59259343))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(-2.64644623e-005, -4.66361141, -1.19071198, 1, 5.96046519e-008, 7.26342861e-008, 5.96046661e-008, -1, -1.7881392e-007, 7.2634279e-008, 1.7881392e-007, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.699999988, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.259259343, 0.77777797, 1.81481552))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(2.76565552e-005, -4.831707, 3.80224323, 1, 6.40749931e-007, -1.05499896e-006, -5.93280276e-007, -0.500000477, -0.86602515, -1.08240556e-006, 0.866025209, -0.500000477))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.699999988, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.259259343, 0.77777797, 2.33333421))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 3.0054359e-008, 0.707106888, -0.707106769, -6.53304255e-008, 0.707106769, 0.707106888, 1, 2.49439367e-008, 6.74472247e-008),CFrame.new(2.38418579e-007, -5.4119463, 1.17098236, 1, 2.08616257e-007, -4.53303073e-007, -4.59847378e-008, -0.866025269, -0.500000358, -4.96880091e-007, 0.500000358, -0.866025269))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.699999988, 0.600000024, 1))

function MagniDamage(Hit,Part,magni,mindam,maxdam,knock,Type)
for _,c in pairs(workspace:children()) do
local hum=c:findFirstChild("Humanoid")
if hum~=nil then
local head=c:findFirstChild("Torso")
if head~=nil then
local targ=head.Position-Part.Position
local mag=targ.magnitude
if mag<=magni and c.Name~=Player.Name then 
Damagefunc(Hit,head,mindam,maxdam,knock,Type,RootPart,.2,1,3)
end
end
end
end
end

function magicring(brickcolor,cframe,x1,y1,z1,x3,y3,z3)
        local prt=part(3,workspace,"SmoothPlastic",0,0,brickcolor,"Effect",Vector3.new(0.5,0.5,0.5))
        prt.Anchored=true
        prt.CFrame=cframe
        prt.Touched:connect(function(hit) end)
        local msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=3270017",Vector3.new(0,0,0),Vector3.new(x1,y1,z1))
local ref = Instance.new("Part",workspace)
ref.Anchored = true
ref.Size = Vector3.new(5,5,5)
ref.CFrame = Torso.CFrame*CFrame.new(-5,0,0)
ref.CanCollide = false
ref.Transparency = 1
MagniDamage(prt,ref,10,5,10,0,"Knockdown")
        coroutine.resume(coroutine.create(function(Part,Mesh) 
                for i=0,1,0.03 do
                        wait()
                        Part.CFrame=Part.CFrame
                        Part.Transparency=i
                        Mesh.Scale=Mesh.Scale+Vector3.new(x3,y3,z3)
                end
                Part.Parent=nil
                ref.Parent = nil
        end),prt,msh)
end

function attackone()
attack = true
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(-70)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(70)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-40), math.rad(0), math.rad(10)),.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-50)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(-10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-60),math.rad(-5)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
end
local con=Hitbox.Touched:connect(function(hit) Damagefunc(Hitbox,hit,10000,120000,math.random(5,10),"Normal",RootPart,.2,1) end) 
so("http://roblox.com/asset/?id=199150686",Hitbox,1,1) 
for i = 0,1,0.1 do
swait()
local blcf = Hitbox.CFrame*CFrame.new(0,.5,0)
if scfr and (Hitbox.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(90)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(-80)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(-90), math.rad(-130)),.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-20)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(-10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-60),math.rad(-5)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,-1,-1)*angles(math.rad(-90),math.rad(0),math.rad(0)),.3)
end
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(70)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(-70)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(90), math.rad(50)),.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-20)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(-10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-60),math.rad(-5)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
end
so("http://roblox.com/asset/?id=199146359",Hitbox,1,1) 
for i = 0,1,0.1 do
swait()
local blcf = Hitbox.CFrame*CFrame.new(0,.5,0)
if scfr and (Hitbox.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(-50)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(50)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(-10), math.rad(130)),.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-20)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(-10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-60),math.rad(-5)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(-40),math.rad(0),math.rad(0)),.3)
end
attack = false
con:disconnect()
scfr = nil
end

function attacktwo()
attack = true
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(70)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(-70)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(-90), math.rad(-90)),.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-50)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(-10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-60),math.rad(-5)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
end
local con=Hitbox.Touched:connect(function(hit) Damagefunc(Hitbox,hit,10000,120000,math.random(5,10),"Normal",RootPart,.2,1) end) 
so("http://roblox.com/asset/?id=199150686",Hitbox,1,1) 
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(90)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(-80)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(-190), math.rad(-90)),.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-50)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(-10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-60),math.rad(-5)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,-1,-1)*angles(math.rad(-90),math.rad(0),math.rad(0)),.3)
end
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(70)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(-70)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(120), math.rad(90)),.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-50)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(-10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-60),math.rad(-5)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
end
so("http://roblox.com/asset/?id=199150686",Hitbox,1,.9) 
for i = 0,1,0.1 do
swait()
local blcf = Hitbox.CFrame*CFrame.new(0,.5,0)
if scfr and (Hitbox.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(-70)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(70)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(-20), math.rad(90)),.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-50)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(-10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-60),math.rad(-5)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
end
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(150), math.rad(0), math.rad(0)),.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-50)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(-10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-60),math.rad(-5)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
end
so("http://roblox.com/asset/?id=199146359",Hitbox,1,.9)
for i = 0,1,0.1 do
swait()
local blcf = Hitbox.CFrame*CFrame.new(0,.5,0)
if scfr and (Hitbox.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(20)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(-20)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(0)),.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-30)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(-10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-60),math.rad(-5)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
end
attack = false
con:disconnect()
scfr = nil
end

function Spin()
attack=true
local con=Hitbox.Touched:connect(function(hit) Damagefunc(Hitbox,hit,10000,120000,math.random(5,10),"Normal",RootPart,.2,1) end) 
for i=0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(70)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(-70)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(50), math.rad(120)),.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-50)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(-10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-60),math.rad(-5)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
end
Humanoid = game.Players.LocalPlayer.Character.Humanoid
Humanoid.Jump = true
for i=0,1,1 do
so("http://roblox.com/asset/?id=234365573",Torso,1,1)
swait()
for i=0,1,0.1 do
swait()
local blcf = Hitbox.CFrame*CFrame.new(0,.5,0)
if scfr and (Hitbox.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,2)*euler(0,-1.2,6*i),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(-70)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(-10), math.rad(80)),.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-70)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(60),math.rad(-10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-60),math.rad(10)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,-1,-1)*angles(math.rad(-80),math.rad(0),math.rad(0)),.3)
end
end
attack=false
con:disconnect()
scfr = nil
end

function StunTarget()
attack = true
for i = 0,1,0.05 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(-80)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(70)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-40), math.rad(0), math.rad(10)),.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-90)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(-10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-60),math.rad(-5)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
end
so("http://roblox.com/asset/?id=228343249",Torso,1,1) 
for i = 1,2 do
magicring(BrickColor.new(tclr),Torso.CFrame*CFrame.new(-5,0,0)*CFrame.Angles(math.random(-50,50),math.random(-50,50),math.random(-50,50)),1,1,0.1,1,1,0.05)
magicring(BrickColor.new(tclr),Torso.CFrame*CFrame.new(-5,0,0)*CFrame.Angles(math.random(-50,50),math.random(-50,50),math.random(-50,50)),1,1,0.1,1,1,0.05)
end
attack = false
end

mouse.Button1Down:connect(function()
if attack == false and attacktype == 1 then
attacktype = 2
attackone()
elseif attack == false and attacktype == 2 then
attacktype = 1
attacktwo()
end
end)

mouse.KeyDown:connect(function(k)
k=k:lower()
if attack == false and k == 'q' then
Spin()
elseif attack == false and k == 'e' then
StunTarget()
end
end)


local sine = 0
local change = 1
local val = 0

while true do
	swait()
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
				--Sheath()
			end
		end
		if RootPart.Velocity.y > 1 and hitfloor==nil then 
			if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(0)),.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-20),math.rad(0),math.rad(0)),.2)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(20)),.2)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-20)),.2)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(-20)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(-20)),.2)
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(-20),math.rad(0),math.rad(0)),.2)
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
Anim="Fall"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(0)),.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(20),math.rad(0),math.rad(0)),.2)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(40)),.2)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-40)),.2)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(-20)),.2)
LH.C0=clerp(LH.C0,cf(-1,-.5,-.5)*angles(math.rad(0),math.rad(-90),math.rad(10)),.2)
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(-20),math.rad(0),math.rad(0)),.2)
end
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(-40)),.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(40)),.2)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(10)),.2)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-10)),.2)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(-10)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-60),math.rad(-5)),.2)
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(-5),math.rad(0),math.rad(0)),.2)
end
elseif torvel>2 and hitfloor~=nil then
Anim="Walk"
if attack==false then
change=3
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(10),math.rad(0),math.rad(0)),.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-5),math.rad(0),math.rad(0)),.2)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(10)),.2)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-15)),.2)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(10)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(10)),.2)
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(-10),math.rad(0),math.rad(0)),.2)
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