#   REFERENCE   #
# 1 - random
# 2 - circle
# 3 - cross
# 4 - square
# 5 - triangle
# 6 - cluster
#

# clear other attack bias
scoreboard players set %entDagger sts_bias 0
scoreboard players set %teleport sts_bias 0
scoreboard players set %calamity sts_bias 0
scoreboard players set %hellfire sts_bias 0
scoreboard players set %look sts_bias 0
scoreboard players set %summon sts_bias 0
scoreboard players set %entDaggerS sts_bias 0
scoreboard players set %teleportS sts_bias 0
scoreboard players set %calamityS sts_bias 0
scoreboard players set %hellfireS sts_bias 0
scoreboard players set %lookS sts_bias 0
scoreboard players set %summonS sts_bias 0

scoreboard players set %inatt sts_attacks 1

# assigning attack bias
execute if score %cannon sts_bias matches 1 if predicate entities:chance_33 run scoreboard players set %cannonS sts_bias 1
execute if score %cannon sts_bias matches 2 if predicate entities:chance_66 run scoreboard players set %cannonS sts_bias 1
execute if score %cannon sts_bias matches 3 run scoreboard players set %cannonS sts_bias 1


# scoreboard to determine pattern and pattern aspects
scoreboard objectives add sts_cannon dummy
scoreboard players set %pattern sts_cannon 0
scoreboard players set %timer sts_cannon 0
scoreboard players set %lTimer sts_cannon 0
scoreboard players set %launch sts_cannon 0
scoreboard players set %seq sts_cannon 0
scoreboard players set %seqCount sts_cannon 0
scoreboard players set %x sts_cannon 0
scoreboard players set %x_var sts_cannon 0
scoreboard players set %out sts_cannon 0
scoreboard players set %stop sts_cannon -1
scoreboard players set %cannon sts_attacks 1

effect give @e[type=zombie_villager,tag=boss_3] slowness 100000 2 true

# spawn in orb points
execute at @e[type=zombie_villager,tag=boss_3] run function entities:bosses/sorass_the_sinner/attacks/cannon/animation/orb/orb_point

# pick the pattern
scoreboard players set in math 1
scoreboard players set in1 math 5
execute if score %phase sts_phase matches 3 run scoreboard players set in1 math 6
function math:rng/range

schedule function entities:bosses/sorass_the_sinner/attacks/cannon/clear 120t

function entities:bosses/sorass_the_sinner/attacks/cannon/pick
function entities:bosses/sorass_the_sinner/attacks/cannon/brain/brain