execute store result score %check_selection crafting run data get storage temp edit[0][0]
execute if score %check_selection crafting = %selection crafting run scoreboard players set %sel_bool crafting 1
data remove storage temp edit[0]

execute if score %sel_bool crafting matches 0 if data storage temp edit[] run function ui:crafting/crafts_list/cycle/find_selection