execute as @e[type=armor_stand,tag=sts_ent] at @s unless block ~ ~-0.78 ~ air run kill @s

execute if entity @e[type=armor_stand,tag=sts_ent] run schedule function entities:bosses/sorass_the_sinner/attacks/ent_dagger/reset 1t