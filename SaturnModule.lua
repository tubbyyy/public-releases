local SaturnModule = {}
SaturnModule.__index = SaturnModule

-- // Game Services
local StarterGui = game:GetService('StarterGui')
local UserInputService = game:GetService('UserInputService')
local RunService = game:GetService('RunService')
local Players = game:GetService('Players')
local Workspace = game:GetService('Workspace')

-- // Optimisation Variables
local MathHuge = math.huge
local Vector2 = Vector2.new

-- // User/Client Variables
local LocalPlayer = Players.LocalPlayer
local Inset = game:GetService('GuiService'):GetGuiInset().Y
local Mouse = LocalPlayer:GetMouse()
local Camera = Workspace.CurrentCamera

-- // Notification function
function SendNotification(text, title, icon, time)
    StarterGui:SetCore("SendNotification", {
        Title = title,
        Text = text,
        Icon = "rbxassetid://"..icon,
        Duration = time
    })
end

--[[
function FindTarget()
    local Dist,Targ = MathHuge, nil
    for _,v in pairs(Players:GetPlayers()) do
        if v ~= LocalPlayer and v.Character and v.Character:FindFirstChild('Humanoid') and v.Character:FindFirstChild('BodyEffects') and v.Character.Humanoid.Health > 0 then
            
        end
    end
end]]

return SaturnModule
