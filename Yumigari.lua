--[[mediafire gtfo password local]]--

Player = game:GetService("Players").rigletto
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
ModelName = "Weapon"
attack = false
attacktype = 1
Hitdeb = 0
Neck = Torso.Neck
local neckcf0 = Neck.C0

----------------------------
--Customize
Ammo = 30
--if (string.match(Player.Unlocks.Value,"Yumigari Ammo+") ~= nil) then
MaxAmmo = 30
--[[else
MaxAmmo = 30
end]]-- m
mindamage = 20
maxdamage = 45
crtmaxdamage = 70
omindamage = mindamage
omaxdamage = maxdamage
ocrtmaxdamage = crtmaxdamage
crtrate = 100/5
--100%/critpercentage

oblkbrkr = 0
blockbreaker = oblkbrkr
spread = 1.5
spread = spread*100
Ammoregen = 5
--if (string.match(Player.Unlocks.Value,"Yumigari Range+") ~= nil) then
range = 250
--else
--range = 150
--end
rangepower = 20
CurrentArrow = "Normal"
handlecolor = BrickColor.new("Black")
bcolor = BrickColor.new("Bright red")
gemcolor = BrickColor.new("Black")
arrowtrail = BrickColor.new("White")
ToolName = "Yumigari"

---------------------------------------------------------------------------------------------------------------------------------------
if Character:findFirstChild("EquippedVal",true) ~= nil then
Character:findFirstChild("EquippedVal",true).Parent = nil
end
ev = Instance.new("BoolValue",Character)
ev.Name = "EquippedVal"
ev.Value = false
if Character:findFirstChild("Block",true) ~= nil then
Character:findFirstChild("Block",true).Parent = nil
end


--player
player = nil
--welds
RW, LW , RWL, LWL = Instance.new("Weld"), Instance.new("Weld"), Instance.new("Weld"), Instance.new("Weld")
--what anim
anim = "none"
--other var
player = Player
ch = Character
--save shoulders
AoETrue = {}
RSH, LSH , RHL, LHL = ch.Torso["Right Shoulder"], ch.Torso["Left Shoulder"] , ch.Torso["Right Hip"] , ch.Torso["Left Hip"]


function RWFunc()
	RW.Part1 = ch["Right Arm"]
	RSH.Part1 = nil
end
function LWFunc()
	LW.Part1 = ch["Left Arm"]
	LSH.Part1 = nil
end
function RWLFunc()
	RWL.Part1 = ch["Right Leg"]
	RHL.Part1 = nil
	ch["Right Leg"].Name = "RightLeg"
	RightLeg.CanCollide = false
end

function LWLFunc()
	LWL.Part1 = ch["Left Leg"]
	LHL.Part1 = nil
	ch["Left Leg"].Name = "LeftLeg"
	LeftLeg.CanCollide = true
end

function RWLRem()
	RightLeg.Name = "Right Leg"
	RWL.Part1 = nil
	RHL.Part1 = ch["Right Leg"]
	RightLeg.CanCollide = false
end
function LWLRem()
	LeftLeg.Name = "Left Leg"
	LWL.Part1 = nil
	LHL.Part1 = ch["Left Leg"]
	LeftLeg.CanCollide = false
end
function RWRem()
	RW.Part1 = nil
	RSH.Part1 = ch["Right Arm"]
end
function LWRem()
	LW.Part1 = nil
	LSH.Part1 = ch["Left Arm"]
end




if Character:findFirstChild(ModelName,true) ~= nil then
Character:findFirstChild(ModelName,true).Parent = nil
	RHL.Part1 = ch["Right Leg"]
	LHL.Part1 = ch["Left Leg"]
	RSH.Part1 = ch["Right Arm"]
	LSH.Part1 = ch["Left Arm"]
end






local swordholder = Instance.new("Model")
swordholder.Name = ModelName
swordholder.Parent = Character

--derp
	RW.Part0 = ch.Torso
	RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
	RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
	RW.Parent = swordholder
	--
	LW.Part0 = ch.Torso
	LW.C0 = CFrame.new(-1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8)
	LW.C1 = CFrame.new(0, 0.5, 0)
	LW.Parent = swordholder
	--
	RWL.Part0 = ch.Torso
	RWL.C0 = CFrame.new(1, -1, 0) * CFrame.Angles(0, 0, 0)
	RWL.C1 = CFrame.new(0.5, 1, 0)
	RWL.Parent = swordholder
	--
	LWL.Part0 = ch.Torso
	LWL.C0 = CFrame.new(-1, -1, 0) * CFrame.Angles(0, 0, 0)
	LWL.C1 = CFrame.new(-0.5, 1, 0)
	LWL.Parent = swordholder




local msh1 = Instance.new("CylinderMesh")
msh1.Scale = Vector3.new(1,1,1)
local msh2 = Instance.new("CylinderMesh")
msh2.Scale = Vector3.new(1,1,1)
local msh3 = Instance.new("CylinderMesh")
msh3.Scale = Vector3.new(1,1,1)
local msh4 = Instance.new("BlockMesh")
msh4.Scale = Vector3.new(2.5,1.2,1.2)
local msh5 = Instance.new("BlockMesh")
msh5.Scale = Vector3.new(2.5,1.2,1.2)
local msh6 = Instance.new("BlockMesh")
msh6.Scale = Vector3.new(1,1,1)
local msh7 = Instance.new("BlockMesh")
msh7.Scale = Vector3.new(1,1,1)
local msh8 = Instance.new("SpecialMesh")
msh8.MeshId = "http://www.roblox.com/asset/?id=3270017"
msh8.Scale = Vector3.new(1,1,30)
local msh9 = Instance.new("BlockMesh")
local torsc = false
for i,z in pairs(Character:GetChildren()) do
if z.className == "CharacterMesh" then
if z.BodyPart == Enum.BodyPart.Torso then
torsc = true
end
end
end
if torsc then
msh9 = Instance.new("SpecialMesh")
msh9.MeshId = "http://www.roblox.com/asset/?id=3270017"
msh9.Scale = Vector3.new(2.01,1,1.01)
else
msh9 = Instance.new("BlockMesh")
msh9.Scale = Vector3.new(2.01,0.1,1.01)
end
local msh10 = Instance.new("CylinderMesh")
msh10.Scale = Vector3.new(1,1,1)

