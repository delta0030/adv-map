scoreboard players set @s dash_cooldown 121
tag @s remove dash_test
tag @s remove dash_active
tag @s remove start_cooldown
tag @s remove cooldown_active
scoreboard objectives remove playerX
scoreboard objectives remove playerZ
scoreboard objectives remove playerdashX
scoreboard objectives remove playerdashZ
scoreboard objectives remove checkXdist
scoreboard objectives remove checkZdist
kill @e[type=area_effect_cloud,tag=player_dash_cloud,limit=1,sort=nearest]
