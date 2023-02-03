scoreboard objectives add math4 dummy
scoreboard objectives add rotation dummy
scoreboard players set in math4 -2000
scoreboard players set in1 math4 2000
function items:weapons/magic/tinder/rng/init/rotation
execute store result score @s rotation run data get entity @s Rotation[0] 100
scoreboard players operation @s rotation += out math4
execute store result entity @s Rotation[0] float 0.01 run scoreboard players get @s rotation

scoreboard players set in math4 -600
scoreboard players set in1 math4 1000
function items:weapons/magic/tinder/rng/init/rotation
execute store result score @s rotation run data get entity @s Rotation[1] 100
scoreboard players operation @s rotation += out math4
execute store result entity @s Rotation[1] float 0.01 run scoreboard players get @s rotation

scoreboard objectives remove rotation