local prt1 = Instance.new("Part")
prt1.formFactor = 3
prt1.CanCollide = false
prt1.Name = "Handle"
prt1.Locked = true
prt1.Size = Vector3.new(0.3,3,0.3)
prt1.Parent = swordholder
msh1.Parent = prt1
prt1.BrickColor = handlecolor
local prt2 = Instance.new("Part")
prt2.formFactor = 3
prt2.CanCollide = false
prt2.Name = "Handle2"
prt2.Locked = true
prt2.Size = Vector3.new(0.3,1,0.3)
prt2.Parent = swordholder
msh2.Parent = prt2
prt2.BrickColor = handlecolor
local prt3 = Instance.new("Part")
prt3.formFactor = 3
prt3.CanCollide = false
prt3.Name = "Handle3"
prt3.Locked = true
prt3.Size = Vector3.new(0.3,1,0.3)
prt3.Parent = swordholder
msh3.Parent = prt3
prt3.BrickColor = handlecolor
local prt4 = Instance.new("Part")
prt4.formFactor = 3
prt4.CanCollide = false
prt4.Name = "Handle4"
prt4.Locked = true
prt4.Size = Vector3.new(0.3,2,0.3)
prt4.Parent = swordholder
msh4.Parent = prt4
prt4.BrickColor = bcolor
local prt5 = Instance.new("Part")
prt5.formFactor = 3
prt5.CanCollide = false
prt5.Name = "Handle5"
prt5.Locked = true
prt5.Size = Vector3.new(0.3,2,0.3)
prt5.Parent = swordholder
msh5.Parent = prt5
prt5.BrickColor = bcolor
local prt6 = Instance.new("Part")
prt6.formFactor = 3
prt6.CanCollide = false
prt6.Name = "Handle6"
prt6.Locked = true
prt6.Size = Vector3.new(1,2,0.3)
prt6.Parent = swordholder
msh6.Parent = prt6
prt6.BrickColor = bcolor
local prt7 = Instance.new("Part")
prt7.formFactor = 3
prt7.CanCollide = false
prt7.Name = "Handle7"
prt7.Locked = true
prt7.Size = Vector3.new(1,2,0.3)
prt7.Parent = swordholder
msh7.Parent = prt7
prt7.BrickColor = bcolor
local prt8 = Instance.new("Part")
prt8.formFactor = 3
prt8.CanCollide = false
prt8.Name = "Quiver"
prt8.Locked = true
prt8.Size = Vector3.new(1.25,2.25,1.25)
prt8.Parent = swordholder
msh8.Parent = prt8
prt8.BrickColor = handlecolor
local prt9 = Instance.new("Part")
prt9.formFactor = 3
prt9.CanCollide = false
prt9.Name = "QuiverStrap"
prt9.Locked = true
prt9.Size = Vector3.new(1,1,1)
prt9.Parent = swordholder
msh9.Parent = prt9
prt9.BrickColor = handlecolor
local prt10 = Instance.new("Part")
prt10.formFactor = 3
prt10.CanCollide = false
prt10.Name = "QuiverCover"
prt10.Locked = true
prt10.Size = Vector3.new(1,0.2,1)
prt10.Parent = swordholder
msh10.Parent = prt10
prt10.BrickColor = handlecolor
local msh11 = Instance.new("SpecialMesh")
msh11.MeshId = "http://www.roblox.com/asset/?id=15887356"
msh11.TextureId = "http://www.roblox.com/asset/?id=15886781"
msh11.Scale = Vector3.new(1,1,2.5)
local prt11 = Instance.new("Part")
prt11.formFactor = 3
prt11.CanCollide = false
prt11.Name = "Arrow"
prt11.Locked = true 
prt11.Size = Vector3.new(0.2,0.2,2.5)
prt11.Parent = swordholder
msh11.Parent = prt11
local w11 = Instance.new("Weld")
w11.Parent = prt11
w11.Part0 = prt11
w11.Part1 = LeftArm
w11.C1 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)
w11.C0 = CFrame.Angles(0,0,math.rad(90)) * CFrame.new(0,1,0)
coroutine.resume(coroutine.create(function()
repeat
wait(0.25)
if Ammo > 0 then
prt11.Transparency = 0
else
prt11.Transparency = 1
end
until false
end))
for i = 1,10 do
local msh0 = Instance.new("SpecialMesh")
msh0.MeshId = "http://www.roblox.com/asset/?id=15887356"
msh0.TextureId = "http://www.roblox.com/asset/?id=15886781"
msh0.Scale = Vector3.new(1,1,2.5)
local prt0 = Instance.new("Part")
prt0.formFactor = 3
prt0.CanCollide = false
prt0.Name = "Arrow"..i
prt0.Locked = true
prt0.Size = Vector3.new(0.2,0.2,2.5)
prt0.Parent = swordholder
msh0.Parent = prt0
local w0 = Instance.new("Weld")
w0.Parent = prt0
w0.Part0 = prt0
w0.Part1 = prt8
w0.C1 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)
w0.C0 = CFrame.Angles(math.rad(180), 0,math.rad(360*math.random())) * CFrame.new(math.random(-25,25)/100, math.random(-25,25)/100,-0.315)
end
---
local String1 = Instance.new("Part")
String1.formFactor = 3
String1.CanCollide = false
String1.Name = "String1"
String1.Locked = true
String1.Anchored = true
String1.Size = Vector3.new(0.2,4,0.2)
String1.Parent = swordholder
String1.BrickColor = BrickColor.new("White")
local strmsh1 = Instance.new("BlockMesh",String1)
strmsh1.Scale = Vector3.new(0.25,1,0.25)
local String2 = Instance.new("Part")
String2.formFactor = 3
String2.CanCollide = false
String2.Name = "String2"
String2.Locked = true
String2.Anchored = true
String2.Size = Vector3.new(0.2,4,0.2)
String2.Parent = swordholder
String2.BrickColor = BrickColor.new("White")
local strmsh2 = Instance.new("BlockMesh",String2)
strmsh2.Scale = Vector3.new(0.25,1,0.25)
local strmdl = "Bow"
coroutine.resume(coroutine.create(function()
repeat
wait(0.1)
local top = prt4.CFrame*CFrame.new(0,prt4.Size.y/-2,0)
local bottom = prt5.CFrame*CFrame.new(0,prt5.Size.y/2,0)
local oristrpos
if strmdl == "Bow" then
oristrpos = CFrame.new((top.p+bottom.p)/2)
elseif strmdl == "TopArm" then
oristrpos = RightArm.CFrame * CFrame.new(0,RightArm.Size.y/2,0)
elseif strmdl == "LeftArm" then
oristrpos = LeftArm.CFrame * CFrame.new(0,RightArm.Size.y/-2,0)
end
local mg1 = (top.p - oristrpos.p).magnitude
local mg2 = (bottom.p - oristrpos.p).magnitude
String1.Size = Vector3.new(0.2,mg1,0.2)
String1.CFrame = CFrame.new((top.p+oristrpos.p)/2,oristrpos.p) * CFrame.Angles(math.rad(90),0,0)
String2.Size = Vector3.new(0.2,mg2,0.2)
String2.CFrame = CFrame.new((bottom.p+oristrpos.p)/2,oristrpos.p) * CFrame.Angles(math.rad(90),0,0)

until false
end))


local w1 = Instance.new("Weld")
w1.Parent = prt1
w1.Part0 = prt1
local w2 = Instance.new("Weld")
w2.Parent = prt2
w2.Part0 = prt2
w2.Part1 = prt1
w2.C1 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)
w2.C0 = CFrame.Angles(math.rad(20), 0, 0) * CFrame.new(0, 1.9,-0.15)
local w3 = Instance.new("Weld")
w3.Parent = prt3
w3.Part0 = prt3
w3.Part1 = prt1
w3.C1 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)
w3.C0 = CFrame.Angles(math.rad(-20), 0, 0) * CFrame.new(0, -1.9,-0.15)
local w4 = Instance.new("Weld")
w4.Parent = prt4
w4.Part0 = prt4
w4.Part1 = prt1
w4.C1 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)
w4.C0 = CFrame.Angles(math.rad(-55), 0, 0) * CFrame.new(0, 2.85,0.4)
local w5 = Instance.new("Weld")
w5.Parent = prt5
w5.Part0 = prt5
w5.Part1 = prt1
w5.C1 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)
w5.C0 = CFrame.Angles(math.rad(55), 0, 0) * CFrame.new(0, -2.85,0.4)
local w6 = Instance.new("Weld")
w6.Parent = prt6
w6.Part0 = prt6
w6.Part1 = prt1
w6.C1 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)
w6.C0 = CFrame.Angles(math.rad(90), 0, 0) * CFrame.new(0, 0.6,0)
local w7 = Instance.new("Weld")
w7.Parent = prt7
w7.Part0 = prt7
w7.Part1 = prt1
w7.C1 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)
w7.C0 = CFrame.Angles(math.rad(90), 0, 0) * CFrame.new(0, -0.6,0)
local w8 = Instance.new("Weld")
w8.Parent = prt8
w8.Part0 = prt8
w8.Part1 = Torso
w8.C1 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)
w8.C0 = CFrame.Angles(math.rad(90), 0, math.rad(-80)) * CFrame.new(0, 0.9,-1) 
local w9 = Instance.new("Weld")
w9.Parent = prt9
w9.Part0 = prt9
w9.Part1 = Torso
w9.C1 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)
if torsc then
w9.C0 = CFrame.Angles(math.rad(90), 0, 0) * CFrame.new(0, 1,0) 
else
w9.C0 = CFrame.Angles(0, 0, 0) * CFrame.new(0, 1,0) 
end
local w10 = Instance.new("Weld")
w10.Parent = prt10
w10.Part0 = prt10
w10.Part1 = prt8
w10.C1 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)
w10.C0 = CFrame.Angles(math.rad(90), math.rad(0), math.rad(0)) * CFrame.new(0, 0,2.3)
 
