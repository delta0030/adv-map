execute store result score %x f_vec run data get entity @s Pos[0] 1000
execute store result score %y f_vec run data get entity @s Pos[1] 1000
execute store result score %z f_vec run data get entity @s Pos[2] 1000

tp @s ^ ^ ^1

execute store result score %dx f_vec run data get entity @s Pos[0] 1000
execute store result score %dy f_vec run data get entity @s Pos[1] 1000
execute store result score %dz f_vec run data get entity @s Pos[2] 1000

scoreboard players operation %dx f_vec -= %x f_vec
scoreboard players operation %dy f_vec -= %y f_vec
scoreboard players operation %dz f_vec -= %z f_vec

execute store result entity @s Motion[0] double 0.0009 run scoreboard players get %dx f_vec
execute store result entity @s Motion[1] double 0.0007 run scoreboard players get %dy f_vec
execute store result entity @s Motion[2] double 0.0009 run scoreboard players get %dz f_vec

scoreboard objectives remove f_vec