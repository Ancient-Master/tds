
repeat task.wait() until game:IsLoaded() and Nexus

    if not Nexus.IsConnected then Nexus.Connected:Wait() end
    Nexus.Commands.performance()

local TowersUHave = {}
for i,v in next, game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer("Session", "Search", "Inventory.Troops") do
        table.insert(TowersUHave, i)
end
if table.find(TowersUHave,"Turret")then getfenv().Turret=true end;if table.find(TowersUHave,"Farm")then getfenv().Farm=true end;if table.find(TowersUHave,"Mortar")then getfenv().Mortar=true end;if table.find(TowersUHave,"Ranger")then getfenv().Ranger=true end;if table.find(TowersUHave,"Soldier")then getfenv().Soldier=true end;if table.find(TowersUHave,"Hunter")then getfenv().Hunter=true end;if table.find(TowersUHave,"Ace Pilot")then getfenv().Ace_Pilot=true end;if table.find(TowersUHave,"Medic")then getfenv().Medic=true end;if table.find(TowersUHave,"Pyromancer")then getfenv().Pyromancer=true end;if table.find(TowersUHave,"Paintballer")then getfenv().Paintballer=true end;if table.find(TowersUHave,"DJ Booth")then getfenv().DJ_Booth=true end;if table.find(TowersUHave,"Gladiator")then getfenv().Gladiator=true end;if table.find(TowersUHave,"Accelerator")then getfenv().Accelerator=true end;if table.find(TowersUHave,"Militant")then getfenv().Militant=true end;if table.find(TowersUHave,"Shotgunner")then getfenv().Shotgunner=true end;if table.find(TowersUHave,"Minigunner")then getfenv().Minigunner=true end;if table.find(TowersUHave,"Sniper")then getfenv().Sniper=true end;if table.find(TowersUHave,"Warden ")then getfenv().Warden=true end;if table.find(TowersUHave,"Cowboy")then getfenv().Cowboy=true end;if table.find(TowersUHave,"Military Base")then getfenv().Military_Base=true end;if table.find(TowersUHave,"Freezer")then getfenv().Freezer=true end;if table.find(TowersUHave,"Sledger")then getfenv().Sledger=true end;if table.find(TowersUHave,"Demoman")then getfenv().Demoman=true end;if table.find(TowersUHave,"Elf Camp")then getfenv().Elf_Camp=true end;if table.find(TowersUHave,"Scout")then getfenv().Scout=true end;if table.find(TowersUHave,"Crook Boss")then getfenv().Crook_Boss=true end;if table.find(TowersUHave,"Rocketeer")then getfenv().Rocketeer=true end;if table.find(TowersUHave,"Rocketeer")then getfenv().Rocketeer=true end;if table.find(TowersUHave,"Pursuit")then getfenv().Pursuit=true end;if table.find(TowersUHave,"Engineer")then getfenv().Engineer=true end;if table.find(TowersUHave,"Commander")then getfenv().Commander=true end
-----           --------------------------------------------------------------------------------
-----Level Stuff--------------------------------------------------------------------------------
-----           --------------------------------------------------------------------------------

if game:GetService("Players").LocalPlayer.Level.Value > 49 then
    
    getfenv().Hardcore = true

end

if game:GetService("Players").LocalPlayer.Level.Value > 59 then
    
    getfenv().EngineerBuyAble = true

end

if game:GetService("Players").LocalPlayer.Level.Value > 24 then
    
    getfenv().WasteLand = true

end

wait(0.5)
-----        -----------------------------------------------------------------------------------
-----Buyables-----------------------------------------------------------------------------------
-----        -----------------------------------------------------------------------------------

if getfenv().Soldier == false then
    if game:GetService("Players").LocalPlayer.Coins.Value > 349 then
        local a="Shop"local b="Purchase"local c="tower"local d="Soldier"game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(a,b,c,d)
    end
end

if getfenv().Ace_Pilot == false and getfenv().WasteLand == true then
    --
    if game:GetService("Players").LocalPlayer.Coins.Value > 1499 then
        local a="Shop"local b="Purchase"local c="tower"local d="Ace Pilot"game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(a,b,c,d)
    --
    end
