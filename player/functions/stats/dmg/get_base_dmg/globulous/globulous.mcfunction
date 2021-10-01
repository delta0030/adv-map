scoreboard players set @s base_dmg 5
scoreboard players set @s mob_pierce 0

function player:stats/dmg/calc_dmg
advancement revoke @s only player:dmg/globulous/globulous
