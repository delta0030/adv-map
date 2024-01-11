scoreboard players add %descent hellfire 1

# descent / movement

execute if score %descent hellfire matches ..25 run function entities:bosses/sorass_the_sinner/attacks/hellfire/rain/times/25
execute if score %descent hellfire matches 25..40 run function entities:bosses/sorass_the_sinner/attacks/hellfire/rain/times/40
execute if score %descent hellfire matches 40..50 run function entities:bosses/sorass_the_sinner/attacks/hellfire/rain/times/50

execute if score %descent hellfire matches 20.. as @e[type=armor_stand,tag=hb1] at @s run tp @s ~ ~-0.8 ~
execute if score %descent hellfire matches 20.. as @e[type=armor_stand,tag=hb2] at @s run tp @s ~ ~-0.7 ~
execute if score %descent hellfire matches 20.. as @e[type=armor_stand,tag=hb3] at @s run tp @s ~ ~-0.6 ~

execute if score %descent hellfire matches 50.. as @e[type=armor_stand,tag=hb4] at @s run tp @s ~ ~-0.6 ~
execute if score %descent hellfire matches 50.. as @e[type=armor_stand,tag=hb5] at @s run tp @s ~ ~-0.5 ~

execute if score %descent hellfire matches 50..55 as @e[type=armor_stand,tag=hb6] at @s run tp @s ~ ~-0.45 ~
execute if score %descent hellfire matches 55..60 as @e[type=armor_stand,tag=hb6] at @s run tp @s ~ ~-0.5 ~
execute if score %descent hellfire matches 60..65 as @e[type=armor_stand,tag=hb6] at @s run tp @s ~ ~-0.55 ~
execute if score %descent hellfire matches 65..70 as @e[type=armor_stand,tag=hb6] at @s run tp @s ~ ~-0.65 ~

execute as @e[type=armor_stand,tag=hbtrack1] at @s run tp @s ^ ^ ^0.3 facing entity @p[sort=nearest] eyes
execute as @e[type=armor_stand,tag=hbtrack2] at @s run tp @s ^ ^ ^0.275 facing entity @p[sort=nearest] eyes
execute as @e[type=armor_stand,tag=hbtrack3] at @s run tp @s ^ ^ ^0.25 facing entity @p[sort=nearest] eyes
execute as @e[type=armor_stand,tag=hbtrack4] at @s run tp @s ^ ^ ^0.225 facing entity @p[sort=nearest] eyes
execute as @e[type=armor_stand,tag=hbtrack5] at @s run tp @s ^ ^ ^0.2 facing entity @p[sort=nearest] eyes
execute as @e[type=armor_stand,tag=hbtrack6] at @s run tp @s ^ ^ ^0.325 facing entity @p[sort=nearest] eyes

# particles --- hbbtrack is hellbolt big track
execute as @e[type=armor_stand,tag=hbtrack] at @s if predicate entities:chance_5 run particle dust 1.000 0.431 0.961 1 ~ ~ ~ 0.1 0.1 0.1 0 5 normal
execute as @e[type=armor_stand,tag=hbbtrack] at @s if predicate entities:chance_5 run particle dust 1.000 0.431 0.961 1 ~ ~ ~ 0.5 0.5 0.5 0 25 normal
execute if score %descent hellfire matches 50.. as @e[type=armor_stand,tag=hellfire_bolt] at @s run particle dust_color_transition 1.000 0.502 0.059 1 0.369 0.302 0.043 ~ ~ ~ 0.1 0.1 0.1 0 5 force
execute if score %descent hellfire matches 50.. as @e[type=armor_stand,tag=hbbig] at @s run particle dust_color_transition 1.000 0.502 0.059 1 0.369 0.302 0.043 ~ ~ ~ 0.1 0.1 0.1 0 25 force

# detonation
execute as @e[type=armor_stand,tag=hbbig] at @s if entity @a[distance=..3.65] run function entities:bosses/sorass_the_sinner/attacks/hellfire/rain/dmg/big_dmg
execute as @e[type=armor_stand,tag=hbbig] at @s unless block ~ ~-0.1 ~ air run function entities:bosses/sorass_the_sinner/attacks/hellfire/rain/dmg/big_effect
execute as @e[type=armor_stand,tag=hellfire_bolt] at @s if entity @a[distance=..0.65] run function entities:bosses/sorass_the_sinner/attacks/hellfire/rain/dmg/dmg
execute as @e[type=armor_stand,tag=hellfire_bolt] at @s unless block ~ ~-0.1 ~ air run function entities:bosses/sorass_the_sinner/attacks/hellfire/rain/dmg/effect

execute if entity @e[type=armor_stand,tag=hellfire_bolt] run schedule function entities:bosses/sorass_the_sinner/attacks/hellfire/rain/descent 1t

execute unless entity @e[type=armor_stand,tag=hellfire_bolt] run function entities:bosses/sorass_the_sinner/attacks/hellfire/clear