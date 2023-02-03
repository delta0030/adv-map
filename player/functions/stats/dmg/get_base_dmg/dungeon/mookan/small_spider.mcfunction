scoreboard players set @s base_dmg 11
scoreboard players set @s mob_pierce 5

function player:stats/dmg/calc_dmg
advancement revoke @s only player:dmg/dungeon/mookan/spider