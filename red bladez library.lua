--red blades library
script.Parent = nil
it = Instance.new
v3=Vector3.new
bc=BrickColor.new 
c3=Color3.new 
cn=CFrame.new 
ca=CFrame.Angles
ti=table.insert 
tr=table.remove 
rn=math.random 
rd=math.rad 
mf=math.floor
ud = UDim2.new
enter = ""
 
--22436106
asset = "http://www.roblox.com/asset/?id="
ds = {}
ds.Ribs = "63216320"
ds.Flag = "1038492"
ds.BrickWall = "73398218"
ds.Bag="16657069"
ds.Explode1 = "2101148"
ds.Flame = "31760113" 
ds.Tile = "71176306"
ds.Shuriken = "11112101"
ds.ShurikenT = "21343902"
ds.EnergySlash1 = "10209303"
ds.EnergySlash2 = "10209280"
ds.EnergyClawT= "11996882"
ds.EnergyClaw = "11996935"
ds.Imbue = "2785493"
ds.Abscond = "2767090"
ds.SplinteredSkyT="50798688" 
ds.SplinteredSky="50798664"
ds.Tornado = "1051557" 
ds.SpikeBall = "9982590" 
ds.Fist = "65322375" 
ds.RedCliffT = "49754754" 
ds.RedCliff = "49754655" 
ds.Chakram = "18430887" 
ds.Chakram2 = "47260990" 
ds.Chakram3 = "19251107" 
ds.Diamond = "9756362" 
ds.Sword1 = "rbxasset://fonts/s" .. "word.mesh" 
ds.Claw = "10681506"
ds.Ring = "3270017"
ds.Crack = "49173398" 
ds.Cloud = "1095708" 
ds.Spike = "1033714" 
ds.Rock = "1290033" 
ds.Crown2 = "1323306"
ds.Crown = "20329976"
ds.Hood = "16952952"
ds.Slash = "10209645"
ds.Slash2 = "46760716"
ds.MadFace = "2235131"
ds.BanditMask = "20637493"
ds.Hood2 = "25211365"
ds.HoodT2 = "64240784"
ds.NoobMesh = "20929341"
ds.NoobMeshT = "20929335"
ds.Axe = "12768042"
ds.AxeT = "12768034"
ds.RoadLine = "72777152"
ds.LineTile = "72777172"
ds.Tile1 = "72773094"
ds.Fist = "65322375"
ds.Tree1 = "1090398"
ds.Vine = "13108500"
ds.VineT = "17585271"
ds.TreeTexture = "2861779" 
ds.Tug = "31173820" -- sound
ds.Fire = "2693346" --"2760979" 
ds.Hit = "2801263"
ds.BulletHole = "64291961"
ds.Camo = "4268107"
ds.Gradient1 = "70060415"
ds.Gradient2 = "48965808"
ds.clicksound = "14863866"
ds.DWrench = "70628302"
ds.DHealth = "70635804"
ds.DOrbTray = "70642795"
ds.DLog = "70650545"
ds.DCompass = "70652520"
ds.DRadar = "70652524"
ds.DGlassButton = "64605912"
ds.DDebug = "70654424"
ds.DRefresh = "70655469"
ds.DClock = "70657533"
ds.DClose = "70657543"
ds.DDebugClean = "70657552"
ds.DDebugMessage = "70657560"
ds.DBrick = "70657656"
ds.DBolt = "70660034"
ds.DHeartbreak = "70660720"
ds.SpawnTexture = "rbxasset://Textures/SpawnLocation.png"
ds.DFolder = "70670539"
ds.DPerson = "70670507"
ds.DUpButton = "70728132"
ds.DDownButton = "70728084"
ds.DOrb = "64596050"
ds.DWidget = "70747254"
ds.DCmd = "70749687"
ds.DAntiVirus = "70749678"
ds.DCheck = "70749683"
ds.DCross = "70749685"
ds.DPin = "70810690"
ds.DDanger = "70810890"
ds.DNoTools = "70813888"
ds.DNoBackpack = "70813897"
ds.DPlay = "70859585"
ds.DRadarSignal = "70868136"
ds.DRadarFace = "70869351"
ds.DFolderAdd = "70907152"
ds.DAdd = "70920549"
ds.DClockFrame = "70927569"
ds.DShutdown = "70927576"
ds.DBlackDot = ds.Gradient1
ds.DBack = "70929878"
ds.DCalculator = "71659259"
ds.DExplorer = "71659307"
 
