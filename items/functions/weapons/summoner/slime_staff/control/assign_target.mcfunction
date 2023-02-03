function olink:find_objs

execute at @e[type=slime,tag=ss,tag=olinked] run tag @e[type=!player,tag=mob,sort=nearest] add ss_target
scoreboard players set @s ss_target 1