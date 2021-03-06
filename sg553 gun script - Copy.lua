--[[
Swiss Industry Company [Schweizerische Industrie Gesellschaft] SIG 553 Commando; 
Designed as a shorter, lighter variant of the SG550.
5.56x45mm NATO, 30 Round Mag.
Close-medium range carbine, made in Switzerland. 
Sight0 = Iron Sight
Sight1 = Red Dot
Sight2 = Eotech Holographic
Sight3 = Aimpoint Scope
--]]


if script == nil then return end


Player = game:GetService("Players").LocalPlayer
Char = Player.Character
Anims = Char:FindFirstChild("Animate")
Anims:remove()
Name = "SG553"
MC = BrickColor.new("Dark stone grey")
DC = BrickColor.new("Black")
GC = BrickColor.new("Black")
WSPenalty = 15
MR = 0
GR = 0
Sight = 0
Grip = true
Reliability = 120
Jammed = false
Holstered = true
Spread = 100000
selected = false
canDual = false
dual = false
Button1Down = false
damage = 18
canFire = true
canFire2 = false
readyTime = 0.1
automatic = false
burst = false
burstCount = 0
burstCountMax = 3
canSilence = true
silenced = false
canZoom = false
zoom = false
switchToSingle = true
switchToBurst = true
switchToAutomatic = true


ammoGui = Instance.new("ScreenGui")
ammoGui.Name = Name
local frame = Instance.new("Frame")
frame.Name = "Frame"
frame.Size = UDim2.new(0, 165, 0, 60)
frame.Position = UDim2.new(0, 0, 1, -400)
frame.BackgroundColor3 = Color3.new(1, 1, 1)
frame.BorderColor3 = Color3.new(0, 0, 0)
frame.Parent = ammoGui
local label = Instance.new("TextLabel")
label.Name = "Weapon"
label.Text = "Weapon: " ..Name
label.Size = UDim2.new(1, 0, 0, 20)
label.Position = UDim2.new(0, 0, 0, 0)
label.BackgroundColor3 = Color3.new(1, 0, 0)
label.BorderColor3 = Color3.new(0, 0, 0)
label.Parent = frame
local label = Instance.new("TextLabel")
label.Name = "MagazinePrefix"
label.Text = "    Magazine:"
label.TextXAlignment = "Left"
label.Size = UDim2.new(1, 0, 0, 20)
label.Position = UDim2.new(0, 0, 0, 20)
label.BackgroundColor3 = Color3.new(1, 1, 1)
label.BorderColor3 = Color3.new(0, 0, 0)
label.Parent = frame
local label = Instance.new("TextLabel")
label.Name = "Magazine"
label.Text = "0/0"
label.TextXAlignment = "Right"
label.Size = UDim2.new(1, 0, 0, 20)
label.Position = UDim2.new(0, -10, 0, 20)
label.BackgroundTransparency = 1
label.BorderSizePixel = 0
label.Parent = frame
local label = Instance.new("TextLabel")
label.Name = "AmmoPrefix"
label.Text = "    5.56x45 NATO:"
label.TextXAlignment = "Left"
label.Size = UDim2.new(1, 0, 0, 20)
label.Position = UDim2.new(0, 0, 0, 40)
label.BackgroundColor3 = Color3.new(1, 1, 1)
label.BorderColor3 = Color3.new(0, 0, 0)
label.Parent = frame
local label = Instance.new("TextLabel")
label.Name = "Ammo"
label.Text = "0/0"
label.TextXAlignment = "Right"
label.Size = UDim2.new(1, 0, 0, 20)
label.Position = UDim2.new(0, -10, 0, 40)
label.BackgroundTransparency = 1
label.BorderSizePixel = 0
label.Parent = frame


function updateGui()
	if selected == false then return end
	if Player:FindFirstChild("PlayerGui") == nil then Instance.new("PlayerGui").Parent = Player end
	if Player.PlayerGui:FindFirstChild(Name) == nil then
		ammoGui:Clone().Parent = Player.PlayerGui
	end
	Player.PlayerGui[Name].Frame.Magazine.Text = tostring(magazine.Value).. "/" ..tostring(magazineMax.Value)
	Player.PlayerGui[Name].Frame.Ammo.Text = tostring(ammo.Value).. "/" ..tostring(ammoMax.Value)
end


