scoreboard players set %att sts_attacks 3
scoreboard players add %calamity sts_bias 1
execute if score %calamityS sts_bias matches 0 run function entities:bosses/sorass_the_sinner/attacks/calamity/init