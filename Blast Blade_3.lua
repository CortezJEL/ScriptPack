--[[
Vanguard script made by Fenrier.
Made for an upcoming game I will be making. Don't expect it to be out anytime soon though.
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
attack = false 
attacktype = 1 
damage = 5 
oridamage = 50 
BladeNumb=0.8
GyroNumb=0
attackdebounce = false 
ssdebounce=false
MMouse=nil
Mode="Sword"
cannonmode=false
combo=0
--player 
player = nil 
--save shoulders 
RSH, LSH = nil, nil 
--welds 
RW, LW = Instance.new("Weld"), Instance.new("Weld") 
RW.Name="Right Shoulder" LW.Name="Left Shoulder"


if Character:findFirstChild("Blast Blade",true) ~= nil then 
Character:findFirstChild("Blast Blade",true).Parent = nil 
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
modelzorz.Name = "Blast Blade" 

local prt1=part(3,modelzorz,0,0,Torso.BrickColor,"Part1",vt(1,1,1))
local prt2=part(3,modelzorz,0,0,BrickColor.new("Black"),"Part2",vt(1,1,1))
local prt3=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part3",vt(0.8,0.5,0.8))
local prt5=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part5",vt(1,1,1))
local prt6=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part6",vt(1,1,1))
local prt7=part(3,modelzorz,0,0,BrickColor.new("Bright red"),"Part7",vt(1,1,1))
local prt8=part(3,modelzorz,0,0,BrickColor.new("Bright red"),"Part8",vt(1,1,1))
local hitbox=part(3,modelzorz,0,1,BrickColor.new("Black"),"Hitbox",vt(1,5,3))

local msh1=mesh("CylinderMesh",prt1,"","",vt(0,0,0),vt(0.45,1,0.45))
local msh2=mesh("CylinderMesh",prt2,"","",vt(0,0,0),vt(0.4,2,0.4))
local msh3=mesh("SpecialMesh",prt3,"Head","",vt(0,0,0),vt(1,1,1))
local msh5=mesh("SpecialMesh",prt5,"Head","",vt(0,0,0),vt(0.8,0.5,0.8))
local msh6=mesh("BlockMesh",prt6,"","",vt(0,0,0),vt(0.5,0.5,1.3))
local msh7=mesh("SpecialMesh",prt7,"Sphere","",vt(0,0,0),vt(1.4,1.4,1.4))
local msh8=mesh("SpecialMesh",prt8,"FileMesh","http://www.roblox.com/asset/?id=3270017",vt(0,0,0),vt(1.5,1.5,1.5))

local wld1=weld(prt1,prt1,Torso,euler(-2.5,1.57,0)*cf(-2,-3,-0.6))
local wld2=weld(prt2,prt2,prt1,euler(0,0,0)*cf(0,0,0))
local wld3=weld(prt3,prt3,prt2,euler(0,0,0)*cf(0,1.2,0))
local wld5=weld(prt5,prt5,prt2,euler(0,0,0)*cf(0,-1,0))
local wld6=weld(prt6,prt6,prt5,euler(0,0,0)*cf(0,-0.2,0))
local wld7=weld(prt7,prt7,prt6,euler(0,0,0)*cf(0,-1,0))
local wld8=weld(prt8,prt8,prt7,euler(0,1.57,0)*cf(0,0,0))
local hitboxwld=weld(hitbox,hitbox,prt7,euler(0,0,0)*cf(0,-1.5,0))

numb=0
for i=1,8 do
local prt4=part(3,modelzorz,0.2,0,BrickColor.new("Medium stone grey"),"Part4",vt(1,1,1))
local msh4=mesh("SpecialMesh",prt4,"FileMesh","http://www.roblox.com/asset/?id=1778999",vt(0,0,0),vt(0.3,0.2,0.3))
local wld4=weld(prt4,prt4,prt3,cf(0,-0.4,0)*euler(1.57,numb,0))
numb=numb+0.785
end
numb=0
for i=1,4 do
local prt9=part(3,modelzorz,0,0,BrickColor.new("Bright red"),"Part9",vt(1,1,1))
local msh9=mesh("CylinderMesh",prt9,"","",vt(0,0,0),vt(0.2,2,0.2))
local wld9=weld(prt9,prt9,prt8,cf(0,0,0)*euler(0,0,numb))
numb=numb+0.785
end
numb=0
numb2=0
for i=1,8 do
local prt10=part(3,modelzorz,0.4,0,BrickColor.new("White"),"Part10",vt(1,1,1))
local msh10=mesh("SpecialMesh",prt10,"Wedge","",vt(0,0,0),vt(0.3-numb2,1.5,1.5))
local wld10=weld(prt10,prt10,prt6,euler(0,3.14,0)*cf(0,-0.6-numb,-0.8))
coroutine.resume(coroutine.create(function(Weld,Number)
while true do
wait(0)
wld10.C0=euler(0,3.14,0)*cf(0,-0.6-Number,-BladeNumb)
end
end),wld10,numb)
local prt11=part(3,modelzorz,0.4,0,BrickColor.new("White"),"Part11",vt(1,1,1))
local msh11=mesh("SpecialMesh",prt11,"Wedge","",vt(0,0,0),vt(0.3-numb2,1.5,1.5))
local wld11=weld(prt11,prt11,prt6,cf(0,-0.6-numb,0.8))
coroutine.resume(coroutine.create(function(Weld,Number)
while true do
wait(0)
wld11.C0=cf(0,-0.6-Number,BladeNumb)
end
end),wld11,numb)
numb=numb+0.6
numb2=numb2+0.01
end
if (script.Parent.className ~= "HopperBin") then 
Tool = Instance.new("HopperBin") 
Tool.Parent = Backpack 
Tool.Name = "Blast Blade" 
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
wld1.C0=euler(-2.5,1.57,0)*cf(-2,-3,-0.6)
wld1.C1=cf(0,0,0)
end 

function equipweld() 
wld1.Part1=RightArm
wld1.C0=euler(1.57+0.4,0,0)*cf(0,1,0)
end 

function hideanim() 
equipped=false
wait(0.1) 
bg.Parent=nil
Neck.C0=necko
unequipweld() 
end 

function equipanim() 
equipped=true
wait(0.1) 
equipweld() 
if Mode=="Sword" then
Neck.C0=necko
RW.C0=cf(0.5, 0.5, -0.5) * euler(1,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,-1.5,0.4)
LW.C0=cf(-1, 0.5, -0.5) * euler(1,0,0)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
elseif Mode=="Cannon" then
coroutine.resume(coroutine.create(function()
bg.maxTorque = vt(math.huge,math.huge,math.huge) 
bg.P = 9000
bg.Parent = Torso
--wld1.C0 = euler(0,0,0) * cf(0,0,0) 
while cannonmode==true do
wait()
local pos4 = vt(workspace.CurrentCamera.CoordinateFrame.X,Head.Position.Y,workspace.CurrentCamera.CoordinateFrame.Z)
bg.cframe = cf(Head.Position,pos4) * euler(0,3.14+GyroNumb,0) * cf(0,0,0) --cf(Torso.Position,MMouse.Hit.p) * 
bg.Parent = Head
local pos5 = Vector3.new(MMouse.Hit.p.x,Head.Position.Y,MMouse.Hit.p.z)
offset=(Torso.Position.y-MMouse.Hit.p.y)/60
mag=(Torso.Position-MMouse.Hit.p).magnitude/80
offset=offset/mag 
end
for i=0,1,0.1 do
wait()
bg.Parent=nil
end
end))
Neck.C0=necko*euler(0,0,1)
wld1.C0=euler(1.57,0,0)*cf(0,1,0)
RW.C0=cf(1.5, 0.5, 0) * euler(0,1,0)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1.5, 0.5, -0.5) * euler(1,1,0)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
end 

function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game.Workspace:FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 

spread=0
range=100
rangepower=25
function shoottrail(mouse,baseprt)
coroutine.resume(coroutine.create(function(v) 
local spreadvector = (Vector3.new(math.random(-spread,spread),math.random(-spread,spread),math.random(-spread,spread))) * (baseprt.Position-MMouse.Hit.p).magnitude/100
local dir = CFrame.new((baseprt.Position+MMouse.Hit.p)/2,MMouse.Hit.p+spreadvector)
local hit,pos = rayCast(baseprt.Position,dir.lookVector,10,Character)
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
effectsg.Parent = workspace
effectsmsh.Parent = effectsg
effectsg.BrickColor = BrickColor.new("Bright red")
effectsg.Reflectance = 0.25
local LP = From
local point1 = To
local mg = (LP - point1).magnitude
effectsmsh.Scale = Vector3.new(5,mg*5,5)
Lightning(LP,point1,5,1,"Bright red",0.3,0.1)
effectsg.CFrame = CFrame.new((LP+point1)/2,point1) * CFrame.Angles(math.rad(90),0,0)
coroutine.resume(coroutine.create(function()
for i = 0 , 1 , 0.2 do
wait()
effectsg.Transparency = 1*i
effectsmsh.Scale = Vector3.new(3-3*i,mg*5,3-3*i)
end 
effectsg.Parent = nil 
end))
end
local newpos = baseprt.Position
local inc = rangepower
repeat
wait() 
rangepos = rangepos - 10
--dir = dir * CFrame.Angles(math.rad(-1),0,0)
hit,pos = rayCast(newpos,dir.lookVector,inc,Character)
drawtrail(newpos,pos)
newpos = newpos + (dir.lookVector * inc)
if hit ~= nil then
if hit.Parent:FindFirstChild("Humanoid") ~= nil then
hum = hit.Parent.Humanoid
tTorso=hit.Parent.Torso
Damagefunc1(hit,10,30)
attackdebounce=false
--ADmg(hum,hit)
elseif hit.Parent.Parent ~= nil and hit.Parent.Parent:FindFirstChild("Humanoid") ~= nil then
hum = hit.Parent.Parent.Humanoid
tTorso=hit.Parent.Parent.Torso
Damagefunc1(hit.Parent.Parent.Torso,10,30)
attackdebounce=false
--ADmg(hum,hit)
end
MagicCircle(BrickColor.new("Bright red"),CFrame.new(newpos),2,2,2,3,3,3)
MagicBlock(BrickColor.new("Bright red"),CFrame.new(newpos),2,2,2,2,2,2)
end
until rangepos <= 0
end))
end

function MagicBlock(brickcolor,cframe,x1,y1,z1,x3,y3,z3)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
coroutine.resume(coroutine.create(function() 
for i=0,1,0.1 do
wait()
prt.CFrame=prt.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
prt.Transparency=i
msh.Scale=msh.Scale+vt(x3,y3,z3)
end
prt.Parent=nil
end))
end

function MagicCircle(brickcolor,cframe,x1,y1,z1,x3,y3,z3)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
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

function BreakEffect(brickcolor,cframe,x1,y1,z1)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
local msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(x1,y1,z1))
coroutine.resume(coroutine.create(function(Part,CF,Numbb,randnumb) 
CF=Part.CFrame
Numbb=0
randnumb=math.random()+math.random()
for i=0,1,0.05 do
wait()
CF=CF*cf(0,1,0)
--Part.CFrame=Part.CFrame*euler(0.5,0,0)*cf(0,1,0)
Part.CFrame=CF*euler(Numbb,0,0)
Part.Transparency=i
Numbb=Numbb+randnumb
end
Part.Parent=nil
end),prt,CF,Numbb,randnumb)
end

