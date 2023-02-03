playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 2

function player:crafting/craft/search/init

# copy old crafting list and generate new list
data remove storage temp old_crafts
data remove storage temp copy_old
data modify storage temp old_crafts set from entity @s EnderItems[{Slot:1b}].tag.available_crafts
    # clear out empty slots if <5 available crafts (prevents empty space in wrong spot)
function ui:crafting/draw/assign_scores/remove_zeroes
function ui:crafting/crafts_list/init

setblock 0 -2 0 shulker_box
item replace block 0 -2 0 container.1 from entity @s enderchest.1
function ui:crafting/draw/assign_scores/fill_empty_slots

# check if new list contains old selection--if not, select nearest recipe
scoreboard players set %sel_bool crafting 0
data modify storage temp new_crafts set from entity @s EnderItems[{Slot:1b}].tag.available_crafts
execute store result score %selection crafting run data get storage temp copy_old[0][0]
function ui:crafting/crafts_list/cycle/find_selection

# new selection variable
execute store result score %check_selection crafting run data get block 0 -2 0 Items[{Slot:1b}].tag.available_crafts[0][0]
# if find_selection finds an available recipe from old list on either side of old selection -OR- a nearby selection was present in new list
# -AND- selection is not first item in new list
execute if score %cycle_bool crafting matches 0 unless score %check_selection crafting = %new_selection crafting run function ui:crafting/crafts_list/cycle/main
item replace entity @s enderchest.1 from block 0 -2 0 container.1

setblock 0 -2 0 bedrock