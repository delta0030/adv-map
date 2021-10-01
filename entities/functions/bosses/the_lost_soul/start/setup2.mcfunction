scoreboard players set @s mob_max_health 300
execute store result bossbar lost_soul max run scoreboard players get @s mob_max_health
function entities:mobs/setup

tp @s ~ ~ ~ facing entity @p
data modify entity @s Rotation[1] set value 0

# make boss invulnerable for rest of spawn animation
tag @s remove mob