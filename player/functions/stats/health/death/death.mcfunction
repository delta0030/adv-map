kill @s
scoreboard objectives add var_hp dummy
scoreboard objectives add rt dummy
scoreboard players set 2 CONSTANTS 2
scoreboard players operation @s var_hp = @s player_max_hp
scoreboard players operation @s var_hp /= 2 CONSTANTS
scoreboard players operation @s player_hp = @s var_hp

scoreboard players set @s rt 0

scoreboard objectives remove var_hp