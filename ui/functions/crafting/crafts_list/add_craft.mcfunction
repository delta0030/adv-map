# create placeholder shulker to store scoreboard values
execute at @s run setblock 0 -1 0 shulker_box
data merge block 0 -1 0 {Items:[{id:"minecraft:dirt",Count:1b,Slot:0b}]}

data modify block 0 -2 0 Items[{Slot:1b}].tag.current_id set value []
execute store result block 0 -1 0 Items[{Slot:0b}].tag.placeholder int 1 run scoreboard players get @s recipe_id
data modify block 0 -2 0 Items[{Slot:1b}].tag.current_id append from block 0 -1 0 Items[{Slot:0b}].tag.placeholder
execute store result block 0 -1 0 Items[{Slot:0b}].tag.placeholder int 1 run scoreboard players get @s allow_craft
data modify block 0 -2 0 Items[{Slot:1b}].tag.current_id append from block 0 -1 0 Items[{Slot:0b}].tag.placeholder

data modify block 0 -2 0 Items[{Slot:1b}].tag.available_crafts append value []
data modify block 0 -2 0 Items[{Slot:1b}].tag.available_crafts[-1] set from block 0 -2 0 Items[{Slot:1b}].tag.current_id

# transfer updated drive to ender chest
item replace entity @s enderchest.1 from block 0 -2 0 container.1

setblock 0 -1 0 bedrock