data remove storage temp crafts[0]
data modify storage temp crafts prepend from storage temp crafts[-1]
data remove storage temp crafts[-1]
execute store result score %count crafting run data get entity @s EnderItems[{Slot:1b}].tag.available_crafts
function ui:crafting/crafts_list/cycle/main