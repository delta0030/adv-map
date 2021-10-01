scoreboard players set @s base_dmg 2
scoreboard players set @s mob_pierce 0

function player:stats/dmg/calc_dmg
advancement revoke @s only player:dmg/dungeon/singwoods/slime