scoreboard players add in1 math1 1
scoreboard players operation #range math1 = in1 math1
scoreboard players operation #range math1 -= in math1

scoreboard players operation #m1 math1 = #range math1
scoreboard players remove #m1 math1 1
function entities:bosses/globulous/rng/private/next_int_lcg
scoreboard players operation out math1 += in math1

scoreboard players reset #m1 math1
scoreboard players remove in1 math1 1