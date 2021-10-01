scoreboard objectives add motion dummy
execute if entity @s[tag=store_motion] store result score @s motion run data get entity @s Motion[1] 10000000
execute if entity @s[tag=store_motion] run tag @s remove store_motion
scoreboard objectives add gravity_var2 dummy
scoreboard players set -2 CONSTANTS -2
scoreboard players set 350000 CONSTANTS 350000
scoreboard players operation @s gravity_var2 = @s gravity
scoreboard players operation @s gravity_var2 *= @s gravity_var2
scoreboard players operation @s gravity_var2 /= -2 CONSTANTS
scoreboard players operation @s gravity_var2 -= 350000 CONSTANTS
scoreboard players operation @s motion += @s gravity_var2

execute store result entity @s Motion[1] double 0.0000001 run scoreboard players get @s motion
scoreboard objectives remove gravity_var2
