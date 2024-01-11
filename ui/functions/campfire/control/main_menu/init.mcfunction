### title variants for later (first space must be edited per name of campfire but rest will always work)
# Gear Highlighted: title @s title [{"translate":"space.-35"},"\uE012",{"translate":"space.-250"},"\uE011",{"translate":"space.-45"},"\uE010",{"translate":"space.15"},"\uE00B",{"translate":"space.15"},"\uE00C"]
# Stats Highlighted: title @s title [{"translate":"space.-35"},"\uE012",{"translate":"space.-250"},"\uE011",{"translate":"space.-45"},"\uE00D",{"translate":"space.16"},"\uE00E",{"translate":"space.14"},"\uE00C"]
# Fast Travel Highlighted: title @s title [{"translate":"space.-35"},"\uE012",{"translate":"space.-250"},"\uE011",{"translate":"space.-45"},"\uE00D",{"translate":"space.16"},"\uE00B",{"translate":"space.15"},"\uE00F"]
scoreboard players set @s campfire_click 0
tag @s add in_main

scoreboard objectives add campfire_menu dummy
scoreboard objectives add menu_old dummy
scoreboard players set @s campfire_menu 1
function ui:movement/init

#execute as @e[type=villager,tag=singwoods_rc] at @s run tp @s ~ ~150 ~
tp @s @e[type=area_effect_cloud,tag=camp_cloud,limit=1,sort=nearest]

#execute as @e[type=area_effect_cloud,tag=camp_cloud,limit=1,sort=nearest] at @s run function ui:control/main_menu/move/summon_markers/center
execute at @s run setblock ~ 0 ~ bedrock
execute at @s run setblock ~ 1 ~ oak_sign
execute at @s run setblock ~ 2 ~ shulker_box