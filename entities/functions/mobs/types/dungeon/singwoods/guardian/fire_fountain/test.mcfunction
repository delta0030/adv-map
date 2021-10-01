execute as @e[type=minecraft:armor_stand,tag=swmb1_fire] at @s run particle minecraft:flame ~ ~ ~ 0.1 0.1 0.1 0 5 force
execute as @e[type=armor_stand,tag=swmb1_fire] at @s as @a[distance=..1.25] run tag @s add fire_damage
execute as @e[type=armor_stand,tag=swmb1_fire] at @s as @a[distance=..1.25,tag=fire_damage] run function player:stats/dmg/get_base_dmg/fire_damage
execute as @e[type=armor_stand,tag=swmb1_fire] at @s as @a[distance=1.3..] run tag @s remove fire_damage

execute if entity @e[type=armor_stand,tag=swmb1_fire] run schedule function entities:mobs/types/dungeon/singwoods/guardian/fire_fountain/buffer 1t