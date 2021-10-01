# create placeholder shulker to store scoreboard values
execute at @s run setblock ~1 2 ~ shulker_box
data merge block ~1 2 ~ {Items:[{id:"minecraft:dirt",Count:1b,Slot:0b}]}

data modify block ~ 2 ~ Items[1].tag.current_id set value []
execute store result block ~1 2 ~ Items[0].tag.placeholder int 1 run scoreboard players get @s recipe_id
data modify block ~ 2 ~ Items[1].tag.current_id append from block ~1 2 ~ Items[0].tag.placeholder
execute store result block ~1 2 ~ Items[0].tag.placeholder int 1 run scoreboard players get @s allow_craft
data modify block ~ 2 ~ Items[1].tag.current_id append from block ~1 2 ~ Items[0].tag.placeholder

data modify block ~ 2 ~ Items[1].tag.available_crafts append value []
data modify block ~ 2 ~ Items[1].tag.available_crafts[-1] set from block ~ 2 ~ Items[1].tag.current_id

# transfer updated drive to ender chest
item replace entity @s enderchest.1 from block ~ 2 ~ container.1

setblock ~1 2 ~ bedrock