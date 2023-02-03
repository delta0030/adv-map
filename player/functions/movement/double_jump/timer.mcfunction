scoreboard objectives add timer dummy
scoreboard players add @s timer 1
execute if score @s timer matches 4 run function player:movement/double_jump/reset