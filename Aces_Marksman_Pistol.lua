
Player = game.Players.LocalPlayer
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
RS = Torso["Right Shoulder"] 
Neck = Torso.Neck
attacktype = 1
vt = Vector3.new
cf = CFrame.new
euler = CFrame.fromEulerAnglesXYZ
angles = CFrame.Angles
necko = cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
necko2 = cf(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
LHC0 = cf(-1, -1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
LHC1 = cf(-0.5, 1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
RHC0 = cf(1, -1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
RHC1 = cf(0.5, 1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
RootPart = Character.HumanoidRootPart
RootJoint = RootPart.RootJoint
RootCF = euler(-1.57, 0, 3.14)
attack = false
equipped = false
local Anim = "Idle"
local Effects = {}
cam = workspace.CurrentCamera
ZTarget = nil
RocketTarget = nil
local RbxUtility = LoadLibrary("RbxUtility")
local Create = RbxUtility.Create
local m = Create("Model"){
	Parent = Character,
	Name = "WeaponModel",
}
mouse = Player:GetMouse()
RSH = Torso["Right Shoulder"] 
LSH = Torso["Left Shoulder"]
RHP = Character.Torso["Right Hip"] 
LHP = Character.Torso["Left Hip"]  

function NoOutline(Part)
	Part.TopSurface, Part.BottomSurface, Part.LeftSurface, Part.RightSurface, Part.FrontSurface, Part.BackSurface = 10, 10, 10, 10, 10, 10
end
function swait(num)
	if num == 0 or num == nil then
		game:service'RunService'.Heartbeat:wait()
	else
		for i = 0, num do
			game:service'RunService'.Heartbeat:wait()
		end
	end
end
	
function nooutline(part)
	part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
end
	
function part(formfactor, parent, material, reflectance, transparency, brickcolor, name, size)
	local fp = Create("Part"){
		formFactor = formfactor,
		Parent = parent,
		Reflectance = reflectance,
		Transparency = transparency,
		CanCollide = false,
		Locked = true,
		BrickColor = BrickColor.new(tostring(brickcolor)),
		Name = name,
		Size = size,
		Position = Character.Torso.Position,
		Material = material,
	}
	nooutline(fp)
	return fp
end
	
function mesh(Mesh, part, meshtype, meshid, offset, scale)
	local Msh = Create(Mesh){
		Parent = part,
		Offset = offset,
		Scale = scale,
	}
	if Mesh == "SpecialMesh" then
		Msh.MeshType = meshtype
		Msh.MeshId = meshid
	end
	return Msh
end
	
function weld(parent, part0, part1, c0, c1)
	local Weld = Create("Weld"){
		Parent = parent,
		Part0 = part0,
		Part1 = part1,
		C0 = c0,
		C1 = c1,
	}
	return Weld
end
	
	
local function CFrameFromTopBack(at, top, back)
	local right = top:Cross(back)
	return CFrame.new(at.x, at.y, at.z,
right.x, top.x, back.x,
right.y, top.y, back.y,
right.z, top.z, back.z)
end

function Triangle(a, b, c)
	local edg1 = (c - a):Dot((b - a).unit)
	local edg2 = (a - b):Dot((c - b).unit)
	local edg3 = (b - c):Dot((a - c).unit)
	if edg1 <= (b - a).magnitude and edg1 >= 0 then
		a, b, c = a, b, c
	elseif edg2 <= (c - b).magnitude and edg2 >= 0 then
		a, b, c = b, c, a
	elseif edg3 <= (a - c).magnitude and edg3 >= 0 then
		a, b, c = c, a, b
	else
		assert(false, "unreachable")
	end
 
	local len1 = (c - a):Dot((b - a).unit)
	local len2 = (b - a).magnitude - len1
	local width = (a + (b - a).unit * len1 - c).magnitude
 
	local maincf = CFrameFromTopBack(a, (b - a):Cross(c - b).unit, -(b - a).unit)
 
	local list = {}

	local Color = BrickColor.new("Dark stone grey")
 
	if len1 > 0.01 then
		local w1 = Create('WedgePart', m){
			Material = "SmoothPlastic",
			FormFactor = 'Custom',
			BrickColor = Color,
			Transparency = 0,
			Reflectance = 0,
			Material = "SmoothPlastic",
			CanCollide = false,
			Anchored = true,
			Parent = workspace,
			Transparency = 0.3,
		}
		game:GetService("Debris"):AddItem(w1, 5)
		NoOutline(w1)
		local sz = Vector3.new(0.2, width, len1)
		w1.Size = sz
		local sp = Create("SpecialMesh"){
			Parent = w1,
			MeshType = "Wedge",
			Scale = Vector3.new(0, 1, 1) * sz / w1.Size,
		}
		w1:BreakJoints()
		table.insert(Effects, {
			w1,
			"Disappear",
			.03
		})
		w1.CFrame = maincf * CFrame.Angles(math.pi, 0, math.pi / 2) * CFrame.new(0, width / 2, len1 / 2)
		table.insert(list, w1)
	end
	if len2 > 0.01 then
		local w2 = Create('WedgePart', m){
			Material = "SmoothPlastic",
			FormFactor = 'Custom',
			BrickColor = Color,
			Transparency = 0,
			Reflectance = 0,
			Material = "SmoothPlastic",
			CanCollide = false,
			Anchored = true,
			Parent = workspace,
			Transparency = 0.3,
		}
		game:GetService("Debris"):AddItem(w2, 5)
		NoOutline(w2)
		local sz = Vector3.new(0.2, width, len2)
		w2.Size = sz
		local sp = Create("SpecialMesh"){
			Parent = w2,
			MeshType = "Wedge",
			Scale = Vector3.new(0, 1, 1) * sz / w2.Size,
		}
		w2:BreakJoints()
		table.insert(Effects, {
			w2,
			"Disappear",
			.03
		})
		w2.CFrame = maincf * CFrame.Angles(math.pi, math.pi, -math.pi / 2) * CFrame.new(0, width / 2, -len1 - len2 / 2)
		table.insert(list, w2)
	end
	return unpack(list)
end
	
function so(id, par, vol, pit) 
	coroutine.resume(coroutine.create(function()
		local sou = Instance.new("Sound", par or workspace)
		sou.Volume = vol
		sou.Pitch = pit or 1
		sou.SoundId = id
		swait() 
		sou:play() 
		swait(6) 
		sou:Remove() 
	end))
end
 
function clerp(a, b, t)

	local function QuaternionFromCFrame(cf)
		local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components()
		local trace = m00 + m11 + m22
		if trace > 0 then
			local s = math.sqrt(1 + trace)
			local recip = 0.5 / s
			return (m21 - m12) * recip, (m02 - m20) * recip, (m10 - m01) * recip, s * 0.5
		else
			local i = 0
			if m11 > m00 then
				i = 1
			end
			if m22 > (i == 0 and m00 or m11) then
				i = 2
			end
			if i == 0 then
				local s = math.sqrt(m00 - m11 - m22 + 1)
				local recip = 0.5 / s
				return 0.5 * s, (m10 + m01) * recip, (m20 + m02) * recip, (m21 - m12) * recip
			elseif i == 1 then
				local s = math.sqrt(m11 - m22 - m00 + 1)
				local recip = 0.5 / s
				return (m01 + m10) * recip, 0.5 * s, (m21 + m12) * recip, (m02 - m20) * recip
			elseif i == 2 then
				local s = math.sqrt(m22 - m00 - m11 + 1)
				local recip = 0.5 / s
				return (m02 + m20) * recip, (m12 + m21) * recip, 0.5 * s, (m10 - m01) * recip
			end
		end
	end
         
	local function QuaternionToCFrame(px, py, pz, x, y, z, w)
		local xs, ys, zs = x + x, y + y, z + z
		local wx, wy, wz = w * xs, w * ys, w * zs
		local xx = x * xs
		local xy = x * ys
		local xz = x * zs
		local yy = y * ys
		local yz = y * zs
		local zz = z * zs
		return CFrame.new(px, py, pz, 1 - (yy + zz), xy - wz, xz + wy, xy + wz, 1 - (xx + zz), yz - wx, xz - wy, yz + wx, 1 - (xx + yy))
	end
         
	local function QuaternionSlerp(a, b, t)
		local cosTheta = a[1] * b[1] + a[2] * b[2] + a[3] * b[3] + a[4] * b[4]
		local startInterp, finishInterp;
		if cosTheta >= 0.0001 then
			if (1 - cosTheta) > 0.0001 then
				local theta = math.acos(cosTheta)
				local invSinTheta = 1 / math.sin(theta)
				startInterp = math.sin((1 - t) * theta) * invSinTheta
				finishInterp = math.sin(t * theta) * invSinTheta
			else
				startInterp = 1 - t
				finishInterp = t
			end
		else
			if (1 + cosTheta) > 0.0001 then
				local theta = math.acos(-cosTheta)
				local invSinTheta = 1 / math.sin(theta)
				startInterp = math.sin((t - 1) * theta) * invSinTheta
				finishInterp = math.sin(t * theta) * invSinTheta
			else
				startInterp = t - 1
				finishInterp = t
			end
		end
		return a[1] * startInterp + b[1] * finishInterp, a[2] * startInterp + b[2] * finishInterp, a[3] * startInterp + b[3] * finishInterp, a[4] * startInterp + b[4] * finishInterp
	end

	local qa = {
		QuaternionFromCFrame(a)
	}
	local qb = {
		QuaternionFromCFrame(b)
	}
	local ax, ay, az = a.x, a.y, a.z
	local bx, by, bz = b.x, b.y, b.z

	local _t = 1 - t
	return QuaternionToCFrame(_t * ax + t * bx, _t * ay + t * by, _t * az + t * bz, QuaternionSlerp(qa, qb, t))
end

function rayCast(Pos, Dir, Max, Ignore)
	return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 

Damagefunc = function(Part, hit, minim, maxim, knockback, Type, Property, Delay, HitSound, HitPitch)
	if hit.Parent == nil then
		return
	end
	local h = hit.Parent:FindFirstChild("Humanoid")
	for _, v in pairs(hit.Parent:children()) do
		if v:IsA("Humanoid") then
			h = v
		end
	end
	if h ~= nil and hit.Parent.Name ~= Character.Name and hit.Parent:FindFirstChild("Torso") ~= nil then
		if hit.Parent:findFirstChild("DebounceHit") ~= nil then
			if hit.Parent.DebounceHit.Value == true then
				return
			end
		end
		if h.MaxHealth >= math.huge then
			hit:BreakJoints()
		end
		local c = Create("ObjectValue"){
			Name = "creator",
			Value = game:service("Players").LocalPlayer,
			Parent = h,
		}
		game:GetService("Debris"):AddItem(c, .5)
		if HitSound ~= nil and HitPitch ~= nil then
			so(HitSound, hit, 1, HitPitch) 
		end
		local Damage = math.random(minim, maxim)
		local blocked = false
		local block = hit.Parent:findFirstChild("Block")
		if block ~= nil then
			if block.className == "IntValue" then
				if block.Value > 0 then
					blocked = true
					block.Value = block.Value - 1
					print(block.Value)
				end
			end
		end
		if blocked == false then
			h.Health = h.Health - Damage
			ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, Part.BrickColor.Color, Handle.BrickColor.Color)
		else
			h.Health = h.Health - (Damage / 2)
			ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, Part.BrickColor.Color, Handle.BrickColor.Color)
		end
		if Type == "Knockdown" then
			local hum = hit.Parent.Humanoid
			hum.PlatformStand = true
			coroutine.resume(coroutine.create(function(HHumanoid)
				swait(1)
				HHumanoid.PlatformStand = false
			end), hum)
			local angle = (hit.Position - (Property.Position + Vector3.new(0, 0, 0))).unit
			local bodvol = Create("BodyVelocity"){
				velocity = angle * knockback,
				P = 5000,
				maxForce = Vector3.new(8e+003, 8e+003, 8e+003),
				Parent = hit,
			}
			local rl = Create("BodyAngularVelocity"){
				P = 3000,
				maxTorque = Vector3.new(500000, 500000, 500000) * 50000000000000,
				angularvelocity = Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10)),
				Parent = hit,
			}
			game:GetService("Debris"):AddItem(bodvol, .5)
			game:GetService("Debris"):AddItem(rl, .5)
		elseif Type == "Normal" then
			local vp = Create("BodyVelocity"){
				P = 500,
				maxForce = Vector3.new(math.huge, 0, math.huge),
				velocity = Property.CFrame.lookVector * knockback + Property.Velocity / 1.05,
			}
			if knockback > 0 then
				vp.Parent = hit.Parent.Torso
			end
			game:GetService("Debris"):AddItem(vp, .5)
		elseif Type == "Up" then
			local bodyVelocity = Create("BodyVelocity"){
				velocity = vt(0, 20, 0),
				P = 5000,
				maxForce = Vector3.new(8e+003, 8e+003, 8e+003),
				Parent = hit,
			}
			game:GetService("Debris"):AddItem(bodyVelocity, .5)
		elseif Type == "Snare" then
			local bp = Create("BodyPosition"){
				P = 2000,
				D = 100,
				maxForce = Vector3.new(math.huge, math.huge, math.huge),
				position = hit.Parent.Torso.Position,
				Parent = hit.Parent.Torso,
			}
			game:GetService("Debris"):AddItem(bp, 1)
		elseif Type == "Freeze" then
			local BodPos = Create("BodyPosition"){
				P = 50000,
				D = 1000,
				maxForce = Vector3.new(math.huge, math.huge, math.huge),
				position = hit.Parent.Torso.Position,
				Parent = hit.Parent.Torso,
			}
			local BodGy = Create("BodyGyro") {
				maxTorque = Vector3.new(4e+005, 4e+005, 4e+005) * math.huge ,
				P = 20e+003,
				Parent = hit.Parent.Torso,
				cframe = hit.Parent.Torso.CFrame,
			}
			hit.Parent.Torso.Anchored = true
			coroutine.resume(coroutine.create(function(Part) 
				swait(1.5)
				Part.Anchored = false
			end), hit.Parent.Torso)
			game:GetService("Debris"):AddItem(BodPos, 3)
			game:GetService("Debris"):AddItem(BodGy, 3)
		end
		local debounce = Create("BoolValue"){
			Name = "DebounceHit",
			Parent = hit.Parent,
			Value = true,
		}
		game:GetService("Debris"):AddItem(debounce, Delay)
		c = Instance.new("ObjectValue")
		c.Name = "creator"
		c.Value = Player
		c.Parent = h
		game:GetService("Debris"):AddItem(c, .5)
	end
end

function ShowDamage(Pos, Text, Time, Color, Color2)
	local Rate = (1 / 30)
	local Pos = (Pos or Vector3.new(0, 0, 0))
	local Text = (Text or "")
	local Time = (Time or 2)
	local Color = (Color or Color3.new(1, 0, 0))
	local EffectPart = part("Custom", workspace, "SmoothPlastic", 0, 1, BrickColor.new(Color), "Effect", vt(0, 0, 0))
	EffectPart.Anchored = true
	local BillboardGui = Create("BillboardGui"){
		Size = UDim2.new(3, 0, 3, 0),
		Adornee = EffectPart,
		Parent = EffectPart,
	}
	local TextLabel = Create("TextLabel"){
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 1, 0),
		Text = Text,
		TextColor3 = Color,
		TextScaled = true,
		Font = Enum.Font.ArialBold,
		FontSize = Enum.FontSize.Size10,
		TextStrokeColor3 = Color2,
		TextStrokeTransparency = 0.8,
		Parent = BillboardGui,
	}
	game.Debris:AddItem(EffectPart, (Time + 0.1))
	EffectPart.Parent = game:GetService("Workspace")
	delay(0, function()
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

Handle=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Handle",Vector3.new(0.280000031, 0.699999988, 0.280000001))
Handleweld=weld(m,Character["Right Arm"],Handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0860519409, -0.159469604, 1.00696373, 1, -1.72803976e-011, 1.90765604e-006, 1.90764786e-006, 4.44081707e-006, -1, 9.09494702e-012, 0.999999881, 4.44081707e-006))
FakeHandle=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","FakeHandle",Vector3.new(0.280000031, 0.699999988, 0.280000001))
FakeHandleweld=weld(m,Handle,FakeHandle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-006, 0.0707168579, 0.0574593544, 1, -8.18545232e-012, 2.86099269e-013, -8.18545232e-012, 1, 4.54747351e-013, 2.86099269e-013, 4.54747351e-013, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000375747681, -1.18781972, 0.839702606, -1, -1.02313925e-006, -2.56240446e-006, 2.56240173e-006, 1.79690323e-006, -1, 1.02317256e-006, -1, -1.79690414e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.699999988, 0.699999988, 0.699999988))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"New Yeller","Part",Vector3.new(0.200000003, 0.420000017, 0.200000003))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.889633477, -0.979663849, 0.0548973083, -0.258811921, -5.54403186e-006, -0.96592772, -3.15453076e-006, 1, -4.89435752e-006, 0.96592778, 1.78029984e-006, -0.258811951))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=111896510",Vector3.new(0, 0, 0),Vector3.new(0.349999994, 0.349999994, 0.349999994))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"New Yeller","Part",Vector3.new(0.200000003, 0.200000003, 0.280000001))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.279872894, 0.209986687, -1.33514404e-005, -3.935309e-006, 1, -2.90573007e-006, 1.08481819e-008, 2.90573598e-006, 1, 1, 3.93527625e-006, -1.08583693e-008))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.519399941, 0.557200074, 1.74439991))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"New Yeller","Part",Vector3.new(0.200000003, 0.420000017, 0.200000003))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.889616966, -0.979663849, -0.0549716949, 0.258811742, -5.84206009e-006, -0.96592778, -1.50227504e-006, 1, -6.45063938e-006, 0.965927839, 3.12056136e-006, 0.258811772))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=111896510",Vector3.new(0, 0, 0),Vector3.new(0.349999994, 0.349999994, 0.349999994))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.420000046, 0.280000061, 0.560000002))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.419868469, 7.62939453e-006, 2.7179718e-005, 3.83001225e-006, -1, 2.54809993e-006, 1, 3.82997496e-006, 3.03872399e-010, -3.12454534e-010, 2.54810584e-006, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.280000031, 0.700000048, 0.280000001))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.14440918e-005, 0.552843094, 0.296955109, 1, -2.22826202e-011, 1.80189787e-011, -7.95807864e-013, 0.707115233, -0.707098365, -1.73940862e-011, 0.707098365, 0.707115233))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"New Yeller","Part",Vector3.new(0.420000046, 0.28700006, 0.280000031))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.41986084, 0.00234603882, 2.14576721e-005, 3.74060505e-006, -1, 2.30967612e-006, 1, 3.74057413e-006, -7.42010826e-008, 7.41938067e-008, 2.30968203e-006, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"New Yeller","Part",Vector3.new(0.287, 0.560000062, 0.200000003))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00273132324, 0.622810364, 0.296985626, 1, -2.22826202e-011, 1.80189787e-011, -7.95807864e-013, 0.707115233, -0.707098365, -1.73940862e-011, 0.707098365, 0.707115233))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.699999988))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.420000046, 0.280000061, 0.420000017))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.839817047, -1.90734863e-005, -0.489821672, 3.8300077e-006, -1, 2.53319945e-006, 1, 3.82997496e-006, 3.04327147e-010, -3.12426113e-010, 2.53320582e-006, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"New Yeller","Part",Vector3.new(0.420000046, 0.28700006, 0.280000031))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.839794159, 0.00254631042, -0.49509263, 3.8300077e-006, -1, 2.53319945e-006, 1, 3.82997496e-006, 3.04327147e-010, -3.12426113e-010, 2.53320582e-006, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.280000031, 0.420000046, 0.980000079))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.90734863e-006, -0.559818268, 0.0699512959, 1, -2.04636308e-011, 7.38572398e-013, -1.63709046e-011, 1, 2.6823227e-007, 7.82044568e-013, -2.68225904e-007, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.280000001))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.279872894, 0.209986687, -1.33514404e-005, -3.935309e-006, 1, -2.90573007e-006, 1.08481819e-008, 2.90573598e-006, 1, 1, 3.93527625e-006, -1.08583693e-008))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.491399914, 0.557200074, 1.74439991))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.280000031, 0.200000003, 0.560000062))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.0980835e-005, -0.419818878, 0.839810848, 1, -2.13731255e-011, -1.65118821e-011, -1.54614099e-011, 1, 2.62222466e-006, 1.80325338e-011, -2.62221829e-006, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.699999988, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"New Yeller","Part",Vector3.new(0.420000017, 0.420000017, 0.560000002))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.559810638, -0.769824028, -3.43322754e-005, 1.45437184e-007, -1, -1.29630371e-006, -2.08639904e-007, 1.29629734e-006, -1, 1, 1.45400691e-007, -2.08638184e-007))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.280000061, 0.280000061, 0.280000031))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.209846497, -3.81469727e-006, 0.559957266, 1.49184416e-008, -1, -6.10877123e-007, 1, 1.48816071e-008, 2.96593194e-010, -2.95063474e-010, -6.10870757e-007, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"New Yeller","Part",Vector3.new(0.287, 0.840000033, 0.200000003))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00215530396, -0.0698623657, 0.000190734863, 1, -2.22826202e-011, 1.80189787e-011, -1.43245416e-011, 1, 2.69661223e-006, -1.68107646e-011, -2.69660586e-006, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.699999988))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"New Yeller","Part",Vector3.new(0.287, 0.200000003, 0.560000002))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0021572113, -0.559833527, -0.0698022842, 1, -5.50244295e-011, 1.91965506e-011, -4.70663508e-011, 1, 2.69661314e-006, -1.56331059e-011, -2.69659495e-006, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.699999988, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"New Yeller","Part",Vector3.new(0.287, 0.427000016, 0.200000003))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000122070313, -0.560840607, 0.27643466, 1, -2.22826202e-011, 1.80189787e-011, -1.43245416e-011, 1, 8.19589786e-007, -1.68107889e-011, -8.1958342e-007, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.699999988))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.420000017, 0.420000017, 0.280000031))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.55978775, -2.44724131, -0.000165939331, 1.45490276e-007, -1, -2.49798723e-005, -2.08999595e-007, 2.49798668e-005, -1, 1, 1.45458671e-007, -2.08994436e-007))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.420000017, 0.280000001, 0.560000062))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.559822083, 0, -0.419999123, 5.95878191e-008, 1, 1.94764652e-007, -1, 5.9624881e-008, 3.44258311e-008, 3.44273339e-008, -1.94758286e-007, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.280000031, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.279838562, 0.21000886, 1, 4.46839294e-008, 1.44186561e-006, 4.47196271e-008, -1, 7.78919912e-007, 1.44186413e-006, -7.78926278e-007, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.699999988, 0.699999988))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"New Yeller","Part",Vector3.new(0.420000017, 0.560000002, 0.420000017))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.559791565, -0.55984664, 3.81469727e-005, 1.4543707e-007, -1, -5.08004541e-006, -2.08696321e-007, 5.08003723e-006, -1, 1, 1.45401373e-007, -2.08694047e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.280000031, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(5.91278076e-005, 0.279800415, 1.04951167, -1, -2.53198436e-007, 1.49545034e-008, 2.53235044e-007, -1, -7.584179e-006, 1.49579638e-008, -7.58417036e-006, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.699999988, 0.699999988))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.420000017, 0.560000062, 0.200000003))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.559768677, -2.37841272, -0.000438690186, 1.45475724e-007, -1, -2.01288749e-005, -2.08974669e-007, 2.01288676e-005, -1, 1, 1.45443096e-007, -2.08970206e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.699999988))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"New Yeller","Part",Vector3.new(0.420000017, 0.280000001, 0.420000017))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.55979538, -0.979748011, 7.62939453e-006, 1.45442073e-007, -1, -6.30070645e-006, -2.08722611e-007, 6.30070008e-006, -1, 1, 1.45406489e-007, -2.08720166e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.280000031, 0.200000003, 0.560000002))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.90734863e-006, -0.27980423, 0.699883938, 1, -2.04636308e-011, 1.10889423e-012, -1.63709046e-011, 1, 2.11572933e-006, 4.11753964e-013, -2.11572296e-006, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.699999988, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.280000031, 0.200000003, 0.560000062))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.24249268e-005, -0.699771881, 0.839804649, 1, -2.13731255e-011, -1.66693187e-011, -1.54614099e-011, 1, 4.23093024e-006, 1.81899929e-011, -4.23092433e-006, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.699999988, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.280000031, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.76837158e-005, -0.559803009, 1.0495255, 1, -1.56887836e-011, 3.45319641e-011, -2.09183781e-011, 1, 5.48155458e-006, -3.30136751e-011, -5.48154867e-006, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.699999988, 0.699999988))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000427246094, -2.58794498, 0.839736938, -1, -1.49499328e-008, -2.52553122e-007, 2.52551388e-007, 1.52605935e-005, -1, 1.49906327e-008, -1, -1.52605971e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.699999988, 0.699999988, 0.699999988))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.83972168, -2.44782782, -0.000438690186, 1.45468562e-007, -1, -2.04852658e-005, -2.09350546e-007, 2.04852604e-005, -1, 1, 1.45436047e-007, -2.09346027e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.699999988, 0.699999988, 0.699999988))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000421524048, 2.30780578, 0.83972168, 1, 5.67174197e-007, 2.54727388e-006, -2.54726456e-006, -1.37063362e-005, 1, 5.67245934e-007, -1, -1.37063407e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.699999988, 0.699999988, 0.699999988))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00043296814, 2.30763364, -0.27973938, -1, 1.49386779e-008, 2.53097255e-007, 2.53098563e-007, -1.32949481e-005, 1, 1.49050265e-008, 1, 1.32949544e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.699999988, 0.699999988, 0.699999988))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.279750824, 2.44781303, -0.000444412231, 1.45382273e-007, 1, 2.08481797e-005, -2.08853876e-007, -2.08481761e-005, 1, 1, -1.45423428e-007, 2.08852413e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.699999988, 0.699999988, 0.699999988))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00043296814, -2.58781743, -0.279773712, 1, -5.67145435e-007, -2.54751899e-006, -2.54751376e-006, 1.19385704e-005, -1, 5.67138841e-007, 1, 1.19385777e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.699999988, 0.699999988, 0.699999988))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"New Yeller","Part",Vector3.new(0.231000006, 0.200000003, 0.280000031))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.560119629, -2.59035707, -0.000175476074, 3.96057294e-006, -1, -2.42740825e-005, -2.09122135e-007, 2.42740789e-005, -1, 1, 3.96054475e-006, -2.09025103e-007))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.699999988, 1))
Barrel=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Barrel",Vector3.new(0.200000003, 0.200000003, 0.280000031))
Barrelweld=weld(m,FakeHandle,Barrel,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.562404633, -2.59142828, -0.000175476074, 3.96057203e-006, -1, -2.4095265e-005, -2.09117701e-007, 2.40952577e-005, -1, 1, 3.96054384e-006, -2.09021465e-007))
mesh("CylinderMesh",Barrel,"","",Vector3.new(0, 0, 0),Vector3.new(0.945000052, 0.699999988, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"New Yeller","Part",Vector3.new(0.420000017, 0.200000003, 0.280000031))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.559753418, -1.60731864, -0.000179290771, 1.45490958e-007, -1, -2.51584643e-005, -2.09002877e-007, 2.51584588e-005, -1, 1, 1.45459353e-007, -2.0899769e-007))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.699999988, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"New Yeller","Part",Vector3.new(0.420000017, 0.200000003, 0.280000031))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.559776306, -2.16727662, -0.000164031982, 1.45485501e-007, -1, -2.33735591e-005, -2.08965247e-007, 2.33735518e-005, -1, 1, 1.45453555e-007, -2.08960316e-007))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.699999988, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.420000017, 0.420000046, 0.280000031))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.559776306, -1.88730073, -0.000165939331, 1.45485956e-007, -1, -2.35518892e-005, -2.08967805e-007, 2.35518837e-005, -1, 1, 1.4545401e-007, -2.08962845e-007))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.420000017, 0.280000061, 0.280000031))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.559753418, -1.39711809, -0.000173568726, 1.45514491e-007, -1, -2.24795003e-005, -2.08946716e-007, 2.24794821e-005, -1, 1, 1.45416834e-007, -2.08939554e-007))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"New Yeller","Part",Vector3.new(0.420000017, 0.420000046, 0.200000003))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.559764862, -1.88847375, -0.000436782837, 1.45466288e-007, -1, -1.8521725e-005, -2.08988865e-007, 1.85217195e-005, -1, 1, 1.45433319e-007, -2.08984645e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.699999988))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.420000017, 0.560000062, 0.200000003))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.559757233, -1.39839482, -0.000442504883, 1.45464355e-007, -1, -1.69149826e-005, -2.08905689e-007, 1.69149753e-005, -1, 1, 1.45431045e-007, -2.08901696e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.699999988))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"New Yeller","Part",Vector3.new(0.420000046, 0.287, 0.420000017))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.559772491, 0.00134277344, -0.0700860023, -7.44953468e-008, -1, -4.73725959e-006, 1, -7.45317266e-008, -7.42083941e-008, 7.42095523e-008, -4.73725368e-006, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"New Yeller","Part",Vector3.new(0.420000046, 0.287, 0.280000031))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.559783936, 0.00134277344, -0.420075655, -7.44639692e-008, -1, -5.6308827e-006, 1, -7.45658326e-008, -7.42004715e-008, 7.42039248e-008, -5.63086405e-006, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.420000017, 0.280000001, 0.560000062))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.5598526, 1.52587891e-005, 1.11974049, 5.9590775e-008, 1, 2.51883012e-006, -1, 5.96276095e-008, 3.44174609e-008, 3.441885e-008, -2.51882193e-006, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"New Yeller","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00018119812, -0.844371796, 0.276464224, 1, -2.20552465e-011, 1.82033399e-011, -1.47792889e-011, 1, 1.78784603e-006, -1.66827021e-011, -1.78783966e-006, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.735000134, 0.699999988, 0.699999988))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.280000001, 0.200000003, 0.280000091))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.769760132, 0.000406265259, -0.279969931, 5.95582605e-008, 1, 2.26564134e-006, -1, 5.96603513e-008, 3.44175426e-008, 3.44209745e-008, -2.26562315e-006, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.699999988, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.700000048, 0.200000003))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.839698792, -0.0692727566, -0.000392913818, 1.45439344e-007, -1, -9.2651635e-006, -2.0875224e-007, 9.26515713e-006, -1, 1, 1.45404442e-007, -2.0874937e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.699999988, 1, 0.699999988))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.699999988, 0.200000003))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.839668274, -0.768940926, -0.000394821167, 1.45451168e-007, -1, -1.17661502e-005, -2.08743202e-007, 1.17661421e-005, -1, 1, 1.45416834e-007, -2.08739948e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.699999988, 1, 0.699999988))

