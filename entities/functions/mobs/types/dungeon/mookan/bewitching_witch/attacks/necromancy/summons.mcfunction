execute as @e[type=witch,tag=mdm4,tag=!sum1] at @s positioned ~1 ~ ~ unless entity @e[type=skeleton,tag=mdm4_sum] if score %space1 mdm4_space matches 1 run function entities:mobs/types/dungeon/mookan/bewitching_witch/attacks/necromancy/witch_skeleton
execute as @e[type=witch,tag=mdm4,tag=!sum2] at @s positioned ~1 ~ ~1 unless entity @e[type=skeleton,tag=mdm4_sum] if score %space2 mdm4_space matches 1 run function entities:mobs/types/dungeon/mookan/bewitching_witch/attacks/necromancy/witch_skeleton
execute as @e[type=witch,tag=mdm4,tag=!sum3] at @s positioned ~1 ~ ~-1 unless entity @e[type=skeleton,tag=mdm4_sum] if score %space3 mdm4_space matches 1 run function entities:mobs/types/dungeon/mookan/bewitching_witch/attacks/necromancy/witch_skeleton

execute as @e[type=witch,tag=mdm4,tag=!sum1] at @s unless entity @e[type=skeleton,tag=mdm4_sum] if score %space1 mdm4_space matches 0 run function entities:mobs/types/dungeon/mookan/bewitching_witch/attacks/necromancy/witch_skeleton
execute as @e[type=witch,tag=mdm4,tag=!sum2] at @s unless entity @e[type=skeleton,tag=mdm4_sum] if score %space2 mdm4_space matches 0 run function entities:mobs/types/dungeon/mookan/bewitching_witch/attacks/necromancy/witch_skeleton
execute as @e[type=witch,tag=mdm4,tag=!sum3] at @s unless entity @e[type=skeleton,tag=mdm4_sum] if score %space3 mdm4_space matches 0 run function entities:mobs/types/dungeon/mookan/bewitching_witch/attacks/necromancy/witch_skeleton

scoreboard objectives remove mdm4_space