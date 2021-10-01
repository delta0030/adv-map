scoreboard players remove %reflect raycast 1

execute unless block ~0.5 ~ ~ air store result entity @s Rotation[0] float -1 run data get entity @s Rotation[0]
execute unless block ~-0.5 ~ ~ air store result entity @s Rotation[0] float -1 run data get entity @s Rotation[0]

execute unless block ~ ~0.5 ~ air store result entity @s Rotation[1] float -1 run data get entity @s Rotation[1]
execute unless block ~ ~-0.5 ~ air store result entity @s Rotation[1] float -1 run data get entity @s Rotation[1]

execute unless block ~ ~ ~0.5 air run function entities:bosses/the_lost_soul/attacks/triple_shot/indicator/zplane
execute unless block ~ ~ ~-0.5 air run function entities:bosses/the_lost_soul/attacks/triple_shot/indicator/zplane

execute rotated as @s run function entities:bosses/the_lost_soul/attacks/triple_shot/indicator/raycast