function makeParts(format)
	local model = Instance.new("Model")
	model.Name = Name
	local pm = Instance.new("Part")
	pm.Name = "Handle"
	pm.formFactor = "Symmetric"
	pm.Size = Vector3.new(1, 1, 1)
	pm.BrickColor = MC
	pm.Reflectance = MR
	pm.CanCollide = false
	pm.Locked = true
	pm.TopSurface = 0
	pm.BottomSurface = 0
	pm.Parent = model
	local m = Instance.new("BlockMesh")
	m.Scale = Vector3.new(0.29, 1.1, 0.41)
	m.Offset = Vector3.new(0, -0.14, 0.07)
	m.Parent = pm
	if format ~= nil then
		local w = Instance.new("Weld")
		w.Part0 = pm
		if format == "RightHand" then
			w.Part1 = Player.Character:FindFirstChild("Right Arm")
			w.C0 = CFrame.new(0, 1.15, 0.7)
			w.C1 = CFrame.new()
		elseif format == "RightHolster" then
			w.Part1 = Player.Character:FindFirstChild("Torso")
			w.C0 = CFrame.new(-0.65, -0.6, 0.4) * CFrame.fromEulerAnglesXYZ(math.rad(40), math.rad(90), 0)
			w.C1 = CFrame.new()
			model.Name = Name.. " (Holstered)"
		end
		w.Parent = pm
		model.Parent = Player.Character
	end
	--[[
	sniper1  http://www.roblox.com/asset/?id=1868836
	equip    http://www.roblox.com/asset/?id=13510737
	fire1     http://www.roblox.com/asset/?id=2760979
	fire2    http://www.roblox.com/asset/?id=13510352
	fire3    http://www.roblox.com/asset/?id=2692806
	fire4    http://www.roblox.com/asset/?id=2691586
	fire5    http://www.roblox.com/asset/?id=2920959
	fire6    http://www.roblox.com/asset/?id=2697431
	fire7    http://www.roblox.com/asset/?id=2920959
	reload1   http://www.roblox.com/asset/?id=2691591
	reload2   http://www.roblox.com/asset/?id=2697432
	reload3  http://www.roblox.com/asset/?id=2920960
	reload4  http://www.roblox.com/asset/?id=2761842
	shotgun1 http://www.roblox.com/asset/?id=2697294
	--]]
	local s = Instance.new("Sound")
	s.Name = "Fire"
	s.SoundId = "http://www.roblox.com/Asset/?id=10209798"
	s.Volume = 1
	s.Pitch = 0.7
	s.Looped = false
	s.Parent = pm
	local s = Instance.new("Sound")
	s.Name = "Fire2"
	s.SoundId = "http://www.roblox.com/Asset/?id=16211041"
	s.Volume = 1
	s.Pitch = 3
	s.Looped = false
	s.Parent = pm
	local s = Instance.new("Sound")
	s.Name = "Jam"
	s.SoundId = "http://www.roblox.com/Asset/?id=10209636"
	s.Volume = 1
	s.Pitch = 2
	s.Looped = false
	s.Parent = pm			
	local s = Instance.new("Sound")
	s.Name = "Action"
	s.SoundId = "http://www.roblox.com/Asset/?id=10209636"
	s.Volume = 1
	s.Pitch = 1.5
	s.Looped = false
	s.Parent = pm	
	local s = Instance.new("Sound")
	s.Name = "Lock"
	s.SoundId = "http://www.roblox.com/Asset/?id=10209845"
	s.Volume = 1
	s.Pitch = 3
	s.Looped = false
	s.Parent = pm
	local s = Instance.new("Sound")
	s.Name = "Release"
	s.SoundId = "http://www.roblox.com/Asset/?id=10209813"
	s.Volume = 1
	s.Pitch = 4
	s.Looped = false
	s.Parent = pm
	local s = Instance.new("Sound")
	s.Name = "Reload"
	s.SoundId = "http://www.roblox.com/asset/?id=2761842"
	s.Volume = 1
	s.Pitch = 1.1
	s.Looped = false
	s.Parent = pm
	local s = Instance.new("Sound")
	s.Name = "Empty"
	s.SoundId = "http://www.roblox.com/asset/?id=2697295"
	s.Volume = 1
	s.Pitch = 5
	s.Looped = false
	s.Parent = pm
	local s = Instance.new("Sound")
	s.Name = "Switch"
	s.SoundId = "http://www.roblox.com/asset/?id=2697295"
	s.Volume = 1
	s.Pitch = 10
	s.Looped = false
	s.Parent = pm
	local p = Instance.new("Part")
	p.Name = "ShellOut"
	p.formFactor = "Symmetric"
	p.Size = Vector3.new(1, 1, 1)
	p.Transparency = 1
	p.Locked = true
	p.CanCollide = false
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = pm
	w.C0 = CFrame.new(0, 0, 1) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
	w.C1 = CFrame.new()
	w.Parent = p
	local p = Instance.new("Part")
	p.Name = "Grip"
	p.formFactor = "Symmetric"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = GC
	p.Reflectance = GR
	p.CanCollide = false
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("BlockMesh")
	m.Scale = Vector3.new(0.28, 0.38, 0.7)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = pm
	w.C0 = CFrame.new(0, -0.15, -0.5) * CFrame.fromEulerAnglesXYZ(math.rad(15), 0, 0)
	w.C1 = CFrame.new()
	w.Parent = p
	local pm2 = Instance.new("Part")
	pm2.Name = "Magazine"
	pm2.formFactor = "Symmetric"
	pm2.Size = Vector3.new(1, 1, 1)
	pm2.BrickColor = DC
	pm2.Transparency = 0.3
	pm2.Locked = true
	pm2.CanCollide = false
	pm2.TopSurface = 0
	pm2.BottomSurface = 0
	pm2.Parent = model
	local m = Instance.new("BlockMesh")
	m.Scale = Vector3.new(0.25, 0.43, 0.8)
	m.Parent = pm2
	local w = Instance.new("Weld")
	w.Part0 = pm2
	w.Part1 = pm
	w.C0 = CFrame.new(0, 0.425, -0.54) * CFrame.fromEulerAnglesXYZ(math.rad(-6), 0, 0)
	w.C1 = CFrame.new()
	w.Parent = pm2
	local p = Instance.new("Part")
	p.Name = "MagazineInt"
	p.formFactor = "Symmetric"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = BrickColor.new("Bright yellow")
	p.Reflectance = 0.3
	if magazine.Value ~= 0 then
		p.Transparency = 0
	else
		p.Transparency = 1
	end
	p.Locked = true
	p.CanCollide = false
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("BlockMesh")
	m.Scale = Vector3.new(0.23, 0.4, 0.7)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = pm2
	w.C0 = CFrame.new(0, 0, 0)
	w.C1 = CFrame.new()
	w.Parent = p
	local p = Instance.new("Part")
	p.Name = "TriggerGuard"
	p.formFactor = "Symmetric"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = MC
	p.Reflectance = MR
	p.CanCollide = false
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("SpecialMesh")
	m.MeshType = "FileMesh"
	m.MeshId = "http://www.roblox.com/asset/?id=3270017"
	m.Scale = Vector3.new(0.3, 0.3, 0.8)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = pm
	w.C0 = CFrame.new(-0.275, 0.03, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
	w.C1 = CFrame.new()
	w.Parent = p	
	local p = Instance.new("Part")
	p.Name = "Trigger"
	p.formFactor = "Symmetric"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = MC
	p.Reflectance = MR
	p.CanCollide = false
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("BlockMesh")
	m.Scale = Vector3.new(0.1, 0.05, 0.15)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = pm
	w.C0 = CFrame.new(0, 0.03, -0.275)
	w.C1 = CFrame.new()
	w.Parent = p
	local p = Instance.new("Part")
	p.Name = "Fore"
	p.CanCollide = false
	p.formFactor = "Symmetric"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = GC
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("BlockMesh")
	m.Scale = Vector3.new(0.3, 0.7, 0.345)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = pm
	w.C0 = CFrame.new(0, 1.02, -0.035)
	w.C1 = CFrame.new()
	w.Parent = p
	local p = Instance.new("Part")
	p.Name = "Rail" --------------
	p.CanCollide = false
	p.formFactor = "Symmetric"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = DC
	p.Reflectance = MR
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("BlockMesh")
	m.Scale = Vector3.new(0.18, 0.6, 0.32)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = pm
	w.C0 = CFrame.new(0, 1.02, -0.08)
	w.C1 = CFrame.new()
	w.Parent = p		
	local p = Instance.new("Part")
	p.Name = "Rail" --------------
	p.CanCollide = false
	p.formFactor = "Symmetric"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = DC
	p.Reflectance = MR
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("BlockMesh")
	m.Scale = Vector3.new(0.18, 1, 0.3)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = pm
	w.C0 = CFrame.new(0, 0.12, 0.02)
	w.C1 = CFrame.new()
	w.Parent = p
	local p = Instance.new("Part")
	p.Name = "BoltH"
	p.formFactor = "Symmetric"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = DC
	p.Reflectance = MR
	p.CanCollide = false
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("CylinderMesh")
	m.Scale = Vector3.new(0.08, 0.3, 0.08)
	if magazine.Value ~= 0 then
		m.Offset = Vector3.new(0, 0, 0)
	else
		m.Offset = Vector3.new(-0.25, 0, 0)	
	end
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = pm
	w.C0 = CFrame.new(-0.465, -0.1, -0.02) * CFrame.fromEulerAnglesXYZ(0, 0, math.rad(90))
	w.C1 = CFrame.new()
	w.Parent = p	
	local p = Instance.new("Part")
	p.Name = "Bolt" --------------
	p.CanCollide = false
	p.formFactor = "Symmetric"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = BrickColor.new("Black")
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("BlockMesh")
	m.Name = "Mesh"
	m.Scale = Vector3.new(0.26, 0.3, 0.12)
	if magazine.Value ~= 0 then
		m.Offset = Vector3.new(0, 0, 0)
	else
		m.Offset = Vector3.new(0, 0.25, 0)	
	end	
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = pm
	w.C0 = CFrame.new(-0.024, 0.4, -0.02)
	w.C1 = CFrame.new()
	w.Parent = p
	local p = Instance.new("Part")
	p.Name = "BoltHole" --------------
	p.CanCollide = false
	p.formFactor = "Symmetric"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = BrickColor.new("Really black")
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("BlockMesh")
	m.Name = "Mesh"
	m.Scale = Vector3.new(0.26, 0.28, 0.1)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = pm
	w.C0 = CFrame.new(-0.02, 0.4, -0.02)
	w.C1 = CFrame.new()
	w.Parent = p	
	local p = Instance.new("Part")
	p.Name = "GasBlock"
	p.formFactor = "Symmetric"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = DC
	p.Reflectance = MR
	p.CanCollide = false
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("CylinderMesh")
	m.Scale = Vector3.new(0.14, 0.18, 0.14)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = pm
	w.C0 = CFrame.new(0, 1.4, 0.06)
	w.C1 = CFrame.new()
	w.Parent = p	
	local p = Instance.new("Part")
	p.Name = "Barrel 1"
	p.formFactor = "Symmetric"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = DC
	p.Reflectance = MR
	p.CanCollide = false
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("CylinderMesh")
	m.Scale = Vector3.new(0.15, 0.8, 0.15)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = pm
	w.C0 = CFrame.new(0, 1.4, -0.08)
	w.C1 = CFrame.new()
	w.Parent = p
	local p = Instance.new("Part")
	p.Name = "Hole"
	p.formFactor = "Symmetric"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = BrickColor.new("Really black")
	p.CanCollide = false
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("CylinderMesh")
	m.Scale = Vector3.new(0.12, 0.4, 0.12)
	m.Offset = Vector3.new(0, 0.2, 0)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = pm
	w.C0 = CFrame.new(0, 1.804, -0.08)
	w.C1 = CFrame.new()
	w.Parent = p	
	local p = Instance.new("Part")
	if silenced == false then
		p.Name = "Muzzle"
	else
		p.Name = "Muzzle 2"
	end
	p.formFactor = "Symmetric"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = DC
	p.Reflectance = MR
	p.CanCollide = false
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("CylinderMesh")
	m.Scale = Vector3.new(0.18, 0.4, 0.18)
	m.Offset = Vector3.new(0, 0.2, 0)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = pm
	w.C0 = CFrame.new(0, 1.8, -0.08)
	w.C1 = CFrame.new()
	w.Parent = p
	local s = Instance.new("Smoke")
	s.Enabled = false
	s.Name = "Smoke"
	s.RiseVelocity = -5
	s.Opacity = 0.3
	s.Color = Color3.new(75 / 225, 75 / 225, 75 / 225)
	s.Size = 1
	s.Parent = p
	local f = Instance.new("Fire")
	f.Enabled = false
	f.Name = "Fire"
	f.Heat = -35
	f.Size = 1
	f.Parent = p
	local p = Instance.new("Part")
	p.Name = "Silencer"
	p.formFactor = "Symmetric"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = BrickColor.new("Really black")
 	p.CanCollide = false
	if silenced == false then
		p.Name = "Silencer"
		p.Transparency = 1
	else	
		p.Name = "Muzzle"
		p.Transparency = 0
	end
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("CylinderMesh")
	m.Scale = Vector3.new(0.25, 0.8, 0.25)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = pm
	w.C0 = CFrame.new(0, 2, -0.08)
	w.C1 = CFrame.new()
	w.Parent = p
	local p = Instance.new("Part")
	p.Name = "StockHinge" 
	p.CanCollide = false
	p.formFactor = "Symmetric"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = DC
	p.Reflectance = MR
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("CylinderMesh")
	m.Scale = Vector3.new(0.1, 0.26, 0.1)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = pm
	w.C0 = CFrame.new(-0.14, 0.05, -0.4) * CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 0)
	w.C1 = CFrame.new()
	w.Parent = p	
	local ps = Instance.new("Part") -- Stock
	ps.Name = "StockBase"
	ps.CanCollide = false
	ps.formFactor = "Symmetric"
	ps.Size = Vector3.new(1, 1, 1)
	ps.BrickColor = GC
	ps.Reflectance = GR
	ps.Locked = true
	ps.TopSurface = 0
	ps.BottomSurface = 0
	ps.Parent = model
	local m = Instance.new("BlockMesh")
	m.Scale = Vector3.new(0.28, 0.6, 0.28)
	m.Parent = ps
	local w = Instance.new("Weld")
	w.Part0 = ps
	w.Part1 = pm
	if Holstered == false then
		w.C0 = CFrame.new(0, -0.65, -0.15)
	else
		w.C0 = CFrame.new(0.25, 0.1, -0.15) * CFrame.fromEulerAnglesXYZ(0, 0, math.rad(180))	
	end
	w.C1 = CFrame.new()
	w.Parent = ps	
	local p = Instance.new("Part")
	p.Name = "Stock 1"
	p.CanCollide = false
	p.formFactor = "Symmetric"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = GC
	p.Reflectance = GR
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("BlockMesh")
	m.Scale = Vector3.new(0.28, 1, 0.28)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = ps
	w.C0 = CFrame.new(0, -0.38, 0)
	w.C1 = CFrame.new()
	w.Parent = p	
	local p = Instance.new("Part")
	p.Name = "Stock 2"
	p.CanCollide = false
	p.formFactor = "Symmetric"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = GC
	p.Reflectance = GR
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("BlockMesh")
	m.Scale = Vector3.new(0.28, 0.2, 0.58)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = ps
	w.C0 = CFrame.new(0, -0.775, -0.28)
	w.C1 = CFrame.new()
	w.Parent = p
	local p = Instance.new("Part")
	p.Name = "StockAngle1"
	p.CanCollide = false
	p.formFactor = "Symmetric"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = GC
	p.Reflectance = GR
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("BlockMesh")
	m.Scale = Vector3.new(0.28, 0.18, 0.65)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = ps
	w.C0 = CFrame.new(0, -0.12, -0.56) * CFrame.fromEulerAnglesXYZ(math.rad(48), 0, 0)
	w.C1 = CFrame.new()
	w.Parent = p
	local p = Instance.new("Part")
	p.Name = "StockAngle2"
	p.CanCollide = false
	p.formFactor = "Symmetric"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = GC
	p.Reflectance = GR
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("SpecialMesh")
	m.MeshType = "Wedge"
	m.Scale = Vector3.new(0.28, 0.6, 0.18)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = ps
	w.C0 = CFrame.new(0, 0, 0.19)
	w.C1 = CFrame.new()
	w.Parent = p
	if Sight == 0 then
		local p = Instance.new("Part")
		p.Name = "Frontsight"
		p.formFactor = "Symmetric"
		p.Size = Vector3.new(1, 1, 1)
		p.BrickColor = DC
		p.Reflectance = MR
		p.CanCollide = false
		p.Locked = true
		p.TopSurface = 0
		p.BottomSurface = 0
		p.Parent = model
		local m = Instance.new("BlockMesh")
		m.Scale = Vector3.new(0.08, 0.1, 0.3)
		m.Parent = p
		local w = Instance.new("Weld")
		w.Part0 = p
		w.Part1 = pm
		w.C0 = CFrame.new(0, 1.3, 0.1)
		w.C1 = CFrame.new()
		w.Parent = p	
		local p = Instance.new("Part")
		p.Name = "Frontsight"
		p.formFactor = "Symmetric"
		p.Size = Vector3.new(1, 1, 1)
		p.BrickColor = DC
		p.Reflectance = MR
		p.CanCollide = false
		p.Locked = true
		p.TopSurface = 0
		p.BottomSurface = 0
		p.Parent = model
		local m = Instance.new("CylinderMesh")
		m.Scale = Vector3.new(0.12, 0.1, 0.12)
		m.Parent = p
		local w = Instance.new("Weld")
		w.Part0 = p
		w.Part1 = pm
		w.C0 = CFrame.new(0, 1.3, 0.28)
		w.C1 = CFrame.new()
		w.Parent = p					
		local p = Instance.new("Part")
		p.Name = "RearSight" 
		p.CanCollide = false
		p.formFactor = "Symmetric"
		p.Size = Vector3.new(1, 1, 1)
		p.BrickColor = DC
		p.Reflectance = MR
		p.Locked = true
		p.TopSurface = 0
		p.BottomSurface = 0
		p.Parent = model
		local m = Instance.new("CylinderMesh")
		m.Scale = Vector3.new(0.2, 0.46, 0.2)
		m.Parent = p
		local w = Instance.new("Weld")
		w.Part0 = p
		w.Part1 = pm
		w.C0 = CFrame.new(0, -0.02, -0.28) * CFrame.fromEulerAnglesXYZ(math.rad(100), 0, 0)
		w.C1 = CFrame.new()
		w.Parent = p		
	elseif Sight == 1 then
		local p = Instance.new("Part") -------- RDS Attachment
		p.Name = "Ring"
		p.formFactor = "Symmetric"
		p.Size = Vector3.new(1, 1, 1)
		p.BrickColor = DC
		p.Reflectance = MR
		p.CanCollide = false
		p.Locked = true
		p.TopSurface = 0
		p.BottomSurface = 0
		p.Parent = model	
		local m = Instance.new("SpecialMesh")
		m.MeshType = "FileMesh"
		m.MeshId = "http://www.roblox.com/asset/?id=3270017"
		m.Scale = Vector3.new(0.25, 0.25, 0.8)
		m.Parent = p
		local w = Instance.new("Weld")
		w.Part0 = p
		w.Part1 = pm
		w.C0 = CFrame.new(0, -0.25, 0.34) * CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 0)
		w.C1 = CFrame.new()
		w.Parent = p
		local p = Instance.new("Part")
		p.Name = "SightBottom"
		p.CanCollide = false
		p.formFactor = "Symmetric"
		p.Size = Vector3.new(1, 1, 1)
		p.BrickColor = DC
		p.Reflectance = MR
		p.Locked = true
		p.TopSurface = 0
		p.BottomSurface = 0
		p.Parent = model
		local m = Instance.new("BlockMesh")
		m.Scale = Vector3.new(0.25, 0.4, 0.18)
		m.Parent = p
		local w = Instance.new("Weld")
		w.Part0 = p
		w.Part1 = pm
		w.C0 = CFrame.new(0, 0.2, 0.1)
		w.C1 = CFrame.new()
		w.Parent = p
		local p = Instance.new("Part")
		p.Name = "Image"
		p.CanCollide = false
		p.formFactor = "Symmetric"
		p.Size = Vector3.new(1, 1, 1)
		p.BrickColor = MC
		p.Transparency = 1
		p.Locked = true
		p.TopSurface = 0
		p.BottomSurface = 0
		p.Parent = model
		local d = Instance.new("Decal")
		d.Face = "Top"
		d.Texture = "http://www.roblox.com/asset/?id=29712167"
		d.Parent = p
		local m = Instance.new("BlockMesh")
		m.Scale = Vector3.new(0.1, 0.001, 0.1)
		m.Parent = p
		local w = Instance.new("Weld")
		w.Part0 = p
		w.Part1 = pm
		w.C0 = CFrame.new(0, 0.34, 0.25)
		w.C1 = CFrame.new()
		w.Parent = p
	elseif Sight == 2 then
		local p = Instance.new("Part")
		p.Name = "SightBottom"
		p.CanCollide = false
		p.formFactor = "Symmetric"
		p.Size = Vector3.new(1, 1, 1)
		p.BrickColor = DC
		p.Reflectance = MR
		p.Locked = true
		p.TopSurface = 0
		p.BottomSurface = 0
		p.Parent = model
		local m = Instance.new("BlockMesh")
		m.Scale = Vector3.new(0.2, 0.5, 0.18)
		m.Parent = p
		local w = Instance.new("Weld")
		w.Part0 = p
		w.Part1 = pm
		w.C0 = CFrame.new(0, 0.25, 0.12)
		w.C1 = CFrame.new()
		w.Parent = p
		local p = Instance.new("Part")
		p.Name = "Image"
		p.CanCollide = false
		p.formFactor = "Symmetric"
		p.Size = Vector3.new(1, 1, 1)
		p.BrickColor = MC
		p.Transparency = 1
		p.Locked = true
		p.TopSurface = 0
		p.BottomSurface = 0
		p.Parent = model
		local d = Instance.new("Decal")
		d.Face = "Top"
		d.Texture = "http://www.roblox.com/asset/?id=29712167"
		d.Parent = p
		local m = Instance.new("BlockMesh")
		m.Scale = Vector3.new(0.1, 0.001, 0.1)
		m.Parent = p
		local w = Instance.new("Weld")
		w.Part0 = p
		w.Part1 = pm
		w.C0 = CFrame.new(0, 0.1, 0.25)
		w.C1 = CFrame.new()
		w.Parent = p		
		local p = Instance.new("Part")
		p.Name = "SightCube"
		p.CanCollide = false
		p.formFactor = "Symmetric"
		p.Size = Vector3.new(1, 1, 1)
		p.BrickColor = DC
		p.Reflectance = MR
		p.Transparency = 0.8
		p.Locked = true
		p.TopSurface = 0
		p.BottomSurface = 0
		p.Parent = model
		local m = Instance.new("BlockMesh")
		m.Scale = Vector3.new(0.25, 0.25, 0.25)
		m.Parent = p
		local w = Instance.new("Weld")
		w.Part0 = p
		w.Part1 = pm
		w.C0 = CFrame.new(0, 0.1, 0.25)
		w.C1 = CFrame.new()
		w.Parent = p
		local p = Instance.new("Part")
		p.Name = "SightBox"
		p.CanCollide = false
		p.formFactor = "Symmetric"
		p.Size = Vector3.new(1, 1, 1)
		p.BrickColor = DC
		p.Reflectance = MR
		p.Locked = true
		p.TopSurface = 0
		p.BottomSurface = 0
		p.Parent = model
		local m = Instance.new("BlockMesh")
		m.Scale = Vector3.new(0.05, 0.25, 0.25)
		m.Offset = Vector3.new(0.1, 0, 0)
		m.Parent = p
		local w = Instance.new("Weld")
		w.Part0 = p
		w.Part1 = pm
		w.C0 = CFrame.new(0, 0.1, 0.25)
		w.C1 = CFrame.new()
		w.Parent = p
		local p = Instance.new("Part")
		p.Name = "SightBox"
		p.CanCollide = false
		p.formFactor = "Symmetric"
		p.Size = Vector3.new(1, 1, 1)
		p.BrickColor = DC
		p.Reflectance = MR
		p.Locked = true
		p.TopSurface = 0
		p.BottomSurface = 0
		p.Parent = model
		local m = Instance.new("BlockMesh")
		m.Scale = Vector3.new(0.05, 0.25, 0.25)
		m.Offset = Vector3.new(-0.1, 0, 0)
		m.Parent = p
		local w = Instance.new("Weld")
		w.Part0 = p
		w.Part1 = pm
		w.C0 = CFrame.new(0, 0.1, 0.25)
		w.C1 = CFrame.new()
		w.Parent = p
		local p = Instance.new("Part")
		p.Name = "SightBox"
		p.CanCollide = false
		p.formFactor = "Symmetric"
		p.Size = Vector3.new(1, 1, 1)
		p.BrickColor = DC
		p.Reflectance = MR
		p.Locked = true
		p.TopSurface = 0
		p.BottomSurface = 0
		p.Parent = model
		local m = Instance.new("BlockMesh")
		m.Scale = Vector3.new(0.25, 0.25, 0.05)
		m.Offset = Vector3.new(0, 0, -0.1)
		m.Parent = p
		local w = Instance.new("Weld")
		w.Part0 = p
		w.Part1 = pm
		w.C0 = CFrame.new(0, 0.1, 0.25)
		w.C1 = CFrame.new()
		w.Parent = p
		local p = Instance.new("Part")
		p.Name = "SightBox"
		p.CanCollide = false
		p.formFactor = "Symmetric"
		p.Size = Vector3.new(1, 1, 1)
		p.BrickColor = DC
		p.Reflectance = MR
		p.Locked = true
		p.TopSurface = 0
		p.BottomSurface = 0
		p.Parent = model
		local m = Instance.new("BlockMesh")
		m.Scale = Vector3.new(0.25, 0.25, 0.05)
		m.Offset = Vector3.new(0, 0, 0.1)
		m.Parent = p
		local w = Instance.new("Weld")
		w.Part0 = p
		w.Part1 = pm
		w.C0 = CFrame.new(0, 0.1, 0.25)
		w.C1 = CFrame.new()
		w.Parent = p
	elseif Sight == 3 then
		canZoom = true
		local l = Instance.new("Part") -- Aimpoint Scope
		l.Name = "SightBottom"
		l.CanCollide = false
		l.formFactor = "Symmetric"
		l.Size = Vector3.new(1, 1, 1)
		l.BrickColor = DC
		l.Reflectance = MR
		l.Locked = true
		l.TopSurface = 0
		l.BottomSurface = 0
		l.Parent = model
		local m = Instance.new("BlockMesh")
		m.Scale = Vector3.new(0.2, 0.4, 0.18)
		m.Parent = l
		local w = Instance.new("Weld")
		w.Part0 = l
		w.Part1 = pm
		w.C0 = CFrame.new(0, 0.26, 0.16)
		w.C1 = CFrame.new()
		w.Parent = l
		canZoom = true
		local p = Instance.new("Part")
		p.Name = "Scope"
		p.formFactor = "Symmetric"
		p.Size = Vector3.new(1, 1, 1)
		p.BrickColor = DC
		p.Reflectance = MR
		p.CanCollide = false
		p.Locked = true
		p.TopSurface = 0
		p.BottomSurface = 0
		p.Parent = model	
		local m = Instance.new("CylinderMesh")
		m.Scale = Vector3.new(0.28, 0.5, 0.28)
		m.Parent = p
		local w = Instance.new("Weld")
		w.Part0 = p
		w.Part1 = l
		w.C0 = CFrame.new(0, 0, 0.16)
		w.C1 = CFrame.new()
		w.Parent = p
		local p = Instance.new("Part")
		p.Name = "ScopeInt"
		p.formFactor = "Symmetric"
		p.Size = Vector3.new(1, 1, 1)
		p.BrickColor = BrickColor.new("White")
		p.Reflectance = 0.3
		p.CanCollide = false
		p.Locked = true
		p.TopSurface = 0
		p.BottomSurface = 0
		p.Parent = model	
		local m = Instance.new("CylinderMesh")
		m.Scale = Vector3.new(0.26, 0.604, 0.26)
		m.Parent = p
		local w = Instance.new("Weld")
		w.Part0 = p
		w.Part1 = l
		w.C0 = CFrame.new(0, 0, 0.16)
		w.C1 = CFrame.new()
		w.Parent = p		
		local p = Instance.new("Part")
		p.Name = "Scope"
		p.formFactor = "Symmetric"
		p.Size = Vector3.new(1, 1, 1)
		p.BrickColor = DC
		p.Reflectance = MR
		p.CanCollide = false
		p.Locked = true
		p.TopSurface = 0
		p.BottomSurface = 0
		p.Parent = model	
		local m = Instance.new("CylinderMesh")
		m.Scale = Vector3.new(0.3, 0.1, 0.3)
		m.Parent = p
		local w = Instance.new("Weld")
		w.Part0 = p
		w.Part1 = l
		w.C0 = CFrame.new(0, -0.25, 0.16)
		w.C1 = CFrame.new()
		w.Parent = p
		local p = Instance.new("Part")
		p.Name = "Scope"
		p.formFactor = "Symmetric"
		p.Size = Vector3.new(1, 1, 1)
		p.BrickColor = DC
		p.Reflectance = MR
		p.CanCollide = false
		p.Locked = true
		p.TopSurface = 0
		p.BottomSurface = 0
		p.Parent = model	
		local m = Instance.new("CylinderMesh")
		m.Scale = Vector3.new(0.3, 0.1, 0.3)
		m.Parent = p
		local w = Instance.new("Weld")
		w.Part0 = p
		w.Part1 = l
		w.C0 = CFrame.new(0, 0.25, 0.16)
		w.C1 = CFrame.new()
		w.Parent = p				
		local p = Instance.new("Part")
		p.Name = "Scope"
		p.formFactor = "Symmetric"
		p.Size = Vector3.new(1, 1, 1)
		p.BrickColor = DC
		p.Reflectance = MR
		p.CanCollide = false
		p.Locked = true
		p.TopSurface = 0
		p.BottomSurface = 0
		p.Parent = model	
		local m = Instance.new("CylinderMesh")
		m.Scale = Vector3.new(0.12, 0.5, 0.12)
		m.Parent = p
		local w = Instance.new("Weld")
		w.Part0 = p
		w.Part1 = l
		w.C0 = CFrame.new(-0.12, 0, 0.24)
		w.C1 = CFrame.new()
		w.Parent = p
		local p = Instance.new("Part")
		p.Name = "Scope"
		p.formFactor = "Symmetric"
		p.Size = Vector3.new(1, 1, 1)
		p.BrickColor = DC
		p.Reflectance = MR
		p.CanCollide = false
		p.Locked = true
		p.TopSurface = 0
		p.BottomSurface = 0
		p.Parent = model	
		local m = Instance.new("CylinderMesh")
		m.Scale = Vector3.new(0.13, 0.1, 0.13)
		m.Parent = p
		local w = Instance.new("Weld")
		w.Part0 = p
		w.Part1 = l
		w.C0 = CFrame.new(-0.12, 0.25, 0.24)
		w.C1 = CFrame.new()
		w.Parent = p
		local p = Instance.new("Part")
		p.Name = "Scope"
		p.formFactor = "Symmetric"
		p.Size = Vector3.new(1, 1, 1)
		p.BrickColor = DC
		p.Reflectance = MR
		p.CanCollide = false
		p.Locked = true
		p.TopSurface = 0
		p.BottomSurface = 0
		p.Parent = model	
		local m = Instance.new("CylinderMesh")
		m.Scale = Vector3.new(0.13, 0.1, 0.13)
		m.Parent = p
		local w = Instance.new("Weld")
		w.Part0 = p
		w.Part1 = l
		w.C0 = CFrame.new(-0.12, -0.25, 0.24)
		w.C1 = CFrame.new()
		w.Parent = p								
	else end
	if Grip == true then
		local p = Instance.new("Part") --------------- ForeGrip Attachment
		p.Name = "ForeGrip"
		p.formFactor = "Symmetric"
		p.Size = Vector3.new(1, 1, 1)
		p.BrickColor = BrickColor.new("Black")
		p.CanCollide = false
		p.Locked = true
		p.TopSurface = 0
		p.BottomSurface = 0
		p.Parent = model
		local m = Instance.new("CylinderMesh")
		m.Scale = Vector3.new(0.25, 0.6, 0.25)
		m.Parent = p
		local w = Instance.new("Weld")
		w.Part0 = p
		w.Part1 = pm
		w.C0 = CFrame.new(0, 0.4, 1.1) * CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 0)
		w.C1 = CFrame.new()
		w.Parent = p
	else end
	return model
