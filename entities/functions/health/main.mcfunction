execute at @s as @e[tag=mob,distance=..6] at @s run function entities:health/display/init
execute as @e[tag=mob] if score @s mob_health matches ..0 run function entities:health/death