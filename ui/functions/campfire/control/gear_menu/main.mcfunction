# store current menu score
execute store result score @s menu_old run scoreboard players get @s gear_menu

# get new menu score by checking for position relative to markers
execute if entity @s[tag=!ui_cooldown,tag=!equip_upgrade] run function ui:campfire/control/gear_menu/move/update_main
execute if entity @s[tag=!ui_cooldown,tag=equip_upgrade] run function ui:campfire/control/gear_menu/move/update_eq

# check if score changed
scoreboard players operation @s menu_old -= @s gear_menu

# if score changed, init cooldown to prevent crazy fast scrolling
execute unless score @s[tag=!ui_cooldown] menu_old matches 0 run function ui:movement/ui_cooldown/init

# reset player position
tp @p @e[type=area_effect_cloud,tag=camp_cloud,limit=1,sort=nearest]

# refresh unicode scores
execute if score @s gear_page matches 1 run function ui:campfire/gear/selection_gui/draw/assign_scores/pages/page1

# assign highlight code based on menu score
function ui:campfire/control/gear_menu/modify_scores

# draw new gui
function ui:campfire/gear/selection_gui/draw/draw