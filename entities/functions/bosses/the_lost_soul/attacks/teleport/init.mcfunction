execute as @e[type=area_effect_cloud,tag=tls_fight_center] at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["tls_tp_center"]}
execute as @e[type=area_effect_cloud,tag=tls_tp_center] at @s run function entities:bosses/the_lost_soul/attacks/teleport/set_rotation

particle large_smoke ~ ~1 ~ 0.3 1 0.3 0 30 force

scoreboard objectives add tls_tp dummy
scoreboard players set %dist_max tls_tp 40
scoreboard players set %rotation_max tls_tp 270
execute as @e[type=area_effect_cloud,tag=tls_tp_center] at @s rotated as @s run function entities:bosses/the_lost_soul/attacks/teleport/main
#scoreboard objectives remove tls_tp
kill @e[type=area_effect_cloud,tag=tls_tp_center]