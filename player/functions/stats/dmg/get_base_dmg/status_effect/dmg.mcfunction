scoreboard players set @s base_dmg 3
scoreboard players set @s mob_pierce 100

scoreboard players operation @s base_dmg *= @s effect_mult

function player:stats/dmg/calc_dmg
function player:stats/dmg/generic_dmg