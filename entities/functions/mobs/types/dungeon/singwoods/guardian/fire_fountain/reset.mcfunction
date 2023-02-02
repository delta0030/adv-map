execute as @e[type=armor_stand,tag=swmb1_fire] at @s unless block ~ ~-0.78 ~ air run kill @s

execute if entity @e[type=armor_stand,tag=swmb1_fire] run schedule function entities:mobs/types/dungeon/singwoods/guardian/fire_fountain/reset 1t