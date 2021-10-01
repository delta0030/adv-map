execute if score @s mob_health = @s base_dmg run function entities:dmg/calc_minor
execute unless score @s mob_health = @s base_dmg run scoreboard players operation @s mob_health = @s base_dmg