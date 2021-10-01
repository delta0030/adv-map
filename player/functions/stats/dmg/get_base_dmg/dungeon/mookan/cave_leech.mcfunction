scoreboard players set @s base_dmg 3
scoreboard players set @s mob_pierce 0

function player:stats/dmg/calc_dmg
advancement revoke @s only player:dmg/dungeon/mookan/cave_leech
execute as @s if predicate player:random_chance run function player:stats/dmg/get_base_dmg/bleeding/bleeding_init