# damage chance
scoreboard players set %dmg_var sts_attacks 0
scoreboard players set @s base_dmg 75
execute if predicate entities:chance_33 run scoreboard players set @s base_dmg 125
execute if predicate entities:chance_25 run scoreboard players set @s base_dmg 155
execute if predicate entities:chance_20 run scoreboard players set @s base_dmg 170
execute if predicate entities:chance_20 run scoreboard players set @s base_dmg 190
execute if predicate entities:chance_15 run scoreboard players set @s base_dmg 200
execute if predicate entities:chance_15 run scoreboard players set @s base_dmg 225

execute if entity @e[type=zombie_villager,tag=eotb] run scoreboard players operation %dmg_var sts_attacks = @s base_dmg
execute if entity @e[type=zombie_villager,tag=eotb] run scoreboard players operation %dmg_var sts_attacks *= 25 CONSTANTS
execute if entity @e[type=zombie_villager,tag=eotb] run scoreboard players operation %dmg_var sts_attacks /= 100 CONSTANTS
execute if entity @e[type=zombie_villager,tag=eotb] run scoreboard players operation @s base_dmg += %dmg_var sts_attacks

execute if predicate entities:chance_1 run kill @s
execute if entity @e[type=zombie_villager,tag=eotb] if predicate entities:chance_5 run kill @s
scoreboard players set @s mob_pierce 100

function player:stats/dmg/generic_dmg
function player:stats/dmg/calc_dmg
advancement revoke @s only player:dmg/sinner/calamity