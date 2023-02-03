scoreboard players set @s base_dmg 10
scoreboard players set @s mob_pierce 100

function player:stats/dmg/calc_dmg
advancement revoke @s only player:dmg/lost_soul/tortured_soul