----------------------------------------------------------------------------------------------------------------------------------------------
--mediafire
plr=game.Players.LocalPlayer
char=plr.Character
char.Humanoid.WalkSpeed=20
pcall(function() char.MainParts:Remove()  end)
bin=Instance.new("HopperBin",plr.Backpack)
bin.Name="Pheonix Sword"
script.Parent=bin
attacking=false
pcall(function() workspace.MainParts:Destroy() end)
function makepart(name,parent,s1,s2,s3,color)
        p=Instance.new("Part",parent)
        p.Name=name
        p.formFactor="Custom"
        p.Anchored=false
        p.Locked=true
        p.CanCollide=false
        p.Size=Vector3.new(s1,s2,s3)
        p.BrickColor=BrickColor.new(color)
        p:BreakJoints()
        return p
end
function cylinder(part)
bm=Instance.new("CylinderMesh",part)
return bm
end
function blockmesh(part)
bm=Instance.new("BlockMesh",part)
return bm
end
function specmesh(part,type,s1,s2,s3)
spec=Instance.new("SpecialMesh",part)
spec.MeshType=type
spec.Scale=Vector3.new(s1,s2,s3)
return spec
end
chosen="Lime green"
main=Instance.new("Model",char)
main.Name="MainParts"
handle = makepart("Handle",main,.2,2,.2,"Really black")
        cylinder(handle)
        wd1=Instance.new("Weld",handle)
        wd1.Part1=handle
        wd1.Part0=nil
handlep = makepart("HandlePart",main,.22,0.02,.22,chosen)
        cyl1 = cylinder(handlep)
        cyl1.Scale=Vector3.new(1,.5,1)
        w1=Instance.new("Weld",handlep)
        w1.Part1=handle
        w1.Part0=handlep
        w1.C1=CFrame.new(0,1,0) * CFrame.Angles(0,0,0)
handlep2 = makepart("HandlePart2",main,.25,.25,.25,chosen)
        specmesh(hanelp2,"Sphere",1,1,1)
        w1=Instance.new("Weld",handlep2)
        w1.Part1=handlep
        w1.Part0=handlep2
        w1.C1=CFrame.new(0,.05,0) * CFrame.Angles(0,0,0)
handlep3 = makepart("HandlePart3",main,.22,0.02,.22,chosen)
        cyl1 = cylinder(handlep3)
        cyl1.Scale=Vector3.new(1,.3,1)
        w1=Instance.new("Weld",handlep3)
        w1.Part1=handle
        w1.Part0=handlep3
        w1.C1=CFrame.new(0,-.5,0) * CFrame.Angles(0,0,0)
handlep4 = makepart("HandlePart4",main,.24,0.02,.24,chosen)
        cyl1 = cylinder(handlep4)
        cyl1.Scale=Vector3.new(1,.3,1)
        w1=Instance.new("Weld",handlep4)
        w1.Part1=handle
        w1.Part0=handlep4
        w1.C1=CFrame.new(0,-.54,0) * CFrame.Angles(0,0,0)
handlep5 = makepart("HandlePart5",main,.26,0.02,.26,chosen)
        cyl1 = cylinder(handlep5)
        cyl1.Scale=Vector3.new(1,.3,1)
        w1=Instance.new("Weld",handlep5)
        w1.Part1=handle
        w1.Part0=handlep5
        w1.C1=CFrame.new(0,-.57,0) * CFrame.Angles(0,0,0)
handlep6 = makepart("HandlePart6",main,.02,0.02,.02,chosen)
        bm6=blockmesh(handlep6)
        bm6.Scale=Vector3.new(2,2.6,1.3)
        w1=Instance.new("Weld",handlep6)
        w1.Part1=handle
        w1.Part0=handlep6
        w1.C1=CFrame.new(0,-.84,0) * CFrame.Angles(0,0,0)
handlep7 = makepart("HandlePart7",main,.02,0.02,.02,chosen)
        bm7=blockmesh(handlep7)
        bm7.Scale=Vector3.new(3,1.6,1.3)
        w1=Instance.new("Weld",handlep7)
        w1.Part1=handle
        w1.Part0=handlep7
        w1.C1=CFrame.new(.5,-.84,0) * CFrame.Angles(0,0,0)
handlep8 = makepart("HandlePart8",main,.02,0.02,.02,chosen)
        bm8=blockmesh(handlep8)
        bm8.Scale=Vector3.new(3,1.6,1.3)
        w1=Instance.new("Weld",handlep8)
        w1.Part1=handle
        w1.Part0=handlep8
        w1.C1=CFrame.new(-.5,-.84,0) * CFrame.Angles(0,0,0)
