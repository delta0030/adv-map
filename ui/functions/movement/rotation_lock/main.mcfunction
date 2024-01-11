execute unless score @s oid matches 0.. run function ui:movement/rotation_lock/new_id
scoreboard objectives add rot dummy
scoreboard players set %match rot 0
execute store result score %rx rx run data get entity @s Rotation[0] 100
execute store result score %ry ry run data get entity @s Rotation[1] 100
execute if score %rx rx = @s rx run scoreboard players set %match rot 1
execute if score %ry ry = @s ry run scoreboard players set %match rot 1

execute at @s as @e[type=area_effect_cloud,tag=headlock] if score @s oid = @p oid run function ui:movement/rotation_lock/update_pos