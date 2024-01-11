execute as @a[tag=ice_damage] run function player:stats/dmg/get_base_dmg/ice_damage
effect give @e[type=vindicator,tag=swmb1,tag=statBoost] glowing 1 1 true
execute as @a at @s if entity @e[type=armor_stand,tag=swmb1_frost] run schedule function entities:mobs/types/dungeon/singwoods/guardian/frost/dmg 10t