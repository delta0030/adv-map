function ui:movement/get_direction

# forward (up a row unless at top row)
execute if score @s move_dir matches 2 unless score @s eq_menu matches 0 run scoreboard players remove @s eq_menu 1

# back (down a row unless on last row or arrow)
execute if score @s move_dir matches 4 unless score @s eq_menu matches 1 run scoreboard players add @s eq_menu 1

# down (exit equip/upgrade menu)
execute if score @s move_dir matches 5 run function ui:campfire/control/gear_menu/eq_menu/exit_eq_menu