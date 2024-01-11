scoreboard objectives add craft_slot_1 dummy
scoreboard objectives add craft_slot_2 dummy
scoreboard objectives add craft_slot_3 dummy
scoreboard objectives add craft_slot_4 dummy
scoreboard objectives add craft_slot_5 dummy

scoreboard objectives add slot_1_status dummy
scoreboard objectives add slot_2_status dummy
scoreboard objectives add slot_3_status dummy
scoreboard objectives add slot_4_status dummy
scoreboard objectives add slot_5_status dummy

execute store result score @s craft_slot_1 run data get entity @s EnderItems[{Slot:1b}].tag.available_crafts[-2][0]
execute store result score @s craft_slot_2 run data get entity @s EnderItems[{Slot:1b}].tag.available_crafts[-1][0]
execute store result score @s craft_slot_3 run data get entity @s EnderItems[{Slot:1b}].tag.available_crafts[0][0]
execute store result score @s craft_slot_4 run data get entity @s EnderItems[{Slot:1b}].tag.available_crafts[1][0]
execute store result score @s craft_slot_5 run data get entity @s EnderItems[{Slot:1b}].tag.available_crafts[2][0]

execute store result score @s slot_1_status run data get entity @s EnderItems[{Slot:1b}].tag.available_crafts[-2][1]
execute store result score @s slot_2_status run data get entity @s EnderItems[{Slot:1b}].tag.available_crafts[-1][1]
execute store result score @s slot_3_status run data get entity @s EnderItems[{Slot:1b}].tag.available_crafts[0][1]
execute store result score @s slot_4_status run data get entity @s EnderItems[{Slot:1b}].tag.available_crafts[1][1]
execute store result score @s slot_5_status run data get entity @s EnderItems[{Slot:1b}].tag.available_crafts[2][1]