handlep11 = makepart("HandlePart11",main,.02,0.02,.02,"Really black")
        bm11=blockmesh(handlep11)
        bm11.Scale=Vector3.new(1.4,1.4,1.61)
        w1=Instance.new("Weld",handlep11)
        w1.Part1=handle
        w1.Part0=handlep11
        w1.C1=CFrame.new(0,-.84,0) * CFrame.Angles(0,0,0)
bladep1 = makepart("BladePart1",main,.02,4,.02,"Really black")
        bp1=blockmesh(bladep1)
        bp1.Scale=Vector3.new(4,1,.5)
        w1=Instance.new("Weld",bladep1)
        w1.Part1=handle
        w1.Part0=bladep1
        w1.C1=CFrame.new(0,-3,0) * CFrame.Angles(0,0,0)
bladep2 = makepart("BladePart2",main,.02,.02,.02,chosen)
        bp2=specmesh(bladep2,"Wedge",.6,1,1)
        w1=Instance.new("Weld",bladep2)
        w1.Part1=handle
        w1.Part0=bladep2
        w1.C1=CFrame.new(-0.2,-4.6,0)
        w1.C0=CFrame.Angles(0,math.rad(90),0)
bladep3 = makepart("BladePart3",main,.02,.02,.02,chosen)
        bp3=specmesh(bladep3,"Wedge",.6,1,1)
        w1=Instance.new("Weld",bladep3)
        w1.Part1=handle
        w1.Part0=bladep3
        w1.C1=CFrame.new(0.2,-4.6,0)
        w1.C0=CFrame.Angles(0,math.rad(270),0)
bladep4 = makepart("BladePart4",main,.02,.02,.02,chosen)
        bp4=specmesh(bladep4,"Wedge",.6,1,1)
        w1=Instance.new("Weld",bladep4)
        w1.Part1=handle
        w1.Part0=bladep4
        w1.C1=CFrame.new(0.2,-4.3,0)
        w1.C0=CFrame.Angles(math.rad(90),math.rad(270),0)
bladep5 = makepart("BladePart5",main,.02,.02,.02,chosen)
        bp5=specmesh(bladep5,"Wedge",.6,1,1)
        w1=Instance.new("Weld",bladep5)
        w1.Part1=handle
        w1.Part0=bladep5
        w1.C1=CFrame.new(-0.2,-4.3,0)
        w1.C0=CFrame.Angles(math.rad(90),math.rad(90),0)
bladep6 = makepart("BladePart6",main,.02,.02,.02,chosen)
        bp6=cylinder(bladep6)
        bp6.Scale=Vector3.new(1,.6,1)
        w1=Instance.new("Weld",bladep6)
        w1.Part1=handle
        w1.Part0=bladep6
        w1.C1=CFrame.new(0,-4.45,0)
        w1.C0=CFrame.Angles(math.rad(90),0,math.rad(90))
bladep7 = makepart("BladePart7",main,.02,.02,.02,chosen)
        bp7=blockmesh(bladep7)
        bp7.Scale=Vector3.new(.6,16.6,.6)
        w1=Instance.new("Weld",bladep7)
        w1.Part1=handle
        w1.Part0=bladep7
        w1.C1=CFrame.new(0,-2.72,0)
bladep8 = makepart("BladePart8",main,.02,.02,.02,"Really black")
        bp8=specmesh(bladep8,"Wedge",.51,2,3)
        w1=Instance.new("Weld",bladep8)
        w1.Part1=handle
        w1.Part0=bladep8
        w1.C1=CFrame.new(0.20,-5.3,0)
        w1.C0=CFrame.Angles(math.rad(90),math.rad(90),0)
bladep9 = makepart("BladePart9",main,.02,.02,.02,"Really black")
        bp9=specmesh(bladep9,"Wedge",.51,2,3)
        w1=Instance.new("Weld",bladep9)
        w1.Part1=handle
        w1.Part0=bladep9
        w1.C1=CFrame.new(-0.20,-5.3,0)
        w1.C0=CFrame.Angles(math.rad(90),math.rad(270),0)
--[[ Ghost Sword ]]
function ghost()
main2=Instance.new("Model",char)
main2.Name="GhostMainParts"
handleg = makepart("Handle",main2,.2,2,.2,"Lime green")
        cylinder(handleg)
        wd12=Instance.new("Weld",handleg)
        wd12.Part1=handleg
        wd12.Name="Weldd"
        wd12.Part0=nil
handlep = makepart("HandlePart",main2,.22,0.02,.22,chosen)
        cyl1 = cylinder(handlep)
        cyl1.Scale=Vector3.new(1,.5,1)
        w1=Instance.new("Weld",handlep)
        w1.Part1=handleg
        w1.Part0=handlep
        w1.C1=CFrame.new(0,1,0) * CFrame.Angles(0,0,0)
