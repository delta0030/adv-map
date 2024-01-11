setblock 0 -1 0 shulker_box
data modify block 0 -1 0 Items set from entity @s EnderItems

execute store result block 0 -1 0 Items[{Slot:1b}].tag.items.materials.misc.natural.pebble int 1 run scoreboard players get @s pebble
item replace entity @s enderchest.1 from block 0 -1 0 container.1

scoreboard players set @s pebble -1
setblock 0 -1 0 bedrock

function engine:trigger/enable