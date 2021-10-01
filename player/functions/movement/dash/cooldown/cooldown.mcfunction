scoreboard objectives add dash_cooldown dummy
execute unless score @s dash_cooldown matches ..120 run scoreboard players set @s dash_cooldown 121
scoreboard players remove @s dash_cooldown 1
function player:movement/dash/cooldown/cooldown_timer

execute if score @s dash_cooldown matches 0 run function player:movement/dash/reset