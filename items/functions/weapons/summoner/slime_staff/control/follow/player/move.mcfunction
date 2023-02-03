# face player
execute as @e[type=!player,tag=olinked] at @s run tp @s ~ ~ ~ facing entity @p[tag=olinked]
execute as @e[type=armor_stand,tag=ss,tag=olinked,distance=3.3..25] at @s run tp @s ~ ~ ~ ~ ~-50

# set minion motion
execute as @e[type=armor_stand,tag=ss,tag=olinked,distance=3.3..25] at @s if block ^ ^ ^1 #items:nonsolid run function items:weapons/summoner/slime_staff/control/motion
execute if entity @e[type=armor_stand,tag=ss,tag=olinked,distance=25..] run tp @e[type=armor_stand,tag=ss,tag=olinked,distance=25..] ~ ~ ~
execute as @e[type=armor_stand,tag=ss,tag=olinked] at @s unless block ^ ^ ^1 #items:nonsolid run tp @s ~ ~ ~