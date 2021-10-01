setblock ~ 0 ~ shulker_box

item replace block ~ 0 ~ container.0 from entity @s enderchest.1
data modify block ~ 0 ~ Items[0].tag.current_shield.Slot set value 0b
data modify block ~ 0 ~ Items[0] set from block ~ 0 ~ Items[0].tag.current_shield
item replace entity @s weapon.offhand from block ~ 0 ~ container.0

setblock ~ 0 ~ bedrock

tag @s remove shield_disabled