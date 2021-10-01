execute store result score %availability crafting run data get entity @s EnderItems[1].tag.available_crafts[0][1]

execute if score %availability crafting matches 0 run function player:crafting/craft/fail
execute if score %availability crafting matches 1 run function player:crafting/craft/success

function ui:movement/ui_cooldown/init