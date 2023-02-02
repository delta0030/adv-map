scoreboard players set %att sts_attacks 2
scoreboard players add %entDagger sts_bias 1
execute if score %entDaggerS sts_bias matches 0 run function entities:bosses/sorass_the_sinner/attacks/ent_dagger/assign