scoreboard objectives add tls_dash_timer dummy
scoreboard players add %time tls_dash_timer 1

execute at @e[type=stray,tag=boss_2] run particle portal ~ ~ ~ 0.3 1 0.3 0.2 7 force
execute if score %time tls_dash_timer matches ..39 run schedule function entities:bosses/the_lost_soul/attacks/dash/indicator 1t
execute if score %time tls_dash_timer matches 40.. as @e[type=stray,tag=boss_2] run function entities:bosses/the_lost_soul/attacks/dash/init
execute if score %time tls_dash_timer matches 40.. run scoreboard players set %time tls_dash_timer 0