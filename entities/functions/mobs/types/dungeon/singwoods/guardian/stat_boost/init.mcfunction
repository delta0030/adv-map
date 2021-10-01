tag @e[type=vindicator,tag=swmb1] add statBoost
tag @e[type=skeleton,tag=swmb1_sum1] add statBoost
tag @e[type=skeleton,tag=swmb1_sum2] add statBoost
tag @e[type=skeleton,tag=swmb1_sum3] add statBoost
tag @e[type=zombie,tag=swmb1_sum4] add statBoost
tag @e[type=zombie,tag=swmb1_sum5] add statBoost
tag @a add swmb1_boost
execute as @e[type=vindicator,tag=swmb1] at @s run particle minecraft:instant_effect ~ ~1 ~ 0.5 1.5 0.5 0 100 normal
execute as @e[type=vindicator,tag=swmb1] at @s run particle minecraft:witch ~ ~1 ~ 0.5 1.5 0.5 0 100 normal
effect give @e[tag=statBoost] regeneration 2 3 true
execute as @a at @s run playsound minecraft:entity.witch.drink master @a ~ ~ ~ 1 0