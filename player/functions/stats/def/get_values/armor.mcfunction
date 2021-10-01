scoreboard objectives add def_var dummy
execute store result score @s def_var run data get entity @s Inventory[{Slot:103b}].tag.data.stats.def
scoreboard players operation @s base_def += @s def_var
execute store result score @s def_var run data get entity @s Inventory[{Slot:102b}].tag.data.stats.def
scoreboard players operation @s base_def += @s def_var
execute store result score @s def_var run data get entity @s Inventory[{Slot:101b}].tag.data.stats.def
scoreboard players operation @s base_def += @s def_var
execute store result score @s def_var run data get entity @s Inventory[{Slot:100b}].tag.data.stats.def
scoreboard players operation @s base_def += @s def_var
scoreboard objectives remove def_var