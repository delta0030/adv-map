scoreboard objectives add tls_pufferfish dummy
scoreboard players set %count tls_pufferfish 14

scoreboard players add %timer tls_pufferfish 1

execute if score %timer tls_pufferfish matches 14 run function entities:bosses/the_lost_soul/attacks/pufferfish/main
execute as @e[type=armor_stand,tag=tls_puff_stand,tag=rotated] at @s rotated as @s run function entities:bosses/the_lost_soul/attacks/pufferfish/tp
execute if score %timer tls_pufferfish matches 14 run scoreboard players set %timer tls_pufferfish 0