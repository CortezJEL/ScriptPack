
    																																																																																																																																																																																																																																																																																																																																												
																																																																																																																																																																																																																																																																																--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
pl = "ace28545"
Player = Game:GetService("Players").LocalPlayer
Character = Player.Character
RightArm = Character["Right Arm"]
RightShoulder = Character.Torso["Right Shoulder"] 
LeftArm = Character["Left Arm"]
Torso = Character["Torso"]
LeftLeg = Character["Left Leg"]
RightLeg = Character["Right Leg"]
Head = Character["Head"]
-------------------------------------
Workspace.SergeantSmokey.Head.face.Texture = "http://www.roblox.com/asset/?id=17058440"

function CheckI(Item,Blacklist,Specific)
        for _,v in pairs(Item:children()) do
                if not Specific then
                        if v:IsA(Blacklist) or v.Name:match(Blacklist) then
                                v:Destroy()
                        end
                else
                        if v:IsA(Blacklist) or v.Name == Blacklist then
                                v:Destroy()
                        end
                end
        end
end

CheckI(Character,"Hat")
-------------------------------------

Part13 = Instance.new("Part", Character)
Part13.TopSurface = 0
Part13.BottomSurface = 0
Part13.Transparency = 0
Part13.FormFactor = "Custom"
Part13.Size = Vector3.new(1, 1, 1)
Part13.BrickColor = BrickColor.new("Really black")
Part13.CanCollide = false
Weld13 = Instance.new("Weld", Part13)
Weld13.Part0 = Part13
Weld13.Part1 = Head
Weld13.C0 = CFrame.new(0, -0.8, 0)
SHMesh = Instance.new("SpecialMesh")
SHMesh.Parent = Part13
SHMesh.Scale = Vector3.new(1, 1, 1)
SHMesh.MeshId = "http://www.roblox.com/asset/?id=1028713"
SHMesh.TextureId = "http://www.roblox.com/asset/?id=15726328"

Part135 = Instance.new("Part", Character)
Part135.TopSurface = 0
Part135.BottomSurface = 0
Part135.Transparency = 1
Part135.Reflectance = 0.8
Part135.FormFactor = "Custom"
Part135.Size = Vector3.new(1, 1, 1)
Part135.BrickColor = BrickColor.new("White")
Part135.CanCollide = false
Weld13 = Instance.new("Weld", Part135)
Weld13.Part0 = Part135
Weld13.Part1 = Head
Weld13.C0 = CFrame.new(0, -3, 0)
SHMesh = Instance.new("SpecialMesh")
SHMesh.Parent = Part135
SHMesh.MeshType = "Sphere"
x = Instance.new("PointLight",Part135)
x.Range = 20
x.Enabled = false


Part = Instance.new("Part", Character)
Part.TopSurface = 0
Part.BottomSurface = 0
Part.Transparency = 0
Part.FormFactor = "Custom"
Part.Size = Vector3.new(1, 2, 1)
Part.BrickColor = BrickColor.new("Really black")
Part.CanCollide = false
Workspace.SergeantSmokey["Right Leg"].Transparency = 1
Weld = Instance.new("Weld", Part)
Weld.Part0 = Part
Weld.Part1 = RightLeg
Weld.C0 = CFrame.new(0, 0, 0)

Part2 = Instance.new("Part", Character)
Part2.TopSurface = 0
Part2.BottomSurface = 0
Part2.Transparency = 0
Part2.FormFactor = "Custom"
Part2.Size = Vector3.new(1, 2, 1)
Part2.BrickColor = BrickColor.new("Really black")
Part2.CanCollide = false
Workspace.SergeantSmokey["Left Leg"].Transparency = 1
Weld2 = Instance.new("Weld", Part2)
Weld2.Part0 = Part2
Weld2.Part1 = LeftLeg
Weld2.C0 = CFrame.new(0, 0, 0)

