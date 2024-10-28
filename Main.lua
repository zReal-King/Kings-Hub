--[[
                                                 .                  .    .
                                           .  *          *           *
                                                \        |         /   .
                               .    .            .      /^\     .              .    .
                                  *    I\   /\    /\  / / \ \  /\    /\   /I    *
                              . .   .  I  \ \/ /\ \ / /     \ \ / /\ \/ /  I .     .
                                       \ I _ _\/_ _ \_\_ _ /_/_ _\/_ _ \_/
                                         \  *  *  *   \ \/ /  *  *  *  /
                                          ` ~ ~ ~ ~ ~  ~\/~ ~ ~ ~ ~ ~ '

                                            Developer: Real King#0001
                                      Discord : https://discord.gg/KhbVuU6465                   
______________________________________________________________________________
Supported Games:
[1] Evade - https://www.roblox.com/games/9872472334/Evade 
[2] KAT - https://www.roblox.com/games/621129760/KAT
[3] Rainbow Friends - https://www.roblox.com/games/7991339063/Rainbow-Friends
[4] Universal - Support All Games

______________________________________________________________________________
]]

local PlaceID = {
    [9872472334] = "pcall(loadstring(game:HttpGet('https://raw.githubusercontent.com/zReal-King/Evade/main/Main.lua')))",  -- Evade Main script
    [10808838353] = "pcall(loadstring(game:HttpGet('https://raw.githubusercontent.com/zReal-King/Evade/main/Main.lua')))",  -- Evade Main script
    [10539706691] = "pcall(loadstring(game:HttpGet('https://raw.githubusercontent.com/zReal-King/Evade/main/Main.lua')))",  -- Evade Main script
    [10324347967] = "pcall(loadstring(game:HttpGet('https://raw.githubusercontent.com/zReal-King/Evade/main/Main.lua')))",  -- Evade Main script
    [10662542523] = "pcall(loadstring(game:HttpGet('https://raw.githubusercontent.com/zReal-King/Evade/main/Main.lua')))",  -- Evade Main script
    [10324346056] = "pcall(loadstring(game:HttpGet('https://raw.githubusercontent.com/zReal-King/Evade/main/Main.lua')))",  -- Evade Main script
    [621129760] = "pcall(loadstring(game:HttpGet('https://raw.githubusercontent.com/zReal-King/Knife-Ability-Test/main/Gui')))",  -- Knife Ability Test script
    [7991339063] = "pcall(loadstring(game:HttpGet('https://raw.githubusercontent.com/zReal-King/Rainbow-Friends/main/Main.lua')))",  -- Rainbow Friends script
    [13622985049] = "pcall(loadstring(game:HttpGet('https://raw.githubusercontent.com/zReal-King/Rainbow-Friends/main/Main.lua')))",  -- Rainbow Friends script
    [8888615802] = "pcall(loadstring(game:HttpGet('https://raw.githubusercontent.com/zReal-King/Rainbow-Friends/main/Main.lua')))",  -- Rainbow Friends script
    [13622981808] = "pcall(loadstring(game:HttpGet('https://raw.githubusercontent.com/zReal-King/Rainbow-Friends/main/Main.lua')))",  -- Rainbow Friends script
}

local PlaceNames = {
    [9872472334] = "Evade",
    [10808838353] = "Evade",
    [10539706691] = "Evade",
    [10324347967] = "Evade",
    [10662542523] = "Evade",
    [10324346056] = "Evade",
    [621129760] = "Knife Ability Test",
    [7991339063] = "Rainbow Friends",
    [13622985049] = "Rainbow Friends",
    [8888615802] = "Rainbow Friends",
    [13622981808] = "Rainbow Friends",
}

local function executeScript(scriptContent, placeId, placeName)
    local success, result = pcall(function() 
        return loadstring(scriptContent)()
    end)

    if not success then
        warn("Error executing script for '" .. placeName .. "' (PlaceId: " .. placeId .. "): " .. result)
    end
end

local currentPlaceId = game.PlaceId

local scriptContent = PlaceID[currentPlaceId]
local placeName = PlaceNames[currentPlaceId]

if scriptContent then
    executeScript(scriptContent, currentPlaceId, placeName)
else
    print("No available script for PlaceId " .. currentPlaceId)
    print("Starting Universal ...")
    local universalScript = "pcall(loadstring(game:HttpGet('https://raw.githubusercontent.com/zReal-King/Universal/refs/heads/main/Main.lua')))"
    executeScript(universalScript, currentPlaceId, "Universal Script")
end