function SpecialEffect() 
local prt=part(3,workspace,1,0,BrickColor.new("White"),"Part",vt(1,1,1))
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

function Lightning(p0,p1,tym,ofs,col,th,tra)
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
curpos = li.CFrame*CFrame.new(0,0,magz/tym/2).p game.Debris:AddItem(li,.5)
end
end

function effect(Color,Ref,LP,P1,returnn)
local effectsmsh = Instance.new("BlockMesh")
effectsmsh.Scale = Vector3.new(0.4,1,0.4)
effectsmsh.Name = "Mesh"
local effectsg = Instance.new("Part")
effectsg.formFactor = 3
effectsg.CanCollide = false
effectsg.Name = "Eff"
effectsg.Locked = true
effectsg.Anchored = true
effectsg.Size = Vector3.new(0.2,1,0.2)
effectsg.Parent = workspace
effectsmsh.Parent = effectsg
effectsg.BrickColor = BrickColor.new(Color)
effectsg.Reflectance = Ref
local point1 = P1
local mg = (LP.p - point1.p).magnitude
effectsg.Size = Vector3.new(0.4,mg,0.4)
effectsg.CFrame = CFrame.new((LP.p+point1.p)/2,point1.p) * CFrame.Angles(math.rad(90),0,0)
if returnn then return effectsg end
coroutine.resume(coroutine.create(function()
if not returnn then
for i = 0 , 1 , 0.2 do
wait()
effectsg.Transparency = 1*i
effectsmsh.Scale = Vector3.new(0.4-0.4*i,1,0.4-0.4*i)
end
wait()
effectsg.Parent = nil
end
end))
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
                vp.velocity=Head.CFrame.lookVector*Knockback+Head.Velocity/1.05
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
Damagefuncbr=function(hit,Damage,Knockback)
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
                vp.velocity=Head.CFrame.lookVector*Knockback
                        vp.Parent=hit.Parent.Torso
                game:GetService("Debris"):AddItem(vp,1)
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
--        attackdebounce = true 
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
wait(0.5) 
vel:Remove() 
end),rl) 
--end
local bodyVelocity=Instance.new("BodyVelocity")
bodyVelocity.velocity=angle*40+Vector3.new(0,0,0)
bodyVelocity.P=5000
bodyVelocity.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
bodyVelocity.Parent=hit
coroutine.resume(coroutine.create(function(Vel) 
wait(0.2) 
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
Neck.C0=necko*euler(0,0,1*i)
RW.C0=cf(0.5+1*i, 0.5, -0.5+0.5*i) * euler(1+2*i,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,-1.5+1.5*i,0.4-0.4*i)
LW.C0=cf(-1+1*i, 0.5+0.6*i, -0.5) * euler(1+2*i,0,0)
LW.C1=cf(0, 0.5, 0) * euler(0,0,-1*i)
end
so("http://roblox.com/asset/?id=10209640",prt7,1,0.6) 
con1=hitbox.Touched:connect(function(hit) Damagefunc1(hit,25,20) end) 
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(0,0,1-2*i)
RW.C0=cf(1.5, 0.5, 0) * euler(3-3*i,-0.2*i,0)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(0.5*i, 1.1-1*i, -0.5) * euler(3-3.5*i,0.5*i,0)
LW.C1=cf(0, 0.5, 0) * euler(0,0,-1)
end
con1:disconnect()
wait(0.2)
--Neck.C0=necko
attack=false
end

function twoslash()
attack=true
combo=2
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(0,0,-1)
RW.C0=cf(1.5-0.5*i, 0.5, -0.5*i) * euler(1.5*i,-0.2+1.77*i,0)
RW.C1=cf(0, 0.5, 0) * euler(-0.5*i,0,0)
LW.C0=cf(0.5-1*i, 0.1+0.4*i, -0.5+0.5*i) * euler(-0.5+2.07*i,0.5+1.07*i,0)
LW.C1=cf(0, 0.5, 0) * euler(0,0,-1+1*i)
end
so("http://roblox.com/asset/?id=10209640",prt7,1,0.7) 
con1=hitbox.Touched:connect(function(hit) Damagefunc1(hit,25,30) end) 
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(0,0,-1+2*i)
RW.C0=cf(1.5-0.5, 0.5, -0.5) * euler(1.5,1.57,0)
RW.C1=cf(0, 0.5, 0) * euler(-0.5+2*i,0,0)
LW.C0=cf(-0.5+1*i, 0.5, -1*i) * euler(1.57,1.57,0)
LW.C1=cf(0, 0.5, 0) * euler(1*i,0,0)
end
con1:disconnect()
attack=false
end

function Shoot()
attack=true
shoottrail(mouse,prt7)
so("rbxasset://sounds/Launching rocket.wav",prt7,1,3) 
for i=0,1,0.2 do
wait()
wld1.C0=euler(1.57,0,0)*cf(0,1,0)
RW.C0=cf(1.5, 0.5, 0) * euler(0,1,0)
RW.C1=cf(0, 0.5, 0) * euler(0.3*i,0,0)
LW.C0=cf(-1.5, 0.5, -0.5) * euler(1-0.3*i,1,0)
end
for i=0,1,0.2 do
wait()
wld1.C0=euler(1.57,0,0)*cf(0,1,0)
RW.C0=cf(1.5, 0.5, 0) * euler(0,1,0)
RW.C1=cf(0, 0.5, 0) * euler(0.3-0.3*i,0,0)
LW.C0=cf(-1.5, 0.5, -0.5) * euler(1-0.3+0.3*i,1,0)
end
attack=false
end

function GroundBlast()
attack=true
Humanoid.WalkSpeed=0
for i=0,1,0.1 do
wait()
Neck.C0=necko
wld1.C0=euler(1.57+0.4+2.64*i,0,0)*cf(0,1,0)
RW.C0=cf(0.5+1*i, 0.5, -0.5+0.5*i) * euler(1+2.5*i,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,-1.5+1.5*i,0.4-0.4*i)
LW.C0=cf(-1+1*i, 0.5+0.5*i, -0.5) * euler(1+2.5*i,0,1*i)
end
so("http://www.roblox.com/asset/?id=2101137",prt7,1,0.75) 
for i=1,25 do
wait()
MagicCircle(BrickColor.new("Bright red"),prt7.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50)),0.1,2,0.1,0.5,5,0.5)
end
for i=0,1,0.2 do
wait()
RW.C0=cf(1.5, 0.5, 0) * euler(3.5-2*i,0,0)
LW.C0=cf(0.3*i, 1-0.5*i, -0.5) * euler(3.5-2.3*i,0,1)
end
so("http://www.roblox.com/asset/?id=2697431",prt7,1,0.2) 
BlastPos=prt7.Position+vt(0,-1,0)
MagicCircle(BrickColor.new("Bright red"),prt7.CFrame*cf(0,1,0),1,1,1,10,10,10)
MagicBlock(BrickColor.new("Really red"),prt7.CFrame*cf(0,1,0),1,1,1,5,5,5)
MagicBlock(BrickColor.new("Bright red"),prt7.CFrame*cf(0,1,0),1,1,1,7,7,7)
local c = game.Workspace:GetChildren()
for i = 1, #c do
local hum = c[i]:findFirstChild("Humanoid")
if hum ~= nil and hum.Health ~= 0 then
local head = c[i]:findFirstChild("Head")
if head ~= nil then
local targ = head.Position - BlastPos
local mag = targ.magnitude
if mag <= 20 and c[i].Name ~= Player.Name then 
attackdebounce=false
Damagefunc2(head,25,30)
end
end
end
end
wait(0.5)
for i=0,1,0.1 do
wait()
wld1.C0=euler(4.61-2.64*i,0,0)*cf(0,1,0)
RW.C0=cf(1.5-1*i, 0.5, -0.5*i) * euler(1.5-0.5*i,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,-1.5*i,0.4*i)
LW.C0=cf(0.3-1.3*i, 0.5, -0.5) * euler(1.2-0.2*i,0,1-1*i)
end
Humanoid.WalkSpeed=16
attack=false
end

