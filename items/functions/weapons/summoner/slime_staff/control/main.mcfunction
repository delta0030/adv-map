scoreboard objectives add ss_target dummy
scoreboard players set @s ss_target 0
function items:weapons/summoner/slime_staff/control/timer
execute at @s if entity @e[tag=mob,distance=..7] run function items:weapons/summoner/slime_staff/control/assign_target
execute at @s run function items:weapons/summoner/slime_staff/control/follow/pick
execute as @e[type=slime,tag=ss] run effect give @s resistance 10 10 true
execute as @e[type=slime,tag=ss] at @s as @e[tag=mob,dx=0] unless score @s iframes matches 1.. run function items:weapons/summoner/slime_staff/dmg