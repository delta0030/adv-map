# face player
execute if score @s ss_timer matches 0 as @e[type=!player,tag=olinked] at @s run tp @s ~ ~ ~ facing entity @e[sort=nearest,tag=ss_target,limit=1]
execute if score @s ss_timer matches 0 as @e[type=armor_stand,tag=ss,tag=olinked] at @s run tp @s ~ ~ ~ ~ ~-50
# set minion motion
execute if score @s ss_timer matches 0 as @e[type=armor_stand,tag=ss,tag=olinked] at @s if block ^ ^ ^1 #items:nonsolid run function items:weapons/summoner/slime_staff/control/motion