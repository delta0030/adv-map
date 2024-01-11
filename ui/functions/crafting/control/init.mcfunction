scoreboard objectives add crafting dummy
scoreboard objectives add craft_tab dummy
scoreboard objectives add display_craft dummy
scoreboard objectives add allow_craft dummy
scoreboard objectives add ingred_count dummy
scoreboard objectives add craft_count dummy
scoreboard players set @s craft_tab 1
tag @s remove actionbar
title @s actionbar ""
title @s times 0 1000 0

function ui:movement/init
summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["menucloud","craft_center"],FallDistance:0.0f}
data modify entity @e[type=area_effect_cloud,tag=craft_center,sort=nearest,limit=1] Rotation set from entity @s Rotation
function ui:movement/summon_markers
function ui:crafting/crafts_list/init
tp @s @e[type=area_effect_cloud,tag=craft_center,sort=nearest,limit=1]

# acts as boolean--player has entered crafting ui
scoreboard players set @s crafting 1