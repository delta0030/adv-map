execute if score %phase sts_phase matches 1..2 run scoreboard players set @s base_dmg 15
execute if score %phase sts_phase matches 3 run scoreboard players set @s base_dmg 35
scoreboard players set @s mob_pierce 0

function player:stats/dmg/calc_dmg
advancement revoke @s only player:dmg/sinner/mid