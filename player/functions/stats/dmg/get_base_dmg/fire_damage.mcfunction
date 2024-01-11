scoreboard players set @s base_dmg 3
scoreboard players set @s mob_pierce 70
scoreboard players set @s iframes 3

function player:stats/dmg/generic_dmg
function player:stats/dmg/calc_dmg
advancement revoke @s only player:dmg/fire_damage