end


function removeParts(format)
	if format == "RightHand" then
		pcall(function() Player.Character[Name]:Remove() end)
	elseif format == "LeftHand" then
		pcall(function() Player.Character[Name.. " (Left)"]:Remove() end)
	elseif format == "RightHolster" then
		pcall(function() Player.Character[Name.. " (Holstered)"]:Remove() end)
	elseif format == "LeftHolster" then
		pcall(function() Player.Character[Name.. " (Holstered, Left)"]:Remove() end)
	end
end


function SetAngle(Joint, Angle, Character)
	if Character == nil then return false end
	local Joints = {
		Character.Torso:FindFirstChild("Right Shoulder 2"),
		Character.Torso:FindFirstChild("Left Shoulder 2"),
		Character.Torso:FindFirstChild("Right Hip 2"),
		Character.Torso:FindFirstChild("Left Hip 2")
	}
	if Joints[Joint] == nil then return false end
	if Joint == 1 or Joint == 3 then
		Joints[Joint].DesiredAngle = Angle
	end
	if Joint == 2 or Joint == 4 then
		Joints[Joint].DesiredAngle = -Angle
	end
end


function ForceAngle(Joint, Angle, Character)
	if Character == nil then return false end
	local Joints = {
		Character.Torso:FindFirstChild("Right Shoulder 2"),
		Character.Torso:FindFirstChild("Left Shoulder 2"),
		Character.Torso:FindFirstChild("Right Hip 2"),
		Character.Torso:FindFirstChild("Left Hip 2")
	}
	if Joints[Joint] == nil then return false end
	if Joint == 1 or Joint == 3 then
		Joints[Joint].DesiredAngle = Angle
		Joints[Joint].CurrentAngle = Angle
	end
	if Joint == 2 or Joint == 4 then
		Joints[Joint].DesiredAngle = -Angle
		Joints[Joint].CurrentAngle = -Angle
	end
