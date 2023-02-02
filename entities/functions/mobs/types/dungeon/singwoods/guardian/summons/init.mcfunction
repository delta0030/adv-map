scoreboard objectives add swmb1_space dummy
scoreboard players set %space1 swmb1_space 0
scoreboard players set %space2 swmb1_space 0
scoreboard players set %space3 swmb1_space 0
scoreboard players set %space4 swmb1_space 0
scoreboard players set %space5 swmb1_space 0

execute as @e[type=vindicator,tag=swmb1] at @s if block ~1 ~ ~ air run scoreboard players set %space1 swmb1_space 1
execute as @e[type=vindicator,tag=swmb1] at @s if block ~0.5 ~ ~1 air run scoreboard players set %space2 swmb1_space 1
execute as @e[type=vindicator,tag=swmb1] at @s if block ~0.5 ~ ~-1 air run scoreboard players set %space3 swmb1_space 1
execute as @e[type=vindicator,tag=swmb1] at @s if block ~-0.5 ~ ~-1 air run scoreboard players set %space4 swmb1_space 1
execute as @e[type=vindicator,tag=swmb1] at @s if block ~-0.5 ~ ~1 air run scoreboard players set %space5 swmb1_space 1

function entities:mobs/types/dungeon/singwoods/guardian/summons/summon