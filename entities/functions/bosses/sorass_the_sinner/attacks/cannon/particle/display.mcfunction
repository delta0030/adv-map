execute if predicate entities:chance_50 run particle minecraft:snowflake ~ ~0.1 ~ 0.75 0.1 0.75 0 1
execute if predicate entities:chance_50 run particle dust 0.541 0.000 0.000 1 ~ ~ ~ 0.95 0.1 0.95 0 5
execute as @e[type=armor_stand,tag=can_mark] at @s run tp @s ~ ~ ~ ~0.25 ~

execute as @e[type=armor_stand,tag=sts_cannonProj] at @s run function entities:bosses/sorass_the_sinner/attacks/cannon/particle/can_part