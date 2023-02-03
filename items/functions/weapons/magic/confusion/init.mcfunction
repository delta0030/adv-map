team add conf
execute at @s run tag @e[tag=mob,tag=!conf,tag=!boss,distance=..5] add conf
execute as @e[tag=conf] run team join conf @s
execute as @e[tag=conf] run effect give @s glowing 5 1 true
execute as @e[tag=conf] run scoreboard players set @s conf 100
execute as @e[tag=conf] run tag @s add conf1
team modify conf color black

execute if entity @e[tag=conf] run playsound minecraft:entity.warden.attack_impact master @s ~ ~ ~ 1 0.5
execute unless entity @e[tag=conf] run playsound minecraft:entity.warden.nearby_close master @s ~ ~ ~ 1 2

tag @s add magic_used
tag @s remove mana_delay_calculated

function items:weapons/magic/confusion/timer