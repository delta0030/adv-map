execute store result score %val crafting run data get storage temp crafts0[0][0]
execute unless score %val crafting matches 0 run data modify storage temp crafts append from storage temp crafts0[0]
data remove storage temp crafts0[0]

execute if data storage temp crafts0[] run function ui:crafting/draw/assign_scores/remove_zeroes