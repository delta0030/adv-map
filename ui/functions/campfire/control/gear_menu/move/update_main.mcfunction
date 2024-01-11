function ui:movement/get_direction

# left (over 1 slot, check if on first page b/c no left page arrow there, check if on right arrow to place player back in center row)
execute if score @s move_dir matches 1 if score @s gear_page matches 1 unless score @s gear_menu matches 1 unless score @s gear_menu matches 9 unless score @s gear_menu matches 17 unless score @s gear_menu matches 25 run scoreboard players remove @s gear_menu 1
execute if score @s move_dir matches 1 if score @s gear_menu matches 25 run scoreboard players set @s gear_menu 16
execute if score @s move_dir matches 1 if score @s gear_page matches 2..5 run function ui:campfire/control/gear_menu/move/check_left

# forward (up a row unless at top row)
execute if score @s move_dir matches 2 unless score @s gear_menu matches 0..8 unless score @s gear_menu matches 25 run scoreboard players remove @s gear_menu 8

# left (over 1 slot, check if on last page b/c no right page arrow there, check if on left arrow to place player back in center row)
execute if score @s move_dir matches 3 if score @s gear_page matches 5 unless score @s gear_menu matches 8 unless score @s gear_menu matches 16 unless score @s gear_menu matches 24 unless score @s gear_menu matches 0 run scoreboard players add @s gear_menu 1
execute if score @s move_dir matches 1 if score @s gear_menu matches 0 run scoreboard players set @s gear_menu 9
execute if score @s move_dir matches 3 if score @s gear_page matches 1..4 run function ui:campfire/control/gear_menu/move/check_right

# back (down a row unless on last row or arrow)
execute if score @s move_dir matches 4 unless score @s gear_menu matches 17..25 run scoreboard players add @s gear_menu 8

# down (exit menu)
execute if score @s move_dir matches 5 run function ui:campfire/control/gear_menu/exit_gear_menu

# up (select gear)
execute if score @s move_dir matches 6 if score @s gear_menu matches 0..24 run function ui:campfire/control/gear_menu/eq_menu/check_slot