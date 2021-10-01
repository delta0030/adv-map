execute if score @s craft_slot_5 matches 0 run data merge block ~ 3 ~ {Text1:'[{"nbt":"Text1","block":"~ 3 ~","interpret":"true"},{"translate":"space.26","font":"default"}]'}
execute if score @s craft_slot_5 matches 1 run data merge block ~ 3 ~ {Text1:'[{"nbt":"Text1","block":"~ 3 ~","interpret":"true"},{"text":"\\uE00B","font":"crafting","color":"dark_gray"}]'}
