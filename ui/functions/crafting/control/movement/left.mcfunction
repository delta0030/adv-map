playsound minecraft:item.book.page_turn master @s ~ ~ ~ 1 0.85
scoreboard players set %bool2 crafting 0
execute if score @s craft_tab matches 1 run scoreboard players set %bool2 crafting 1

execute if score %bool2 crafting matches 1 run scoreboard players set @s craft_tab 4
execute unless score %bool2 crafting matches 1 run scoreboard players remove @s craft_tab 1
function ui:crafting/crafts_list/init

scoreboard players set @s ui_cooldown 8
function ui:movement/ui_cooldown/init