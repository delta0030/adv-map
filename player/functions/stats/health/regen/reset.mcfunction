scoreboard objectives add hp_container dummy
scoreboard objectives add hp_mod dummy
scoreboard objectives add hp_container2 dummy
scoreboard players set 1000 CONSTANTS 1000

scoreboard players operation @s hp_mod = @s player_hp
scoreboard players operation @s hp_mod *= 1000 CONSTANTS
scoreboard players operation @s hp_container = @s hp_mod

scoreboard objectives remove hp_mod