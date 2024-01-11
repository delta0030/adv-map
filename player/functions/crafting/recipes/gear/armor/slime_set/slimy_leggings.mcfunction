scoreboard players set @s display_craft 0
scoreboard players set @s allow_craft 0

execute store result score @s ingred_count run data get entity @s EnderItems[{Slot:1b}].tag.items.materials.mob_drops.hostile.bosses.globulous.slime_ball 1
execute if score @s ingred_count matches 7.. run scoreboard players add @s display_craft 1
execute store result score @s ingred_count run data get entity @s EnderItems[{Slot:1b}].tag.items.materials.mob_drops.hostile.bosses.globulous.gelatin 1
execute if score @s ingred_count matches 3.. run scoreboard players add @s display_craft 1
execute if score @s display_craft matches 1.. run scoreboard players set @s craft_unlocked 1
execute if score @s display_craft matches 2 run scoreboard players set @s allow_craft 1