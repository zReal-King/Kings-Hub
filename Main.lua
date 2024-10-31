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

Supported Games:
[1] Evade - https://www.roblox.com/games/9872472334/Evade 
[2] KAT - https://www.roblox.com/games/621129760/KAT
[3] Rainbow Friends - https://www.roblox.com/games/7991339063/Rainbow-Friends
[4] PETS GO! - https://www.roblox.com/games/18901165922/PETS-GO-NEW
[5] Universal - Support All Games

]]
local PlaceID = {
    [9872472334] = "pcall(loadstring(game:HttpGet('https://raw.githubusercontent.com/zReal-King/Evade/main/Main.lua')))",
    [10808838353] = "pcall(loadstring(game:HttpGet('https://raw.githubusercontent.com/zReal-King/Evade/main/Main.lua')))",
    [10539706691] = "pcall(loadstring(game:HttpGet('https://raw.githubusercontent.com/zReal-King/Evade/main/Main.lua')))",
    [10324347967] = "pcall(loadstring(game:HttpGet('https://raw.githubusercontent.com/zReal-King/Evade/main/Main.lua')))",
    [10662542523] = "pcall(loadstring(game:HttpGet('https://raw.githubusercontent.com/zReal-King/Evade/main/Main.lua')))",
    [10324346056] = "pcall(loadstring(game:HttpGet('https://raw.githubusercontent.com/zReal-King/Evade/main/Main.lua')))",
    [621129760] = "pcall(loadstring(game:HttpGet('https://raw.githubusercontent.com/zReal-King/Knife-Ability-Test/main/Gui')))",
    [7991339063] = "pcall(loadstring(game:HttpGet('https://raw.githubusercontent.com/zReal-King/Rainbow-Friends/main/Main.lua')))",
    [13622985049] = "pcall(loadstring(game:HttpGet('https://raw.githubusercontent.com/zReal-King/Rainbow-Friends/main/Main.lua')))",
    [8888615802] = "pcall(loadstring(game:HttpGet('https://raw.githubusercontent.com/zReal-King/Rainbow-Friends/main/Main.lua')))",
    [13622981808] = "pcall(loadstring(game:HttpGet('https://raw.githubusercontent.com/zReal-King/Rainbow-Friends/main/Main.lua')))",
    [18901165922] = "pcall(loadstring(game:HttpGet('https://raw.githubusercontent.com/zReal-King/Pets-Go/refs/heads/main/Main.lua')))",
    [19006211286] = "pcall(loadstring(game:HttpGet('https://raw.githubusercontent.com/zReal-King/Pets-Go/refs/heads/main/Main.lua')))",
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
    [18901165922] = "Pets GO",
    [19006211286] = "Pets GO",
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
