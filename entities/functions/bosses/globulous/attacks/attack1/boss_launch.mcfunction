#execute at @e[type=slime,tag=boss_1] run summon minecraft:armor_stand ~ ~5 ~ {Invisible:1b,PersistenceRequired:1b,Motion:[0.0,3.0,0.0],Tags:["boss_1_slam_1"]}
execute at @e[type=slime,tag=boss_1] run summon minecraft:armor_stand ~ ~5 ~ {Invisible:1b,Tags:["boss_1_slam_1"]}
#execute at @a[sort=nearest,limit=1] run summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Marker:1b,Tags:["boss_1_marker"]}
execute as @e[type=armor_stand,tag=boss_1_slam_1] run function entities:bosses/globulous/attacks/attack1/pos

execute as @e[type=minecraft:armor_stand,tag=boss_1_slam_1] at @s run tp @s ~ ~ ~ facing entity @e[type=armor_stand,tag=boss_1_marker,limit=1]

execute if entity @e[type=armor_stand,tag=boss_1_slam_1] run schedule function entities:bosses/globulous/attacks/attack1/boss_slam 32t