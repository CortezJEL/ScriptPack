
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
attack = false 
attacktype = 1 
damage = 5 
oridamage = 50 
attackdebounce = false 
ssdebounce=false
MMouse=nil
combo=0
--player 
player = nil 
--save shoulders 
RSH, LSH = nil, nil 
--welds 
RW, LW = Instance.new("Weld"), Instance.new("Weld") 
RW.Name="Right Shoulder" LW.Name="Left Shoulder"
 
 
if Character:findFirstChild("Dual Swords",true) ~= nil then 
Character:findFirstChild("Dual Swords",true).Parent = nil 
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
fp.BottomSurface="Smooth"
fp.TopSurface="Smooth"
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
 
local modelzorz = Instance.new("Model") 
modelzorz.Parent = Character 
modelzorz.Name = "Dual Swords" 
 
local prt1=part(3,modelzorz,0,0,Torso.BrickColor,"Part1",vt(0.3,0.5,0.3))
local prt2=part(3,modelzorz,0,0,BrickColor.new("Really black"),"Part2",vt(0.25,1.5,0.25))
local prt4=part(3,modelzorz,0,0,BrickColor.new("Really black"),"Part4",vt(0.3,0.6,0.21))
local prt5=part(3,modelzorz,0,0,BrickColor.new("Really Really black"),"Part5",vt(0.25,0.6,0.16))
local prt6=part(3,modelzorz,0.3,0,BrickColor.new("Silver"),"Part6",vt(0.25,3,0.16))
local prt7=part(3,modelzorz,0.3,0,BrickColor.new("Silver"),"Part7",vt(0.1,0.5,0.25))
local prt8=part(3,modelzorz,0,0,BrickColor.new("Really black"),"Part8",vt(0.2,1.5,0.2))
local prt9=part(3,modelzorz,0,1,BrickColor.new("Really black"),"Hitbox",vt(0.5,4,0.5))
 
local msh1=mesh("BlockMesh",prt1,"","",vt(0,0,0),vt(1,1,1))
local msh2=mesh("BlockMesh",prt2,"","",vt(0,0,0),vt(1,1,1))
local msh4=mesh("BlockMesh",prt4,"","",vt(0,0,0),vt(1,1,1))
local msh5=mesh("BlockMesh",prt5,"","",vt(0,0,0),vt(1,1,1))
local msh6=mesh("BlockMesh",prt6,"","",vt(0,0,0),vt(1,1,0.25))
local msh7=mesh("SpecialMesh",prt7,"Wedge","",vt(0,0,0),vt(0.25,1,1))
local msh8=mesh("CylinderMesh",prt8,"","",vt(0,0,0),vt(1,1,1))
 
local wld1=weld(prt1,prt1,Torso,euler(0,0,0.785)*cf(1,0,-0.5))
local wld2=weld(prt2,prt2,prt1,euler(0,0,0)*cf(0,0,0))
local wld4=weld(prt4,prt4,prt2,euler(0,0,0)*cf(0,-1,0))
local wld5=weld(prt5,prt5,prt4,euler(0,0,0)*cf(0,-0.01,0))
local wld6=weld(prt6,prt6,prt4,euler(0,0,0)*cf(0,-1.5,0))
local wld7=weld(prt7,prt7,prt6,euler(0,-1.57,0)*cf(0,-1.75,0))
local wld8=weld(prt8,prt8,prt6,euler(0,0,0)*cf(0,0.5,0))
local wld9=weld(prt9,prt9,prt6,euler(0,0,0)*cf(0,0,0))
 
