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
ZTarget = nil
RocketTarget = nil
player=nil 
mana=0
local Mode="Gun"

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

local TrailColor = ("Really red")
 
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
                ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, BrickColor.new("Bright red").Color)
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

handle=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Handle",Vector3.new(0.800000012, 0.600000024, 0.400000036))
handleweld=weld(m,Character["Right Arm"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0999984741, 0.00293731689, -0.997625113, 0.999999762, 0, 0, -0, -2.98023224e-008, 1, 0, -0.999999642, -2.98023206e-008))
mesh("CylinderMesh",handle,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
BarrelA=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Really black","BarrelA",Vector3.new(0.400000006, 0.400000036, 0.200000003))
BarrelAweld=weld(m,handle,BarrelA,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.81469727e-006, -0.501502991, 0.70533812, 0.999999762, 8.9397489e-013, -4.26325811e-014, 8.93974673e-013, -1, -7.63833441e-014, -4.2632554e-014, 7.81597009e-014, -0.999999762))
mesh("BlockMesh",BarrelA,"","",Vector3.new(0, 0, 0),Vector3.new(0.170000017, 1, 2))
BarrelB=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Really black","BarrelB",Vector3.new(0.400000006, 0.400000036, 0.200000003))
BarrelBweld=weld(m,handle,BarrelB,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.81469727e-006, 0.498413086, 0.705340028, 0.999999762, 8.93975215e-013, -4.26325811e-014, 8.93974998e-013, -1, -7.99360578e-014, -4.2632554e-014, 8.17124146e-014, -0.999999762))
mesh("BlockMesh",BarrelB,"","",Vector3.new(0, 0, 0),Vector3.new(0.170000017, 1, 2))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Bright red","Part",Vector3.new(0.200000003, 0.600000024, 2.60000038))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.701442719, -0.600021362, 2.49932575, 0.999998927, 1.87752244e-006, -0.000799447123, -1.84774353e-006, 0.999999166, -1.93715053e-007, 0.000799283211, 2.23561045e-007, 0.999998808))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.800000012, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.81469727e-006, 0.405347705, 0.497962952, 0.999999285, -0, 0, 0, 1.49011647e-008, -0.999999046, -0, 0.999999762, 1.49011594e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.800000012, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.81469727e-006, 0.405347705, 0.501495361, 0.999999285, -0, 0, 0, 1.49011647e-008, -0.999999046, -0, 0.999999762, 1.49011594e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.170000017, 1, 2))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Bright red","Part",Vector3.new(0.200000003, 1.00000012, 1.20000029))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.700000763, -3.05175781e-005, -3.76701355e-005, 0.999999762, -0, 0, -0, 1, 1.77635684e-015, 0, -3.55271368e-015, 0.999999762))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Bright red","Part",Vector3.new(0.200000003, 2.20000005, 0.599999964))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.700000763, -3.05175781e-005, 0.899943829, 0.999999762, -0, 0, -0, 1, 1.77635684e-015, 0, -3.55271368e-015, 0.999999762))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.20000005, 0.200000003, 1.20000005))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.599975586, 3.38554382e-005, 0.999999762, -0, 0, -0, 1, 1.77635684e-015, 0, -3.55271368e-015, 0.999999762))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Part",Vector3.new(0.200000003, 1.79999995, 0.599999964))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.709243774, -2.28881836e-005, 0.899943829, 0.999999762, -0, 0, -0, 1, 1.77635684e-015, 0, -3.55271368e-015, 0.999999762))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Bright red","Part",Vector3.new(0.800000012, 0.200000003, 0.400000036))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.399993896, -5.96046448e-006, 0.999999762, -0, 0, -0, 1, -1.77635684e-015, 0, 0, 0.999999762))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Part",Vector3.new(0.200000003, 0.800000012, 0.99999994))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.713443756, -0.500030518, 1.69926405, 0.999998927, -2.26500038e-006, -0.000799596135, 2.27987721e-006, 0.999999225, 1.93017172e-007, 0.000799476926, -2.231682e-007, 0.999998927))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Bright red","Part",Vector3.new(0.200000003, 0.400000006, 1.20000017))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.700153351, -0.700019836, 0.000669956207, -0.999999106, 1.87757018e-006, 0.000799469941, 1.84774353e-006, 0.999999166, 1.34110437e-007, -0.000799469592, 1.63956443e-007, -0.999999166))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Bright red","Part",Vector3.new(0.200000003, 0.600000083, 2.60000038))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.698387146, -0.599975586, 2.50042844, -0.999998689, -1.90737251e-006, -0.000799447123, 1.90734818e-006, -0.999998927, -1.34110465e-007, -0.000799282978, -1.64014665e-007, 0.999998808))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Part",Vector3.new(0.200000003, 0.600000024, 2.5999999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.709453583, -0.399978638, 2.50040436, -0.999999166, 2.30715773e-006, -0.000799596135, -2.33717014e-006, -0.999999523, 2.5262176e-007, -0.000799476926, 2.82754144e-007, 0.999998927))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Bright red","Part",Vector3.new(0.200000003, 0.600000024, 0.600000024))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.700153351, -0.80002594, -0.2993083, -0.999999106, 1.87757018e-006, 0.000799469941, 1.84774353e-006, 0.999999166, 1.34110437e-007, -0.000799469592, 1.63956443e-007, -0.999999166))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Bright red","Part",Vector3.new(0.200000003, 0.600000024, 0.599999964))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.70142746, -0.80002594, 1.49932528, 0.999998927, 1.87752244e-006, -0.000799447123, -1.84774353e-006, 0.999999166, -1.93715053e-007, 0.000799283211, 2.23561045e-007, 0.999998808))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Bright red","Part",Vector3.new(0.200000003, 0.400000036, 1.20000005))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.699836731, -0.69997406, -0.000449538231, 0.999999344, -1.89480204e-006, 0.000799469941, -1.92476682e-006, -0.999999523, 1.93715039e-007, 0.000799469766, -2.23517404e-007, -0.999999166))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.99999994, 0.200000003, 2))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0999984741, 0.599975586, 0.999940634, 0.999999762, -0, 0, -0, 1, 1.77635684e-015, 0, -3.55271368e-015, 0.999999762))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.40000045, 0.200000003, 1.20000005))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.05175781e-005, -0.000755310059, 5.96046448e-005, -1.48553302e-013, -0.999995828, 2.98021838e-008, -0.999999762, -1.503297e-013, -2.98021909e-008, 2.98023295e-008, -2.9802214e-008, -0.999995589))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.285999984, 1.01199996))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Bright red","Part",Vector3.new(0.200000003, 0.600000024, 0.599999964))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.698394775, -0.799972534, 1.50044394, -0.999998689, -1.90737251e-006, -0.000799447123, 1.90734818e-006, -0.999998927, -1.34110465e-007, -0.000799282978, -1.64014665e-007, 0.999998808))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.800000012, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.81469727e-006, 0.405347705, -0.502029419, 0.999999285, -0, 0, 0, 1.49011647e-008, -0.999999046, -0, 0.999999762, 1.49011594e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.20000005, 0.400000006, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.39996767, 0.599975586, 0.999999762, -0, 0, 0, 1.49011647e-008, -0.999999523, -0, 0.999999762, 1.49011594e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Bright red","Part",Vector3.new(0.200000003, 0.600000024, 0.600000024))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.699840546, -0.799964905, -0.300427675, 0.999999344, -1.89480204e-006, 0.000799469941, -1.92476682e-006, -0.999999523, 1.93715039e-007, 0.000799469766, -2.23517404e-007, -0.999999166))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Bright red","Part",Vector3.new(0.200000003, 0.400000006, 1.80000019))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.195159912, -0.900024414, 0.899938345, 0.999999762, -0, 0, -0, 1, 1.77635684e-015, 0, -3.55271368e-015, 0.999999762))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Bright red","Part",Vector3.new(0.200000003, 0.400000006, 0.400000036))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.194999695, -0.900024414, 0.200763583, -0.999999106, 1.87757018e-006, 0.000799469941, 1.84774353e-006, 0.999999166, 1.34110437e-007, -0.000799469592, 1.63956443e-007, -0.999999166))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Bright red","Part",Vector3.new(1.20000005, 0.800000012, 0.400000006))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.39996767, 0.499969482, 0.999999642, -0, 0, 0, 1.49011647e-008, -0.999999404, -0, 0.999999762, 1.49011594e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Bright red","Part",Vector3.new(0.200000003, 0.400000006, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.203845978, -0.899963379, 1.90046763, 0.99999851, -1.38333075e-006, 0.000811993901, 1.25192548e-006, 0.999998987, 9.15403871e-006, -0.00081211311, -9.18428123e-006, 0.999998808))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Part",Vector3.new(0.200000003, 0.800000012, 0.999999881))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.709457397, -0.499977112, 1.70040178, -0.999999166, 2.30715773e-006, -0.000799596135, -2.33717014e-006, -0.999999523, 2.5262176e-007, -0.000799476926, 2.82754144e-007, 0.999998927))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.800000012, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.405341506, -0.502037048, 0.999999285, -0, 0, 0, 1.49011647e-008, -0.999999046, -0, 0.999999762, 1.49011594e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.170000017, 1, 2))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Part",Vector3.new(0.200000003, 0.600000143, 1.21000028))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.708374023, -3.05175781e-005, -0.00504338741, 0.999999523, -0, 0, -0, 1, 1.77635684e-015, 0, -3.55271368e-015, 0.999999523))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Part",Vector3.new(0.200000003, 0.400000006, 1.20000005))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.709457397, -0.500030518, 0.000697374344, -0.999999166, 1.89247135e-006, 0.000799469941, 1.86264469e-006, 0.999999225, 1.34110437e-007, -0.000799469533, 1.63927339e-007, -0.999999166))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.20000005, 0.400000006, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.39996767, -0.600021362, 0.999999762, -0, 0, 0, 1.49011647e-008, -0.999999523, -0, 0.999999762, 1.49011594e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Bright red","Part",Vector3.new(0.200000003, 0.400000006, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.196155548, -0.899963379, 1.90047097, 0.99999851, -1.38333075e-006, 0.000811993901, 1.25192548e-006, 0.999998987, 9.15403871e-006, -0.00081211311, -9.18428123e-006, 0.999998808))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Part",Vector3.new(0.200000003, 0.600000024, 2.5999999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.713447571, -0.400032043, 2.49926639, 0.999998927, -2.26500038e-006, -0.000799596135, 2.27987721e-006, 0.999999225, 1.93017172e-007, 0.000799476926, -2.231682e-007, 0.999998927))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 1.4000001, 2))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.5, -3.05175781e-005, 0.999940634, 0.999999762, -0, 0, -0, 1, 1.77635684e-015, 0, -3.55271368e-015, 0.999999762))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Part",Vector3.new(0.200000003, 0.400000006, 1.20000005))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.709461212, -0.499969482, -0.000437021255, 0.999999344, -1.89480204e-006, 0.000799469941, -1.92476682e-006, -0.999999523, 1.93715039e-007, 0.000799469766, -2.23517404e-007, -0.999999166))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.20000005, 0.200000003, 1.20000005))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.600028992, 3.38554382e-005, 0.999999762, -0, 0, -0, 1, 1.77635684e-015, 0, -3.55271368e-015, 0.999999762))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Bright red","Part",Vector3.new(1.20000005, 0.800000012, 0.400000006))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.39996767, -0.500030518, 0.999999642, -0, 0, 0, 1.49011647e-008, -0.999999404, -0, 0.999999762, 1.49011594e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Part",Vector3.new(1.40000045, 0.200000018, 1.20000005))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.52587891e-005, -0.000755310059, 6.81877136e-005, 8.88178631e-016, -1, 2.98023206e-008, -0.999999762, -1.77635769e-015, -2.98023224e-008, 2.98023224e-008, -2.98023259e-008, -0.999999762))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Bright red","Part",Vector3.new(0.200000003, 0.400000006, 1.80000019))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.190341949, -0.900024414, 0.899938345, 0.999999762, -0, 0, -0, 1, 1.77635684e-015, 0, -3.55271368e-015, 0.999999762))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Bright red","Part",Vector3.new(0.800000012, 0.200000003, 0.400000036))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.400001526, -5.96046448e-006, 0.999999762, -0, 0, -0, 1, -1.77635684e-015, 0, 0, 0.999999762))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Bright red","Part",Vector3.new(0.200000003, 0.400000006, 0.400000036))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.190494537, -0.900024414, 0.200588226, -0.999999106, 1.87757018e-006, 0.000799469941, 1.84774353e-006, 0.999999166, 1.34110437e-007, -0.000799469592, 1.63956443e-007, -0.999999166))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Part",Vector3.new(0.200000003, 0.600000024, 0.600000024))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.709449768, -0.600021362, -0.299300909, -0.999999166, 1.89247135e-006, 0.000799469941, 1.86264469e-006, 0.999999225, 1.34110437e-007, -0.000799469533, 1.63927339e-007, -0.999999166))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Part",Vector3.new(0.200000003, 0.200000152, 2.61000037))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.708377838, 2.28881836e-005, -2.50490212, 0.999999642, -0, 0, 0, -0.999999702, -4.470348e-008, 0, 2.98023295e-008, -0.999999344))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Part",Vector3.new(0.200000003, 0.600000024, 0.600000024))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.709445953, -0.599967957, -0.300435305, 0.999999344, -1.89480204e-006, 0.000799469941, -1.92476682e-006, -0.999999523, 1.93715039e-007, 0.000799469766, -2.23517404e-007, -0.999999166))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1, 0.200000003, 2))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0999984741, -0.600021362, 0.999940634, 0.999999762, -0, 0, -0, 1, 1.77635684e-015, 0, -3.55271368e-015, 0.999999762))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Bright red","Part",Vector3.new(0.200000003, 0.600000143, 2.60000014))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.700000763, -3.05175781e-005, 2.49992704, 0.999999762, -0, 0, -0, 1, 1.77635684e-015, 0, -3.55271368e-015, 0.999999762))