handlep2 = makepart("HandlePart2",main2,.25,.25,.25,chosen)
        specmesh(hanelp2,"Sphere",1,1,1)
        w1=Instance.new("Weld",handlep2)
        w1.Part1=handlep
        w1.Part0=handlep2
        w1.C1=CFrame.new(0,.05,0) * CFrame.Angles(0,0,0)
handlep3 = makepart("HandlePart3",main2,.22,0.02,.22,chosen)
        cyl1 = cylinder(handlep3)
        cyl1.Scale=Vector3.new(1,.3,1)
        w1=Instance.new("Weld",handlep3)
        w1.Part1=handleg
        w1.Part0=handlep3
        w1.C1=CFrame.new(0,-.5,0) * CFrame.Angles(0,0,0)
handlep4 = makepart("HandlePart4",main2,.24,0.02,.24,chosen)
        cyl1 = cylinder(handlep4)
        cyl1.Scale=Vector3.new(1,.3,1)
        w1=Instance.new("Weld",handlep4)
        w1.Part1=handleg
        w1.Part0=handlep4
        w1.C1=CFrame.new(0,-.54,0) * CFrame.Angles(0,0,0)
handlep5 = makepart("HandlePart5",main2,.26,0.02,.26,chosen)
        cyl1 = cylinder(handlep5)
        cyl1.Scale=Vector3.new(1,.3,1)
        w1=Instance.new("Weld",handlep5)
        w1.Part1=handleg
        w1.Part0=handlep5
        w1.C1=CFrame.new(0,-.57,0) * CFrame.Angles(0,0,0)
handlep6 = makepart("HandlePart6",main2,.02,0.02,.02,chosen)
        bm6=blockmesh(handlep6)
        bm6.Scale=Vector3.new(2,2.6,1.3)
        w1=Instance.new("Weld",handlep6)
        w1.Part1=handleg
        w1.Part0=handlep6
        w1.C1=CFrame.new(0,-.84,0) * CFrame.Angles(0,0,0)
handlep7 = makepart("HandlePart7",main2,.02,0.02,.02,chosen)
        bm7=blockmesh(handlep7)
        bm7.Scale=Vector3.new(3,1.6,1.3)
        w1=Instance.new("Weld",handlep7)
        w1.Part1=handleg
        w1.Part0=handlep7
        w1.C1=CFrame.new(.5,-.84,0) * CFrame.Angles(0,0,0)
handlep8 = makepart("HandlePart8",main2,.02,0.02,.02,chosen)
        bm8=blockmesh(handlep8)
        bm8.Scale=Vector3.new(3,1.6,1.3)
        w1=Instance.new("Weld",handlep8)
        w1.Part1=handleg
        w1.Part0=handlep8
        w1.C1=CFrame.new(-.5,-.84,0) * CFrame.Angles(0,0,0)
handlep11 = makepart("HandlePart11",main2,.02,0.02,.02,"Lime green")
        bm11=blockmesh(handlep11)
        bm11.Scale=Vector3.new(1.4,1.4,1.61)
        w1=Instance.new("Weld",handlep11)
        w1.Part1=handleg
        w1.Part0=handlep11
        w1.C1=CFrame.new(0,-.84,0) * CFrame.Angles(0,0,0)
bladep1 = makepart("BladePart1",main2,.02,4,.02,"Lime green")
        bp1=blockmesh(bladep1)
        bp1.Scale=Vector3.new(4,1,.5)
        w1=Instance.new("Weld",bladep1)
        w1.Part1=handleg
        w1.Part0=bladep1
        w1.C1=CFrame.new(0,-3,0) * CFrame.Angles(0,0,0)
bladep2 = makepart("BladePart2",main2,.02,.02,.02,chosen)
        bp2=specmesh(bladep2,"Wedge",.6,1,1)
        w1=Instance.new("Weld",bladep2)
        w1.Part1=handleg
        w1.Part0=bladep2
        w1.C1=CFrame.new(-0.2,-4.6,0)
        w1.C0=CFrame.Angles(0,math.rad(90),0)
bladep3 = makepart("BladePart3",main2,.02,.02,.02,chosen)
        bp3=specmesh(bladep3,"Wedge",.6,1,1)
        w1=Instance.new("Weld",bladep3)
        w1.Part1=handleg
        w1.Part0=bladep3
        w1.C1=CFrame.new(0.2,-4.6,0)
        w1.C0=CFrame.Angles(0,math.rad(270),0)
bladep4 = makepart("BladePart4",main2,.02,.02,.02,chosen)
        bp4=specmesh(bladep4,"Wedge",.6,1,1)
        w1=Instance.new("Weld",bladep4)
        w1.Part1=handleg
        w1.Part0=bladep4
        w1.C1=CFrame.new(0.2,-4.3,0)
        w1.C0=CFrame.Angles(math.rad(90),math.rad(270),0)
