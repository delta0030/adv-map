execute unless entity @s[tag=mana_delay_calculated] run function player:stats/mana/regen/reset
execute unless entity @s[tag=mana_delay_calculated] run function player:stats/mana/regen/calc_delay
execute unless score @s mana_delay matches ..0 run scoreboard players remove @s mana_delay 1
execute if score @s mana_delay matches 0 run function player:stats/mana/regen/choose_formula
execute if score @s player_mana = @s player_max_mana run function player:stats/mana/regen/clear_scores