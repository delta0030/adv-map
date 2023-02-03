time add 1

scoreboard players add %clock timeCycle 1
execute if score %clock timeCycle matches 24000 run scoreboard players set %clock timeCycle 0
execute if score %clock timeCycle matches 13000..22999 run scoreboard players set %night timeCycle 1
execute unless score %clock timeCycle matches 13000..22999 run scoreboard players set %night timeCycle 0

execute unless score %stop timeCycle matches 1 run schedule function system:cycle/loop 9t