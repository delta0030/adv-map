execute as @e[type=minecraft:armor_stand,tag=sts_ent] at @s run particle block dirt ~ ~ ~ 0.1 0.1 0.1 0 5 force
execute as @e[type=minecraft:armor_stand,tag=sts_ent] at @s run particle dust_color_transition 0.094 0.239 0.114 1 0.251 0.251 0.251 ~ ~ ~ 0.1 0.1 0.1 0 5 
execute as @e[type=armor_stand,tag=sts_ent] at @s as @a[distance=..1.15] run tag @s add ent_damage
execute as @e[type=armor_stand,tag=sts_ent] at @s as @a[distance=..1.15,tag=ent_damage] run function player:stats/dmg/get_base_dmg/sinner/ent_damage
execute as @e[type=armor_stand,tag=sts_ent] at @s as @a[distance=1.16..] run tag @s remove ent_damage

execute if entity @e[type=armor_stand,tag=sts_ent] if entity @e[type=zombie_villager,tag=boss_3] run schedule function entities:bosses/sorass_the_sinner/attacks/ent_dagger/buffer 1t