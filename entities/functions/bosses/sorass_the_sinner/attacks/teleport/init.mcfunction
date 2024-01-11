# hippity hoppity the lost souls code is now my property :)
execute as @e[type=area_effect_cloud,tag=sts_fight_center] at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["sts_tp_center"]}
execute as @e[type=area_effect_cloud,tag=sts_tp_center] at @s run function entities:bosses/sorass_the_sinner/attacks/teleport/set_rotation

execute at @e[type=zombie_villager,tag=boss_3] run playsound minecraft:block.beacon.power_select hostile @a ~ ~ ~ 1 1.2
execute if score %phase sts_phase matches 3 at @e[type=zombie_villager,tag=boss_3] run summon lightning_bolt ~ ~-5 ~
execute if score %phase sts_phase matches 3 as @a at @s if entity @e[type=zombie_villager,tag=boss_3,distance=..2] run function player:stats/dmg/get_base_dmg/sinner/lightning

execute at @e[type=zombie_villager,tag=boss_3] run particle large_smoke ~ ~1 ~ 0.3 1 0.3 0 30 force

scoreboard objectives add sts_tp dummy
scoreboard players set %dist_max sts_tp 40
scoreboard players set %rotation_max sts_tp 270
execute as @e[type=area_effect_cloud,tag=sts_tp_center] at @s rotated as @s run function entities:bosses/sorass_the_sinner/attacks/teleport/main
# scoreboard objectives remove sts_tp
kill @e[type=area_effect_cloud,tag=sts_tp_center]