end


function SetSpeed(Joint, Speed, Character)
	if Character == nil then return false end
	local Joints = {
		Character.Torso:FindFirstChild("Right Shoulder 2"),
		Character.Torso:FindFirstChild("Left Shoulder 2"),
		Character.Torso:FindFirstChild("Right Hip 2"),
		Character.Torso:FindFirstChild("Left Hip 2")
	}
	if Joints[Joint] == nil then return false end
	Joints[Joint].MaxVelocity = Speed
end


function DisableLimb(Limb, Character)
	if Character == nil then return false end
	if Character:FindFirstChild("Torso") == nil then return false end
	local Joints = {
		Character.Torso:FindFirstChild("Right Shoulder"),
		Character.Torso:FindFirstChild("Left Shoulder"),
		Character.Torso:FindFirstChild("Right Hip"),
		Character.Torso:FindFirstChild("Left Hip")
	}
	local Limbs = {
		Character:FindFirstChild("Right Arm"),
		Character:FindFirstChild("Left Arm"),
		Character:FindFirstChild("Right Leg"),
		Character:FindFirstChild("Left Leg")
	}
	if Joints[Limb] == nil then return false end
	if Limbs[Limb] == nil then return false end
	local Joint = Instance.new("Motor")
	Joint.Parent = Character.Torso
	Joint.Part0 = Character.Torso
	Joint.Part1 = Limbs[Limb]
	if Limb == 1 then
		Joint.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
		Joint.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
		Joint.Name = "Right Shoulder 2"
	elseif Limb == 2 then
		Joint.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
		Joint.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
		Joint.Name = "Left Shoulder 2"
	elseif Limb == 3 then
		Joint.C0 = CFrame.new(0.5, -1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
		Joint.C1 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
		Joint.Name = "Right Hip 2"
	elseif Limb == 4 then
		Joint.C0 = CFrame.new(-0.5, -1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
		Joint.C1 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
		Joint.Name = "Left Hip 2"
	end
	Joint.MaxVelocity = Joints[Limb].MaxVelocity
	Joint.CurrentAngle = Joints[Limb].CurrentAngle
	Joint.DesiredAngle = Joints[Limb].DesiredAngle
	Joints[Limb]:Remove()
end


function ResetLimbCFrame(Limb, Character)
	if Character == nil then return false end
	if Character.Parent == nil then return false end
	if Character:FindFirstChild("Torso") == nil then return false end
	local Joints = {
		Character.Torso:FindFirstChild("Right Shoulder 2"),
		Character.Torso:FindFirstChild("Left Shoulder 2"),
		Character.Torso:FindFirstChild("Right Hip 2"),
		Character.Torso:FindFirstChild("Left Hip 2")
	}
	local Limbs = {
		Character:FindFirstChild("Right Arm"),
		Character:FindFirstChild("Left Arm"),
		Character:FindFirstChild("Right Leg"),
		Character:FindFirstChild("Left Leg")
	}
	if Joints[Limb] == nil then return false end
	if Limbs[Limb] == nil then return false end
	if Limb == 1 then
		Joints[Limb].C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
		Joints[Limb].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
	elseif Limb == 2 then
		Joints[Limb].C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
		Joints[Limb].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
	elseif Limb == 3 then
		Joints[Limb].C0 = CFrame.new(0.5, -1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
		Joints[Limb].C1 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
	elseif Limb == 4 then
		Joints[Limb].C0 = CFrame.new(-0.5, -1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
		Joints[Limb].C1 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
	end
end


function EnableLimb(Limb, Character)
	if Character == nil then return false end
	if Character:FindFirstChild("Torso") == nil then return false end
	local Joints = {
		Character.Torso:FindFirstChild("Right Shoulder 2"),
		Character.Torso:FindFirstChild("Left Shoulder 2"),
		Character.Torso:FindFirstChild("Right Hip 2"),
		Character.Torso:FindFirstChild("Left Hip 2")
	}
	local Limbs = {
		Character:FindFirstChild("Right Arm"),
		Character:FindFirstChild("Left Arm"),
		Character:FindFirstChild("Right Leg"),
		Character:FindFirstChild("Left Leg")
	}
	if Joints[Limb] == nil then return false end
	if Limbs[Limb] == nil then return false end
	if Limb == 1 then
		Joints[Limb].Name = "Right Shoulder"
	elseif Limb == 2 then
		Joints[Limb].Name = "Left Shoulder"
	elseif Limb == 3 then
		Joints[Limb].Name = "Right Hip"
	elseif Limb == 4 then
		Joints[Limb].Name = "Left Hip"
	end
	Animate = Character:FindFirstChild("Animate")
	if Animate == nil then return false end
	Animate = Animate:Clone()
	Character.Animate:Remove()
	Animate.Parent = Character
end


function playAnimation(format, mouse)
	if format == "equip" then
		Player.Character.Humanoid.WalkSpeed = WSPenalty
		Player.Character[Name.. " (Holstered)"].Handle.Weld:Remove()
		local w = Instance.new("Weld")
		w.Part0 = Player.Character[Name.. " (Holstered)"].Handle
		w.Part1 = Player.Character:FindFirstChild("Right Arm")
		w.C0 = CFrame.new(0, 1.2, 0.7)
		w.C1 = CFrame.new()
		w.Parent = Player.Character[Name.. " (Holstered)"].Handle
		for i = 0.01, 1, 0.1 do
			if Player.Character:FindFirstChild("Torso") ~= nil then
				if Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil and Player.Character.Torso:FindFirstChild("Right Shoulder 2") ~= nil then
					Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new()
					Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new((-0.5 * i) + (1.5 * (1 - i)), 1.2 * i, 0.8 * i) * CFrame.fromEulerAnglesXYZ(math.rad(300 + ((1 - i) * 50)), math.rad(10), math.rad(-90) * i)
					Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new()
					Player.Character.Torso["Right Shoulder 2"].C1 =  CFrame.new((-0.9 * i) + (-1.5 * (1 - i)), -0.35 * i, 0.51 * i) * CFrame.fromEulerAnglesXYZ(math.rad(-90 * i), math.rad(-5 * i), 0)
					wait()
				else return false end
			else return false end
		end
		return playAnimation("hold")
	end
	if format == "unequip" then
		Player.Character.Humanoid.WalkSpeed = 16
		for i = 1, 0.01, -0.1 do
			if Player.Character:FindFirstChild("Torso") ~= nil then
				if Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil and Player.Character.Torso:FindFirstChild("Right Shoulder 2") ~= nil then
					Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new()
					Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new((-0.5 * i) + (1.5 * (1 - i)), 1.2 * i, 0.8 * i) * CFrame.fromEulerAnglesXYZ(math.rad(300 + ((1 - i) * 50)), math.rad(10), math.rad(-90) * i)
					Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new()
					Player.Character.Torso["Right Shoulder 2"].C1 =  CFrame.new((-0.9 * i) + (-1.5 * (1 - i)), -0.35 * i, 0.51 * i) * CFrame.fromEulerAnglesXYZ(math.rad(-90 * i), math.rad(-5 * i), 0)
					wait()
				else return false end
			else return false end
		end
		return true
	end
	if format == "hold" then
		if Player.Character:FindFirstChild("Torso") ~= nil then
			if Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil and Player.Character.Torso:FindFirstChild("Right Shoulder 2") ~= nil then
				Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new()
				Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(-0.3, 1.2, 0.8) * CFrame.fromEulerAnglesXYZ(math.rad(300), math.rad(10), math.rad(-90))
				Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new()
				Player.Character.Torso["Right Shoulder 2"].C1 =  CFrame.new(-0.9, -0.35, 0.51) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-5), 0)
			else return false end
		else return false end
	end
	if format == "reload" then
		for i = 0, 25, 5 do
			if Player.Character:FindFirstChild("Torso") ~= nil then
				if Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil and Player.Character.Torso:FindFirstChild("Right Shoulder 2") ~= nil then
					Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new()
					Player.Character.Torso["Right Shoulder 2"].C1 =  CFrame.new(-0.9, -0.35, 0.51) * CFrame.fromEulerAnglesXYZ(math.rad(-90 + i), math.rad(-5), 0)
					wait()
				else return false end
			else return false end
		end
		Player.Character[Name].Handle.Reload:Play()
		Player.Character[Name].Handle.Release:Play()
		Player.Character[Name].Magazine.Transparency = 1
		Player.Character[Name].MagazineInt.Transparency = 1		
		magazineDrop = Player.Character[Name].Magazine:Clone()
		magazineDrop.Transparency = 0.3
		magazineDrop.CanCollide = true
		magazineDrop.Parent = game.Workspace
		coroutine.resume(coroutine.create(function(part) wait(4.5) for i = 0, 1, 0.1 do part.Transparency = i wait() end part:Remove() end), magazineDrop)
		delay(0.1, function() magazineDrop.CanCollide = true end)
		for i = 0, 25, 5 do
			if Player.Character:FindFirstChild("Torso") ~= nil then
				if Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil and Player.Character.Torso:FindFirstChild("Right Shoulder 2") ~= nil then
					Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new()
					Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(-0.5 + (i / 60), 1.2 - (i / 20), 0.8 + (i / 35)) * CFrame.fromEulerAnglesXYZ(math.rad(300 - i), math.rad(10 + -i * 3.5), math.rad(-90))
					wait()
				else return false end
			else return false end
		end
		magazineNew = Player.Character[Name].Magazine:Clone()
		magazineNew.Name = "New Magazine" 
		magazineNew.Transparency = 0
		magazineNew.Parent = Player.Character[Name]
		local w = Instance.new("Weld")
		w.Part0 = magazineNew
		w.Part1 = Player.Character:FindFirstChild("Left Arm")
		w.C0 = CFrame.new(0, 1.1, 0)
		w.C1 = CFrame.new() * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
		w.Parent = magazineNew
		wait(0.2)
		for i = 25, 0, -5 do
			if Player.Character:FindFirstChild("Torso") ~= nil then
				if Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil and Player.Character.Torso:FindFirstChild("Right Shoulder 2") ~= nil then
					Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new()
					Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(-0.3 + ((i + 10) / 60), 1.2 - ((i + 10) / 20), 0.8 + (i / 35)) * CFrame.fromEulerAnglesXYZ(math.rad(300 - (i - 10)), math.rad(10 + -i * 3.5), math.rad(-90))
					Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new()
					Player.Character.Torso["Right Shoulder 2"].C1 =  CFrame.new(-0.9 + ((25 - i) / 30), -0.35, 0.51 + ((25 - i) / 25)) * CFrame.fromEulerAnglesXYZ(math.rad(-90 + i), math.rad(-5), math.rad((25 * 2) - (i * 2)))
					wait()
				else return false end
			else return false end
		end
		Player.Character[Name].Magazine.Transparency = 0.3
		Player.Character[Name].MagazineInt.Transparency = 0
		Player.Character[Name]["New Magazine"]:Remove()
		wait(0.1)
		if Player.Character:FindFirstChild("Torso") ~= nil then
			if Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil and Player.Character.Torso:FindFirstChild("Right Shoulder 2") ~= nil then
				Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new()
				Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(-0.3, 1.2, 0.8) * CFrame.fromEulerAnglesXYZ(math.rad(300), math.rad(10), math.rad(-90))
				Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new()
				Player.Character.Torso["Right Shoulder 2"].C1 =  CFrame.new(-0.9, -0.35, 0.51) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-5), 0)
			else return false end
		else return false end
		Player.Character[Name].Handle.Reload:Stop()
		wait(0.2)
		if magazine.Value == 0 or Jammed == true then
			playAnimation("charge")
		end
	end
	if format == "charge" then
		Player.Character[Name].Handle.Weld:Remove()
		local w = Instance.new("Weld")
		w.Part0 = Player.Character[Name].Handle
		w.Part1 = Player.Character:FindFirstChild("Left Arm")
		w.C0 = CFrame.new(-0.85, -0.5, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(-15), math.rad(90), 0)
		w.C1 = CFrame.new() * CFrame.fromEulerAnglesXYZ(math.rad(50), 0, 0)
		w.Parent = Player.Character[Name].Handle
		if Player.Character:FindFirstChild("Torso") ~= nil then
			if Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil and Player.Character.Torso:FindFirstChild("Right Shoulder 2") ~= nil then
				Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new()
				Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(-0.55, 1.2, 0.8) * CFrame.fromEulerAnglesXYZ(math.rad(300), math.rad(10), math.rad(-90))
			else return false end
		else return false end
		wait(0.2)
		Player.Character[Name].Handle.Action:Play()			
		for i = 0, 1, 0.25 do
			if Player.Character:FindFirstChild("Torso") ~= nil then
				if Player.Character.Torso:FindFirstChild("Right Shoulder 2") ~= nil then
					Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new()
					Player.Character.Torso["Right Shoulder 2"].C1 =  CFrame.new(-1.2, 0.5 - (i / 1.7), 0.835) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-5), 0)
					wait()
				else return false end
			else return false end
		end
		if magazine.Value ~= 0 then
			Player.Character[Name].Bolt.Mesh.Offset = Vector3.new(0, 0.25, 0)
			Player.Character[Name].BoltH.Mesh.Offset = Vector3.new(-0.25, 0, 0)	
		end
		if magazine.Value ~= 0 then
			makeShell(Player.Character[Name]:FindFirstChild("ShellOut"))	
		else end	
		Jammed = false
		wait(0.1)
		Player.Character[Name].Bolt.Mesh.Offset = Vector3.new(0, 0, 0)
		Player.Character[Name].BoltH.Mesh.Offset = Vector3.new(0, 0, 0)			
		wait(0.1)
		removeParts("RightHand")
		makeParts("RightHand")
		Player.Character[Name].Bolt.Mesh.Offset = Vector3.new(0, 0, 0)
		Player.Character[Name].BoltH.Mesh.Offset = Vector3.new(0, 0, 0)					
		Player.Character[Name].MagazineInt.Transparency = 0			
		playAnimation("hold")
		return true			
	end
	if format == "fire" then
		Player.Character[Name].Bolt.Mesh.Offset = Vector3.new(0, 0.25, 0)
		Player.Character[Name].BoltH.Mesh.Offset = Vector3.new(-0.25, 0, 0)			
		makeShell(Player.Character[Name]:FindFirstChild("ShellOut"))
		if Player.Character[Name]:FindFirstChild("Handle") ~= nil then
			if silenced then
				Player.Character[Name].Handle.Fire2.Volume = math.random(3, 8) / 10
				Player.Character[Name].Handle.Fire2.Pitch = math.random(2.4, 3)
				Player.Character[Name].Handle.Fire2:Play()
				CamShake(10, 90000)
			else
				Player.Character[Name].Handle.Fire.Volume = math.random(9, 10) / 10
				Player.Character[Name].Handle.Fire.Pitch = math.random(1.6, 1.8)
				Player.Character[Name].Handle.Fire:Play()
				CamShake(10, 70000)
			end
		else return false end
		if Player.Character[Name]:FindFirstChild("Muzzle") ~= nil then
			if silenced == false then
				coroutine.resume(coroutine.create(function() Player.Character[Name].Muzzle.Smoke.Enabled = true Player.Character[Name].Muzzle.Fire.Enabled = true wait(0.1) Player.Character[Name].Muzzle.Smoke.Enabled = false Player.Character[Name].Muzzle.Fire.Enabled = false end))
			else end
		else return false end
		for i = 0, 6, 3 do
			if Player.Character:FindFirstChild("Torso") ~= nil then
				if Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil and Player.Character.Torso:FindFirstChild("Right Shoulder 2") ~= nil then
					Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new()
					Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(-0.3, 1.2, 0.8) * CFrame.fromEulerAnglesXYZ(math.rad(300), math.rad(10 + i), math.rad(-90))
					Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new()
					Player.Character.Torso["Right Shoulder 2"].C1 =  CFrame.new(-0.9, -0.35, 0.51) * CFrame.fromEulerAnglesXYZ(math.rad(-90 - i), math.rad(-5), 0)
					wait()
				else return false end
			else return false end
		end
		if magazine.Value ~= 0 then
			Player.Character[Name].Bolt.Mesh.Offset = Vector3.new(0, 0, 0)
			Player.Character[Name].BoltH.Mesh.Offset = Vector3.new(0, 0, 0)			
		elseif magazine.Value == 0 then
			Player.Character[Name].MagazineInt.Transparency = 1
			Player.Character[Name].Handle.Lock:Play()
		end
		if math.random(1, Reliability) == 1 then 
			Jammed = true
			Player.Character[Name].Handle.Jam:Play()			
		end		
		for i = 6, 0, -3 do
			if Player.Character:FindFirstChild("Torso") ~= nil then
				if Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil and Player.Character.Torso:FindFirstChild("Right Shoulder 2") ~= nil then
					Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new()
					Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(-0.3, 1.2, 0.8) * CFrame.fromEulerAnglesXYZ(math.rad(300), math.rad(10 + i), math.rad(-90))
					Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new()
					Player.Character.Torso["Right Shoulder 2"].C1 =  CFrame.new(-0.9, -0.35, 0.51) * CFrame.fromEulerAnglesXYZ(math.rad(-90 - i), math.rad(-5), 0)
					wait()
				else return false end
			else return false end
		end
	end
	if format == "silence" then
		Player.Character[Name].Handle.Jam:Play()
		if Player.Character:FindFirstChild("Torso") ~= nil then
			if Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil and Player.Character.Torso:FindFirstChild("Right Shoulder 2") ~= nil then
				Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new()
				Player.Character.Torso["Right Shoulder 2"].C1 =  CFrame.new(-0.9, -0.6, 0.51) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-5), 0)
			else return false end
		else return false end		
		for i = 0, 10, 1.5 do
			if Player.Character:FindFirstChild("Torso") ~= nil then
				if Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil then
					Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new()
					Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(-0.9, 1.4 - (i / 25), 0.8) * CFrame.fromEulerAnglesXYZ(math.rad(290), 0, math.rad(-90))
					wait()
				end
			end
		end
		for i = 10, 0, -1.5 do
			if Player.Character:FindFirstChild("Torso") ~= nil then
				if Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil then
					Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new()
					Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(-0.9, 1.4 - (i / 25), 0.8) * CFrame.fromEulerAnglesXYZ(math.rad(290), 0, math.rad(-90))
					wait()
				end
			end
		end
		playAnimation("hold")
		return
	end
	if format == "attachment" then
		Player.Character[Name].Handle.Switch:Play()
		for i = 0, 10, 5 do
			if Player.Character:FindFirstChild("Torso") ~= nil then
				if Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil then
					Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new()
					Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(-0.5 - (i / 25), 1.2, 0.8) * CFrame.fromEulerAnglesXYZ(math.rad(300 - i), math.rad(10 - i), math.rad(-90))
					wait()
				end
			end
		end
		for i = 10, 0, -5 do
			if Player.Character:FindFirstChild("Torso") ~= nil then
				if Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil then
					Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new()
					Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(-0.5 - (i / 25), 1.2, 0.8) * CFrame.fromEulerAnglesXYZ(math.rad(300 - i), math.rad(10 - i), math.rad(-90))
					wait()
				end
			end
		end
	end
	if format == "switch" then
		for i = 10, 0, -3 do
			if Player.Character:FindFirstChild("Torso") ~= nil then
				if Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil and Player.Character.Torso:FindFirstChild("Right Shoulder 2") ~= nil then
					Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new()
					Player.Character.Torso["Right Shoulder 2"].C1 =  CFrame.new(-1 + (i / 30), -0.35, 0.51 + (i / 25)) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-5), math.rad((25 * 2) - ((25 - i) * 2)))
					wait()
				else return false end
			else return false end
		end	
	end	
	return true
