--[[
	This script will output the number of hoops it finds once it's ready for use.
	Press Q while holding E to shoot or just after to activate it.
	range_min, range_max is the value you want your aimbot to change the shot
	range to. If you change this to 100, 100 you will shoot all perfects.

	Written by big smawk
]]

local player = game:GetService('Players').LocalPlayer
local mouse = player:GetMouse()

local range_min, range_max = 95, 100;

local playerData = player:FindFirstChild('System')
local onTeam = playerData and playerData:FindFirstChild('OnTeam')

local storage = game:GetService('ReplicatedStorage')
local gp = storage.gameplay
local char = gp.character
local val = char.value

local function find(t,i)
    for index, val in next, (t) do
        if (index == i) then
            return true, index, val
        elseif (val == i) then
            return true, index, val
        end
    end
end

local hoops = (function()
    local hs = {},{};

    local rec do
        rec = function(o)
            for __, child in next, (o 'GetChildren') do
                if string.lower(child['Name']):match('hoop') and child:FindFirstChild('Goal') then
                    table.insert(hs, child)
                elseif #child('GetChildren') > 0 then
                    rec(child)
                end
            end
        end
    end
    
    rec(workspace)
     
    return hs
end)()

local getShoot = function()
    local c = player.Character or player.CharacterAdded:wait()
    local hrp = c:WaitForChild('HumanoidRootPart',5)
    if not hrp then print('No humanoid root part.')  return end
        

    local ball;
    for __, obj in next, (workspace 'GetChildren') do
        if obj.Name:lower() == 'basketball'  and obj.controller.Value == player.Name then
            return obj.shoot
        end
    end
end

local getHoop = function()
    local c = player.Character or player.CharacterAdded:wait()
    local hrp = c:WaitForChild('HumanoidRootPart',5)
    if not hrp then print('No humanoid root part.') return end
        
    local last, closest = math.huge;
    for __, hoop in next, (hoops) do
        local goal = hoop:FindFirstChild('Goal')
        
        if goal then
            local dist = (hrp.Position-goal.Position).magnitude
            if dist < last then
                last = dist
                closest = hoop
            end
        end
    end
    return closest
end

local Attack = function(shoot, hoop)
    if shoot and hoop then
       val:FireServer("shooting", true)
       shoot:FireServer(hoop, math.random(range_min,range_max), true)
    end
end

mouse.KeyDown:connect(function(key)
    if key == "q" then
        local shoot = getShoot()
        local hoop = getHoop()
        
        court = hoop.Parent
        local data = court:FindFirstChild('GameData')
        local teamball = data and data:FindFirstChild('TeamBall')

        local h1 = court:FindFirstChild('_Hoop1')
        local h2 = court:FindFirstChild('_Hoop2')
        
        if OnTeam and OnTeam.Value == 1 and h1 then
            Attack(shoot,h1)
            return
        elseif OnTeam and OnTeam.Value == 2  and h2 then
            Attack(shoot,h2)
            return
        end
        
        if teamball and teamball.Value == 1 and h1 then
            Attack(shoot,h1)
            return
        elseif teamball and teamball.Value == 2  and h2 then
            Attack(shoot,h2)
            return
        end
        

       Attack(shoot,hoop)
    end
end)

warn('Morse: ... -.-. .-. .. .--. - . .-. | -..-. -..-. | .--. .-. --- --. .-. .- -- -- . .-.')
warn('Located',#hoops,'hoops.')