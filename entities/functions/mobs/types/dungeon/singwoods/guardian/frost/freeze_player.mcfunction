#data modify entity @e[type=armor_stand,tag=swmb1_frost,limit=1] Rotation set from entity @p Rotation
#execute as @a at @s if entity @e[type=minecraft:armor_stand,tag=swmb1_frost,distance=0.01..] run tp @s @e[type=armor_stand,tag=swmb1_frost,limit=1]
execute as @a[tag=ice_damage] at @s run title @s title {"text":"\uE000","font":"entities"}
execute as @a[tag=ice_damage] at @s if entity @e[type=minecraft:armor_stand,tag=swmb1_frost] run tp @s @e[type=armor_stand,tag=swmb1_frost,limit=1,sort=nearest]

execute as @a[tag=ice_damage,scores={player_hp=0}] run tag @s remove ice_damage

execute if entity @e[type=armor_stand,tag=swmb1_frost] run schedule function entities:mobs/types/dungeon/singwoods/guardian/frost/buffer 1t