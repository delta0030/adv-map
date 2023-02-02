scoreboard objectives add sts_summon dummy
scoreboard objectives add sts_summon_ypos dummy

scoreboard players set %teleport sts_bias 0
scoreboard players set %entDagger sts_bias 0
scoreboard players set %calamity sts_bias 0
scoreboard players set %hellfire sts_bias 0
scoreboard players set %cannon sts_bias 0
scoreboard players set %look sts_bias 0
scoreboard players set %teleportS sts_bias 0
scoreboard players set %entDaggerS sts_bias 0
scoreboard players set %calamityS sts_bias 0
scoreboard players set %hellfireS sts_bias 0
scoreboard players set %cannonS sts_bias 0
scoreboard players set %lookS sts_bias 0

scoreboard players set %inatt sts_attacks 1

# assigning attack bias
execute if score %summon sts_bias matches 1 if predicate entities:chance_33 run scoreboard players set %summonS sts_bias 1
execute if score %summon sts_bias matches 2 if predicate entities:chance_66 run scoreboard players set %summonS sts_bias 1
execute if score %summon sts_bias matches 3 run scoreboard players set %summonS sts_bias 1


execute at @e[type=zombie_villager,tag=boss_3] run function entities:bosses/sorass_the_sinner/attacks/summon/marker_summon
function entities:bosses/sorass_the_sinner/attacks/summon/brain