setblock ~ 2 ~ shulker_box

item replace block ~ 2 ~ container.0 from entity @s enderchest.1
data modify block ~ 2 ~ Items[0].tag.available_crafts prepend from block ~ 2 ~ Items[0].tag.available_crafts[-1]
data remove block ~ 2 ~ Items[0].tag.available_crafts[-1]
item replace entity @s enderchest.1 from block ~ 2 ~ container.0

setblock ~ 2 ~ bedrock