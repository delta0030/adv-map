tp @s ~ ~ ~ facing entity @e[type=stray,tag=boss_2,limit=1]
execute rotated as @s run tp @s ~ ~ ~ ~45 ~
data modify entity @s Pos[1] set from entity @e[type=stray,tag=boss_2,limit=1] Pos[1]
data modify entity @s Rotation[1] set value 0