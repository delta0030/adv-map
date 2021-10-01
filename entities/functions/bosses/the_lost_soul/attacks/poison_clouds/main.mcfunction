scoreboard players add %count tls_poison_count 1
execute as @e[type=area_effect_cloud,tag=poison_center] at @s run function entities:bosses/the_lost_soul/attacks/poison_clouds/raycast

tp @s ~ ~ ~ ~-45 ~
execute if score %count tls_poison_count matches 1..7 rotated as @s run function entities:bosses/the_lost_soul/attacks/poison_clouds/main