# attack pick
scoreboard players set in math 1
scoreboard players set in1 math 8
function math:rng/range

# attack selection
execute if score %cal sts_attacks matches 0 if score %hb sts_attacks matches 0 if score %cannon sts_attacks matches 0 if score %look sts_attacks matches 0 if score out math matches 1 run function entities:bosses/sorass_the_sinner/attacks/teleport/start
execute if score %cal sts_attacks matches 0 if score %hb sts_attacks matches 0 if score %cannon sts_attacks matches 0 if score out math matches 2..3 run function entities:bosses/sorass_the_sinner/attacks/ent_dagger/start
execute if score %cal sts_attacks matches 0 if score %hb sts_attacks matches 0 if score %cannon sts_attacks matches 0 if score %look sts_attacks matches 0 if score out math matches 4 run function entities:bosses/sorass_the_sinner/attacks/cannon/start
execute if score %cal sts_attacks matches 0 if score %hb sts_attacks matches 0 if score %cannon sts_attacks matches 0 if score %look sts_attacks matches 0 if score out math matches 5 run function entities:bosses/sorass_the_sinner/attacks/hellfire/start
execute if score %cal sts_attacks matches 0 if score %hb sts_attacks matches 0 if score %cannon sts_attacks matches 0 if score %look sts_attacks matches 0 if score out math matches 6 run function entities:bosses/sorass_the_sinner/attacks/calamity/start
execute if score %cal sts_attacks matches 0 if score %hb sts_attacks matches 0 if score %cannon sts_attacks matches 0 if score %look sts_attacks matches 0 if score out math matches 7..8 run function entities:bosses/sorass_the_sinner/attacks/look/start