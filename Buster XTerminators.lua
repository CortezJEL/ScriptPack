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
cam = workspace.CurrentCamera
ZTarget = nil
RocketTarget = nil

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

	Player=game:GetService('Players').LocalPlayer
	Character=Player.Character
	Mouse=Player:GetMouse()
	m=Instance.new('Model',Character)


	local function weldBetween(a, b)
	    local weldd = Instance.new("ManualWeld")
	    weldd.Part0 = a
	    weldd.Part1 = b
	    weldd.C0 = CFrame.new()
	    weldd.C1 = b.CFrame:inverse() * a.CFrame
	    weldd.Parent = a
	    return weldd
	end
	
	function swait(num)
    if num==0 or num==nil then
    game:service'RunService'.Heartbeat:wait(0)
    else
    for i=0,num do
    game:service'RunService'.Heartbeat:wait(0)
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

local TrailColor = ("Dark grey")
 
if len1 > 0.01 then
local w1 = Instance.new('WedgePart', m)
game:GetService("Debris"):AddItem(w1,5)
w1.Material = "SmoothPlastic"
w1.FormFactor = 'Custom'
w1.BrickColor = BrickColor.new(TrailColor)
w1.Transparency = 0
w1.Reflectance = 0
w1.Material = "SmoothPlastic"
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
w2.Material = "SmoothPlastic"
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

--Example: Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)


function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 

Damagefunc=function(hit,minim,maxim,knockback,Type,Property,Delay,KnockbackType,decreaseblock)
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
                local blocked=false
                local block=hit.Parent:findFirstChild("Block")
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
                ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5,BrickColor.new("Really red").Color)
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

