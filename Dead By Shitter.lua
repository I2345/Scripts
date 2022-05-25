local UIlib = loadstring(game:HttpGet("https://gitlab.com/L1ZOT/test-project/-/raw/main/PJM-GUI"))()
local client = game:GetService("Players").LocalPlayer

local globals = getgenv()

globals.SurvivorSprint = false
globals.KillerSprint = false

local Win = UIlib:Window("Made by Luna Karma#0001", "Dead by Roblox")

local KillerOnly = Win:Tab("Killer Only")
--// Killer Stuff

--// windows HumanoidRootPart
--// Lockers1.Panel.User
--// Full bright (Delete atmosphere and Depth of Field)

KillerOnly:Toggle("Undetectable Speed Hacks", false, function(v)
    globals.KillerSprint = v
    if globals.KillerSprint == true then
        client.Backpack.Scripts.Status:FindFirstChild("Bloodlust").Playing = true
    else
        client.Backpack.Scripts.Status:FindFirstChild("Bloodlust").Playing = false
    end
end)

local SurvivorOnly = Win:Tab("Survivor Only")
--// Survivor only
--// Inf Sprint burst? (client.Backpack.Scripts)
--// Turn Killer?

SurvivorOnly:Toggle("Undetectable Speed Hacks", false, function(v)
    globals.SurvivorSprint = v
    if globals.SurvivorSprint == true then
        client.Backpack.Scripts.PerksBase:FindFirstChild("SprintBurst").Playing = true
    else
        client.Backpack.Scripts.PerksBase:FindFirstChild("SprintBurst").Playing = false
    end
end)

local Both = Win:Tab("Both")

Both:Toggle("Turn diffrenet role (WIP)", false, function(t) 
    client.Backpack:FindFirstChild("Scripts").Killer.Value = not client.Backpack:FindFirstChild("Scripts").Killer.Value
end)

Both:Button("Full Bright", function()
    game:GetService("Lighting").Atmosphere:Destroy()
end)

