scoreboard players set @s base_dmg 2
scoreboard players set @s mob_pierce 0

effect give @a[distance=..0.25] blindness 2 3 true
effect give @a[distance=..0.25] slowness 2 3 true

function player:stats/dmg/generic_dmg
function player:stats/dmg/calc_dmg
advancement revoke @s only player:dmg/dungeon/mookan/bat