BladeHandle=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","BladeHandle",Vector3.new(0.200000003, 1, 3.39999986))
BladeHandleweld=weld(m,Character["Right Arm"],BladeHandle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0872383118, -1.20300293, 0.302297354, 1, -2.21671375e-008, 7.04762897e-008, -7.04762684e-008, 2.98023188e-008, 0.999999404, -2.2167157e-008, -0.999999285, 2.98023224e-008))
Hitbox=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.20000000298023,1,"Really red","Hitbox",Vector3.new(0.200000003, 4.79999971, 1))
Hitboxweld=weld(m,BladeHandle,Hitbox,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.699994326, 0, 1, -9.99836402e-007, 1.80018773e-007, -1.80019143e-007, 1.49011647e-008, 0.999998808, -9.99837425e-007, -0.999998808, 1.49011719e-008))
BladePart=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really red","BladePart",Vector3.new(0.220000014, 0.200000003, 3.4000001))
BladePartweld=weld(m,BladeHandle,BladePart,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00135803223, -0.393920898, -0.000129699707, -0.999998927, 2.05645279e-006, 0.000802798022, -2.0555824e-006, -0.999997914, 3.17394552e-006, 0.000802962692, 3.11428425e-006, 0.999998093))
BladePart=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really red","BladePart",Vector3.new(0.200000003, 0.220000014, 0.800000072))
BladePartweld=weld(m,BladeHandle,BladePart,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.399986267, -5.7220459e-006, 1.70002365, 1.42108547e-014, -0.999998808, -1.77635684e-015, -1, 2.13162821e-014, -2.98022744e-008, 2.98023828e-008, -3.55271368e-015, -0.999998808))
mesh("CylinderMesh",BladePart,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
BladePart=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really red","BladePart",Vector3.new(0.200000003, 0.220000014, 0.800000072))
BladePartweld=weld(m,BladeHandle,BladePart,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.400005341, -5.7220459e-006, 1.70001566, 4.33431069e-013, -0.999998093, 1.63424829e-013, -1, -9.23705556e-014, -2.98015639e-008, 2.98019547e-008, 2.14939178e-013, -0.999998093))
mesh("CylinderMesh",BladePart,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
BladePart=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really red","BladePart",Vector3.new(0.220000014, 0.200000003, 0.399999976))
BladePartweld=weld(m,BladeHandle,BladePart,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00168228149, -0.399024963, 1.89990211, 0.999998748, -2.1309047e-006, 0.000802797964, 2.13086582e-006, 0.999997854, 3.29315458e-006, -0.000802962575, -3.21859238e-006, 0.999998093))
mesh("SpecialMesh",BladePart,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
BladePart=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really red","BladePart",Vector3.new(0.220000014, 0.200000003, 3.4000001))
BladePartweld=weld(m,BladeHandle,BladePart,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00168037415, -0.399391174, -0.000123500824, 0.999998748, -2.1309047e-006, 0.000802797964, 2.13086582e-006, 0.999997854, 3.29315458e-006, -0.000802962575, -3.21859238e-006, 0.999998093))
BladePart=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really red","BladePart",Vector3.new(0.220000014, 0.200000003, 0.399999976))
BladePartweld=weld(m,BladeHandle,BladePart,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00135612488, -0.39358139, 1.89990449, -0.999998927, 2.05645279e-006, 0.000802798022, -2.0555824e-006, -0.999997914, 3.17394552e-006, 0.000802962692, 3.11428425e-006, 0.999998093))
mesh("SpecialMesh",BladePart,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
BladePart=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","BladePart",Vector3.new(0.200000003, 0.520000041, 1.39999998))
BladePartweld=weld(m,BladeHandle,BladePart,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00136566162, -0.239994049, 2.3998909, 0.999999166, -1.95434222e-006, -0.000799282745, 1.92285847e-006, 0.999998212, -1.86264401e-006, 0.000799447356, 2.07120365e-006, 0.999998033))
mesh("SpecialMesh",BladePart,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
BladePart=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","BladePart",Vector3.new(1.00000012, 0.200000003, 1.00000012))
BladePartweld=weld(m,BladeHandle,BladePart,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.62939453e-006, -5.7220459e-006, 1.60001981, 3.26849658e-013, -0.999999404, -3.01980663e-014, -1, -3.05533376e-013, -2.98017593e-008, 2.98018055e-008, 2.84217094e-014, -0.999999404))
mesh("CylinderMesh",BladePart,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
BladePart=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","BladePart",Vector3.new(0.200000003, 0.479999989, 1.39999998))
BladePartweld=weld(m,BladeHandle,BladePart,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00135612488, -0.260002136, 2.39991736, -0.999998927, 2.05645279e-006, 0.000802798022, -2.0555824e-006, -0.999997914, 3.17394552e-006, 0.000802962692, 3.11428425e-006, 0.999998093))
mesh("SpecialMesh",BladePart,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
-------------------------------------------------------------------------------------- ERAGON UNIT -------------------------------------------------------
HandleA=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Really black","HandleA",Vector3.new(1, 1, 0.800000072))
HandleAweld=weld(m,Character["Right Arm"],HandleA,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.52587891e-005, 0, -9.05990601e-006, -5.05673892e-010, -9.23196908e-010, 0.999993324, 0.999993324, -1.47900669e-008, 5.04537023e-010, 1.46751713e-008, 0.999992251, 9.21580978e-010))
Barrel1A=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"White","Barrel1A",Vector3.new(0.400000006, 0.200000003, 0.200000003))
Barrel1Aweld=weld(m,HandleA,Barrel1A,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.699571609, -1.90000951, -0.2003479, 7.91768434e-006, 0.999986649, 1.00914167e-005, 5.66241306e-006, 1.00914676e-005, -1, -0.999986649, 7.91774346e-006, -5.66240578e-006))
Barrel2A=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"White","Barrel2A",Vector3.new(0.400000006, 0.200000003, 0.400000006))
Barrel2Aweld=weld(m,HandleA,Barrel2A,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.69956398, -1.90001082, 0.0996513367, 7.91767434e-006, 0.999986649, 1.00916686e-005, 5.66189283e-006, 1.00917196e-005, -1, -0.999986649, 7.91773255e-006, -5.6618851e-006))
Barrel3A=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"White","Barrel3A",Vector3.new(0.400000006, 0.200000003, 0.200000003))
Barrel3Aweld=weld(m,HandleA,Barrel3A,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.699560165, -1.90001285, 0.39963913, 7.91766342e-006, 0.999986649, 1.00919206e-005, 5.6613726e-006, 1.00919715e-005, -1, -0.999986649, 7.91772163e-006, -5.66136487e-006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 0.200000003, 0.400000036))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.200450897, -2.29999614, 0.699605942, 0.999986649, 2.01113654e-010, 4.28733493e-010, -4.34172753e-010, -5.51018218e-008, 1, 2.03384726e-010, -0.999986649, -5.48661063e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000036, 0.210000008, 0.800000012))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.099697113, 1.70499849, 0.699567795, 0.999986649, 3.20816929e-010, 7.34710071e-011, -7.69249109e-011, -5.26488186e-008, 1, 3.22863347e-010, -0.999986649, -5.24188479e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.74000001, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Bright red","Part",Vector3.new(0.400000006, 0.400000006, 0.200000003))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0994491577, 0.699581146, 0.699999809, -0.999993324, -5.04537023e-010, -9.21580978e-010, 5.05673892e-010, -0.999993324, -1.46751713e-008, -9.23204069e-010, -1.47901815e-008, 1))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.399999976, 0.399999946, 0.559999943))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.800000012, 0.599999964))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.699541092, -0.600000381, -0.199619293, 1.87184355e-006, -0.999986649, 1.07918208e-006, -3.12210403e-007, -1.078938e-006, -1, 0.999986649, 1.87184094e-006, -3.12219839e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000036, 0.400000006, 0.800000072))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.100307465, -0.699611664, -0.599999905, 0.999986649, -5.68162184e-012, -1.03317355e-011, 3.40788509e-012, 0.999986649, -5.81779958e-010, 7.07311987e-012, 3.51557006e-010, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.210000008, 0.800000012))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.399723053, 1.70499837, 0.699588776, 0.999979973, 3.28089528e-010, -3.71732811e-010, 3.66905506e-010, -5.37965974e-008, 1, 3.32864347e-010, -0.999979973, -5.34519344e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.74000001, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 1.39999986, 0.400000036))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0995674133, 0.899999619, 0.699586868, 0.999986649, 1.66285097e-010, 3.84224985e-010, -3.87478327e-010, -5.54243442e-008, 1, 1.68558861e-010, -0.999986649, -5.51948673e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 0.200000003, 0.400000036))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.399646759, 1.6999985, 0.699571609, 0.999979973, 1.84390309e-010, 3.75398046e-011, -4.23643343e-011, -5.66705758e-008, 1, 1.88255633e-010, -0.999979973, -5.63259412e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 1.39999986, 0.400000036))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.399570465, 0.899999619, 0.699586868, 0.999986649, 1.90463506e-010, 4.11560452e-010, -4.14813461e-010, -5.52680746e-008, 1, 1.92737243e-010, -0.999986649, -5.50385977e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.800000012, 0.400000006, 0.400000066))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0996818542, -0.699586868, 4.76837158e-007, 0.999986649, 1.94817495e-011, 5.78722625e-011, -2.17554863e-011, 0.999986649, -1.31851685e-009, -6.112999e-011, 1.08828324e-009, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.600000024))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.410079956, -0.700000763, -0.000110626221, 0.999986649, 3.13225945e-010, 5.58399271e-010, -5.638357e-010, -5.12430809e-008, 1, 3.15497045e-010, -0.999986649, -5.1007305e-008))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 1.99999988, 0.400000036))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.399532318, -1.19999957, 0.699613571, 0.999986649, 1.96598182e-010, 4.09048739e-010, -4.12301748e-010, -5.60532456e-008, 1, 1.98871919e-010, -0.999986649, -5.58237794e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.01999998, 0.200000003, 0.210000008))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000102996826, -0.700000763, -0.405073166, 0.999986649, 2.9397576e-010, 4.77100359e-010, -4.82539675e-010, -5.1360427e-008, 1, 2.9624686e-010, -0.999986649, -5.11246618e-008))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Bright red","Part",Vector3.new(0.400000006, 0.400000006, 0.200000003))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0994491577, 0.699581146, -1.69999957, -0.999993324, -5.04537023e-010, -9.21580978e-010, 5.05673892e-010, -0.999993324, -1.46751713e-008, -9.23204069e-010, -1.47901815e-008, 1))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.399999976, 0.399999946, 0.559999943))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.200000003, 0.200000003))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.699573517, -0.900001526, 0.400360107, 2.85113401e-006, -0.999986649, 1.24874362e-006, -2.03818695e-006, -1.24850249e-006, -1, 0.999986649, 2.85112901e-006, -2.03822106e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 0.200000003, 0.400000036))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.200325012, 1.69999766, 0.699609756, 0.999986649, 6.62784883e-010, -1.45084575e-008, 1.45049066e-008, -5.6450606e-008, 1, 6.65740574e-010, -0.999986649, -5.62205251e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.210000008, 0.800000012))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.200233459, 1.70499849, 0.69960022, 0.999986649, 3.14450521e-010, 3.71330522e-010, -3.74782427e-010, -5.33727729e-008, 1, 3.1649694e-010, -0.999986649, -5.31428022e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.74000001, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.400000006, 0.200000003, 0.400000036))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0996131897, 1.69999862, 0.699584961, 0.999986649, 1.77117737e-010, 1.78062898e-010, -1.8151608e-010, -5.61730893e-008, 1, 1.79164156e-010, -0.999986649, -5.59431363e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.01999998, 0.200000003, 0.210000008))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.28881836e-005, -0.700000763, 0.404912949, 0.999986649, 2.92983943e-010, 4.96789276e-010, -5.02226261e-010, -5.34053335e-008, 1, 2.95255043e-010, -0.999986649, -5.31695932e-008))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.01999998, 0.200000003, 0.210000008))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000316619873, 0.699999809, 0.404588699, 0.999986649, 1.1153159e-010, 2.77556311e-010, -2.80811041e-010, -4.94035142e-008, 1, 1.13805299e-010, -0.999986649, -4.91739556e-008))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Bright red","Part",Vector3.new(0.400000006, 0.400000006, 0.200000003))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0994491577, 0.699581146, 1.49999833, -0.999993324, -5.04537023e-010, -9.21580978e-010, 5.05673892e-010, -0.999993324, -1.46751713e-008, -9.23204069e-010, -1.47901815e-008, 1))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.399999976, 0.399999946, 0.559999943))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.400000006, 1.80000019))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.400295258, -0.699577332, -0.0999999046, 0.999986649, 2.07385775e-011, 6.28357366e-011, -2.30123143e-011, 0.999986649, -7.07412795e-010, -6.60934085e-011, 4.77189843e-010, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 1.39999986, 0.400000036))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.200366974, 0.900000572, 0.699565887, 0.999986649, 1.9678098e-010, 4.23990953e-010, -4.27243796e-010, -5.48795889e-008, 1, 1.99054717e-010, -0.999986649, -5.46501049e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Bright red","Part",Vector3.new(0.400000006, 0.400000006, 0.200000003))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0994491577, 0.699581146, 1.09999835, -0.999993324, -5.04537023e-010, -9.21580978e-010, 5.05673892e-010, -0.999993324, -1.46751713e-008, -9.23204069e-010, -1.47901815e-008, 1))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.399999976, 0.399999946, 3.8599999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 0.200000003, 0.400000036))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.39957428, -2.29999614, 0.699617386, 0.999986649, 2.06792028e-010, 4.21613855e-010, -4.27053171e-010, -5.59482594e-008, 1, 2.09063072e-010, -0.999986649, -5.5712551e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.600000024))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.409893036, -0.700000763, -9.53674316e-005, 0.999986649, 3.06400627e-010, 5.35766098e-010, -5.41204637e-010, -5.17249639e-008, 1, 3.08671699e-010, -0.999986649, -5.14891987e-008))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.01999998, 0.200000003, 0.210000008))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000228881836, 0.69989109, -0.405414581, 0.999986649, 9.22598942e-011, 2.078413e-010, -2.13284224e-010, -5.09687972e-008, 1, 9.45309664e-011, -0.999986649, -5.07330284e-008))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.600000024))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.409645081, 0.699999809, -0.000415802002, 0.999986649, 1.09286219e-010, 2.74369194e-010, -2.77624035e-010, -4.96409172e-008, 1, 1.11559956e-010, -0.999986649, -4.94113586e-008))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.600000024))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.409934998, 0.70000124, -2.0980835e-005, 0.999986649, 3.69289765e-010, 6.34756692e-010, -6.37979558e-010, -4.70661625e-008, 1, 3.71549347e-010, -0.999986649, -4.68323584e-008))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 1.59999967, 0.400000036))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0994720459, -1.00000167, 0.699565887, 0.999986649, 1.63843272e-010, 3.70188213e-010, -3.73441722e-010, -5.61400029e-008, 1, 1.66117037e-010, -0.999986649, -5.59105366e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.800000012, 0.200000003))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.699556351, -2.19999361, 0.400417328, -1.13278213e-006, 0.999986649, -1.23997575e-006, 3.2160392e-007, 1.23972927e-006, 1, 0.999986649, 1.13277952e-006, -3.21612873e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.400000006, 0.80000025))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.400325775, -0.699573517, -1.40000105, 0.999986649, 3.54179464e-011, 8.36694047e-011, -3.76917386e-011, 0.999986649, 3.27542438e-010, -8.69266326e-011, -5.57753843e-010, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.800000012, 0.399999976))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.69952774, -0.600001335, 0.299598694, 1.08607458e-006, -0.999986649, 1.22987899e-006, 2.51857699e-007, 1.22963252e-006, 1, -0.999986649, -1.08607196e-006, 2.51865629e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Bright red","Part",Vector3.new(0.400000006, 0.400000006, 0.200000003))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0994491577, 0.699581146, -1.10000062, -0.999993324, -5.04537023e-010, -9.21580978e-010, 5.05673892e-010, -0.999993324, -1.46751713e-008, -9.23204069e-010, -1.47901815e-008, 1))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.399999976, 0.399999946, 0.559999943))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 1.19999969, 0.400000006))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.200454712, -1.59999967, 0.699554443, 0.999986649, 1.63983938e-010, 3.76599196e-010, -3.82038789e-010, -5.52081758e-008, 1, 1.6625501e-010, -0.999986649, -5.49724604e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.400000006, 0.200000003, 0.400000036))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.09948349, -1.89999557, 0.699590683, 0.999986649, 1.69683823e-010, 3.82608611e-010, -3.88048149e-010, -5.55553079e-008, 1, 1.71975129e-010, -0.999986649, -5.53195072e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))

