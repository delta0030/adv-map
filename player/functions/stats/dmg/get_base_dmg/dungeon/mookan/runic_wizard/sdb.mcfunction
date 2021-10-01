scoreboard players set @s base_dmg 150
scoreboard players set @s mob_pierce 70

tag @s remove sdb

function player:stats/dmg/generic_dmg
function player:stats/dmg/calc_dmg
advancement revoke @s only player:dmg/dungeon/mookan/runic_wizard/sdb