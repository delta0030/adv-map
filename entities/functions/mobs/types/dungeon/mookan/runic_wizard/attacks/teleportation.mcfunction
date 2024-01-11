execute as @e[type=skeleton,tag=mdm5] at @s run particle minecraft:large_smoke ~ ~ ~ 0.5 1 0.5 0 100
execute as @e[type=skeleton,tag=mdm5] at @s run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 5

execute as @r[tag=run_wiz] at @s run spreadplayers ~ ~ 1 5 false @e[type=skeleton,tag=mdm5]
execute as @e[type=skeleton,tag=mdm5] at @s run particle minecraft:large_smoke ~ ~ ~ 0.5 1 0.5 0 100

execute if entity @e[type=skeleton,tag=mdm5] run schedule function entities:mobs/types/dungeon/mookan/runic_wizard/attacks/teleportation 7s