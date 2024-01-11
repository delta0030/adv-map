scoreboard players set %att sts_attacks 7
scoreboard players add %look sts_bias 1
execute if score %lookS sts_bias matches 0 run function entities:bosses/sorass_the_sinner/attacks/look/particle/start