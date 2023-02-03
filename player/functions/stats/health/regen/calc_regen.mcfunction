execute if score @s rt matches 0 run function player:stats/health/regen/reset

scoreboard objectives add ert dummy
scoreboard players set 100 CONSTANTS 100

scoreboard players operation @s ert = @s rt
execute if score @s rt matches ..599 run function player:stats/health/regen/time/ert/0_599
execute if score @s rt matches 600.. run function player:stats/health/regen/time/ert/600_1200

scoreboard players operation @s ert /= 100 CONSTANTS

# R = (mHP / 400 * 0.28 + 0.05) * ert

scoreboard objectives add regeneration dummy
scoreboard objectives add mHP dummy
scoreboard players set 500 CONSTANTS 500
scoreboard players set 1000 CONSTANTS 1000
scoreboard players set 28 CONSTANTS 28
scoreboard players set 2 CONSTANTS 2
scoreboard players set 10 CONSTANTS 10
scoreboard players set 5 CONSTANTS 5
scoreboard players set 4 CONSTANTS 4

scoreboard players operation @s mHP = @s player_max_hp
scoreboard players operation @s mHP /= 500 CONSTANTS
scoreboard players operation @s mHP *= 28 CONSTANTS

scoreboard players operation @s mHP += 5 CONSTANTS
scoreboard players operation @s mHP *= @s ert

scoreboard players operation @s regeneration = @s mHP

# get multiple of max health from baseline to scale regen
scoreboard players operation @s mHP = @s player_max_hp
scoreboard players operation @s mHP /= 2 CONSTANTS
scoreboard players operation @s regeneration *= @s mHP
scoreboard players operation @s regeneration /= 10 CONSTANTS

execute if score @s in_motion matches 1.. run scoreboard players operation @s regeneration /= 5 CONSTANTS

scoreboard players operation @s hp_container += @s regeneration

scoreboard players operation @s hp_container2 = @s hp_container
scoreboard players operation @s hp_container2 /= 1000 CONSTANTS

function player:stats/health/regen/modifiers

scoreboard players operation @s player_hp = @s hp_container2
execute if score @s player_hp > @s player_max_hp run scoreboard players operation @s player_hp = @s player_max_hp
execute if score @s player_hp >= @s player_max_hp run function player:stats/health/regen/clear_scores