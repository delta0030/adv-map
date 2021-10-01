time add 1

scoreboard players add %clock timeCycle 1
execute if score %clock timeCycle matches 24000 run scoreboard players set %clock timeCycle 0

execute unless score %stop timeCycle matches 1 run schedule function system:cycle/loop 3t