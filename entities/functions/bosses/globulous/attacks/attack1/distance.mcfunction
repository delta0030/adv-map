scoreboard objectives add targetx dummy
scoreboard objectives add targetz dummy
scoreboard objectives add globx dummy
scoreboard objectives add globz dummy
scoreboard objectives add bossDist dummy
scoreboard players set @s bossDist 0

execute store result score @s globx run data get entity @e[tag=boss_1_slam_1,limit=1] Pos[0]
execute store result score @s targetx run data get entity @s Pos[0]
execute store result score @s globz run data get entity @e[tag=boss_1_slam_1,limit=1] Pos[2]
execute store result score @s targetz run data get entity @s Pos[2]

scoreboard players operation @s globx -= @s targetx
scoreboard players operation @s globz -= @s targetz

execute if score @s globx matches -2..2 run scoreboard players add @s bossDist 1
execute if score @s globz matches -2..2 run scoreboard players add @s bossDist 1