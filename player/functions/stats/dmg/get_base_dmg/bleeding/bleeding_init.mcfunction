tag @s add bleeding

execute as @a[tag=bleeding] run function player:stats/dmg/get_base_dmg/bleeding/bleed
schedule function player:stats/dmg/get_base_dmg/bleeding/clear 210t