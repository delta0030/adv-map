scoreboard players set %entDagger sts_bias 0
scoreboard players set %calamity sts_bias 0
scoreboard players set %hellfire sts_bias 0
scoreboard players set %cannon sts_bias 0
scoreboard players set %look sts_bias 0
scoreboard players set %summon sts_bias 0
scoreboard players set %entDaggerS sts_bias 0
scoreboard players set %calamityS sts_bias 0
scoreboard players set %hellfireS sts_bias 0
scoreboard players set %cannonS sts_bias 0
scoreboard players set %lookS sts_bias 0
scoreboard players set %summonS sts_bias 0

scoreboard players set %inatt sts_attacks 1

# bias
execute if score %teleport sts_bias matches 1 if predicate entities:chance_33 run scoreboard players set %teleportS sts_bias 1
execute if score %teleport sts_bias matches 2 if predicate entities:chance_66 run scoreboard players set %teleportS sts_bias 1
execute if score %teleport sts_bias matches 3 run scoreboard players set %teleportS sts_bias 1

# picking the number of times to tp during phase 1 and 2
execute if score %tp sts_attacks matches 0 if score %phase sts_phase matches 1..2 if predicate entities:chance_33 run scoreboard players set %tp sts_attacks 3
execute if score %tp sts_attacks matches 0 if score %phase sts_phase matches 1..2 if predicate entities:chance_33 run scoreboard players set %tp sts_attacks 4
execute if score %tp sts_attacks matches 0 if score %phase sts_phase matches 1..2 if predicate entities:chance_33 run scoreboard players set %tp sts_attacks 5

# picking the number of times to tp during phase 3
execute if score %tp sts_attacks matches 0 if score %phase sts_phase matches 3 if predicate entities:chance_20 run scoreboard players set %tp sts_attacks 4
execute if score %tp sts_attacks matches 0 if score %phase sts_phase matches 3 if predicate entities:chance_20 run scoreboard players set %tp sts_attacks 5
execute if score %tp sts_attacks matches 0 if score %phase sts_phase matches 3 if predicate entities:chance_20 run scoreboard players set %tp sts_attacks 6
execute if score %tp sts_attacks matches 0 if score %phase sts_phase matches 3 if predicate entities:chance_20 run scoreboard players set %tp sts_attacks 7
execute if score %tp sts_attacks matches 0 if score %phase sts_phase matches 3 if predicate entities:chance_20 run scoreboard players set %tp sts_attacks 8

# based on the phase pick which type of tp to do, phase 1 and 2
# will have relatively slow tp and phase 3 will have rapid tp with theatrics
execute if score %tp sts_attacks matches 1.. if score %phase sts_phase matches 1..2 run function entities:bosses/sorass_the_sinner/attacks/teleport/tp
execute if score %tp sts_attacks matches 1.. if score %phase sts_phase matches 3 run function entities:bosses/sorass_the_sinner/attacks/teleport/p3tp

# continuously runs the file until a tp amount and phase has been selected
execute if score %tp sts_attacks matches 0 unless score %phase sts_phase matches -5 run schedule function entities:bosses/sorass_the_sinner/attacks/teleport/seq 1t