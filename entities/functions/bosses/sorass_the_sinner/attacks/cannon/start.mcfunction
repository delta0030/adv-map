scoreboard players set %att sts_attacks 6
scoreboard players add %cannon sts_bias 1
execute as @a at @e[type=zombie_villager,tag=boss_3] run playsound entity.allay.ambient_without_item hostile @s ~ ~ ~ 2 0.75
execute as @a at @e[type=zombie_villager,tag=boss_3] run playsound entity.camel.dash hostile @s ~ ~ ~ 1 0.7
execute if score %cannonS sts_bias matches 0 run function entities:bosses/sorass_the_sinner/attacks/cannon/init
