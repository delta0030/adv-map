# force transition
playsound bosses.boss_2.intro3 hostile @s
stopsound @s hostile bosses.boss_2.loop2
stopsound @s hostile bosses.boss_2.intro2
scoreboard players set %switch2 tls_music 1
scoreboard players set %timer tls_music 0