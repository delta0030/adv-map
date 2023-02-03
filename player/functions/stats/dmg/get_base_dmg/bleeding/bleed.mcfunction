execute as @a[tag=bleeding] run function player:stats/dmg/get_base_dmg/bleeding
execute as @a at @s if entity @a[tag=bleeding] run schedule function player:stats/dmg/get_base_dmg/bleeding/bleed 30t