Handleweld.Part0 = LeftLeg 
Handleweld.C0 = angles(-2, 0, 0) * cf(-.5, 1.3, 1) 

local PE1 = Create("ParticleEmitter"){
Parent = Barrel,
Color = ColorSequence.new(BrickColor.new("New Yeller").Color),
Transparency = NumberSequence.new(0),
Size = NumberSequence.new(.5),
Texture = "rbxassetid://257430870",
Lifetime = NumberRange.new(.1),
Rate = 100,
VelocitySpread = 180,
Rotation = NumberRange.new(0),
Speed = NumberRange.new(0),
LightEmission = .6,
LockedToPart = true,
Enabled = false
}

local PE2 = PE1:Clone()
PE2.Size = NumberSequence.new(.7)
PE2.LightEmission = 1
PE2.Texture = "rbxassetid://87729590"

local Lite = Create("PointLight"){
	Parent = Barrel,
	Color = BrickColor.new("New Yeller").Color,
	Shadows = true,
	Range = 10,
	Brightness = 0.5,
	Enabled = false
}

function Equip()
	attack = true
	equipped = true
	RSH.Parent = nil 
	LSH.Parent = nil 

	RHP.Parent = nil 
	LHP.Parent = nil 

	RW = Create("Weld"){
		Name = "Right Shoulder",
		Part0 = Torso ,
		C0 = cf(1.5, 0.5, 0),
		C1 = cf(0, 0.5, 0), 
		Part1 = RightArm ,
		Parent = Torso ,
	}

	LW = Create("Weld"){
		Name = "Left Shoulder",
		Part0 = Torso ,
		C0 = cf(-1.5, 0.5, 0),
		C1 = cf(0, 0.5, 0) ,
		Part1 = LeftArm ,
		Parent = Torso ,
	}

	RH = Create("Weld"){
		Part0 = Torso, 
		C0 = cf(0, -1.5, 0), --* euler(1.3, 0, -0.5) 
		C1 = cf(-0.5, 0.5, 0) ,
		Part1 = Character["Right Leg"], 
		Parent = Torso,
	}

	LH = Create("Weld"){
		Part0 = Torso, 
		C0 = cf(0, -1.5, 0), --* euler(1.3, 0, -0.5) 
		C1 = cf(0.5, 0.5, 0) ,
		Part1 = Character["Left Leg"], 
		Parent = Torso,
	}

	for i = 0, 1, 0.1 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(30), math.rad(0), math.rad(30)), .3)
		RW.C0 = clerp(RW.C0, CFrame.new(0, 0.2, -.5) * angles(math.rad(20), math.rad(0), math.rad(-50)), 0.3)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-5), math.rad(0), math.rad(-10)), 0.3)
		RH.C0 = clerp(RH.C0, cf(0.03, -1.5, 0) * angles(math.rad(0), math.rad(0), math.rad(2)), .3)
		LH.C0 = clerp(LH.C0, cf(-0.03, -1.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-2)), .3)
	end
	Handleweld.Part0 = RightArm
	Handleweld.C0 = euler(0, 0, 0) * cf(0, 0, 0) 
	attack = false
