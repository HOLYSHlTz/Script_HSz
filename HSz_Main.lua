local ScriptLoad = nil
local PlaceId = {}
if game.PlaceId == 8304191830 or game.PlaceId == 8349889591 then
    ScriptLoad = "ArponV2_AA"
elseif game.PlaceId == 14433762945 then
    ScriptLoad = "HSz_ACS_V1"
elseif game.PlaceId == 8304191830 or game.PlaceId == 8349889591 then
    ScriptLoad = "HSz_ADS_V1"
end
local hsz,err = pcall(function ()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/HOLYSHlTz/Script_HSz/main/" .. ScriptLoad .. ".lua"))()
end)

if hsz == false then
    print("Error : " .. err)
end
