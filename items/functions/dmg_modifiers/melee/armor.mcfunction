scoreboard objectives add dmg_var dummy
scoreboard objectives add dmg_var_sum dummy
scoreboard players set @s dmg_var_sum 100
execute store result score @s dmg_var run data get entity @s Inventory[{Slot:103b}].tag.data.stats.melee
scoreboard players operation @s dmg_var_sum += @s dmg_var
execute store result score @s dmg_var run data get entity @s Inventory[{Slot:102b}].tag.data.stats.melee
scoreboard players operation @s dmg_var_sum += @s dmg_var
execute store result score @s dmg_var run data get entity @s Inventory[{Slot:101b}].tag.data.stats.melee
scoreboard players operation @s dmg_var_sum += @s dmg_var
execute store result score @s dmg_var run data get entity @s Inventory[{Slot:100b}].tag.data.stats.melee
scoreboard players operation @s dmg_var_sum += @s dmg_var