end

function Unequip()
	equipped = false
	attack = true
	for i = 0, 1, 0.1 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(30), math.rad(0), math.rad(30)), .3)
		RW.C0 = clerp(RW.C0, CFrame.new(.5, 0.2, -.7) * angles(math.rad(20), math.rad(0), math.rad(-50)), 0.3)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-30)), 0.3)
		RH.C0 = clerp(RH.C0, cf(0.05, -1.5, 0) * angles(math.rad(0), math.rad(0), math.rad(5)), .3)
		LH.C0 = clerp(LH.C0, cf(-0.05, -1.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-5)), .3)
		FakeHandleweld.C0 = clerp(FakeHandleweld.C0, cf(0, 0, 0) *euler(6*i,0,0), .5)
	end
	FakeHandleweld.C0 = angles(0, 0, 0) * cf(0, 0, 0)
	Handleweld.Part0 = LeftLeg 
	Handleweld.C0 = angles(-2, 0, 0) * cf(-.5, 1.3, 1) 
	RW.Parent = nil 
	LW.Parent = nil 
	RH.Parent = nil 
	LH.Parent = nil 
	RSH.Parent = Torso
	LSH.Parent = Torso
	RHP.Parent = Torso
	LHP.Parent = Torso
	Torso.Neck.C0 = necko
	RootJoint.C0 = RootCF
	RW.C0 = cf(1.5, 0.5, 0) * euler(0, 0, 0)
	RW.C1 = cf(0, 0.5, 0) * euler(0, 0, 0)
	LW.C0 = cf(-1.5, 0.5, 0) * euler(0, 0, 0)
	LW.C1 = cf(0, 0.5, 0) * euler(0, 0, 0)
	attack = false
