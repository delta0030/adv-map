scoreboard players set %status sts_music 5
scoreboard players set %tick sts_music 0
scoreboard players set %timer sts_music 0

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

execute as @e[type=zombie_villager,tag=boss_3] run scoreboard players set @s mob_max_health 750
execute positioned as @e[type=armor_stand,tag=boss_3_crystal2] run playsound minecraft:block.glass.break hostile @a ~ ~ ~ 2 0.5
execute positioned as @e[type=armor_stand,tag=boss_3_crystal2] run playsound minecraft:block.ancient_debris.break hostile @a ~ ~ ~ 2 0.5
execute positioned as @e[type=armor_stand,tag=boss_3_crystal2] run playsound minecraft:entity.enderman.ambient hostile @a ~ ~ ~ 0.5 0.75
execute positioned as @e[type=armor_stand,tag=boss_3_crystal2] run playsound minecraft:entity.evoker.cast_spell hostile @a ~ ~ ~ 3 2
execute positioned as @e[type=armor_stand,tag=boss_3_crystal2] run playsound minecraft:entity.ender_dragon.hurt hostile @a ~ ~ ~ 1 0.5
execute positioned as @e[type=armor_stand,tag=boss_3_crystal2] run playsound minecraft:entity.item.break hostile @a ~ ~ ~ 1 0.5

execute at @e[type=zombie_villager,tag=boss_3] run particle angry_villager ~ ~ ~ 0.5 2 0.5 0 10
execute at @e[type=zombie_villager,tag=boss_3] run particle damage_indicator ~ ~ ~ 0.5 2 0.5 0 10
execute at @e[type=zombie_villager,tag=boss_3] run playsound minecraft:entity.zombie_villager.death hostile @a ~ ~ ~ 1 0.5

execute at @e[type=armor_stand,tag=boss_3_crystal2B] run particle minecraft:poof ~ ~ ~ 0.1 0.25 0.1 0 10
execute at @e[type=armor_stand,tag=boss_3_crystal2B] run particle block lapis_block ~ ~ ~ 0.15 0.35 0.15 0 50 normal

kill @e[type=armor_stand,tag=boss_3_crystal2]
kill @e[type=armor_stand,tag=boss_3_crystal2B]

execute at @e[type=zombie_villager,tag=boss_3] run particle large_smoke ~ ~ ~ 0.5 1.5 0.5 0 250
execute at @e[type=zombie_villager,tag=boss_3] run summon armor_stand ~ ~ ~ {Small:1b,Invulnerable:1b,Invisible:1b,Tags:["phase_3_marker"]}
scoreboard players set %phase sts_phase -5
execute at @e[type=armor_stand,tag=boss_3_center] run particle large_smoke ~ ~ ~ 0.5 1.5 0.5 0 250

execute at @e[tag=boss_3] run playsound minecraft:bosses.boss_3.laugh hostile @a ~ ~ ~ 0.5
weather thunder

scoreboard players set %tp sts_attacks 0

tp @e[type=zombie_villager,tag=boss_3] @e[type=armor_stand,tag=boss_3_center,limit=1]

tag @e[type=zombie_villager,tag=boss_3] add eotb
scoreboard players set %duration sts_attacks -1
function entities:bosses/sorass_the_sinner/music/p3tran
function entities:bosses/sorass_the_sinner/phases/health
schedule function entities:bosses/sorass_the_sinner/phases/p3 211t