scoreboard objectives add sts_phase dummy
scoreboard objectives add sts_music dummy
scoreboard objectives add boss_3_intro dummy
scoreboard objectives add sts_attacks dummy
scoreboard objectives add sts_music dummy
scoreboard objectives add sts_bias dummy
scoreboard players set %duration boss_3_intro -1
scoreboard players set 25 CONSTANTS 25
scoreboard players set 100 CONSTANTS 100
scoreboard players set 250 CONSTANTS 250
scoreboard players set 371 CONSTANTS 371
scoreboard players set 500 CONSTANTS 500
scoreboard players set 742 CONSTANTS 742
scoreboard players set %dmg_var sts_attacks 0
scoreboard players set %attack sts_attacks 100
scoreboard players set %tp sts_attacks 0
scoreboard players set %tptime sts_attacks 0
scoreboard players set %inatt sts_attacks 0
scoreboard players set %dis sts_attacks 0
scoreboard players set %duration sts_attacks 0
scoreboard players set %hb sts_attacks 0
scoreboard players set %cal sts_attacks 0
scoreboard players set %cannon sts_attacks 0
scoreboard players set %look sts_attacks 0
scoreboard players set %tick sts_music 0
scoreboard players set %status sts_music 0
scoreboard players set %timer sts_music 0
scoreboard players set %phase sts_phase 0
scoreboard players set %teleport sts_bias 0
scoreboard players set %entDagger sts_bias 0
scoreboard players set %calamity sts_bias 0
scoreboard players set %hellfire sts_bias 0
scoreboard players set %cannon sts_bias 0
scoreboard players set %look sts_bias 0
scoreboard players set %summon sts_bias 0
scoreboard players set %teleportS sts_bias 0
scoreboard players set %entDaggerS sts_bias 0
scoreboard players set %calamityS sts_bias 0
scoreboard players set %hellfireS sts_bias 0
scoreboard players set %cannonS sts_bias 0
scoreboard players set %lookS sts_bias 0
scoreboard players set %summonS sts_bias 0

kill @e[type=armor_stand,tag=boss_3_center]
kill @e[type=armor_stand,tag=boss_3_particle]

summon armor_stand -28 56 180 {Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["boss_3_center"]}

function entities:bosses/sorass_the_sinner/start/intro/anim

# scoreboard players set %phase sts_phase 1

# schedule function entities:bosses/sorass_the_sinner/music/brain 33t
schedule function entities:bosses/sorass_the_sinner/start/init 34t

function entities:bosses/sorass_the_sinner/music/brain
# execute as @a at @s run playsound minecraft:bosses.boss_3.intro music @s ~ ~ ~