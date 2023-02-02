tp @s ^ ^ ^0.7 facing entity @p feet

execute as @e[type=bat,tag=mdm3_sum] at @s if entity @a[distance=..0.25] as @a[distance=..0.25] run function player:stats/dmg/get_base_dmg/dungeon/mookan/bat
execute as @e[type=bat,tag=mdm3_sum] at @s if entity @a[distance=..0.25] run tp @s ~ ~-1000 ~