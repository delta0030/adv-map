setblock ~ 1 ~ shulker_box
data modify block ~ 1 ~ Items set from entity @s EnderItems

execute store result block ~ 1 ~ Items[1].tag.items.accessories.ranged.quiver.small_quiver int 1 run scoreboard players get @s small_quiver
item replace entity @s enderchest.1 from block ~ 1 ~ container.1

scoreboard players set @s small_quiver -1
setblock ~ 1 ~ bedrock

function engine:trigger/enable