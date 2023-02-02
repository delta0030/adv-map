execute as @e[type=armor_stand,tag=orb_proj_temp] at @e[type=armor_stand,tag=orb_low] run spreadplayers ~ ~ 1 4 false @s

execute store result score %ypos sts_cannon as @e[type=armor_stand,tag=orb_mid] run data get entity @s Pos[1] 1000
execute as @e[type=armor_stand,tag=orb_proj_temp] store result entity @s Pos[1] double 0.001 run scoreboard players get %ypos sts_cannon

tag @e[type=armor_stand,tag=orb_proj_temp] remove orb_proj_temp

execute as @a at @s run playsound entity.puffer_fish.blow_up hostile @s ~ ~ ~ 0.5
execute as @a at @s run playsound minecraft:block.bamboo_wood.break hostile @s ~ ~ ~ 1 0.5