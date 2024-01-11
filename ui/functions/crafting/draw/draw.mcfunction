setblock 0 2 0 oak_sign

data merge block 0 2 0 {Text1:'[{"text":""}]'}
data merge block 0 2 0 {Text1:'[{"translate":"space.-112","font":"default"},{"text":"\\uE030","font":"crafting"},{"translate":"space.-237","font":"default"},{"text":"\\uE000","font":"crafting"},{"translate":"space.-53","font":"default"}]'}
function ui:crafting/draw/assign_unicode/tabs
function ui:crafting/draw/assign_scores/init
function ui:crafting/draw/assign_unicode/init
title @s title [{"nbt":"Text1","block":"0 2 0","interpret":true}]

setblock 0 2 0 bedrock