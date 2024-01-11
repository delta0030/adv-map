# EotB = Elixir of the Brutish

execute if predicate entities:chance_50 as @e[type=zombie_villager,tag=eotb] at @s run particle dust_color_transition 1.000 0.000 0.000 1 0.149 0.000 0.000 ~ ~ ~ 0.5 1 0.5 0 40 normal

execute if score %duration sts_attacks matches 1.. run scoreboard players remove %duration sts_attacks 1
execute if score %phase sts_phase matches 1..2 if score %duration sts_attacks matches 0 run tag @e[type=zombie_villager,tag=eotb] remove eotb
execute if entity @e[type=zombie_villager,tag=eotb] run schedule function entities:bosses/sorass_the_sinner/attacks/elixir/effect 1t