playsound minecraft:entity.slime.jump master @a ~ ~ ~ 0.1 1
execute at @e[type=slime,tag=olinked] run particle minecraft:item_slime ~ ~ ~ 0 0 0 0 10 force

scoreboard objectives add g_vec dummy

execute store result score %x g_vec run data get entity @s Pos[0] 1000
execute store result score %y g_vec run data get entity @s Pos[1] 1000
execute store result score %z g_vec run data get entity @s Pos[2] 1000

tp @s ^ ^ ^1

execute store result score %dx g_vec run data get entity @s Pos[0] 1000
execute store result score %dy g_vec run data get entity @s Pos[1] 1000
execute store result score %dz g_vec run data get entity @s Pos[2] 1000

scoreboard players operation %dx g_vec -= %x g_vec
scoreboard players operation %dy g_vec -= %y g_vec
scoreboard players operation %dz g_vec -= %z g_vec

execute store result entity @s Motion[0] double 0.0007 run scoreboard players get %dx g_vec
execute store result entity @s Motion[1] double 0.0003 run scoreboard players get %dy g_vec
execute store result entity @s Motion[2] double 0.0007 run scoreboard players get %dz g_vec

scoreboard objectives remove g_vec