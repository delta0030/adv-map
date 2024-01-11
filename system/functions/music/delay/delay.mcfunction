execute as @a run scoreboard players set @s delaypick 0

execute if predicate system:chance_50 as @a run scoreboard players set @s delaypick 3

execute as @a if score @s delaypick matches 0 run function system:music/delay/1
execute as @a if score @s delaypick matches 3 run function system:music/delay/2