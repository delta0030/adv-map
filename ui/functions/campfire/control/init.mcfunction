scoreboard objectives add campfire dummy
scoreboard objectives add campfire_menu dummy
tp @s @e[type=area_effect_cloud,tag=camp_cloud,sort=nearest,limit=1]
function ui:movement/init
execute at @s run function ui:movement/summon_markers
scoreboard players set @s campfire 1
scoreboard players set @s campfire_menu 1