bossbar remove lost_soul
scoreboard objectives remove tls_timer
scoreboard objectives remove perc_hp
scoreboard objectives remove hp_var

kill @e[type=armor_stand,tag=tls_fb_stand]
kill @e[type=armor_stand,tag=tls_target_stand]
kill @e[type=fireball,tag=tls_fb]
kill @e[type=vex,tag=tls_minion]
kill @e[type=skeleton,tag=tls_minion]
kill @e[type=armor_stand,tag=tls_aim2]
execute as @e[type=armor_stand,tag=tls_puff_stand] at @s run function entities:bosses/the_lost_soul/attacks/pufferfish/end
function entities:bosses/the_lost_soul/attacks/poison_clouds/clear

scoreboard objectives remove tls_music