local RAP = Instance.new("Part")
RAP.formFactor = 0
RAP.CanCollide = false
RAP.Name = "RAPart"
RAP.Locked = true
RAP.Size = Vector3.new(1,1,1)
RAP.Parent = swordholder
RAP.Transparency = 1
local w = Instance.new("Weld")
w.Parent = RAP
w.Part0 = RAP
w.Part1 = RightArm
w.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
w.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), 0, 0) * CFrame.new(0, 1, 0)


function unequipweld()
w1.Part1 = Torso 
w1.C1 = CFrame.fromEulerAnglesXYZ(0, math.rad(0), math.rad(0)) * CFrame.new(0, 0,0)
w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(180),math.rad(180), math.rad(0)) * CFrame.new(-1.15, -0.5, -0.6)
end

unequipweld()



function equipweld()
w1.Part0 = prt1
w1.Part1 = RAP
w1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
w1.C0 = CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0)) * CFrame.new(0, 0, 0)
end


function ss(parent,p) --Slash

local SlashSound = Instance.new("Sound")
SlashSound.SoundId = "rbxasset://sounds\\swordslash.wav"
SlashSound.Parent = parent
SlashSound.Volume = .7
SlashSound.Pitch = p
SlashSound.PlayOnRemove = true
coroutine.resume(coroutine.create(function()
wait() 
SlashSound.Parent = nil
end))
end
function uss(parent,p) --unsheath

local SlashSound = Instance.new("Sound")
SlashSound.SoundId = "rbxasset://sounds\\unsheath.wav"
SlashSound.Parent = parent
SlashSound.Volume = .7
SlashSound.Pitch = p
SlashSound.PlayOnRemove = true
coroutine.resume(coroutine.create(function()
wait() 
SlashSound.Parent = nil
end))
end
function cs(parent,p) --Magic Charge

local SlashSound = Instance.new("Sound")
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2101137"
SlashSound.Parent = parent
SlashSound.Volume = .7
SlashSound.Pitch = p
SlashSound.PlayOnRemove = true
coroutine.resume(coroutine.create(function()
wait() 
SlashSound.Parent = nil
end))
end
function ls(parent,p) --Lazer Sound

local SlashSound = Instance.new("Sound")
SlashSound.SoundId = "http://www.roblox.com/asset?id=1369158"
SlashSound.Parent = parent
SlashSound.Volume = .7
SlashSound.Pitch = p
SlashSound.PlayOnRemove = true
coroutine.resume(coroutine.create(function()
wait()
SlashSound.Parent = nil
end))
end
function ts(parent,p)

local SlashSound = Instance.new("Sound")
SlashSound.SoundId = "http://www.roblox.com/asset/?id=12222030"
SlashSound.Parent = parent
SlashSound.Volume = .7
SlashSound.Pitch = p
SlashSound.PlayOnRemove = true
coroutine.resume(coroutine.create(function()
wait()
SlashSound.Parent = nil
end))
end
function fs(parent,p) --Fire Sound

local SlashSound = Instance.new("Sound")
SlashSound.SoundId = "http://www.roblox.com/asset/?id=31758982"
SlashSound.Parent = parent
SlashSound.Volume = .7
SlashSound.Pitch = p
SlashSound.PlayOnRemove = true
coroutine.resume(coroutine.create(function()
wait()
SlashSound.Parent = nil
end))
end
function ms(parent,p) --Metal Cling Sound

local SlashSound = Instance.new("Sound")
SlashSound.SoundId = "rbxasset://sounds\\metal.ogg"
SlashSound.Parent = parent
SlashSound.Volume = 1
SlashSound.Pitch = p
SlashSound.PlayOnRemove = true
coroutine.resume(coroutine.create(function()
wait()
SlashSound.Parent = nil
end))
end
function bs(parent,p) --Berserk Sound

local SlashSound = Instance.new("Sound")
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2676305"
SlashSound.Parent = parent
SlashSound.Volume = 1
SlashSound.Pitch = p
SlashSound.PlayOnRemove = true
coroutine.resume(coroutine.create(function()
wait()
SlashSound.Parent = nil
end))
end
function hs(parent,p) --Arrow Hit Sound

local SlashSound = Instance.new("Sound")
SlashSound.SoundId = "http://www.roblox.com/asset/?id=16211030"
SlashSound.Parent = parent
SlashSound.Volume = 1
SlashSound.Pitch = p
SlashSound.PlayOnRemove = true
coroutine.resume(coroutine.create(function()
wait()
SlashSound.Parent = nil
end))
end
function as(parent,p) --Arrow Shoot Sound

local SlashSound = Instance.new("Sound")
SlashSound.SoundId = "http://www.roblox.com/asset/?id=16211041"
SlashSound.Parent = parent
SlashSound.Volume = 1
SlashSound.Pitch = p
SlashSound.PlayOnRemove = true
coroutine.resume(coroutine.create(function()
wait()
SlashSound.Parent = nil
end))
end
function ars(parent,p) --Arrow Reload Sound

local SlashSound = Instance.new("Sound")
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2697295"
SlashSound.Parent = parent
SlashSound.Volume = 1
SlashSound.Pitch = p
SlashSound.PlayOnRemove = true
coroutine.resume(coroutine.create(function()
wait()
SlashSound.Parent = nil
end))
end
--
--

function returndmg()
mindamage = omindamage
maxdamage = omaxdamage
crtmaxdamage = ocrtmaxdamage
end

function subdmg(sub)
mindamage = omindamage - sub
maxdamage = omaxdamage - sub
crtmaxdamage = ocrtmaxdamage - sub
end

function prcntdmg(sub)
mindamage = math.floor(omindamage - (omindamage*(sub/100)))
maxdamage = math.floor(omaxdamage - (omaxdamage*(sub/100)))
crtmaxdamage = math.floor(ocrtmaxdamage - (ocrtmaxdamage*(sub/100)))
end

function tagHumanoid(humanoid, player)
	local creator_tag = Instance.new("ObjectValue")
	creator_tag.Value = player
	creator_tag.Name = "creator"
	creator_tag.Parent = humanoid
end

function untagHumanoid(humanoid)
	if humanoid ~= nil then
		local tag = humanoid:findFirstChild("creator")
		if tag ~= nil then
			tag.Parent = nil
		end
	end
end

local function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game.Workspace:FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 



