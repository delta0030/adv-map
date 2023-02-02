execute as @e[type=arrow,distance=0.1..1.5,tag=!tls_reflected] run function entities:bosses/the_lost_soul/proj_reflect
execute as @e[type=!player,distance=0.1..1.5,tag=!tls_puff_stand] run kill @s
function entities:bosses/the_lost_soul/attacks/pufferfish/timer
execute positioned ~ ~1.3 ~ run function entities:bosses/the_lost_soul/p3_pause