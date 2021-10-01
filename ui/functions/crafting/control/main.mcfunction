function ui:crafting/control/movement/get_menu_pos
# conditional necessary for clearing ui if player exits
execute unless score @s crafting matches 0 run function ui:crafting/draw/draw