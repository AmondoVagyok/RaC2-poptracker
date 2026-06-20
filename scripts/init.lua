ENABLE_DEBUG_LOG = true
Tracker:AddItems("items/items.json")
ScriptHost:LoadScript("scripts/items_import.lua")
ScriptHost:LoadScript("scripts/utils.lua")
ScriptHost:LoadScript("scripts/logic_helpers.lua")

Tracker:AddMaps("maps/maps.json")

-- Layout
ScriptHost:LoadScript("scripts/layouts_import.lua")
Tracker:AddLayouts("layouts/items.json")
Tracker:AddLayouts("layouts/tabs.json")
Tracker:AddLayouts("layouts/tracker.json")
Tracker:AddLayouts("layouts/broadcast.json")
Tracker:AddLayouts("layouts/planets.json")
Tracker:AddLayouts("layouts/settings.json")
Tracker:AddLayouts("layouts/settings_popup.json")
Tracker:AddLayouts("layouts/weapons.json")

-- Locations
ScriptHost:LoadScript("scripts/locations_import.lua")

print("------------------------DEBUG-----------------------")
-- Table of All Planets
Planets = {
    "Oozla",
    "Maktar",
	"Endako",
	"Barlow",
    "Feltzin",
    "Notak",
    "Siberius",
    "Tabora",
    "Dobbo",
    "Hrugis",
    "Joba",
    "Todano",
    "Boldan",
    "Aranos",
    "Gorn",
	"Snivelak",
    "Smolg",
    "Damosel",
    "Grelbin",
	"Yeedil"
}
print("Planet list: " .. Planets[1])
for _, name in pairs(Planets) do
---@type JsonItem
---@diagnostic disable-next-line: assign-type-mismatch
	local infobot = Tracker:FindObjectForCode(name)
	print("Checking: " .. name)
	infobot.BadgeText = string.sub(name, 1, 10)
	infobot:SetOverlayFontSize(12)
	infobot:SetOverlayAlign("center")
end

-- AutoTracking for Poptracker
if PopVersion and PopVersion >= "0.18.0" then
    ScriptHost:LoadScript("scripts/autotracking.lua")
end