limbweld = {}
limbweld["Right Shoulder"] = {}
limbweld["Right Shoulder"].C0 = cn(1,0.5,0,0,0,1,0,1,0,-1,-0,-0)
limbweld["Right Shoulder"].C1 = cn(-0.5,0.5,0,0,0,1,0,1,0,-1,0,0)
limbweld["Right Shoulder"].ps = {"Torso","Right Arm"}
limbweld["Left Shoulder"] = {}
limbweld["Left Shoulder"].C0 = cn(-1,0.5,0,0,0,-1,0,1,0,1,0,0)
limbweld["Left Shoulder"].C1 = cn(0.5,0.5,0,0,0,1,0,1,0,1,0,0)
limbweld["Left Shoulder"].ps = {"Torso","Left Arm"}
limbweld["Right Hip"] = {}
limbweld["Right Hip"].C0 = cn(1,-1,0,0,0,1,0,1,0,-1,0,0)
limbweld["Right Hip"].C1 = cn(0.5,1,0,0,0,1,0,1,0,-1,0,0)
limbweld["Right Hip"].ps = {"Torso","Right Leg"}
limbweld["Left Hip"] = {}
limbweld["Left Hip"].C0 = cn(-1,-1,0,0,0,-1,0,1,0,1,0,0)
limbweld["Left Hip"].C1 = cn(-0.5,1,0,0,0,-1,0,1,0,1,0,0)
limbweld["Left Hip"].ps = {"Torso","Left Leg"}
limbweld["Neck"] = {}
limbweld["Neck"].C0 = cn(0,1,0,-1,0,0,0,0,1,0,1,0)
limbweld["Neck"].C1 = cn(0,-0.5,0,-1,0,0,0,0,1,0,1,0)
limbweld["Neck"].ps = {"Torso","Head"}
 
 
qi = function(ttz) -- instance v2
 local qii = it(ttz[1])  table.foreach(ttz,function(oi,oi2) 
 if oi ~= 1 and oi ~= 2 then  qii[oi] = oi2  end  end) qii.Parent=ttz[2] return qii end
 
table.foreach(ds,function(a,b) -- asset loader
 if tonumber(b:sub(1,3)) then ds[a] = asset .. b game:service'ContentProvider':Preload(ds[a])  end end)
 
q = function(f) -- quick coroutine function
 coroutine.resume(coroutine.create(function() f() end)) end 
 
ft = function(tablez,item) -- table finder
 for i=1,#tablez do if tablez[i] == item then return i end end  return nil end
 
ft2 = function(tablez,item) -- table finder 2
 for i=1,#tablez do  if tablez[i][1] == item then  return i  end  end  return nil end
 
pa = function(pa,pn,sh,x,y,z,c,a,tr,re,bc2) -- part maker
 local fp=nil 
 if sh ~= "Wedge" and sh ~= "CornerWedge" and sh ~= "VehicleSeat" and sh ~= "Seat" then 
 fp=it("Part",pa) 
 fp.Material = "SmoothPlastic"
 fp.Shape=sh or "Block" 
 fp.formFactor="Custom" 
 elseif sh == "Wedge" then 
 fp=it("WedgePart",pa) 
 fp.formFactor="Custom"
 elseif sh == "CornerWedge" then 
 fp=it("CornerWedgePart",pa) 
 elseif sh == "VehicleSeat" then 
 fp=it("VehicleSeat",pa) 
 elseif sh == "Seat" then 
 fp=it("Seat",pa) 
 for _, Surf in pairs(Surfaces) do
        fp[Surf] = "SmoothNoOutlines"
    end
 end 
 fp.Size=v3(x or 4,y or 2,z or 2) 
 fp.CanCollide=c
 fp.Anchored=a or false
 fp.BrickColor=bc(bc2 or "") 
 fp.Transparency=tr or 0
 fp.Reflectance=re or 0
 fp.BottomSurface=0 
 fp.Name=pn or "UnNamed"
 fp.Locked = true
 fp.TopSurface=0 
 fp.CFrame = cn(-9000,9000,-9000)
 fp:BreakJoints() 
 fp.Anchored = a 
 return fp 
