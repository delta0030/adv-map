setblock ~ 1 ~ oak_sign
data modify block ~ 1 ~ Text1 set value ""
function ui:campfire/main/draw/get_camp
function ui:campfire/main/draw/get_score
title @s title [{"nbt":"Text1","block":"~ 1 ~","interpret":true}]