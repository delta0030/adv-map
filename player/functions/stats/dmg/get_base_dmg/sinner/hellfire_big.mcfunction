scoreboard players set @s base_dmg 45
scoreboard players set @s mob_pierce 35
scoreboard players set @s iframes 30

execute if entity @e[type=zombie_villager,tag=eotb] run scoreboard players operation %dmg_var sts_attacks = @s base_dmg
execute if entity @e[type=zombie_villager,tag=eotb] run scoreboard players operation %dmg_var sts_attacks *= 25 CONSTANTS
execute if entity @e[type=zombie_villager,tag=eotb] run scoreboard players operation %dmg_var sts_attacks /= 100 CONSTANTS
execute if entity @e[type=zombie_villager,tag=eotb] run scoreboard players operation @s base_dmg += %dmg_var sts_attacks

function player:stats/dmg/generic_dmg
function player:stats/dmg/calc_dmg
advancement revoke @s only player:dmg/sinner/hellfire_big