end 
 
 
fadeid=-100000
fade = function(prt,incr,wai)
fadeid=fadeid+1
FFade[fadeid] = {prt,incr or 0.1,wai or 0,tick()}
end
 
stick = function(hit2,hit) -- stick function
 return qi({"Weld",hit2,Part0=hit2,Part1=hit,C0=hit2.CFrame:inverse()*cn(hit2.Position),C1=hit.CFrame:inverse()*cn(hit2.Position)}) end 
 
ray = function(Pos, Dir,tab) -- ray cast
 return workspace:FindPartOnRay(Ray.new(Pos, Dir.unit *999),tab) end 
 
Trail = function(ob,times,waitz,col,thickz,ofz) -- Brick Trail
 q(function() 
 local oldpos=(ob.CFrame *ofz).p 
 for i=1,times do 
 local obp=(ob.CFrame *ofz).p 
 local mag=(oldpos - obp).magnitude 
 local tr=pa(ob,"trail","Block",0,0,0,false,false,0.5,0.15,col) 
 tr.Anchored=true 
 tr.CFrame=cn(oldpos,obp) 
 tr.CFrame=tr.CFrame + tr.CFrame.lookVector* (mag/2) 
 local trm=it("CylinderMesh",tr) 
 trm.Scale=v3(5*thickz,mag*5,5*thickz) 
 q(function() 
 for i=5*thickz,0,-5*thickz/10 do 
 trm.Scale=v3(i,mag*5,i) 
 wait() 
 end 
 tr:Remove'' 
 end) 
 tr.CFrame=tr.CFrame *ca(rd(90),0,0) 
 oldpos=obp wait(waitz) 
 end 
 end) 
end
 
 
de = function(it,ti) game:service'Debris':AddItem(it,ti) end -- Debris
 
gmid = -100000
GlowMesh = function(anch,meshid2,rootz,mv3,colzz,adjus,l1,l2,l3) -- Glowmesh
local spi=pa(rootz,"","Block",1,1,1,false,false,l1,0,colzz) local spim=it("SpecialMesh",spi) if meshid2:lower()=="sphere" then spim.MeshType="Sphere" elseif meshid2:lower()=="block" then spim:Remove() spim=qi({"BlockMesh",spi}) else spim.MeshType="FileMesh" spim.MeshId=meshid2 end
if anch then local spiw=qi({"Weld",spi,Part0=rootz,Part1=spi}) spiw.C0 =spiw.C0 *adjus else spi.Anchored=true spi.CFrame=adjus end 
gmid=gmid+1 GMesh[tostring(gmid)] = {spi,spim,l1,l2,l1,mv3}
end
 
 
DetectSurface = function(pos, part) -- Surface Detector
local surface = nil local pospos = part.CFrame
local pos2 = pospos:pointToObjectSpace(pos) local siz = part.Size local shaep = part.Shape
if shaep == Enum.PartType.Ball or shaep == Enum.PartType.Cylinder then
surface = {"Anything", cn(pospos.p, pos)*cn(0, 0, -(pospos.p - pos).magnitude+0.12)*ca(rd(-90), 0, 0)}
else if pos2.Y > ((siz.Y/2)-0.01) then surface = {"Top", ca(0, 0, 0)}
elseif pos2.Y < -((siz.Y/2)-0.01) then surface = {"Bottom", ca(-math.pi, 0, 0)} elseif pos2.X > ((siz.X/2)-0.01) then surface = {"Right", ca(0, 0, rd(-90))}
elseif pos2.X < -((siz.X/2)-0.01) then surface = {"Left", ca(0, 0, rd(90))} elseif pos2.Z > ((siz.Z/2)-0.01) then surface = {"Back", ca(rd(90), 0, 0)} elseif pos2.Z < -((siz.Z/2)-0.01) then surface = {"Front", ca(rd(-90), 0, 0)} end end return surface end
 
