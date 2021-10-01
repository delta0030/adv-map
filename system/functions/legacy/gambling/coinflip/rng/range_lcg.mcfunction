scoreboard players add in1 math9 1
scoreboard players operation #range math9 = in1 math9
scoreboard players operation #range math9 -= in math9

scoreboard players operation #m1 math9 = #range math9
scoreboard players remove #m1 math9 1
function mechanics:gambling/coinflip/rng/private/next_int_lcg
scoreboard players operation out math9 += in math9

scoreboard players reset #m1 math9
scoreboard players remove in1 math9 1