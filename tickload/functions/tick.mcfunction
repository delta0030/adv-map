#execute as @a unless score @s new_gear_id matches 0 at @s run function player:gear/add_gear
execute as @a run function player:stats/control/main
execute as @a run function entities:health/main
execute as @a run function scoreboards:main
execute as @a at @s if score @s crafting matches 1 run function ui:crafting/control/main
execute as @a at @s if score @s campfire matches 1 run function ui:campfire/control/main
execute as @a run function player:movement/check
execute as @a run function items:check_item
execute as @a run function items:weapons/summoner/check_summon
function engine:main
execute if entity @e[type=experience_orb] run kill @e[type=experience_orb]
effect give @a saturation 1 10 true
execute as @a[tag=headlock] run function ui:movement/rotation_lock/main

execute as @a run function ui:maps/add