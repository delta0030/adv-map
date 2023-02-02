# spreadplayers
execute at @e[type=zombie_villager,tag=boss_3] run spreadplayers ~ ~ 2 6 false @e[type=armor_stand,tag=sts_summon]

# grab ypos
execute as @e[type=zombie_villager,tag=boss_3] store result score @s sts_summon_ypos run data get entity @s Pos[1]
execute as @e[type=armor_stand,tag=sts_summon] store result score @s sts_summon_ypos run data get entity @s Pos[1]

# find difference
scoreboard players operation @e[type=armor_stand,tag=sts_summon] sts_summon_ypos -= @e[type=zombie_villager,tag=boss_3] sts_summon_ypos

schedule function entities:bosses/sorass_the_sinner/attacks/summon/types/scores 30t