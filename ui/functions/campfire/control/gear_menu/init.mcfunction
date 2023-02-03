### title variants for later (first space must be edited per name of campfire but rest will always work)
# Gear Highlighted: title @s title [{"translate":"space.-35"},"\uE012",{"translate":"space.-250"},"\uE011",{"translate":"space.-45"},"\uE010",{"translate":"space.15"},"\uE00B",{"translate":"space.15"},"\uE00C"]
# Stats Highlighted: title @s title [{"translate":"space.-35"},"\uE012",{"translate":"space.-250"},"\uE011",{"translate":"space.-45"},"\uE00D",{"translate":"space.16"},"\uE00E",{"translate":"space.14"},"\uE00C"]
# Fast Travel Highlighted: title @s title [{"translate":"space.-35"},"\uE012",{"translate":"space.-250"},"\uE011",{"translate":"space.-45"},"\uE00D",{"translate":"space.16"},"\uE00B",{"translate":"space.15"},"\uE00F"]
tag @s add in_gear
tag @s remove in_main

scoreboard objectives add gear_menu dummy
scoreboard objectives add gear_page dummy
scoreboard objectives add eq_menu dummy
scoreboard players set @s gear_menu 1
scoreboard players set @s gear_page 1
scoreboard players set @s eq_menu 0