bladep5 = makepart("BladePart5",main2,.02,.02,.02,chosen)
        bp5=specmesh(bladep5,"Wedge",.6,1,1)
        w1=Instance.new("Weld",bladep5)
        w1.Part1=handleg
        w1.Part0=bladep5
        w1.C1=CFrame.new(-0.2,-4.3,0)
        w1.C0=CFrame.Angles(math.rad(90),math.rad(90),0)
bladep6 = makepart("BladePart6",main2,.02,.02,.02,chosen)
        bp6=cylinder(bladep6)
        bp6.Scale=Vector3.new(1,.6,1)
        w1=Instance.new("Weld",bladep6)
        w1.Part1=handleg
        w1.Part0=bladep6
        w1.C1=CFrame.new(0,-4.45,0)
        w1.C0=CFrame.Angles(math.rad(90),0,math.rad(90))
bladep7 = makepart("BladePart7",main2,.02,.02,.02,chosen)
        bp7=blockmesh(bladep7)
        bp7.Scale=Vector3.new(.6,16.6,.6)
        w1=Instance.new("Weld",bladep7)
        w1.Part1=handleg
        w1.Part0=bladep7
        w1.C1=CFrame.new(0,-2.72,0)
bladep8 = makepart("BladePart8",main2,.02,.02,.02,"Lime green")
        bp8=specmesh(bladep8,"Wedge",.51,2,3)
        w1=Instance.new("Weld",bladep8)
        w1.Part1=handleg
        w1.Part0=bladep8
        w1.C1=CFrame.new(0.20,-5.3,0)
        w1.C0=CFrame.Angles(math.rad(90),math.rad(90),0)
bladep9 = makepart("BladePart9",main2,.02,.02,.02,"Lime green")
        bp9=specmesh(bladep9,"Wedge",.51,2,3)
        w1=Instance.new("Weld",bladep9)
        w1.Part1=handleg
        w1.Part0=bladep9
        w1.C1=CFrame.new(-0.20,-5.3,0)
        w1.C0=CFrame.Angles(math.rad(90),math.rad(270),0)
        return main2
