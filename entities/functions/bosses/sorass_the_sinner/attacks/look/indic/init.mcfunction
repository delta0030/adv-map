scoreboard players set %timer sts_behind -1
execute as @a[tag=sts_behind] at @s if entity @e[type=zombie_villager,tag=boss_3,distance=..2.25] run function entities:bosses/sorass_the_sinner/attacks/look/indic/effect
execute as @a[tag=sts_behind] at @s if entity @e[type=zombie_villager,tag=boss_3,distance=2.25..] run function entities:bosses/sorass_the_sinner/attacks/look/alt_clear