HandleB=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Really black","HandleB",Vector3.new(1, 1, 0.800000072))
HandleBweld=weld(m,Character["Left Arm"],HandleB,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-5.34057617e-005, 0.000112533569, -8.82148743e-006, -5.13637077e-010, -9.34523126e-010, 0.999993324, 0.999993324, -1.55961271e-008, 5.12500209e-010, 1.54810991e-008, 0.999992251, 9.32938282e-010))
Barrel4A=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"White","Barrel4A",Vector3.new(0.400000006, 0.200000003, 0.200000003))
Barrel4Aweld=weld(m,HandleB,Barrel4A,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.700273514, -1.89999568, -0.200382233, 7.9176798e-006, 0.999986649, 1.00922007e-005, 5.66249946e-006, 1.00922507e-005, -1, -0.999986649, 7.91774073e-006, -5.66249219e-006))
Barrel5A=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"White","Barrel5A",Vector3.new(0.400000006, 0.200000003, 0.400000006))
Barrel5Aweld=weld(m,HandleB,Barrel5A,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.700338364, -1.89999771, 0.0996551514, 7.91767525e-006, 0.999986649, 1.00922598e-005, 5.662278e-006, 1.00923098e-005, -1, -0.999986649, 7.91773527e-006, -5.66227072e-006))
Barrel6A=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"White","Barrel6A",Vector3.new(0.400000006, 0.200000003, 0.200000003))
Barrel6Aweld=weld(m,HandleB,Barrel6A,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.700332642, -1.89999914, 0.399604797, 7.91767798e-006, 0.999986649, 1.00922207e-005, 5.66242488e-006, 1.00922707e-005, -1, -0.999986649, 7.917738e-006, -5.66241761e-006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 0.200000003, 0.400000036))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.39950943, -2.3000021, -0.700250626, 0.999986649, 2.24909646e-010, 4.70967154e-010, -4.74188411e-010, -5.56574378e-008, 1, 2.27183439e-010, -0.999986649, -5.54278046e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.210000008, 0.800000012))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.200298309, 1.70499992, -0.70026207, 0.999986649, 3.25459687e-010, 6.09574891e-010, -6.1279426e-010, -5.37770717e-008, 1, 3.27733451e-010, -0.999986649, -5.35474207e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.74000001, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000036, 0.210000008, 0.800000012))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0996704102, 1.70499897, -0.700256348, 0.999986649, 3.25459326e-010, 6.09557238e-010, -6.12776663e-010, -5.28618074e-008, 1, 3.27733063e-010, -0.999986649, -5.26321386e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.74000001, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Bright red","Part",Vector3.new(0.400000006, 0.400000006, 0.200000003))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0994110107, -0.700311661, -1.70000124, -0.999993324, -5.12500209e-010, -9.32938282e-010, 5.13637077e-010, -0.999993324, -1.54810991e-008, -9.34530342e-010, -1.55962478e-008, 1))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.399999976, 0.399999946, 0.559999943))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Bright red","Part",Vector3.new(0.400000006, 0.400000006, 0.200000003))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0994110107, -0.700311661, 0.699999332, -0.999993324, -5.12500209e-010, -9.32938282e-010, 5.13637077e-010, -0.999993324, -1.54810991e-008, -9.34530342e-010, -1.55962478e-008, 1))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.399999976, 0.399999946, 0.559999943))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.01999998, 0.200000003, 0.210000008))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000354766846, 0.699999332, 0.404693604, 0.999986649, 1.1949472e-010, 2.8891356e-010, -2.92137314e-010, -5.02095787e-008, 1, 1.21768429e-010, -0.999986649, -4.9979878e-008))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.400000006, 0.200000003, 0.400000036))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0994300842, -1.89999723, -0.700302124, 0.999986649, 1.81069548e-010, 4.05318112e-010, -4.08540202e-010, -5.60037847e-008, 1, 1.83343313e-010, -0.999986649, -5.57741586e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.01999998, 0.200000003, 0.210000008))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00016784668, -0.700058937, 0.404985428, 0.999986649, 5.06481115e-007, -8.88550039e-006, 8.88538398e-006, -1.53480414e-005, 1, 5.06347078e-007, -0.999986649, -1.53480123e-005))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.600000024))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.410140991, -0.700058937, -2.86102295e-005, 0.999986649, 5.06480035e-007, -8.88562045e-006, 8.88550676e-006, -1.53479523e-005, 1, 5.06345941e-007, -0.999986649, -1.53479305e-005))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.600000024))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.409835815, -0.700058699, -2.47955322e-005, 0.999986649, 5.06473384e-007, -8.88574777e-006, 8.88563409e-006, -1.53484561e-005, 1, 5.0633929e-007, -0.999986649, -1.53484343e-005))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 0.200000003, 0.400000036))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.200374603, 1.69999969, -0.700273514, 0.999986649, 1.95510885e-010, 4.26103208e-010, -4.29325075e-010, -5.68092915e-008, 1, 1.9778465e-010, -0.999986649, -5.65796761e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 1.39999986, 0.400000036))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0995597839, 0.899998665, -0.700296402, 0.999986649, 1.82185933e-010, 4.06940814e-010, -4.10131984e-010, -5.61190348e-008, 1, 1.84459698e-010, -0.999986649, -5.58892772e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.400000006, 0.80000025))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.400348663, 0.700309753, -1.39999938, 0.999986649, 4.33706404e-011, 9.50293177e-011, -4.56443772e-011, 0.999986649, 2.17802665e-010, -9.82245951e-011, -4.48304505e-010, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.800000012, 0.599999964))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.700330734, -0.600002289, -0.199569702, 1.87184696e-006, -0.999986649, 1.0768357e-006, -3.12246243e-007, -1.0765915e-006, -1, 0.999986649, 1.87184435e-006, -3.12255651e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 1.39999986, 0.400000036))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.399551392, 0.900000334, -0.700281143, 0.999986649, 2.12532297e-010, 4.46642945e-010, -4.4986459e-010, -5.53439889e-008, 1, 2.14806062e-010, -0.999986649, -5.51143557e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Bright red","Part",Vector3.new(0.400000006, 0.400000006, 0.200000003))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0994110107, -0.700311661, 1.49999881, -0.999993324, -5.12500209e-010, -9.32938282e-010, 5.13637077e-010, -0.999993324, -1.54810991e-008, -9.34530342e-010, -1.55962478e-008, 1))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.399999976, 0.399999946, 0.559999943))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Bright red","Part",Vector3.new(0.400000006, 0.400000006, 0.200000003))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0994110107, -0.700311661, -1.10000229, -0.999993324, -5.12500209e-010, -9.32938282e-010, 5.13637077e-010, -0.999993324, -1.54810991e-008, -9.34530342e-010, -1.55962478e-008, 1))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.399999976, 0.399999946, 0.559999943))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 1.19999969, 0.400000006))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.200496674, -1.60000134, -0.700332642, 0.999986649, 1.74215392e-010, 3.95577848e-010, -3.98800049e-010, -5.57730289e-008, 1, 1.76489184e-010, -0.999986649, -5.55433957e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 1.39999986, 0.400000036))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.200405121, 0.900000334, -0.700304031, 0.999986649, 2.04794931e-010, 4.35489422e-010, -4.38711178e-010, -5.59133824e-008, 1, 2.07068696e-010, -0.999986649, -5.56837598e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.800000012, 0.399999976))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.700307846, -0.600000143, 0.299545288, 1.0860814e-006, -0.999986649, 1.22885763e-006, 2.51865401e-007, 1.22861104e-006, 1, -0.999986649, -1.08607878e-006, 2.51873274e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.800000012, 0.400000006, 0.400000066))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0996398926, 0.70029068, -2.14576721e-006, 0.999986649, 3.7787995e-011, 9.27144472e-011, -4.00617317e-011, 0.999986649, 1.00676356e-009, -9.59097246e-011, -1.23725208e-009, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 0.200000003, 0.400000036))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.200492859, -2.30000019, -0.700273514, 0.999986649, 2.13633666e-010, 4.54880855e-010, -4.58102278e-010, -5.5424934e-008, 1, 2.15907459e-010, -0.999986649, -5.51953008e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 1.99999988, 0.400000036))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.399505615, -1.20000219, -0.700250626, 0.999986649, 2.20402863e-010, 4.64567773e-010, -4.67789085e-010, -5.56560096e-008, 1, 2.22676655e-010, -0.999986649, -5.54263728e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.210000008, 0.800000012))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.399719238, 1.70499969, -0.700256348, 0.999986649, 3.29966443e-010, 6.15962115e-010, -6.19181484e-010, -5.33209956e-008, 1, 3.3224018e-010, -0.999986649, -5.3091334e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.74000001, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Bright red","Part",Vector3.new(0.400000006, 0.400000006, 0.200000003))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0994110107, -0.700311661, 1.09999871, -0.999993324, -5.12500209e-010, -9.32938282e-010, 5.13637077e-010, -0.999993324, -1.54810991e-008, -9.34530342e-010, -1.55962478e-008, 1))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.399999976, 0.399999946, 3.8599999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.400000006, 1.80000019))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.400318146, 0.700298309, -0.100000381, 0.999986649, 2.87218582e-011, 7.42863548e-011, -3.0995595e-011, 0.999986649, 3.27936789e-010, -7.74819098e-011, -5.58436852e-010, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000036, 0.400000006, 0.800000072))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.100364685, 0.700286865, -0.600000858, 0.999986649, 2.75119372e-011, 7.16121606e-011, -2.97856739e-011, 0.999986649, 4.25513846e-010, -7.48077711e-011, -6.56010357e-010, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.200000003, 0.200000003))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.700284958, -0.900002718, 0.400382996, 2.85113333e-006, -0.999986649, 1.24790631e-006, -2.03824266e-006, -1.24766507e-006, -1, 0.999986649, 2.85112856e-006, -2.03827699e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.600000024))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.409973145, 0.700000763, 8.39233398e-005, 0.999986649, 3.77252896e-010, 6.4611394e-010, -6.49305831e-010, -4.78722271e-008, 1, 3.79512477e-010, -0.999986649, -4.76382809e-008))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.01999998, 0.200000003, 0.210000008))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000339508057, 0.699999332, -0.405292511, 0.999986649, 1.17249405e-010, 2.85726331e-010, -2.88950197e-010, -5.04469853e-008, 1, 1.19523141e-010, -0.999986649, -5.0217281e-008))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.600000024))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.409610748, 0.699999332, -0.000310897827, 0.999986649, 1.17249349e-010, 2.85726443e-010, -2.88950308e-010, -5.04469853e-008, 1, 1.19523086e-010, -0.999986649, -5.0217281e-008))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.01999998, 0.200000003, 0.210000008))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000164031982, -0.700058937, -0.405000687, 0.999986649, 5.06467813e-007, -8.88587419e-006, 8.88576051e-006, -1.53488418e-005, 1, 5.0633372e-007, -0.999986649, -1.53488199e-005))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 1.59999967, 0.400000036))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0994300842, -1.00000286, -0.700296402, 0.999986649, 1.7766863e-010, 4.00603883e-010, -4.03795108e-010, -5.63463871e-008, 1, 1.79942367e-010, -0.999986649, -5.61166367e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.800000012, 0.200000003))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.70032692, -2.19999671, 0.400455475, -1.13279009e-006, 0.999986649, -1.23916982e-006, 3.2159258e-007, 1.23892323e-006, 1, 0.999986649, 1.13278747e-006, -3.21601505e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.400000006, 0.200000003, 0.400000036))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0995979309, 1.69999874, -0.700267792, 0.999986649, 1.93360383e-010, 4.22906765e-010, -4.26128688e-010, -5.61221967e-008, 1, 1.9563412e-010, -0.999986649, -5.58925741e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 0.200000003, 0.400000036))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.399623871, 1.69999945, -0.70026207, 0.999986649, 1.97764305e-010, 4.29296765e-010, -4.32518632e-010, -5.65812428e-008, 1, 2.00038042e-010, -0.999986649, -5.63516203e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))