end

function CylinderEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = part(3, Character, "Neon", 0, 0, brickcolor, "Effect", vt(0.2, 0.2, 0.2))
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = mesh("CylinderMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 5)
	Effects[#Effects + 1] = {
		prt,
		"Cylinder",
		delay,
		x3,
		y3,
		z3
	} --part, type, delay
end

function MagnitudeDamage(Hit, Part, magni, mindam, maxdam, knock, Type)
	for _, c in pairs(workspace:children()) do
		local hum = c:findFirstChild("Humanoid")
		if hum ~= nil then
			local head = c:findFirstChild("Torso")
			if head ~= nil then
				local targ = head.Position - Part.Position
				local mag = targ.magnitude
				if mag <= magni and c.Name ~= Player.Name then 
					Damagefunc(Hit, head, mindam, maxdam, knock, Type, RootPart, 0, "rbxassetid://199149186", 1)
				end
			end
		end
	end
end

RailgunTarget = RootPart
function Laser(asd)
local MouseLook=cf((asd.Position+mouse.Hit.p)/2,mouse.Hit.p)
local hit,pos = rayCast(asd.Position,MouseLook.lookVector,999,RailgunTarget.Parent)
local mag=(asd.Position-pos).magnitude 
CylinderEffect(BrickColor.new("New Yeller"),CFrame.new((asd.Position+pos)/2,pos)*angles(1.57,0,0),1,mag*5,1,1.2,0,1.2,0.1)
CylinderEffect(BrickColor.new("Institutional white"),CFrame.new((asd.Position+pos)/2,pos)*angles(1.57,0,0),1,mag*5,.5,1,0,.5,0.1)
if hit~=nil then
local ref=part(3,workspace,"SmoothPlastic",0,1,BrickColor.new("New Yeller"),"Reference",vt())
ref.Anchored=true
ref.CFrame=cf(pos)
game:GetService("Debris"):AddItem(ref,1)
Damagefunc(ref,hit,20,90,0,"Normal",RootPart,0)
end
end

RocketTarget = RootPart
function Shoot(asd, spread1, spread2)
	local MainPos = asd.Position
	local MainPos2 = mouse.Hit.p
	local spread = vt((math.random(-spread1, 0) + math.random()) * spread2, (math.random(-spread1, 0) + math.random()) * spread2, (math.random(-spread1, 0) + math.random()) * spread2) * (asd.Position - mouse.Hit.p).magnitude / 100
	local MouseLook = cf((MainPos + MainPos2) / 2, MainPos2 + spread)
	num = 30
	coroutine.resume(coroutine.create(function(Spreaded) 
		repeat
			wait()
			local hit, pos = rayCast(MainPos, MouseLook.lookVector, 10, RocketTarget.Parent)
			local TheHit = mouse.Hit.p
			local mag = (MainPos - pos).magnitude 
			CylinderEffect(BrickColor.new("New Yeller"), CFrame.new((MainPos + pos) / 2, pos) * angles(1.57, 0, 0), 3, mag * 5, 3, .5, 0, 1.5, 0.1)
			MainPos = MainPos + (MouseLook.lookVector * 10)
			num = num - 1
			if hit ~= nil then
				num = 0
				local ref = part(3, workspace, "Neon", 0, 1, BrickColor.new("New Yeller"), "Reference", vt())
				ref.Anchored = true
				ref.CFrame = cf(pos)
				MagnitudeDamage(ref, hit, 5, 10, 20, 1, "Normal")
				game:GetService("Debris"):AddItem(ref, 5) 
			end
		until num <= 0
	end))
end

function ChargeEffect(part, x1, y1, z1, x2, y2, z2, x3, y3, z3, color) 
	local S = Create("Part"){
	Material = "SmoothPlastic",
	Name = "Effect",
	formFactor = 0,
	Size = vt(x1, y1, z1),
	BrickColor = color,
	Reflectance = 0,
	TopSurface = 0,
	BottomSurface = 0,
	Transparency = 0,
	Anchored = false,
	CanCollide = false,
	Material = "Neon",
	CFrame = part.CFrame * cf(x2, y2, z2) * euler(x3, y3, z3),
	Parent = m,
	}
	local msh1 = Create("SpecialMesh"){
	Scale = vt(0.5, 0.5, 0.5) ,
	MeshType = "Sphere", 
	Parent = S,
	}
	coroutine.resume(coroutine.create(function(Part, CF) 
		local f = Instance.new("BodyPosition")
		f.P = 800
		f.D = 100
		f.maxForce = vt(math.huge, math.huge, math.huge)
		f.position = part.Position
		f.Parent = Part
		for i = 0, 1, 0.1 do
			wait()
			Part.Transparency = Part.Transparency + 0.1
		end
		Part.Parent = nil
	end), S, S.CFrame)
end 

local lasrs = {} 
local lasrspd = 3 
local maxTravelDistance = 500 
local maxRebounds = 20 

function RAY(pos, dir, collidedlist, startpos, endpos, distleft) 
	collidedlist = collidedlist or {Character} 
	startpos = startpos or pos 
	distleft = distleft or dir.unit * dir.magnitude 
	endpos = endpos or pos + distleft 
	local ray = Ray.new(pos, distleft) 
	local hitz,enz = workspace:FindPartOnRayWithIgnoreList(ray, collidedlist) 
	if hitz ~= nil and not hitz.Parent:findFirstChild("Humanoid") then 
		if hitz.CanCollide == false then 
			table.insert(collidedlist, hitz) 
			local newpos = enz 
			local newdistleft = distleft - (dir.unit * (pos - newpos).magnitude) 
			if newdistleft then 
				return RAY(newpos-(dir*0.01), dir, collidedlist, startpos, endpos, newdistleft+(dir*0.01)) 
			end 
		end 
	end 
	return hitz, enz, ray 
end 

function FindSurface(part, position) 
	local obj = part.CFrame:pointToObjectSpace(position) 
	local siz = part.Size/2 
	so("rbxassetid://199144144", workspace, 1, .9)
	for i,v in pairs(Enum.NormalId:GetEnumItems()) do 
		local vec = Vector3.FromNormalId(v) 
		local wvec = part.CFrame:vectorToWorldSpace(vec) 
		local vz = (obj)/(siz*vec) 
		if (math.abs(vz.X-1) < 0.001 or math.abs(vz.Y-1) < 0.001 or math.abs(vz.Z-1) < 0.001) then
			return wvec,vec 
		end 
	end 
	if part.className == "WedgePart" then 
		local pos = (part.CFrame * CFrame.new(0,part.Size.y/2,part.Size.z/2)).p 
		local apos = (part.CFrame * CFrame.Angles(-math.atan2(part.CFrame:pointToObjectSpace(pos).y,part.CFrame:pointToObjectSpace(pos).z),0,0) * CFrame.new(0,1,0)).p 
		local wvec,vec = (apos - part.Position).unit, part.CFrame:pointToObjectSpace(apos) 
		return wvec,vec 
	elseif part.className == "Part" and (part.Shape.Name == "Ball" or part.Shape.Name == "Cylinder") then 
		return (position - part.Position).unit, part.CFrame:vectorToObjectSpace((position - part.Position).unit) 
	end 
end 

function Reflect(direction, normal) 
	return direction - 2 * normal:Dot(direction) * normal 
end 

function ReflectShot(mouse) 
	local dir = (mouse.Hit.p - Torso.Position).unit 
	local tabl 
	local tablnum = 0 
	for i, v in pairs(lasrs) do 
		if not v[1] then 
			tabl = v 
			tablnum = i 
			break 
		end 
	end 
	if not tabl then 
		tablnum = #lasrs + 1 
		tabl = {false,nil,nil,0,0,1,{},{},{},{}} 
		for i = 1, 2 do 
			for j = 1, 6 do 
				local p = Instance.new("Part") 
				p.FormFactor = "Custom" 
				p.CanCollide = false 
				p.Anchored = true 
				p.Locked = true 
				p.BrickColor = BrickColor.new("New Yeller") 
				p.TopSurface = 10 
				p.BottomSurface = 10 
				p.RightSurface = 10 
				p.LeftSurface = 10 
				p.FrontSurface = 10 
				p.BackSurface = 10 
				p.Size = Vector3.new(1,1,1) 
				p.Material = "Neon"
				p.Transparency = i == 1 and 0 or 0.6 
				p.Touched:connect(function(hit)
		        hit.Parent.Humanoid:TakeDamage(30)
		        end)
				local mesh = Instance.new("CylinderMesh",p) 
				table.insert(tabl[6+i],p) 
				table.insert(tabl[8+i],mesh) 
			end 
		end 
		table.insert(lasrs,tabl) 
	end 
	-- isMoving,direction,lastPosition,rebounds,distance,recycleCount,middleLayer,outerLayer
	tabl[4],tabl[5] = 0,0 
	tabl[3] = Barrel.Position 
	tabl[2] = dir 
	tabl[1] = true 

end 

local MultiShoot = false
local gun = false
local shoot = false
local Obliterate = false
local LaserMode = false
function Aim()
	attack = true
	gun = true
	for i = 0, 1, 0.2 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), .5)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(-90)), .5)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(90)), 0.5)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-20)), 0.5)
		RH.C0 = clerp(RH.C0, cf(0.05, -1.5, 0) * angles(math.rad(5), math.rad(0), math.rad(5)), .5)
		LH.C0 = clerp(LH.C0, cf(-0.05, -1.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-5)), .5)
	end
	RootJoint.C0 = RootCF * cf(0, 0, 0) * euler(0, 0, 1.57)
	RW.C0 = cf(1.5, 0.5, 0) * euler(1.57, 0, 1.57)
	local gairo = Create("BodyGyro"){
	Parent = RootPart,
	maxTorque = Vector3.new(4e+005, 4e+005, 4e+005) * math.huge ,
	P = 20e+003 ,
	cframe = RootPart.CFrame,
	}
	local offset = nil
	while gun == true do
		swait()
		local gunpos = vt(mouse.Hit.p.x, Head.Position.Y, mouse.Hit.p.z)
		offset = (Torso.Position.y - mouse.Hit.p.y) / 60
		local mag = (Torso.Position - mouse.Hit.p).magnitude / 80
		offset = offset / mag 
		gairo.cframe = cf(Head.Position, gunpos)
		Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -1.57), .3)
		RW.C1 = clerp(RW.C1, cf(0, 0.5, 0) * euler(offset, 0, 0), .5)
	end
	if shoot == true then
		gairo.Parent = nil
		PE1.Enabled,PE2.Enabled = true,true
		Lite.Enabled = true
		for i = 0, 1, 0.1 do
			swait()
			RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), .3)
			Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(5), math.rad(-90)), .3)
			RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(50), math.rad(90)), 0.3)
			LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-40)), 0.3)
			RH.C0 = clerp(RH.C0, cf(0.05, -1.5, 0) * angles(math.rad(5), math.rad(0), math.rad(5)), .3)
			LH.C0 = clerp(LH.C0, cf(-0.05, -1.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-5)), .3)
			FakeHandleweld.C0 = clerp(FakeHandleweld.C0, cf(0, 0, 0) * angles(math.rad(30), math.rad(0), math.rad(0)), .3)
		end
		Lite.Enabled = false
		PE1.Enabled,PE2.Enabled = false,false
	elseif MultiShoot == true then
		gairo.Parent = nil
		for i = 1,5 do
		so("rbxassetid://199144089", Barrel, 1, 1.1)
		Shoot(Barrel, .2, 1)
		PE1.Enabled,PE2.Enabled = true,true
		Lite.Enabled = true
		for i = 0,1,1 do
			swait()
			RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), .5)
			Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(2), math.rad(-90)), .5)
			RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(50), math.rad(90)), 0.5)
			LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-40)), 0.5)
			RH.C0 = clerp(RH.C0, cf(0.05, -1.5, 0) * angles(math.rad(5), math.rad(0), math.rad(5)), .5)
			LH.C0 = clerp(LH.C0, cf(-0.05, -1.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-5)), .5)
			FakeHandleweld.C0 = clerp(FakeHandleweld.C0, cf(0, 0, 0) * angles(math.rad(30), math.rad(0), math.rad(0)), .3)
		end
		PE1.Enabled,PE2.Enabled = false,false
		Lite.Enabled = false
		for i = 0,1,1 do
			swait()
			RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), .5)
			Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(-90)), .5)
			RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(90)), 0.5)
			LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-20)), 0.5)
			RH.C0 = clerp(RH.C0, cf(0.05, -1.5, 0) * angles(math.rad(5), math.rad(0), math.rad(5)), .5)
			LH.C0 = clerp(LH.C0, cf(-0.05, -1.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-5)), .5)
			FakeHandleweld.C0 = clerp(FakeHandleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
		end
       end
	elseif LaserMode == true then
		gairo.Parent = nil
		so("rbxassetid://161006157", Barrel, 1, .9)
		so("rbxassetid://161006131", Barrel, 1, 1.2)
		for i = 1, 30 do
			swait()
			ChargeEffect(Barrel, 2, 2, 2, math.random(-10, 10), math.random(-10, 10), math.random(-10, 10), 0, 0, 0, BrickColor.new("New Yeller")) 
		end
		so("rbxassetid://199144089", Barrel, 1, .8)
		so("rbxassetid://199144089", Barrel, 1, .5)
		Laser(Barrel)
		PE1.Enabled,PE2.Enabled = true,true
		Lite.Enabled = true
		for i = 0, 1, 0.1 do
			swait()
			RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), .3)
			Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(5), math.rad(-90)), .3)
			RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(50), math.rad(90)), 0.3)
			LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-40)), 0.3)
			RH.C0 = clerp(RH.C0, cf(0.05, -1.5, 0) * angles(math.rad(5), math.rad(0), math.rad(5)), .3)
			LH.C0 = clerp(LH.C0, cf(-0.05, -1.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-5)), .3)
			FakeHandleweld.C0 = clerp(FakeHandleweld.C0, cf(0, 0, 0) * angles(math.rad(30), math.rad(0), math.rad(0)), .3)
		end
		PE1.Enabled,PE2.Enabled = false,false
		Lite.Enabled = false
	elseif Obliterate == true then
		gairo.Parent = nil
		so("rbxassetid://161006157", Barrel, 1, .7)
		so("rbxassetid://161006131", Barrel, 1, 1)
		for i = 1, 60 do
			swait()
			ChargeEffect(Barrel, 2, 2, 2, math.random(-10, 10), math.random(-10, 10), math.random(-10, 10), 0, 0, 0, BrickColor.new("New Yeller")) 
		end
		for i = 1, 5 do
			so("rbxassetid://199144089", Barrel, 1, .8)
			for i = 1, 5 do
				Shoot(Barrel, 1, 3)
			end
			PE1.Enabled,PE2.Enabled = true,true
		    Lite.Enabled = true
			for i = 0, 1, 0.2 do
				swait()
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), .5)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(5), math.rad(-90)), .5)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.8, 0) * angles(math.rad(90), math.rad(50), math.rad(90)), 0.5)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-40)), 0.5)
				RH.C0 = clerp(RH.C0, cf(0.05, -1.5, 0) * angles(math.rad(5), math.rad(0), math.rad(5)), .5)
				LH.C0 = clerp(LH.C0, cf(-0.05, -1.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-5)), .5)
				FakeHandleweld.C0 = clerp(FakeHandleweld.C0, cf(0, 0, 0) * angles(math.rad(30), math.rad(0), math.rad(0)), .3)
			end
		PE1.Enabled,PE2.Enabled = false,false
		Lite.Enabled = false
			for i = 0, 1, 0.2 do
				swait()
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(-90)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(90)), 0.3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-20)), 0.3)
				RH.C0 = clerp(RH.C0, cf(0.05, -1.5, 0) * angles(math.rad(5), math.rad(0), math.rad(5)), .3)
				LH.C0 = clerp(LH.C0, cf(-0.05, -1.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-5)), .3)
				FakeHandleweld.C0 = clerp(FakeHandleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
			end
		end
		
			for i = 0, 1, 0.1 do
				swait()
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(50)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(5), math.rad(-5), math.rad(-55)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.5, -.5) * angles(math.rad(0), math.rad(130), math.rad(80)), 0.3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-20)), 0.3)
				RH.C0 = clerp(RH.C0, cf(0.05, -1.5, 0) * angles(math.rad(5), math.rad(0), math.rad(5)), .3)
				LH.C0 = clerp(LH.C0, cf(-0.05, -1.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-5)), .3)
				FakeHandleweld.C0 = clerp(FakeHandleweld.C0, cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), .3)
			end
		so("rbxassetid://161006157", Barrel, 1, .9)
		so("rbxassetid://161006131", Barrel, 1, 1.2)
		for i = 1, 30 do
			swait()
			ChargeEffect(Barrel, 2, 2, 2, math.random(-10, 10), math.random(-10, 10), math.random(-10, 10), 0, 0, 0, BrickColor.new("New Yeller")) 
		end
			for i = 0, 1, 0.05 do
				swait()
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(1), math.rad(-85)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-20)), 0.3)
				RH.C0 = clerp(RH.C0, cf(0.05, -1.5, 0) * angles(math.rad(5), math.rad(0), math.rad(5)), .3)
				LH.C0 = clerp(LH.C0, cf(-0.05, -1.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-5)), .3)
				FakeHandleweld.C0 = clerp(FakeHandleweld.C0, cf(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(0)), .3)
			end
		so("rbxassetid://199144089", Barrel, 1, .8)
		so("rbxassetid://199144089", Barrel, 1, .9)
		so("rbxassetid://199144089", Barrel, 1, .6)
			for i = 1, 20 do
				Shoot(Barrel, 1.5, 5)
			end
			PE1.Enabled,PE2.Enabled = true,true
		    Lite.Enabled = true
			for i = 0, 1, 0.05 do
				swait()
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), .5)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(10), math.rad(-90)), .5)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.8, 0) * angles(math.rad(0), math.rad(50), math.rad(120)), 0.5)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-20)), 0.5)
				RH.C0 = clerp(RH.C0, cf(0.05, -1.5, 0) * angles(math.rad(5), math.rad(0), math.rad(5)), .5)
				LH.C0 = clerp(LH.C0, cf(-0.05, -1.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-5)), .5)
			end
			PE1.Enabled,PE2.Enabled = false,false
		    Lite.Enabled = false
	end
	gairo.Parent = nil
	shoot = false
	attack = false
