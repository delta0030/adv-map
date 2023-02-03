scoreboard players set in math8 1
scoreboard players set in1 math8 7

function system:music/sfx/wind/rng/range_lcg

execute as @a[scores={windevent=1}] if entity @a[scores={wind=0}] if score out math8 matches 1 run playsound ambient.sfx.wind.wind1 ambient @s
execute as @a[scores={windevent=1}] if entity @a[scores={wind=0}] if score out math8 matches 2 run playsound ambient.sfx.wind.wind2 ambient @s
execute as @a[scores={windevent=1}] if entity @a[scores={wind=0}] if score out math8 matches 3 run playsound ambient.sfx.wind.wind3 ambient @s
execute as @a[scores={windevent=1}] if entity @a[scores={wind=0}] if score out math8 matches 4 run playsound ambient.sfx.wind.wind4 ambient @s
execute as @a[scores={windevent=1}] if entity @a[scores={wind=0}] if score out math8 matches 5 run playsound ambient.sfx.wind.wind5 ambient @s
execute as @a[scores={windevent=1}] if entity @a[scores={wind=0}] if score out math8 matches 6 run playsound ambient.sfx.wind.wind6 ambient @s
execute as @a[scores={windevent=1}] if entity @a[scores={wind=0}] if score out math8 matches 7 run playsound ambient.sfx.wind.wind7 ambient @s

execute if score out math8 matches 1 run scoreboard players set @a wind 1500
execute if score out math8 matches 2 run scoreboard players set @a wind 11500
execute if score out math8 matches 3 run scoreboard players set @a wind 10300
execute if score out math8 matches 4 run scoreboard players set @a wind 10400
execute if score out math8 matches 5 run scoreboard players set @a wind 20500
execute if score out math8 matches 6 run scoreboard players set @a wind 20600
execute if score out math8 matches 7 run scoreboard players set @a wind 11700