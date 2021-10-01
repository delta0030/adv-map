scoreboard objectives add bonus_score dummy
scoreboard objectives add bonus_var dummy
scoreboard players set @s bonus_score 0
tag @s remove slime_bonus

execute store result score @s bonus_var run data get entity @s Inventory[{Slot:103b}].tag.slimy_helm
scoreboard players operation @s bonus_score += @s bonus_var
execute store result score @s bonus_var run data get entity @s Inventory[{Slot:102b}].tag.slimy_chestplate
scoreboard players operation @s bonus_score += @s bonus_var
execute store result score @s bonus_var run data get entity @s Inventory[{Slot:101b}].tag.slimy_leggings
scoreboard players operation @s bonus_score += @s bonus_var
execute store result score @s bonus_var run data get entity @s Inventory[{Slot:100b}].tag.slimy_boots
scoreboard players operation @s bonus_score += @s bonus_var

execute if score @s bonus_score matches 4 run tag @s add slime_bonus
execute if score @s bonus_score matches 4 run function items:gear/set_bonuses/slimy/apply