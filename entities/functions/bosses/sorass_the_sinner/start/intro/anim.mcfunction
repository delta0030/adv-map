execute if score %duration boss_3_intro matches 1.. run scoreboard players remove %duration boss_3_intro 1
execute if score %duration boss_3_intro matches -1 run scoreboard players set %duration boss_3_intro 33

execute as @e[type=armor_stand,tag=boss_3_center] at @s run tp @s ~ ~ ~ ~35 ~

execute if predicate entities:chance_50 at @e[type=armor_stand,tag=boss_3_center] run summon armor_stand ^ ^ ^5 {NoGravity:1b,Small:1b,Invisible:1b,Invulnerable:1b,Tags:["boss_3_particle"]}

execute at @e[type=armor_stand,tag=boss_3_center] run particle minecraft:composter ~ ~ ~ 0.35 2 0.35 0 10
execute at @e[type=armor_stand,tag=boss_3_center] run particle minecraft:snowflake ~ ~ ~ 0.5 2 0.5 0 25

function entities:bosses/sorass_the_sinner/start/intro/clear

execute if score %duration boss_3_intro matches 1.. run schedule function entities:bosses/sorass_the_sinner/start/intro/anim 1t