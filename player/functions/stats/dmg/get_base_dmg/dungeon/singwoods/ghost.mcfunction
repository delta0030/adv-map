scoreboard players set @s base_dmg 5
scoreboard players set @s mob_pierce 70

function player:stats/dmg/calc_dmg
advancement revoke @s only players:dmg/dungeon/singwoods/ghost