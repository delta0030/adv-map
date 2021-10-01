setblock ~ 0 ~ bedrock
setblock ~ 1 ~ oak_sign
data merge block ~ 1 ~ {Text1:'[{"text":""}]'}
function ui:campfire/gear/selection_gui/draw/assign_unicode/pages/page1
title @s title [{"translate":"space.-7"},"\uE012",{"translate":"space.-250"},{"nbt":"Text1","block":"~ 1 ~","interpret":true}]
setblock ~ 1 ~ bedrock