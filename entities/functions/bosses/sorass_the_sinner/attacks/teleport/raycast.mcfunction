scoreboard players set %bool2 sts_tp 0
execute if score %dist_max sts_tp matches ..36 if predicate entities:rng/rng02 run scoreboard players set %bool2 sts_tp 1
execute if score %dist_max sts_tp matches 0 run scoreboard players set %bool2 sts_tp 1

execute if score %bool2 sts_tp matches 1 run tp @e[type=zombie_villager,tag=boss_3] ~ ~-1 ~ facing entity @p

execute if score %bool2 sts_tp matches 0 positioned ^ ^ ^0.25 unless block ~ ~ ~ air positioned ^ ^ ^-1 run tp @e[type=zombie_villager,tag=boss_3] ~ ~-1 ~ facing entity @p
execute if score %bool2 sts_tp matches 0 run scoreboard players remove %dist_max sts_tp 1
execute if score %bool2 sts_tp matches 0 positioned ^ ^ ^0.25 if block ~ ~ ~ air run function entities:bosses/sorass_the_sinner/attacks/teleport/raycast