BackHandle=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","BackHandle",Vector3.new(0.800000012, 0.600000024, 1.20000005))
BackHandleweld=weld(m,Character["Torso"],BackHandle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000143051147, 0.799930573, 0.20047307, 0.999993324, -1.62740506e-008, 2.05381559e-010, 2.06515763e-010, 6.19668095e-010, -0.999993324, 1.61529243e-008, 0.999992371, 6.15865525e-010))
JointConnectorA=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Really black","JointConnectorA",Vector3.new(0.600000024, 0.400000066, 0.800000012))
JointConnectorAweld=weld(m,BackHandle,JointConnectorA,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(6.86645508e-005, -0.797990799, -0.199465752, -1.34834088e-011, -0.999986649, -8.9196428e-012, 0.999986649, -1.12150289e-011, -9.5399777e-010, 7.12287118e-010, -1.33471012e-012, 0.999969482))
mesh("CylinderMesh",JointConnectorA,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
JointConnectorB=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Really black","JointConnectorB",Vector3.new(0.600000024, 0.400000066, 0.800000012))
JointConnectorBweld=weld(m,BackHandle,JointConnectorB,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.95910645e-005, 0.80194664, -0.199468851, -1.46291035e-011, -0.999986649, -5.74146286e-012, 0.999986649, -1.23607374e-011, -5.9252514e-010, 3.50306451e-010, 1.86239912e-012, 0.999984741))
mesh("CylinderMesh",JointConnectorB,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.800000012, 0.600000024, 0.200000003))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.47955322e-005, -8.01086426e-005, 0.699928761, 0.999986649, 1.23872718e-011, -5.78133594e-008, 1.01188918e-011, -0.999986649, 1.65803482e-011, -5.75726382e-008, -2.4165725e-011, -0.999969482))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.800000012, 0.200000003, 0.600000024))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.05718994e-005, 0.199935913, 0.899125814, 0.999986649, 6.78561374e-012, -5.93669185e-008, 4.51723381e-012, -0.999986649, 2.27040609e-014, -5.91262115e-008, -7.60785879e-012, -0.999969482))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Bright red","Part",Vector3.new(0.600000024, 0.200000003, 0.800000012))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.62939453e-006, 0.500015259, -0.199979782, -3.37949113e-012, -0.999979973, 5.4230509e-012, 0.999979973, 1.14908083e-014, -1.20904176e-010, -2.39820608e-010, 1.46018753e-011, 0.999969482))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(2.01999998, 0.600000024, 0.210000008))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.81469727e-006, 0.300014019, 0.394981384, 0.999986649, 1.15046861e-014, -1.90425431e-012, -2.39820608e-010, 1.46018753e-011, 0.999969482, -2.25686136e-012, -0.999986649, 7.01660952e-012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.210000008, 0.200000003, 0.410000086))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.90501976, 0.100106955, 0.904968262, 0.999982357, 1.14569465e-012, -1.22765798e-010, -1.18957288e-010, 1.83945081e-011, 0.999965191, -1.12268528e-012, -0.999986649, 1.08093534e-011))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Bright red","Part",Vector3.new(0.210000008, 0.200000003, 0.810000062))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.905035019, 0.500083685, 1.30494308, 0.999986649, 2.27988461e-012, -2.43625564e-010, 1.90603111e-012, 2.21874186e-011, 0.999969482, 1.15185639e-014, -0.999986649, 1.46020418e-011))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.210000008, 0.200000018, 0.410000086))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.904981613, 0.100171328, 0.904911041, 0.999986589, 3.41407458e-012, -3.64481778e-010, 1.22762245e-010, 2.5980329e-011, 0.999969423, 1.14569465e-012, -0.999986649, 1.83948967e-011))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Bright red","Part",Vector3.new(0.210000008, 0.600000024, 0.200000003))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.904953003, 0.300099134, 1.20991135, 0.999986649, 3.41407458e-012, -3.64483554e-010, 1.22764021e-010, 2.5980329e-011, 0.999969482, 1.14569465e-012, -0.999986649, 1.83948967e-011))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.210000008, 0.200000003, 0.810000062))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.904973984, 0.300121784, 1.30490875, 0.999986649, 3.41407458e-012, -3.64483554e-010, 1.22764021e-010, 2.5980329e-011, 0.999969482, 1.14569465e-012, -0.999986649, 1.83948967e-011))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Bright red","Part",Vector3.new(0.210000008, 0.200000003, 0.810000062))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.904973984, 0.100127697, 1.30490875, 0.999986649, 3.41407458e-012, -3.64483554e-010, 1.22764021e-010, 2.5980329e-011, 0.999969482, 1.14569465e-012, -0.999986649, 1.83948967e-011))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.210000008, 0.200000003, 0.810000062))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.904958725, 0.300130844, 1.30488205, 0.999986649, 4.54826454e-012, -4.85337992e-010, 2.43620235e-010, 2.97732949e-011, 0.999969482, 2.27989849e-012, -0.999986649, 2.21878071e-011))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Bright red","Part",Vector3.new(0.210000008, 0.600000024, 0.200000003))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.904930115, 0.300135851, 1.2098465, 0.999986649, 5.68245451e-012, -6.06190653e-010, 3.64476449e-010, 3.35663164e-011, 0.999969482, 3.41407458e-012, -0.999986649, 2.59807731e-011))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Bright red","Part",Vector3.new(0.210000008, 0.200000018, 0.410000086))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.904924393, 0.300127745, 0.904846191, 0.999986649, 5.68245451e-012, -6.06190653e-010, 3.64476449e-010, 3.35663164e-011, 0.999969482, 3.41407458e-012, -0.999986649, 2.59807731e-011))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Bright red","Part",Vector3.new(0.210000008, 0.600000024, 0.200000003))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.904916763, 0.300007582, 0.599971771, 0.999979496, 1.14568077e-012, -1.22764021e-010, -1.18957288e-010, 1.83944526e-011, 0.99996233, -1.12268528e-012, -0.999986649, 1.08093534e-011))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Bright red","Part",Vector3.new(0.210000008, 0.200000003, 0.810000062))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.904888153, 0.50006032, 1.3048172, 0.999986649, 6.81664447e-012, -7.27041538e-010, 4.8532911e-010, 3.73593934e-011, 0.999969482, 4.54827842e-012, -0.999986649, 2.97737945e-011))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.210000008, 0.200000018, 0.410000086))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.904928207, 0.500139236, 0.904846191, 0.999986649, 5.68245451e-012, -6.06190653e-010, 3.64476449e-010, 3.35663164e-011, 0.999969482, 3.41407458e-012, -0.999986649, 2.59807731e-011))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.210000008, 0.200000003, 0.410000086))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.904945374, 0.50014782, 0.904872894, 0.999986649, 4.54826454e-012, -4.85339768e-010, 2.43622011e-010, 2.97732949e-011, 0.999969482, 2.27989849e-012, -0.999986649, 2.21878071e-011))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.210000008, 0.200000003, 0.410000086))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.904937744, 0.300155163, 0.904872894, 0.999986649, 4.54826454e-012, -4.85339768e-010, 2.43622011e-010, 2.97732949e-011, 0.999969482, 2.27989849e-012, -0.999986649, 2.21878071e-011))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.600000024, 0.200000003, 0.800000012))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.28881836e-005, -0.299953461, 0.199994802, -1.12268528e-012, -0.999986649, 1.08093534e-011, 0.999978065, 1.14568077e-012, -1.22764021e-010, -1.18957288e-010, 1.83944526e-011, 0.999960899))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Bright red","Part",Vector3.new(0.210000008, 0.600000024, 0.200000003))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.905002594, 0.299999952, 0.599971771, 0.999982357, 1.14569465e-012, -1.22765798e-010, -1.18957288e-010, 1.83945081e-011, 0.999965191, -1.12268528e-012, -0.999986649, 1.08093534e-011))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Bright red","Part",Vector3.new(0.210000008, 0.200000003, 0.810000062))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.904874802, 0.100106001, 1.30477905, 0.999986649, 7.95083444e-012, -8.47890647e-010, 6.06181771e-010, 4.11525813e-011, 0.999969482, 5.68245451e-012, -0.999986649, 3.35668715e-011))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.800000012, 0.600000024, 0.200000003))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.81469727e-006, -3.81469727e-005, 0.700012445, -0.999986649, -2.26865748e-012, -2.95600895e-008, 2.77555756e-016, -0.999986649, 9.21701604e-012, -2.98023206e-008, 1.68021708e-011, 0.999969482))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.210000008, 0.600000024))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.701107025, -1.20487595, 0.300156593, 0.999986649, 4.54826454e-012, -4.85339768e-010, -2.27989849e-012, 0.999986649, -2.21878071e-011, 2.43622011e-010, 2.97732949e-011, 0.999969482))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Bright red","Part",Vector3.new(0.600000024, 0.200000003, 0.800000012))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-005, -0.499929428, -0.199991226, -2.24531505e-012, -0.999979973, 9.21596133e-012, 0.999979973, 1.14568077e-012, -2.41730191e-010, -1.18957288e-010, 1.83946192e-011, 0.999969482))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.210000008, 0.600000024))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.699016571, -1.20474625, 0.29998374, 0.999986649, 9.0850244e-012, -9.68737979e-010, -6.81665835e-012, 0.999986649, -3.73600595e-011, 7.27029104e-010, 4.49458248e-011, 0.999969482))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Bright red","Part",Vector3.new(0.200000003, 0.210000008, 0.200000003))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.499229431, -1.20484924, 0.299696445, 0.999986589, 5.68245451e-012, -6.0619243e-010, -3.41407458e-012, 0.999986649, -1.83948967e-011, 3.64476449e-010, 2.5980329e-011, 0.999969423))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.800000012, 0.210000008, 0.200000003))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000780105591, -1.20481873, 0.299640179, 0.999986649, 6.81664447e-012, -7.27043314e-010, -4.54827842e-012, 0.999986649, -1.46020418e-011, 4.85330887e-010, 2.21874186e-011, 0.999969482))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Bright red","Part",Vector3.new(0.200000003, 0.210000008, 0.200000003))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.500785828, -1.20478821, 0.299716949, 0.999986589, 7.95083444e-012, -8.47890647e-010, -5.68245451e-012, 0.999986649, -1.08092979e-011, 6.06181771e-010, 1.83945637e-011, 0.999969423))

