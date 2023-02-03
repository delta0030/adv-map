scoreboard players remove @s wither_time 1
execute if score @s wither_time matches 1.. run effect give @s wither 1 0

execute if score @s wither_time matches ..0 run tag @s remove withered
execute if score @s wither_time matches ..0 run effect clear @s wither