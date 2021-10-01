execute store result score %x slampos run data get entity @s Pos[0] 1000
execute store result score %z slampos run data get entity @s Pos[2] 1000

scoreboard players operation %x slampos += %dx slampos
scoreboard players operation %z slampos += %dz slampos

execute store result entity @s Pos[0] double 0.001 run scoreboard players get %x slampos
execute store result entity @s Pos[2] double 0.001 run scoreboard players get %z slampos