JointHandleA=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","JointHandleA",Vector3.new(0.600000024, 0.400000066, 0.800000012))
JointHandleAweld=weld(m,JointConnectorA,JointHandleA,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.95910645e-005, -5.91278076e-005, -9.53674316e-007, 0.999986649, 1.01844921e-011, 6.03297412e-011, -1.24528582e-011, 0.999986649, 2.30521913e-009, -6.79519219e-011, -2.54792187e-009, 1))
mesh("CylinderMesh",JointHandleA,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
GunConnectorA=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Mid gray","GunConnectorA",Vector3.new(0.600000024, 0.200000003, 0.800000012))
GunConnectorAweld=weld(m,JointHandleA,GunConnectorA,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.53674316e-005, -1.10033035, -0.600126028, 0.999986649, -5.74137266e-011, -4.820222e-011, 5.51453327e-011, 0.999986649, -2.96968938e-009, 4.05803169e-011, 2.72697953e-009, 1))
mesh("CylinderMesh",GunConnectorA,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Bright red","Part",Vector3.new(0.600000024, 0.200000003, 0.800000012))
Partweld=weld(m,JointHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000270843506, 0.701763153, 0.601624489, 0.999986649, 2.62356498e-010, 1.72325603e-008, 2.64626931e-010, -0.999986649, -1.20365556e-007, 1.72399481e-008, 1.20606614e-007, -1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.600000024, 0.200000003, 0.800000012))
Partweld=weld(m,JointHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000247955322, 0.501737595, 0.601624966, 0.999986649, 2.5675484e-010, 1.72236128e-008, 2.5902322e-010, -0.999986649, -3.20770077e-010, 1.72309988e-008, 5.63439961e-010, -1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.600000024, 0.200000003, 0.800000012))
Partweld=weld(m,JointHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000305175781, -0.901706696, -0.601625204, 0.999986649, -3.76128156e-011, 1.66311658e-008, 3.53444635e-011, 0.999986649, -4.45636417e-010, -1.66385625e-008, 2.02958539e-010, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.600000024, 1.19999993))
Partweld=weld(m,JointHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.301893234, 1.90734863e-005, -0.200528145, -3.0438152e-011, 0.999986649, 1.30145672e-010, -0.999986649, -2.81697998e-011, -3.97587518e-012, -1.15972232e-011, -3.72825326e-010, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Bright red","Part",Vector3.new(0.200000003, 0.600000024, 0.200000003))
Partweld=weld(m,JointHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.301876068, 1.52587891e-005, 0.49947238, -3.15723281e-011, 0.999986649, 2.5146818e-010, -0.999986649, -2.9303962e-011, -2.42461606e-012, -1.00464637e-011, -4.9414961e-010, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Light stone grey","Part",Vector3.new(0.200000003, 0.600000024, 0.200000003))
Partweld=weld(m,JointHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.301876068, 1.52587891e-005, -0.900527954, -3.15723281e-011, 0.999986649, 2.5146818e-010, -0.999986649, -2.9303962e-011, -2.42461606e-012, -1.00464637e-011, -4.9414961e-010, 1))

JointHandleB=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","JointHandleB",Vector3.new(0.600000024, 0.400000066, 0.800000012))
JointHandleBweld=weld(m,JointConnectorB,JointHandleB,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(6.10351563e-005, -2.86102295e-005, -9.53674316e-007, 0.999986649, 7.93920485e-012, 4.95208874e-011, -1.02075709e-011, 0.999986649, 2.06251638e-009, -5.71430681e-011, -2.3052209e-009, 1))
mesh("CylinderMesh",JointHandleB,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
GunConnectorB=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Mid gray","GunConnectorB",Vector3.new(0.600000024, 0.200000003, 0.800000012))
GunConnectorBweld=weld(m,JointHandleB,GunConnectorB,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.2479248e-005, 1.09965706, -0.600126028, 0.999986649, -6.42187553e-011, -7.10619341e-011, 6.19503615e-011, 0.999986649, -3.69769282e-009, 6.34394759e-011, 3.4549652e-009, 1))
mesh("CylinderMesh",GunConnectorB,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Bright red","Part",Vector3.new(0.600000024, 0.200000003, 0.800000012))
Partweld=weld(m,JointHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.90734863e-005, 0.699949265, -0.600000381, 0.999986649, -5.30060024e-011, -6.93863855e-011, 5.07376224e-011, 0.999986649, -3.23638005e-009, 6.17638718e-011, 2.99365954e-009, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.600000024, 0.200000063, 0.800000012))
Partweld=weld(m,JointHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.62939453e-006, 0.899938583, -0.600000381, 0.999986649, -5.2982993e-011, -6.49554854e-011, 5.07146408e-011, 0.999986649, -3.23178284e-009, 5.73329162e-011, 2.98905789e-009, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.600000024, 0.200000003, 0.800000012))
Partweld=weld(m,JointHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(5.7220459e-005, 0.49993515, -0.600000381, 0.999986649, -3.48823748e-011, -1.28634325e-011, 3.26140087e-011, 0.999986649, -1.29975941e-009, 5.24147392e-012, 1.05705666e-009, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.600000024, 1.19999993))
Partweld=weld(m,JointHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.298002243, 2.28881836e-005, -0.200527906, -2.9303962e-011, 0.999986649, 8.83737528e-012, -0.999986649, -2.7035596e-011, -1.70308212e-013, -7.79232234e-012, -2.51525911e-010, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Bright red","Part",Vector3.new(0.200000003, 0.600000024, 0.200000003))
Partweld=weld(m,JointHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.298007965, 2.28881836e-005, 0.499472857, -3.15723281e-011, 0.999986649, 8.81961171e-012, -0.999986649, -2.9303962e-011, 5.19134735e-012, -2.4307778e-012, -2.51514365e-010, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Light stone grey","Part",Vector3.new(0.200000003, 0.600000024, 0.200000003))
Partweld=weld(m,JointHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.298036575, 1.90734863e-005, -0.900527716, -2.47674659e-011, 0.999986649, 2.51393573e-010, -0.999986649, -2.24990998e-011, -2.43050025e-012, -1.00525144e-011, -4.94083885e-010, 1))

GunHandleA=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","GunHandleA",Vector3.new(0.600000024, 0.200000003, 0.800000012))
GunHandleAweld=weld(m,GunConnectorA,GunHandleA,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000495910645, -0.00170707703, -0.00163197517, 0.999986649, 4.22736013e-011, 1.67127983e-008, -4.45420784e-011, 0.999986649, 6.05984596e-009, -1.67201968e-008, -6.30252028e-009, 1))
mesh("CylinderMesh",GunHandleA,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Barrel1B=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"White","Barrel1B",Vector3.new(0.400000006, 0.200000003, 0.200000003))
Barrel1Bweld=weld(m,GunHandleA,Barrel1B,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.299650192, -6.30939817, -0.0999298096, 7.04892182e-006, 0.999986649, 8.64386311e-006, -5.5855362e-006, -8.64395406e-006, 1, 0.999986649, -7.04897229e-006, 5.58554302e-006))
Barrel2B=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"White","Barrel2B",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Barrel2Bweld=weld(m,GunHandleA,Barrel2B,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.299751282, -6.30939913, 0.110038757, 7.04892091e-006, 0.999986649, 8.64386493e-006, -5.58553575e-006, -8.64395315e-006, 1, 0.999986649, -7.04897093e-006, 5.58554211e-006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000036, 4, 0.400000036))
Partweld=weld(m,GunHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0999755859, -3.99940777, 0.299608231, 0.999986649, 1.87717064e-011, 6.78319623e-011, -7.50084439e-011, -3.61608059e-008, 1, 2.10400725e-011, -0.999986649, -3.59122794e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Bright red","Part",Vector3.new(0.800000072, 0.200000003, 0.800000012))
Partweld=weld(m,GunHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.299999237, -1.09940839, 0.299634933, 0.999986649, 2.82321666e-011, 7.93853872e-011, -8.65618688e-011, -3.57268064e-008, 1, 3.05005743e-011, -0.999986649, -3.5439804e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Bright red","Part",Vector3.new(0.410000026, 0.200000003, 0.420000017))
Partweld=weld(m,GunHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.103290558, -5.0994072, 0.299604416, 0.999986649, 2.4718419e-010, 1.99356975e-009, -2.00068051e-009, -5.15729184e-008, 1, 2.49452597e-010, -0.999986649, -5.13267508e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Bright red","Part",Vector3.new(0.800000072, 0.200000003, 0.800000012))
Partweld=weld(m,GunHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.299999237, -1.69940782, 0.299634933, 0.999986649, 2.82321805e-011, 7.93853872e-011, -8.65618688e-011, -3.57193741e-008, 1, 3.05005604e-011, -0.999986649, -3.54472363e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.200000003, 0.399999976))
Partweld=weld(m,GunHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.29961586, -0.200057983, 3.79895067, 2.13912638e-011, -0.999986649, -6.56187495e-008, -0.999986649, -1.91228977e-011, -5.76907411e-011, 6.48689991e-011, 6.58733015e-008, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000036, 2.60000014, 0.400000006))
Partweld=weld(m,GunHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.10005188, -2.29933381, 0.299648285, 0.999986649, 2.75553191e-011, 7.10276282e-011, -7.82041099e-011, -3.55043284e-008, 1, 2.98236852e-011, -0.999986649, -3.52535992e-008))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Bright red","Part",Vector3.new(0.410000026, 0.400000006, 0.420000017))
Partweld=weld(m,GunHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.105106354, -5.79940701, 0.299518585, 0.999986649, 3.70316972e-011, 1.00063957e-010, -1.07240439e-010, -3.55386618e-008, 1, 3.93000354e-011, -0.999986649, -3.52837048e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.400000006, 0.599999964))
Partweld=weld(m,GunHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.2996521, -0.299938202, 2.49895358, 5.95576388e-008, 0.999986649, -3.29861848e-007, 0.999986649, -5.95598699e-008, 1.04771942e-007, 1.04777698e-007, -3.29583315e-007, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Light stone grey","Part",Vector3.new(0.400000006, 0.200000003, 0.200000033))
Partweld=weld(m,GunHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.10004425, -6.09940624, 0.299728394, 0.999986649, 4.31236297e-011, 1.27535316e-010, -1.34711797e-010, -3.54994683e-008, 1, 4.53919818e-011, -0.999986649, -3.52445113e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 4, 0.200000033))
Partweld=weld(m,GunHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.100036621, -3.99940777, 0.299730301, 0.999986649, 4.15442264e-011, 1.24748212e-010, -1.31924693e-010, -3.54412393e-008, 1, 4.38125786e-011, -0.999986649, -3.51862823e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.600000024, 0.599999964))
Partweld=weld(m,GunHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.299654007, -6.10351563e-005, 1.30104566, -1.30056219e-006, 0.999986649, -1.09659254e-006, -0.999986351, -1.30056003e-006, -2.5342942e-007, -2.53433171e-007, 1.09625705e-006, 0.999999702))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.200000003, 0.599999964))
Partweld=weld(m,GunHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.299655914, -0.399936676, 1.30104542, 1.31132742e-006, -0.999986529, 1.10181782e-006, 0.999986172, 1.35602795e-006, 2.03000127e-007, -2.03004603e-007, 1.10145118e-006, 0.999999702))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.800000072, 0.400000095, 0.800000012))
Partweld=weld(m,GunHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.299999237, -1.39940763, 0.299631119, 0.999986649, 2.93663704e-011, 8.29771807e-011, -9.01501096e-011, -3.58695225e-008, 1, 3.16347365e-011, -0.999986649, -3.55525174e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.200000003, 0.399999976))
Partweld=weld(m,GunHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.299638748, 4.57763672e-005, 3.79895139, 5.95718248e-008, 0.999977767, -3.29568849e-007, 0.999977767, -5.9575239e-008, 1.0476812e-007, 1.04775012e-007, -3.29288326e-007, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.400000006, 0.400000095))
Partweld=weld(m,GunHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.299846649, -0.299566269, -1.99945617, 0.999986649, 1.37982542e-011, 5.55164803e-011, -1.60665647e-011, 0.999986649, 5.41747536e-009, -6.26894092e-011, -5.6728342e-009, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Light stone grey","Part",Vector3.new(0.400000036, 0.200000003, 0.800000012))
Partweld=weld(m,GunHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.09998703, -6.09940815, 0.299606323, 0.999986649, 2.55307581e-011, 8.1385565e-011, -8.85584939e-011, -3.59121159e-008, 1, 2.77990686e-011, -0.999986649, -3.56571626e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Bright red","Part",Vector3.new(0.410000026, 0.200000003, 0.420000017))
Partweld=weld(m,GunHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.105091095, -4.0994091, 0.299537659, 0.999977767, 3.94622668e-011, 1.05954356e-010, -1.15194965e-010, -3.5688295e-008, 1, 4.29140057e-011, -0.999977767, -3.54158836e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.800000012, 0.400000006, 2))
Partweld=weld(m,GunHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0999565125, -0.299642563, 0.000543832779, 0.999986649, 2.77870227e-011, 7.3027806e-011, -3.00553471e-011, 0.999986649, 5.58665203e-009, -8.02007349e-011, -5.83997073e-009, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.400000006, 0.400000006))
Partweld=weld(m,GunHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.299556732, -2.59933615, -0.69916153, 1.6257079e-010, -0.999993324, -1.67127823e-009, 4.52045246e-009, -1.79694659e-009, 1, -0.999993324, -1.61436628e-010, 4.52407178e-009))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9944765",Vector3.new(0, 0, 0),Vector3.new(0.439999998, 0.440000027, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Bright red","Part",Vector3.new(0.420000017, 0.399999857, 0.240000039))
Partweld=weld(m,GunHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0899353027, -5.79940748, 0.299671173, 0.999986649, 4.13125367e-011, 1.22746258e-010, -1.29922739e-010, -3.55472736e-008, 1, 4.35809028e-011, -0.999986649, -3.5296388e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Bright red","Part",Vector3.new(0.420000017, 0.200000003, 0.240000039))
Partweld=weld(m,GunHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0899467468, -4.09941006, 0.299654007, 0.999986649, 3.59194202e-011, 1.14781074e-010, -1.21957555e-010, -3.60487249e-008, 1, 3.81877863e-011, -0.999986649, -3.579785e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Bright red","Part",Vector3.new(0.420000017, 0.200000003, 0.240000039))
Partweld=weld(m,GunHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0910987854, -5.0994072, 0.299730301, 0.999986649, 2.46745208e-010, 2.0127402e-009, -2.01985095e-009, -5.18812868e-008, 1, 2.49013615e-010, -0.999986649, -5.1637155e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000036, 2.60000014, 0.400000006))
Partweld=weld(m,GunHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.499950409, -1.29932857, 0.299531937, 0.999986649, 1.50425006e-010, 1.78168413e-009, -1.78883752e-009, -5.6819303e-008, 1, 1.52693469e-010, -0.999986649, -5.65730751e-008))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.200000003, 0.200000003))
Partweld=weld(m,GunHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.299625397, -0.400112152, 2.69894886, 1.28948019e-010, -0.999986649, -4.97068584e-007, -0.999986649, -1.26930494e-010, 5.04395871e-007, -5.04382001e-007, 4.97311134e-007, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.400000036, 0.599999964))
Partweld=weld(m,GunHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.299612045, -0.50005722, 0.301045656, -1.25586371e-006, 0.999986649, -1.09769735e-006, -0.999986649, -1.25586166e-006, -2.53439595e-007, -2.53444767e-007, 1.09743087e-006, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000036, 2.5999999, 0.400000036))
Partweld=weld(m,GunHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.699977875, -1.29938722, 0.299581528, 0.999986649, 3.30914324e-011, 9.33244593e-011, -1.00529363e-010, -3.58384717e-008, 1, 3.53800877e-011, -0.999986649, -3.55875578e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Bright red","Part",Vector3.new(0.400000036, 0.399999857, 0.400000036))
Partweld=weld(m,GunHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.699893951, -2.59933877, 0.2995224, 0.999986649, 3.47104429e-011, 1.21461952e-010, -1.28638433e-010, -3.68895847e-008, 1, 3.69788089e-011, -0.999986649, -3.66408948e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.210000008, 0.800000012))
Partweld=weld(m,GunHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0999526978, -6.10440731, 0.299612045, 0.999986649, 4.19847213e-011, 1.15514709e-010, -1.22691191e-010, -3.73906026e-008, 1, 4.42530734e-011, -0.999986649, -3.71397419e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.210000008, 0.200000033))
Partweld=weld(m,GunHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.100048065, -6.10440731, 0.29970932, 0.999986649, 3.88416105e-011, 1.19168675e-010, -1.26345157e-010, -3.58849448e-008, 1, 4.11099904e-011, -0.999986649, -3.56340664e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.620000005))

