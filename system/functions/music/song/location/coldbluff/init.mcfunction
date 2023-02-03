scoreboard players set in1 math6 10
execute if score %snow coldbluff matches 1 run scoreboard players set in1 math6 2

function system:music/rng/range_lcg

execute if score out math6 matches 1 run playsound ambient.coldbluff.track1 music @s
execute if score out math6 matches 2 run playsound ambient.coldbluff.track2 music @s
execute if score out math6 matches 3 run playsound ambient.coldbluff.track3 music @s
execute if score out math6 matches 4 run playsound ambient.coldbluff.track4 music @s
execute if score out math6 matches 5 run playsound ambient.coldbluff.track5 music @s
execute if score out math6 matches 6 run playsound ambient.coldbluff.track6 music @s
execute if score out math6 matches 6 run scoreboard players add @s delay 25000
execute if score out math6 matches 7 run playsound ambient.coldbluff.track7 music @s
execute if score out math6 matches 8 run playsound ambient.coldbluff.track8 music @s
execute if score out math6 matches 8 run scoreboard players add @s delay 8000
execute if score out math6 matches 9 run playsound ambient.coldbluff.track9 music @s
execute if score out math6 matches 10 run playsound ambient.coldbluff.track10 music @s

execute if score %snow coldbluff matches 1 if score out math6 matches 1 run playsound ambient.coldbluff.track1 music @s
execute if score %snow coldbluff matches 1 if score out math6 matches 2 run playsound ambient.coldbluff.track2 music @s