function hideanim()
attack = true
w1.Part0 = prt3
w1.Part1 = RAP
w1.C0 = CFrame.new(0,-1.75, 0.6) * CFrame.Angles(math.rad(-110), math.rad(0), math.rad(0))
for i = 0 , 1 , 0.075 do
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(10+190*i),math.rad(0),math.rad(20-20*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(10),math.rad(0),math.rad(-20))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w1.C0 = CFrame.new(0,-1.75+1.75*i, 0.6-0.6*i) * CFrame.Angles(math.rad(-110-70*i), math.rad(0), math.rad(0))
end
strmdl = "Bow"
w1.Part0 = prt1
unequipweld()
for i = 0 , 1 , 0.1 do
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(200-200*i),math.rad(0),math.rad(0))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(10-10*i),math.rad(0),math.rad(-20+20*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
end
RWRem()
LWRem()	
attack = false
end


function equipanim()
attack = true
RWFunc()
LWFunc()
for i = 0 , 1 , 0.1 do
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(200*i),math.rad(0),math.rad(0))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-10*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
end
w1.Part0 = prt3
w1.Part1 = RAP
w1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
w1.C0 = CFrame.Angles(math.rad(-180), math.rad(0), math.rad(0)) * CFrame.new(0, 0, 0)
for i = 0 , 1 , 0.05 do
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(200-190*i),math.rad(0),math.rad(20*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(10*i),math.rad(0),math.rad(-10-10*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w1.C0 = CFrame.new(0,-1.75*i, 0.6*i) * CFrame.Angles(math.rad(-180+70*i), math.rad(0), math.rad(0))
if i > 0.5 then
strmdl = "TopArm"
end
end
equipweld()
returnwelds()
attack = false
end


function faketors()
local T = Instance.new("Part")
T.formFactor = 0
T.CanCollide = false
T.Name = "FakeTorso"
T.Locked = true
T.Size = Torso.Size
T.Parent = swordholder
T.Transparency = 1
T.BrickColor = Torso.BrickColor
for i,z in pairs(Character:GetChildren()) do
if z.className == "CharacterMesh" then
if z.BodyPart == Enum.BodyPart.Torso then
local SM = Instance.new("SpecialMesh",T)
SM.MeshId = "http://www.roblox.com/asset/?id=" .. z.MeshId
if z.BaseTextureId ~= 0 then
SM.TextureId = z.BaseTextureId
elseif z.OverlayTextureId ~= 0 then
SM.TextureId = z.OverlayTextureId
else
SM.TextureId = ""
end
end
end
end
local wt = Instance.new("Weld")
wt.Parent = T
wt.Part0 = T
wt.Part1 = Torso
RW.Part0 = T
LW.Part0 = T
T.Transparency = 0
Torso.Transparency = 1
RHL.Part0 = T
LHL.Part0 = T
return wt,T
end


if (script.Parent.className ~= "HopperBin") then 
Tool = Instance.new("HopperBin") 
Tool.Parent = Backpack 
Tool.Name = ToolName
script.Parent = Tool 
end 
Bin = script.Parent 

function damagesplat(dmg,hit,crit,blocked)
    local mo = Instance.new("Model")
    mo.Name = dmg
    local pa = Instance.new("Part",mo)
    pa.formFactor = 3
    pa.Size = Vector3.new(0.8,0.3,0.8)
    if crit then
    pa.BrickColor = BrickColor.new("Bright yellow")
    elseif not crit then
    pa.BrickColor = BrickColor.new("Bright red")
    end
    if blocked then pa.BrickColor = BrickColor.new("Bright blue") end
    pa.CFrame = CFrame.new(hit.Position) * CFrame.new(0, 3, 0)
    pa.Name = "Head"
    local hah = Instance.new("Humanoid")
    hah.Parent = mo
    hah.MaxHealth = 0
    hah.Health = 0
    local bp = Instance.new("BodyPosition")
    bp.P = 14000
    bp.maxForce = Vector3.new(math.huge, math.huge, math.huge)
    bp.position = hit.Position + Vector3.new(0, 5, 0)
    coroutine.resume(coroutine.create(function()
        wait()
        mo.Parent = workspace
	bp.Parent = pa
        wait(1.4)
        mo:remove()
    end))
    return pa
end

function damage(hum,dmg,critornot)
local pa = damagesplat(dmg,hum.Torso,critornot)
hum:TakeDamage(dmg)
coroutine.resume(coroutine.create(function()
tagHumanoid(hum,Player)
wait(1)
untagHumanoid(hum)
end))
return pa
end

function AddAmmo(add)
Ammo = Ammo + add
if Ammo > MaxAmmo then
Ammo = MaxAmmo
end
end

function ADmg(humm,hit)
if CurrentArrow == "Normal" then
if humm.Parent:findFirstChild("Block") ~= nil then 
if humm.Parent.Block.Value then 
damagesplat(0,humm.Torso,false,true) 
return
end
end
prcntdmg(50)
if critrandomizer ~= 1 then
local rndmdamage = math.random(mindamage,maxdamage)
damage(humm,rndmdamage,false)
elseif critrandomizer == 1 then
local rndmdamage = math.random(maxdamage,crtmaxdamage)
damage(humm,rndmdamage,true) 
end

elseif CurrentArrow == "Poison" then

if humm.Parent:findFirstChild("Block") ~= nil then 
if humm.Parent.Block.Value then 
damagesplat(0,humm.Torso,false,true) 
return
end
end
prcntdmg(75)
if critrandomizer ~= 1 then
local rndmdamage = math.random(mindamage,maxdamage)
damage(humm,rndmdamage,false)
elseif critrandomizer == 1 then
local rndmdamage = math.random(maxdamage,crtmaxdamage)
damage(humm,rndmdamage,true) 
end
if math.random(1,5) == 1 then
local poisoncount = math.random(2,10)
coroutine.resume(coroutine.create(function()
repeat
wait(1.5)
poisoncount = poisoncount - 1
local rndmdamage = math.floor(math.random(mindamage,maxdamage)/2)
local pa = damage(humm,rndmdamage,false)
pa.BrickColor = BrickColor.new("Alder")
until poisoncount <= 0
end))
end
elseif CurrentArrow == "Fire" then
if humm.Parent:findFirstChild("Block") ~= nil then 
if humm.Parent.Block.Value then 
damagesplat(0,humm.Torso,false,true) 
return
end
end
prcntdmg(65)
if critrandomizer ~= 1 then
local rndmdamage = math.random(mindamage,maxdamage)
damage(humm,rndmdamage,false)
elseif critrandomizer == 1 then
local rndmdamage = math.random(maxdamage,crtmaxdamage)
damage(humm,rndmdamage,true) 
end
local firecount = math.random(5,15)
if humm.Parent:findFirstChild("Fire") ~= nil then
humm.Parent.Fire.Parent = nil
end
coroutine.resume(coroutine.create(function()
local firemod = Instance.new("Model",humm.Parent)
firemod.Name = "Fire"
repeat
wait(0.5+0.5*math.random())
firecount = firecount - 1 
local rndmdamage = math.floor(math.random(0,maxdamage/5))
local pa = damage(humm,rndmdamage,false)
for i = 1 , 3 do
wait()
coroutine.resume(coroutine.create(function()
local meshb1 = Instance.new("BlockMesh")
meshb1.Scale = Vector3.new(1,1,1)
local shellb1 = Instance.new("Part")
meshb1.Parent = shellb1
shellb1.Anchored = true
shellb1.formFactor = 3
shellb1.Size = Vector3.new(0.3,0.3,0.3) * (math.random(10,50)/10)
shellb1.CFrame = CFrame.new(humm.Torso.CFrame.p) * CFrame.Angles(math.random(-100,100)/100,math.random(-100,100)/100,math.random(-100,100)/100)
shellb1.Parent = firemod
shellb1.Transparency = 0
if math.random(1,2) == 1 then
shellb1.BrickColor = BrickColor.new("Bright red")
else
shellb1.BrickColor = BrickColor.new("Bright orange")
end
shellb1.CanCollide = false
local incre = math.random(100,500)/1000
for i = 0 , 1 , 0.1 do
wait()
shellb1.CFrame = shellb1.CFrame + Vector3.new(0,0.15+incre,0)
shellb1.Transparency = 1*i
meshb1.Scale = Vector3.new(1+1*i,1+1*i,1+1*i)
end
shellb1.Parent=nil
end)) 
end
until firecount <= 0 or firemod.Parent == nil
firemod.Parent = nil
end))
returndmg()
end
end

function OT(hit) --Normal Damage
if Hitdeb == 1 then return end
if hit.Parent == nil then return end
local hum = hit.Parent:findFirstChild("Humanoid") if hum ~= nil and hum ~= Character.Humanoid then
if hum.Health <= 0 then return end
if hit.Parent:findFirstChild("Block") ~= nil then 
if hit.Parent.Block.Value then 
damagesplat(0,hum.Torso,false,true) 
Hitdeb = 1
if hit.Parent.Block:findFirstChild("BlockPower") ~= nil then
if hit.Parent.Block.BlockPower.Value <= 1 then
hit.Parent.Block.Value = false 
elseif hit.Parent.Block.BlockPower.Value > 1 then
local critrandomizer = math.random(crtrate)
if critrandomizer ~= 1 then
hit.Parent.Block.BlockPower.Value = hit.Parent.Block.BlockPower.Value - blockbreaker 
elseif critrandomizer == 1 then
hit.Parent.Block.BlockPower.Value = hit.Parent.Block.BlockPower.Value - blockbreaker + 2
end
end
end
return end end
local critrandomizer = math.random(crtrate)
if critrandomizer ~= 1 then
local rndmdamage = math.random(mindamage,maxdamage)
damage(hum,rndmdamage,false)
elseif critrandomizer == 1 then
local rndmdamage = math.random(maxdamage,crtmaxdamage)
damage(hum,rndmdamage,true)
end
--
if CurrentArrow == "Poison" then
if math.random(1,5) == 1 then
local poisoncount = math.random(1,5)
coroutine.resume(coroutine.create(function()
repeat
wait(1.5)
poisoncount = poisoncount - 1
local rndmdamage = math.floor(math.random(mindamage,maxdamage)/2)
local pa = damage(hum,rndmdamage,false)
pa.BrickColor = BrickColor.new("Alder")
until poisoncount <= 0
end))
end
elseif CurrentArrow == "Fire" then
local firecount = math.random(3,7)
if hum.Parent:findFirstChild("Fire") ~= nil then
hum.Parent.Fire.Parent = nil
end
coroutine.resume(coroutine.create(function()
local firemod = Instance.new("Model",hum.Parent)
firemod.Name = "Fire"
repeat
wait(0.5+0.5*math.random())
firecount = firecount - 1 
local rndmdamage = math.floor(math.random(0,maxdamage/5))
local pa = damage(hum,rndmdamage,false)
for i = 1 , 3 do
wait()
coroutine.resume(coroutine.create(function()
local meshb1 = Instance.new("BlockMesh")
meshb1.Scale = Vector3.new(1,1,1)
local shellb1 = Instance.new("Part")
meshb1.Parent = shellb1
shellb1.Anchored = true
shellb1.formFactor = 3
shellb1.Size = Vector3.new(0.3,0.3,0.3) * (math.random(10,50)/10)
shellb1.CFrame = CFrame.new(hum.Torso.CFrame.p) * CFrame.Angles(math.random(-100,100)/100,math.random(-100,100)/100,math.random(-100,100)/100)
shellb1.Parent = firemod
shellb1.Transparency = 0
if math.random(1,2) == 1 then
shellb1.BrickColor = BrickColor.new("Bright red")
else
shellb1.BrickColor = BrickColor.new("Bright orange")
end
shellb1.CanCollide = false
local incre = math.random(100,500)/1000
for i = 0 , 1 , 0.1 do
wait()
shellb1.CFrame = shellb1.CFrame + Vector3.new(0,0.15+incre,0)
shellb1.Transparency = 1*i
meshb1.Scale = Vector3.new(1+1*i,1+1*i,1+1*i)
end
shellb1.Parent=nil
end)) 
end
until firecount <= 0 or firemod.Parent == nil
firemod.Parent = nil
end))
end
--
Hitdeb = 1
end
end


function AoE(p,magnitude) 
	local c = game.Workspace:GetChildren();
	for i = 1, #c do
                local hum = c[i]:findFirstChild("Humanoid")
                if hum ~= nil and hum.Health ~= 0 then
		local head = c[i]:findFirstChild("Head");
                if head ~= nil then
		local mag = (head.Position - p).magnitude;
		if mag <= magnitude and c[i].Name ~= Character.Name then
		local foundd = false
		for ii = 1 , #AoETrue do
		if AoETrue[ii] == c[i].Name then

		foundd = true
		end
		end
		if foundd then

		end
		--
		if not foundd then
local critrandomizer = math.random(crtrate)
if critrandomizer ~= 1 then
local rndmdamage = math.random(mindamage,maxdamage)
damage(hum,rndmdamage,false)
elseif critrandomizer == 1 then
local rndmdamage = math.random(maxdamage,crtmaxdamage)
damage(hum,rndmdamage,true)
end
		table.insert(AoETrue,c[i].Name)
		end
		end
		end
                end
	end
		for ii = 1 , #AoETrue do
		table.remove(AoETrue,#AoETrue)
		end
end

--


--

function effect(Color,Ref,LP,P1)
local effectsmsh = Instance.new("BlockMesh")
effectsmsh.Scale = Vector3.new(1,1,1)
effectsmsh.Name = "Mesh"
local effectsg = Instance.new("Part")
effectsg.formFactor = 3
effectsg.CanCollide = false
effectsg.Name = "Eff"
effectsg.Locked = true
effectsg.Anchored = true
effectsg.Size = Vector3.new(0.2,1,0.2)
effectsg.Parent = swordholder
effectsmsh.Parent = effectsg
effectsg.BrickColor = BrickColor.new(Color)
effectsg.Reflectance = Ref
local point1 = P1
local mg = (LP.p - point1.p).magnitude
effectsg.Size = Vector3.new(0.2,mg,0.2)
effectsg.CFrame = CFrame.new((LP.p+point1.p)/2,point1.p) * CFrame.Angles(math.rad(90),0,0)
coroutine.resume(coroutine.create(function()
for i = 0 , 1 , 0.1 do
wait()
effectsg.Transparency = 1*i
effectsmsh.Scale = Vector3.new(1-1*i,1,1-1*i)
end
wait()
effectsg.Parent = nil
end))
end
--


con = nil


function dmgcnnct()
if con ~= nil then
con:disconnect()
Hitdeb = 0
end
con = prt11.Touched:connect(OT)
end

function dmgdc()
if con ~= nil then
con:disconnect()
Hitdeb = 0
end
end

function rptddmg(value,des,inc)
coroutine.resume(coroutine.create(function()
repeat
wait(inc)
Hitdeb = 0
until value == des
end))
end

function atktype(s,e)
coroutine.resume(coroutine.create(function ()
attacktype = e
wait(0.25)
attacktype = s
end))
end


function shoottrail(mouse)
local spreadvector = (Vector3.new(math.random(-spread,spread),math.random(-spread,spread),math.random(-spread,spread)) / 100) * (prt1.Position-mouse.Hit.p).magnitude/100
local dir = CFrame.new((prt1.Position+mouse.Hit.p)/2,mouse.Hit.p+spreadvector)
local hit,pos = rayCast(prt1.Position,dir.lookVector,10,Character)
local rangepos = range
local function drawtrail(From,To)
local effectsmsh = Instance.new("CylinderMesh")
effectsmsh.Scale = Vector3.new(1,1,1)
effectsmsh.Name = "Mesh"
local effectsg = Instance.new("Part")
effectsg.formFactor = 3
effectsg.CanCollide = false
effectsg.Name = "Eff"
effectsg.Locked = true
effectsg.Anchored = true
effectsg.Size = Vector3.new(0.2,0.2,0.2)
effectsg.Parent = swordholder
effectsmsh.Parent = effectsg
effectsg.BrickColor = arrowtrail
effectsg.Reflectance = 0.25
local LP = From
local point1 = To
local mg = (LP - point1).magnitude
effectsmsh.Scale = Vector3.new(1,mg*5,1)
effectsg.CFrame = CFrame.new((LP+point1)/2,point1) * CFrame.Angles(math.rad(90),0,0)
coroutine.resume(coroutine.create(function()
for i = 0 , 1 , 0.1 do
wait()
effectsg.Transparency = 1*i
effectsmsh.Scale = Vector3.new(1-1*i,mg*5,1-1*i)
end 
effectsg.Parent = nil 
end))
end
local newpos = prt1.Position
local inc = rangepower
repeat
wait() wait() 
rangepos = rangepos - 10
dir = dir * CFrame.Angles(math.rad(-1),0,0)
hit,pos = rayCast(newpos,dir.lookVector,inc,Character)
drawtrail(newpos,pos)
newpos = newpos + (dir.lookVector * inc)
if inc >= 20 then
inc = inc - 10
end
if hit ~= nil then
rangepos = 0
end
until rangepos <= 0
if hit ~= nil then
hs(Head,1)
local effectsmsh = Instance.new("SpecialMesh")
effectsmsh.MeshId = "http://www.roblox.com/asset/?id=15887356"
effectsmsh.TextureId = "http://www.roblox.com/asset/?id=15886781"
effectsmsh.Scale = Vector3.new(1,1,2.5)
local effectsg = Instance.new("Part")
effectsg.formFactor = 3
effectsg.CanCollide = false
effectsg.Name = "Arrow"
effectsg.Locked = true
effectsg.Size = Vector3.new(0.2,0.2,0.2)
effectsg.Parent = swordholder
effectsmsh.Parent = effectsg
effectsg.CFrame = CFrame.new(newpos,pos) + CFrame.new(newpos,pos).lookVector*2.5*2
local weld = Instance.new("Weld")
weld.Part0 = effectsg
weld.Part1 = hit
local HitPos = effectsg.Position + CFrame.new(newpos,pos).lookVector*0.75
local CJ = CFrame.new(HitPos)
local C0 = effectsg.CFrame:inverse() * CJ
local C1 = hit.CFrame:inverse() * CJ
weld.C0 = C0
weld.C1 = C1
weld.Parent = effectsg
coroutine.resume(coroutine.create(function()
wait(15)
effectsg.Parent = nil
end))
if hit.Parent:FindFirstChild("Humanoid") ~= nil then
hum = hit.Parent.Humanoid
ADmg(hum,hit)
elseif hit.Parent.Parent ~= nil and hit.Parent.Parent:FindFirstChild("Humanoid") ~= nil then
hum = hit.Parent.Parent.Humanoid
ADmg(hum,hit)
end
end
end


function Ready(mouse)
if Ammo <= 0 then Reload() return end
attack = true
local wt,t = faketors()
w9.Part1 = t
w8.Part1 = t
Character.Humanoid.WalkSpeed = 5
for i = 0 , 1 , 0.2 do
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(10+80*i),math.rad(0),math.rad(20+60*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1.5+1.5*i, 0.5, -1*i) * CFrame.Angles(math.rad(10+80*i),math.rad(0),math.rad(-20+110*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w1.C0 = CFrame.Angles(math.rad(-90), 0, math.rad(0)) * CFrame.new(0.25*i, 0, 0)
wt.C0 = CFrame.Angles(0, math.rad(-80*i), 0) 
w11.C0 = CFrame.Angles(math.rad(-90*i),0,math.rad(90-95*i)) * CFrame.new(0,1+1.5*i,0)
end
strmdl = "LeftArm"
for i = 0 , 1 , 0.25 do
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(80))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1.5*i, 0.5, -1) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(90))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w1.C0 = CFrame.Angles(math.rad(-90), 0, math.rad(0)) * CFrame.new(0.25, 0, 0)
wt.C0 = CFrame.Angles(0, math.rad(-80), 0) 
end
repeat
wait()
until not keyhold 
strmdl = "Bow"
as(Head,1)
--ss(Head,2)
for i = 1 , Ammo do
coroutine.resume(coroutine.create(function()
shoottrail(mouse)
end))
end
Ammo = 0
for i = 0 , 1 , 0.2 do
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90+10*i),math.rad(0),math.rad(80))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, -1) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(90-45*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(-45*i), 0, 0)
w1.C0 = CFrame.Angles(math.rad(-90), 0, math.rad(0)) * CFrame.new(0.25, 0, 0)
wt.C0 = CFrame.Angles(0, math.rad(-80+40*i), 0) 
end
for i = 0 , 1 , 0.2 do
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(100+10*i),math.rad(0),math.rad(80))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, -1) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(45))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(-45-10*i), 0, 0)
w1.C0 = CFrame.Angles(math.rad(-90), 0, math.rad(0)) * CFrame.new(0.25, 0, 0)
wt.C0 = CFrame.Angles(0, math.rad(-40+40*i), 0) 
end
strmdl = "TopArm"
w11.C0 = CFrame.Angles(0,0,math.rad(90)) * CFrame.new(0,1,0)
w9.Part1 = Torso
w8.Part1 = Torso
RW.Part0 = Torso
LW.Part0 = Torso
Torso.Transparency = 0
RHL.Part0 = Torso
LHL.Part0 = Torso
t.Parent = nil
Character.Humanoid.WalkSpeed = 14
for i = 0 , 1 , 0.2 do
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(110-100*i),math.rad(0),math.rad(80-60*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, -1+1*i) * CFrame.Angles(math.rad(90-80*i),math.rad(0),math.rad(45-65*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(-55+45*i), 0, 0)
w1.C0 = CFrame.Angles(math.rad(-90), 0, math.rad(0)) * CFrame.new(0.25-0.25*i, 0, 0)
end
attack = false
end





function Reload()
attack = true
for i = 0 , 1 , 0.2 do
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(10-20*i),math.rad(0),math.rad(20))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(10-55*i),math.rad(0),math.rad(-20-10*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w11.C0 = CFrame.Angles(math.rad(90*i),0,math.rad(90-15*i)) * CFrame.new(0,1,0)
end
AddAmmo(Ammoregen)
for i = 0 , 1 , 0.2 do
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(-10),math.rad(0),math.rad(20))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(-45),math.rad(0),math.rad(-30-10*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(0), 0, 0)
w11.C0 = CFrame.Angles(math.rad(90-90*i),math.rad(-90*i),math.rad(75)) * CFrame.new(0,1,0)
end
for i = 0 , 1 , 0.2 do
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(-10+20*i),math.rad(0),math.rad(20))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(-45+55*i),math.rad(0),math.rad(-40+20*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(0), 0, 0)
w11.C0 = CFrame.Angles(math.rad(0),math.rad(-90+90*i),math.rad(75+15*i)) * CFrame.new(0,1,0)
end

