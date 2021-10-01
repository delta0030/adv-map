scoreboard players remove @s ui_cooldown 1
execute if score @s ui_cooldown matches 0 run tag @s remove ui_cooldown
execute unless score @s ui_cooldown matches ..0 run schedule function ui:movement/ui_cooldown/cooldown_buffer 1t