# clears scoreboards when no projectiles are present
execute unless entity @e[type=armor_stand,tag=fire_bounce] run scoreboard objectives remove f_bounce
execute unless entity @e[type=armor_stand,tag=fire_bounce] run scoreboard objectives remove f_bTime

# particle
execute as @e[type=armor_stand,tag=fire_bounce] at @s run particle flame ~ ~ ~ 0.1 0.1 0.1 0 5

# projectile bouncing
execute as @e[type=minecraft:armor_stand,tag=fire_bounce,limit=1] at @s store result score @s f_bounce run data get entity @e[type=minecraft:armor_stand,tag=fire_bounce,limit=1] OnGround
execute as @e[type=armor_stand,tag=fire_bounce] at @s if score @s f_bounce matches 1 run scoreboard players add @s f_bTime 1
execute as @e[type=armor_stand,tag=fire_bounce] at @s if score @s f_bounce matches 1 run function entities:mobs/types/dungeon/mookan/runic_wizard/attacks/fire_blast/control

# test for collision or degredation of fire blast
execute as @e[type=armor_stand,tag=fire_bounce] at @s if score @s f_bTime matches 5.. run function entities:mobs/types/dungeon/mookan/runic_wizard/attacks/fire_blast/kill
execute as @e[type=armor_stand,tag=fire_bounce] at @s unless block ^ ^ ^0.25 air run function entities:mobs/types/dungeon/mookan/runic_wizard/attacks/fire_blast/kill
execute as @e[type=armor_stand,tag=fire_bounce] at @s if entity @a[distance=..1] run function entities:mobs/types/dungeon/mookan/runic_wizard/attacks/fire_blast/kill

# brain function
execute if entity @e[type=armor_stand,tag=fire_bounce] run schedule function entities:mobs/types/dungeon/mookan/runic_wizard/attacks/fire_blast/brain 1t