HandleA=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","HandleA",Vector3.new(0.6209023, 0.354801297, 0.263675183))
HandleAweld=weld(m,Character["Right Arm"],HandleA,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.712272644, -0.658613205, -0.0450134277, 0, -0.499999821, -0.86602509, 0, -0.866024971, 0.499999881, -1, 0, 0))
BarrelA=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","BarrelA",Vector3.new(0.266101122, 0.263675213, 0.354801387))
BarrelAweld=weld(m,HandleA,BarrelA,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.65196991, -3.61154366, 0, 0.866024852, -0.499999672, -0, 0.499999672, 0.866024852, 0, -0, 0, 1))
mesh("CylinderMesh",BarrelA,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.336399972, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.798303008, 0.532201946, 0.709602773))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.47013092, -1.24765587, -4.57763672e-005, 0.866024852, -0.499999672, -0, 0.499999672, 0.866024852, 0, -0, 0, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.443501562, 0.263675213, 0.6209023))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.115322113, 0, 0.316355348, 0.866025031, -0.499999583, -0, -0, 0, 1, -0.499999583, -0.866025031, 0))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.672799945, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.354801446, 0.270536005, 0.354801387))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.651966095, -3.5117569, 0, 0.866024852, -0.499999672, -0, 0.499999672, 0.866024852, 0, -0, 0, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.263675183, 0.263675213, 0.798303008))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.647537231, 0.228363037, -0.582419634, -0.866024315, 0.499999404, 0, -0, 0, 0.999999642, 0.499999553, 0.866024554, 0))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 0.353219956, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.44350177, 1.86270726, 0.532202065))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.647533417, -2.71123719, 0, 0.866024852, -0.499999672, -0, 0.499999672, 0.866024852, 0, -0, 0, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.6209023, 0.263675213, 0.798303008))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.47013092, 0.223937988, -0.582418919, -0.866024315, 0.499999404, 0, -0, 0, 0.999999642, 0.499999553, 0.866024554, 0))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.353219956, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.798303008, 0.263675213, 0.798303008))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.47013092, 0.221725464, -0.582418919, -0.866024315, 0.499999404, 0, -0, 0, 0.999999642, 0.499999553, 0.866024554, 0))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.336399972, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.263675183, 0.263675213, 0.798303008))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.470134735, 0.228363037, -0.405021667, -0.866024315, 0.499999404, 0, -0, 0, 0.999999642, 0.499999553, 0.866024554, 0))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 0.353219956, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.263675183, 0.263675213, 0.798303008))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.470134735, 0.228363037, -0.759824157, -0.866024315, 0.499999404, 0, -0, 0, 0.999999642, 0.499999553, 0.866024554, 0))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 0.353219956, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.6209023, 0.263675213, 0.798303008))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.47013092, 0.223937988, -0.582418919, -0.866024315, 0.499999404, 0, -0, 0, 0.999999642, 0.499999553, 0.866024554, 0))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.353219956, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.263675183, 0.263675213, 0.798303008))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.292743683, 0.228363037, -0.582422733, -0.866024315, 0.499999404, 0, -0, 0, 0.999999642, 0.499999553, 0.866024554, 0))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 0.353219956, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.798303008, 0.263675213, 0.798303008))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.47013092, -0.22177124, -0.582418919, -0.866024315, 0.499999404, 0, -0, 0, 0.999999642, 0.499999553, 0.866024554, 0))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.336399972, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.263675183, 0.263675213, 0.798303008))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.470134735, -0.228408813, -0.405021667, -0.866024315, 0.499999404, 0, -0, 0, 0.999999642, 0.499999553, 0.866024554, 0))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 0.353219956, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.263675183, 0.263675213, 0.798303008))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.647537231, -0.228408813, -0.582419634, -0.866024315, 0.499999404, 0, -0, 0, 0.999999642, 0.499999553, 0.866024554, 0))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 0.353219956, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.263675183, 0.263675213, 0.798303008))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.292743683, -0.228408813, -0.582422733, -0.866024315, 0.499999404, 0, -0, 0, 0.999999642, 0.499999553, 0.866024554, 0))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 0.353219956, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.6209023, 0.263675213, 0.798303008))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.47013092, -0.223960876, -0.582418919, -0.866024315, 0.499999404, 0, -0, 0, 0.999999642, 0.499999553, 0.866024554, 0))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.353219956, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.263675183, 0.263675213, 0.798303008))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.470134735, -0.228408813, -0.759824157, -0.866024315, 0.499999404, 0, -0, 0, 0.999999642, 0.499999553, 0.866024554, 0))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 0.353219956, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.6209023, 0.263675213, 0.263675183))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00384521484, 0.00221633911, 0, 0.999999344, 0, -0, 0, 0.999999344, 0, -0, 0, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.672799945, 0.70644027))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.263675183, 0.266100973, 0.263675183))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.957988739, -0.493718386, -0.133056641, 0.866024852, -0.499999672, -0, 0.499999672, 0.866024852, 0, -0, 0, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.672799945, 1, 0.336399972))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.6209023, 0.263675213, 0.354801387))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.470127106, -0.094623208, 0, 0.866024852, -0.499999672, -0, 0.499999672, 0.866024852, 0, -0, 0, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.672799945, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.263675183, 0.798303008, 0.354801387))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.824935913, -0.582421541, 0, 0.866024852, -0.499999672, -0, 0.499999672, 0.866024852, 0, -0, 0, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.263675183, 0.798303068, 0.263675183))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.913650513, -0.582422614, 0, 0.866024852, -0.499999672, -0, 0.499999672, 0.866024852, 0, -0, 0, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 1, 0.672800243))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.263675183, 0.266100973, 0.263675183))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.957988739, -0.493718386, 0.133049011, 0.866024852, -0.499999672, -0, 0.499999672, 0.866024852, 0, -0, 0, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.672799945, 1, 0.336399972))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.354801267, 0.263675213, 0.354801387))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.306606293, 0, -0.00222206116, 0.999999583, 1.1920929e-007, -0, -0, 0, 1, 1.1920929e-007, -0.999999583, 0))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.672799945, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.354801267, 0.266100973, 0.363671392))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.514480591, -0.138983727, 0, 0.866024852, -0.499999672, -0, 0.499999672, 0.866024852, 0, -0, 0, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.263675183, 1.86270726, 0.263675183))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.869281769, -2.71124148, 0, 0.866024852, -0.499999672, -0, 0.499999672, 0.866024852, 0, -0, 0, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.672800481, 1, 0.672800243))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.354801297, 0.263675213, 0.263675183))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.306606293, 0, -0.00222206116, 0.999999583, 1.1920929e-007, -0, -0, 0, 1, 1.1920929e-007, -0.999999583, 0))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.706439912, 0.672800243))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.263675183, 1.86270726, 0.263675183))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.425792694, -2.71124005, 0, 0.866024852, -0.499999672, -0, 0.499999672, 0.866024852, 0, -0, 0, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.672800481, 1, 0.672800243))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.354801446, 0.443501711, 0.263675183))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.159671783, -3.33218336, 0, 0.866024852, -0.499999672, -0, 0.499999672, 0.866024852, 0, -0, 0, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.672800243))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.263675183, 0.266101062, 0.263675183))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.00234604, -3.33218288, 0, 0.866024852, -0.499999672, -0, 0.499999672, 0.866024852, 0, -0, 0, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 1, 0.672800243))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.354801446, 1.33050513, 0.263675183))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.337085724, -2.44513679, 0, 0.866024852, -0.499999672, -0, 0.499999672, 0.866024852, 0, -0, 0, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.672800243))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.798303068, 0.263675213, 0.354801387))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.47013092, -1.55811501, 0, 0.866024852, -0.499999672, -0, 0.499999672, 0.866024852, 0, -0, 0, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.336399972, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.263675183, 0.532201946, 0.354801387))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.824932098, -1.24765778, 0, 0.866024852, -0.499999672, -0, 0.499999672, 0.866024852, 0, -0, 0, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.6209023, 0.798303008, 0.354801387))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.470127106, -0.582418799, 0, 0.866024852, -0.499999672, -0, 0.499999672, 0.866024852, 0, -0, 0, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.263675183, 0.798303068, 0.263675183))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.913650513, -1.38070595, 0, 0.866024852, -0.499999672, -0, 0.499999672, 0.866024852, 0, -0, 0, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 1, 0.672800243))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.532202065, 0.263675213, 0.354801387))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.603176117, -1.69116795, 0, 0.866024852, -0.499999672, -0, 0.499999672, 0.866024852, 0, -0, 0, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.672800183, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.263675183, 0.443501592, 0.354801387))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.115318298, -1.29201102, 0, 0.866024852, -0.499999672, -0, 0.499999672, 0.866024852, 0, -0, 0, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.263675183, 0.354801297, 0.263675183))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.115318298, 0, 0.9815588, 0.866024911, -0.499999762, -0, -0, 0, 1, -0.499999762, -0.866024911, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 1, 0.672800183))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.263675183, 0.354801297, 0.263675183))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0709648132, 0, 0.981558442, 0.866024911, -0.499999762, -0, -0, 0, 1, -0.499999762, -0.866024911, 0))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.672799706, 1, 0.672800183))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.354801327, 0.263675213, 0.263675183))
Wedgeweld=weld(m,HandleA,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.824932098, -0.0946245193, -0, 0, 1, 0.866024911, -0.499999762, -0, 0.499999762, 0.866024911, 0))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.336399972, 0.672799885))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Wedge",Vector3.new(0.363671362, 0.263675213, 0.263675183))
Wedgeweld=weld(m,HandleA,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.425788879, 0.0384018421, 5.16191072e-008, -2.98023082e-008, -0.999999702, -0.866024613, 0.499999583, -5.96046448e-008, 0.499999762, 0.866024911, 0))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.672800004, 0.336399972))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Wedge",Vector3.new(0.363671362, 0.263675213, 0.263675183))
Wedgeweld=weld(m,HandleA,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.603176117, 0.0384008884, -0, 0, 1, 0.866024911, -0.499999762, -0, 0.499999762, 0.866024911, 0))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.672800004, 0.336399972))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.354801327, 0.354801297, 0.263675183))
Wedgeweld=weld(m,HandleA,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.337089539, 0.0383994579, 3.87143366e-008, -2.23517329e-008, -0.999999583, -0.866024613, 0.499999613, -4.47034836e-008, 0.499999762, 0.866024911, 0))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.336399972))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.263675183, 0.354801297, 0.354801297))
Wedgeweld=weld(m,HandleA,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.306602478, 0.17517662, 0, 0, -1, 0.999999583, 1.1920929e-007, -0, 1.1920929e-007, -0.999999583, 0))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.672799945, 1, 1))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.263675183, 0.354801297, 0.263675183))
Wedgeweld=weld(m,HandleA,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.159656525, -3.0217073, 4.16935109e-007, 5.17906784e-008, -0.999999404, -0.866022944, 0.500002921, -3.35181227e-007, 0.500002861, 0.866022885, 1.04308128e-007))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.672800004, 1, 0.672799945))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.263675183, 0.263675213, 0.263675183))
Wedgeweld=weld(m,HandleA,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -1.00234604, 3.55395985, -7.45057704e-009, -1.29047768e-008, -0.999999762, 0.866024911, -0.499999762, -0, -0.499999613, -0.866024792, 1.49011612e-008))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.672800004, 0.336399972, 0.672799885))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.263675183, 0.263675213, 0.263675183))
Wedgeweld=weld(m,HandleA,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -1.00234604, -3.11040449, -0, 0, 1, 0.866024911, -0.499999762, -0, 0.499999762, 0.866024911, 0))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.672800004, 0.336399972, 0.672799885))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.263675183, 0.263675213, 0.263675183))
Wedgeweld=weld(m,HandleA,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.869285583, -0.0946269035, -0, 0, 1, 0.866024911, -0.499999762, -0, 0.499999762, 0.866024911, 0))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.672800004, 0.672799945, 0.672799885))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.263675183, 0.263675213, 0.263675183))
Wedgeweld=weld(m,HandleA,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.133049011, -0.957988739, -0.272016048, -0, 0, 1, 0.866024911, -0.499999762, -0, 0.499999762, 0.866024911, 0))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 0.672799945, 0.672799885))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.263675183, 0.263675213, 0.263675183))
Wedgeweld=weld(m,HandleA,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.133056641, -0.957988739, -0.272016048, -0, 0, 1, 0.866024911, -0.499999762, -0, 0.499999762, 0.866024911, 0))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 0.672799945, 0.672799885))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.354801327, 0.266100973, 0.263675183))
Wedgeweld=weld(m,HandleA,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.204036713, 1.69116926, 7.38661754e-009, -1.06415222e-007, 0.999999702, -0.866022885, 0.500002861, 5.96046448e-008, -0.50000298, -0.866023242, -8.84652422e-008))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.672799945))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.354801327, 0.266100973, 0.263675183))
Wedgeweld=weld(m,HandleA,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.647533417, 0.038402319, -0, 0, 1, 0.866024911, -0.499999762, -0, 0.499999762, 0.866024911, 0))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.336399972))
mesh("BlockMesh",HandleA,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.672800243))

