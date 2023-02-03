execute if entity @e[type=zombie,tag=armored_zombie,tag=!statBoost] run scoreboard players set @s base_dmg 7
execute if entity @e[type=zombie,tag=armored_zombie,tag=!statBoost] run scoreboard players set @s mob_pierce 0

execute if entity @e[type=zombie,tag=armored_zombie,tag=statBoost] run scoreboard players set @s base_dmg 13
execute if entity @e[type=zombie,tag=armored_zombie,tag=statBoost] run scoreboard players set @s mob_pierce 5

function player:stats/dmg/calc_dmg
advancement revoke @s only player:dmg/dungeon/singwoods/armored_zombie