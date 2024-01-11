execute as @e[tag=mdm4] at @s if entity @a[distance=..7] run tag @a[distance=..7] add poison
execute as @a[tag=poison] at @s run function player:stats/dmg/get_base_dmg/poison/poisoning