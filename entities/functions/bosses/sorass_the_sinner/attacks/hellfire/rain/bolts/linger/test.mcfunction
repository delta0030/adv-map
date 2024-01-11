# independent timer
execute as @e[type=armor_stand,tag=hellfire_linger,nbt={OnGround:1b}] at @s run scoreboard players add @s sts_hfl_timer 1

# conditional player checks
execute as @a at @s if entity @e[type=armor_stand,tag=hellfire_linger,distance=..0.5] run function entities:bosses/sorass_the_sinner/attacks/hellfire/rain/bolts/linger/dmg

# particles [might wanna change the particle to something a little nicer]
execute as @e[type=armor_stand,tag=hellfire_linger] at @s run particle smoke ~ ~ ~ 0.1 0.1 0.1 0 1 force

execute as @e[type=armor_stand,tag=hellfire_linger] at @s unless score @s sts_hfl_timer matches 40.. run particle dust_color_transition 0.612 0.000 0.000 1 0.412 0.000 0.000 ~ ~ ~ 0.1 0.1 0.1 0 3 normal
execute as @e[type=armor_stand,tag=hellfire_linger] at @s if score @s sts_hfl_timer matches 20..40 if predicate entities:50 run particle dust_color_transition 0.612 0.275 0.020 1 0.412 0.169 0.008 ~ ~ ~ 0.1 0.1 0.1 0 3 normal
execute as @e[type=armor_stand,tag=hellfire_linger] at @s if score @s sts_hfl_timer matches 40..80 run particle dust_color_transition 0.612 0.275 0.020 1 0.412 0.169 0.008 ~ ~ ~ 0.1 0.1 0.1 0 3 normal
execute as @e[type=armor_stand,tag=hellfire_linger] at @s if score @s sts_hfl_timer matches 60..80 if predicate entities:50 run particle dust_color_transition 0.612 0.447 0.000 1 0.412 0.271 0.059 ~ ~ ~ 0.1 0.1 0.1 0 3 normal
execute as @e[type=armor_stand,tag=hellfire_linger] at @s if score @s sts_hfl_timer matches 80.. run particle dust_color_transition 0.612 0.447 0.000 1 0.412 0.271 0.059 ~ ~ ~ 0.1 0.1 0.1 0 3 normal

# hfl elimination and loop
execute as @e[type=armor_stand,tag=hellfire_linger] if score @s sts_hfl_timer matches 100.. run kill @s
execute if entity @e[type=armor_stand,tag=hellfire_linger] if entity @e[type=zombie_villager,tag=boss_3] run schedule function entities:bosses/sorass_the_sinner/attacks/hellfire/rain/bolts/linger/buffer 1t