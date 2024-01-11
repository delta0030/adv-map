tag @e[type=vindicator,tag=swmb1] add statBoost
tag @e[type=skeleton,tag=swmb1_sum1] add statBoost
tag @e[type=skeleton,tag=swmb1_sum2] add statBoost
tag @e[type=skeleton,tag=swmb1_sum3] add statBoost
tag @e[type=zombie,tag=swmb1_sum4] add statBoost
tag @e[type=zombie,tag=swmb1_sum5] add statBoost
tag @a add swmb1_boost
execute as @e[type=vindicator,tag=swmb1] at @s run particle minecraft:instant_effect ~ ~1 ~ 0.5 1.5 0.5 0 100 normal
execute as @e[type=vindicator,tag=swmb1] at @s run particle minecraft:witch ~ ~1 ~ 0.5 1.5 0.5 0 100 normal
execute as @e[type=vindicator,tag=swmb1] at @s run playsound minecraft:entity.witch.drink hostile @a[distance=..35] ~ ~ ~ 1 0

scoreboard players set %boost swmb1 25
scoreboard players operation %boost swmb1 *= %playercount HealthScale
scoreboard players operation @e[type=vindicator,tag=swmb1] mob_health += %boost swmb1