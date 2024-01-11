scoreboard players add in1 math8 1
scoreboard players operation #range math8 = in1 math8
scoreboard players operation #range math8 -= in math8

scoreboard players operation #m1 math8 = #range math8
scoreboard players remove #m1 math8 1
function system:music/sfx/wind/rng/private/next_int_lcg
scoreboard players operation out math8 += in math8

scoreboard players reset #m1 math8
scoreboard players remove in1 math8 1