data modify entity @s NoAI set value 1b
scoreboard objectives add raycast dummy

execute at @s run tp @s ~ ~ ~ facing entity @p

tag @s add triple_shot