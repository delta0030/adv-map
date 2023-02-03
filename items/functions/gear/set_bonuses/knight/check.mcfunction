scoreboard objectives add bonus_score dummy
scoreboard objectives add bonus_var dummy
scoreboard players set @s bonus_score 0
tag @s remove knight_bonus


execute store result score @s bonus_var run data get entity @s Inventory[{Slot:103b}].tag.heaume
scoreboard players operation @s bonus_score += @s bonus_var
execute store result score @s bonus_var run data get entity @s Inventory[{Slot:102b}].tag.hauberk
scoreboard players operation @s bonus_score += @s bonus_var
execute store result score @s bonus_var run data get entity @s Inventory[{Slot:101b}].tag.chausses
scoreboard players operation @s bonus_score += @s bonus_var
execute store result score @s bonus_var run data get entity @s Inventory[{Slot:100b}].tag.solleret
scoreboard players operation @s bonus_score += @s bonus_var

execute if score @s bonus_score matches 4 run tag @s add knight_bonus
execute if score @s bonus_score matches 4 as @a[tag=knight_bonus] run function items:gear/set_bonuses/knight/apply