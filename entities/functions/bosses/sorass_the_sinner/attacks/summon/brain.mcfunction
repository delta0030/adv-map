# particle
execute at @e[type=armor_stand,tag=sts_summon] if predicate entities:chance_20 run function entities:bosses/sorass_the_sinner/attacks/summon/particle

# loop
execute if entity @e[type=armor_stand,tag=sts_summon] run schedule function entities:bosses/sorass_the_sinner/attacks/summon/brain 1t