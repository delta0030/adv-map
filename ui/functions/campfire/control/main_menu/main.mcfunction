setblock ~ 1 ~ oak_sign

execute store result score @s menu_old run scoreboard players get @s campfire_menu

function ui:campfire/control/main_menu/get_camp
execute as @a[tag=in_main,tag=!ui_cooldown] run function ui:campfire/control/main_menu/move/get_menu_pos
scoreboard players operation @s menu_old -= @s campfire_menu

execute unless score @s[tag=!ui_cooldown] menu_old matches 0 run function ui:movement/ui_cooldown/init

tp @p @e[type=area_effect_cloud,tag=camp_cloud,limit=1,sort=nearest]

execute if score @s campfire_menu matches 1 run data merge block ~ 1 ~ {Text1:'[{"nbt":"Text1","block":"~ 1 ~","interpret":"true"},{"translate":"space.-45"},{"text":"\\uE010"},{"translate":"space.16"},"\\uE00B",{"translate":"space.14"},{"text":"\\uE00C"}]'}
execute if score @s campfire_menu matches 2 run data merge block ~ 1 ~ {Text1:'[{"nbt":"Text1","block":"~ 1 ~","interpret":"true"},{"translate":"space.-45"},{"text":"\\uE00D"},{"translate":"space.16"},"\\uE00E",{"translate":"space.14"},{"text":"\\uE00C"}]'}
execute if score @s campfire_menu matches 3 run data merge block ~ 1 ~ {Text1:'[{"nbt":"Text1","block":"~ 1 ~","interpret":"true"},{"translate":"space.-45"},{"text":"\\uE00D"},{"translate":"space.16"},"\\uE00B",{"translate":"space.14"},{"text":"\\uE00F"}]'}

title @s title [{"nbt":"Text1","block":"~ 1 ~","interpret":true}]

setblock ~ 1 ~ bedrock