function entities:mobs/types/dungeon/mookan/bewitching_witch/attacks/rng/range_lcg
execute as @e[type=witch,tag=mdm4] at @s run function entities:mobs/types/dungeon/mookan/bewitching_witch/atk_seq
execute if entity @e[tag=mdm4] run schedule function entities:mobs/types/dungeon/mookan/bewitching_witch/atk_rng 7.5s