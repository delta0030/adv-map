# force transition
playsound bosses.boss_2.intro3 music @s
stopsound @s music bosses.boss_2.loop2
stopsound @s music bosses.boss_2.intro2
scoreboard players set %switch2 tls_music 1
scoreboard players set %timer tls_music 0