setblock 0 -1 0 shulker_box
data modify block 0 -1 0 Items set from entity @s EnderItems

execute store result block 0 -1 0 Items[{Slot:1b}].tag.items.materials.mob_drops.hostile.bosses.globulous.slime_ball int 1 run scoreboard players get @s slime_ball
item replace entity @s enderchest.1 from block 0 -1 0 container.1

scoreboard players set @s slime_ball -1
setblock 0 -1 0 bedrock

function engine:trigger/enable