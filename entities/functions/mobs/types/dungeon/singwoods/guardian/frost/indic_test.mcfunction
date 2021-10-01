execute as @e[type=vindicator,tag=swmb1] at @s run tp @e[type=armor_stand,tag=swmb1_circle] ~ ~0.25 ~
execute as @e[type=minecraft:armor_stand,tag=swmb1_circle] at @s run tp @s ~ ~ ~ ~5 0
execute as @e[type=minecraft:armor_stand,tag=swmb1_circle] at @s run particle minecraft:end_rod ^ ^ ^9 0 0 0 0 1 force
execute as @e[type=minecraft:armor_stand,tag=swmb1_circle] at @s run particle minecraft:end_rod ^ ^ ^-9 0 0 0 0 1 force

execute as @e[type=armor_stand,tag=swmb1_FroRise] at @s run particle minecraft:end_rod ~ ~ ~ 0.25 0 0.25 0.03 1 force
execute as @e[type=armor_stand,tag=swmb1_FroRise] at @s run tp @s ~ ~0.025 ~

execute as @e[type=vindicator,tag=swmb1] at @s run tp @e[type=armor_stand,tag=swmb1_circle1] ~ ~1.75 ~
execute as @e[type=minecraft:armor_stand,tag=swmb1_circle1] at @s run tp @s ~ ~ ~ ~-5 0
execute as @e[type=minecraft:armor_stand,tag=swmb1_circle1] at @s run particle minecraft:firework ^ ^ ^1.2 0 0 0 0 1 force
execute as @e[type=minecraft:armor_stand,tag=swmb1_circle1] at @s run particle minecraft:firework ^ ^ ^-1.2 0 0 0 0 1 force

execute as @e[type=vindicator,tag=swmb1] at @s if entity @a[distance=..9] run tag @p add ice_damage
execute as @e[type=vindicator,tag=swmb1] at @s unless entity @a[distance=..9] run tag @p remove ice_damage

team add swmb1
team modify swmb1 color aqua
team join swmb1 @e[type=vindicator,tag=swmb1]
effect give @e[type=vindicator,tag=swmb1] glowing 100000 1 true

execute if entity @e[type=armor_stand,tag=swmb1_circle] run schedule function entities:mobs/types/dungeon/singwoods/guardian/frost/indic_test 1t