GunHandleB=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","GunHandleB",Vector3.new(0.600000024, 0.200000003, 0.800000012))
GunHandleBweld=weld(m,GunConnectorB,GunHandleB,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.19616699e-005, -7.62939453e-006, -1.66893005e-006, 0.999986649, 1.24759092e-011, 7.23904825e-011, -1.47443169e-011, 0.999986649, 2.54799559e-009, -8.00138289e-011, -2.79077916e-009, 1))
mesh("CylinderMesh",GunHandleB,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Barrel3B=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"White","Barrel3B",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Barrel3Bweld=weld(m,GunHandleB,Barrel3B,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.298568726, -6.3110342, 0.109573364, 7.04887543e-006, 0.999986649, 8.64993217e-006, -5.60172384e-006, -8.65001311e-006, 1, 0.999986649, -7.04892591e-006, 5.60173248e-006))
Barrel4B=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"White","Barrel4B",Vector3.new(0.400000006, 0.200000003, 0.200000003))
Barrel4Bweld=weld(m,GunHandleB,Barrel4B,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.298635483, -6.31103134, -0.10042572, 7.04887498e-006, 0.999986649, 8.64966933e-006, -5.60180706e-006, -8.64975755e-006, 1, 0.999986649, -7.04892545e-006, 5.60181343e-006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.400000006, 0.400000006))
Partweld=weld(m,GunHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.300489426, -2.59933567, -0.699710846, 2.66085681e-010, -0.999993324, -1.69247603e-008, -3.04048804e-008, -1.70460215e-008, 1, -0.999993324, -2.64950978e-010, -3.04012708e-008))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9944765",Vector3.new(0, 0, 0),Vector3.new(0.439999998, 0.440000027, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.210000008, 0.800000012))
Partweld=weld(m,GunHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.100124359, -6.10440683, -0.300443649, 0.999986649, 1.39920048e-010, 3.49109297e-010, -3.54513918e-010, -5.19872998e-008, 1, 1.42181072e-010, -0.999986649, -5.17518686e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.800000072, 0.400000095, 0.800000012))
Partweld=weld(m,GunHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.300243378, -1.39940548, -0.300363541, 0.999986649, 1.51865548e-010, 3.62255059e-010, -3.67659569e-010, -4.92494365e-008, 1, 1.54126545e-010, -0.999986649, -4.90139769e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000036, 2.5999999, 0.400000036))
Partweld=weld(m,GunHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.699794769, -1.299366, -0.300420761, 0.999986649, 1.22327856e-010, 3.10851983e-010, -3.16283805e-010, -4.91525753e-008, 1, 1.24598942e-010, -0.999986649, -4.89167107e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Light stone grey","Part",Vector3.new(0.400000006, 0.200000003, 0.200000033))
Partweld=weld(m,GunHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0998840332, -6.09941149, -0.300338745, 0.999986649, 1.75362419e-010, -3.21161819e-010, 3.15980297e-010, -5.09166682e-008, 1, 1.77860865e-010, -0.999986649, -5.06810736e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.200000003, 0.399999976))
Partweld=weld(m,GunHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.300373077, -0.000152587891, 3.79894924, 5.94459806e-008, 0.999993324, -3.15209547e-007, 0.999993324, -5.94470819e-008, 1.05053815e-007, 1.05056905e-007, -3.15086055e-007, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 4, 0.200000033))
Partweld=weld(m,GunHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0998573303, -3.99940681, -0.300294876, 0.999986649, 1.62245842e-010, 4.01816996e-010, -4.09433931e-010, -5.10763698e-008, 1, 1.64514263e-010, -0.999986649, -5.08343021e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Bright red","Part",Vector3.new(0.400000036, 0.399999857, 0.400000036))
Partweld=weld(m,GunHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.699703217, -2.5993371, -0.300477982, 0.999986649, 1.59587107e-010, 3.70679432e-010, -3.7608372e-010, -5.124447e-008, 1, 1.61855473e-010, -0.999986649, -5.10089535e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.600000024, 0.599999964))
Partweld=weld(m,GunHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.300346375, 7.62939453e-005, 1.30104756, -1.25599331e-006, 0.999986649, -1.08324866e-006, -0.999986649, -1.25599138e-006, -2.53723101e-007, -2.53726483e-007, 1.08299741e-006, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Bright red","Part",Vector3.new(0.420000017, 0.200000003, 0.240000039))
Partweld=weld(m,GunHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0897331238, -4.09940767, -0.300321579, 0.999986649, 1.75541956e-010, 4.23136887e-010, -4.28540536e-010, -4.99766983e-008, 1, 1.77802967e-010, -0.999986649, -4.97412458e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.200000003, 0.200000003))
Partweld=weld(m,GunHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.300380707, -0.399925232, 2.69894695, 2.54958943e-010, -0.999986649, -5.11322526e-007, -0.999986649, -2.52948495e-010, 5.04145078e-007, -5.0413297e-007, 5.11551889e-007, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Bright red","Part",Vector3.new(0.420000017, 0.200000003, 0.240000039))
Partweld=weld(m,GunHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0896949768, -5.09941053, -0.300304413, 0.999986649, 2.16437007e-010, 5.04708164e-010, -5.10111731e-010, -4.76247095e-008, 1, 2.18473767e-010, -0.999986649, -4.74842494e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000036, 2.60000014, 0.400000006))
Partweld=weld(m,GunHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.499893188, -1.29933453, -0.30043602, 0.999986649, 1.24942667e-010, 3.0064895e-010, -3.06080966e-010, -4.97747621e-008, 1, 1.2721374e-010, -0.999986649, -4.95389116e-008))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Bright red","Part",Vector3.new(0.410000026, 0.200000003, 0.420000017))
Partweld=weld(m,GunHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.105361938, -5.09940863, -0.300439835, 0.999986649, 2.19144619e-010, 4.92763108e-010, -4.98166786e-010, -4.75694506e-008, 1, 2.21181351e-010, -0.999986649, -4.74289905e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.400000036, 0.599999964))
Partweld=weld(m,GunHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.300424576, -0.499774933, 0.301050901, -1.16660328e-006, 0.999986649, -1.08499785e-006, -0.999986649, -1.16660124e-006, -2.5373717e-007, -2.53740467e-007, 1.08474649e-006, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Bright red","Part",Vector3.new(0.800000072, 0.200000003, 0.800000012))
Partweld=weld(m,GunHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.30022049, -1.09940672, -0.300344467, 0.999986649, 1.32488548e-010, 3.23731736e-010, -3.29136274e-010, -4.74834252e-008, 1, 1.34745423e-010, -0.999986649, -4.72433328e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Bright red","Part",Vector3.new(0.410000026, 0.200000003, 0.420000017))
Partweld=weld(m,GunHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.105297089, -4.09940767, -0.30047226, 0.999993324, 1.69849676e-010, 3.96380623e-010, -4.0018916e-010, -4.98077881e-008, 1, 1.70983894e-010, -0.999993324, -4.96867543e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.800000012, 0.400000006, 2))
Partweld=weld(m,GunHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.100025177, 0.300323486, 0.000544548035, 0.999986649, 1.76003934e-011, 4.28246882e-011, -1.9868801e-011, 0.999986649, 1.89625915e-009, -5.04464248e-011, -2.13898055e-009, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Bright red","Part",Vector3.new(0.420000017, 0.399999857, 0.240000039))
Partweld=weld(m,GunHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0897445679, -5.79940653, -0.300327301, 0.999986649, 1.55701896e-010, 3.90041111e-010, -3.97658184e-010, -5.18663867e-008, 1, 1.5797029e-010, -0.999986649, -5.16243261e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.200000003, 0.399999976))
Partweld=weld(m,GunHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.300367355, -0.199840546, 3.79894853, 1.59872254e-010, -0.999986649, -7.96914179e-008, -0.999986649, -1.57611257e-010, -3.62458841e-010, 3.67863295e-010, 7.99264726e-008, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000036, 2.60000014, 0.400000006))
Partweld=weld(m,GunHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0998916626, -2.29933071, -0.300395966, 0.999986649, 1.41108e-010, 3.18053445e-010, -3.23485155e-010, -5.00977677e-008, 1, 1.43379086e-010, -0.999986649, -4.98619173e-008))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.400000006, 0.400000095))
Partweld=weld(m,GunHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.300045013, 0.300441742, -1.99945283, 0.999986649, 1.41472348e-010, 3.41166845e-010, -1.43733345e-010, 0.999986649, 1.990154e-008, -3.46571577e-010, -2.0137394e-008, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Light stone grey","Part",Vector3.new(0.400000036, 0.200000003, 0.800000012))
Partweld=weld(m,GunHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.100158691, -6.09941149, -0.300437927, 0.999986649, 1.56263169e-010, -7.46887552e-011, 6.95088431e-011, -5.0951229e-008, 1, 1.58761615e-010, -0.999986649, -5.07156344e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Bright red","Part",Vector3.new(0.410000026, 0.400000006, 0.420000017))
Partweld=weld(m,GunHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.105251312, -5.79940557, -0.300508499, 0.999986649, 1.52321961e-010, 3.68549413e-010, -3.76166764e-010, -5.18612779e-008, 1, 1.54590341e-010, -0.999986649, -5.16192173e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.200000003, 0.599999964))
Partweld=weld(m,GunHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.300346375, -0.400138855, 1.30104756, 1.31146123e-006, -0.999986529, 1.0877593e-006, 0.999986172, 1.35616187e-006, 2.03296949e-007, -2.03299621e-007, 1.08741017e-006, 0.999999702))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000036, 4, 0.400000036))
Partweld=weld(m,GunHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.10011673, -3.99940634, -0.300430298, 0.999986649, 1.33827005e-010, 3.36718153e-010, -3.44335921e-010, -5.2595162e-008, 1, 1.36095413e-010, -0.999986649, -5.23531156e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Bright red","Part",Vector3.new(0.800000072, 0.200000003, 0.800000012))
Partweld=weld(m,GunHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.300197601, -1.69940472, -0.300382614, 0.999986649, 1.56137825e-010, 3.67033265e-010, -3.72437692e-010, -5.02825515e-008, 1, 1.58399002e-010, -0.999986649, -4.98551174e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.400000006, 0.599999964))
Partweld=weld(m,GunHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.300363541, -0.300140381, 2.49895048, 5.94261316e-008, 0.999986649, -3.15601568e-007, 0.999986649, -5.9428352e-008, 1.05065951e-007, 1.05069944e-007, -3.15336081e-007, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.210000008, 0.200000033))
Partweld=weld(m,GunHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0998954773, -6.10440683, -0.300350189, 0.999986649, 1.26621949e-010, 3.31786959e-010, -3.39404865e-010, -5.15411713e-008, 1, 1.28890357e-010, -0.999986649, -5.12991107e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.620000005))
------------------------------------------------------------------- ERAGON UNIT ---------------------------------------------


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