Part7 = Instance.new("Part", Character)
Part7.TopSurface = 0
Part7.BottomSurface = 0
Part7.Transparency = 0
Part7.FormFactor = "Custom"
Part7.Size = Vector3.new(1, 1.7, 1)
Part7.BrickColor = BrickColor.new("White")
Part7.CanCollide = false
Workspace.SergeantSmokey["Right Arm"].Transparency = 1
Weld7 = Instance.new("Weld", Part7)
Weld7.Part0 = Part7
Weld7.Part1 = RightArm
Weld7.C0 = CFrame.new(0, 0.2, 0)

Part45 = Instance.new("Part", Character)
Part45.TopSurface = 0
Part45.BottomSurface = 0
Part45.Transparency = 0
Part45.FormFactor = "Custom"
Part45.Size = Vector3.new(1.1, 1, 1.1)
Part45.BrickColor = BrickColor.new("Really black")
Part45.CanCollide = false
Weld3 = Instance.new("Weld", Part45)
Weld3.Part0 = Part45
Weld3.Part1 = RightArm
Weld3.C0 = CFrame.new(0, -0.5, 0)

Part8 = Instance.new("Part", Character)
Part8.TopSurface = 0
Part8.BottomSurface = 0
Part8.Transparency = 0
Part8.FormFactor = "Custom"
Part8.Size = Vector3.new(1, 1.7, 1)
Part8.BrickColor = BrickColor.new("White")
Part8.CanCollide = false
Workspace.SergeantSmokey["Left Arm"].Transparency = 1
Weld8 = Instance.new("Weld", Part8)
Weld8.Part0 = Part8
Weld8.Part1 = LeftArm
Weld8.C0 = CFrame.new(0, 0.2, 0)

Part45 = Instance.new("Part", Character)
Part45.TopSurface = 0
Part45.BottomSurface = 0
Part45.Transparency = 0
Part45.FormFactor = "Custom"
Part45.Size = Vector3.new(1.1, 1, 1.1)
Part45.BrickColor = BrickColor.new("Really black")
Part45.CanCollide = false
Weld3 = Instance.new("Weld", Part45)
Weld3.Part0 = Part45
Weld3.Part1 = LeftArm
Weld3.C0 = CFrame.new(0, -0.5, 0)

Part13 = Instance.new("Part", Character)
Part13.TopSurface = 0
Part13.BottomSurface = 0
Part13.Transparency = 0
Part13.FormFactor = "Custom"
Part13.Size = Vector3.new(2, 2, 1)
Part13.BrickColor = BrickColor.new("Really black")
Part13.CanCollide = false
Workspace.SergeantSmokey["Torso"].Transparency = 1
Weld13 = Instance.new("Weld", Part13)
Weld13.Part0 = Part13
Weld13.Part1 = Torso
Weld13.C0 = CFrame.new(0, 0, 0)

Part123 = Instance.new("Part", Character)
Part123.TopSurface = 0
Part123.BottomSurface = 0
Part123.Transparency = 0
Part123.FormFactor = "Custom"
Part123.Size = Vector3.new(1, 1, 1)
Part123.BrickColor = BrickColor.new("White")
Part123.CanCollide = false
Weld13 = Instance.new("Weld", Part123)
Weld13.Part0 = Part123
Weld13.Part1 = Torso
Weld13.C0 = CFrame.new(0, 0.5, -0.8)
SHMesh = Instance.new("SpecialMesh")
SHMesh.Parent = Part123
SHMesh.Scale = Vector3.new(1.5, 1.5, 1.5)
SHMesh.MeshId = "http://www.roblox.com/asset/?id=94820260"
SHMesh.TextureId = "http://www.roblox.com/asset/?id=94820166"