local aprt1=part(3,modelzorz,0,0,Torso.BrickColor,"aPart1",vt(0.3,0.5,0.3))
local aprt2=part(3,modelzorz,0,0,BrickColor.new("Really black"),"aPart2",vt(0.25,1.5,0.25))
local aprt4=part(3,modelzorz,0,0,BrickColor.new("Really black"),"aPart4",vt(0.3,0.6,0.21))
local aprt5=part(3,modelzorz,0,0,BrickColor.new("Really Really black"),"aPart5",vt(0.25,0.6,0.16))
local aprt6=part(3,modelzorz,0.3,0,BrickColor.new("Silver"),"aPart6",vt(0.25,3,0.16))
local aprt7=part(3,modelzorz,0.3,0,BrickColor.new("Silver"),"aPart7",vt(0.1,0.5,0.25))
local aprt8=part(3,modelzorz,0,0,BrickColor.new("Really black"),"aPart8",vt(0.2,1.5,0.2))
local aprt9=part(3,modelzorz,0,1,BrickColor.new("Really black"),"aHitbox",vt(0.5,4,0.5))
 
local amsh1=mesh("BlockMesh",aprt1,"","",vt(0,0,0),vt(1,1,1))
local amsh2=mesh("BlockMesh",aprt2,"","",vt(0,0,0),vt(1,1,1))
local amsh4=mesh("BlockMesh",aprt4,"","",vt(0,0,0),vt(1,1,1))
local amsh5=mesh("BlockMesh",aprt5,"","",vt(0,0,0),vt(1,1,1))
local amsh6=mesh("BlockMesh",aprt6,"","",vt(0,0,0),vt(1,1,0.25))
local amsh7=mesh("SpecialMesh",aprt7,"Wedge","",vt(0,0,0),vt(0.25,1,1))
local amsh8=mesh("CylinderMesh",aprt8,"","",vt(0,0,0),vt(1,1,1))
 
local awld1=weld(aprt1,aprt1,Torso,euler(0,0,0.785)*cf(-1,0,-0.5))
local awld2=weld(aprt2,aprt2,aprt1,euler(3.14,3.14,0)*cf(0,0,0))
local awld4=weld(aprt4,aprt4,aprt2,euler(0,0,0)*cf(0,-1,0))
local awld5=weld(aprt5,aprt5,aprt4,euler(0,0,0)*cf(0,-0.01,0))
local awld6=weld(aprt6,aprt6,aprt4,euler(0,0,0)*cf(0,-1.5,0))
local awld7=weld(aprt7,aprt7,aprt6,euler(0,-1.57,0)*cf(0,-1.75,0))
local awld8=weld(aprt8,aprt8,aprt6,euler(0,0,0)*cf(0,0.5,0))
local awld9=weld(aprt9,aprt9,aprt6,euler(0,0,0)*cf(0,0,0))
 
numb=0
numb2=0
for i=1,8 do
local prt3=part(3,modelzorz,0,0,BrickColor.new("Really black"),"Part3",vt(0.2,0.4,0.2))
local msh3=mesh("BlockMesh",prt3,"","",vt(0,0,0),vt(1+numb2,1+numb2,1+numb2))
local wld3=weld(prt3,prt3,prt2,cf(0.8,0,0)*euler(0,0,1.57-numb))
local dprt3=part(3,modelzorz,0,0,BrickColor.new("Really black"),"Part3",vt(0.2,0.2,0.2))
local dmsh3=mesh("BlockMesh",dprt3,"","",vt(0,0,0),vt(0.8+numb2,1.01+numb2,1+numb2))
local dwld3=weld(dprt3,dprt3,prt3,euler(0,0,1.57)*cf(0.2,0,0))
 