--[[function MagicCylinder(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,"SmoothPlastic",0,0,brickcolor,"Effect",vt(0.2,0.2,0.2))
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
end ]]

function MagicCylinder2(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,Character,"SmoothPlastic",0,0,brickcolor,"Effect",vt(0.2,0.2,0.2))
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("CylinderMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
--table.insert(Effects,{prt,"Cylinder",delay,x3,y3,z3})
Effects[#Effects+1]={prt,"Cylinder",delay,x3,y3,z3} --part, type, delay
--[[coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
wait()
Part.CFrame=Part.CFrame
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)]]
end

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

function MagicBlock(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,"SmoothPlastic",0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
table.insert(Effects,{prt,"Block1",delay,x3,y3,z3}) --part, type, delay
end

RocketTarget = RootPart
function ShootCannon(asd)
so("rbxassetid://263623156",asd,.5,1) 
so("rbxassetid://263610152",asd,.5,1) 
so("rbxassetid://263623139",asd,.5,1) 
local MainPos=asd.Position
local MainPos2=mouse.Hit.p
local MouseLook=cf((MainPos+MainPos2)/2,MainPos2)
num=30
coroutine.resume(coroutine.create(function() 
repeat
wait()
local hit,pos = rayCast(MainPos,MouseLook.lookVector,10,RocketTarget.Parent)
local mag=(MainPos-pos).magnitude 
MagicCylinder2(BrickColor.new("Bright red"),CFrame.new((MainPos+pos)/2,pos)*angles(1.57,0,0),3,mag*5,3,1.5,0,1.5,0.1)
MainPos=MainPos+(MouseLook.lookVector*10)
num=num-1
if hit~=nil then
num=0
local ref=part(3,workspace,"SmoothPlastic",0,1,BrickColor.new("Bright red"),"Reference",vt())
ref.Anchored=true
ref.CFrame=cf(pos)
MagniDamage(ref,hit,1,30,50,1,"Normal")
so("rbxassetid://263610039",ref,1,1) 
so("rbxassetid://263610111",ref,1,1) 
MagicBlock(BrickColor.new("Bright red"),cf(pos),20,20,20,5,5,5,0.05)
game:GetService("Debris"):AddItem(ref,1)
MagniDamage(ref,ref,15,10,20,10,"Normal")
end
until num<=0
end))
end

function cannon1()
attack = true
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(-50)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(50)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(20)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-50)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(130),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-50),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
JointHandleAweld.C0=clerp(JointHandleAweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(50),math.rad(0)),.3)
JointHandleBweld.C0=clerp(JointHandleBweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(50),math.rad(0)),.3)
GunHandleAweld.C0=clerp(GunHandleAweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(-60),math.rad(0)),.3)
GunHandleBweld.C0=clerp(GunHandleBweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(-60),math.rad(0)),.3)
end
so("http://roblox.com/asset/?id=268192025",Barrel5A,1,1) 
so("http://roblox.com/asset/?id=268191996",Barrel5A,1,1) 
so("http://roblox.com/asset/?id=268191976",Barrel5A,1,1) 
--ShootCannon(Barrel5A)
--ShootCannon(Barrel4A)
--ShootCannon(Barrel6A)
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(-50)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(50)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(20)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(150), math.rad(-60), math.rad(-50)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(130),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-50),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
JointHandleAweld.C0=clerp(JointHandleAweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(50),math.rad(0)),.3)
JointHandleBweld.C0=clerp(JointHandleBweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(50),math.rad(0)),.3)
GunHandleAweld.C0=clerp(GunHandleAweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(-60),math.rad(0)),.3)
GunHandleBweld.C0=clerp(GunHandleBweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(-60),math.rad(0)),.3)
end
attack = false
end

