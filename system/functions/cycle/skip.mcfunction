execute if score %clock timeCycle matches 13000..22999 run time set 23000
execute if score %clock timeCycle matches 13000..22999 run scoreboard players set %clock timeCycle 23000

execute unless score %clock timeCycle matches 13000..22999 run time set 13000
execute unless score %clock timeCycle matches 13000..22999 run scoreboard players set %clock timeCycle 13000