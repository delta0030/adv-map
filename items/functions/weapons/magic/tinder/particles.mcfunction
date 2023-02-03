execute as @e[type=armor_stand,tag=tinder_stand] at @s run particle flame ~ ~ ~ 0.1 0.1 0.1 0 2 force
execute as @e[type=armor_stand,tag=tinder_stand] at @s run tp @s ^0.1 ^ ^1.2 ~ ~4

execute as @e[type=armor_stand,tag=tinder_stand] at @s unless block ~ ~ ~ air run kill @s
execute as @e[type=armor_stand,tag=tinder_stand] if entity @e[type=!player,distance=..0.6] run kill @s
execute as @e[type=armor_stand,tag=tinder_stand] at @s as @e[tag=mob,dx=0,limit=1] run function items:weapons/magic/tinder/dmg

execute if entity @e[type=armor_stand,tag=tinder_stand] run schedule function items:weapons/magic/tinder/particles 1t