function Shootcombo()
attack = true
for i = 0,1,0.1 do
--swait()
wait(0.05)
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(50)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(-50)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(50)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-10)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(50),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-120),math.rad(10)),.3)
end
so("http://www.roblox.com/asset/?id=169445602",BarrelA,.7,1.5)
so("http://www.roblox.com/asset/?id=169445602",BarrelB,.7,1.5)
so("http://www.roblox.com/asset/?id=169380505",BarrelA,.7,1.1)
so("http://www.roblox.com/asset/?id=169380505",BarrelB,.7,1.1)
table.insert(Effects,{BarrelA.CFrame.lookVector,"Shoot",10,BarrelA.Position,5,10,0,1})
table.insert(Effects,{BarrelB.CFrame.lookVector,"Shoot",10,BarrelB.Position,5,10,0,1})
for i = 0,1,0.2 do
swait()
wait(0.05)
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(50)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-5),math.rad(5),math.rad(-50)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(130), math.rad(30), math.rad(50)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-10)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(50),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-120),math.rad(10)),.3)
end
attack = false
end

function BladeAttackOne()
attack = true
local con=Hitbox.Touched:connect(function(hit) Damagefunc(Hitbox,hit,20,30,math.random(5,5),"Normal",RootPart,.2,1) end) 
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(-70)),0.4)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(70)),0.4)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(30), math.rad(100)),0.4)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)),0.4)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(120),math.rad(0)),0.4)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-50),math.rad(0)),0.4)
end
--so("http://roblox.com/asset/?id=206083107",handle,1,1) 
so("http://www.roblox.com/asset/?id=200633148",handle,1,.9)
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
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(80)),0.4)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(-10),math.rad(-80)),0.4)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(120), math.rad(90)),0.4)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-30)),0.4)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(50),math.rad(0)),0.4)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-120),math.rad(-10)),0.4)
end
attack = false
con:disconnect()
end

function BladeAttackTwo()
attack = true
local con=Hitbox.Touched:connect(function(hit) Damagefunc(Hitbox,hit,20,30,math.random(5,5),"Normal",RootPart,.2,1) end) 
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(70)),0.4)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(-10),math.rad(-70)),0.4)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(120), math.rad(90)),0.4)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-30)),0.4)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(40),math.rad(0)),0.4)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-140),math.rad(-10)),0.4)
end
--so("http://roblox.com/asset/?id=206083107",handle,1,.9) 
so("http://www.roblox.com/asset/?id=200633196",handle,1,1)
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
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(-80)),0.4)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(0),math.rad(80)),0.4)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(10), math.rad(90)),0.4)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)),0.4)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(140),math.rad(0)),0.4)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-40),math.rad(-10)),0.4)
end
attack = false
con:disconnect()
end

function BladeAttackThree()
attack = true
local con=Hitbox.Touched:connect(function(hit) Damagefunc(Hitbox,hit,20,30,math.random(5,5),"Normal",RootPart,.2,1) end) 
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(20)),0.4)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-20)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(170), math.rad(0), math.rad(20)),0.4)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-30)),0.4)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),0.4)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(-10)),0.4)
end
--so("http://roblox.com/asset/?id=206083107",handle,1,1.1) 
so("http://www.roblox.com/asset/?id=200633196",handle,1,.9)
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
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(40)),0.4)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(0),math.rad(-40)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(-10)),0.4)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-10)),0.4)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),0.4)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(-10)),0.4)
end
attack = false
con:disconnect()
end

function BladeAttackFour()
attack = true
local con=Hitbox.Touched:connect(function(hit) Damagefunc(Hitbox,hit,20,30,math.random(5,5),"Normal",RootPart,.2,1) end) 
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(70)),0.4)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-70)),.4)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(120), math.rad(90)),0.4)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-30)),0.4)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),0.4)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(-10)),0.4)
end
so("http://www.roblox.com/asset/?id=200633148",handle,1,.8)
Torso.Velocity=Head.CFrame.lookVector*100
for i = 0,1,0.05 do
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
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,-1)* angles(math.rad(40),math.rad(0),math.rad(-70)),0.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-20),math.rad(-30),math.rad(70)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(20), math.rad(90)),0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(-60)),0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(60),math.rad(-30)),0.3)
LH.C0=clerp(LH.C0,cf(-1,.2,0)*angles(math.rad(0),math.rad(-40),math.rad(-60)),0.3)
end
con:disconnect()
attack = false
end

function ElecEffect(cff,x,y,z)
local prt=part(3,workspace,"SmoothPlastic",0,0,BrickColor.new("Really red"),"Part",vt(1,1,1))
prt.Anchored=true
prt.CFrame=cff*cf(math.random(-x,x),math.random(-y,y),math.random(-z,z))
prt.CFrame=cf(prt.Position)
--prt.CFrame=cf(cff)*cf(math.random(-x,x),math.random(-y,y),math.random(-z,z))
game:GetService("Debris"):AddItem(prt,2)
xval=math.random()/2
yval=math.random()/2
zval=math.random()/2
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(xval,yval,zval))
Effects[#Effects+1]={prt,"Elec",0.1,x,y,z,xval,yval,zval} --part, type, delay
end

function Test()
ElecEffect(Hitbox.CFrame,2,4,2)
end

attacktype1 = 1
mouse.Button1Down:connect(function()
	if Mode == "Gun" then
        if attack==false then
                if attacktype1==1 then
                        attack=true
                        attacktype1=1
                        Shootcombo()
                end
        end
    end
if Mode == "Blade" then
        if attack==false then
                if attacktype==1 then
                        attack=true
                        attacktype=2
                        BladeAttackOne()
                 elseif attacktype==2 then
                        attack=true
                        attacktype=3
                        BladeAttackTwo()
                 elseif attacktype==3 then
                        attack=true
                        attacktype=4
                        BladeAttackThree()
                 elseif attacktype==4 then
                        attack=true
                        attacktype=5
                        BladeAttackFour()
                 elseif attacktype==5 then
                        attack=true
                        attacktype=1
                        cannon1()
                end
        end
    end
end)

mouse.KeyDown:connect(function(k)
        k=k:lower()
        if k=='f' then
                if Mode == "Gun" then
                        Mode = "Blade"
                        so("http://www.roblox.com/asset/?id=152052659",handle,1,1)
                elseif Mode == "Blade" then
                        Mode = "Gun"
                        so("http://www.roblox.com/asset/?id=211134014",handle,1,1)
end
elseif k=='q' then
		Test()
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
if attack==false and Mode == "Gun" then
change=3
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(50), math.rad(0), math.rad(20)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-10)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(-10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(20)),.3)
BladeHandleweld.C0=clerp(BladeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
end
if attack==false and Mode == "Blade" then
change=3
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(50), math.rad(0), math.rad(20)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-10)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(-10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(20)),.3)
BladeHandleweld.C0=clerp(BladeHandleweld.C0, CFrame.new(0, -3, 1.2) * angles(math.rad(180), math.rad(0), math.rad(0)), 0.3)
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
Anim="Fall"
if attack==false and Mode == "Gun" then
change=3
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(50), math.rad(0), math.rad(20)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-30)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(-20)),.3)
BladeHandleweld.C0=clerp(BladeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
end
if attack==false and Mode == "Blade" then
change=3
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(50), math.rad(0), math.rad(20)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-30)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(-20)),.3)
BladeHandleweld.C0=clerp(BladeHandleweld.C0, CFrame.new(0, -3, 1.2) * angles(math.rad(180), math.rad(0), math.rad(0)), 0.3)
end
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
if attack==false and Mode == "Gun" then
change=3
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(20)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(-20)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(50), math.rad(0), math.rad(20)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-10)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(70),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-80),math.rad(10)),.3)
BladeHandleweld.C0=clerp(BladeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
end
if attack==false and Mode == "Blade" then
change=3
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(-40)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(40)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(60), math.rad(0), math.rad(20)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-30)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(80),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-60),math.rad(-5)),.3)
BladeHandleweld.C0=clerp(BladeHandleweld.C0, CFrame.new(0, -3, 1.2) * angles(math.rad(180), math.rad(0), math.rad(0)), 0.3)
end
elseif torvel>2 and hitfloor~=nil then
Anim="Walk"
if attack==false and Mode == "Gun" then
change=3
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(20),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-10),math.rad(0),math.rad(-0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(40), math.rad(0), math.rad(20)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-10)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(10)),.3)
BladeHandleweld.C0=clerp(BladeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
end
if attack==false and Mode == "Blade" then
change=3
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(20),math.rad(0),math.rad(10)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-20),math.rad(1),math.rad(-10)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(80), math.rad(5), math.rad(20)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(-20)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
BladeHandleweld.C0=clerp(BladeHandleweld.C0, CFrame.new(0, -3, 1.2) * angles(math.rad(180), math.rad(0), math.rad(0)), 0.3)
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
Damagefunc(Hitbox,hit,Thing[5],Thing[6],Thing[7],"Normal",RootPart,0,2,math.random(1,5),nil,nil,true)
elseif Thing[8]==2 then
Damagefunc(Hitbox,hit,Thing[5],Thing[6],Thing[7],"NormalDecreaseMvmt1",RootPart,0,2,math.random(1,5),nil,nil,true)
end
ref=part(3,workspace,"SmoothPlastic",0,1,BrickColor.new("Really red"),"Reference",vt())
ref.Anchored=true
ref.CFrame=cf(pos)
MagicCircle(BrickColor.new("Really red"),cf(pos),5,5,5,1,1,1,0.03)
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