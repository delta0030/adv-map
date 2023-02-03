function items:weapons/summoner/olink/find_objs

execute as @e[tag=ss,tag=olinked] at @s run function items:weapons/summoner/slime_staff/clear/kill_minion
tag @s remove ss_owner
kill @e[tag=ss,tag=olinked]
scoreboard players reset @s ss_timer
scoreboard players reset @s ss_target