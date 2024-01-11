execute as @e[tag=mdm4] at @s run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 2 0
execute as @e[tag=mdm4] at @s run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 2 1
execute as @e[tag=mdm4_float] at @s run particle dust 0.729 0.188 1.000 1 ~ ~ ~ 1.5 1.5 1.5 0 100 normal

execute as @e[tag=mdm4] at @s if entity @a[distance=..25] run effect give @a[distance=..25] slowness 10 2 true
execute as @e[tag=mdm4] at @s if entity @a[distance=..25] run effect give @a[distance=..25] nausea 10 2 true

kill @e[tag=mdm4_as]