end

if getfenv().Farm == false and getfenv().WasteLand == true then
    --
    if game:GetService("Players").LocalPlayer.Coins.Value > 1999 then
        local a="Shop"local b="Purchase"local c="tower"local d="Farm"game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(a,b,c,d)
    --
    end
end

if getfenv().Freezer == false and getfenv().WasteLand == true then
    --
    if game:GetService("Players").LocalPlayer.Coins.Value > 799 then
        local a="Shop"local b="Purchase"local c="tower"local d="Freezer"game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(a,b,c,d)
    --
    end
end

if getfenv().Military_Base == false and getfenv().Hardcore == true then
    --
    if game:GetService("Players").LocalPlayer.Coins.Value > 2499 then
        local a="Shop"local b="Purchase"local c="tower"local d="Military Base"game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(a,b,c,d)
    --
    end
end

if getfenv().Accelerator == false then
    --
    if game:GetService("Players").LocalPlayer.Gems.Value > 2499 then
        local a="Shop"local b="Purchase"local c="tower"local d="Accelerator"game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(a,b,c,d)
    --
    end
end

if getfenv().Engineer == false then
    --
    if game:GetService("Players").LocalPlayer.Gems.Value > 4499 then
        local a="Shop"local b="Purchase"local c="tower"local d="Engineer"game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(a,b,c,d)
    --
    end
end
-----                                -----------------------------------------------------------
-----Farm Selections / Mode Selection-----------------------------------------------------------
-----                                -----------------------------------------------------------

if getfenv().Hardcore == true and getfenv().Accelerator == true and getfenv().Engineer == true then
    
        getfenv().Gemsdone = true

else 
        getfenv().Gemsdone = false
end



if getfenv().Soldier == false then
    --
    getfenv().ScoutFarm = true
    --
end


if getfenv().Soldier == true then
    --
    getfenv().SoldierFarm = true
    --
end


if getfenv().Ace_Pilot == true and getfenv().Farm == true and getfenv().Freezer == true and getfenv().WasteLand == true then
    --
    getfenv().WasteLandGrind = true
    --
end


if getfenv().Ace_Pilot == true and getfenv().Military_Base == true and getfenv().Freezer == true and getfenv().Hardcore == true then
    --
    getfenv().HardcoreGrind = true
    --
end


if getfenv().Gladiator == true and getfenv().Farm == true and getfenv().Accelerator == true and getfenv().DJ_Booth == true and getfenv().Commander == true then
    --
    getfenv().Gladfarm = true
    --
end


if getfenv().SoldierFarm == true then
    --
    getfenv().ScoutFarm = false
    --
end


if getfenv().WasteLandGrind == true then
    --
    getfenv().ScoutFarm = false
    getfenv().SoldierFarm = false
    --
end


if getfenv().HardcoreGrind == true and getfenv().Gemsdone == false then
    --
    getfenv().ScoutFarm = false
    getfenv().SoldierFarm = false
    getfenv().WasteLandGrind = false
    --
end


if getfenv().Gladfarm == true then
    --
    getfenv().ScoutFarm = false
    getfenv().SoldierFarm = false
    getfenv().WasteLandGrind = false
    --
end

-----                 -------------------------------------------------------------------------------------------
----- Strats / Grinds -------------------------------------------------------------------------------------------
-----                 -------------------------------------------------------------------------------------------
if getfenv().ScoutFarm == true then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Ancient-Master/tds/main/Scout.lua", true))()
end

if getfenv().SoldierFarm == true then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Ancient-Master/tds/main/Soldier.lua", true))()
end

if getfenv().WasteLandGrind == true then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Ancient-Master/tds/main/Waste.lua", true))()
end

if getfenv().HardcoreGrind == true and getfenv().Gemsdone == false then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Ancient-Master/tds/main/HardCore.lua", true))()
end

if getfenv().Gladfarm == true then
loadstring(game:HttpGet("https://raw.githubusercontent.com/Ancient-Master/tds/main/Glad.lua", true))()
end
