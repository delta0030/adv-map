setblock ~ 1 ~ shulker_box
data modify storage gear_list scores set from entity @s EnderItems[0].tag.unlocked_ids

function mechanics:gear/id_tree/main
scoreboard players set @s new_gear_id 0

data modify block ~ 1 ~ Items set from entity @s EnderItems
data modify block ~ 1 ~ Items[0].tag.unlocked_ids set from storage gear_list scores
data modify storage gear_list scores set value []
loot replace entity @s enderchest.0 1 mine ~ 1 ~ minecraft:diamond_pickaxe{drop_contents:true}
setblock ~ 1 ~ bedrock