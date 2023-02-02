# descent
execute as @e[type=armor_stand,tag=hb4] at @s run tp @s ~ ~-0.55 ~
execute as @e[type=armor_stand,tag=hb5] at @s run tp @s ~ ~-0.45 ~
execute as @e[type=armor_stand,tag=hb6] at @s run tp @s ~ ~-0.4 ~

# color
execute as @e[type=armor_stand,tag=hellfire_bolt] at @s run particle dust_color_transition 1.000 0.439 0.000 1 0.369 0.227 0.039 ~ ~ ~ 0.1 0.1 0.1 0 5 force
execute as @e[type=armor_stand,tag=hbbig] at @s run particle dust_color_transition 1.000 0.439 0.000 1 0.369 0.227 0.039 ~ ~ ~ 0.1 0.1 0.1 0 25 force

execute if score %descent hellfire matches 45..50 if predicate entities:chance_15 as @e[type=armor_stand,tag=hellfire_bolt] at @s run particle dust_color_transition 1.000 0.502 0.059 1 0.369 0.302 0.043 ~ ~ ~ 0.1 0.1 0.1 0 5 force
execute if score %descent hellfire matches 45..50 if predicate entities:chance_15 as @e[type=armor_stand,tag=hbbig] at @s run particle dust_color_transition 1.000 0.502 0.059 1 0.369 0.302 0.043 ~ ~ ~ 0.1 0.1 0.1 0 25 force