playsound minecraft:entity.player.swim master @a ~ ~ ~ 1 2
particle witch ^ ^1 ^ 1 1 1 10 100
particle minecraft:enchant ^ ^1 ^ 0.1 0.1 0.1 10 500
execute as @e[tag=mdm4_hom] at @s anchored eyes if entity @a[distance=..1] run tag @a[distance=..1] add magic_shot
execute as @a[tag=magic_shot] run function player:stats/dmg/get_base_dmg/dungeon/mookan/bewitching_witch/magic_shot

execute as @e[tag=mdm4_hom] at @s anchored eyes if entity @a[distance=..1] run kill @s
execute as @e[tag=mdm4_hom] at @s anchored eyes unless block ^ ^ ^ air run kill @s