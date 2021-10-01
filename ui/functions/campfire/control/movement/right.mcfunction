scoreboard players set %bool2 campfire 0
execute if score @s campfire_menu matches 3 run scoreboard players set %bool2 campfire 1

execute if score %bool2 campfire matches 1 run scoreboard players set @s campfire_menu 1
execute unless score %bool2 campfire matches 1 run scoreboard players add @s campfire_menu 1

function ui:movement/ui_cooldown/init