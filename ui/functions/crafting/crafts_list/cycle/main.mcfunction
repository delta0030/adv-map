data modify block ~ 2 ~ Items[0].tag.available_crafts append from block ~ 2 ~ Items[0].tag.available_crafts[0]
data remove block ~ 2 ~ Items[0].tag.available_crafts[0]

execute store result score %first_recipe crafting run data get block ~ 2 ~ Items[0].tag.available_crafts[0][0]
execute store result score %selected_recipe crafting run data get storage temp crafts[0][0]

execute unless score %first_recipe crafting = %selected_recipe crafting run function ui:crafting/crafts_list/cycle/main