scoreboard players set %entDagger sts_bias 0
scoreboard players set %teleport sts_bias 0
scoreboard players set %calamity sts_bias 0
scoreboard players set %cannon sts_bias 0
scoreboard players set %look sts_bias 0
scoreboard players set %summon sts_bias 0
scoreboard players set %entDaggerS sts_bias 0
scoreboard players set %teleportS sts_bias 0
scoreboard players set %calamityS sts_bias 0
scoreboard players set %cannonS sts_bias 0
scoreboard players set %lookS sts_bias 0
scoreboard players set %summonS sts_bias 0

scoreboard players set %hb sts_attacks 1
scoreboard players set %inatt sts_attacks 1
scoreboard players set %attack sts_attacks 110

scoreboard objectives add hellfire dummy
scoreboard players set %angle hellfire 0
scoreboard players set %timer hellfire 0
scoreboard players set %ypos hellfire 0
scoreboard players set %descent hellfire 0

# bias
execute if score %hellfire sts_bias matches 1 if predicate entities:chance_33 run scoreboard players set %hellfireS sts_bias 1
execute if score %hellfire sts_bias matches 2 if predicate entities:chance_66 run scoreboard players set %hellfireS sts_bias 1
execute if score %hellfire sts_bias matches 3 run scoreboard players set %hellfireS sts_bias 1

effect give @e[type=zombie_villager,tag=boss_3] slowness 5 5 true

execute at @e[type=zombie_villager,tag=boss_3] run summon armor_stand ~ ~1 ~2 {Invisible:1b,NoGravity:1b,Small:1b,Tags:["hellfire_part1","hellfire_particle"]}
execute at @e[type=zombie_villager,tag=boss_3] run summon armor_stand ~ ~1 ~-2 {Invisible:1b,NoGravity:1b,Small:1b,Tags:["hellfire_part2","hellfire_particle"]}
execute at @e[type=zombie_villager,tag=boss_3] run summon armor_stand ~ ~1 ~ {Invisible:1b,NoGravity:1b,Small:1b,Tags:["hellfire_center"]}

execute as @e[type=armor_stand,tag=hellfire_part1] at @s run tp @s ~ ~ ~ 90 ~
execute as @e[type=armor_stand,tag=hellfire_part2] at @s run tp @s ~ ~ ~ -90 ~

playsound minecraft:entity.ender_dragon.shoot hostile @a ~ ~ ~ 3 0.5
playsound minecraft:entity.parrot.imitate.ender_dragon hostile @a ~ ~ ~ 3 2
playsound minecraft:item.bottle.fill_dragonbreath hostile @a ~ ~ ~ 3 0.5
playsound minecraft:entity.allay.death hostile @a ~ ~ ~ 3 0.5
playsound minecraft:block.fire.ambient hostile @a ~ ~ ~ 3 0.5
playsound minecraft:entity.illusioner.cast_spell hostile @a ~ ~ ~ 3 0.5

function entities:bosses/sorass_the_sinner/attacks/hellfire/brain