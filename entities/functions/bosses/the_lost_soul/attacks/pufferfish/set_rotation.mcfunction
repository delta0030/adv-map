scoreboard players remove %rot_max tls_pufferfish 1
tp @s ~ ~ ~ ~3 ~

scoreboard players set %bool tls_pufferfish 0
execute if predicate entities:rng/rng1-120 run scoreboard players set %bool tls_pufferfish 1
execute if score %rot_max tls_pufferfish matches ..0 run scoreboard players set %bool tls_pufferfish 1

execute if score %bool tls_pufferfish matches 0 rotated as @s run function entities:bosses/the_lost_soul/attacks/pufferfish/set_rotation

execute if score %bool tls_pufferfish matches 1 run tag @s add rotated