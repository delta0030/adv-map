scoreboard objectives add timer_divisor dummy
scoreboard players set @s timer_divisor 20

scoreboard objectives add dash_timer dummy
scoreboard objectives add timer_check dummy
scoreboard objectives add timer_hold dummy

scoreboard players operation @s timer_hold = @s dash_cooldown
execute store result score @s timer_check run scoreboard players operation @s timer_hold %= @s timer_divisor
scoreboard players operation @s timer_hold = @s dash_cooldown
execute if score @s timer_check matches 0 store result score @s dash_timer run scoreboard players operation @s timer_hold /= @s timer_divisor

execute if score @s dash_timer matches 0 run title @s title "dash ready (filler)"