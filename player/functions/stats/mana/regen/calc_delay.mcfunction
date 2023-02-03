# regen delay = 0.35 * [(1 - mana/max_mana) * 240 + 45]

scoreboard players set 100000 CONSTANTS 100000
scoreboard players set 1000 CONSTANTS 1000
scoreboard players set 240 CONSTANTS 240
scoreboard players set 45 CONSTANTS 45
scoreboard players set 35 CONSTANTS 35
scoreboard players set -1 CONSTANTS -1
scoreboard objectives add mana_var dummy
scoreboard objectives add mana_delay dummy

# (1 - mana/max_mana) = x
scoreboard players operation @s mana_var = @s player_mana
scoreboard players operation @s mana_var *= 1000 CONSTANTS
scoreboard players operation @s mana_var /= @s player_max_mana
scoreboard players operation @s mana_var *= -1 CONSTANTS
scoreboard players add @s mana_var 1000

# x * 240 + 45
scoreboard players operation @s mana_var *= 240 CONSTANTS
scoreboard players add @s mana_var 45000

scoreboard players operation @s mana_var *= 35 CONSTANTS

# clear decimal placeholders for final value
scoreboard players operation @s mana_var /= 100000 CONSTANTS
scoreboard players operation @s mana_delay = @s mana_var

tag @s add mana_delay_calculated