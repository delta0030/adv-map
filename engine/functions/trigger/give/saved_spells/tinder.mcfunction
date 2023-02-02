setblock 0 -1 0 shulker_box
data modify block 0 -1 0 Items set from entity @s EnderItems

execute store result block 0 -1 0 Items[{Slot:2b}].tag.saved_spell.tinder int 1 run scoreboard players get @s tinder
item replace entity @s enderchest.2 from block 0 -1 0 container.2

scoreboard players set @s tinder -1
setblock 0 -1 0 bedrock

function engine:trigger/enable