end
hold=false
--[[Key/Mouse]]
mode="normal"
function select()
mode="normal"
equipanim()
end
function unselect()
char.Humanoid.WalkSpeed=20
hideanim()
end
combo=0
bin.Selected:connect(function(mouse)
    select()
    mouse.Button1Down:connect(function()
        if combo==0 then
        slashanim()
        combo = 1
        elseif combo==1 then
        slashanim2()
        combo = 0
        end
    end)
mouse.KeyDown:connect(function(key)
hold=true
if mode=="normal" then
        if key == "q" then
                        move3()
                elseif key=="e" then
                        move4()
                elseif key=="r" then
                        move5()
                        end
                        end
                end)
mouse.KeyUp:connect(function()
hold=false
end)
end)
bin.Deselected:connect(function()
unselect()
end)
--[[DMG]]
function damagesplat(dmg,hit)
    local mo = Instance.new("Model")
    mo.Name = dmg
    local pa = Instance.new("Part",mo)
    pa.formFactor = 3
    pa.Size = Vector3.new(0.8,0.3,0.8)
    pa.BrickColor = BrickColor.new(chosen)
        pa.CanCollide=false
    pa.CFrame = CFrame.new(hit.Position) * CFrame.new(0, 3, 0)
    pa.Name = "Head"
        cm=Instance.new("CylinderMesh",pa)
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
end
con = nil
con2 = nil
hitd=0
hitd2=0
function OT(hit)
if hit.Parent == nil then return end
local hum = hit.Parent:findFirstChild("Humanoid")
local head = hit.Parent:findFirstChild("Head")
if hum ~= nil then
dm=math.random(3,12)
hum:TakeDamage(dm)
if head ~= nil then
damagesplat(dm,head)
end
end
hitd=1
end
function OT2(hit)
if hit.Parent == nil then return end
local hum = hit.Parent:findFirstChild("Humanoid")
local head = hit.Parent:findFirstChild("Head")
if hum ~= nil then
dm=math.random(3,18)
hum:TakeDamage(dm)
if head ~= nil then
damagesplat(dm,head)
end
end
hitd2=1
end
function dmgcnnct(p)
con = p.Touched:connect(OT)
end
function dmgcnnct2(p)
con2 = p.Touched:connect(OT2)
end
function dmgdc2()
if con2 ~= nil then
con2:disconnect()
hitd2=0
end
end
function dmgdc()
if con ~= nil then
con:disconnect()
hitd=0
end
end
--[[Anims]]--
RW, LW , RWL, LWL = Instance.new("Weld"), Instance.new("Weld"), Instance.new("Weld"), Instance.new("Weld")
ch = char
player=plr
RSH, LSH , RHL, LHL = ch.Torso["Right Shoulder"], ch.Torso["Left Shoulder"] , ch.Torso["Right Hip"] , ch.Torso["Left Hip"]
 RW.Part0 = ch.Torso
 RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
 RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
 RW.Parent = main
 --
 LW.Part0 = ch.Torso
 LW.C0 = CFrame.new(-1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8)
 LW.C1 = CFrame.new(0, 0.5, 0)
 LW.Parent = main
 --
 RWL.Part0 = ch.Torso
 RWL.C0 = CFrame.new(1, -1, 0) --* CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5)
 RWL.C1 = CFrame.new(0.5, 1, 0)
 RWL.Parent = main
 --
 LWL.Part0 = ch.Torso
 LWL.C0 = CFrame.new(-1, -1, 0) --* CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8)
 LWL.C1 = CFrame.new(-0.5, 1, 0)
 LWL.Parent = main
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
local RAP = Instance.new("Part")
RAP.formFactor = 0
RAP.CanCollide = false
RAP.Name = "RAPart"
RAP.Locked = true
RAP.Size = Vector3.new(1,1,1)
RAP.Parent = main
RAP.Transparency = 1
local w = Instance.new("Weld")
w.Parent = RAP
w.Part0 = RAP
w.Part1 = char["Right Arm"]
w.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
w.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), 0, 0) * CFrame.new(0, 1, 0)
local LAP = Instance.new("Part")
LAP.formFactor = 0
LAP.CanCollide = false
LAP.Name = "LAPart"
LAP.Locked = true
LAP.Size = Vector3.new(1,1,1)
LAP.Parent = main
LAP.Transparency = 1
local ww = Instance.new("Weld")
ww.Parent = LAP
ww.Part0 = LAP
ww.Part1 = char["Left Arm"]
ww.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
ww.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), 0, 0) * CFrame.new(0, 1, 0)
function unequipweld()
wd1.Part0 = char.Torso
wd1.C1=CFrame.new(0,-1.5,-.6) * CFrame.Angles(0,0,.8)
wd1.C0=CFrame.new(0,0,0) * CFrame.Angles(0,0,0)
end
unequipweld()
function equipweld()
wd1.Part0 = RAP
wd1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
wd1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(90), math.rad(90)) * CFrame.new(0, 0, 0.2)
end
function hideanim()
RWFunc()
 for i = 0 , 1 , 0.2 do
                wait()
  RW.C0 = CFrame.new(1+0.5*i,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(math.rad(80+67*i), math.rad(45), math.rad(-45+90*i))
        end                 
 for i = 0 , 1 , 0.15 do
                wait()
  RW.C0 = CFrame.new(1.5,0.5+0.5*i,-0.5) * CFrame.fromEulerAnglesXYZ(math.rad(147+103*i), math.rad(45), math.rad(45-35*i))
        end  
  unequipweld()
 wait(0.1)
 for i = 0 , 1 , 0.1 do
                wait()
  RW.C0 = CFrame.new(1.5,1-0.5*i,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(math.rad(250-250*i), math.rad(45-45*i), math.rad(10-10*i))
        end  
  RWRem()
  LWRem()
end
function equipanim()
RWFunc()
 for i = 0 , 1 , 0.1 do
                wait(.05)
  RW.C0 = CFrame.new(1.5,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(math.rad(250*i), math.rad(45*i), math.rad(-10*i))
        end 
  equipweld()
 for i = 0 , 1 , 0.2 do
                wait(.05)
  RW.C0 = CFrame.new(1.5,0.5+0.5*i,-0.5) * CFrame.fromEulerAnglesXYZ(math.rad(250-102.5*i), math.rad(45), math.rad(-10+27.5*i))
        end  
 for i = 0 , 1 , 0.15 do
                wait(.05)
  RW.C0 = CFrame.new(1.5,1-0.5*i,-0.5) * CFrame.fromEulerAnglesXYZ(math.rad(147-67*i), math.rad(45), math.rad(17.5+27.5*i))
        end
 for i = 0 , 1 , 0.1 do
                wait(.05)
  RW.C0 = CFrame.new(1.5-0.5*i,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(math.rad(80), math.rad(35), math.rad(45-90*i))
        end 
end
function slashanim()
RWFunc()
if attacking==true then return end
attacking=true
 for i = 0 , 1 , 0.1 do
                wait()
  RW.C0 = CFrame.new(1-0.5*i,0.5,-0.5-0.5*i) * CFrame.fromEulerAnglesXYZ(math.rad(80+10*i), math.rad(45+45*i), math.rad(-45+45*i))
  RW.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(-45*i), math.rad(10*i), math.rad(0))
  end
  dmgcnnct(bladep1)
   for i = 0 , 1 , 0.3 do
                wait()
  RW.C0 = CFrame.new(0.5+1*i,0.5,-1+1*i) * CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(90), math.rad(0))
  RW.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(-45+135*i), math.rad(10+35*i), math.rad(0))
    end 
 for i = 0 , 1 , 0.2 do
          wait()
  RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(90), math.rad(0))
  RW.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(90+20*i), math.rad(45+5*i), math.rad(0))
    end 
        dmgdc()
