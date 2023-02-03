execute if score @s player_mana > @s player_max_mana run scoreboard players operation @s player_mana = @s player_max_mana

scoreboard objectives add player_mana_old dummy
scoreboard objectives add mana_diff dummy

scoreboard objectives add player_max_m_old dummy
scoreboard objectives add max_mana_diff dummy

scoreboard objectives add update_mana dummy

scoreboard players operation @s player_mana_old -= @s player_mana
scoreboard players operation @s mana_diff = @s player_mana_old
scoreboard players operation @s player_mana_old = @s player_mana

scoreboard players operation @s player_max_m_old -= @s player_max_mana
scoreboard players operation @s max_mana_diff = @s player_max_m_old
scoreboard players operation @s player_mana_old = @s player_max_mana

execute unless score @s mana_diff matches 0 run scoreboard players set @s update_mana 1
execute unless score @s max_mana_diff matches 0 run scoreboard players set @s update_mana 1

scoreboard objectives add mana_perc dummy
scoreboard objectives add mana_temp dummy
scoreboard objectives add xpl_desired dummy
scoreboard objectives add xpp_desired dummy
scoreboard players set 1000 CONSTANTS 1000

scoreboard players operation @s mana_temp = @s player_mana
scoreboard players operation @s mana_temp *= 1000 CONSTANTS
execute store result score @s mana_perc run scoreboard players operation @s mana_temp /= @s player_max_mana

scoreboard players operation @s xpl_desired = @s player_mana

execute unless score @s update_mana matches 0 run function player:stats/mana/check_diff