execute as @e[tag=mdm4_hom] at @s anchored eyes facing entity @p eyes positioned ^ ^ ^2 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.5 ~ ~
execute at @e[tag=mdm4_hom] run particle minecraft:witch ^ ^1 ^ 0.1 0.1 0.1 0 5
execute at @e[tag=mdm4_hom] run particle minecraft:enchant ^ ^1 ^ 0.1 0.1 0.1 0 10
execute as @e[tag=mdm4_hom] at @s anchored eyes if entity @a[distance=..1] run function entities:mobs/types/dungeon/mookan/bewitching_witch/attacks/homing_blast/kill
execute as @e[tag=mdm4_hom] at @s anchored eyes unless block ^ ^ ^ air run function entities:mobs/types/dungeon/mookan/bewitching_witch/attacks/homing_blast/kill

execute if entity @e[tag=mdm4_hom] run schedule function entities:mobs/types/dungeon/mookan/bewitching_witch/attacks/homing_blast/brain 1t