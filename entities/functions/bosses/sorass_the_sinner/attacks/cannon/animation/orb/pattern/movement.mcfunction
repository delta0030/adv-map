execute if score %phase sts_phase matches 1 as @e[type=armor_stand,tag=orb_proj] at @s run tp @s ^ ^ ^0.2 facing entity @e[type=armor_stand,tag=orb_low,limit=1]
execute if score %phase sts_phase matches 2 as @e[type=armor_stand,tag=orb_proj] at @s run tp @s ^ ^ ^0.3 facing entity @e[type=armor_stand,tag=orb_low,limit=1]
execute if score %phase sts_phase matches 3 as @e[type=armor_stand,tag=orb_proj] at @s run tp @s ^ ^ ^0.35 facing entity @e[type=armor_stand,tag=orb_low,limit=1]

#execute as @e[type=armor_stand,tag=orb_proj] at @s if entity @e[type=armor_stand,tag=cannon_orb_marker,distance=..0.075] run kill @s
execute as @e[type=armor_stand,tag=orb_proj] at @s if entity @e[type=armor_stand,tag=cannon_orb_marker,dx=0] run kill @s