end


function CamShake(time, freq)
	coroutine.resume(coroutine.create(function()
		local cam = game:GetService("Workspace").CurrentCamera
		local time = 10
		local seed = Vector3.new(math.random(100, 200) / freq, math.random(100, 200) / freq, 0)
		if math.random(1, 2) == 1 then seed = Vector3.new(-seed.x, seed.y, 0) end
		if math.random(1, 2) == 1 then seed = Vector3.new(seed.x, -seed.y, 0) end
		cam.CoordinateFrame = (CFrame.new(cam.Focus.p) * (cam.CoordinateFrame - cam.CoordinateFrame.p) * CFrame.fromEulerAnglesXYZ(seed.x * time, seed.y * time, 0)) * CFrame.new(0, 0, (cam.CoordinateFrame.p - cam.Focus.p).magnitude)
		for i = 1, time do
			cam.CoordinateFrame = (CFrame.new(cam.Focus.p) * (cam.CoordinateFrame - cam.CoordinateFrame.p) * CFrame.fromEulerAnglesXYZ(-seed.x, -seed.y, 0)) * CFrame.new(0, 0, (cam.CoordinateFrame.p - cam.Focus.p).magnitude)
			wait()
		end
	end))
end


function makeShell(part)
	if part == nil then return false end
	local casing = Instance.new("Part")
	casing.Name = "Shell"
	casing.formFactor = "Custom"
	casing.Size = Vector3.new(0.2, 0.25, 0.2)
	casing.CFrame = CFrame.new(part.Position) * CFrame.fromEulerAnglesXYZ(math.rad(math.random(0, 360)), math.rad(math.random(0, 360)), math.rad(math.random(0, 360)))
	casing.BrickColor = BrickColor.new("New Yeller")
	local mesh = Instance.new("CylinderMesh")
	mesh.Scale = Vector3.new(0.3, 1, 0.3)
	mesh.Parent = casing
	casing.Parent = game:GetService("Workspace")
	casing:BreakJoints()
	casing.Velocity = (part.CFrame.lookVector * 50) + Vector3.new(0, 10, 0)
	coroutine.resume(coroutine.create(function() wait(4.5) for i = 0, 1, 0.1 do casing.Transparency = i wait() end casing:Remove() end))
