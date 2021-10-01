scoreboard players operation @s base_dmg *= -1 CONSTANTS
scoreboard players operation @s base_dmg += @s mob_health

# set mob health
function entities:dmg/hp_final

execute if score @s mob_health matches ..0 run scoreboard players set @s mob_health 0

# update mob health display
function entities:health/display/init