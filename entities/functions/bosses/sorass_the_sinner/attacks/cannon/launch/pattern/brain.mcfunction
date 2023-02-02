execute if score %lTimer sts_cannon matches 1 run function entities:bosses/sorass_the_sinner/attacks/cannon/launch/pattern/run
execute if score %lTimer sts_cannon matches 1 run scoreboard players add %launch sts_cannon 1
execute if score %phase sts_phase matches 1 if score %lTimer sts_cannon matches 6.. run scoreboard players set %lTimer sts_cannon 0
execute if score %phase sts_phase matches 2 if score %lTimer sts_cannon matches 4.. run scoreboard players set %lTimer sts_cannon 0
execute if score %phase sts_phase matches 3 if score %lTimer sts_cannon matches 2.. run scoreboard players set %lTimer sts_cannon 0
scoreboard players add %lTimer sts_cannon 1

execute if entity @e[type=armor_stand,tag=can_mark] run schedule function entities:bosses/sorass_the_sinner/attacks/cannon/launch/pattern/brain 1t
execute unless entity @e[type=armor_stand,tag=can_mark] run function entities:bosses/sorass_the_sinner/attacks/cannon/clear