end


function Weld(x, y)
	local weld = Instance.new("Weld")
	weld.Part0 = x
	weld.Part1 = y
	CJ = CFrame.new(x.Position)
	C0 = x.CFrame:inverse() * CJ
	C1 = y.CFrame:inverse() * CJ
	weld.C0 = C0
	weld.C1 = C1
	weld.Parent = x
end


function tagHumanoid(humanoid)
	local tag = Instance.new("ObjectValue")
	tag.Name = "creator"
	tag.Value = Player
	tag.Parent = humanoid
	local tag = Instance.new("StringValue")
	tag.Name = "creatorType1"
	tag.Value = Name
	tag.Parent = humanoid
	local tag = Instance.new("StringValue")
	tag.Name = "creatorType2"
	tag.Value = "shot"
	tag.Parent = humanoid
end


function untagHumanoid(humanoid)
	if humanoid ~= nil then
		local tag = humanoid:FindFirstChild("creator")
		if tag ~= nil then
			tag:Remove()
		end
		local tag = humanoid:FindFirstChild("creatorType1")
		if tag ~= nil then
			tag:Remove()
		end
		local tag = humanoid:FindFirstChild("creatorType2")
		if tag ~= nil then
			tag:Remove()
		end
	end
end


function fire(startPoint, endPoint, hit)
	local trail = Instance.new("Part")
	trail.Name = "Bullet Trail"
	trail.BrickColor = BrickColor.new("Dark stone grey")
	trail.TopSurface = 0
	trail.BottomSurface = 0
	trail.formFactor = 0
	trail.Size = Vector3.new(1, 1, 1)
	trail.Transparency = 0.5
	trail.Anchored = true
	trail.CanCollide = false
	trail.CFrame = CFrame.new((startPoint + endPoint) / 2, endPoint)
	trail.Parent = game:GetService("Workspace")
	local mesh = Instance.new("SpecialMesh")
	mesh.MeshType = "Brick"
	mesh.Scale = Vector3.new(0.1, 0.1, (startPoint - endPoint).magnitude)
	mesh.Parent = trail
	coroutine.resume(coroutine.create(function(part) for i = 1, 10 do part.Mesh.Scale = Vector3.new(part.Mesh.Scale.x - 0.01, part.Mesh.Scale.y - 0.01, part.Mesh.Scale.z) wait() end part:Remove() end), trail)
	if hit ~= nil then
		if hit.Parent == nil then return end
		if hit.Parent.ClassName == "Hat" then
			if hit.Parent.Parent.Humanoid ~= nil then
				hit.Parent.Parent.Humanoid:TakeDamage(damage * 5)
			end
		end
		if hit.Parent:FindFirstChild("Humanoid") ~= nil then
			tagHumanoid(hit.Parent.Humanoid)
			if hit.Name == "Head" then
				hit.Parent.Humanoid:TakeDamage(damage * 10)
			elseif hit.Name == "Torso" then
				hit.Parent.Humanoid:TakeDamage(damage * 2)
			elseif hit.Name == "Left Leg" then
				hit.Parent.Humanoid:TakeDamage(damage)	
				hit.Parent.Humanoid.Sit = true	
			elseif hit.Name == "Right Leg" then
				hit.Parent.Humanoid:TakeDamage(damage)	
				hit.Parent.Humanoid.Sit = true								
			else
				hit.Parent.Humanoid:TakeDamage(damage)
			end
			if math.random(1, 10) == 1 then
				hit.Parent.Humanoid.Sit = true
			end
			delay(0.1, function() untagHumanoid(hit.Parent.Humanoid) end)
		end
		if hit.Anchored == false then
			hit.Velocity = hit.Velocity + ((endPoint - startPoint).unit * (damage * 2))
		end
	end
