tag @s add aurora_user

execute at @s run summon armor_stand ~ ~ ~ {Tags:["aurora_1","new"]}
execute at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["aurora_2","new"]}

scoreboard objectives add math dummy
scoreboard objectives add phi dummy
scoreboard objectives add theta dummy
scoreboard objectives add t dummy
scoreboard objectives add orb_velocity dummy

execute as @e[tag=aurora_1,tag=new] at @s run function items:weapons/magic/aurora/set_vals