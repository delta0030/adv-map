scoreboard players operation %var base_dmg = @s base_dmg
scoreboard players operation %var base_dmg *= @s mana_percent
scoreboard players operation %var base_dmg /= 100 CONSTANTS
scoreboard players operation @s base_dmg += %var base_dmg
scoreboard players operation @s base_dmg *= -1 CONSTANTS
scoreboard players operation @s base_dmg += @s mob_health

# set mob health
function entities:dmg/hp_final

execute if score @s mob_health matches ..0 run scoreboard players set @s mob_health 0
execute if score @s mob_health matches 0 as @a if score @s player_id = @e[tag=mob,tag=dmg,limit=1] player_id run scoreboard players operation @s levelingPoints += @e[tag=mob,tag=dmg,limit=1] levelingPoints

# update mob health display
function entities:health/display/init