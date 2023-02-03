scoreboard players set @s crafting 0
tag @s remove list_complete
kill @e[type=area_effect_cloud,tag=menucloud,sort=nearest,limit=7]
kill @e[type=area_effect_cloud,tag=craft_face,sort=nearest,limit=1]
gamemode adventure @s
title @s clear
tp @s ~ ~0.3 ~
tag @s add actionbar
function ui:movement/rotation_lock/unlock