sg = Instance.new("ScreenGui")
sg.Parent = game.Players[pl].PlayerGui
button1 = Instance.new("TextButton")
button1.Parent = sg
button1.Text = "Light-On"
button1.Position = UDim2.new(0,0,0.1,0)
button1.Size = UDim2.new(0.1,0,0.1,0)
button1.MouseButton1Click:connect(function()
x.Enabled = true
Part135.Transparency = 0
end)
button2 = Instance.new("TextButton")
button2.Parent = sg
button2.Text = "Light-Off"
button2.Position = UDim2.new(0,0,0.2,0)
button2.Size = UDim2.new(0.1,0,0.1,0)
button2.MouseButton1Click:connect(function()
x.Enabled = false
Part135.Transparency = 1
end)
button3 = Instance.new("TextButton")
button3.Parent = sg
button3.Text = "Slow - 10"
button3.Position = UDim2.new(0,0,0.3,0)
button3.Size = UDim2.new(0.1,0,0.1,0)
button3.MouseButton1Click:connect(function()
Workspace.SergeantSmokey.Humanoid.WalkSpeed = Workspace.SergeantSmokey.Humanoid.WalkSpeed - 10
end)
button4 = Instance.new("TextButton")
button4.Parent = sg
button4.Text = "Fast + 10"
button4.Position = UDim2.new(0,0,0.4,0)
button4.Size = UDim2.new(0.1,0,0.1,0)
button4.MouseButton1Click:connect(function()
Workspace.SergeantSmokey.Humanoid.WalkSpeed = Workspace.SergeantSmokey.Humanoid.WalkSpeed + 10
end)

local h = Instance.new("HopperBin")
h.Name = "Magic"
local p = game.Players:findFirstChild(pl)
if (p==nil) then return end
h.Parent = p.Backpack

function fast1()
Workspace.SergeantSmokey.Humanoid.WalkSpeed = 100
end

function fast2()
Workspace.SergeantSmokey.Humanoid.WalkSpeed = 20
end



function onKey(key, mouse)
    if key then
        local key = key:lower()
        if (key=="q") then
            fast1()
        if (key=="e") then
            fast2()
			end
        end
    end
end
h.Selected:connect(function(mouse)
mouse.KeyDown:connect(function(key) onKey(key, mouse) end)
end)

--[[Soul Staff Made By malfact]]--
 
 
 
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
local player = game.Players.LocalPlayer
local character = player.Character

if (player.Backpack:FindFirstChild("Soul Staff") ~= nil) then
player.Backpack["Soul Staff"].Parent = nil
end
if (character:FindFirstChild("Soul_Staff") ~= nil) then
character.Soul_Staff.Parent = nil
end

local RightShoulder = character.Torso["Right Shoulder"]
local ShoulderWeld = nil
local StaffWeld = nil

local debounce = false
local debounce2 = false

local mode = "hurt"
local orbWeld = {}
local keys = {}

local thrown = false
local hold = false
local holdTime = 0

local tool = Instance.new("HopperBin", player.Backpack)
tool.Name = "Soul Staff"
tool.Parent = player.Backpack
local model = Instance.new("Model",character)
model.Name = "Soul_Staff"

function animateArm(boolean, c0, c1)
if (boolean) then
if (ShoulderWeld == nil) then
ShoulderWeld = weld(character["Torso"],character["Right Arm"],CFrame.new())
end
RightShoulder.Part0 = nil

ShoulderWeld.C0 = c0
ShoulderWeld.C1 = c1
else
RightShoulder.Part0 = character.Torso
if (ShoulderWeld ~= nil) then
ShoulderWeld.Parent = nil
end
ShoulderWeld = nil
end
end

function animateStaff(boolean, c0, c1)
if (boolean) then
StaffWeld.Part0 = character["Right Arm"]
StaffWeld.Part1 = model:FindFirstChild("Handle")
StaffWeld.C0 = c0
StaffWeld.C1 = c1
else
StaffWeld.Part0 = character["Torso"]
StaffWeld.Part1 = model:FindFirstChild("Handle")
StaffWeld.C0 = CFrame.new(0,0,0.5)
StaffWeld.C1 = CFrame.new()*CFrame.Angles(0, 0, math.pi/4)
end
end

function weld(p0, p1, cframe)
local w = Instance.new("ManualWeld", p0) 
w.Part0 = p0
w.Part1 = p1 
w.C0 = cframe
return w
end