end



function onButton1Down(mouse)
	if selected == false then return end
	if Player.Character:FindFirstChild(Name) ~= nil and Button1Down == false and canFire == true and (function() if dual == true then if Player.Character:FindFirstChild(Name.. " (Left)") ~= nil then return true else return false end else return true end end)() == true then
		if Player.Character[Name]:FindFirstChild("Handle") == nil then return end
		if Player.Character[Name]:FindFirstChild("Muzzle") == nil then return end
		if dual == true then if Player.Character[Name.. " (Left)"]:FindFirstChild("Handle") == nil then return end end
		if dual == true then if Player.Character[Name.. " (Left)"]:FindFirstChild("Muzzle") == nil then return end end
		mouse.Icon = "http://www.roblox.com/asset/?id=59125642"
		Button1Down = true
		canFire = false
		canFire2 = true
		while canFire2 == true do
			local humanoid = Player.Character:FindFirstChild("Humanoid")
			if humanoid == nil then
				canFire2 = false
				break
			end
			if humanoid.Health <= 0 then
				canFire2 = false
				break
			end
			local fireLeft = false
			if automatic == false and burst == false then
				canFire2 = false
			elseif automatic == false and burst == true then
				if burstCount >= burstCountMax then
					canFire2 = false
					burstCount = 0
					break
				end
				burstCount = burstCount + 1
			elseif automatic == true and burst == false then
				fireLeft = true
			end
			if Jammed ~= true then
				if magazine.Value > 0 then
					magazine.Value = magazine.Value - 1
					updateGui()
					if silenced == true then
						CamShake(1, Spread)
					else end		
					fire(Player.Character[Name].Muzzle.Position, mouse.Hit.p, mouse.Target)
					coroutine.resume(coroutine.create(function()
						if dual == true then
							playAnimation("rightFire")
						elseif dual == false then
							playAnimation("fire")
						end
					end))
				else
					Player.Character[Name].Handle.Empty:Play()
				end
			else
				Player.Character[Name].Handle.Jam:Play()	
			end
			if fireLeft == true and dual == true and automatic == true then
				if magazine.Value > 0 then
					coroutine.resume(coroutine.create(function()
						wait(readyTime / 2)
						magazine.Value = magazine.Value - 1
						updateGui()
						fire(Player.Character[Name.. " (Left)"].Muzzle.Position, mouse.Hit.p, mouse.Target)
						playAnimation("leftFire")
					end))
				else
					coroutine.resume(coroutine.create(function()
						wait(readyTime / 2)
						Player.Character[Name].Handle.Empty:Play()
					end))
				end
			end
			wait(readyTime)
		end
		if magazine.Value ~= 0 then
			mouse.Icon = "http://www.roblox.com/asset/?id=59125633"
		else end
		canFire = true
	end
end


function onButton1Up(mouse)
	if selected == false then return end
	Button1Down = false
	canFire2 = false
	burstCount = 0
	while canFire == false do wait() end
	if dual == true and automatic == false then
		if Player.Character[Name.. " (Left)"]:FindFirstChild("Handle") == nil then return end
		if Player.Character[Name.. " (Left)"]:FindFirstChild("Muzzle") == nil then return end
		mouse.Icon = "http://www.roblox.com/asset/?id=59125642"
		canFire = false
		canFire2 = true
		while canFire2 == true do
			local humanoid = Player.Character:FindFirstChild("Humanoid")
			if humanoid == nil then
				canFire2 = false
				break
			end
			if humanoid.Health <= 0 then
				canFire2 = false
				break
			end
			if burst == false then
				canFire2 = false
			elseif burst == true then
				if burstCount >= burstCountMax then
					canFire2 = false
					burstCount = 0
					break
				end
				burstCount = burstCount + 1
			end
			if magazine.Value <= 0 then
				Player.Character[Name].Handle.Empty:Play()
			else
				coroutine.resume(coroutine.create(function()
					playAnimation("leftFire")
				end))
				magazine.Value = magazine.Value - 1
				updateGui()
				fire(Player.Character[Name.. " (Left)"].Muzzle.Position, mouse.Hit.p, mouse.Target)
			end
			wait(readyTime)
		end
		if magazine.Value ~= 0 then
			mouse.Icon = "http://www.roblox.com/asset/?id=59125633"
		else end
		canFire = true
	end
end