HandleB=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","HandleB",Vector3.new(0.6209023, 0.354801297, 0.263675183))
HandleBweld=weld(m,Character["Left Arm"],HandleB,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.712272644, -0.658613205, 0.044960022, 0, -0.499999821, -0.86602509, 0, -0.866024971, 0.499999881, -1, 0, 0))
BarrelB=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","BarrelB",Vector3.new(0.266101122, 0.263675213, 0.354801387))
BarrelBweld=weld(m,HandleB,BarrelB,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.65196991, -3.61154366, 0, 0.866024852, -0.499999672, -0, 0.499999672, 0.866024852, 0, -0, 0, 1))
mesh("CylinderMesh",BarrelB,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.336399972, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.798303008, 0.532201946, 0.709602773))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.47013092, -1.24765587, -4.57763672e-005, 0.866024852, -0.499999672, -0, 0.499999672, 0.866024852, 0, -0, 0, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.443501562, 0.263675213, 0.6209023))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.115322113, 0, 0.316355348, 0.866025031, -0.499999583, -0, -0, 0, 1, -0.499999583, -0.866025031, 0))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.672799945, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.354801446, 0.270536005, 0.354801387))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.651966095, -3.5117569, 0, 0.866024852, -0.499999672, -0, 0.499999672, 0.866024852, 0, -0, 0, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.263675183, 0.263675213, 0.798303008))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.647537231, 0.228363037, -0.582419634, -0.866024315, 0.499999404, 0, -0, 0, 0.999999642, 0.499999553, 0.866024554, 0))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 0.353219956, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.44350177, 1.86270726, 0.532202065))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.647533417, -2.71123719, 0, 0.866024852, -0.499999672, -0, 0.499999672, 0.866024852, 0, -0, 0, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.6209023, 0.263675213, 0.798303008))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.47013092, 0.223937988, -0.582418919, -0.866024315, 0.499999404, 0, -0, 0, 0.999999642, 0.499999553, 0.866024554, 0))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.353219956, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.798303008, 0.263675213, 0.798303008))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.47013092, 0.221725464, -0.582418919, -0.866024315, 0.499999404, 0, -0, 0, 0.999999642, 0.499999553, 0.866024554, 0))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.336399972, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.263675183, 0.263675213, 0.798303008))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.470134735, 0.228363037, -0.405021667, -0.866024315, 0.499999404, 0, -0, 0, 0.999999642, 0.499999553, 0.866024554, 0))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 0.353219956, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.263675183, 0.263675213, 0.798303008))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.470134735, 0.228363037, -0.759824157, -0.866024315, 0.499999404, 0, -0, 0, 0.999999642, 0.499999553, 0.866024554, 0))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 0.353219956, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.6209023, 0.263675213, 0.798303008))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.47013092, 0.223937988, -0.582418919, -0.866024315, 0.499999404, 0, -0, 0, 0.999999642, 0.499999553, 0.866024554, 0))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.353219956, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.263675183, 0.263675213, 0.798303008))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.292743683, 0.228363037, -0.582422733, -0.866024315, 0.499999404, 0, -0, 0, 0.999999642, 0.499999553, 0.866024554, 0))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 0.353219956, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.798303008, 0.263675213, 0.798303008))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.47013092, -0.22177124, -0.582418919, -0.866024315, 0.499999404, 0, -0, 0, 0.999999642, 0.499999553, 0.866024554, 0))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.336399972, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.263675183, 0.263675213, 0.798303008))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.470134735, -0.228408813, -0.405021667, -0.866024315, 0.499999404, 0, -0, 0, 0.999999642, 0.499999553, 0.866024554, 0))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 0.353219956, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.263675183, 0.263675213, 0.798303008))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.647537231, -0.228408813, -0.582419634, -0.866024315, 0.499999404, 0, -0, 0, 0.999999642, 0.499999553, 0.866024554, 0))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 0.353219956, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.263675183, 0.263675213, 0.798303008))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.292743683, -0.228408813, -0.582422733, -0.866024315, 0.499999404, 0, -0, 0, 0.999999642, 0.499999553, 0.866024554, 0))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 0.353219956, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.6209023, 0.263675213, 0.798303008))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.47013092, -0.223960876, -0.582418919, -0.866024315, 0.499999404, 0, -0, 0, 0.999999642, 0.499999553, 0.866024554, 0))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.353219956, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.263675183, 0.263675213, 0.798303008))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.470134735, -0.228408813, -0.759824157, -0.866024315, 0.499999404, 0, -0, 0, 0.999999642, 0.499999553, 0.866024554, 0))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 0.353219956, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.6209023, 0.263675213, 0.263675183))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00384521484, 0.00221633911, 0, 0.999999344, 0, -0, 0, 0.999999344, 0, -0, 0, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.672799945, 0.70644027))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.263675183, 0.266100973, 0.263675183))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.957988739, -0.493718386, -0.133056641, 0.866024852, -0.499999672, -0, 0.499999672, 0.866024852, 0, -0, 0, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.672799945, 1, 0.336399972))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.6209023, 0.263675213, 0.354801387))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.470127106, -0.094623208, 0, 0.866024852, -0.499999672, -0, 0.499999672, 0.866024852, 0, -0, 0, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.672799945, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.263675183, 0.798303008, 0.354801387))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.824935913, -0.582421541, 0, 0.866024852, -0.499999672, -0, 0.499999672, 0.866024852, 0, -0, 0, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.263675183, 0.798303068, 0.263675183))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.913650513, -0.582422614, 0, 0.866024852, -0.499999672, -0, 0.499999672, 0.866024852, 0, -0, 0, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 1, 0.672800243))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.263675183, 0.266100973, 0.263675183))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.957988739, -0.493718386, 0.133049011, 0.866024852, -0.499999672, -0, 0.499999672, 0.866024852, 0, -0, 0, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.672799945, 1, 0.336399972))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.354801267, 0.263675213, 0.354801387))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.306606293, 0, -0.00222206116, 0.999999583, 1.1920929e-007, -0, -0, 0, 1, 1.1920929e-007, -0.999999583, 0))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.672799945, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.354801267, 0.266100973, 0.363671392))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.514480591, -0.138983727, 0, 0.866024852, -0.499999672, -0, 0.499999672, 0.866024852, 0, -0, 0, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.263675183, 1.86270726, 0.263675183))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.869281769, -2.71124148, 0, 0.866024852, -0.499999672, -0, 0.499999672, 0.866024852, 0, -0, 0, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.672800481, 1, 0.672800243))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.354801297, 0.263675213, 0.263675183))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.306606293, 0, -0.00222206116, 0.999999583, 1.1920929e-007, -0, -0, 0, 1, 1.1920929e-007, -0.999999583, 0))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.706439912, 0.672800243))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.263675183, 1.86270726, 0.263675183))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.425792694, -2.71124005, 0, 0.866024852, -0.499999672, -0, 0.499999672, 0.866024852, 0, -0, 0, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.672800481, 1, 0.672800243))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.354801446, 0.443501711, 0.263675183))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.159671783, -3.33218336, 0, 0.866024852, -0.499999672, -0, 0.499999672, 0.866024852, 0, -0, 0, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.672800243))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.263675183, 0.266101062, 0.263675183))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.00234604, -3.33218288, 0, 0.866024852, -0.499999672, -0, 0.499999672, 0.866024852, 0, -0, 0, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 1, 0.672800243))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.354801446, 1.33050513, 0.263675183))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.337085724, -2.44513679, 0, 0.866024852, -0.499999672, -0, 0.499999672, 0.866024852, 0, -0, 0, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.672800243))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.798303068, 0.263675213, 0.354801387))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.47013092, -1.55811501, 0, 0.866024852, -0.499999672, -0, 0.499999672, 0.866024852, 0, -0, 0, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.336399972, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.263675183, 0.532201946, 0.354801387))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.824932098, -1.24765778, 0, 0.866024852, -0.499999672, -0, 0.499999672, 0.866024852, 0, -0, 0, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.6209023, 0.798303008, 0.354801387))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.470127106, -0.582418799, 0, 0.866024852, -0.499999672, -0, 0.499999672, 0.866024852, 0, -0, 0, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.263675183, 0.798303068, 0.263675183))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.913650513, -1.38070595, 0, 0.866024852, -0.499999672, -0, 0.499999672, 0.866024852, 0, -0, 0, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 1, 0.672800243))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.532202065, 0.263675213, 0.354801387))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.603176117, -1.69116795, 0, 0.866024852, -0.499999672, -0, 0.499999672, 0.866024852, 0, -0, 0, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.672800183, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.263675183, 0.443501592, 0.354801387))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.115318298, -1.29201102, 0, 0.866024852, -0.499999672, -0, 0.499999672, 0.866024852, 0, -0, 0, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.263675183, 0.354801297, 0.263675183))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.115318298, 0, 0.9815588, 0.866024911, -0.499999762, -0, -0, 0, 1, -0.499999762, -0.866024911, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 1, 0.672800183))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.263675183, 0.354801297, 0.263675183))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0709648132, 0, 0.981558442, 0.866024911, -0.499999762, -0, -0, 0, 1, -0.499999762, -0.866024911, 0))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.672799706, 1, 0.672800183))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.354801327, 0.263675213, 0.263675183))
Wedgeweld=weld(m,HandleB,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.824932098, -0.0946245193, -0, 0, 1, 0.866024911, -0.499999762, -0, 0.499999762, 0.866024911, 0))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.336399972, 0.672799885))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Wedge",Vector3.new(0.363671362, 0.263675213, 0.263675183))
Wedgeweld=weld(m,HandleB,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.425788879, 0.0384018421, 5.16191072e-008, -2.98023082e-008, -0.999999702, -0.866024613, 0.499999583, -5.96046448e-008, 0.499999762, 0.866024911, 0))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.672800004, 0.336399972))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Wedge",Vector3.new(0.363671362, 0.263675213, 0.263675183))
Wedgeweld=weld(m,HandleB,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.603176117, 0.0384008884, -0, 0, 1, 0.866024911, -0.499999762, -0, 0.499999762, 0.866024911, 0))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.672800004, 0.336399972))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.354801327, 0.354801297, 0.263675183))
Wedgeweld=weld(m,HandleB,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.337089539, 0.0383994579, 3.87143366e-008, -2.23517329e-008, -0.999999583, -0.866024613, 0.499999613, -4.47034836e-008, 0.499999762, 0.866024911, 0))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.336399972))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.263675183, 0.354801297, 0.354801297))
Wedgeweld=weld(m,HandleB,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.306602478, 0.17517662, 0, 0, -1, 0.999999583, 1.1920929e-007, -0, 1.1920929e-007, -0.999999583, 0))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.672799945, 1, 1))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.263675183, 0.354801297, 0.263675183))
Wedgeweld=weld(m,HandleB,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.159656525, -3.0217073, 4.16935109e-007, 5.17906784e-008, -0.999999404, -0.866022944, 0.500002921, -3.35181227e-007, 0.500002861, 0.866022885, 1.04308128e-007))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.672800004, 1, 0.672799945))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.263675183, 0.263675213, 0.263675183))
Wedgeweld=weld(m,HandleB,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -1.00234604, 3.55395985, -7.45057704e-009, -1.29047768e-008, -0.999999762, 0.866024911, -0.499999762, -0, -0.499999613, -0.866024792, 1.49011612e-008))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.672800004, 0.336399972, 0.672799885))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.263675183, 0.263675213, 0.263675183))
Wedgeweld=weld(m,HandleB,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -1.00234604, -3.11040449, -0, 0, 1, 0.866024911, -0.499999762, -0, 0.499999762, 0.866024911, 0))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.672800004, 0.336399972, 0.672799885))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.263675183, 0.263675213, 0.263675183))
Wedgeweld=weld(m,HandleB,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.869285583, -0.0946269035, -0, 0, 1, 0.866024911, -0.499999762, -0, 0.499999762, 0.866024911, 0))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.672800004, 0.672799945, 0.672799885))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.263675183, 0.263675213, 0.263675183))
Wedgeweld=weld(m,HandleB,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.133049011, -0.957988739, -0.272016048, -0, 0, 1, 0.866024911, -0.499999762, -0, 0.499999762, 0.866024911, 0))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 0.672799945, 0.672799885))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.263675183, 0.263675213, 0.263675183))
Wedgeweld=weld(m,HandleB,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.133056641, -0.957988739, -0.272016048, -0, 0, 1, 0.866024911, -0.499999762, -0, 0.499999762, 0.866024911, 0))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 0.672799945, 0.672799885))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.354801327, 0.266100973, 0.263675183))
Wedgeweld=weld(m,HandleB,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.204036713, 1.69116938, 7.38661754e-009, -1.06415222e-007, 0.999999702, -0.866022885, 0.500002861, 5.96046448e-008, -0.50000298, -0.866023242, -8.84652422e-008))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.672799945))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.354801327, 0.266100973, 0.263675183))
Wedgeweld=weld(m,HandleB,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.647533417, 0.038402319, -0, 0, 1, 0.866024911, -0.499999762, -0, 0.499999762, 0.866024911, 0))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.336399972))
mesh("BlockMesh",HandleB,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.672800243))