BulletHole = function(HitPos,HitObj,sc,img,par) -- Bullethole function
local Surface = DetectSurface(HitPos, HitObj)
local C = cn(HitPos) * ca(HitObj.CFrame:toEulerAnglesXYZ()) * Surface[2]
if Surface[1] == "Anything" then C = Surface[2] end local theimg = img or ds.BulletHole
local bl = pa(workspace or par,"bullethole","Block",sc,0,sc,false,true,1,0,"") qi({"Decal",bl,Face="Top",Texture=theimg})
bl.CFrame = C*cn(0,-0.1,0) if not HitObj.Anchored then bl.Anchored = false stick(bl,HitObj) bl.ChildRemoved:connect(function() bl:Remove() end) end de(bl,5)  
end
 
Dmg = function(hum,dmg)
hum.Health=hum.Health-dmg
end
 
so = function(id,par,vol,pit) q(function() -- Sound maker
local sou = qi({"Sound",par or workspace,Volume=vol/1.5 or 0.75,Pitch=pit or 1,SoundId=id})
wait() sou:play() wait(6) sou:Remove() end) end
 
GetRegion = function(p0,p1,f,f2) -- range get 
 q(function()
 for i,v in pairs(workspace:FindPartsInRegion3(Region3.new(p0,p1),nil,100))  do 
 if v.Parent:findFirstChild("H") == nil and v.Name == "Torso" and fc(v.Parent,"Humanoid") and fc(v.Parent,"Humanoid").Health > 0  then 
 q(function()  f(v.Parent)  end) 
 elseif f2 and fc(v.Parent,"Humanoid") == nil then f2(v)  end  end end) end 
 
ForceBrick = function(ob,roo,fo) if ob.Anchored then return end ob:BreakJoints() ob.Velocity=cn(roo,ob.Position).lookVector*fo end
 
SplashDmg = function(cf,ran,damg,forc,fa)
pcall(function() cf = cf.p end) local rr = ran
GetRegion(cf-v3(rr,rr,rr),cf+v3(rr,rr,rr),function(v) if v~=fa and (v.Torso.Position-cf).magnitude<(rr*2) then
Dmg(fc(v,"Humanoid"),damg) if forc and forc>0 then 
local bpp = qi({"BodyVelocity",v.Torso,maxForce=v3(1/0,1/0,1/0),velocity=cn(cf,v.Torso.Position+v3(0,0.5,0)).lookVector*forc}) wait(0.2) bpp:Remove()
end end end)
end
 
DetectRange = function(cf,ran,fa)
pcall(function() cf = cf.p end) local rr = ran theboom = false
GetRegion(cf-v3(rr,rr,rr),cf+v3(rr,rr,rr),function(v) if v~=fa and (v.Torso.Position-cf).magnitude<(rr*2) then theboom=true end end)
return theboom end
 
FindGround = function(pos) -- ground finder
 local ax,ay,az = pos:toEulerAnglesXYZ()
 local bhit,bpos=ray(pos.p,pos.p - (pos.p + v3(0,200,0)))
 if bhit and bpos then 
 return cn(bpos)*ca(ax,ay,az) 
 end 
 return nil 
end
 
MakeCrater = function(pos,sc,tyms,debz,par) -- crater maker
 q(function() 
 if not debz then 
 debz = 5 
 end 
 local bhit,bpos=ray(pos,pos - (pos + v3(0,200,0)))
 if bhit and bpos then
 for i=1,tyms do 
 q(function()
 local gr = pa(par or workspace,"","Block",rn(5,13)/10*sc,0.25*sc,rn(4,10)/10*sc,true,true,bhit.Transparency,bhit.Reflectance,bhit.BrickColor.Name) 
 gr.Material = bhit.Material 
 gr.TopSurface = bhit.TopSurface
 gr.CFrame = cn(bpos+v3(rn(-12,12)/10*sc,0,rn(-12,12)/10*sc))*ca(rd(rn(-40,40)),rd(rn(-360,360)),rd(rn(-40,40))) 
 wait(debz) 
 fade(gr,0.1)
 end) 
 end
 end 
 end)
end
 
MakeCrack = function(pos,sc,debz,par) -- crackmaker
 q(function() 
 if not debz then 
 debz = 5 
 end 
 local bhit,bpos=ray(pos,pos - (pos + v3(0,10,0)))
 if bhit and bpos then
local cr = pa(par or workspace,"","Block",sc,0,sc,false,true,1,0,"") cr.CFrame = cn(bpos)
local dec=qi({"Decal",cr,Face="Top",Texture=ds.Crack}) de(cr,debz)
 end 
 end)