end

mouse.Button1Down:connect(function()
	if gun == true then
		shoot = true
		so("rbxassetid://199144089", Barrel, 1, 1)
		Shoot(Barrel, 0, 0)
		gun = false
	end
end)



mouse.KeyDown:connect(function(k)
	k = k:lower()
	if attack == false and equipped == false and k == 'e' then
		Equip()
	elseif attack == false and equipped == true and k == 'e' then
		Unequip()
	elseif attack == false and equipped == true and k == 'f' then
		Aim()
	elseif equipped == true and k == 'f' then
		shoot = false
	elseif equipped == true and gun == true and k == 'q' then
		shoot = true
		so("rbxassetid://199144089", Barrel, 1, .8)
		for i = 1, 5 do
			Shoot(Barrel, 1, 3)
			gun = false
		end
	elseif equipped == true and gun == true and k == 'e' then
		MultiShoot = true
		gun = false
	elseif equipped == true and gun == true and k == 'r' then
		MultiShoot = false
		LaserMode = true
		gun = false
	elseif equipped == true and attack == true and gun == true and k == 't' then
		MultiShoot = false
		Obliterate = true
		LaserMode = false
		gun = false
	elseif equipped == true and attack == true and gun == true and k == 'g' then
		shoot = true
		ReflectShot(mouse)
		so("rbxassetid://199144089", Barrel, 1, .8)
		so("rbxassetid://199144089", Barrel, 1, .5)
		gun = false
	end
end)

