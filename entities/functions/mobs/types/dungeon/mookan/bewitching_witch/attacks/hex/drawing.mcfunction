# center circle
execute as @e[tag=mdm4_draw] at @s run tp @s ~ ~ ~ ~3.5 ~
execute as @e[tag=mdm4_draw1] at @s run tp @s ~ ~ ~ ~-5 ~
execute as @e[tag=mdm4_draw2] at @s run tp @s ~ ~0.05 ~ ~10 ~
execute at @e[tag=mdm4_draw] run particle minecraft:reverse_portal ^ ^ ^7 0.1 0.1 0.1 0 10
execute at @e[tag=mdm4_draw] run particle minecraft:reverse_portal ^ ^ ^-7 0.1 0.1 0.1 0 10

execute at @e[tag=mdm4_draw1] run particle minecraft:reverse_portal ^ ^ ^4.5 0.1 0.1 0.1 0 10
execute at @e[tag=mdm4_draw1] run particle minecraft:reverse_portal ^ ^ ^-4.5 0.1 0.1 0.1 0 10

execute at @e[tag=mdm4_draw2] run particle minecraft:reverse_portal ^ ^ ^1 0.1 0.1 0.1 0 10
execute at @e[tag=mdm4_draw2] run particle minecraft:reverse_portal ^ ^ ^-1 0.1 0.1 0.1 0 10

# star drawing
execute as @e[tag=mdm4_vis] at @s run particle reverse_portal ~ ~ ~ 0.1 0.1 0.1 0 10
execute as @e[tag=mdm4_vis] at @s run tp @s ^ ^ ^0.25

# finished star
execute as @e[tag=mdm4_drawMark5] at @s if entity @e[tag=mdm4_line3,distance=..0.5] run kill @e[tag=mdm4_line3]
execute as @e[tag=mdm4_drawMark1] at @s if entity @e[tag=mdm4_line4,distance=..0.5] run kill @e[tag=mdm4_line4]
execute as @e[tag=mdm4_drawMark2] at @s if entity @e[tag=mdm4_line5,distance=..0.5] run kill @e[tag=mdm4_line5]
execute as @e[tag=mdm4_drawMark3] at @s if entity @e[tag=mdm4_line1,distance=..0.5] run kill @e[tag=mdm4_line1]
execute as @e[tag=mdm4_drawMark4] at @s if entity @e[tag=mdm4_line2,distance=..0.5] run kill @e[tag=mdm4_line2]

execute unless entity @e[tag=mdm4_vis] run kill @e[tag=mdm4_dum]
execute unless entity @e[tag=mdm4_vis] run kill @e[tag=mdm4_vis]
execute unless entity @e[tag=mdm4_vis] run kill @e[tag=mdm4_draw]
execute unless entity @e[tag=mdm4_vis] run kill @e[tag=mdm4_draw1]
execute unless entity @e[tag=mdm4_vis] run kill @e[tag=mdm4_draw2]

execute if entity @e[tag=mdm4_vis] run schedule function entities:mobs/types/dungeon/mookan/bewitching_witch/attacks/hex/drawing 1t
