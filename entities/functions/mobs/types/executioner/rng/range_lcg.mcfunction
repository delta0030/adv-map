scoreboard players add in1 math11 1
scoreboard players operation #range math11 = in1 math11
scoreboard players operation #range math11 -= in math11

scoreboard players operation #m1 math11 = #range math11
scoreboard players remove #m1 math11 1
function entities:mobs/types/executioner/rng/private/next_int_lcg
scoreboard players operation out math11 += in math11

scoreboard players reset #m1 math11
scoreboard players remove in1 math11 1