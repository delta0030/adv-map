execute at @a if entity @e[type=zombie_villager,tag=boss_3,distance=5..] run scoreboard players set %att sts_attacks 1
scoreboard players add %teleport sts_bias 1
execute if score %teleportS sts_bias matches 0 run function entities:bosses/sorass_the_sinner/attacks/teleport/seq
