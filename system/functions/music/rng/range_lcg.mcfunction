scoreboard players add in1 math6 1
scoreboard players operation #range math6 = in1 math6
scoreboard players operation #range math6 -= in math6

scoreboard players operation #m1 math6 = #range math6
scoreboard players remove #m1 math6 1
function system:music/rng/private/next_int_lcg
scoreboard players operation out math6 += in math6

scoreboard players reset #m1 math6
scoreboard players remove in1 math6 1