function BreakSlash()
attack=true
coroutine.resume(coroutine.create(function()
bg.maxTorque = vt(math.huge,math.huge,math.huge) 
bg.P = 9000
bg.Parent = Torso
--wld1.C0 = euler(0,0,0) * cf(0,0,0) 
while attack==true do
wait()
local pos4 = vt(workspace.CurrentCamera.CoordinateFrame.X,Head.Position.Y,workspace.CurrentCamera.CoordinateFrame.Z)
bg.cframe = cf(Head.Position,pos4) * euler(0,3.14+GyroNumb,0) * cf(0,0,0) --cf(Torso.Position,MMouse.Hit.p) * 
bg.Parent = Head
local pos5 = Vector3.new(MMouse.Hit.p.x,Head.Position.Y,MMouse.Hit.p.z)
offset=(Torso.Position.y-MMouse.Hit.p.y)/60
mag=(Torso.Position-MMouse.Hit.p).magnitude/80
offset=offset/mag 
end
for i=0,1,0.1 do
wait()
bg.Parent=nil
end
end))
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(0,0,-1*i)
RW.C0=cf(0.5, 0.5, -0.5) * euler(1+0.57*i,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,-1.5,0.4+0.4*i)
LW.C0=cf(-1, 0.5, -0.5+0.5*i) * euler(1+0.57*i,0,0)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
wait(0.3)
so("http://roblox.com/asset/?id=10209640",prt7,1,0.7) 
--3264793
con1=hitbox.Touched:connect(function(hit) Damagefuncbr(hit,25,1) end) 
for i=0,1,0.1 do
wait()
MagicBlock(BrickColor.new("Really red"),hitbox.CFrame*cf(math.random()+math.random(-1,0),math.random()+math.random(-2,1),math.random()+math.random(-1,0)),1,1,1,0.5,0.5,0.5)
wld1.C0=euler(1.57+0.4+0.4*i,0,0)*cf(0,1,0)
Neck.C0=necko*euler(0,0,-1+2.57*i)
RW.C0=cf(0.5+1*i, 0.5, -0.5+0.5*i) * euler(1.57,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,-1.5,0.8-1.6*i)
LW.C0=cf(-1+1.5*i, 0.5, -0.5*i) * euler(1.57,0,0)
LW.C1=cf(0, 0.5, 0) * euler(0,0,-1*i)
end
con1:disconnect()
wait(1)
attack=false
end

