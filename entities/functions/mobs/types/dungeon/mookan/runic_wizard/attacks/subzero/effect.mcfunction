execute as @e[tag=mdm5_frozen] at @s if entity @a[distance=..5] run tag @a[distance=..5] add subzero
effect give @a[tag=subzero] slowness 4 3 true
playsound minecraft:entity.player.death master @a ~ ~ ~ 3 0
playsound minecraft:ui.stonecutter.take_result master @a ~ ~ ~ 1 0
execute as @a[tag=subzero] at @s run function player:stats/dmg/get_base_dmg/dungeon/mookan/runic_wizard/subzero