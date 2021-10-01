setblock ~ 2 ~ shulker_box

item replace block ~ 2 ~ container.0 from entity @s enderchest.1
data modify block ~ 2 ~ Items[0].tag.available_crafts append from block ~ 2 ~ Items[0].tag.available_crafts[0]
data remove block ~ 2 ~ Items[0].tag.available_crafts[0]
item replace entity @s enderchest.1 from block ~ 2 ~ container.0

setblock ~ 2 ~ bedrock