scoreboard players operation @s mob_health -= @s dmg2

execute if score @s mob_health matches ..-1 run scoreboard players set @s mob_health 0

tag @s remove mob_dmg