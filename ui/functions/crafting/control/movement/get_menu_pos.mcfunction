function ui:movement/get_direction

# line below is more consistent, but the rotation is no longer locked. uncommented line is less consistent but rotation is locked as intended
execute unless score @s move_dir matches 0 run tp @s @e[type=area_effect_cloud,tag=craft_center,sort=nearest,limit=1]
#tp @s @e[type=area_effect_cloud,tag=craft_center,sort=nearest,limit=1]
#tellraw @s {"score":{"name":"*","objective":"move_dir"}}

# check if next and last entry in list have at least a value of [1, 0] 
execute store result score %val1 crafting run data get entity @s EnderItems[1].tag.available_crafts[-1][0]
execute if score @s move_dir matches 2 unless score %val1 crafting matches 0 run function ui:crafting/control/movement/scroll_up

execute store result score %val2 crafting run data get entity @s EnderItems[1].tag.available_crafts[1][0]
execute if score @s move_dir matches 4 unless score %val2 crafting matches 0 run function ui:crafting/control/movement/scroll_down

execute if score @s[tag=!ui_cooldown] move_dir matches 1 run function ui:crafting/control/movement/left
execute if score @s[tag=!ui_cooldown] move_dir matches 3 run function ui:crafting/control/movement/right
execute if score @s move_dir matches 5 run function ui:crafting/control/movement/exit
execute if score @s[tag=!ui_cooldown] move_dir matches 6 unless score @s craft_slot_3 matches 0 run function ui:crafting/control/movement/up

execute store result score %selected_recipe crafting run data get entity @s EnderItems[1].tag.available_crafts[0][0]