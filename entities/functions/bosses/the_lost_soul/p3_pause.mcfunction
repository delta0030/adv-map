execute at @e[type=area_effect_cloud,tag=tls_fight_center] run tp @s ~ ~1 ~ facing entity @p

execute if score %timer tls_music matches 125..139 run particle dust 0 1 1 1 ~0.76 ~0.84 ~0.64 0.2 0.2 0.2 0.05 3 force
execute if score %timer tls_music matches 125..139 run particle soul ~0.76 ~0.84 ~0.64 -0.76 -0.84 -0.64 0.1 0 force

execute if score %timer tls_music matches 153..168 run particle dust 0 1 1 1 ~-0.93 ~-0.34 ~0.84 0.2 0.2 0.2 0.05 3 force
execute if score %timer tls_music matches 153..168 run particle soul ~-0.93 ~-0.34 ~0.84 0.93 0.34 -0.84 0.1 0 force

execute if score %timer tls_music matches 179..194 run particle dust 0 1 1 1 ~0.30 ~0.34 ~-1.22 0.2 0.2 0.2 0.05 3 force
execute if score %timer tls_music matches 179..194 run particle soul ~0.30 ~0.34 ~-1.22 -0.30 -0.34 1.22 0.1 0 force

execute if score %timer tls_music matches 206..221 run particle dust 0 1 1 1 ~-0.88 ~0.65 ~-0.69 0.2 0.2 0.2 0.05 3 force
execute if score %timer tls_music matches 206..221 run particle soul ~-0.88 ~0.65 ~-0.69 0.88 -0.65 0.69 0.1 0 force

execute if score %timer tls_music matches 232..247 run particle dust 0 1 1 1 ~0.27 ~-0.23 ~-1.27 0.2 0.2 0.2 0.05 3 force
execute if score %timer tls_music matches 232..247 run particle soul ~0.27 ~-0.23 ~-1.27 -0.27 0.23 1.27 0.1 0 force

execute if score %timer tls_music matches 258..273 run particle dust 0 1 1 1 ~-1.20 ~0.29 ~0.39 0.2 0.2 0.2 0.05 3 force
execute if score %timer tls_music matches 258..273 run particle soul ~-1.20 ~0.29 ~0.39 1.20 -0.29 -0.39 0.1 0 force

execute if score %timer tls_music matches 284 run particle dust 0 1 1 1 ~ ~ ~ 1 1 1 0.5 50 force
execute if score %timer tls_music matches 284 run data modify entity @s Glowing set value 1b