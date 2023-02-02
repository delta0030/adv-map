execute as @e[type=witch,tag=mdm4] at @s run particle minecraft:large_smoke ~ ~ ~ 0.5 1 0.5 0 100
execute as @e[type=witch,tag=mdm4] at @s run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~

execute as @a[tag=witch] at @s run spreadplayers ~ ~ 1 10 false @e[type=witch,tag=mdm4]
execute as @e[type=witch,tag=mdm4] at @s run particle minecraft:large_smoke ~ ~ ~ 0.5 1 0.5 0 100

execute as @a[tag=witch] run schedule function entities:mobs/types/dungeon/mookan/bewitching_witch/attacks/teleportation 7.5s