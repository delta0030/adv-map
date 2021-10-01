data remove storage temp crafts[0]
execute store result score %count crafting run data get entity @s EnderItems[1].tag.available_crafts
function ui:crafting/crafts_list/cycle/main