# create shulker box with ender chest contents
setblock 0 -2 0 shulker_box

item replace block 0 -2 0 container.1 from entity @s enderchest.1

# clear crafts list
data modify block 0 -2 0 Items[{Slot:1b}].tag.available_crafts set value []

# transfer cleared drive to ender chest
item replace entity @s enderchest.1 from block 0 -2 0 container.1

scoreboard objectives add craft_unlocked dummy
scoreboard objectives add recipe_id dummy

scoreboard players set @s recipe_id 0
function ui:crafting/crafts_list/main

setblock 0 -2 0 bedrock