scoreboard objectives add rt1 dummy
scoreboard players set 6 CONSTANTS 6

scoreboard players operation @s rt1 = @s rt
scoreboard players operation @s rt1 /= 6 CONSTANTS

scoreboard players operation @s ert += @s rt1