end
 
a = {}
a.insw={}
function cleanweld(wexx,namzi) 
 local tn=ft2(a.insw,wexx) 
 if tn==nil then return end 
 if namzi=="p0" then 
 a.insw[tn][2]["p0x"],a.insw[tn][2]["p0y"],a.insw[tn][2]["p0z"]=0,0,0 elseif namzi=="p1" then
 a.insw[tn][2]["p1x"],a.insw[tn][2]["p1y"],a.insw[tn][2]["p1z"]=0,0,0 elseif namzi=="a0" then
 a.insw[tn][2]["a0x"],a.insw[tn][2]["a0y"],a.insw[tn][2]["a0z"]=0,0,0 elseif namzi=="a1" then
 a.insw[tn][2]["a1x"],a.insw[tn][2]["a1y"],a.insw[tn][2]["a1z"]=0,0,0 
 end
end
function c2(wexx,smmx,c0orc1,aa,bb,cc,xx,yy,zz,fuu) 
 q(function() 
 c1(wexx,smmx,c0orc1,aa,bb,cc,xx,yy,zz,fuu) 
 end) 
end
a.Welding=0 
function c1(wexx,smmx,c0orc1,aa,bb,cc,xx,yy,zz,fuu)
 if ft2(a.insw,wexx)==nil then 
 ti(a.insw,{wexx,{}}) 
 local tn=ft2(a.insw,wexx) 
 a.insw[tn][2]["p0x"],a.insw[tn][2]["p0y"],a.insw[tn][2]["p0z"]=wexx.C0.x,wexx.C0.y,wexx.C0.z 
 a.insw[tn][2]["p1x"],a.insw[tn][2]["p1y"],a.insw[tn][2]["p1z"]=wexx.C1.x,wexx.C1.y,wexx.C1.z 
 a.insw[tn][2]["a0x"],a.insw[tn][2]["a0y"],a.insw[tn][2]["a0z"]=wexx.C0:toEulerAnglesXYZ()
 a.insw[tn][2]["a1x"],a.insw[tn][2]["a1y"],a.insw[tn][2]["a1z"]=wexx.C1:toEulerAnglesXYZ() 
 end 
 local tn=ft2(a.insw,wexx) 
 local xx2,yy2,zz2=0,0,0 
 local x2,y2,z2=0,0,0 
 if c0orc1==0 then 
 xx2,yy2,zz2=a.insw[tn][2]["a0x"],a.insw[tn][2]["a0y"],a.insw[tn][2]["a0z"] 
 x2,y2,z2=a.insw[tn][2]["p0x"],a.insw[tn][2]["p0y"],a.insw[tn][2]["p0z"] 
 elseif c0orc1==1 then 
 xx2,yy2,zz2=a.insw[tn][2]["a1x"],a.insw[tn][2]["a1y"],a.insw[tn][2]["a1z"] 
 x2,y2,z2=a.insw[tn][2]["p1x"],a.insw[tn][2]["p1y"],a.insw[tn][2]["p1z"] 
 else 
 xx2,yy2,zz2=a.insw[tn][2]["a1x"],a.insw[tn][2]["a1y"],a.insw[tn][2]["a1z"]
 x2,y2,z2=a.insw[tn][2]["p0x"],a.insw[tn][2]["p0y"],a.insw[tn][2]["p0z"] 
 end a.Welding=a.Welding + 1 
 local twa=1 
 if smmx >= 1 then 
 else 
 for i=smmx,0.8,smmx do 
 twa = 1 
 if c0orc1==0 then 
 wexx.C0=cn(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)) *ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i)) 
 elseif c0orc1==1 then 
 wexx.C1=cn(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)) *ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i)) 
 else local x,y,z = wexx.C0:toEulerAnglesXYZ()
 wexx.C0=cn(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i))*ca(x,y,z)
 wexx.C1=cn(wexx.C1.x,wexx.C1.y,wexx.C1.z)*ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i))
 end 
 if fuu then 
 q(function() fuu(i) end) 
 end 
 wait() 
 end 
 for i=0.8,1,smmx*0.45 do 
 twa = 1 
 if c0orc1==0 then 
 wexx.C0=cn(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)) *ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i)) 
 elseif c0orc1==1 then 
 wexx.C1=cn(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)) *ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i)) 
 else local x,y,z = wexx.C0:toEulerAnglesXYZ()
 wexx.C0=cn(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i))*ca(x,y,z)
 wexx.C1=cn(wexx.C1.x,wexx.C1.y,wexx.C1.z)*ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i))
 end
 wait()  if fuu then 
 q(function() fuu(i) end) 
 end 
 end 
 end 
 local i=1 
 if c0orc1==0 then 
 wexx.C0=cn(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)) *ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i)) 
 elseif c0orc1==1 then 
 wexx.C1=cn(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)) *ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i)) 
 else local x,y,z = wexx.C0:toEulerAnglesXYZ()
 wexx.C0=cn(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i))*ca(x,y,z)
 wexx.C1=cn(wexx.C1.x,wexx.C1.y,wexx.C1.z)*ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i))
 end 
 a.Welding=a.Welding - 1 
 local tn=ft2(a.insw,wexx)
 if c0orc1==0 then 
 a.insw[tn][2]["p0x"],a.insw[tn][2]["p0y"],a.insw[tn][2]["p0z"]=x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)
 a.insw[tn][2]["a0x"],a.insw[tn][2]["a0y"],a.insw[tn][2]["a0z"]=xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i)
 elseif c0orc1==1 then
 a.insw[tn][2]["p1x"],a.insw[tn][2]["p1y"],a.insw[tn][2]["p1z"]=x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)
 a.insw[tn][2]["a1x"],a.insw[tn][2]["a1y"],a.insw[tn][2]["a1z"]=xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i)
 elseif c0orc1==3 then
 local x,y,z=wexx.C0.x,wexx.C0.y,wexx.C0.z 
 a.insw[tn][2]["p0x"],a.insw[tn][2]["p0y"],a.insw[tn][2]["p0z"]=x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)
 local x,y,z=wexx.C1:toEulerAnglesXYZ()
 a.insw[tn][2]["a1x"],a.insw[tn][2]["a1y"],a.insw[tn][2]["a1z"]=xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i)
 end 
