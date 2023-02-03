# summon central cloud
summon area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["center","menucloud"],FallDistance:0.0f}

# position central cloud
execute as @e[type=area_effect_cloud,tag=center,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ -146.2 0

# spawn directional clouds based on center
execute as @e[type=area_effect_cloud,tag=center,limit=1,sort=nearest] run function ui:movement/summon_markers