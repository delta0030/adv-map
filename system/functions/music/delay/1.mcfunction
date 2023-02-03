scoreboard players set @s delaypick 1
execute if predicate system:chance_50 run scoreboard players set @s delaypick 2

execute if score @s delaypick matches 1 run function system:music/delay/add/1
execute if score @s delaypick matches 2 run function system:music/delay/add/2