tag @s add magic_used
tag @s remove mana_delay_calculated
execute store result score %cost player_mana run data get entity @s SelectedItem.tag.data.stats.mana_cost
scoreboard players operation %cost_var player_mana = %cost player_mana
scoreboard players operation %cost_var player_mana *= @s mana_reduction
scoreboard players operation %cost_var player_mana /= 100 CONSTANTS
scoreboard players operation %cost player_mana -= %cost_var player_mana
scoreboard players operation @s player_mana -= %cost player_mana