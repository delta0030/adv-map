scoreboard players set @s base_dmg 35
scoreboard players set @s mob_pierce 35

tag @s remove magic_shot

function player:stats/dmg/generic_dmg
function player:stats/dmg/calc_dmg
advancement revoke @s only player:dmg/dungeon/mookan/bewitching_witch/magic_shot