scoreboard objectives add block_time dummy
scoreboard objectives add block_time_max dummy

scoreboard players add @s block_time 1
execute store result score @s block_time_max run data get entity @s Inventory[{Slot:-106b}].tag.data.stats.use_time

execute if score @s block_time >= @s block_time_max store result score @s shield_cooldown run data get entity @s Inventory[{Slot:-106b}].tag.data.stats.cooldown
execute if score @s block_time >= @s block_time_max run scoreboard players set @s block_time 0