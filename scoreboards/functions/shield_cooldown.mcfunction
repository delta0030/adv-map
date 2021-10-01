scoreboard objectives add shield_cooldown dummy
execute if score @s shield_cooldown matches 1.. run scoreboard players remove @s shield_cooldown 1

execute if score @s[tag=!shield_disabled] shield_cooldown matches 1.. run function items:gear/shields/disable
execute if score @s[tag=shield_disabled] shield_cooldown matches 0 run function items:gear/shields/restore