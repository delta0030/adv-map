tag @s remove phase2
tag @s remove phase2.5
tag @s add phase3
scoreboard players set %phase tls_music 3
data merge entity @s {NoAI:1b,NoGravity:1b}
kill @e[type=stray,tag=boss_2_clone]

scoreboard players set %max tls_timer 80