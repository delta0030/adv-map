scoreboard players remove @s poison_time 1
execute if score @s poison_time matches 1.. run effect give @s poison 1 0

execute if score @s poison_time matches ..0 run tag @s remove poisoned
execute if score @s poison_time matches ..0 run effect clear @s poison