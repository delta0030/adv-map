data modify storage array_ops search set from storage temp new_crafts
data modify storage array_ops search_val set from storage temp copy_old[0][0]
function math:array_ops/search_algorithm/init
# if search returns no match and there are still recipes to check, go to next lowest recipe and repeat

execute unless score %arr_result math matches 0 if data storage temp copy_old[] run function ui:crafting/crafts_list/cycle/select_new
# if search returns match, set as new selection
execute if score %arr_result math matches 0 run function ui:crafting/crafts_list/cycle/match