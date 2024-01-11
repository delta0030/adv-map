execute store result score %val crafting run data get storage temp old_crafts[0][0]
execute unless score %val crafting matches 0 run data modify storage temp copy_old append from storage temp old_crafts[0]
data remove storage temp old_crafts[0]

execute if data storage temp old_crafts[] run function ui:crafting/draw/assign_scores/remove_zeroes