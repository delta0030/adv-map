execute as @a[tag=!in_gear,tag=!in_travel,tag=!in_stats,tag=!in_main] at @s run function ui:campfire/control/main_menu/init
execute as @a[tag=in_main] at @s run function ui:campfire/control/main_menu/main

# if both tags are on the player, they've just selected the gear menu but haven't left the main menu
execute as @a[tag=in_gear,tag=in_main] at @s run function ui:campfire/control/gear_menu/init
execute as @a[tag=in_gear] at @s run function ui:campfire/control/gear_menu/main