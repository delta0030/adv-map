execute as @e[tag=conf] if score @s conf matches 1.. run scoreboard players remove @s conf 1
execute as @e[tag=conf] at @s run function items:weapons/magic/confusion/particle
execute as @e[tag=conf] if score @s conf matches ..0 run function items:weapons/magic/confusion/clear
team modify conf color black
execute if entity @e[tag=conf] run schedule function items:weapons/magic/confusion/timer 1t