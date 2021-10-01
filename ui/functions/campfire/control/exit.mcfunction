function ui:movement/rotation_lock/unlock
kill @e[type=area_effect_cloud,tag=menucloud,tag=!camp_cloud,sort=nearest,limit=6]
gamemode adventure @s
scoreboard players set @s campfire 0
title @s clear