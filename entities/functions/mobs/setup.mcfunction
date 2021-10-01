tag @s add mob
scoreboard players operation @s mob_health = @s mob_max_health
scoreboard players set @s iframes 0
function entities:health/display/init
tag @s remove new_mob