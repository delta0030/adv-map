execute if score %phase sts_phase matches 1..2 run scoreboard players set @s base_dmg 30
execute if score %phase sts_phase matches 3 run scoreboard players set @s base_dmg 45
scoreboard players set @s mob_pierce 0

execute if entity @e[type=zombie_villager,tag=eotb] run scoreboard players operation %dmg_var sts_attacks = @s base_dmg
execute if entity @e[type=zombie_villager,tag=eotb] run scoreboard players operation %dmg_var sts_attacks *= 25 CONSTANTS
execute if entity @e[type=zombie_villager,tag=eotb] run scoreboard players operation %dmg_var sts_attacks /= 100 CONSTANTS
execute if entity @e[type=zombie_villager,tag=eotb] run scoreboard players operation @s base_dmg += %dmg_var sts_attacks


function player:stats/dmg/calc_dmg
advancement revoke @s only player:dmg/sinner/sorass