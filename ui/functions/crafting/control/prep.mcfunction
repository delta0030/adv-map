summon area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["craft_cloud","menucloud","center"],FallDistance:0.0f}
execute as @e[type=area_effect_cloud,tag=craft_cloud,sort=nearest,limit=1] at @s run tp @s @p
execute as @e[type=area_effect_cloud,tag=craft_cloud,sort=nearest,limit=1] run data modify entity @s Rotation[1] set value 0f
execute as @e[type=area_effect_cloud,tag=craft_cloud,limit=1,sort=nearest] at @s run function ui:movement/summon_markers