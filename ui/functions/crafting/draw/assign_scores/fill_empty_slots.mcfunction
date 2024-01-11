scoreboard objectives add craft_count dummy

execute store result score @s craft_count run data get block 0 -2 0 Items[{Slot:1b}].tag.available_crafts
execute unless score @s craft_count matches 5.. run function ui:crafting/draw/assign_scores/add_empty_slot

item replace entity @s enderchest.1 from block 0 -2 0 container.1