function effect(Color,Ref,LP,P1,returnn)
if LP==nil or P1==nil then return end
local effectsmsh=Instance.new("CylinderMesh")
effectsmsh.Scale=Vector3.new(0.2,1,0.2)
effectsmsh.Name="Mesh"
local effectsg=Instance.new("Part")
NoOutline(effectsg)
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
if not returnn then
table.insert(Effects,{effectsg,"Cylinder",0.2,0.01,0,0.01,effectsmsh})
end
end

function MagicCircle(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,"SmoothPlastic",0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
table.insert(Effects,{prt,"Cylinder",delay,x3,y3,z3,msh})
end
 
function MagicCylinder(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,"SmoothPlastic",0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("CylinderMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
table.insert(Effects,{prt,"Cylinder",delay,x3,y3,z3,msh})
end
 
function MagicHead(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,"SmoothPlastic",0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"Head","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
table.insert(Effects,{prt,"Cylinder",delay,x3,y3,z3,msh})
end

function LaserBarrage(Prt,Parent)
attack=true
--so("BeamLockon",Prt,1,1) 
local efprt=part(3,Parent,"SmoothPlastic",0,0.5,BrickColor.new("Really red"),"Effect",vt(0.2,0.2,0.2))
efprt.Anchored=true
local efmsh=mesh("CylinderMesh",efprt,"","",vt(0,0,0),vt(1,1,1))
local spread=vt((math.random(-1,0)+math.random())*0,(math.random(-1,0)+math.random())*0,(math.random(-1,0)+math.random())*0)*(Prt.Position-Mouse.Hit.p).magnitude/100
--spread=vt(0,0,0)
coroutine.resume(coroutine.create(function(Part,Mesh,Spreaded) 
game:GetService("Debris"):AddItem(Part,6)
local TheHit=Mouse.Hit.p
local MouseLook=cf((Prt.Position+TheHit)/2,TheHit+Spreaded)
local hit,pos = rayCast(Prt.Position,MouseLook.lookVector,1000,Parent)
so("Elec",Prt,0.2,1) 
local tefprt=part(3,workspace,"SmoothPlastic",0,1,BrickColor.new("Black"),"Effect",vt(0.2,0.2,0.2))
tefprt.CFrame=cf(pos)
MagicCircle(BrickColor.new("Really red"),cf(pos),0.5,0.5,0.5,0.5,0.5,0.5,0.04)
so("Elec",tefprt,0.3,1) 
game:GetService("Debris"):AddItem(tefprt,3)
Part.CFrame=CFrame.new((Prt.Position+pos)/2,pos)*angles(1.57,0,0) 
if(hit.Parent:findFirstChild("Humanoid")~= nil)then 
if hit.Parent:FindFirstChild("Humanoid") ~= nil and hit.Name ~= "Base" and hit.Parent.Name ~= Player.Name then 
hit.Parent.Humanoid:TakeDamage(40) 
end 
end 
local mag=(Prt.Position-pos).magnitude 
MagicCylinder(BrickColor.new("Really red"),Part.CFrame,1,mag*5,1,0.5,0,0.5,0.05)
Part.Parent=nil
end),efprt,efmsh,spread)
end

function MagniDamage(Part,magni,Dam)
for _,c in pairs(workspace:children()) do
local hum=c:findFirstChild("Humanoid")
if hum~=nil then
local head=c:findFirstChild("Torso")
if head~=nil then
local targ=head.Position-Part.Position
local mag=targ.magnitude
if mag<=magni and c.Name~=Player.Name then 
hum:TakeDamage(Dam)
end
end
end
end
end

function MagicRing(brickcolor,cframe,x1,y1,z1,x3,y3,z3)
local prt=part(3,workspace,"SmoothPlastic",0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=3270017",vt(0,0,0),vt(x1,y1,z1))
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

function attackone()
attack = true
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(90)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-90)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(90)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(50), math.rad(0), math.rad(-10)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(70),math.rad(10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-140),math.rad(10)),.3)
end
LaserBarrage(BarrelA,m)
so("http://www.roblox.com/asset/?id=203691837",BarrelA,1,1)
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(90)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-90)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 1, 0) * angles(math.rad(60), math.rad(60), math.rad(90)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(50), math.rad(0), math.rad(-30)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(70),math.rad(10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-140),math.rad(10)),.3)
end
attack = false
end

