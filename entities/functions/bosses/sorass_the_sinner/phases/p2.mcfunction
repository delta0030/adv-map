scoreboard players set %phase sts_phase 2
execute if score %tick sts_music matches 0 if score %phase sts_phase matches 2 run scoreboard players set %tick sts_music 1

execute positioned as @e[type=armor_stand,tag=boss_3_crystal1] run playsound minecraft:block.glass.break hostile @a ~ ~ ~ 2 0.5
execute positioned as @e[type=armor_stand,tag=boss_3_crystal1] run playsound minecraft:block.ancient_debris.break hostile @a ~ ~ ~ 2 0.5
execute positioned as @e[type=armor_stand,tag=boss_3_crystal1] run playsound minecraft:entity.enderman.ambient hostile @a ~ ~ ~ 0.5 0.75
execute positioned as @e[type=armor_stand,tag=boss_3_crystal1] run playsound minecraft:entity.evoker.cast_spell hostile @a ~ ~ ~ 3 2
execute positioned as @e[type=armor_stand,tag=boss_3_crystal1] run playsound minecraft:entity.item.break hostile @a ~ ~ ~

execute at @e[type=armor_stand,tag=boss_3_crystal1R] run particle minecraft:poof ~ ~ ~ 0.1 0.25 0.1 0 10
execute at @e[type=armor_stand,tag=boss_3_crystal1R] run particle block redstone_block ~ ~ ~ 0.15 0.35 0.15 0 50 normal

kill @e[type=armor_stand,tag=boss_3_crystal1]
kill @e[type=armor_stand,tag=boss_3_crystal1R]

execute at @e[type=zombie_villager,tag=boss_3] run particle angry_villager ~ ~ ~ 0.5 2 0.5 0 10
execute at @e[type=zombie_villager,tag=boss_3] run particle damage_indicator ~ ~ ~ 0.5 2 0.5 0 10