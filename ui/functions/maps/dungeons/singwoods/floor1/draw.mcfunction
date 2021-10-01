setblock ~ 0 ~ oak_sign

data modify block ~ 0 ~ Text1 set value ""
data modify storage map temp set from entity @s EnderItems[2].tag.dungeons.singwoods.floor1
function ui:maps/build_map
execute as @a[tag=sw_dungeon,tag=floor1] run function ui:maps/locate_player/main
data remove storage map player
title @s title [{"nbt":"Text1","block":"~ 0 ~","interpret":true}]

setblock ~ 0 ~ bedrock