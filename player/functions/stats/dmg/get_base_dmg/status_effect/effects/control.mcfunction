scoreboard objectives add status_timer dummy
scoreboard players add @s status_timer 1
scoreboard players set 15 CONSTANTS 15

scoreboard players operation #temp status_timer = @s status_timer
scoreboard players operation #temp status_timer %= 15 CONSTANTS

execute if entity @s[tag=poisoned] run function player:stats/dmg/get_base_dmg/status_effect/effects/poison/main
execute if entity @s[tag=withered] run function player:stats/dmg/get_base_dmg/status_effect/effects/wither/main

execute if score #temp status_timer matches 0 run function player:stats/dmg/get_base_dmg/status_effect/dmg

execute if entity @s[nbt=!{ActiveEffects:[{Id:19b}]},nbt=!{ActiveEffects:[{Id:20b}]},tag=!poisoned,tag=!withered] run tag @s remove status_effect