bossbar remove lost_soul
scoreboard objectives remove tls_timer
scoreboard objectives remove tls_clone
scoreboard objectives remove tls_pufferfish
scoreboard objectives remove tls_tp
scoreboard objectives remove tls_poison_count
scoreboard objectives remove tls_dash_timer
scoreboard objectives remove perc_hp
scoreboard objectives remove hp_var

kill @e[type=armor_stand,tag=tls_fb_stand]
kill @e[type=armor_stand,tag=tls_target_stand]
kill @e[type=fireball,tag=tls_fb]
kill @e[type=vex,tag=tls_minion]
kill @e[type=skeleton,tag=tls_minion]
kill @e[type=armor_stand,tag=tls_aim2]
kill @e[type=area_effect_cloud,tag=tls_fight_center]
kill @e[type=stray,tag=boss_2_clone]
execute as @e[type=armor_stand,tag=tls_puff_stand] at @s run function entities:bosses/the_lost_soul/attacks/pufferfish/end
execute as @e[type=armor_stand,tag=tls_dash_stand] at @s run function entities:bosses/the_lost_soul/attacks/dash/end
function entities:bosses/the_lost_soul/attacks/poison_clouds/clear

stopsound @a music bosses.boss_2.loop1
stopsound @a music bosses.boss_2.intro1
stopsound @a music bosses.boss_2.loop2
stopsound @a music bosses.boss_2.intro2
stopsound @a music bosses.boss_2.loop3
stopsound @a music bosses.boss_2.intro3

scoreboard objectives remove tls_music