scoreboard players set %bool tls_poison_count 0
execute if predicate entities:rng/rng02 run scoreboard players set %bool tls_poison_count 1

execute positioned ^ ^ ^0.25 if block ~ ~ ~ air if score %bool tls_poison_count matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["poison_cloud"]}
execute positioned ^ ^ ^0.25 unless block ~ ~ ~ air positioned ^ ^ ^-1 run summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["poison_cloud"]}

execute positioned ^ ^ ^0.25 if block ~ ~ ~ air unless score %bool tls_poison_count matches 1 run function entities:bosses/the_lost_soul/attacks/poison_clouds/raycast