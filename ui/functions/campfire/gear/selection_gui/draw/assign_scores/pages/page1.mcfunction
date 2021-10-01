# create slot scoreboards to track ids
scoreboard objectives add gear_slot1 dummy
scoreboard objectives add gear_slot2 dummy
scoreboard objectives add gear_slot3 dummy
scoreboard objectives add gear_slot4 dummy
scoreboard objectives add gear_slot5 dummy
scoreboard objectives add gear_slot6 dummy
scoreboard objectives add gear_slot7 dummy
scoreboard objectives add gear_slot8 dummy
scoreboard objectives add gear_slot9 dummy
scoreboard objectives add gear_slot10 dummy
scoreboard objectives add gear_slot11 dummy
scoreboard objectives add gear_slot12 dummy
scoreboard objectives add gear_slot13 dummy
scoreboard objectives add gear_slot14 dummy
scoreboard objectives add gear_slot15 dummy
scoreboard objectives add gear_slot16 dummy
scoreboard objectives add gear_slot17 dummy
scoreboard objectives add gear_slot18 dummy
scoreboard objectives add gear_slot19 dummy
scoreboard objectives add gear_slot20 dummy
scoreboard objectives add gear_slot21 dummy
scoreboard objectives add gear_slot22 dummy
scoreboard objectives add gear_slot23 dummy
scoreboard objectives add gear_slot24 dummy

scoreboard objectives add equip_upgrade dummy
scoreboard objectives add right_arrow dummy

scoreboard players set @s equip_upgrade 0
scoreboard players set @s right_arrow 0

# assign slot values
execute store result score @s gear_slot1 run data get entity @s EnderItems[0].tag.unlocked_ids[0]
execute store result score @s gear_slot2 run data get entity @s EnderItems[0].tag.unlocked_ids[1]
execute store result score @s gear_slot3 run data get entity @s EnderItems[0].tag.unlocked_ids[2]
execute store result score @s gear_slot4 run data get entity @s EnderItems[0].tag.unlocked_ids[3]
execute store result score @s gear_slot5 run data get entity @s EnderItems[0].tag.unlocked_ids[4]
execute store result score @s gear_slot6 run data get entity @s EnderItems[0].tag.unlocked_ids[5]
execute store result score @s gear_slot7 run data get entity @s EnderItems[0].tag.unlocked_ids[6]
execute store result score @s gear_slot8 run data get entity @s EnderItems[0].tag.unlocked_ids[7]
execute store result score @s gear_slot9 run data get entity @s EnderItems[0].tag.unlocked_ids[8]
execute store result score @s gear_slot10 run data get entity @s EnderItems[0].tag.unlocked_ids[9]
execute store result score @s gear_slot11 run data get entity @s EnderItems[0].tag.unlocked_ids[10]
execute store result score @s gear_slot12 run data get entity @s EnderItems[0].tag.unlocked_ids[11]
execute store result score @s gear_slot13 run data get entity @s EnderItems[0].tag.unlocked_ids[12]
execute store result score @s gear_slot14 run data get entity @s EnderItems[0].tag.unlocked_ids[13]
execute store result score @s gear_slot15 run data get entity @s EnderItems[0].tag.unlocked_ids[14]
execute store result score @s gear_slot16 run data get entity @s EnderItems[0].tag.unlocked_ids[15]
execute store result score @s gear_slot17 run data get entity @s EnderItems[0].tag.unlocked_ids[16]
execute store result score @s gear_slot18 run data get entity @s EnderItems[0].tag.unlocked_ids[17]
execute store result score @s gear_slot19 run data get entity @s EnderItems[0].tag.unlocked_ids[18]
execute store result score @s gear_slot20 run data get entity @s EnderItems[0].tag.unlocked_ids[19]
execute store result score @s gear_slot21 run data get entity @s EnderItems[0].tag.unlocked_ids[20]
execute store result score @s gear_slot22 run data get entity @s EnderItems[0].tag.unlocked_ids[21]
execute store result score @s gear_slot23 run data get entity @s EnderItems[0].tag.unlocked_ids[22]
execute store result score @s gear_slot24 run data get entity @s EnderItems[0].tag.unlocked_ids[23]