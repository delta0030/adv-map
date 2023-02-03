scoreboard players set @s display_craft 0
scoreboard players set @s allow_craft 0

execute store result score @s ingred_count run data get entity @s EnderItems[{Slot:1b}].tag.items.materials.misc.natural.chipped_rock 1
execute if score @s ingred_count matches 2.. run scoreboard players add @s display_craft 1
execute store result score @s ingred_count run data get entity @s EnderItems[{Slot:1b}].tag.items.materials.misc.natural.twig 1
execute if score @s ingred_count matches 4.. run scoreboard players add @s display_craft 1
execute store result score @s ingred_count run data get entity @s EnderItems[{Slot:1b}].tag.items.materials.mob_drops.passive.chicken.feather 1
execute if score @s ingred_count matches 2.. run scoreboard players add @s display_craft 1
execute if score @s display_craft matches 1.. run scoreboard players set @s craft_unlocked 1
execute if score @s display_craft matches 3 run scoreboard players set @s allow_craft 1