end 
 
gunshot = function(speed,sc,dmg,cff) q(function() -- gunshot function
local bb = pa(workspace,"bullet","Block",0.2*sc,0.3*sc,0.2*sc,true,true,0,0.1,"Black") qi({"CylinderMesh",bb})
bb.CFrame = cff*ca(rd(rn(-1000,1000)/1500),rd(rn(-1000,1000)/1500),rd(rn(-1000,1000)/1500))
so(ds.Fire,bb,0.3,1) wait() for i=1,50 do 
bhit,bpos=ray(bb.Position,bb.Position - (bb.CFrame *cn(0,-1,0)).p)
if bhit and bhit.Name ~= "bullet" and bhit.Name ~= "bullethole" and bpos and (bpos - bb.Position).magnitude < speed  then break end
bb.CFrame=bb.CFrame*cn(0,speed,0)*ca(rd(-0.2),0,0)
wait()
end bb.CFrame=bb.CFrame*cn(0,(bpos-bb.Position).magnitude,0)
if not bhit.Anchored then 
if fc(bhit.Parent,"Humanoid") then local h = fc(bhit.Parent,"Humanoid") h.Health=h.Health-dmg so(ds.Hit,bhit,0.3,1) end 
else end bb:Remove()
if fc(bhit.Parent,"Humanoid") == nil then BulletHole(bpos,bhit,0.7*sc) end
end) end
 
fireob = function(speed,ob,dmg,adj,grav,funxx) q(function() -- fire function
local bb = ob:Clone() bb.Anchored=true bb.Parent=workspace bb.Name = "bullet"
local bhit,bpos = nil,nil
bb.CFrame = ob.CFrame*adj for i=1,50 do 
local bhit2,bpos2=ray(bb.Position,bb.Position - (bb.CFrame *cn(0,0,-1)).p)
if bhit2 and bhit2.Name ~= "bullet" and bhit2.Name ~= "bullethole" and bpos2 and (bpos2 - bb.Position).magnitude < speed  then bhit,bpos=bhit2,bpos2 break end
bb.CFrame=bb.CFrame*cn(0,0,speed) 
wait()
end if bhit then bb.CFrame=bb.CFrame*cn(0,0,(bpos-bb.Position).magnitude) end 
if bhit and not bhit.Anchored then 
if fc(bhit.Parent,"Humanoid") then local h = fc(bhit.Parent,"Humanoid") h.Health=h.Health-dmg so(ds.Hit,bhit,0.3,1) funxx(bb) end 
else end 
if not bhit or (bhit and fc(bhit.Parent,"Humanoid") == nil) then funxx(bb)  end
end) end
 
