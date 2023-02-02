# tp with theatrics 
# the lightning will do damage in phase 3 to try and force the player
# to stay somewhat near the boss instead of running 24/7
execute at @e[type=zombie_villager,tag=boss_3] run particle large_smoke ~ ~1 ~ 0.3 1 0.3 0 30 force
tp @e[type=zombie_villager,tag=boss_3] @a[sort=nearest,limit=1]
execute at @e[type=zombie_villager,tag=boss_3] run playsound minecraft:block.beacon.power_select hostile @a ~ ~ ~ 1 1.2
execute if score %phase sts_phase matches 3 at @e[type=zombie_villager,tag=boss_3] run summon lightning_bolt ~ ~-5 ~
execute if score %phase sts_phase matches 3 as @a at @s if entity @e[type=zombie_villager,tag=boss_3,distance=..2] run function player:stats/dmg/get_base_dmg/sinner/lightning
execute at @e[type=zombie_villager,tag=boss_3] run particle large_smoke ~ ~1 ~ 0.3 1 0.3 0 30 force