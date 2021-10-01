execute store result score @s rx run data get entity @s Rotation[0] 100
execute store result score @s ry run data get entity @s Rotation[1] 100

execute at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["headlock","new"]}
scoreboard players operation @e[type=area_effect_cloud,tag=headlock,tag=new] oid = @s oid
tag @e[type=area_effect_cloud,tag=headlock,tag=new] remove new

tag @s add headlock