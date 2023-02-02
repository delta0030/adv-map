# Projectiles coordinates
execute store result score @s motion_x1 run data get entity @s Pos[0] 1000
execute store result score @s motion_y1 run data get entity @s Pos[1] 1000
execute store result score @s motion_z1 run data get entity @s Pos[2] 1000

# Landing location coordinates
execute store result score @s motion_x2 run data get entity @e[type=armor_stand,tag=can_mark_5,limit=1] Pos[0] 1000
execute store result score @s motion_y2 run data get entity @e[type=armor_stand,tag=can_mark_5,limit=1] Pos[1] 1000
execute store result score @s motion_z2 run data get entity @e[type=armor_stand,tag=can_mark_5,limit=1] Pos[2] 1000

# Find difference between distance coords
scoreboard players operation @s motion_x2 -= @s motion_x1
scoreboard players operation @s motion_y2 -= @s motion_y1
scoreboard players operation @s motion_z2 -= @s motion_z1

execute if score @s motion_y2 matches ..0 run scoreboard players operation @s motion_y2 *= -1 CONSTANTS
#scoreboard players operation @s motion_y2 /= 2 CONSTANTS
#scoreboard players operation @s motion_y2 += 4 CONSTANTS

execute store result entity @s Motion[0] double 0.00035 run scoreboard players operation @s motion_x2 /= 2 CONSTANTS
#data modify entity @s Motion[1] set value 0.65\
#execute store result entity @s Motion[1] double 1.0 run scoreboard players operation @s motion_y2 /= 2 CONSTANTS
execute if score @s motion_lvl matches ..-2 run data modify entity @s Motion[1] set value 0.5
execute if score @s motion_lvl matches -1 run data modify entity @s Motion[1] set value 0.56
execute if score @s motion_lvl matches -0 run data modify entity @s Motion[1] set value 0.65
execute if score @s motion_lvl matches 1 run data modify entity @s Motion[1] set value 0.69
execute if score @s motion_lvl matches 2.. store result entity @s Motion[1] double 0.001 run scoreboard players get @s motion_y2

execute store result entity @s Motion[2] double 0.00035 run scoreboard players operation @s motion_z2 /= 2 CONSTANTS

execute store result score %x_vel motion_y2 run data get entity @s Motion[0] 1000
execute store result score %y_vel motion_y2 run data get entity @s Motion[1] 1000
execute store result score %z_vel motion_y2 run data get entity @s Motion[2] 1000

tag @s add motion_added

execute as @a at @e[type=zombie_villager,tag=boss_3] run function entities:bosses/sorass_the_sinner/attacks/cannon/launch/pattern/apply/sound