execute if entity @e[type=skeleton,tag=swmb1_sum,tag=!statBoost] run scoreboard players set @s base_dmg 3
execute if entity @e[type=skeleton,tag=swmb1_sum,tag=!statBoost] run scoreboard players set @s mob_pierce 0

execute if entity @e[type=skeleton,tag=swmb1_sum,tag=statBoost] run scoreboard players set @s base_dmg 7
execute if entity @e[type=skeleton,tag=swmb1_sum,tag=statBoost] run scoreboard players set @s mob_pierce 3

function player:stats/dmg/calc_dmg
advancement revoke @s only player:dmg/dungeon/singwoods/melee_skeleton