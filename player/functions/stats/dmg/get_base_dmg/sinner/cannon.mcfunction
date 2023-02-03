scoreboard players set %dmg_var sts_attacks 0
scoreboard players set @s base_dmg 35
scoreboard players set @s iframes 5

scoreboard players set @s mob_pierce 5

function player:stats/dmg/generic_dmg
function player:stats/dmg/calc_dmg
advancement revoke @s only player:dmg/sinner/cannon