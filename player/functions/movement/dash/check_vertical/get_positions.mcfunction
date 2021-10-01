scoreboard objectives add playerX dummy
scoreboard objectives add playerZ dummy
scoreboard objectives add playerdashX dummy
scoreboard objectives add playerdashZ dummy
scoreboard objectives add checkXdist dummy
scoreboard objectives add checkZdist dummy

execute as @p store result score @s playerX run data get entity @s Pos[0] 10
execute as @p store result score @s playerZ run data get entity @s Pos[2] 10
execute as @p store result score @s playerdashX run data get entity @e[type=area_effect_cloud,tag=player_dash_cloud,sort=nearest,limit=1] Pos[0] 10
execute as @p store result score @s playerdashZ run data get entity @e[type=area_effect_cloud,tag=player_dash_cloud,sort=nearest,limit=1] Pos[2] 10

execute as @p run scoreboard players operation @s checkXdist = @s playerX
execute as @p run scoreboard players operation @s checkZdist = @s playerZ

execute as @p run scoreboard players operation @s checkXdist -= @s playerdashX
execute as @p run scoreboard players operation @s checkZdist -= @s playerdashZ

execute as @e[type=area_effect_cloud,tag=player_dash_cloud,sort=nearest,limit=1] at @s run function player:movement/dash/check_vertical/check_dist