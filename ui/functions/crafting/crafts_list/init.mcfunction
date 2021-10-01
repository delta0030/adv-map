# create shulker box with ender chest contents
setblock ~ 2 ~ shulker_box

data modify block ~ 2 ~ Items set from entity @s EnderItems

# clear crafts list
data modify block ~ 2 ~ Items[1].tag.available_crafts set value []

# transfer cleared drive to ender chest
item replace entity @s enderchest.1 from block ~ 2 ~ container.1

scoreboard objectives add craft_unlocked dummy
scoreboard objectives add recipe_id dummy

scoreboard players set @s recipe_id 0
function ui:crafting/crafts_list/main

setblock ~ 2 ~ bedrock