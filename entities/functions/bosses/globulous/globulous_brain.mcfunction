#Boss mob_healthing
bossbar set globulous players @a
execute as @e[type=slime,tag=boss_1] store result bossbar globulous value run scoreboard players get @s mob_health
execute unless entity @e[type=slime,tag=boss_1,limit=1] run bossbar set globulous visible false
execute unless entity @e[type=slime,tag=boss_1] run kill @e[type=slime]
execute unless entity @e[type=slime,tag=boss_1] run tp @e[type=slime] ~ ~-1000 ~

# summon mob_healthing
execute store result score %live boss_1 if entity @e[type=slime,tag=boss_1_summons]

#Generic non boss mob_healthing
execute unless entity @e[type=slime,tag=boss_1,limit=1] run tp @e[type=slime,tag=!boss_1_summons] ~ ~-1000 ~

# better hitbox
execute as @e[type=slime,tag=boss_1] at @s run tp @e[type=slime,tag=boss_1_dmg1] ^ ^0.5 ^3
execute as @e[type=slime,tag=boss_1] at @s run tp @e[type=slime,tag=boss_1_dmg2] ^ ^0.5 ^-3
execute as @e[type=slime,tag=boss_1] at @s run tp @e[type=slime,tag=boss_1_dmg3] ^3 ^0.5 ^
execute as @e[type=slime,tag=boss_1] at @s run tp @e[type=slime,tag=boss_1_dmg4] ^-3 ^0.5 ^
execute as @e[type=slime,tag=boss_1] at @s run tp @e[type=slime,tag=boss_1_dmg5] ^3 ^0.5 ^2
execute as @e[type=slime,tag=boss_1] at @s run tp @e[type=slime,tag=boss_1_dmg6] ^-3 ^0.5 ^2
execute as @e[type=slime,tag=boss_1] at @s run tp @e[type=slime,tag=boss_1_dmg7] ^2 ^0.5 ^3
execute as @e[type=slime,tag=boss_1] at @s run tp @e[type=slime,tag=boss_1_dmg8] ^2 ^0.5 ^-3
execute as @e[type=slime,tag=boss_1] at @s run tp @e[type=slime,tag=boss_1_dmg9] ^3 ^0.5 ^-2
execute as @e[type=slime,tag=boss_1] at @s run tp @e[type=slime,tag=boss_1_dmg10] ^-3 ^0.5 ^-2
execute as @e[type=slime,tag=boss_1] at @s run tp @e[type=slime,tag=boss_1_dmg11] ^-2 ^0.5 ^3
execute as @e[type=slime,tag=boss_1] at @s run tp @e[type=slime,tag=boss_1_dmg12] ^-2 ^0.5 ^-3

# hitbox

execute as @e[type=slime,tag=boss_1_dmg] store result score @e[type=slime,tag=boss_1_dmg] mob_health run scoreboard players operation @s mob_health < @e[type=slime,tag=boss_1_dmg] mob_health
scoreboard players operation @e[type=slime,tag=boss_1] mob_health = @e[type=slime,tag=boss_1_dmg] mob_health
execute as @e[type=slime,tag=boss_1_dmg] store result score @e[type=slime,tag=boss_1_dmg] mob_health run scoreboard players operation @s mob_health < @e[type=slime,tag=boss_1_dmg] mob_health

execute unless entity @e[type=slime,tag=boss_1_dmg1] run scoreboard players set @e[type=slime,tag=boss_1] mob_health 0
execute unless entity @e[type=slime,tag=boss_1_dmg2] run scoreboard players set @e[type=slime,tag=boss_1] mob_health 0
execute unless entity @e[type=slime,tag=boss_1_dmg3] run scoreboard players set @e[type=slime,tag=boss_1] mob_health 0
execute unless entity @e[type=slime,tag=boss_1_dmg4] run scoreboard players set @e[type=slime,tag=boss_1] mob_health 0
execute unless entity @e[type=slime,tag=boss_1_dmg5] run scoreboard players set @e[type=slime,tag=boss_1] mob_health 0
execute unless entity @e[type=slime,tag=boss_1_dmg6] run scoreboard players set @e[type=slime,tag=boss_1] mob_health 0
execute unless entity @e[type=slime,tag=boss_1_dmg7] run scoreboard players set @e[type=slime,tag=boss_1] mob_health 0
execute unless entity @e[type=slime,tag=boss_1_dmg8] run scoreboard players set @e[type=slime,tag=boss_1] mob_health 0
execute unless entity @e[type=slime,tag=boss_1_dmg9] run scoreboard players set @e[type=slime,tag=boss_1] mob_health 0
execute unless entity @e[type=slime,tag=boss_1_dmg10] run scoreboard players set @e[type=slime,tag=boss_1] mob_health 0
execute unless entity @e[type=slime,tag=boss_1_dmg11] run scoreboard players set @e[type=slime,tag=boss_1] mob_health 0
execute unless entity @e[type=slime,tag=boss_1_dmg12] run scoreboard players set @e[type=slime,tag=boss_1] mob_health 0

#Boss slam
execute as @e[type=armor_stand,tag=boss_1_slam_1] run tp @e[type=slime,tag=boss_1] @s[type=armor_stand,tag=boss_1_slam_1]
execute as @e[type=armor_stand,tag=boss_1_slam_2] run tp @e[type=slime,tag=boss_1] @s[type=armor_stand,tag=boss_1_slam_2]
execute at @e[type=armor_stand,tag=boss_1_slam_1] if entity @e[type=armor_stand,tag=boss_1_slam_1] if block ~ ~ ~ air run scoreboard players set @e[type=armor_stand,tag=boss_1_slam_1] boss_slam 1
execute at @e[type=slime,tag=boss_1] unless block ~ ~-0.5 ~ air run scoreboard players add @e[type=slime,tag=boss_1] boss_slam 1
execute as @e[type=armor_stand,tag=boss_1_slam_1] at @s run tp @s ~ ~1.5 ~
execute if entity @e[type=armor_stand,tag=boss_1_slam_2,scores={boss_slam=5}] run function entities:bosses/globulous/attacks/attack1/slam_effect

execute as @e[type=armor_stand,tag=boss_1_slam_1] if score %stop slampos matches 0 run function entities:bosses/globulous/attacks/attack1/lat

#Death animation
execute as @e[type=slime,tag=boss_1] run tp @e[type=armor_stand,tag=boss_1_position] @s[type=slime,tag=boss_1]
execute unless entity @e[type=slime,tag=boss_1] run function entities:bosses/globulous/death_animation
execute if entity @p[scores={boss_1=3}] unless entity @e[type=slime,tag=boss_1] if entity @e[type=minecraft:armor_stand,tag=boss_1_position] run scoreboard players add @a boss_1_music_T 1

execute unless entity @e[type=slime,tag=boss_1] if entity @e[type=slime,tag=boss_1_position] run schedule function entities:bosses/globulous/killer 1s
execute if entity @e[type=slime,tag=boss_1] run schedule function entities:bosses/globulous/globulous_brain 1t