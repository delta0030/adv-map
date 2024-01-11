scoreboard players add @s recipe_id 1
scoreboard players set @s craft_unlocked 0

function ui:crafting/crafts_list/check_recipes/accessories
execute if score @s craft_unlocked matches 1 run function ui:crafting/crafts_list/add_craft
execute unless score @s recipe_id matches 1.. run function ui:crafting/crafts_list/categories/accessories

execute if score @s recipe_id matches 1.. run tag @s add list_complete