execute at @e[type=zombie_villager,tag=boss_3] run particle large_smoke ~ ~1 ~ 0.3 1 0.3 0 30 force
execute at @e[type=zombie_villager,tag=boss_3] run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 3 0.7

execute as @e[type=armor_stand,tag=sts_behind] at @s run tp @e[type=zombie_villager,tag=boss_3] @s

execute at @e[type=zombie_villager,tag=boss_3] run particle large_smoke ~ ~1 ~ 0.3 1 0.3 0 30 force