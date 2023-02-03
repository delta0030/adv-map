execute if entity @e[type=zombie_villager,tag=corrupt_knight] run scoreboard players set @s base_dmg 15
execute if entity @e[type=zombie_villager,tag=corrupt_knight] run scoreboard players set @s mob_pierce 10

function player:stats/dmg/calc_dmg
advancement revoke @s only player:dmg/dungeon/mookan/corrupt_knight