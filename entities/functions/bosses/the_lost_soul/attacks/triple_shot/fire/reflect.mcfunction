scoreboard players remove @s raycast_reflect 1

execute unless block ~0.15 ~ ~ air store result entity @s Rotation[0] float -1 run data get entity @s Rotation[0]
execute unless block ~-0.15 ~ ~ air store result entity @s Rotation[0] float -1 run data get entity @s Rotation[0]

execute unless block ~ ~0.15 ~ air store result entity @s Rotation[1] float -1 run data get entity @s Rotation[1]
execute unless block ~ ~-0.15 ~ air store result entity @s Rotation[1] float -1 run data get entity @s Rotation[1]

execute unless block ~ ~ ~0.15 air run function entities:bosses/the_lost_soul/attacks/triple_shot/fire/zplane
execute unless block ~ ~ ~-0.15 air run function entities:bosses/the_lost_soul/attacks/triple_shot/fire/zplane