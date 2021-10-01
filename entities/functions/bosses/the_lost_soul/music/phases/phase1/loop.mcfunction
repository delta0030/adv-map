execute if score %phase tls_music matches 1 if score %timer tls_music matches 1 if score %intro1_full tls_music matches 1 run playsound bosses.boss_2.loop1 hostile @s
execute if score %phase tls_music matches 1 if score %timer tls_music matches 419 run scoreboard players set %intro1_full tls_music 1
execute if score %phase tls_music matches 1 if score %timer tls_music matches 419 run scoreboard players set %timer tls_music 0

execute if score %phase tls_music matches 2 run function entities:bosses/the_lost_soul/music/phases/phase2/switch