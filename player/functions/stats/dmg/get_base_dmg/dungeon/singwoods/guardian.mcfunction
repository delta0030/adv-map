execute if entity @e[type=vindicator,tag=swmb1,tag=!statBoost] run scoreboard players set @s base_dmg 8
execute if entity @e[type=vindicator,tag=swmb1,tag=!statBoost] run scoreboard players set @s mob_pierce 3

execute if entity @e[type=vindicator,tag=swmb1,tag=statBoost] run scoreboard players set @s base_dmg 12
execute if entity @e[type=vindicator,tag=swmb1,tag=statBoost] run scoreboard players set @s mob_pierce 5

function player:stats/dmg/calc_dmg
advancement revoke @s only player:dmg/dungeon/singwoods/guardian