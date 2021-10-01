execute if score %timer tls_music matches 1 if score %intro1_full tls_music matches 1 run playsound bosses.boss_2.loop1 hostile @s

# possible transition point 1
execute if score %timer tls_music matches 47 run playsound bosses.boss_2.intro2 hostile @s
execute if score %timer tls_music matches 47 run stopsound @s hostile bosses.boss_2.intro1
execute if score %timer tls_music matches 47 run stopsound @s hostile bosses.boss_2.loop1
execute if score %timer tls_music matches 47 run scoreboard players set %switch1 tls_music 1
execute if score %timer tls_music matches 47 run scoreboard players set %timer tls_music 0

# possible transition point 2
execute if score %timer tls_music matches 158 run playsound bosses.boss_2.intro2 hostile @s
execute if score %timer tls_music matches 158 run stopsound @s hostile bosses.boss_2.intro1
execute if score %timer tls_music matches 158 run stopsound @s hostile bosses.boss_2.loop1
execute if score %timer tls_music matches 158 run scoreboard players set %switch1 tls_music 1
execute if score %timer tls_music matches 158 run scoreboard players set %timer tls_music 0

# possible transition point 3
execute if score %timer tls_music matches 365 run playsound bosses.boss_2.intro2 hostile @s
execute if score %timer tls_music matches 365 run stopsound @s hostile bosses.boss_2.intro1
execute if score %timer tls_music matches 365 run stopsound @s hostile bosses.boss_2.loop1
execute if score %timer tls_music matches 365 run scoreboard players set %switch1 tls_music 1
execute if score %timer tls_music matches 365 run scoreboard players set %timer tls_music 0

execute if score %timer tls_music matches 419 run scoreboard players set %timer tls_music 0