dive = function(ob2,pro,ite,stof)
local function div(ob) for i,v in pairs(ob:children()) do if v[pro] == ite then 
for i=1,#stof do v[stof[i][1] ] = stof[i][2] end else div(v) end end end 
div(ob2)
end
dive2 = function(ob2,func)
local function div(ob) for i,v in pairs(ob:children()) do func(v) div(v) end end 
div(ob2)
end
 
DarkBlast = function(ob,ofs,siz,tim,forc) q(function()
GlowMesh(false,"Sphere",ob,v3(siz,siz,siz)*(rn(85,115)/40),'Really black',ob.CFrame*ofs*cn(rn(-siz,siz)/8,rn(-siz,siz)/8,rn(-siz,siz)/8)*ca(rd(rn(-360,360)),rd(rn(-360,360)),rd(rn(-360,360))),0.08,0.8,0.4) 
so(ds.Abscond,ob,0.75,1.1) wait(0.05) local fs = qi({"Sound",ob,SoundId=ds.Flame,Pitch=0.8,Volume=0.8,PlayOnRemove=true}) fs:play() fs.Looped=true
local function blas() GlowMesh(false,"Block",ob,v3(siz,siz,siz)*(rn(85,115)/100),rn(1,3) ~= 1 and 'Really black' or (rn(1,2) == 1 and 'Navy blue' or "Really red"),ob.CFrame*ofs*cn(rn(-siz,siz)/8,rn(-siz,siz)/8,rn(-siz,siz)/8)*ca(rd(rn(-360,360)),rd(rn(-360,360)),rd(rn(-360,360))),0.08,0.8,0.4) end
for i=0.1,tim,0.1 do 
blas()
wait(0.05)
end 
fs.Looped=false
GlowMesh(false,"Sphere",ob,v3(siz/2.5,siz/2.5,siz*4.5)*(rn(85,115)/100),"Black",ob.CFrame*ofs*cn(rn(-siz,siz)/8,rn(-siz,siz)/8,rn(-siz,siz)/8)*ca(0,rd(45),0),0.11,1,0)
GlowMesh(false,"Sphere",ob,v3(siz/2.5,siz/2.5,siz*4.5)*(rn(85,115)/100),"Black",ob.CFrame*ofs*cn(rn(-siz,siz)/8,rn(-siz,siz)/8,rn(-siz,siz)/8)*ca(0,rd(-45),0),0.11,1,0)
so(ds.Explode1,ob,0.8,1.25)
SplashDmg(ob.CFrame*ofs,siz*1,18,forc or 0,ob.Parent)
end) end
 
fc = function(ob,cl)
for i,v in pairs(ob:children()) do if v.className:lower()==cl:lower() then return v end end return nil
end
 
function Clock(secs) if not secs then return "" end
        local Seconds = secs
        local Hour = math.floor((Seconds%86400)/3600)
        local Minute = math.floor((Seconds%3600)/60)
        if Minute <= 9 then Minute = "0" .. Minute end
        local Second = math.floor(Seconds%60)
        if Second <= 9 then Second = "0" .. Second end
        if Hour > 24 then Hour = Hour - 24 end --nextday
        if Hour >= 13 then
                if Hour <= 9 then
                        TotalHour = "0" .. Hour - 12 .. ":" .. Minute .. ":" .. Second .. "PM"
                else
                        TotalHour = Hour - 12 .. ":" .. Minute .. ":" .. Second .. "PM"
                end
        else
                TotalHour = Hour .. ":" .. Minute .. ":" .. Second .. "AM"
        end
if TotalHour:sub(2,2) == ":" then TotalHour = "0" ..TotalHour end 
return tostring(TotalHour),(Seconds%60),Minute,Hour
end
 