local aprt3=part(3,modelzorz,0,0,BrickColor.new("Really black"),"Part3",vt(0.2,0.4,0.2))
local amsh3=mesh("BlockMesh",aprt3,"","",vt(0,0,0),vt(1+numb2,1+numb2,1+numb2))
local awld3=weld(aprt3,aprt3,aprt2,cf(0.8,0,0)*euler(0,0,1.57-numb))
local daprt3=part(3,modelzorz,0,0,BrickColor.new("Really black"),"Part3",vt(0.2,0.2,0.2))
local damsh3=mesh("BlockMesh",daprt3,"","",vt(0,0,0),vt(0.8+numb2,1.01+numb2,1+numb2))
local dawld3=weld(daprt3,daprt3,aprt3,euler(0,0,1.57)*cf(0.2,0,0))
numb2=numb2+0.01
numb=numb+0.3925
end
if (script.Parent.className ~= "HopperBin") then 
Tool = Instance.new("HopperBin") 
Tool.Parent = Backpack 
Tool.Name = "Dual Swords" 
script.Parent = Tool 
end 
Bin = script.Parent 
 
local bg = it("BodyGyro") 
bg.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge 
bg.P = 20e+003 
bg.Parent = nil 
 
so = function(id,par,vol,pit) 
coroutine.resume(coroutine.create(function()
local sou = Instance.new("Sound",par or workspace)
sou.Volume=vol
sou.Pitch=pit or 1
sou.SoundId=id
wait() 
sou:play() 
wait(6) 
sou:Remove() 
end))
end
 
function unequipweld() 
wld1.Part1=Torso
wld1.C0=euler(0,0,0.785)*cf(1,0,-0.5)
awld1.Part1=Torso
awld1.C0=euler(0,0,0.785)*cf(-1,0,-0.5)
end 
 
function equipweld() 
wld1.Part1=RightArm
wld1.C0=euler(1.57,0,-1.57)*cf(0,1,0)
awld1.Part1=LeftArm
awld1.C0=euler(-1.57,0,1.57)*cf(0,1,0)
end 
 
function hideanim() 
equipped=false
wait(0.1) 
bg.Parent=nil
unequipweld() 
end 
 
function equipanim() 
equipped=true
wait(0.1) 
equipweld() 
RW.C0=cf(1.5, 0.5, -0.25) * euler(1.5,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,-0.6,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(1,0,0)
LW.C1=cf(0, 0.5, 0) * euler(0,0.4,0)
end 
 
function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game.Workspace:FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 
 
function MagicCircle(brickcolor,cframe,x1,y1,z1,x2,y2,z2,x3,y3,z3)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe*cf(x2,y2,z2)
local msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(x1,y1,z1))
coroutine.resume(coroutine.create(function() 
for i=0,1,0.1 do
wait()
prt.CFrame=prt.CFrame
prt.Transparency=i
msh.Scale=msh.Scale+vt(x3,y3,z3)
end
prt.Parent=nil
end))
end
 
function SpecialEffect() 
local prt=part(3,workspace,1,0,BrickColor.new("Silver"),"Part",vt(1,1,1))
prt.Anchored=true
prt.CFrame=Torso.CFrame
local msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(0.5,0.5,0.5))
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,0.2 do
wait(0)
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(10,10,10)
end
prt.Parent=nil
end),prt,msh)
end 
 
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
if returnn then return effectsg end
coroutine.resume(coroutine.create(function(Part,Mesh)
if not returnn then
for i = 0 , 1 , 0.05 do
wait()
Part.Transparency = 1*i
Mesh.Scale = Vector3.new(0.2-0.2*i,1,0.2-0.2*i)
end
wait()
Part.Parent = nil
end
end),effectsg,effectsmsh)
end
 
Damagefunc1=function(hit,Damage,Knockback)
        if hit.Parent==nil then
                return
        end
        CPlayer=Bin 
        h=hit.Parent:FindFirstChild("Humanoid")
        if h~=nil and hit.Parent.Name~=Character.Name and hit.Parent:FindFirstChild("Torso")~=nil then
        if attackdebounce == false then 
        attackdebounce = true 
        coroutine.resume(coroutine.create(function() 
        wait(0.2) 
        attackdebounce = false 
        end)) 
        Damage=Damage
--[[                if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
                        return
                end]]
--                        hs(hit,1.2) 
                        c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=game.Players.LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                Damage=Damage+math.random(0,10)
