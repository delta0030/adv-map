scoreboard players set @s base_dmg 30
scoreboard players set @s mob_pierce 45

tag @s remove fire_blast

function player:stats/dmg/generic_dmg
function player:stats/dmg/calc_dmg
advancement revoke @s only player:dmg/dungeon/mookan/runic_wizard/fire_blast