scoreboard objectives add bonus_score dummy
scoreboard objectives add bonus_var dummy
scoreboard players set @s bonus_score 0
tag @s remove sorass_bonus


execute store result score @s bonus_var run data get entity @s Inventory[{Slot:103b}].tag.sorass
scoreboard players operation @s bonus_score += @s bonus_var

execute if score @s bonus_score matches 1 run tag @s add sorass_bonus
execute if score @s bonus_score matches 1 as @a[tag=sorass_bonus] run function items:gear/set_bonuses/sorass/apply