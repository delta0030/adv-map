setblock ~ 0 ~ shulker_box destroy

item replace block ~ 0 ~ container.1 from entity @s enderchest.1
data modify block ~ 0 ~ Items[1].tag.available_crafts set from storage recipe_list edit
item replace entity @s enderchest.1 from block ~ 0 ~ container.1

setblock ~ 0 ~ bedrock