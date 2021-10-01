scoreboard objectives add slampos dummy
scoreboard players set %stop slampos 1
scoreboard players set 32 CONSTANTS 32

execute at @a[sort=nearest,limit=1] run summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Marker:1b,Tags:["boss_1_marker"]}

execute store result score %x slampos run data get entity @s Pos[0] 1000
execute store result score %z slampos run data get entity @s Pos[2] 1000

execute store result score %dx slampos run data get entity @e[type=armor_stand,tag=boss_1_marker,limit=1] Pos[0] 1000
execute store result score %dz slampos run data get entity @e[type=armor_stand,tag=boss_1_marker,limit=1] Pos[2] 1000

scoreboard players operation %dx slampos -= %x slampos
scoreboard players operation %dz slampos -= %z slampos

scoreboard players operation %dx slampos /= 32 CONSTANTS
scoreboard players operation %dz slampos /= 32 CONSTANTS

scoreboard players set %stop slampos 0
#function entities:bosses/globulous/attacks/attack1/boss_launch