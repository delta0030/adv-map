scoreboard objectives add craft_count dummy

execute store result score @s craft_count run data get entity @s EnderItems[1].tag.available_crafts

execute unless score @s craft_count matches 5.. run data modify block ~ 2 ~ Items[1].tag.available_crafts append value []

execute unless score @s craft_count matches 5.. run data modify block ~ 2 ~ Items[1].tag.available_crafts[-1] set value [0,0]

item replace entity @s enderchest.1 from block ~ 2 ~ container.1

execute unless score @s craft_count matches 5.. run function ui:crafting/draw/assign_scores/fill_empty_slots
