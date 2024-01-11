execute as @e[type=armor_stand,tag=boss_3_particle] at @s run tp @s ^ ^ ^0.2 facing entity @e[type=armor_stand,tag=boss_3_center,limit=1] eyes
execute as @e[type=armor_stand,tag=boss_3_particle] at @s if entity @e[type=armor_stand,tag=boss_3_center,dx=0] run kill @s
execute as @e[type=armor_stand,tag=boss_3_particle] at @s run particle minecraft:scrape ~ ~ ~ 0.15 0.05 1.05 0 2
execute as @e[type=armor_stand,tag=boss_3_particle] at @s run particle minecraft:totem_of_undying ~ ~ ~ 0.15 0.05 0.15 0 2

execute unless entity @e[type=armor_stand,tag=boss_3_particle] if entity @e[type=zombie_villager,tag=boss_3] as @e[type=armor_stand,tag=boss_3_center] at @s run tp @s ~ ~10 ~

execute if entity @e[type=armor_stand,tag=boss_3_particle] run schedule function entities:bosses/sorass_the_sinner/start/intro/clear 1t