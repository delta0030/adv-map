scoreboard objectives add tls_timer dummy
scoreboard objectives add tls_music dummy

execute if score %intro tls_timer matches 1 run scoreboard players set %phase tls_music 1

execute if score %intro tls_timer matches 0..323 run function entities:bosses/the_lost_soul/music/main

execute if score %intro tls_timer matches 0..100 positioned 70.5 52.00 -160.5 run particle soul ~ ~ ~ 50 0 50 0.02 50 force
execute if score %intro tls_timer matches 101..200 positioned 70.5 52.00 -160.5 run particle soul ~ ~ ~ 50 0 50 0.02 100 force
execute if score %intro tls_timer matches 201..324 positioned 70.5 52.00 -160.5 run particle soul ~ ~ ~ 50 0 50 0.02 300 force

execute if score %intro tls_timer matches 105..270 positioned 70.5 54.00 -160.5 run particle dust 0 1 0.949 1 ~ ~ ~ 0.3 0.3 0.3 0 1 force
execute if score %intro tls_timer matches 271 positioned 70.5 53.00 -160.5 run function entities:bosses/the_lost_soul/start/setup
execute if score %intro tls_timer matches 271..290 positioned 70.5 54.00 -160.5 run particle dust 0 1 0.949 1 ~ ~ ~ 0.3 0.3 0.3 0.05 10 force
execute if score %intro tls_timer matches 291..322 positioned 70.5 54.00 -160.5 run particle dust 0 1 0.949 1 ~ ~ ~ 1 1 1 1 30 force

scoreboard players add %intro tls_timer 1

execute unless score %intro tls_timer matches 322.. run schedule function entities:bosses/the_lost_soul/start/intro 1t


execute if score %intro tls_timer matches 322 run function entities:bosses/the_lost_soul/start/init
execute if score %intro tls_timer matches 322 run scoreboard players set %intro tls_timer 0