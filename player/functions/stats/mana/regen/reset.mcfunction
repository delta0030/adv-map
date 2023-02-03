scoreboard objectives add mana_container dummy
scoreboard objectives add mana_mod dummy
scoreboard objectives add mana_container2 dummy
scoreboard players set 1000 CONSTANTS 1000

scoreboard players operation @s mana_mod = @s player_mana
scoreboard players operation @s mana_mod *= 1000 CONSTANTS
scoreboard players operation @s mana_container = @s mana_mod

scoreboard objectives remove mana_mod