scoreboard objectives add first_recipe dummy
execute store result score @s first_recipe run data get entity @s EnderItems[1].tag.available_crafts[0][0]

execute unless score @s first_recipe = @s selected_recipe run function ui:crafting/crafts_list/cycle/init