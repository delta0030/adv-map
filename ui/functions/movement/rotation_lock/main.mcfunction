execute unless score @s oid matches 0.. run function ui:movement/rotation_lock/new_id

execute at @s as @e[type=area_effect_cloud,tag=headlock] if score @s oid = @p oid run function ui:movement/rotation_lock/update_pos