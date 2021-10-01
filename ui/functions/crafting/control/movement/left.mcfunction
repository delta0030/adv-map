scoreboard players set %bool2 crafting 0
execute if score @s craft_tab matches 1 run scoreboard players set %bool2 crafting 1

execute if score %bool2 crafting matches 1 run scoreboard players set @s craft_tab 4
execute unless score %bool2 crafting matches 1 run scoreboard players remove @s craft_tab 1
function ui:crafting/crafts_list/init

function ui:movement/ui_cooldown/init