function attacktwo()
attack = true
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(-50)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(50)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(40), math.rad(0), math.rad(10)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-50)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(130),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-70),math.rad(0)),.3)
end
LaserBarrage(BarrelB,m)
so("http://www.roblox.com/asset/?id=203691837",BarrelB,1,1)
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(-50)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(50)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(40), math.rad(0), math.rad(40)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(130), math.rad(-30), math.rad(-50)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(130),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-70),math.rad(0)),.3)
end
attack = false
end

function CloseRangeBlast()
attack = true
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(60), math.rad(90)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(-60), math.rad(-90)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
HandleAweld.C0=clerp(HandleAweld.C0,cf(0,-0.5,0.5)*angles(math.rad(50),math.rad(0),math.rad(0)),.3)
HandleBweld.C0=clerp(HandleBweld.C0,cf(0,-0.5,0.5)*angles(math.rad(50),math.rad(0),math.rad(0)),.3)
end
local RefDamage=part("Custom",workspace,"SmoothPlastic",0,1,BrickColor.new("Really red"),"DamagePrt",Vector3.new(5,5,5))
RefDamage.Anchored = true
RefDamage.CFrame = Torso.CFrame*CFrame.new(0,0,-5)
MagniDamage(RefDamage,5,30)
for i=1,4 do
MagicRing(BrickColor.new("Really red"),Torso.CFrame*CFrame.new(0,0,-5)*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50)),.5,.5,.5,.6,.6,.6)
end
MagicCircle(BrickColor.new("Really red"),Torso.CFrame*CFrame.new(0,0,-5),1,1,1,2,2,2,0.05)
so("http://www.roblox.com/asset/?id=203691837",BarrelA,1,.9)
so("http://www.roblox.com/asset/?id=203691837",BarrelB,1,.9)
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(-20), math.rad(90)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(20), math.rad(-90)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
HandleAweld.C0=clerp(HandleAweld.C0,cf(0,0,0)*angles(math.rad(-50),math.rad(0),math.rad(0)),.3)
HandleBweld.C0=clerp(HandleBweld.C0,cf(0,0,0)*angles(math.rad(-50),math.rad(0),math.rad(0)),.3)
end
attack = false
RefDamage:remove()
end

