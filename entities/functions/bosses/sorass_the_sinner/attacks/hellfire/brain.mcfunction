execute store result score %angle hellfire run data get entity @e[type=armor_stand,tag=hellfire_part1,limit=1] Rotation[1]

execute store result score %ypos hellfire run data get entity @e[type=armor_stand,tag=hellfire_part1,limit=1] Pos[1] 1000
execute store result entity @e[type=minecraft:armor_stand,tag=hellfire_center,limit=1] Pos[1] double 0.001 run scoreboard players get %ypos hellfire

scoreboard players add %timer hellfire 1

execute if score %angle hellfire matches -45.. as @e[type=minecraft:armor_stand,tag=hellfire_particle] at @s run tp @s ^ ^ ^0.22 ~8 ~-1
execute if score %angle hellfire matches -55..-45 as @e[type=minecraft:armor_stand,tag=hellfire_particle] at @s run tp @s ^ ^ ^0.25 ~6 ~-1
execute if score %angle hellfire matches -65..-55 as @e[type=minecraft:armor_stand,tag=hellfire_particle] at @s run tp @s ^ ^ ^0.3 ~5 ~-1
execute if score %angle hellfire matches -75..-65 as @e[type=minecraft:armor_stand,tag=hellfire_particle] at @s run tp @s ^ ^ ^0.35 ~4 ~-1
execute if score %angle hellfire matches ..-75 unless score %timer hellfire matches 75.. as @e[type=minecraft:armor_stand,tag=hellfire_particle] at @s run tp @s ^ ^ ^0.4 ~3 ~
execute if score %timer hellfire matches 75.. as @e[type=armor_stand,tag=hellfire_particle] at @s run tp @s ^ ^ ^0.4 ~3 ~1
execute if score %angle hellfire matches -45.. as @e[type=minecraft:armor_stand,tag=hellfire_particle] at @s run particle dust_color_transition 1.000 0.502 0.059 1 0.369 0.302 0.043 ~ ~ ~ 0.1 0.1 0.1 0 25 force
execute if score %angle hellfire matches -55..-45 as @e[type=minecraft:armor_stand,tag=hellfire_particle] at @s run particle dust_color_transition 1.000 0.439 0.000 1 0.369 0.227 0.039 ~ ~ ~ 0.1 0.1 0.1 0 5 force
execute if score %angle hellfire matches -65..-55 as @e[type=minecraft:armor_stand,tag=hellfire_particle] at @s run particle dust_color_transition 1.000 0.439 0.000 1 0.369 0.227 0.039 ~ ~ ~ 0.1 0.1 0.1 0 5 force
execute if score %angle hellfire matches -75..-65 as @e[type=minecraft:armor_stand,tag=hellfire_particle] at @s run particle dust_color_transition 1.000 0.565 0.000 1 0.369 0.302 0.043 ~ ~ ~ 0.1 0.1 0.1 0 5 force
execute if score %angle hellfire matches ..-75 as @e[type=minecraft:armor_stand,tag=hellfire_particle] at @s run particle dust_color_transition 1.000 0.565 0.000 1 0.369 0.302 0.043 ~ ~ ~ 0.1 0.1 0.1 0 5 force

execute if score %timer hellfire matches 110 run function entities:bosses/sorass_the_sinner/attacks/hellfire/rain/init
execute if entity @e[type=armor_stand,tag=hellfire_particle] run schedule function entities:bosses/sorass_the_sinner/attacks/hellfire/brain 1t