function newPart(size, color, parent)
local part = Instance.new("Part")
part.Locked = true
part.FormFactor = 3
part.Size = size
part.BrickColor = color
part.BottomSurface = 0
part.TopSurface = 0
part.Anchored = false
part.CanCollide = false
part.Parent = parent
return part
end

function newCylMesh(parent)
local mesh = Instance.new("CylinderMesh", parent)
return parent
end

function newSphereMesh(parent)
local mesh = Instance.new("SpecialMesh",parent)
mesh.MeshType = 3
return parent
end

function newIdMesh(id, size, parent)
local mesh = Instance.new("SpecialMesh",parent)
mesh.MeshType = 5
mesh.Scale = size
mesh.MeshId = "http://www.roblox.com/Asset/?id="..id
return parent
end

function addSoul(count)
for i = 1, count do
local p = newSphereMesh(newPart(Vector3.new(0.2,0.2,0.2),BrickColor.new(0,0,0),model))
orbWeld[#orbWeld + 1] = weld(model:FindFirstChild("core"),p,CFrame.new(0,0,0))
end
end

function removeSoul(count)
for i = 1, count do
orbWeld[#orbWeld].Part1.Parent = nil
orbWeld[#orbWeld] = nil
end
end

function getRadius(num)
if (num < 16) then
return 1
else
return num/16
end
end

local handle = newCylMesh(newPart(Vector3.new(0.2,6,0.2),BrickColor.new(1,1,1),model))
handle.Name = "Handle"

weld(handle,newSphereMesh(newPart(Vector3.new(0.4,0.4,0.4),BrickColor.new(0,0,0),model)),CFrame.new(0,3,0))
weld(handle,newCylMesh(newPart(Vector3.new(0.25,0.25,0.25),BrickColor.new(0,0,0),model)),CFrame.new(0,2.75,0))
weld(handle,newIdMesh("3270017",Vector3.new(0.25,0.25,0.5),newPart(Vector3.new(0.2,0.2,0.2),BrickColor.new(1,1,1),model)),CFrame.new(0,2.85,0)*CFrame.Angles(math.pi/2,0,0))
weld(handle,newIdMesh("3270017",Vector3.new(0.22,0.22,0.5),newPart(Vector3.new(0.2,0.2,0.2),BrickColor.new(1,1,1),model)),CFrame.new(0,2.6,0)*CFrame.Angles(math.pi/2,0,0))
weld(handle,newSphereMesh(newPart(Vector3.new(0.4,0.4,0.4),BrickColor.new(0,0,0),model)),CFrame.new(0,-3,0))
weld(handle,newCylMesh(newPart(Vector3.new(0.25,0.25,0.25),BrickColor.new(0,0,0),model)),CFrame.new(0,-2.75,0))
weld(handle,newIdMesh("3270017",Vector3.new(0.25,0.25,0.5),newPart(Vector3.new(0.2,0.2,0.2),BrickColor.new(1,1,1),model)),CFrame.new(0,-2.85,0)*CFrame.Angles(math.pi/2,0,0))
weld(handle,newIdMesh("3270017",Vector3.new(0.22,0.22,0.5),newPart(Vector3.new(0.2,0.2,0.2),BrickColor.new(1,1,1),model)),CFrame.new(0,-2.6,0)*CFrame.Angles(math.pi/2,0,0))
weld(handle,newIdMesh("3270017",Vector3.new(0.25,0.25,0.5),newPart(Vector3.new(0.2,0.2,0.2),BrickColor.new(1,1,1),model)),CFrame.new(0,0.5,0)*CFrame.Angles(math.pi/2,0,0))
weld(handle,newIdMesh("3270017",Vector3.new(0.25,0.25,0.5),newPart(Vector3.new(0.2,0.2,0.2),BrickColor.new(1,1,1),model)),CFrame.new(0,-0.5,0)*CFrame.Angles(math.pi/2,0,0))
weld(handle,newIdMesh("3270017",Vector3.new(0.21,0.21,1),newPart(Vector3.new(0.2,0.2,0.2),BrickColor.new(0,0,0),model)),CFrame.new(0,-0.4,0)*CFrame.Angles(math.pi/2,0,0))
weld(handle,newIdMesh("3270017",Vector3.new(0.21,0.21,1),newPart(Vector3.new(0.2,0.2,0.2),BrickColor.new(0,0,0),model)),CFrame.new(0,-0.3,0)*CFrame.Angles(math.pi/2,0,0))
weld(handle,newIdMesh("3270017",Vector3.new(0.21,0.21,1),newPart(Vector3.new(0.2,0.2,0.2),BrickColor.new(0,0,0),model)),CFrame.new(0,-0.2,0)*CFrame.Angles(math.pi/2,0,0))
weld(handle,newIdMesh("3270017",Vector3.new(0.21,0.21,1),newPart(Vector3.new(0.2,0.2,0.2),BrickColor.new(0,0,0),model)),CFrame.new(0,-0.1,0)*CFrame.Angles(math.pi/2,0,0))
weld(handle,newIdMesh("3270017",Vector3.new(0.21,0.21,1),newPart(Vector3.new(0.2,0.2,0.2),BrickColor.new(0,0,0),model)),CFrame.new(0,0.0,0)*CFrame.Angles(math.pi/2,0,0))
weld(handle,newIdMesh("3270017",Vector3.new(0.21,0.21,1),newPart(Vector3.new(0.2,0.2,0.2),BrickColor.new(0,0,0),model)),CFrame.new(0,0.1,0)*CFrame.Angles(math.pi/2,0,0))
weld(handle,newIdMesh("3270017",Vector3.new(0.21,0.21,1),newPart(Vector3.new(0.2,0.2,0.2),BrickColor.new(0,0,0),model)),CFrame.new(0,0.2,0)*CFrame.Angles(math.pi/2,0,0))
weld(handle,newIdMesh("3270017",Vector3.new(0.21,0.21,1),newPart(Vector3.new(0.2,0.2,0.2),BrickColor.new(0,0,0),model)),CFrame.new(0,0.3,0)*CFrame.Angles(math.pi/2,0,0))
weld(handle,newIdMesh("3270017",Vector3.new(0.21,0.21,1),newPart(Vector3.new(0.2,0.2,0.2),BrickColor.new(0,0,0),model)),CFrame.new(0,0.4,0)*CFrame.Angles(math.pi/2,0,0))

local core = newPart(Vector3.new(0.2,0.2,0.2),BrickColor.new(0,0,0),model)
core.Name = "core"
core.Reflectance = 0.5
core.Transparency = 0.25
local coreWeld = weld(handle,newIdMesh("9756362",Vector3.new(0.5,0.5,0.5),core),CFrame.new(0,3.75,0))
Instance.new("PointLight",core)

addSoul(8)

StaffWeld = weld(character["Torso"],handle,CFrame.new())
animateArm(false, nil, nil)
animateStaff(false, nil, nil)

function damage(char)
if (char == nil) then return end
if (char:FindFirstChild("Humanoid") ~= nil) then
if (not char.Humanoid:isA("Humanoid")) then
char.Parent = nil
return
end
local humanoid = char.Humanoid
if (humanoid.Health > 0 and humanoid.Health - (#orbWeld+1) <= 0) then
--addSoul(1)
end
if (char:FindFirstChild("Bubble") ~= nil) then
coroutine.resume(coroutine.create(function()
if (humanoid ~= nil) then
humanoid.WalkSpeed = -16
end
wait(5)
if (humanoid ~= nil) then
humanoid.WalkSpeed = 16
end
end))
humanoid.PlatformStand = false
char.Bubble.Parent = nil
--addSoul(1)
end
humanoid.Health = humanoid.Health - (#orbWeld+1)
end
end

function damageDistance(char, distance)
if (char == nil) then return end
if (char:FindFirstChild("Torso") ~= nil) then
local torso = char.Torso
if ((core.Position - torso.Position).magnitude <= distance) then
damage(char)
end
end
end

function beam(start, position)
coroutine.resume(coroutine.create(function()
if (position == nil or start == nil) then return end
local distance = (start-position).magnitude
local p = newPart(Vector3.new(0.2,0.2,distance),BrickColor.new(0,0,0),model)
p.Name = "beam012"
p.Anchored = true
p.Transparency = 0.25
p.CFrame = CFrame.new((start + position)/2,start) 
for i = 0, 0.75, 0.1 do
p.Transparency = 0.25+i
wait(0.01)
end
p.Parent = nil
end))
end

tool.Selected:connect(function(mouse)
if (not throw) then
animateArm(true, CFrame.new(1.5,0.5,0), CFrame.new(0,0.5,0)*CFrame.Angles(-math.pi/2, 0, 0))
animateStaff(true, CFrame.new(0,-1,0)*CFrame.Angles(math.pi + math.pi/2,0,0), CFrame.new())
end

mouse.Button1Down:connect(function()
local hit = mouse.Hit
if (debounce) then
return
end
debounce = true
if (mode == "hurt") then
beam(core.Position, hit.p)
if (mouse.Target ~= nil) then
if (mouse.Target.Name == "box") then
mouse.Target.Parent = nil
else
damage(mouse.Target.Parent)
end
end
elseif (mode == "throw") then
animateArm(false, nil, nil)
StaffWeld.Part0 = nil
if (handle:FindFirstChild("BodyPosition") ~= nil) then
handle:FindFirstChild("BodyPosition").Parent = nil
end
if (handle:FindFirstChild("BodyGyro") ~= nil) then
handle:FindFirstChild("BodyGyro").Parent = nil
end
local bp = Instance.new("BodyPosition",handle)
bp.maxForce = Vector3.new(100000,100000,100000)
bp.position = handle.Position + Vector3.new(0,30,0)
local bg = Instance.new("BodyGyro",handle)
bg.cframe = CFrame.new(bp.position,hit.p)*CFrame.Angles(math.pi/2,0,0)
wait(1)
bp.position = hit.p + Vector3.new(0,2,0)
wait(0.3)
bg.cframe = CFrame.new(bp.position,hit.p)*CFrame.Angles(math.pi/2,0,0)
throw = true
elseif (mode == "build") then
beam(core.Position, hit.p)
local p = newPart(Vector3.new(4,4,4),BrickColor.new(0,0,0),Workspace)
p.Name = "box"
p.Anchored = true
p.CanCollide = true
p.Transparency = 0.5
p.CFrame = hit*CFrame.Angles(math.random(0,math.pi*2),math.random(0,math.pi*2),math.random(0,math.pi*2))
Instance.new("PointLight",p)
elseif (mode == "bubble") then
beam(core.Position, hit.p)
if (#orbWeld > 0) then
if (mouse.Target.Parent:FindFirstChild("Humanoid") ~= nil) then
local humanoid = mouse.Target.Parent.Humanoid
if (mouse.Target.Parent:FindFirstChild("Bubble") == nil) then
if (mouse.Target.Parent:FindFirstChild("Torso") ~= nil) then
local torso = mouse.Target.Parent.Torso
local part = newPart(Vector3.new(8,8,8),BrickColor.new(0,0,0),mouse.Target.Parent)
part.Name = "Bubble"
part.Anchored = false
part.CanCollide = true
part.Shape = 0
part.Transparency = 0.5
part.CFrame = torso.CFrame
Instance.new("PointLight",part)
weld(torso,part,CFrame.new())
humanoid.PlatformStand = true
-- removeSoul(1)
end
else
coroutine.resume(coroutine.create(function()
if (humanoid ~= nil) then
humanoid.WalkSpeed = -50
end
wait(5)
if (humanoid ~= nil) then
humanoid.WalkSpeed = 16
end
end))
humanoid.PlatformStand = false
mouse.Target.Parent.Bubble.Parent = nil
--addSoul(1)
end
end
end
elseif (mode == "beam") then
if (not hold and not throw) then
animateStaff(true, CFrame.new(0,-1,0)*CFrame.Angles(math.pi,0,0), CFrame.new())
hold = true
holdTime = 0
end
elseif (mode == "portal") then
handle.Anchored = true
local p = newCylMesh(newPart(Vector3.new(1,0.25,1),BrickColor.new(0,0,0),model))
p.Anchored = true
p.CFrame = CFrame.new(handle.Position) + Vector3.new(0,-2,0)
local c = p.CFrame
for i=1,15,0.5 do
p.Size = p.Size+Vector3.new(0.5,0,0.5)
p.CFrame = c
wait(0.01)
end
local p1 = newCylMesh(newPart(Vector3.new(1,0.25,1),BrickColor.new(0,0,0),model))
p1.Anchored = true
p1.CFrame = CFrame.new(hit.p)
p1.CFrame = CFrame.new(hit.p)
local c1 = p1.CFrame
handle.Anchored = false
for i,v in ipairs(game.Workspace:getChildren()) do
if (v:FindFirstChild("Torso") ~= nil) then
if ((core.Position - v.Torso.Position).magnitude <= 8) then
coroutine.resume(coroutine.create(function()
v.Torso.CFrame = CFrame.new(Vector3.new(v.Torso.Position.x,p.Position.y+3,v.Torso.Position.z),v.Torso.CFrame.lookVector)
v.Torso.Anchored = true
for i=0, 10 do
v.Torso.CFrame = v.Torso.CFrame+Vector3.new(0,-1,0)
wait(0.1)
end
v.Torso.CFrame = CFrame.new(v.Torso.Position - (p.Position - p1.Position),v.Torso.CFrame.lookVector) + Vector3.new(0,4,0)
for i=0, 10 do
v.Torso.CFrame = v.Torso.CFrame+Vector3.new(0,1,0)
wait(0.1)
end
v.Torso.Anchored = false
end))
end
end
end
for i=1,15,0.5 do
p.Size = p.Size+Vector3.new(-0.5,0,-0.5)
p1.Size = p1.Size+Vector3.new(0.5,0,0.5)
p.CFrame = c
p1.CFrame = c1
wait(0.01)
end
p.Parent = nil
wait(1)
for i=1,15,1 do
p1.Size = p1.Size+Vector3.new(-1,0,-1)
p1.CFrame = c1
wait(0.01)
end
p1.Parent = nil
end
debounce = false
end)

mouse.Button1Up:connect(function()
if (debounce2) then
return
end
debounce2 = true
if (mode == "beam") then
if (hold and holdTime >= 10) then
if (#orbWeld > 0) then
local p = newSphereMesh(newPart(Vector3.new(4,4,4),BrickColor.new(0,0,0),Workspace))
p.Name = "1"
p.Transparency = 0.5
local point = core.CFrame*CFrame.Angles(math.pi/2, 0, 0)
p.CFrame = CFrame.new(core.Position + point.lookVector*4,core.Position)
Instance.new("PointLight",p)

local bs = Instance.new("BodyVelocity",p)
bs.velocity = point.lookVector*(2*holdTime)+Vector3.new(0,0.25,0)
bs.maxForce = Vector3.new(100000,100000,100000)

p.Touched:connect(function(part)
if (part.Name ~= "beam012") then
if (p.Name == "3") then
p.Parent = nil
elseif (p.Name == "2") then
p.Name = "3"
elseif (p.Name == "1") then
p.Name = "2"
end
part.Parent = nil
end
end)

coroutine.resume(coroutine.create(function()
for i = 1, 5, 0.01 do
if (p.Parent ~= nil) then
beam(p.Position, p.Position+Vector3.new(math.random(-5,5),math.random(-5,5),math.random(-5,5)))
end
wait(0.01)
end
p.Parent = nil
end))

wait(1)
--removeSoul(2)
end
end
hold = false
holdTime = 0
animateStaff(true, CFrame.new(0,-1,0)*CFrame.Angles(math.pi + math.pi/2,0,0), CFrame.new())
end
debounce2 = false
end)

mouse.KeyDown:connect(function (key) 
keys[key] = true 
if (keys["z"]) then
mode = "hurt"
elseif (keys["x"]) then
mode = "bubble"
elseif (keys["q"]) then
mode = "beam"
elseif (keys["c"]) then
mode = "drain"
elseif (keys["v"]) then
mode = "build"
elseif (keys["e"]) then
if (mode ~= "throw") then
mode = "throw"
else
if (debounce) then return end
debounce = true
if (throw) then
handle:FindFirstChild("BodyPosition").Parent = nil
handle:FindFirstChild("BodyGyro").Parent = nil
throw = false
animateArm(true, CFrame.new(1.5,0.5,0), CFrame.new(0,0.5,0)*CFrame.Angles(-math.pi/2, 0, 0))
animateStaff(true, CFrame.new(0,-1,0)*CFrame.Angles(math.pi + math.pi/2,0,0), CFrame.new())
end
debounce = false
end
elseif (keys["b"]) then
if (debounce) then return end
debounce = true
if (throw) then
local p = newCylMesh(newPart(Vector3.new(1,0.25,1),BrickColor.new(0,0,0),model))
p.Anchored = true
p.CFrame = CFrame.new(handle.Position) + Vector3.new(0,-2,0)
local c = p.CFrame
for i=1,30,0.5 do
p.Size = p.Size+Vector3.new(0.5,0,0.5)
p.CFrame = c
wait(0.01)
end
for i,v in ipairs(game.Workspace:getChildren()) do
if (v:FindFirstChild("Torso") ~= nil) then
if ((core.Position - v.Torso.Position).magnitude <= 15) then
coroutine.resume(coroutine.create(function()
v.Torso.CFrame = CFrame.new(Vector3.new(v.Torso.Position.x,p.Position.y+3,v.Torso.Position.z),v.Torso.CFrame.lookVector)
v.Torso.Anchored = true
for i=0, 10 do
v.Torso.CFrame = v.Torso.CFrame+Vector3.new(0,-1,0)
wait(0.1)
end
v:BreakJoints()
end))
end
end
end
for i=1,30,1 do
p.Size = p.Size+Vector3.new(-1,0,-1)
p.CFrame = c
wait(0.01)
end
p.Parent = nil
end
debounce = false
elseif (keys["f"]) then
mode = "portal"
end
end)
mouse.KeyUp:connect(function (key) keys[key] = false end)
end)

tool.Deselected:connect(function()
hold = false
holdTime = 0
if (not throw) then
animateArm(false, nil, nil)
animateStaff(false, nil, nil)
end
end)

local y = 0
local x = 0
game:getService("RunService").Stepped:connect(function()
if (hold) then
holdTime = holdTime+0.5
if(holdTime >= 10) then
beam(core.Position, core.Position+Vector3.new(math.random(-5,5),math.random(-5,5),math.random(-5,5)))
end
end

if (mode == "drain") then
for q,v in pairs(Workspace:getChildren()) do
if (v ~= character and math.random(1,10) == 1) then
damageDistance(v, 10)
end
end
beam(core.Position, core.Position+Vector3.new(math.random(-5,5),math.random(-5,5),math.random(-5,5)))
end

coreWeld.C0 = CFrame.new(0,3.75,0)+Vector3.new(0,math.sin(y)/4,0)

for i,v in ipairs(orbWeld) do
local radius = getRadius(#orbWeld)

local index = x + ((math.pi*2)/#orbWeld)*(i-1)

orbWeld[i].C0 = CFrame.new(radius*math.sin(index), 0, radius*math.cos(index))
end

if (y < math.pi*2) then
y = y + math.pi*2/128
else
y = math.pi*2/128
end

if (x < math.pi*2) then
x = x + math.pi*2/128
else
x = math.pi*2/128
end
end)