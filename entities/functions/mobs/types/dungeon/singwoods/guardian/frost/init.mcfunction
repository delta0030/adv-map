execute as @a at @s if entity @e[type=minecraft:vindicator,tag=swmb1,distance=..9] run tag @s add ice_damage
execute as @a at @s if entity @e[type=minecraft:vindicator,tag=swmb1,distance=9..] run tag @s remove ice_damage
execute as @a at @s if entity @e[type=minecraft:vindicator,tag=swmb1,distance=..9] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Small:1b,Invisible:1b,Tags:["swmb1_frost"]}
data modify entity @e[type=armor_stand,tag=swmb1_frost,limit=1] Rotation set from entity @p Rotation
execute as @a[tag=ice_damage] at @s run function entities:mobs/types/dungeon/singwoods/guardian/frost/freeze_player

execute as @a[tag=ice_damage] at @s run playsound minecraft:entity.zombie_villager.cure master @a ~ ~ ~ 1 1

execute as @a[tag=!ice_damage] at @s run playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 1 2
execute as @e[type=vindicator,tag=swmb1] at @s if entity @a[distance=9..,sort=nearest] run function entities:mobs/types/dungeon/singwoods/guardian/frost/reset

kill @e[type=armor_stand,tag=swmb1_circle]
kill @e[type=armor_stand,tag=swmb1_circle1]
kill @e[type=armor_stand,tag=swmb1_FroRise]

execute as @a[tag=ice_damage] at @s run title @s title {"text":"\uE000","font":"entities"}

execute as @a[tag=ice_damage] at @s run function entities:mobs/types/dungeon/singwoods/guardian/frost/dmg
execute as @a[tag=ice_damage] run schedule function entities:mobs/types/dungeon/singwoods/guardian/frost/reset 3s