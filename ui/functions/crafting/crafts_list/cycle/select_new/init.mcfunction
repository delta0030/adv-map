execute store result score %check1 crafting run data get storage temp crafts[1][0]
#execute store result score %check2 crafting run data get storage temp crafts[-1][0]

execute if score %check1 crafting matches 1.. run function ui:crafting/crafts_list/cycle/select_new/down
#execute if score %check1 crafting matches 0 if score %check2 crafting matches 1.. run function ui:crafting/crafts_list/cycle/select_new/up
execute if score %check1 crafting matches 0 if score %check2 crafting matches 0 run scoreboard players set %cycle_bool crafting 1