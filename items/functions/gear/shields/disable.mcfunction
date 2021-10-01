scoreboard players set @s block_time 0
execute store result score @s shield_cooldown run data get entity @s Inventory[{Slot:-106b}].tag.data.stats.cooldown
setblock ~ 0 ~ shulker_box

item replace block ~ 0 ~ container.0 from entity @s enderchest.1
data modify block ~ 0 ~ Items[0].tag.current_shield set from entity @s Inventory[{Slot:-106b}]
item replace block ~ 0 ~ container.1 with stick
data modify block ~ 0 ~ Items[1].tag.display.Name set from block ~ 0 ~ Items[0].tag.current_shield.tag.display.Name
data modify block ~ 0 ~ Items[1].tag.display.Lore set from block ~ 0 ~ Items[0].tag.current_shield.tag.display.Lore
data modify block ~ 0 ~ Items[1].tag.CustomModelData set from block ~ 0 ~ Items[0].tag.current_shield.tag.data.model
item replace entity @s weapon.offhand from block ~ 0 ~ container.1
item replace block ~ 0 ~ container.1 with air
item replace entity @s enderchest.1 from block ~ 0 ~ container.0

setblock ~ 0 ~ bedrock

tag @s add shield_disabled