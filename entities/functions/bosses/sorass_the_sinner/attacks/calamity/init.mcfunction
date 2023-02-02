scoreboard players set %entDagger sts_bias 0
scoreboard players set %teleport sts_bias 0
scoreboard players set %hellfire sts_bias 0
scoreboard players set %cannon sts_bias 0
scoreboard players set %look sts_bias 0
scoreboard players set %summon sts_bias 0
scoreboard players set %entDaggerS sts_bias 0
scoreboard players set %teleportS sts_bias 0
scoreboard players set %hellfireS sts_bias 0
scoreboard players set %cannonS sts_bias 0
scoreboard players set %lookS sts_bias 0
scoreboard players set %summonS sts_bias 0

scoreboard objectives add sts_calamity dummy
scoreboard players set %time sts_calamity 21
scoreboard players set %level sts_calamity 0
scoreboard players set %calTime sts_calamity 0

scoreboard players set %inatt sts_attacks 1

# bias
execute if score %calamity sts_bias matches 1 if predicate entities:chance_33 run scoreboard players set %calamityS sts_bias 1
execute if score %calamity sts_bias matches 2 if predicate entities:chance_66 run scoreboard players set %calamityS sts_bias 1
execute if score %calamity sts_bias matches 3 run scoreboard players set %calamityS sts_bias 1

execute as @e[type=zombie_villager,tag=boss_3] run effect give @s slowness 100000 100 true

execute at @e[type=zombie_villager,tag=boss_3] run summon armor_stand ~ ~ ~ {Small:1b,Invisible:1b,Invulnerable:1b,Tags:["calamity","center","cal_location"]}
execute at @e[type=armor_stand,tag=center] run summon armor_stand ~ ~ ~ {Small:1b,NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["calamity","center1","calcir","cal_location"]}
execute at @e[type=armor_stand,tag=center] run summon armor_stand ~ ~ ~ {Small:1b,NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["calamity","center2","calcir","cal_location"]}
execute at @e[type=armor_stand,tag=center] run summon armor_stand ~ ~4 ~ {Small:1b,NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["calamity","cal_cen"]}
execute at @e[type=armor_stand,tag=center] run summon armor_stand ~ ~2 ~ {Small:1b,NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["calamity","cal_mov"]}

execute as @e[type=armor_stand,tag=center] at @s run tp @e[type=armor_stand,tag=calcir] ~ ~ ~

execute if score %phase sts_phase matches -5 run function entities:bosses/sorass_the_sinner/attacks/calamity/clear
execute unless score %phase sts_phase matches -5 run function entities:bosses/sorass_the_sinner/attacks/calamity/summoning_circle/brain