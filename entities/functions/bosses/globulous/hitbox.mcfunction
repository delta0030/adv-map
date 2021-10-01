execute as @e[type=slime,tag=boss_1,tag=!boss_1_dmg] at @s run summon slime ~ ~0.5 ~3 {Size:3,Team:"nopush",NoAI:1b,Tags:["new_mob","boss_1_dmg","boss_1_dmg1"]}
execute as @e[type=slime,tag=boss_1,tag=!boss_1_dmg] at @s run summon slime ~ ~0.5 ~-3 {Size:3,Team:"nopush",NoAI:1b,Tags:["new_mob","boss_1_dmg","boss_1_dmg2"]}
execute as @e[type=slime,tag=boss_1,tag=!boss_1_dmg] at @s run summon slime ~3 ~0.5 ~ {Size:3,Team:"nopush",NoAI:1b,Tags:["new_mob","boss_1_dmg","boss_1_dmg3"]}
execute as @e[type=slime,tag=boss_1,tag=!boss_1_dmg] at @s run summon slime ~-3 ~0.5 ~ {Size:3,Team:"nopush",NoAI:1b,Tags:["new_mob","boss_1_dmg","boss_1_dmg4"]}
execute as @e[type=slime,tag=boss_1,tag=!boss_1_dmg] at @s run summon slime ~3 ~0.5 ~2 {Size:3,Team:"nopush",NoAI:1b,Tags:["new_mob","boss_1_dmg","boss_1_dmg5"]}
execute as @e[type=slime,tag=boss_1,tag=!boss_1_dmg] at @s run summon slime ~-3 ~0.5 ~2 {Size:3,Team:"nopush",NoAI:1b,Tags:["new_mob","boss_1_dmg","boss_1_dmg6"]}
execute as @e[type=slime,tag=boss_1,tag=!boss_1_dmg] at @s run summon slime ~2 ~0.5 ~3 {Size:3,Team:"nopush",NoAI:1b,Tags:["new_mob","boss_1_dmg","boss_1_dmg7"]}
execute as @e[type=slime,tag=boss_1,tag=!boss_1_dmg] at @s run summon slime ~2 ~0.5 ~-3 {Size:3,Team:"nopush",NoAI:1b,Tags:["new_mob","boss_1_dmg","boss_1_dmg8"]}
execute as @e[type=slime,tag=boss_1,tag=!boss_1_dmg] at @s run summon slime ~3 ~0.5 ~-2 {Size:3,Team:"nopush",NoAI:1b,Tags:["new_mob","boss_1_dmg","boss_1_dmg9"]}
execute as @e[type=slime,tag=boss_1,tag=!boss_1_dmg] at @s run summon slime ~-3 ~0.5 ~-2 {Size:3,Team:"nopush",NoAI:1b,Tags:["new_mob","boss_1_dmg","boss_1_dmg10"]}
execute as @e[type=slime,tag=boss_1,tag=!boss_1_dmg] at @s run summon slime ~-2 ~0.5 ~3 {Size:3,Team:"nopush",NoAI:1b,Tags:["new_mob","boss_1_dmg","boss_1_dmg11"]}
execute as @e[type=slime,tag=boss_1,tag=!boss_1_dmg] at @s run summon slime ~-2 ~0.5 ~-3 {Size:3,Team:"nopush",NoAI:1b,Tags:["new_mob","boss_1_dmg","boss_1_dmg12"]}

scoreboard objectives add mob_max_health dummy
scoreboard objectives add mob_health dummy
execute as @e[tag=new_mob] run scoreboard players set @s mob_max_health 175
execute as @e[tag=new_mob] run function entities:mobs/setup