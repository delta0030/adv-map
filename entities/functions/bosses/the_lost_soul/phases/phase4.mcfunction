tag @s remove phase3
tag @s add phase4
scoreboard players set %phase tls_music 4
execute as @e[type=armor_stand,tag=tls_puff_stand] at @s run function entities:bosses/the_lost_soul/attacks/pufferfish/end

scoreboard players set %max tls_timer 30
# start new attack immediately
scoreboard players set @s tls_timer 30