game:GetService("RunService").Stepped:connect(function() 
	for _, lasr in pairs(lasrs) do 
		for i, v in pairs(lasr[9]) do 
			if lasr[7][i].Parent then 
				v.Scale = v.Scale + Vector3.new(-0.1,0,-0.1) 
				lasr[10][i].Scale = lasr[10][i].Scale + Vector3.new(-0.1,0,-0.1) 
				if v.Scale.x < 0.1 then 
					lasr[7][i].Parent = nil 
					lasr[8][i].Parent = nil 
				end 
			end 
		end 

		if lasr[1] then 
			local hitz, enz = RAY(lasr[3],lasr[2]*lasrspd) 
			lasr[5] = lasr[5] + (lasr[3] - enz).magnitude 

			lasr[7][lasr[6]].Parent = m 
			lasr[7][lasr[6]].CFrame = CFrame.new((lasr[3] + enz)/2,enz) * CFrame.Angles(math.pi/2,0,0) 
			lasr[9][lasr[6]].Scale = Vector3.new(0.7,(lasr[3] - enz).magnitude*5,0.7) 

			lasr[8][lasr[6]].Parent = m 
			lasr[8][lasr[6]].CFrame = lasr[7][lasr[6]].CFrame 
			lasr[10][lasr[6]].Scale = Vector3.new(1.3,(lasr[3] - enz).magnitude*5 + 0.02,1.3) 

			lasr[3] = enz 
			lasr[6] = lasr[6]%#lasr[7] + 1 

			if hitz then 
				lasr[4] = lasr[4] + 1 
				if lasr[4] == maxRebounds then 
					lasr[1] = false 
				else 
					local norm = FindSurface(hitz,enz) 
					lasr[2] = Reflect(lasr[2],norm) 
				end 
			end 
			if lasr[5] > maxTravelDistance then 
				lasr[1] = false 
			end 
		end 
	end 
end)

