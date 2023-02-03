scoreboard players add in1 math10 1
scoreboard players operation #range math10 = in1 math10
scoreboard players operation #range math10 -= in math10

scoreboard players operation #m1 math10 = #range math10
scoreboard players remove #m1 math10 1
function mechanics:gambling/coinflip/rng2/private/next_int_lcg
scoreboard players operation out math10 += in math10

scoreboard players reset #m1 math10
scoreboard players remove in1 math10 1