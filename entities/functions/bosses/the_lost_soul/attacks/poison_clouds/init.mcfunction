scoreboard objectives add tls_poison_count dummy
execute store result score %max++ tls_timer run scoreboard players add %max tls_timer 180
scoreboard players remove %max tls_timer 180

# create new clouds
summon area_effect_cloud 70.5 52.00 -160.5 {Tags:["poison_center"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute as @e[type=area_effect_cloud,tag=poison_center] at @s run function entities:bosses/the_lost_soul/attacks/poison_clouds/main