function guieffect1(v,gg,ent,lea,zii)
local ysize = v.Size.Y.Offset local bupos = v.Position local busi = v.Size local zi = v.ZIndex local en = 0
v.MouseEnter:connect(function() if en ~= 0 then else bupos=v.Position end if ent then ent() end en=en+1 -- enter
v.Size = busi v.Position=bupos
for i=1,4 do v.ZIndex = zi+1+(zii or 0)
v.Size = busi+ud(0,gg*2*i,0,gg*2*i) v.Position = bupos-ud(0,gg*i,0,gg*i)
wait() end v.Size = busi+ud(0,gg*8,0,gg*8) v.Position=bupos-ud(0,gg*4,0,gg*4) end)
v.MouseLeave:connect(function() if lea then lea() end -- leave
v.Size = busi+ud(0,gg*8,0,gg*8) v.Position=bupos-ud(0,gg*4,0,gg*4) 
for i=4,1,-1 do v.ZIndex = zi
v.Size = busi+ud(0,gg*2*i,0,gg*2*i) v.Position = bupos-ud(0,gg*i,0,gg*i)
wait() end v.Size = busi v.Position=bupos en=en-1 end)
if v:IsA("Frame") or v:IsA("ImageLabel") or v:IsA("TextBox") or v:IsA("TextLabel") then else 
v.MouseButton1Down:connect(function() so(ds.clicksound,workspace.CurrentCamera,1,1) end) end
end 
 
function se(Key,Text) 
local Values = {} 
for value in (Text..Key):gmatch("(.-)"..Key) do 
table.insert(Values,value)
end return Values 
end
 
callp = function(ms,si,pl)
 
 
end
 
clearclass = function(p,it)
for i,v in pairs(p:children()) do if v.className:lower() == it:lower() then v:Remove() end end 
end
 
byten = function(source)
        local output = ""
        source = source:gsub("^(............)....[^%z]+%z", "%1\0\0\0\0")
        output = source:gsub(".",function(c) return "\\" .. c:byte() end)
        return "loadstring(\""..output.."\",\"\")()"
end
 
local thefenv = getfenv()
getfenv()["rmhelp"] = function() 
local nus = 0
for i,v in pairs(thefenv) do if i ~= "wait" and i ~= "script" then nus = nus + 1 wait(0.05)
print(string.rep(" ",3-#tostring(nus)) ..nus.. ")  " ..i.. "  (" ..type(v).. ")")
end
end
end
function weld(pa,p0,p1,x,y,z,a,b,c) local fw=it("Weld",pa) fw.Part0=p0 fw.Part1=p1 fw.C0=cn(x,y,z) *ca(a,b,c) return fw end
 
 
 
for i,v in pairs(thefenv) do 
_G[i] = v 
end
 
_G[" rmdx "] = [[
for i,v in pairs(_G) do if i ~= "wait" and i ~= "script" then getfenv()[i] = v end end 
]]
 
print("RMDX's library loaded, call rmhelp() for list")
 
 
if _G.RMThreadGMesh == nil then _G.RMThreadGMesh=0 end
_G.RMThreadGMesh=_G.RMThreadGMesh+1
var1 = _G.RMThreadGMesh
GMesh = {}
FFade = {}
while _G.RMThreadGMesh==var1 do wait() 
for i,v in pairs(GMesh) do 
GMesh[i][1].Transparency=GMesh[i][3] GMesh[i][2].Scale=GMesh[i][6]*(GMesh[i][3]+0.3)
GMesh[i][3]=GMesh[i][3]+GMesh[i][5]
if GMesh[i][4] <= GMesh[i][3] then GMesh[i][1]:Remove() GMesh[i]=nil end
end
 
for i,v in pairs(FFade) do --1ob,2inc,3wai
if v[4]+v[3] < tick() then
v[1].Transparency=v[1].Transparency+v[2]
if v[1].Transparency < -0.2 or v[1].Transparency > 1.2 then if v[1].Transparency > 1.2 then v[1]:Remove() end FFade[i] = nil end
end -- thewait
end
 
end
 
--local/fade(workspace.masterepico.Head,0.06,2) wait(2) print'lal'
 
--mediafire gtfo password