if mode=="normal" then
 wait(0.15)
 wait()
 for i = 0 , 1 , 0.1 do
                wait()
  RW.C0 = CFrame.new(1.5-0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(math.rad(90-10*i), math.rad(90-45*i), math.rad(-45*i))
  RW.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(110-110*i), math.rad(50-50*i), math.rad(0))
end
end
attacking=false
end
function test(f)
        local a,b=coroutine.resume(coroutine.create(f))
        if not a then
                local h=Instance.new("Hint",workspace)
                h.Text="LOCAL: "..b
                wait(10)
                h:remove()
        end
end
function slashanim2()
test(function()
RWFunc()
LWFunc()
if attacking==true then return end
attacking=true
for i=0,1,0.1 do
wait()
RW.C0 = CFrame.new(1.5,.5,0) * CFrame.Angles(0,0,math.rad(30*i))
LW.C0 = CFrame.new(-1.5,.5,0) * CFrame.Angles(0,0,math.rad(-30*i))
end
fake=ghost()
fake.Handle.Weldd.Part0=LAP
fake.Handle.Weldd.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0)
fake.Handle.Weldd.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(90), math.rad(90)) * CFrame.new(0, 0, 0.2)
for i,d in pairs(fake:GetChildren()) do
d.Transparency=0.5
d.BrickColor=BrickColor.new("Lime green")
end
for i=0,1,0.1 do
wait()
RW.C0 = CFrame.new(1.5,.5,0) * CFrame.Angles(math.rad(0+120*i),0,math.rad(30))
LW.C0 = CFrame.new(-1.5,.5,0) * CFrame.Angles(math.rad(0+120*i),0,math.rad(-30))
end
dmgcnnct(bladep1)
dmgcnnct2(fake.BladePart1)
for i=0,1,0.2 do
wait()
RW.C0 = CFrame.new(1.5,.5,0) * CFrame.Angles(math.rad(120 - 120*i),0,math.rad(30 - 30*i))
LW.C0 = CFrame.new(-1.5,.5,0) * CFrame.Angles(math.rad(120 - 120*i),0,math.rad(-30 - -30*i))
end
dmgdc()
dmgdc2()
for i=0,1,0.1 do
wait()
RW.C0 = CFrame.new(1.5,.5,0) * CFrame.Angles(0,0,math.rad(0 + 90*i))
LW.C0 = CFrame.new(-1.5,.5,0) * CFrame.Angles(0,0,math.rad(-0 + -90*i))
end
dmgcnnct(bladep1)
dmgcnnct2(fake.BladePart1)
for i=0,1,0.1 do
wait()
RW.C0 = CFrame.new(1.5,.5,0) * CFrame.Angles(0,math.rad(0 + 60*i),math.rad(90 + 0))
LW.C0 = CFrame.new(-1.5,.5,0) * CFrame.Angles(0,math.rad(-0 + -60*i),math.rad(-80 + -0))
end
dmgdc()
dmgdc2()
for i=0,1,0.1 do
wait()
RW.C0 = CFrame.new(1.5,.5,0) * CFrame.Angles(0,math.rad(60 - 60*i),math.rad(90 + 0))
LW.C0 = CFrame.new(-1.5,.5,0) * CFrame.Angles(0,math.rad(-60 - -60*i),math.rad(-80 + -0))
end
for i=0,1,0.1 do
wait()
RW.C0 = CFrame.new(1.5,.5,0) * CFrame.Angles(0,0,math.rad(90 - 90*i))
LW.C0 = CFrame.new(-1.5,.5,0) * CFrame.Angles(0,0,math.rad(-90 - -90*i))
end
fake:Remove()
LWRem()
for i = 0 , 1 , 0.1 do
  wait()
  RW.C0 = CFrame.new(1.5-0.5,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(math.rad(80*i), math.rad(35*i), math.rad(-35 + -10*i))
end 
attacking=false
end)
end
function move3()
RWFunc()
LWFunc()
if attacking==true then return end
attacking=true
fake2=ghost()
fake2.Handle.Weldd.Part0=LAP
fake2.Handle.Weldd.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0)
fake2.Handle.Weldd.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(90), math.rad(90)) * CFrame.new(0, 0, 0.2)
for i,d in pairs(fake2:GetChildren()) do
d.Transparency=0.5
d.BrickColor=BrickColor.new("Lime green")
end
for i=0,1,0.1 do
wait()
RW.C0 = CFrame.new(1.5,.5,0) * CFrame.Angles(math.rad(50+50*i),0,math.rad(40+43*i))
LW.C0 = CFrame.new(-1.5,.5,0) * CFrame.Angles(math.rad(50+50*i),0,math.rad(-40+-43*i))
wd1.C0 = CFrame.Angles(0,0,math.rad(90*i))
fake2.Handle.Weldd.C0 = CFrame.Angles(0,0,math.rad(90*i))
end
dmgcnnct(bladep1)
dmgcnnct2(fake2.BladePart1)
local TorsCF = char.Torso.CFrame
local bg = Instance.new("BodyGyro",char.Torso)
bg.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
bg.P = bg.p * 25
bg.cframe = TorsCF
char.Humanoid.WalkSpeed=30
for i=0,50,0.2 do
wait()
bg.cframe = TorsCF * CFrame.Angles(0,math.rad(180+180*i),0)
end
char.Humanoid.WalkSpeed=20
game.Debris:AddItem(bg,0.02)
dmgdc()
dmgdc2()
for i=0,1,0.1 do
wait()
RW.C0 = CFrame.new(1.5,.5,0) * CFrame.Angles(math.rad(100 - 0*i),0,math.rad(-83 + 83*i))
LW.C0 = CFrame.new(-1.5,.5,0) * CFrame.Angles(math.rad(100 - 0*i),0,math.rad(-83 + 83*i))
end
fake2:Remove()
LWRem()
for i=0,1,0.1 do
wait()
wd1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(90*i), math.rad(90 + 0*i)) * CFrame.new(0, 0, 0.2)
RW.C0 = CFrame.new(1.5-0.5,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(math.rad(100 + -20*i), math.rad(35*i), math.rad(-35 + -10*i))
end
attacking=false
end
function move4()
RWFunc()
LWFunc()
if attacking==true then return end
attacking=true
for i=0,1,0.1 do
wait()
RW.C0=CFrame.new(1.5,.5,0) * CFrame.Angles(0,math.rad(10 + 5*i),math.rad(50+50*i))
LW.C0=CFrame.new(-1.5,.5,0) * CFrame.Angles(0,math.rad(80 + 0*i),math.rad(0+-50*i))
end
for i=0,1,0.1 do
wait()
LW.C0=CFrame.new(-1.5,.5,0) * CFrame.Angles(0,math.rad(80 + 0*i),math.rad(-50 + 150*i))
end
function Burn(Part)
if Part.Anchored == true and Part.Name == "Base" then return end
if Part:IsDescendantOf(char) then return end
if Part.Name =="Fireball" then return end
                local Fire = Instance.new("Fire")
                Fire.Heat = 2
                Fire.Size = 5
                Fire.Parent = Part
                Part:BreakJoints()
                Part.BrickColor = BrickColor.new("Lime green")
                                wait(2)
                                game.Debris:AddItem(Part,0.02)
end
function Ignite(Part)
        if Part.Anchored == true and Part.Name == "Base" then return end
                if Part:IsDescendantOf(char) then return end
        if Part:FindFirstChild("Fire") == nil then
                Part.Anchored = false
                local Fire = Instance.new("Fire")
                Fire.Heat = 2
                Fire.Size = 5
                Fire.Parent = Part
                Part:BreakJoints()
                Part.Touched:connect(function(Hit) Burn(Hit) end)
                Part.BrickColor = BrickColor.new("Lime green")
    end
end
for i = 1, 150 do
        local Source = char.Torso
        local Fireball = Instance.new("Part", Workspace)
        Fireball.Name = "Fireball"
        Fireball.CanCollide = false
        Fireball.TopSurface = 0
        Fireball.BottomSurface = 0
        Fireball.FormFactor = "Custom"
        Fireball.Shape = "Ball"
        Fireball.Size = Vector3.new(5, 5, 5)
        Fireball.CFrame = Source.CFrame * CFrame.new(0, 0, -5)
        local Velocity = Instance.new("BodyVelocity")
        Velocity.maxForce = Vector3.new(math.huge, math.huge, math.huge)
        Velocity.velocity = (Source.CFrame.lookVector * 50) + Vector3.new(math.random(-25,25), math.random(-10,10), math.random(-10,10))
        Velocity.Parent = Fireball
        Ignite(Fireball)
        Fireball.BrickColor = BrickColor.new("Lime green")
        coroutine.wrap(function() wait(math.random(1, 9) / 10) for i = 0, 1, 0.1 do Fireball.Transparency = i wait() end Fireball.Fire.Enabled = false Fireball.Anchored = true wait(1) Fireball:Remove() end)()
        wait()
end
for i=0,1,0.1 do
wait()
RW.C0 = CFrame.new(1.5-0.5,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(math.rad(15+15+50*i), math.rad(35*i), math.rad(100-140*i))
LW.C0=CFrame.new(-1.5,.5,0) * CFrame.Angles(0,math.rad(80 - 80*i),math.rad(100-100*i))
end
LWRem()
attacking=false
end
function move5()
RWFunc()
LWFunc()
if attacking==true then return end
attacking=true
fake3=ghost()
fake3.Handle.Weldd.Part0=LAP
fake3.Handle.Weldd.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0)
fake3.Handle.Weldd.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(90), math.rad(90)) * CFrame.new(0, 0, -0.2)
for i,d in pairs(fake3:GetChildren()) do
d.Transparency=0.5
d.BrickColor=BrickColor.new("Lime green")
end
for i=0,1,0.1 do
wait()
RW.C0=CFrame.new(1.5,.5,0) * CFrame.Angles(0,math.rad(-50+-50*i),math.rad(30+30*i))
LW.C0=CFrame.new(-1.5,.5,0) * CFrame.Angles(0,math.rad(50+50*i),math.rad(-30+-30*i))
end
f=0
powermod=Instance.new("Model",char)
powermod.Name="PowerMode"
for i=0,3,0.1 do
f=f+1
wait()
ball=Instance.new("Part",powermod)
ball.formFactor="Custom"
ball.Shape="Ball"
ball.TopSurface="Smooth"
ball.BottomSurface="Smooth"
ball.BrickColor=BrickColor.new(chosen)
ball.Transparency=0.5
ball.Anchored=true
ball.CanCollide=false
ball.Size=Vector3.new(f,f,f)
ball.CFrame=char.Torso.CFrame
end
wait(.1)
powermod:Remove()
function Burn(Part)
if Part.Anchored == true and Part.Name == "Base" then return end
if Part:IsDescendantOf(char) then return end
if Part.Name =="Fireball" then return end
                local Fire = Instance.new("Fire")
                Fire.Heat = 2
                Fire.Size = 5
                Fire.Parent = Part
                Part:BreakJoints()
                Part.BrickColor = BrickColor.new("Lime green")
                                wait(2)
                                game.Debris:AddItem(Part,0.02)
