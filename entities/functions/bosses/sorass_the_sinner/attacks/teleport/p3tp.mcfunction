execute if score %tptime sts_attacks matches 10.. run scoreboard players set %tptime sts_attacks 10
execute if score %tptime sts_attacks matches 0 as @e[type=zombie_villager,tag=boss_3] run function entities:bosses/sorass_the_sinner/attacks/teleport/init

execute if score %tptime sts_attacks matches 0 run scoreboard players remove %tp sts_attacks 1
execute if score %tptime sts_attacks matches 0 run scoreboard players set %tptime sts_attacks 10
execute if score %tptime sts_attacks matches 1.. run scoreboard players remove %tptime sts_attacks 1

execute if score %tp sts_attacks matches 0 run scoreboard players set %inatt sts_attacks 0
execute if score %tp sts_attacks matches 0 run scoreboard players add %attack sts_attacks 60

execute if score %tp sts_attacks matches 1.. unless score %phase sts_phase matches -5 run schedule function entities:bosses/sorass_the_sinner/attacks/teleport/p3tp 1t