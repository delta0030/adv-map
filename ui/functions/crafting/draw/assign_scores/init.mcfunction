setblock ~ 2 ~ shulker_box

data modify block ~ 2 ~ Items set from entity @s EnderItems
execute store result score @s craft_count run data get entity @s EnderItems[1].tag.available_crafts
execute unless score @s craft_count matches 5.. run function ui:crafting/draw/assign_scores/fill_empty_slots
function ui:crafting/draw/assign_scores/get_slots

setblock ~ 2 ~ bedrock