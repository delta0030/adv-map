function ui:movement/get_direction

execute if score @s move_dir matches 3 unless score @s campfire_menu matches 3 run scoreboard players add @s campfire_menu 1
execute if score @s move_dir matches 1 unless score @s campfire_menu matches 1 run scoreboard players remove @s campfire_menu 1

#execute if score @s move_dir matches 5 run . . .

# select gear menu
execute if score @s move_dir matches 6 if score @s campfire_menu matches 1 run tag @s add in_gear