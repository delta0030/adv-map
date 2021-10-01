#data modify entity @e[type=armor_stand,tag=swmb1_frost,limit=1] Rotation set from entity @p Rotation
#execute as @a at @s if entity @e[type=minecraft:armor_stand,tag=swmb1_frost,distance=0.01..] run tp @s @e[type=armor_stand,tag=swmb1_frost,limit=1]
execute as @p[tag=ice_damage] at @s if entity @e[type=minecraft:armor_stand,tag=swmb1_frost] run tp @s @e[type=armor_stand,tag=swmb1_frost,limit=1]

execute if entity @e[type=armor_stand,tag=swmb1_frost] run schedule function entities:mobs/types/dungeon/singwoods/guardian/frost/buffer 1t