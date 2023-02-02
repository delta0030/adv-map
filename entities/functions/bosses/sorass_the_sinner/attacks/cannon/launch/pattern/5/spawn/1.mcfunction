execute at @e[type=zombie_villager,tag=boss_3] run summon armor_stand ~ ~1.25 ~ {Small:1b,Invisible:1b,Invulnerable:1b,Tags:["sts_cannonProj1","sts_cannonProj"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;2055737214,-577484236,-1716227250,-1139153209],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMThhYjVmOWVlOWUyZDNkYzY2NjdmZTM4YjA3ZWNhMzQ0OTc1NDA5ZGFlZjRmY2RlMTk4MTRjNTYzZjQxZTc3NiJ9fX0="}]}}}}]}

execute as @e[type=armor_stand,tag=sts_cannonProj1] at @s run tp @s ~ ~ ~ facing entity @e[type=armor_stand,tag=can_mark_1,limit=1] eyes

execute as @e[type=zombie_villager,tag=boss_3] store result score @s motion_lvl run data get entity @s Pos[1]
execute as @e[type=armor_stand,tag=can_mark_1] store result score @s motion_lvl run data get entity @s Pos[1]
execute as @e[type=armor_stand,tag=sts_cannonProj1] store result score @s motion_lvl run scoreboard players operation @e[type=armor_stand,tag=can_mark_1,limit=1] motion_lvl -= @e[type=zombie_villager,tag=boss_3,limit=1] motion_lvl

execute as @e[type=armor_stand,tag=sts_cannonProj1,tag=!motion_added] run function entities:bosses/sorass_the_sinner/attacks/cannon/launch/pattern/apply/1