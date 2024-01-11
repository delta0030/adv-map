scoreboard players add in1 math7 1
scoreboard players operation #range math7 = in1 math7
scoreboard players operation #range math7 -= in math7

scoreboard players operation #m1 math7 = #range math7
scoreboard players remove #m1 math7 1
function system:music/sfx/rng/private/next_int_lcg
scoreboard players operation out math7 += in math7

scoreboard players reset #m1 math7
scoreboard players remove in1 math7 1