end
function Ignite(Part)
        if Part.Anchored == true and Part.Name == "Base" then return end
                if Part:IsDescendantOf(char) then return end
        if Part:FindFirstChild("Fire") == nil then
                Part.Anchored = false
                local Fire = Instance.new("Fire")
                Fire.Heat = 100
                Fire.Size = 100
                Fire.Parent = Part
                Part:BreakJoints()
                Part.Touched:connect(function(Hit) Burn(Hit) end)
                Part.BrickColor = BrickColor.new("Lime green")
    end
end
for i = 1, 250 do
        local Source = char.Torso
        local Fireball = Instance.new("Part", Workspace)
        Fireball.Name = "Fireball"
        Fireball.CanCollide = false
        Fireball.TopSurface = 0
        Fireball.BottomSurface = 0
        Fireball.FormFactor = "Custom"
        Fireball.Shape = "Ball"
        Fireball.Size = Vector3.new(50, 50, 50)
        Fireball.CFrame = Source.CFrame * CFrame.new(0, 0, -30)
        local Velocity = Instance.new("BodyVelocity")
        Velocity.maxForce = Vector3.new(math.huge, math.huge, math.huge)
        Velocity.velocity = (Source.CFrame.lookVector * 250) + Vector3.new(math.random(-2,2), math.random(-2,2), math.random(-2,2))
        Velocity.Parent = Fireball
        Ignite(Fireball)
        Fireball.BrickColor = BrickColor.new("Lime green")
        coroutine.wrap(function() wait(math.random(1, 9) / 10) for i = 0, 1, 0.1 do Fireball.Transparency = i wait() end Fireball.Fire.Enabled = false Fireball.Anchored = true wait(1) Fireball:Remove() end)()
        wait(0.02)
end
fake3:Remove()
LWRem()
attacking=false
end
function swordmode()
RWFunc()
char.Humanoid.WalkSpeed=20
bin.Name="Pheonix Sword"
hitdeb=1
hitdeb=0
wd1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
wd1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(90), math.rad(90)) * CFrame.new(0, 0, 0.2)
 for i = 0 , 1 , 0.1 do
                wait()
  RW.C0 = CFrame.new(1.5-0.5*i,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(math.rad(80), math.rad(35), math.rad(45-90*i))
end
mode="normal"
end --[[Filterd, May Error]]--  --[[Filterd, May Error]]-- 
 
