scoreboard players set @s delaypick 3
execute if predicate system:chance_50 run scoreboard players set @s delaypick 4

execute if score @s delaypick matches 3 run function system:music/delay/add/3
execute if score @s delaypick matches 4 run function system:music/delay/add/4