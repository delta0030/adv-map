#tellraw @a {"score":{"name":"%out","objective":"sts_cannon"}}

execute if score %seqCount sts_cannon = %seq sts_cannon as @a at @s if entity @e[type=zombie_villager,tag=boss_3,distance=..5] if score @s iframes matches 0 run function player:stats/dmg/get_base_dmg/fire_damage

execute if score %out sts_cannon matches 1 run particle smoke ~ ~1 ~ 0.2 0.2 0.2 0 10
execute if score %out sts_cannon matches 2 run particle smoke ~ ~1 ~ 0.35 0.35 0.35 0 15
execute if score %out sts_cannon matches 3 run particle smoke ~ ~1 ~ 0.5 0.5 0.5 0 20
execute if score %out sts_cannon matches 4 run particle smoke ~ ~1.25 ~ 0.75 0.75 0.75 0 30
execute if score %out sts_cannon matches 5 run particle smoke ~ ~1.25 ~ 1 1 1 0 40
execute if score %out sts_cannon matches 6 run particle large_smoke ~ ~1.5 ~ 1.15 1.15 1.15 0 10
execute if score %out sts_cannon matches 7 run particle large_smoke ~ ~1.5 ~ 1.25 1.25 1.25 0 11
execute if score %out sts_cannon matches 8 run particle large_smoke ~ ~1.5 ~ 1.45 1.45 1.45 0 12
execute if score %out sts_cannon matches 9 run particle large_smoke ~ ~1.5 ~ 1.65 1.65 1.65 0 13