--                h:TakeDamage(Damage)
                blocked=false
                block=hit.Parent:findFirstChild("Block")
                if block~=nil then
                print("herp")
                if block.Value>0 then
                blocked=true
                block.Value=block.Value-1
                print(block.Value)
                end
                end
                if blocked==false then
--                h:TakeDamage(Damage)
                h.Health=h.Health-Damage
                showDamage(hit.Parent,Damage,.5)
                else
                h:TakeDamage(1)
                showDamage(hit.Parent,1,.5)
                end
                vp=Instance.new("BodyVelocity")
                vp.P=500
                vp.maxForce=Vector3.new(math.huge,0,math.huge)
--                vp.velocity=Character.Torso.CFrame.lookVector*Knockback
                vp.velocity=Torso.CFrame.lookVector*Knockback+Torso.Velocity/1.05
                if Knockback>0 then
                        vp.Parent=hit.Parent.Torso
                end
                game:GetService("Debris"):AddItem(vp,.25)
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
 
Damagefunc2=function(hit,Damage,Knockback)
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
        blocked=false
        h=hit.Parent:FindFirstChild("Humanoid")
        if h~=nil and hit.Parent:FindFirstChild("Torso")~=nil then
                Damage=Damage
                        c=it("ObjectValue")
                        c.Name="creator"
                        c.Value=game.Players.LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
--                        print(c.Value)
--[[                if math.random(0,99)+math.random()<=7.8 then
                        CRIT=true
                        Damage=Damage*2
                        s=it("Sound")
                        s.SoundId="http://www.roblox.com/asset/?id=2801263"
                        s.Volume=1
                        s.Pitch=2
                        s.Parent=hit
                        s.PlayOnRemove=true
                        s.Parent=nil
        
                end]]
                Damage=Damage+math.random(0,10)
--                Blood(hit.CFrame*cf(math.random(-10,10)/10,math.random(-10,10)/10,0),math.floor(Damage/2))
                blocked=false
                block=hit.Parent:findFirstChild("Block")
                if block~=nil then
                print("herp")
                if block.Value>0 then
                blocked=true
                block.Value=block.Value-3
                print(block.Value)
                end
                end
                if blocked==false then
--                h:TakeDamage(Damage)
                h.Health=h.Health-Damage
                showDamage(hit.Parent,Damage,.5)
                else
                h:TakeDamage(1)
                showDamage(hit.Parent,1,.5)
                end
--if blocked==false then
local angle = (hit.Position-(Torso.Position+Vector3.new(0,0,0))).unit
print(angle)
--hit.CFrame=CFrame.new(hit.Position,Vector3.new(angle.x,hit.Position.y,angle.z))*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
                rl=Instance.new("BodyAngularVelocity")
                rl.P=3000
                rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
                rl.angularvelocity=Vector3.new(math.random(-50,50),math.random(-50,50),math.random(-50,50))
                rl.Parent=hit
coroutine.resume(coroutine.create(function(vel) 
wait(1) 
vel:Remove() 
end),rl) 
--end
local bodyVelocity=Instance.new("BodyVelocity")
bodyVelocity.velocity=angle*40+Vector3.new(0,0,0)
bodyVelocity.P=5000
bodyVelocity.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
bodyVelocity.Parent=hit
coroutine.resume(coroutine.create(function(Vel) 
wait(0.7) 
Vel:Remove() 
end),bodyVelocity) 
                game:GetService("Debris"):AddItem(vp,1)
                                c=it("ObjectValue")
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
 
