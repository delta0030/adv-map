scoreboard players add in1 math3 1
scoreboard players operation #range math3 = in1 math3
scoreboard players operation #range math3 -= in math3

scoreboard players operation #m1 math3 = #range math3
scoreboard players remove #m1 math3 1
function entities:mobs/types/dungeon/singwoods/guardian/rng2/private/next_int_lcg
scoreboard players operation out math3 += in math3

scoreboard players reset #m1 math3
scoreboard players remove in1 math3 1