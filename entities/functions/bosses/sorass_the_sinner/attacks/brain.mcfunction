# variables
# att - pick which attack to use
# inatt - determine whether an attack is in progress or not
# attack - artifical timer between attacks
# cal - determine whether the calamity orb is in existance
# phase - determines current phase of the boss
# ent - ent dagger timer to prevent attack overlap
# dis - determines boss distance from the nearest player | tests for a 10 block distance
# tp - number of tps initiated
# hb - if hellfire bolt it in progress. other attacks can happen after initial animation expect for another hb
# bias - limits the frequency of one attack occurance | limit set at 3 times [S after atk name represents Skip]



# when attack timer is 0 run the next potential attack
execute if score %attack sts_attacks matches 0 run function entities:bosses/sorass_the_sinner/attacks/brain/inatt

# player distance check and distance closure
execute as @a at @s if entity @e[type=zombie_villager,tag=boss_3,distance=..15] run scoreboard players set %dis sts_attacks 0
execute as @a at @s if entity @e[type=zombie_villager,tag=boss_3,distance=15..] run scoreboard players set %dis sts_attacks 1
execute if score %cal sts_attacks matches 0 if score %hb sts_attacks matches 0 unless score %phase sts_phase matches -5 if score %inatt sts_attacks matches 0 if score %dis sts_attacks matches 1 if score %cannon sts_attacks matches 0 if predicate entities:chance_2 run function entities:bosses/sorass_the_sinner/attacks/tp_close


# added delay after phase 3 transition occurs
execute if score %phase sts_phase matches -5 if score %attack sts_attacks matches ..10 run scoreboard players set %attack sts_attacks 20

# timers
execute if score %ent sts_attacks matches 1.. run scoreboard players remove %ent sts_attacks 1
execute if score %attack sts_attacks matches 1.. run scoreboard players remove %attack sts_attacks 1

# attack brain loop based on boss existance
execute if entity @e[type=zombie_villager,tag=boss_3] run schedule function entities:bosses/sorass_the_sinner/attacks/brain 1t