attack = false
end

function NormalArrows()
attack = true
strmdl = "Bow"
for i = 0 , 1 , 0.1 do
wait()
RW.C0 = CFrame.new(1.5-0.5*i, 0.5, -1*i) * CFrame.Angles(math.rad(10+80*i),math.rad(0),math.rad(20-65*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1.5+0.5*i, 0.5, -1*i) * CFrame.Angles(math.rad(10+80*i),math.rad(0),math.rad(-20+65*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(-25*i), 0, 0)
w1.C0 = CFrame.Angles(math.rad(-90), math.rad(0), math.rad(-45*i)) * CFrame.new(0, 0, 0)
Neck.C0 = neckcf0 * CFrame.Angles(math.rad(-10*i),0,0)
end
ars(Head,0.5)
for i = 0 , 1 , 0.2 do
wait()
RW.C0 = CFrame.new(1, 0.5, -1) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(-45))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(5*i), 0, 0)
LW.C0 = CFrame.new(-1, 0.5, -1) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(45))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(-25+30*i), 0, 0)
w1.C0 = CFrame.Angles(math.rad(-90), math.rad(0), math.rad(-45)) * CFrame.new(0, 0, 0)
Neck.C0 = neckcf0 * CFrame.Angles(math.rad(-10+15*i),0,0)
end
for i = 0 , 1 , 0.1 do
wait()
RW.C0 = CFrame.new(1+0.5*i, 0.5, -1+1*i) * CFrame.Angles(math.rad(90-80*i),math.rad(0),math.rad(-45+65*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(5-5*i), 0, 0)
LW.C0 = CFrame.new(-1-0.5*i, 0.5, -1+1*i) * CFrame.Angles(math.rad(90-80*i),math.rad(0),math.rad(45-65*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(5-5*i), 0, 0)
w1.C0 = CFrame.Angles(math.rad(-90), math.rad(0), math.rad(-45+45*i)) * CFrame.new(0, 0, 0)
Neck.C0 = neckcf0 * CFrame.Angles(math.rad(5-5*i),0,0)
end
CurrentArrow = "Normal"
arrowtrail = BrickColor.new("White")
strmdl = "TopArm"
attack = false
end

function PoisonArrows()
attack = true
strmdl = "Bow"
for i = 0 , 1 , 0.1 do
wait()
RW.C0 = CFrame.new(1.5-0.5*i, 0.5, -1*i) * CFrame.Angles(math.rad(10+80*i),math.rad(0),math.rad(20-65*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1.5+0.5*i, 0.5, -1*i) * CFrame.Angles(math.rad(10+80*i),math.rad(0),math.rad(-20+65*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(-25*i), 0, 0)
w1.C0 = CFrame.Angles(math.rad(-90), math.rad(0), math.rad(-45*i)) * CFrame.new(0, 0, 0)
Neck.C0 = neckcf0 * CFrame.Angles(math.rad(-10*i),0,0)
end
ars(Head,0.5)
for i = 0 , 1 , 0.2 do
wait()
RW.C0 = CFrame.new(1, 0.5, -1) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(-45))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(5*i), 0, 0)
LW.C0 = CFrame.new(-1, 0.5, -1) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(45))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(-25+30*i), 0, 0)
w1.C0 = CFrame.Angles(math.rad(-90), math.rad(0), math.rad(-45)) * CFrame.new(0, 0, 0)
Neck.C0 = neckcf0 * CFrame.Angles(math.rad(-10+15*i),0,0)
end
for i = 0 , 1 , 0.1 do
wait()
RW.C0 = CFrame.new(1+0.5*i, 0.5, -1+1*i) * CFrame.Angles(math.rad(90-80*i),math.rad(0),math.rad(-45+65*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(5-5*i), 0, 0)
LW.C0 = CFrame.new(-1-0.5*i, 0.5, -1+1*i) * CFrame.Angles(math.rad(90-80*i),math.rad(0),math.rad(45-65*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(5-5*i), 0, 0)
w1.C0 = CFrame.Angles(math.rad(-90), math.rad(0), math.rad(-45+45*i)) * CFrame.new(0, 0, 0)
Neck.C0 = neckcf0 * CFrame.Angles(math.rad(5-5*i),0,0)
end
CurrentArrow = "Poison"
arrowtrail = BrickColor.new("Bright violet")
strmdl = "TopArm"
attack = false
coroutine.resume(coroutine.create(function()
repeat
wait(0.25+0.75*math.random())
if Ammo ~= 0 then
local meshb1 = Instance.new("SpecialMesh")
meshb1.Scale = Vector3.new(1,1,1)
meshb1.MeshType = "Sphere"
local shellb1 = Instance.new("Part")
meshb1.Parent = shellb1
shellb1.Anchored = true
shellb1.formFactor = 3
shellb1.Size = Vector3.new(0.3,0.3,0.3)
shellb1.CFrame = CFrame.new((prt11.CFrame * CFrame.new(0,0,2)).p)
shellb1.Parent = swordholder
shellb1.Transparency = 0
shellb1.BrickColor = BrickColor.new("Alder")
shellb1.CanCollide = false
for i = 0 , 1 , 0.1 do
wait()
shellb1.CFrame = shellb1.CFrame + Vector3.new(0,-0.15,0)
shellb1.Transparency = 1*i
meshb1.Scale = Vector3.new(1,1+3*i,1)
end
shellb1.Parent=nil
end
until CurrentArrow ~= "Poison"
end))
end


function FireArrows()
attack = true
strmdl = "Bow"
for i = 0 , 1 , 0.1 do
wait()
RW.C0 = CFrame.new(1.5-0.5*i, 0.5, -1*i) * CFrame.Angles(math.rad(10+80*i),math.rad(0),math.rad(20-65*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1.5+0.5*i, 0.5, -1*i) * CFrame.Angles(math.rad(10+80*i),math.rad(0),math.rad(-20+65*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(-25*i), 0, 0)
w1.C0 = CFrame.Angles(math.rad(-90), math.rad(0), math.rad(-45*i)) * CFrame.new(0, 0, 0)
Neck.C0 = neckcf0 * CFrame.Angles(math.rad(-10*i),0,0)
end
ars(Head,0.5)
for i = 0 , 1 , 0.2 do
wait()
RW.C0 = CFrame.new(1, 0.5, -1) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(-45))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(5*i), 0, 0)
LW.C0 = CFrame.new(-1, 0.5, -1) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(45))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(-25+30*i), 0, 0)
w1.C0 = CFrame.Angles(math.rad(-90), math.rad(0), math.rad(-45)) * CFrame.new(0, 0, 0)
Neck.C0 = neckcf0 * CFrame.Angles(math.rad(-10+15*i),0,0)
end
for i = 0 , 1 , 0.1 do
wait()
RW.C0 = CFrame.new(1+0.5*i, 0.5, -1+1*i) * CFrame.Angles(math.rad(90-80*i),math.rad(0),math.rad(-45+65*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(5-5*i), 0, 0)
LW.C0 = CFrame.new(-1-0.5*i, 0.5, -1+1*i) * CFrame.Angles(math.rad(90-80*i),math.rad(0),math.rad(45-65*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(5-5*i), 0, 0)
w1.C0 = CFrame.Angles(math.rad(-90), math.rad(0), math.rad(-45+45*i)) * CFrame.new(0, 0, 0)
Neck.C0 = neckcf0 * CFrame.Angles(math.rad(5-5*i),0,0)
end
CurrentArrow = "Fire"
arrowtrail = BrickColor.new("Bright red")
strmdl = "TopArm"
attack = false
coroutine.resume(coroutine.create(function()
repeat
wait(0.1+0.15*math.random())
if Ammo ~= 0 then
coroutine.resume(coroutine.create(function()
local meshb1 = Instance.new("BlockMesh")
meshb1.Scale = Vector3.new(1,1,1)
local shellb1 = Instance.new("Part")
meshb1.Parent = shellb1
shellb1.Anchored = true
shellb1.formFactor = 3
shellb1.Size = Vector3.new(0.3,0.3,0.3) * (math.random(10,50)/10)
shellb1.CFrame = CFrame.new((prt11.CFrame * CFrame.new(0,0,2)).p) * CFrame.Angles(math.random(-100,100)/100,math.random(-100,100)/100,math.random(-100,100)/100)
shellb1.Parent = swordholder
shellb1.Transparency = 0
if math.random(1,2) == 1 then
shellb1.BrickColor = BrickColor.new("Bright red")
else
shellb1.BrickColor = BrickColor.new("Bright orange")
end
shellb1.CanCollide = false
local incre = math.random(100,500)/1000
for i = 0 , 1 , 0.1 do
wait()
shellb1.CFrame = shellb1.CFrame + Vector3.new(0,0.15+incre,0)
shellb1.Transparency = 1*i
meshb1.Scale = Vector3.new(1+1*i,1+1*i,1+1*i)
end
shellb1.Parent=nil
end))
end
until CurrentArrow ~= "Fire"
end))
end

function MeleeArrow()
if Ammo == 0 then return end
attack = true
ss(Head,1)
for i = 0 , 1 , 0.2 do
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(10+35*i),math.rad(0),math.rad(20+50*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(10+80*i),math.rad(0),math.rad(-20-90*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(90*i), 0)
w11.C0 = CFrame.Angles(math.rad(0),0,math.rad(90)) * CFrame.new(0,1,-1*i)
w11.C1 = CFrame.Angles(math.rad(0),0,math.rad(0))
end
prcntdmg(25)
dmgcnnct()
local lp = prt11.CFrame * CFrame.new(0,0,2)
for i = 0 , 1 , 0.25 do
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(45),math.rad(0),math.rad(70+40*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1.5+0.5*i, 0.5, -1*i) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(-110+155*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(90), 0)
w11.C0 = CFrame.Angles(math.rad(0),0,math.rad(90)) * CFrame.new(0,1,-1)
w11.C1 = CFrame.Angles(math.rad(0),0,math.rad(0)) 
local Point = prt11.CFrame * CFrame.new(0,0,2)
effect("White",0.5,lp,Point)
lp = Point
end
for i = 0 , 1 , 0.2 do
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(45),math.rad(0),math.rad(110+30*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1+0.5*i, 0.5, -1) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(45+45*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(90), 0)
w11.C0 = CFrame.Angles(math.rad(0),0,math.rad(90)) * CFrame.new(0,1,-1+1*i)
w11.C1 = CFrame.Angles(math.rad(90*i),0,math.rad(0))  * CFrame.new(0,1*i,2*i)
local Point = prt11.CFrame * CFrame.new(0,0,2)
effect("White",0.5,lp,Point)
lp = Point
end
for i = 0 , 1 , 0.1 do
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(45-35*i),math.rad(0),math.rad(140-120*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-0.5-1*i, 0.5, -1+1*i) * CFrame.Angles(math.rad(90-80*i),math.rad(0),math.rad(90-110*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(90-90*i), 0)
w11.C0 = CFrame.Angles(math.rad(0),0,math.rad(90)) * CFrame.new(0,1,0)
w11.C1 = CFrame.Angles(math.rad(90-90*i),0,math.rad(0))  * CFrame.new(0,1-1*i,2-2*i)
end
dmgdc()
returndmg()
attack = false
end

function returnwelds()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(10),math.rad(0),math.rad(20))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(10),math.rad(0),math.rad(-20))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w1.C0 = CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0)) * CFrame.new(0, 0, 0)
RWL.C0 = CFrame.new(1, -1, 0) * CFrame.Angles(0, 0, 0)
RWL.C1 = CFrame.new(0.5, 1, 0)
LWL.C0 = CFrame.new(-1, -1, 0) * CFrame.Angles(0, 0, 0)
LWL.C1 = CFrame.new(-0.5, 1, 0)
Neck.C0 = neckcf0
end

