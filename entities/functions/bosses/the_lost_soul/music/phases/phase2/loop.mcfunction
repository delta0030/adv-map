execute if score %phase tls_music matches 2 if score %timer tls_music matches 1 if score %intro2_full tls_music matches 1 run playsound bosses.boss_2.loop2 music @s
execute if score %phase tls_music matches 2 if score %timer tls_music matches 209 run scoreboard players set %intro2_full tls_music 1
execute if score %phase tls_music matches 2 if score %timer tls_music matches 209.. run scoreboard players set %timer tls_music 0

execute if score %phase tls_music matches 3 run function entities:bosses/the_lost_soul/music/phases/phase3-4/switch