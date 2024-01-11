###
#                                (Base Damage)^2
#                --------------------------------------------
# FinalDamage =                 5(Defense(100 - Piercing[0,100]))
#                 Base Damage + ----------------------------------
#                                           100
###

# store base stats into vars to modify
scoreboard players operation @s bd1 = @s base_dmg
scoreboard players operation @s bd2 = @s base_dmg
scoreboard players operation @s mp1 = @s mob_pierce
scoreboard players operation @s modified_def = @s base_def
scoreboard players operation @s effective_def = @s base_def
# make pierce stat negative to avoid needing placeholder scoreboard later
scoreboard players operation @s mp1 *= -1 CONSTANTS
execute store result score @s armor_reduction run scoreboard players operation @s mp1 += 100 CONSTANTS
scoreboard players operation @s effective_def *= @s armor_reduction
scoreboard players operation @s bd2 *= 1000 CONSTANTS

# divide 100x to get a percentage, divide 20x to nerf defense
scoreboard players operation @s effective_def *= 1000 CONSTANTS
scoreboard players operation @s effective_def /= 100 CONSTANTS

scoreboard players operation @s bd1 *= 100 CONSTANTS
scoreboard players operation @s bd1 *= @s bd1
scoreboard players operation @s bd2 += @s effective_def

execute store result score @s final_dmg run scoreboard players operation @s bd1 /= @s bd2
scoreboard players operation @s final_dmg /= 10 CONSTANTS

function player:stats/dmg/calc_new_hp