keyhold = false
function ob1d(mouse) 
hold = true 
if attack then return end
keyhold = true
Ready(mouse)
end 

function ob1u(mouse)  
keyhold = false
end 

buttonhold = false

function key(key,mouse)
if attack then return end
if key == "f" then
Reload()
end
if key == "q" then
MeleeArrow()
end
if key == "e" then
NormalArrows()
end
if key == "r" then
PoisonArrows()
end
if key == "t" then
FireArrows()
end
end


function key2(key) 
if key == "f" then
buttonhold = false
end
end 

function s(mouse) 
repeat wait() until not attack
repeat wait() until not ev.Value

mouse.Button1Down:connect(function() ob1d(mouse) end) 
mouse.Button1Up:connect(function() ob1u(mouse) end) 
mouse.KeyDown:connect(function(ke) key(ke,mouse) end) 
mouse.KeyUp:connect(key2) 
equipanim()
ev.Value = true
end 

function ds(mouse) 
keyhold = false
repeat wait() until not attack
repeat wait() until ev.Value

hideanim()
wait(0.1)
ev.Value = false
end 

Bin.Selected:connect(s) 
Bin.Deselected:connect(ds) 



if PlayerGui:findFirstChild("AmmoMeter") ~= nil then
PlayerGui:findFirstChild("AmmoMeter").Parent = nil
end


