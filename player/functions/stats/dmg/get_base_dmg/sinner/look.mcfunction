scoreboard players set %dmg_var sts_attacks 0
scoreboard players set @s base_dmg 15

scoreboard players set @s mob_pierce 70

function player:stats/dmg/generic_dmg
function player:stats/dmg/calc_dmg
advancement revoke @s only player:dmg/sinner/look