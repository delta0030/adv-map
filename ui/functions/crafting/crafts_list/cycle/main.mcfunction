data modify block 0 -2 0 Items[{Slot:1b}].tag.available_crafts append from block 0 -2 0 Items[{Slot:1b}].tag.available_crafts[0]
data remove block 0 -2 0 Items[{Slot:1b}].tag.available_crafts[0]

execute store result score %first_recipe crafting run data get block 0 -2 0 Items[{Slot:1b}].tag.available_crafts[0][0]

execute unless score %first_recipe crafting = %new_selection crafting run function ui:crafting/crafts_list/cycle/main