function ob1d(mouse) 
if attack == true then return end 
hold=true
if Mode=="Sword" then
attack=true
coroutine.resume(coroutine.create(function()
bg.maxTorque = vt(math.huge,math.huge,math.huge) 
bg.P = 9000
bg.Parent = Torso
--wld1.C0 = euler(0,0,0) * cf(0,0,0) 
while attack==true do
wait()
local pos4 = vt(workspace.CurrentCamera.CoordinateFrame.X,Head.Position.Y,workspace.CurrentCamera.CoordinateFrame.Z)
bg.cframe = cf(Head.Position,pos4) * euler(0,3.14+GyroNumb,0) * cf(0,0,0) --cf(Torso.Position,MMouse.Hit.p) * 
bg.Parent = Head
local pos5 = Vector3.new(MMouse.Hit.p.x,Head.Position.Y,MMouse.Hit.p.z)
offset=(Torso.Position.y-MMouse.Hit.p.y)/60
mag=(Torso.Position-MMouse.Hit.p).magnitude/80
offset=offset/mag 
end
for i=0,1,0.1 do
wait()
bg.Parent=nil
end
end))
if combo==0 then
oneslash()
elseif combo==1 then
twoslash()
else
wait(0.3)
Neck.C0=necko
RW.C0=cf(0.5, 0.5, -0.5) * euler(1,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,-1.5,0.4)
LW.C0=cf(-1, 0.5, -0.5) * euler(1,0,0)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
attack=false
end
coroutine.resume(coroutine.create(function() 
wait(0.5)
if attack==false then
combo=0
Neck.C0=necko
RW.C0=cf(0.5, 0.5, -0.5) * euler(1,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,-1.5,0.4)
LW.C0=cf(-1, 0.5, -0.5) * euler(1,0,0)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
end))
elseif Mode=="Cannon" then
Shoot()
end
end 

