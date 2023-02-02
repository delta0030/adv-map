scoreboard objectives add timer dummy
scoreboard players add %tls_particles timer 1

execute as @e[type=area_effect_cloud,tag=particle] at @s run particle soul ~ ~ ~ 0 1 0 0.9 0 force

execute if score %tls_particles timer matches 1..2 run schedule function entities:bosses/the_lost_soul/attacks/poison_clouds/effect/particles 2t

execute if score %tls_particles timer matches 3 run function entities:bosses/the_lost_soul/attacks/poison_clouds/effect/end