function HolyShitBulletDive()
attack = true
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(50)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-50)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
HandleAweld.C0=clerp(HandleAweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
HandleBweld.C0=clerp(HandleBweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
end
Humanoid.Jump = true
Humanoid.WalkSpeed= 100
for i = 0,1,0.5 do
swait()
for i = 0,1,0.1 do
swait()
so("http://www.roblox.com/asset/?id=203691837",BarrelA,1,.9)
so("http://www.roblox.com/asset/?id=203691837",BarrelB,1,.9)
local RefDamage=part("Custom",workspace,"SmoothPlastic",0,1,BrickColor.new("Really red"),"DamagePrt",Vector3.new(5,5,5))
RefDamage.Anchored = true
RefDamage.CFrame = Torso.CFrame*CFrame.new(0,0,-5)
MagniDamage(RefDamage,5,30)
MagicRing(BrickColor.new("Really red"),Torso.CFrame*CFrame.new(0,0,-5)*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50)),.5,.5,.5,.6,.6,.6)
MagicCircle(BrickColor.new("Really red"),Torso.CFrame*CFrame.new(0,0,-5),1,1,1,2,2,2,0.05)
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,3)* angles(math.rad(90),math.rad(0),6*i),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(-10), math.rad(90)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(-10), math.rad(-90)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(20)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(20)),.3)
HandleAweld.C0=clerp(HandleAweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
HandleBweld.C0=clerp(HandleBweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
RefDamage:remove()
end
end
Humanoid.WalkSpeed = 16
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
CloseRangeBlast()
elseif attack == false and k == 'e' then
HolyShitBulletDive()
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
Anim="Jump"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(30)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-30)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(10)),.3)
HandleAweld.C0=clerp(HandleAweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
HandleBweld.C0=clerp(HandleBweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
Anim="Fall"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(20),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(50)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-50)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(30)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(30)),.3)
HandleAweld.C0=clerp(HandleAweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
HandleBweld.C0=clerp(HandleBweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
end
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(20)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(-20)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.4, 0.5, 0) * angles(math.rad(40), math.rad(0), math.rad(20)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.4, 0.5, 0) * angles(math.rad(40), math.rad(0), math.rad(-20)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(70),math.rad(5)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(5)),.3)
HandleAweld.C0=clerp(HandleAweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
HandleBweld.C0=clerp(HandleBweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
end
elseif torvel>2 and hitfloor~=nil then
Anim="Walk"
if attack==false then
change=3
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(20),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(60), math.rad(0), math.rad(10)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(60), math.rad(0), math.rad(-10)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(10)),.3)
HandleAweld.C0=clerp(HandleAweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
HandleBweld.C0=clerp(HandleBweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
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
if Thing[2]=="DecreaseStat" then
Thing[5]=Thing[5]-1
if Thing[5]<=0 then
if Thing[1]:findFirstChild("Stats")~=nil then
Thing[1].Stats[Thing[3]].Value=Thing[1].Stats[Thing[3]].Value+Thing[4]
end
table.remove(Effects,e)
end
end
if Thing[2]=="Shoot" then
local Look=Thing[1]
local hit,pos = rayCast(Thing[4],Look,20,m)
local mag=(Thing[4]-pos).magnitude 
MagicHead(BrickColor.new("Really red"),CFrame.new((Thing[4]+pos)/2,pos)*angles(1.57,0,0),1,mag*5,1,.5,0,.5,0.1)
Thing[4]=Thing[4]+(Look*20)
Thing[3]=Thing[3]-1
if hit~=nil then
Thing[3]=0
if Thing[8]==1 then
Damagefunc(hit,Thing[5],Thing[6],Thing[7],"Normal",RootPart,0,2,math.random(1,5),nil,nil,true)
elseif Thing[8]==2 then
Damagefunc(hit,Thing[5],Thing[6],Thing[7],"NormalDecreaseMvmt1",RootPart,0,2,math.random(1,5),nil,nil,true)
end
ref=part(3,workspace,"SmoothPlastic",0,1,BrickColor.new("Really red"),"Reference",vt())
ref.Anchored=true
ref.CFrame=cf(pos)
MagicCircle(BrickColor.new("Lime green"),cf(pos),5,5,5,1,1,1,0.03)
game:GetService("Debris"):AddItem(ref,1)
end
if Thing[3]<=0 then
table.remove(Effects,e)
end
end
if Thing[2]=="CylinderClang" then
if Thing[3]<=1 then
Thing[1].CFrame=Thing[1].CFrame*CFrame.new(0,2.5*Thing[5],0)*CFrame.fromEulerAnglesXYZ(Thing[6],0,0) 
Thing[7]=Thing[1].CFrame
effect("New Yeller",0,Thing[8],Thing[7])
Thing[8]=Thing[7]
Thing[3]=Thing[3]+Thing[4]
else
Part.Parent=nil
table.remove(Effects,e)
end
--[[Mesh=Thing[7]
Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]]
end
if Thing[2]~="Shoot" and Thing[2]~="DecreaseStat" then
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
--end
end
end
end
end