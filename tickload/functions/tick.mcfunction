execute as @a unless score @s new_gear_id matches 0 at @s run function player:gear/add_gear
effect give @a saturation 1000000 255 true
execute as @a run function player:stats/control/main
execute as @a run function entities:health/main
execute as @a run function scoreboards:main
execute as @a at @s if score @s crafting matches 1 run function ui:crafting/control/main
execute as @a at @s if score @s campfire matches 1 run function ui:campfire/control/main
execute as @a[tag=headlock] run function ui:movement/rotation_lock/main
execute as @a run function player:movement/check
execute as @a run function ui:maps/add
execute as @a run function items:check_item
execute as @a run function items:weapons/summoner/check_summon
function engine:main
execute if entity @e[type=experience_orb] run kill @e[type=experience_orb]
execute as @a if score @s bossfight matches 0 run function system:music/detect
function system:music/defaultdisable
function entities:mobs/types/dungeon/singwoods/spawn/main
execute as @a at @s if score @s singwoodsdun matches 1 if score %door singwoodsdun matches 0 run function entities:mobs/types/dungeon/singwoods/extra/hidden_door/main
execute store result score %playercount HealthScale if entity @a[gamemode=!spectator]
tp @e[type=slime,tag=!new_mob,tag=!mob,tag=!boss_1,tag=!boss_1_summon,tag=!ss,tag=!boss_1_dmg] ~ ~-10000 ~
execute if entity @a[scores={potion_sickness=1..}] run scoreboard players remove @a potion_sickness 1
execute as @a[tag=potcooldown] run function items:consumable/potions/healing/cooldown_display

function system:npc/zprivate/main