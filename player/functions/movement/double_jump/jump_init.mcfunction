tag @s add jump_used
tag @s add jump_active
execute at @s run summon boat ~ ~-0.7 ~ {Type:"acacia",Tags:["jump_platform"],Passengers:[{id:"minecraft:armor_stand",Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["platform_passenger"]},{id:"minecraft:armor_stand",Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["platform_passenger"]}]}
execute as @e[type=boat,tag=jump_platform,sort=nearest,limit=1] store result entity @s Pos[1] double 0.015625 run data get entity @s Pos[1] 64.0
playsound minecraft:entity.ender_dragon.flap master @s ~ ~ ~ 0.1 1.2
schedule function player:movement/double_jump/add_velo 2t