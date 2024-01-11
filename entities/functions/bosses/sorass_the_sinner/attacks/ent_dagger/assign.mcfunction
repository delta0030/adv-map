scoreboard players set %teleport sts_bias 0
scoreboard players set %calamity sts_bias 0
scoreboard players set %hellfire sts_bias 0
scoreboard players set %cannon sts_bias 0
scoreboard players set %look sts_bias 0
scoreboard players set %summon sts_bias 0
scoreboard players set %teleportS sts_bias 0
scoreboard players set %calamityS sts_bias 0
scoreboard players set %hellfireS sts_bias 0
scoreboard players set %cannonS sts_bias 0
scoreboard players set %lookS sts_bias 0
scoreboard players set %summonS sts_bias 0

scoreboard players set %inatt sts_attacks 1
scoreboard players set %cal sts_attacks 1
scoreboard players set %ent sts_attacks 0

execute at @e[type=zombie_villager,tag=boss_3] run particle dust 0.125 0.404 0.145 1 ~ ~ ~ 0.25 0.25 0.25 0 10

# bias
execute if score %entDagger sts_bias matches 1 if predicate entities:chance_33 run scoreboard players set %entDaggerS sts_bias 1
execute if score %entDagger sts_bias matches 2 if predicate entities:chance_66 run scoreboard players set %entDaggerS sts_bias 1
execute if score %entDagger sts_bias matches 3 run scoreboard players set %entDaggerS sts_bias 1

# phase 1 and 2
execute if score %ent sts_attacks matches 0 if score %phase sts_phase matches 1..2 if predicate entities:chance_33 run scoreboard players set %ent sts_attacks 40
execute if score %ent sts_attacks matches 0 if score %phase sts_phase matches 1..2 if predicate entities:chance_33 run scoreboard players set %ent sts_attacks 60
execute if score %ent sts_attacks matches 0 if score %phase sts_phase matches 1..2 if predicate entities:chance_33 run scoreboard players set %ent sts_attacks 80

# phase 3
execute if score %ent sts_attacks matches 0 if score %phase sts_phase matches 3 if predicate entities:chance_20 run scoreboard players set %ent sts_attacks 35
execute if score %ent sts_attacks matches 0 if score %phase sts_phase matches 3 if predicate entities:chance_20 run scoreboard players set %ent sts_attacks 40
execute if score %ent sts_attacks matches 0 if score %phase sts_phase matches 3 if predicate entities:chance_20 run scoreboard players set %ent sts_attacks 45
execute if score %ent sts_attacks matches 0 if score %phase sts_phase matches 3 if predicate entities:chance_20 run scoreboard players set %ent sts_attacks 50
execute if score %ent sts_attacks matches 0 if score %phase sts_phase matches 3 if predicate entities:chance_20 run scoreboard players set %ent sts_attacks 55

execute if score %ent sts_attacks matches 35 run effect give @e[type=zombie_villager,tag=boss_3] slowness 1 2 true
execute if score %ent sts_attacks matches 40..55 run effect give @e[type=zombie_villager,tag=boss_3] slowness 2 2 true
execute if score %ent sts_attacks matches 60 run effect give @e[type=zombie_villager,tag=boss_3] slowness 3 2 true
execute if score %ent sts_attacks matches 80 run effect give @e[type=zombie_villager,tag=boss_3] slowness 4 2 true

execute if score %ent sts_attacks matches 1.. run function entities:bosses/sorass_the_sinner/attacks/ent_dagger/init

execute if score %ent sts_attacks matches 0 unless score %phase sts_phase matches -5 run schedule function entities:bosses/sorass_the_sinner/attacks/ent_dagger/assign 1t