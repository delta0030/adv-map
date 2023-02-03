execute if score @s craft_tab matches 1 run function ui:crafting/crafts_list/check_recipes/materials
execute if score @s craft_tab matches 2 run function ui:crafting/crafts_list/check_recipes/gear
execute if score @s craft_tab matches 3 run function ui:crafting/crafts_list/check_recipes/accessories
execute if score @s craft_tab matches 4 run function ui:crafting/crafts_list/check_recipes/consumables

setblock ~ 0 ~ shulker_box

data modify block ~ 0 ~ Items set from entity @s EnderItems
execute store result block ~ 0 ~ Items[1].tag.available_crafts[0][1] int 1 run scoreboard players get @s allow_craft
item replace entity @s enderchest.1 from block ~ 0 ~ container.1

setblock ~ 0 ~ bedrock