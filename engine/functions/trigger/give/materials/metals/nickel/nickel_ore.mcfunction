setblock 0 -1 0 shulker_box
data modify block 0 -1 0 Items set from entity @s EnderItems

execute store result block 0 -1 0 Items[{Slot:1b}].tag.items.materials.metals.nickel.nickel_ore int 1 run scoreboard players get @s nickel_ore
item replace entity @s enderchest.1 from block 0 -1 0 container.1

scoreboard players set @s nickel_ore -1
setblock 0 -1 0 bedrock

function engine:trigger/enable