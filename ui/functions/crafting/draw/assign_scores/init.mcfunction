setblock 0 -2 0 shulker_box

item replace block 0 -2 0 container.1 from entity @s enderchest.1
execute store result score @s craft_count run data get entity @s EnderItems[{Slot:1b}].tag.available_crafts
execute unless score @s craft_count matches 5.. run function ui:crafting/draw/assign_scores/fill_empty_slots
function ui:crafting/draw/assign_scores/get_slots

setblock 0 -2 0 bedrock