scoreboard players set %att sts_attacks 5
scoreboard players add %hellfire sts_bias 1
execute if score %hellfireS sts_bias matches 0 run function entities:bosses/sorass_the_sinner/attacks/hellfire/init