coroutine.resume(coroutine.create(function()
local SG = Instance.new("ScreenGui",PlayerGui)
SG.Name = "AmmoMeter"
local frame = Instance.new("Frame",SG)
frame.Size = UDim2.new(0.2,0,0.1,0)
frame.Position = UDim2.new(0.5-0.1,0,0.05,0)
frame.BackgroundColor3 = BrickColor.new("Brown").Color
local Ammotext = Instance.new("TextLabel",frame)
Ammotext.Size = UDim2.new(1,0,0.35,0)
Ammotext.BackgroundTransparency = 1
Ammotext.Text = "Ammo"
Ammotext.FontSize = "Size18"
Ammotext.TextColor3 = BrickColor.new("White").Color
local backing = Instance.new("ImageLabel",frame)
backing.Size = UDim2.new(0.8,0,0.45,0)
backing.Image = "http://www.roblox.com/asset/?id=48965808"
backing.Position = UDim2.new(0.1,0,0.45,0)
backing.BackgroundColor3 = BrickColor.new("Black").Color
local img = Instance.new("ImageLabel",backing)
img.Size = UDim2.new(1,0,1,0)
img.Image = "http://www.roblox.com/asset/?id=48965808"
img.Position = UDim2.new(0,0,0,0)
img.BackgroundColor3 = BrickColor.new("Brown").Color
local percent = Instance.new("TextLabel",backing)
percent.Size = UDim2.new(1,0,1,0)
percent.BackgroundTransparency = 1
percent.TextColor3 = BrickColor.new("White").Color
percent.Text = Ammo.."/".. MaxAmmo
percent.FontSize = "Size18"
local currentam = Instance.new("TextLabel",frame)
currentam.Size = UDim2.new(0.5,0,0.25,0)
currentam.Position = UDim2.new(0,0,1,0)
currentam.BackgroundTransparency = 0
currentam.BackgroundColor3 = BrickColor.new("Brown").Color
currentam.TextColor3 = BrickColor.new("White").Color
currentam.Text = CurrentArrow
currentam.FontSize = "Size18"
repeat
wait()
pcall(function()
img.Size = UDim2.new(1*(Ammo/MaxAmmo),0,1,0)
percent.Text = Ammo.."/".. MaxAmmo
currentam.Text = CurrentArrow
end)
until SG.Parent == nil
end))

Character.Humanoid.WalkSpeed = 14