local sine = 0
local change = 1
local val = 0
local idle = 0
local donum = 0

while true do
	swait()
	sine = sine + change
	mouse.Icon = "http://www.roblox.com/asset/?id=296383647"
	local torvel = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude 
	local velderp = RootPart.Velocity.y
	hitfloor, posfloor = rayCast(RootPart.Position, (CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0))).lookVector, 4, Character)
	if equipped == true then
		if attack == false then
			idle = idle + 1
		else
			idle = 0
		end
		if idle >= 500 then
			if attack == false then
			end
		end
		if donum >= .5 then
			handidle = true
		elseif donum <= 0 then
			handidle = false
		end
		if handidle == false then
			donum = donum + 0.003
		else
			donum = donum - 0.003
		end
		if RootPart.Velocity.y > 1 and hitfloor == nil then 
			Anim = "Jump"
			if attack == false then
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(-5), math.rad(0), math.rad(0)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(10), math.rad(0), math.rad(0)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(30)), 0.3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-20)), 0.3)
				RH.C0 = clerp(RH.C0, cf(.05, -1.5, .5) * angles(math.rad(-20), math.rad(0), math.rad(5)), .3)
				LH.C0 = clerp(LH.C0, cf(-.05, -1.5, .5) * angles(math.rad(-20), math.rad(0), math.rad(-5)), .3)
				FakeHandleweld.C0 = clerp(FakeHandleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				RW.C1 = clerp(RW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), .3)
			end
		elseif RootPart.Velocity.y < -1 and hitfloor == nil then 
			Anim = "Fall"
			if attack == false then
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(20), math.rad(0), math.rad(0)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(40)), 0.3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-30)), 0.3)
				RH.C0 = clerp(RH.C0, cf(0.05, -1.5, -.2) * angles(math.rad(10), math.rad(0), math.rad(5)), .3)
				LH.C0 = clerp(LH.C0, cf(-0.05, -1.5, -.2) * angles(math.rad(10), math.rad(0), math.rad(-5)), .3)
				FakeHandleweld.C0 = clerp(FakeHandleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				RW.C1 = clerp(RW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), .3)
			end
		elseif torvel < 1 and hitfloor ~= nil then
			Anim = "Idle"
			if attack == false then
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(5) + donum / 3, math.rad(0), math.rad(30)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(.5) - donum / 3, math.rad(.5) + donum / 3, math.rad(-30)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(50), math.rad(0), math.rad(5) + donum / 2), 0.3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-5) + donum / 2, math.rad(0), math.rad(-10)), 0.3)
				RH.C0 = clerp(RH.C0, cf(.2, -1.5, -.5) * angles(math.rad(5) + donum / 2, math.rad(-30), math.rad(5) + donum / 5), .3)
				LH.C0 = clerp(LH.C0, cf(0, -1.5 - donum / 3.5, 0) * angles(math.rad(5) + donum / 3, math.rad(-10), math.rad(0)), .3)
				FakeHandleweld.C0 = clerp(FakeHandleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				RW.C1 = clerp(RW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), .3)
			end
		elseif torvel > 2 and hitfloor ~= nil then
			Anim = "Walk"
			if attack == false then
				change = 3
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(20) + donum / 2, math.rad(0), math.rad(0)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-10) - donum / 2, math.rad(0), math.rad(0)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-50) + donum / 2, math.rad(0), math.rad(5) + donum / 2), 0.3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20) + donum / 2, math.rad(0), math.rad(-5) - donum / 2), 0.3)
                LH.C0 = clerp(LH.C0, CFrame.new(0, -1.5-0.3*math.cos(sine/10)/2, -.05 + math.sin(sine/10)/2) * CFrame.Angles(math.rad(3) + -math.sin(sine/10)/2.3, math.rad(0), math.rad(-3)), .4)
                RH.C0 = clerp(RH.C0, CFrame.new(0, -1.5+0.3*math.cos(sine/10)/2, -.05 + -math.sin(sine/10)/2) * CFrame.Angles(math.rad(3) + math.sin(sine/10)/2.3, math.rad(0), math.rad(3)), .4)
				FakeHandleweld.C0 = clerp(FakeHandleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				RW.C1 = clerp(RW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), .3)
			end
		end
	end
	if #Effects > 0 then
		for e = 1, #Effects do
			if Effects[e] ~= nil then
				local Thing = Effects[e]
				if Thing ~= nil then
					local Part = Thing[1]
					local Mode = Thing[2]
					local Delay = Thing[3]
					local IncX = Thing[4]
					local IncY = Thing[5]
					local IncZ = Thing[6]
					if Thing[1].Transparency <= 1 then
						if Thing[2] == "Block1" then
							Thing[1].CFrame = Thing[1].CFrame * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
							Mesh = Thing[1].Mesh
							Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Cylinder" then
							Mesh = Thing[1].Mesh
							Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Blood" then
							Mesh = Thing[7]
							Thing[1].CFrame = Thing[1].CFrame * cf(0, .5, 0)
							Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Elec" then
							Mesh = Thing[1].Mesh
							Mesh.Scale = Mesh.Scale + vt(Thing[7], Thing[8], Thing[9])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Disappear" then
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						end
					else
						Part.Parent = nil
						table.remove(Effects, e)
					end
				end
			end
		end
	end
end