execute if score @s player_hp = @s final_dmg run function player:stats/dmg/calc_minor
execute unless score @s player_hp = @s final_dmg run scoreboard players operation @s player_hp = @s final_dmg

# reset regen
scoreboard players set @s rt 0