team add conf
team join conf @s
effect give @s glowing 5 1 true
scoreboard players set @s conf 100
tag @s add conf1
scoreboard players set @s confusion 0
team modify conf color black

function items:weapons/magic/confusion/timer