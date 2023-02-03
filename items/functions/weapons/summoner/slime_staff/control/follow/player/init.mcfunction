function olink:find_objs

execute as @e[type=slime,tag=olinked] at @s run tp @s @e[type=armor_stand,tag=olinked,limit=1]
execute if score @s ss_timer matches 0 run function items:weapons/summoner/slime_staff/control/follow/player/move