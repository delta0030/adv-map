scoreboard objectives add tls_timer dummy
scoreboard objectives add tls_music dummy

execute if score %intro tls_timer matches 1 run scoreboard players set %phase tls_music 1
execute if score %intro tls_timer matches 1 run summon minecraft:area_effect_cloud -71.5 56 144.5 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["tls_fight_center"]}

execute if score %intro tls_timer matches 0..323 run function entities:bosses/the_lost_soul/music/main

execute if score %intro tls_timer matches 0..100 at @e[type=area_effect_cloud,tag=tls_fight_center] run particle soul ~ ~ ~ 50 0 50 0.02 50 force
execute if score %intro tls_timer matches 101..200 at @e[type=area_effect_cloud,tag=tls_fight_center] run particle soul ~ ~ ~ 50 0 50 0.02 100 force
execute if score %intro tls_timer matches 201..324 at @e[type=area_effect_cloud,tag=tls_fight_center] run particle soul ~ ~ ~ 50 0 50 0.02 300 force

execute if score %intro tls_timer matches 105..270 at @e[type=area_effect_cloud,tag=tls_fight_center] positioned ~ ~2 ~ run particle dust 0 1 0.949 1 ~ ~ ~ 0.3 0.3 0.3 0 1 force
execute if score %intro tls_timer matches 271 at @e[type=area_effect_cloud,tag=tls_fight_center] positioned ~ ~1 ~ run function entities:bosses/the_lost_soul/start/setup
execute if score %intro tls_timer matches 271..290 at @e[type=area_effect_cloud,tag=tls_fight_center] positioned ~ ~2 ~ run particle dust 0 1 0.949 1 ~ ~ ~ 0.3 0.3 0.3 0.05 10 force
execute if score %intro tls_timer matches 291..322 at @e[type=area_effect_cloud,tag=tls_fight_center] positioned ~ ~2 ~ run particle dust 0 1 0.949 1 ~ ~ ~ 1 1 1 1 30 force

scoreboard players add %intro tls_timer 1

execute unless score %intro tls_timer matches 322.. run schedule function entities:bosses/the_lost_soul/start/intro 1t


execute if score %intro tls_timer matches 322 run function entities:bosses/the_lost_soul/start/init
execute if score %intro tls_timer matches 322 run scoreboard players set %intro tls_timer 0