scoreboard players operation @s final_dmg *= -1 CONSTANTS
scoreboard players operation @s final_dmg += @s player_hp

# set player health
function player:stats/dmg/hp_final

execute if score @s player_hp matches ..0 run scoreboard players set @s player_hp 0