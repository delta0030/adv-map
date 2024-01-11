# mana regen = (100(max_mana)/7 + 100 + 100(bonus)) * (mana(100)/max_mana * (10)(0.8) + 100(0.2)) * 100(0.58)

scoreboard players set 100 CONSTANTS 100
scoreboard players set 58 CONSTANTS 58
scoreboard players set 10 CONSTANTS 10
scoreboard players set 8 CONSTANTS 8
scoreboard players set 7 CONSTANTS 7
scoreboard players set 133 CONSTANTS 133
scoreboard players set 2 CONSTANTS 2
scoreboard objectives add max_mana_var dummy
scoreboard objectives add max_mana_var2 dummy
scoreboard objectives add bonus_var dummy
scoreboard objectives add mana_var dummy
scoreboard objectives add mana_container dummy
scoreboard objectives add mana_container2 dummy
scoreboard objectives add mana_regen dummy

function player:stats/mana/regen/bonus
scoreboard players operation @s bonus_var *= 100 CONSTANTS

# (max_mana/7 + max_mana/2 + 1 + bonus) = x
scoreboard players operation @s max_mana_var = @s player_max_mana
scoreboard players operation @s max_mana_var *= 100 CONSTANTS
scoreboard players operation @s max_mana_var /= 7 CONSTANTS

scoreboard players operation @s max_mana_var2 = @s player_max_mana
scoreboard players operation @s max_mana_var2 *= 100 CONSTANTS
scoreboard players operation @s max_mana_var2 /= 2 CONSTANTS

scoreboard players add @s max_mana_var 100
scoreboard players operation @s max_mana_var += @s max_mana_var2
scoreboard players operation @s max_mana_var += @s bonus_var
scoreboard players operation @s max_mana_var /= 100 CONSTANTS

# (mana(100)/max_mana * (10)(0.8) = y
scoreboard players operation @s mana_var = @s player_mana
scoreboard players operation @s mana_var *= 100 CONSTANTS
scoreboard players operation @s mana_var /= @s player_max_mana
scoreboard players operation @s mana_var *= 8 CONSTANTS
scoreboard players operation @s mana_var /= 10 CONSTANTS

# (x + 20) * 58
scoreboard players add @s mana_var 20
scoreboard players operation @s mana_var *= 58 CONSTANTS
scoreboard players operation @s mana_var /= 100 CONSTANTS

# x * y
execute store result score @s mana_regen run scoreboard players operation @s max_mana_var *= @s mana_var

scoreboard players operation @s mana_container += @s mana_regen

scoreboard players operation @s mana_container2 = @s mana_container
scoreboard players operation @s mana_container2 /= 1000 CONSTANTS

scoreboard players operation @s player_mana = @s mana_container2
execute if score @s player_mana > @s player_max_mana run scoreboard players operation @s player_mana = @s player_max_mana