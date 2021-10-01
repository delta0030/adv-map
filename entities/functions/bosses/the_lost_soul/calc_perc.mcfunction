scoreboard objectives add perc_hp dummy
scoreboard objectives add hp_var dummy
scoreboard players operation @s hp_var = @s mob_health
scoreboard players operation @s hp_var *= 100 CONSTANTS
execute store result score @s perc_hp run scoreboard players operation @s hp_var /= @s mob_max_health