scoreboard players set %entDagger sts_bias 0
scoreboard players set %teleport sts_bias 0
scoreboard players set %calamity sts_bias 0
scoreboard players set %hellfire sts_bias 0
scoreboard players set %cannon sts_bias 0
scoreboard players set %summon sts_bias 0
scoreboard players set %entDaggerS sts_bias 0
scoreboard players set %teleportS sts_bias 0
scoreboard players set %calamityS sts_bias 0
scoreboard players set %hellfireS sts_bias 0
scoreboard players set %cannonS sts_bias 0
scoreboard players set %summonS sts_bias 0

# bias
execute if score %look sts_bias matches 1 if predicate entities:chance_33 run scoreboard players set %lookS sts_bias 1
execute if score %look sts_bias matches 2 if predicate entities:chance_66 run scoreboard players set %lookS sts_bias 1
execute if score %look sts_bias matches 3 run scoreboard players set %lookS sts_bias 1

scoreboard objectives add ptimer dummy
scoreboard players set %ptimer ptimer 0
scoreboard players set %test ptimer 1

scoreboard players set %inatt sts_attacks 1

function entities:bosses/sorass_the_sinner/attacks/look/particle/timer