function ob1u(mouse) 
hold = false 
end 

buttonhold = false 

eul=0
function key(key) 
if attack == true then return end 
if key=="f" then
BreakEffect(BrickColor.new("Bright red"),Torso.CFrame,0.5,math.random(5,20),0.5)
end
if Mode=="Sword" then
if key=="z" then
GroundBlast()
end
if key=="x" then
BreakSlash()
end
end
if key=="v" then
if Mode=="Sword" then
Mode="Cannon"
for i=0,1,0.1 do
wait()
wld1.C0=euler(1.57+0.4-0.4*i,0,0)*cf(0,1,0)
RW.C0=cf(0.5+1*i, 0.5, -0.5+0.5*i) * euler(1+1.5*i,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,-1.5+1.5*i,0.4-0.4*i)
LW.C0=cf(-1+1.3*i, 0.5, -0.5-0.3*i) * euler(1+1.7*i,0,1*i)
end
so("rbxasset://sounds\\unsheath.wav",prt7,1,0.5) 
for i=0,1,0.2 do
wait()
BladeNumb=0.8+0.7*i
msh6.Scale=vt(0.5,0.5,1.3+1.4*i)
RW.C0=cf(1.5, 0.5, 0) * euler(2.5-1*i,0,0)
LW.C0=cf(0.3, 0.5, -0.8) * euler(2.7-1.2*i,0,1)
end
for i=0,1,0.1 do
wait()
RW.C0=cf(1.5, 0.5, 0) * euler(2.5-1+0.3*i,0,0)
LW.C0=cf(0.3, 0.5, -0.8) * euler(2.7-1.2+0.4*i,0,1)
end
cannonmode=true
coroutine.resume(coroutine.create(function()
bg.maxTorque = vt(math.huge,math.huge,math.huge) 
bg.P = 9000
bg.Parent = Torso
--wld1.C0 = euler(0,0,0) * cf(0,0,0) 
while cannonmode==true do
wait()
local pos4 = vt(workspace.CurrentCamera.CoordinateFrame.X,Head.Position.Y,workspace.CurrentCamera.CoordinateFrame.Z)
bg.cframe = cf(Head.Position,pos4) * euler(0,3.14+GyroNumb,0) * cf(0,0,0) --cf(Torso.Position,MMouse.Hit.p) * 
bg.Parent = Head
local pos5 = Vector3.new(MMouse.Hit.p.x,Head.Position.Y,MMouse.Hit.p.z)
offset=(Torso.Position.y-MMouse.Hit.p.y)/60
mag=(Torso.Position-MMouse.Hit.p).magnitude/80
offset=offset/mag 
end
for i=0,1,0.1 do
wait()
bg.Parent=nil
end
end))
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(0,0,1*i)
RW.C0=cf(1.5, 0.5, 0) * euler(1.8-1.8*i,1*i,0)
LW.C0=cf(0.3-1.8*i, 0.5, -0.8+0.3*i) * euler(1.9-0.9*i,1*i,1-1*i)
end
elseif Mode=="Cannon" then
Mode="Sword"
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(0,0,1-1*i)
RW.C0=cf(1.5, 0.5, 0) * euler(1.5*i,1-1*i,0)
LW.C0=cf(-1.5+1.7*i, 0.5, -0.5-0.1*i) * euler(1+0.2*i,1-1*i,1*i)
end
cannonmode=false
so("rbxasset://sounds\\unsheath.wav",prt7,1,0.7) 
for i=0,1,0.1 do
wait()
BladeNumb=1.5-0.7*i
msh6.Scale=vt(0.5,0.5,2.7-1.4*i)
RW.C0=cf(1.5, 0.5, 0) * euler(1.5+0.5*i,0,0)
LW.C0=cf(0.2, 0.5+0.2*i, -0.6) * euler(1.2+0.6*i,0,1)
end
for i=0,1,0.1 do
wait()
wld1.C0=euler(1.57+0.4*i,0,0)*cf(0,1,0)
RW.C0=cf(1.5-1*i, 0.5, -0.5*i) * euler(2-1*i,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,-1.5*i,0.4*i)
LW.C0=cf(0.2-1.2*i, 0.7-0.2*i, -0.6+0.1*i) * euler(1.8-0.8*i,0,1-1*i)
end
end
end
wait(5)
combo=0
end 

function key2(key) 
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
print("Blast Blade loaded.")
-- mediafire