function oneslash()
attack=true
combo=1
for i=0,1,0.1 do
wait()
RW.C0=cf(1.5, 0.5, -0.25+0.25*i) * euler(1.5+1*i,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,-0.6+0.2*i,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(1+1.5*i,0,0)
LW.C1=cf(0, 0.5, 0) * euler(0,0.4,0)
end
local LastPoint=prt6.CFrame*CFrame.new(0,prt6.Size.Y/1.5,0)
local LastPoint2=aprt6.CFrame*CFrame.new(0,aprt6.Size.Y/1.5,0)
so("http://roblox.com/asset/?id=10209640",LeftArm,1,1) 
so("http://roblox.com/asset/?id=10209640",RightArm,1,1) 
con1=prt9.Touched:connect(function(hit) Damagefunc1(hit,20,10) end) 
con2=aprt9.Touched:connect(function(hit) Damagefunc1(hit,20,10) end) 
for i=0,1,0.2 do
wait()
RW.C0=cf(1.5, 0.5, 0) * euler(2.5-3*i,0,0.6*i)
LW.C0=cf(-1.5, 0.5, 0) * euler(2.5-3*i,0,-0.6*i)
local Point=prt6.CFrame*CFrame.new(0,prt6.Size.Y/1.5,0)
effect("Silver",0.5,LastPoint,Point)
LastPoint=Point
local Point2=aprt6.CFrame*CFrame.new(0,aprt6.Size.Y/1.5,0)
effect("Silver",0.5,LastPoint2,Point2)
LastPoint2=Point2
end
con1:disconnect()
con2:disconnect()
attack=false
end
function twoslash()
attack=true
combo=2
for i=0,1,0.1 do
wait()
RW.C0=cf(1.5, 0.5, 0) * euler(-0.5+2.07*i,0,0.6-0.6*i)
RW.C1=cf(0, 0.5, 0) * euler(0,-0.4-0.87*i,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(-0.5+2.07*i,0,-0.6+0.6*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0.4+1.37*i,0)
end
local LastPoint=prt6.CFrame*CFrame.new(0,prt6.Size.Y/1.5,0)
local LastPoint2=aprt6.CFrame*CFrame.new(0,aprt6.Size.Y/1.5,0)
so("http://roblox.com/asset/?id=10209640",LeftArm,1,1) 
so("http://roblox.com/asset/?id=10209640",RightArm,1,1) 
con1=prt9.Touched:connect(function(hit) Damagefunc1(hit,20,10) end) 
con2=aprt9.Touched:connect(function(hit) Damagefunc1(hit,20,10) end) 
for i=0,1,0.2 do
wait()
RW.C0=cf(1.5, 0.5, 0) * euler(1.57,0,2*i)
RW.C1=cf(0, 0.5, 0) * euler(0,-1.27-0.3*i,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(1.57,0,-2*i)
LW.C1=cf(0, 0.5, 0) * euler(0,1.77-0.2*i,0)
local Point=prt6.CFrame*CFrame.new(0,prt6.Size.Y/1.5,0)
effect("Silver",0.5,LastPoint,Point)
LastPoint=Point
local Point2=aprt6.CFrame*CFrame.new(0,aprt6.Size.Y/1.5,0)
effect("Silver",0.5,LastPoint2,Point2)
LastPoint2=Point2
end
con1:disconnect()
con2:disconnect()
attack=false
end
function threeslash()
attack=true
combo=3
for i=0,1,0.1 do
wait()
RW.C0=cf(1.5-1.5*i, 0.5, -1*i) * euler(1.57,0,2-3*i)
LW.C0=cf(-1.5, 0.5, 0) * euler(1.57+0.93*i,0,-2+2*i)
LW.C1=cf(0, 0.5, 0) * euler(0,1.57-1.57*i,0)
end
local LastPoint=prt6.CFrame*CFrame.new(0,prt6.Size.Y/1.5,0)
so("http://roblox.com/asset/?id=10209640",RightArm,1,1) 
con1=prt9.Touched:connect(function(hit) Damagefunc1(hit,10,5) end) 
for i=0,1,0.2 do
wait()
RW.C0=cf(1.5*i, 0.5, -1+1*i) * euler(1.57,0,-1+3*i)
local Point=prt6.CFrame*CFrame.new(0,prt6.Size.Y/1.5,0)
effect("Silver",0.5,LastPoint,Point)
LastPoint=Point
end
con1:disconnect()
local LastPoint2=aprt6.CFrame*CFrame.new(0,aprt6.Size.Y/1.5,0)
so("http://roblox.com/asset/?id=10209640",LeftArm,1,1) 
con2=aprt9.Touched:connect(function(hit) Damagefunc1(hit,10,5) end) 
for i=0,1,0.2 do
wait()
LW.C0=cf(-1.5, 0.5, 0) * euler(2.5-3*i,0,0)
local Point2=aprt6.CFrame*CFrame.new(0,aprt6.Size.Y/1.5,0)
effect("Silver",0.5,LastPoint2,Point2)
LastPoint2=Point2
end
con2:disconnect()
attack=false
end
 
function TornadoSlash()
attack=true
for i=0,1,0.1 do
wait()
RW.C0=cf(1.5, 0.5, -0.25+0.25*i) * euler(1.5+0.07*i,0,1.57*i)
RW.C1=cf(0, 0.5, 0) * euler(0,-0.6+2.4*i,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(1+0.57*i,0,-1.57*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0.4+1.4*i,0)
end
bg.Parent=Torso
bg.cframe=Torso.CFrame
CF=Torso.CFrame
local LastPoint=prt6.CFrame*CFrame.new(0,prt6.Size.Y/1.5,0)
local LastPoint2=aprt6.CFrame*CFrame.new(0,aprt6.Size.Y/1.5,0)
con1=prt9.Touched:connect(function(hit) Damagefunc1(hit,10,10) end) 
con2=aprt9.Touched:connect(function(hit) Damagefunc1(hit,10,10) end) 
for i=1,3 do
so("http://roblox.com/asset/?id=10209640",LeftArm,1,1) 
so("http://roblox.com/asset/?id=10209640",RightArm,1,1) 
for i=0,1,0.1 do
wait()
bg.cframe=CF*euler(0,6.283*i,0) 
local Point=prt6.CFrame*CFrame.new(0,prt6.Size.Y/1.5,0)
effect("Silver",0.5,LastPoint,Point)
LastPoint=Point
local Point2=aprt6.CFrame*CFrame.new(0,aprt6.Size.Y/1.5,0)
effect("Silver",0.5,LastPoint2,Point2)
LastPoint2=Point2
end
end
con1:disconnect()
con2:disconnect()
bg.Parent=nil
for i=0,1,0.1 do
wait()
RW.C0=cf(1.5, 0.5, 0) * euler(1.57,0,1.57-1.47*i)
RW.C1=cf(0, 0.5, 0) * euler(0,1.8-2.5*i,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(1.57,0,-1.57+1.47*i)
LW.C1=cf(0, 0.5, 0) * euler(0,1.8-1.1*i,0)
end
local LastPoint=prt6.CFrame*CFrame.new(0,prt6.Size.Y/1.5,0)
local LastPoint2=aprt6.CFrame*CFrame.new(0,aprt6.Size.Y/1.5,0)
so("http://roblox.com/asset/?id=10209640",LeftArm,1,1) 
so("http://roblox.com/asset/?id=10209640",RightArm,1,1) 
con1=prt9.Touched:connect(function(hit) Damagefunc1(hit,10,10) end) 
con2=aprt9.Touched:connect(function(hit) Damagefunc1(hit,10,10) end) 
for i=0,1,0.2 do
wait()
RW.C0=cf(1.5, 0.5, 0) * euler(1.57-2*i,0,0.1+1*i)
LW.C0=cf(-1.5, 0.5, 0) * euler(1.57-2*i,0,-0.1-1*i)
local Point=prt6.CFrame*CFrame.new(0,prt6.Size.Y/1.5,0)
effect("Silver",0.5,LastPoint,Point)
LastPoint=Point
local Point2=aprt6.CFrame*CFrame.new(0,aprt6.Size.Y/1.5,0)
effect("Silver",0.5,LastPoint2,Point2)
LastPoint2=Point2
end
con1:disconnect()
con2:disconnect()
wait(0.1)
for i=0,1,0.1 do
wait()
RW.C0=cf(1.5, 0.5, 0) * euler(-0.43+1.93*i,0,1.1-1.1*i)
RW.C1=cf(0, 0.5, 0) * euler(0,-0.7+0.1*i,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(-0.43+1.43*i,0,-1.1+1.1*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0.7-0.3*i,0)
end
attack=false
end
 
function MultiSpin()
attack=true
for i=0,1,0.1 do
wait()
RW.C0=cf(1.5, 0.5, -0.25+0.25*i) * euler(1.5+2*i,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,-0.6+0.6*i,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(1+2.5*i,0,0)
LW.C1=cf(0, 0.5, 0) * euler(0,0.4-0.4*i,0)
end
local LastPoint=prt6.CFrame*CFrame.new(0,prt6.Size.Y/1.5,0)
local LastPoint2=aprt6.CFrame*CFrame.new(0,aprt6.Size.Y/1.5,0)
so("http://roblox.com/asset/?id=10209640",LeftArm,1,1) 
so("http://roblox.com/asset/?id=10209640",RightArm,1,1) 
con1=prt9.Touched:connect(function(hit) Damagefunc1(hit,10,10) end) 
con2=aprt9.Touched:connect(function(hit) Damagefunc1(hit,10,10) end) 
--6.28
for i=0,1.05,0.05 do
wait()
if i==0.35 or i==0.65 then
so("http://roblox.com/asset/?id=10209640",LeftArm,1,1) 
so("http://roblox.com/asset/?id=10209640",RightArm,1,1) 
end
wld1.C0=euler(1.57,(-6.28*3)*i,-1.57)*cf(0,1,0)
awld1.C0=euler(-1.57,(6.28*3)*i,1.57)*cf(0,1,0)
RW.C0=cf(1.5, 0.5, 0) * euler(3.5-4*i,0,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(3.5-4*i,0,0)
local Point=prt6.CFrame*CFrame.new(0,prt6.Size.Y/1.5,0)
effect("Silver",0.5,LastPoint,Point)
LastPoint=Point
local Point2=aprt6.CFrame*CFrame.new(0,aprt6.Size.Y/1.5,0)
effect("Silver",0.5,LastPoint2,Point2)
LastPoint2=Point2
end
con1:disconnect()
con2:disconnect()
for i=0,1,0.1 do
wait()
RW.C0=cf(1.5, 0.5, 0) * euler(-0.5+2*i,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,-0.6*i,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(-0.5+1.5*i,0,0)
LW.C1=cf(0, 0.5, 0) * euler(0,0.4*i,0)
end
attack=false
end
 
function DashSlash()
attack=true
for i=0,1,0.1 do
wait()
RW.C0=cf(1.5, 0.5, -0.25+0.25*i) * euler(1.5-2*i,0,0.3*i)
RW.C1=cf(0, 0.5, 0) * euler(0,-0.6+1.6*i,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(1-1.5*i,0,-0.3*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0.4-1.4*i,0)
end
local LastPoint=prt6.CFrame*CFrame.new(0,prt6.Size.Y/1.5,0)
local LastPoint2=aprt6.CFrame*CFrame.new(0,aprt6.Size.Y/1.5,0)
while holddash==true do
wait()
Humanoid.WalkSpeed=25
local Point=prt6.CFrame*CFrame.new(0,prt6.Size.Y/1.5,0)
effect("Silver",0.5,LastPoint,Point)
LastPoint=Point
local Point2=aprt6.CFrame*CFrame.new(0,aprt6.Size.Y/1.5,0)
effect("Silver",0.5,LastPoint2,Point2)
LastPoint2=Point2
end
Humanoid.WalkSpeed=16
for i=0,1,0.1 do
wait()
RW.C0=cf(1.5, 0.5, -0.25*i) * euler(-0.5+2*i,0,0.3-0.3*i)
RW.C1=cf(0, 0.5, 0) * euler(0,1-1.6*i,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(-0.5+1.5*i,0,-0.3+0.3*i)
LW.C1=cf(0, 0.5, 0) * euler(0,-1+1.4*i,0)
end
attack=false
end
 
function ChangeWeapon()
attack=true
for i=0,1,0.1 do
wait()
wld1.C0=euler(1.57,0.4*i,-1.57)*cf(0,1,0)
awld1.C0=euler(-1.57,0.4*i,1.57-3.14*i)*cf(0,1,0)
RW.C0=cf(1.5-0.5*i, 0.5, -0.25-0.25*i) * euler(1.5+0.07*i,0,-0.4*i)
RW.C1=cf(0, 0.5, 0) * euler(0,-0.6+2.17*i,0)
LW.C0=cf(-1.5+0.5*i, 0.5, -0.5*i) * euler(1+0.57*i,0,0.4*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0.4-1.97*i,0)
end
for i=0,1,0.1 do
wait()
wld1.C0=euler(1.57,0.4+0.2*i,-1.57)*cf(0,1,0)
awld1.C0=euler(-1.57,0.4+0.2*i,-1.57)*cf(0,1,0)
RW.C0=cf(1.5-0.5, 0.5, -0.5) * euler(1.57,0,-0.4-0.2*i)
LW.C0=cf(-1.5+0.5, 0.5, -0.5) * euler(1.57,0,0.4+0.2*i)
end
awld1.Part1=prt1
awld1.C0=cf(0,0,0)
for i=0,1,0.1 do
wait()
wld1.C0=euler(1.57,0.6-0.6*i,-1.57)*cf(0,1,0)
RW.C0=cf(1.5-0.5+0.5*i, 0.5, -0.5+0.5*i) * euler(1.57-0.57*i,0,-0.6)
RW.C1=cf(0, 0.5, 0) * euler(0,1.57-1.57*i,0)
LW.C0=cf(-1.5+0.5-0.5*i, 0.5, -0.5+0.5*i) * euler(1.57-1.57*i,0,0.6-0.4*i)
LW.C1=cf(0, 0.5, 0) * euler(0,-1.57+1.57*i,0)
end
attack=false
end
 
function ob1d(mouse) 
if attack == true then return end 
hold=true
--attack=true
if combo==0 then
oneslash()
elseif combo==1 then
twoslash()
elseif combo==2 then
threeslash()
end
coroutine.resume(coroutine.create(function() 
wait(0.5)
if attack==false then
combo=0
wld1.C0=euler(1.57,0,-1.57)*cf(0,1,0)
awld1.C0=euler(-1.57,0,1.57)*cf(0,1,0)
RW.C0=cf(1.5, 0.5, -0.25) * euler(1.5,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,-0.6,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(1,0,0)
LW.C1=cf(0, 0.5, 0) * euler(0,0.4,0)
end
end))
end 
 
function ob1u(mouse) 
hold = false 
end 
 
buttonhold = false 
 
eul=0
holddash=false
function key(key) 
if attack == true then return end 
if key=="z" then
TornadoSlash()
end
if key=="x" then
MultiSpin()
end
if key=="c" then
holddash=true
DashSlash()
end
if key=="v" then
ChangeWeapon()
end
combo=0
end 
 
function key2(key) 
if key=="c" then
holddash=false
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
equipanim() 
end 
 
function ds(mouse) 
hideanim() 
wait(0) 
RW.Parent = nil 
LW.Parent = nil 
RSH.Parent = player.Character.Torso 
LSH.Parent = player.Character.Torso 
end 
 
Bin.Selected:connect(s) 
Bin.Deselected:connect(ds) 
print("Dual Swords loaded.")
