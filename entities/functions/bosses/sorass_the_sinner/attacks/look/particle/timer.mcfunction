execute as @e[type=zombie_villager,tag=boss_3] at @s run particle dust 0.655 0.141 1.000 1.25 ~ ~ ~ 0.25 1.25 0.25 0 20 normal

execute if score %phase sts_phase matches 1 if score %ptimer ptimer matches 60.. run function entities:bosses/sorass_the_sinner/attacks/look/init
execute if score %phase sts_phase matches 2 if score %ptimer ptimer matches 40.. run function entities:bosses/sorass_the_sinner/attacks/look/init
execute if score %phase sts_phase matches 3 if score %ptimer ptimer matches 20.. run function entities:bosses/sorass_the_sinner/attacks/look/init

execute if score %ptimer ptimer matches 0.. run scoreboard players add %ptimer ptimer 1

execute if score %phase sts_phase matches -5 run function entities:bosses/sorass_the_sinner/attacks/look/alt_clear

execute if score %test ptimer matches 1 run schedule function entities:bosses/sorass_the_sinner/attacks/look/particle/timer 1t