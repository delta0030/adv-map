scoreboard objectives add sts_behind dummy
scoreboard players set %timer sts_begind 0
scoreboard players set %ypos sts_behind 0
scoreboard players set %test ptimer 0
tag @p[limit=1] add sts_behind

execute at @a[tag=sts_behind] run summon armor_stand ^ ^ ^-2 {NoGravity:1b,Tags:["sts_behind"],Invisible:1b}

scoreboard players set %look sts_attacks 1

function entities:bosses/sorass_the_sinner/attacks/look/brain
execute as @a[tag=sts_behind] at @s positioned ~ ~1.35 ~ if entity @e[type=zombie_villager,tag=boss_3] run function entities:bosses/sorass_the_sinner/attacks/look/detection



#schedule function entities:bosses/sorass_the_sinner/attacks/look/alt_clear 15t