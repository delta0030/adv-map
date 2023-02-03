tag @p add start_cooldown
tag @p remove dash_test
execute at @s run tp @e[type=area_effect_cloud,tag=player_dash_cloud,sort=nearest,limit=1] ~ ~ ~ facing entity @p
data modify entity @s Rotation[1] set value 0f
execute at @s run function player:movement/dash/check_front
playsound minecraft:entity.blaze.shoot master @p ~ ~ ~ 0.3 2
kill @s