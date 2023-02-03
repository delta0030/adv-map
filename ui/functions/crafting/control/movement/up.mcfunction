execute store result score %availability crafting run data get entity @s EnderItems[{Slot:1b}].tag.available_crafts[0][1]

execute if score %availability crafting matches 0 run function player:crafting/craft/fail
execute if score %availability crafting matches 1 run function player:crafting/craft/success

scoreboard players add @s ui_cooldown 8

function ui:movement/ui_cooldown/init