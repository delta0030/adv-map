execute as @e[type=stray,tag=bob] at @s run function entities:mobs/types/dungeon/mookan/ghoul/bob

execute as @e[type=bat,tag=mdm3_sum] at @s run function entities:mobs/types/dungeon/mookan/ghoul/bats/hurt

execute if entity @e[type=stray,tag=bob,limit=1] run function entities:mobs/types/dungeon/mookan/ghoul/attack_chance

execute if entity @e[type=stray,tag=bob] run schedule function entities:mobs/types/dungeon/mookan/ghoul/brain 1t
