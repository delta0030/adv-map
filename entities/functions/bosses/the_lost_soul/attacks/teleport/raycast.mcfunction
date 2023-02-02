scoreboard players set %bool2 tls_tp 0
execute if score %dist_max tls_tp matches ..36 if predicate entities:rng/rng02 run scoreboard players set %bool2 tls_tp 1
execute if score %dist_max tls_tp matches 0 run scoreboard players set %bool2 tls_tp 1

execute if score %bool2 tls_tp matches 1 run tp @e[type=stray,tag=boss_2] ~ ~-1 ~ facing entity @p

execute if score %bool2 tls_tp matches 0 positioned ^ ^ ^0.25 unless block ~ ~ ~ air positioned ^ ^ ^-1 run tp @e[type=stray,tag=boss_2] ~ ~-1 ~ facing entity @p
execute if score %bool2 tls_tp matches 0 run scoreboard players remove %dist_max tls_tp 1
execute if score %bool2 tls_tp matches 0 positioned ^ ^ ^0.25 if block ~ ~ ~ air run function entities:bosses/the_lost_soul/attacks/teleport/raycast