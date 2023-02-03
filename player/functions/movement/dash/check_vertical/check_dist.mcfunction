execute if entity @p[scores={checkXdist=1..}] run function player:movement/dash/dash
execute if entity @p[scores={checkXdist=..-1},tag=!start_cooldown] run function player:movement/dash/dash
execute if entity @p[scores={checkZdist=1..},tag=!start_cooldown] run function player:movement/dash/dash
execute if entity @p[scores={checkZdist=..-1},tag=!start_cooldown] run function player:movement/dash/dash