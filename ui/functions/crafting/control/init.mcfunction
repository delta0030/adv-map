scoreboard objectives add crafting dummy
scoreboard objectives add craft_tab dummy
scoreboard players set @s craft_tab 1

function ui:movement/init
summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["menucloud","craft_center"],FallDistance:0.0f}
function ui:movement/summon_markers
function ui:crafting/crafts_list/init
tp @s @e[type=area_effect_cloud,tag=craft_center,sort=nearest,limit=1]

# acts as boolean--player has entered crafting ui
scoreboard players set @s crafting 1