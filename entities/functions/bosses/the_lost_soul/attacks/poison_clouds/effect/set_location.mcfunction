scoreboard objectives add x dummy
scoreboard objectives add y dummy
scoreboard objectives add z dummy

scoreboard objectives add math dummy
scoreboard players set in math -130
scoreboard players set in1 math 130
function rng:range

execute store result score @s x run data get entity @s Pos[0] 100
scoreboard players operation @s x += out math
execute store result entity @s Pos[0] double 0.01 run scoreboard players get @s x

scoreboard players set in math -130
scoreboard players set in1 math 0
function rng:range

execute store result score @s y run data get entity @s Pos[1] 100
scoreboard players operation @s y += out math
execute store result entity @s Pos[1] double 0.01 run scoreboard players get @s y

scoreboard players set in math -130
scoreboard players set in1 math 130
function rng:range

execute store result score @s z run data get entity @s Pos[2] 100
scoreboard players operation @s z += out math
execute store result entity @s Pos[2] double 0.01 run scoreboard players get @s z

tag @s remove new
scoreboard objectives remove x
scoreboard objectives remove y
scoreboard objectives remove z