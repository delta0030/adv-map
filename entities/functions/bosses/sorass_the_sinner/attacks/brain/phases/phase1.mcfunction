# attack pick
scoreboard players set in math 1
scoreboard players set in1 math 6
function math:rng/range

# attack selection
execute if score %cannon sts_attacks matches 0 if score out math matches 1..2 run function entities:bosses/sorass_the_sinner/attacks/ent_dagger/start
execute unless entity @e[type=zombie_villager,tag=eotb] if score out math matches 3 run function entities:bosses/sorass_the_sinner/attacks/elixir/start
execute if score %cannon sts_attacks matches 0 if score out math matches 4 run function entities:bosses/sorass_the_sinner/attacks/cannon/start
execute if score %cannon sts_attacks matches 0 if score out math matches 5 run function entities:bosses/sorass_the_sinner/attacks/look/start
execute if score %cannon sts_attacks matches 0 if score out math matches 6 run function entities:bosses/sorass_the_sinner/attacks/summon/start