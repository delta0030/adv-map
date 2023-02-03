function ui:movement/get_direction

# 2 = up
# 4 = down
# 1 = left
# 3 = right
# 5 = down
# 6 = up
#tellraw @s {"score":{"name":"*","objective":"move_dir"}}
execute unless score @s move_dir matches 0 run tp @s @e[type=area_effect_cloud,tag=camp_cloud,sort=nearest,limit=1]

execute if score @s move_dir matches 1 run function ui:campfire/control/movement/left
execute if score @s move_dir matches 3 run function ui:campfire/control/movement/right
execute if score @s move_dir matches 5 run function ui:campfire/control/exit