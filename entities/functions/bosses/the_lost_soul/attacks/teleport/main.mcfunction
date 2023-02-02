scoreboard players set %bool1 tls_tp 0
execute if predicate entities:rng/rng02 run scoreboard players set %bool1 tls_tp 1
execute if score %rotation_max tls_tp matches 0 run scoreboard players set %bool1 tls_tp 1

execute if score %bool1 tls_tp matches 1 positioned ~ ~1 ~ run function entities:bosses/the_lost_soul/attacks/teleport/raycast

execute if score %bool1 tls_tp matches 0 rotated as @s rotated ~ 0 run tp @s ~ ~ ~ ~1 ~
execute if score %bool1 tls_tp matches 0 run scoreboard players remove %rotation_max tls_tp 1
execute if score %bool1 tls_tp matches 0 rotated as @s rotated ~ 0 run function entities:bosses/the_lost_soul/attacks/teleport/main