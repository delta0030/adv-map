execute as @e[tag=mdm5_sdb] at @s anchored eyes unless block ^ ^ ^0.25 air run playsound minecraft:item.totem.use hostile @a ~ ~ ~ 5 0
execute as @e[tag=mdm5_sdb] at @s anchored eyes if entity @a[distance=..1] run playsound minecraft:item.totem.use hostile @a ~ ~ ~ 3 0
particle minecraft:campfire_cosy_smoke ^ ^ ^ 0.1 0.1 0.1 0 100
particle minecraft:explosion_emitter ^ ^1 ^ 0.1 0.1 0.1 0 5
execute as @e[tag=mdm5_sdb] at @s anchored eyes if entity @a[distance=..1] run tag @a[distance=..1] add sdb
execute if entity @a[distance=..1] as @a[tag=sdb] run function player:stats/dmg/get_base_dmg/dungeon/mookan/runic_wizard/sdb

execute as @e[tag=mdm5_sdb] at @s anchored eyes if entity @a[distance=..1] run kill @s
execute as @e[tag=mdm5_sdb] at @s anchored eyes unless block ^ ^ ^0.25 air run kill @s