function onKeyDown(key, mouse)
	if selected == false then return end
	key = key:lower()
	if key == "q" and Button1Down == false and canFire == true then
		if mouse.Target == nil then return end
		if game:GetService("Players"):GetPlayerFromCharacter(mouse.Target.Parent) ~= nil then
			if dual == true then onKeyDown("t", mouse) end
			onDeselected(mouse)
			removeParts("RightHolster")
			script.Parent.Parent = game:GetService("Players"):GetPlayerFromCharacter(mouse.Target.Parent).Backpack
		end
	end
	if key == "e" and Button1Down == false and canFire == true and canSilence == true then
		canFire = false
		playAnimation("silence")
		if silenced then
			silenced = false
			if Player.Character:FindFirstChild(Name) == nil then return end
			if Player.Character[Name]:FindFirstChild("Muzzle") == nil then return end
			if Player.Character[Name]:FindFirstChild("Muzzle 2") == nil then return end
			Player.Character[Name].Muzzle.Transparency = 1
			Player.Character[Name].Muzzle.Name = "Silencer"
			Player.Character[Name]["Muzzle 2"].Name = "Muzzle"
			if dual == true then
				if Player.Character[Name.. " (Left)"]:FindFirstChild("Muzzle") == nil then return end
				if Player.Character[Name.. " (Left)"]:FindFirstChild("Muzzle 2") == nil then return end
				Player.Character[Name.. " (Left)"].Muzzle.Transparency = 1
				Player.Character[Name.. " (Left)"].Muzzle.Name = "Silencer"
				Player.Character[Name.. " (Left)"]["Muzzle 2"].Name = "Muzzle"
			end
		else
			silenced = true
			if Player.Character:FindFirstChild(Name) == nil then return end
			if Player.Character[Name]:FindFirstChild("Silencer") == nil then return end
			if Player.Character[Name]:FindFirstChild("Muzzle") == nil then return end
			Player.Character[Name].Silencer.Transparency = 0
			Player.Character[Name].Muzzle.Name = "Muzzle 2"
			Player.Character[Name].Silencer.Name = "Muzzle"
			if dual == true then
				if Player.Character[Name.. " (Left)"]:FindFirstChild("Silencer") == nil then return end
				if Player.Character[Name.. " (Left)"]:FindFirstChild("Muzzle") == nil then return end
				Player.Character[Name.. " (Left)"].Silencer.Transparency = 0
				Player.Character[Name.. " (Left)"].Muzzle.Name = "Muzzle 2"
				Player.Character[Name.. " (Left)"].Silencer.Name = "Muzzle"
			end
		end
		canFire = true
	end
	if key == "r" and Button1Down == false and canFire == true then
		if ammo.Value > 0 and magazine.Value ~= magazineMax.Value + 1 then
			canFire = false
			burstCount = 0
			mouse.Icon = "http://www.roblox.com/asset/?id=59125642"
			if magazine.Value > 0 then magazine.Value = 1 end
			updateGui()
			if dual == true then
				playAnimation("reloadDual")
			elseif dual == false then
				playAnimation("reload")
			end
			if ammo.Value - magazineMax.Value < 0 then
				magazine.Value = ammo.Value
				ammo.Value = 0
			elseif ammo.Value - magazineMax.Value >= 0 then
				ammo.Value = ammo.Value - magazineMax.Value
				magazine.Value = magazine.Value + magazineMax.Value
			end
			updateGui()
			mouse.Icon = "http://www.roblox.com/asset/?id=59125633"
			canFire = true
		end
	end
	if key == "t" and Button1Down == false and canFire == true and canDual == true then
		canFire = false
		if dual == false then
			local weapon = nil
			for _, p in pairs(Player.Backpack:GetChildren()) do
				if p.Name == Name and p ~= script.Parent then weapon = p break end
			end
			if weapon ~= nil then
				dual = true
				weapon.Name = "Dual"
				weapon.Parent = script
				silenced = false
				removeParts("RightHand")
				makeParts("RightHand")
				removeParts("RightHolster")
				makeParts("LeftHolster")
				playAnimation("leftEquip")
				removeParts("LeftHolster")
				makeParts("LeftHand")
				magazineMax.Value = math.ceil(magazineMax.Value * 2)
				ammoMax.Value = math.ceil(ammoMax.Value * 2)
				magazine.Value = magazine.Value + weapon.Magazine.Value
				ammo.Value = ammo.Value + weapon.Ammo.Value
				updateGui()
			end
		elseif dual == true then
			local weapon = script:FindFirstChild("Dual")
			if weapon ~= nil then
				dual = false
				weapon.Name = Name
				weapon.Parent = Player.Backpack
				silenced = false
				removeParts("RightHand")
				makeParts("RightHand")
				playAnimation("leftUnequip")
				removeParts("LeftHand")
				makeParts("RightHolster")
				playAnimation("hold")
				weapon.Magazine.Value = math.floor(magazine.Value / 2)
				weapon.Ammo.Value = math.floor(ammo.Value / 2)
				magazineMax.Value = math.ceil(magazineMax.Value / 2)
				ammoMax.Value = math.ceil(ammoMax.Value / 2)
				magazine.Value = math.ceil(magazine.Value / 2)
				ammo.Value = math.ceil(ammo.Value / 2)
				updateGui()
			end
		end
		canFire = true
	end
	if key == "y" and canZoom == true then
		if zoom == false then
			zoom = true
			local pos = mouse.Hit.p
			local target = mouse.Target
			local cam = game:GetService("Workspace").CurrentCamera
			focus = Instance.new("Part", workspace)
			focus.Anchored = true
			focus.CanCollide = false
			focus.Transparency = 1
			focus.TopSurface = 0
			focus.BottomSurface = 0
			focus.formFactor = "Plate"
			focus.Size = Vector3.new(0, 0, 0)
			focus.CFrame = CFrame.new(pos) * (CFrame.new(Player.Character.Torso.CFrame.p, pos) - CFrame.new(Player.Character.Torso.CFrame.p, pos).p)
			cam.CameraSubject = focus
			cam.CameraType = "Attach"
			while zoom == true and selected == true do
				local set = false
				if target ~= nil then
					if target.Parent ~= nil then
						if target.Anchored == false then
							focus.CFrame = CFrame.new(target.CFrame.p) * (CFrame.new(Player.Character.Torso.CFrame.p, target.CFrame.p) - CFrame.new(Player.Character.Torso.CFrame.p, target.CFrame.p).p)
							set = true
						end
					end
				end
				if set == false then
					focus.CFrame = CFrame.new(pos) * (CFrame.new(Player.Character.Torso.CFrame.p, pos) - CFrame.new(Player.Character.Torso.CFrame.p, pos).p)
				end
				wait()
			end
			if focus ~= nil then focus:Remove() focus = nil end
			local cam = game:GetService("Workspace").CurrentCamera
			cam.CameraSubject = Player.Character:FindFirstChild("Humanoid")
			cam.CameraType = "Custom"
		else
			zoom = false
		end
	end
	if key == "u" and Button1Down == false and canFire == true then
		playAnimation("switch")
		if automatic == false and burst == false then
			if switchToBurst == true then
				burst = true
				local m = Instance.new("Message", Player)
				m.Text = "Burst"
				pcall(function() Player.Character[Name].Handle.Switch:Play() end)
				delay(2.5, function() m:Remove() end)
			elseif switchToAutomatic == true then
				automatic = true
				local m = Instance.new("Message", Player)
				m.Text = "Automatic"
				pcall(function() Player.Character[Name].Handle.Switch:Play() end)
				delay(2.5, function() m:Remove() end)
			end
		elseif automatic == false and burst == true then
			if switchToAutomatic == true then
				automatic = true
				burst = false
				local m = Instance.new("Message", Player)
				m.Text = "Automatic"
				pcall(function() Player.Character[Name].Handle.Switch:Play() end)
				delay(2.5, function() m:Remove() end)
			elseif switchToSingle == true then
				burst = false
				local m = Instance.new("Message", Player)
				m.Text = "Single"
				pcall(function() Player.Character[Name].Handle.Switch:Play() end)
				delay(2.5, function() m:Remove() end)
			end
		elseif automatic == true and burst == false then
			if switchToSingle == true then
				automatic = false
				local m = Instance.new("Message", Player)
				m.Text = "Single"
				pcall(function() Player.Character[Name].Handle.Switch:Play() end)
				delay(2.5, function() m:Remove() end)
			elseif switchToBurst == true then
				automatic = false
				burst = true
				local m = Instance.new("Message", Player)
				m.Text = "Burst"
				pcall(function() Player.Character[Name].Handle.Switch:Play() end)
				delay(2.5, function() m:Remove() end)
			end
		end
	end
	if key == "c" and Button1Down == false and canFire == true then
		if magazine.Value ~= 0 then
			canFire = false
			burstCount = 0
			mouse.Icon = "http://www.roblox.com/asset/?id=59125642"
			if magazine.Value ~= 0 then magazine.Value = magazine.Value - 1 end
			updateGui()
			playAnimation("charge")
			mouse.Icon = "http://www.roblox.com/asset/?id=59125633"
			canFire = true
		end
	end		
end


function onSelected(mouse)
	if selected == true then return end
	selected = true
	Holstered = false
	canFire = false
	mouse.Icon = "http://www.roblox.com/asset/?id=59125642"
	while Player.Character:FindFirstChild("WeaponActivated") ~= nil do
		if Player.Character.WeaponActivated.Value == nil then break end
		if Player.Character.WeaponActivated.Value.Parent == nil then break end
		wait()
	end
	updateGui()
	local weapon = Instance.new("ObjectValue")
	weapon.Name = "WeaponActivated"
	weapon.Value = script.Parent
	weapon.Parent = Player.Character
	DisableLimb(1, Player.Character)
	DisableLimb(2, Player.Character)
	ForceAngle(1, 0, Player.Character)
	ForceAngle(2, 0, Player.Character)
	if dual == true then
		coroutine.resume(coroutine.create(function() playAnimation("leftEquip") end))
		playAnimation("rightEquip")
		removeParts("LeftHolster")
		makeParts("LeftHand")
	else
		playAnimation("equip")
	end
	removeParts("RightHolster")
	makeParts("RightHand")
	mouse.Button1Down:connect(function() onButton1Down(mouse) end)
	mouse.Button1Up:connect(function() onButton1Up(mouse) end)
	mouse.KeyDown:connect(function(key) onKeyDown(key, mouse) end)
	mouse.Icon = "http://www.roblox.com/asset/?id=59125633"
	canFire = true
end


function onDeselected(mouse)
	if selected == false then return end
	Button1Down = false
	while canFire == false do
		wait()
	end
	selected = false
	Holstered = true
	if dual == true then
		if math.random(1, 2) == 1 then
			coroutine.resume(coroutine.create(function() playAnimation("leftUnequip") end))
			wait(math.random(1, 10) / 10)
			playAnimation("rightUnequip")
		else
			coroutine.resume(coroutine.create(function() playAnimation("rightUnequip") end))
			wait(math.random(1, 10) / 10)
			playAnimation("leftUnequip")
		end
		removeParts("LeftHand")
		makeParts("LeftHolster")
	else
		playAnimation("unequip")
	end
	removeParts("RightHand")
	makeParts("RightHolster")
	ForceAngle(1, 0, Player.Character)
	ForceAngle(2, 0, Player.Character)
	ResetLimbCFrame(1, Player.Character)
	ResetLimbCFrame(2, Player.Character)
	EnableLimb(1, Player.Character)
	EnableLimb(2, Player.Character)
	if Player.PlayerGui:FindFirstChild(Name) ~= nil then Player.PlayerGui[Name]:Remove() end
	if Player.Character:FindFirstChild("WeaponActivated") ~= nil then
		if Player.Character.WeaponActivated.Value == script.Parent then
			Player.Character.WeaponActivated:Remove()
		end
	end
	while Player.Character:FindFirstChild("WeaponActivated") ~= nil do
		if Player.Character.WeaponActivated.Value == nil then break end
		if Player.Character.WeaponActivated.Value.Parent == nil then break end
		wait()
	end
end


if script.Parent.ClassName ~= "HopperBin" then
	if Player == nil then print("Error: Player not found!") return end
	Tool = Instance.new("HopperBin")
	Tool.Name = Name
	Tool.Parent = Player.Backpack
	script.Name = "Main"
	script.Parent = Tool
end wait() if script.Parent.ClassName == "HopperBin" then
	while script.Parent.Parent.ClassName ~= "Backpack" do
		wait()
	end
	if script.Parent:FindFirstChild("MagazineMax") == nil then
		magazineMax = Instance.new("NumberValue")
		magazineMax.Name = "MagazineMax"
		magazineMax.Value = 10
		magazineMax.Parent = script.Parent
	else
		magazineMax = script.Parent.MagazineMax
	end
	if script.Parent:FindFirstChild("Magazine") == nil then
		magazine = Instance.new("NumberValue")
		magazine.Name = "Magazine"
		magazine.Value = 0
		magazine.Parent = script.Parent
	else
		magazine = script.Parent.Magazine
	end
	if script.Parent:FindFirstChild("AmmoMax") == nil then
		ammoMax = Instance.new("NumberValue")
		ammoMax.Name = "AmmoMax"
		ammoMax.Value = 260
		ammoMax.Parent = script.Parent
	else
		ammoMax = script.Parent.AmmoMax
	end
	if script.Parent:FindFirstChild("Ammo") == nil then
		ammo = Instance.new("NumberValue")
		ammo.Name = "Ammo"
		ammo.Value = script.Parent.AmmoMax.Value
		ammo.Parent = script.Parent
	else
		ammo = script.Parent.Ammo
	end
	Player = script.Parent.Parent.Parent
	makeParts("RightHolster")
	script.Parent.Selected:connect(onSelected)
	script.Parent.Deselected:connect(onDeselected)
end