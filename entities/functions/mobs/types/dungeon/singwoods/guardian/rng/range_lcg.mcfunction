scoreboard players add in1 math2 1
scoreboard players operation #range math2 = in1 math2
scoreboard players operation #range math2 -= in math2

scoreboard players operation #m1 math2 = #range math2
scoreboard players remove #m1 math2 1
function entities:mobs/types/dungeon/singwoods/guardian/rng/private/next_int_lcg
scoreboard players operation out math2 += in math2

scoreboard players reset #m1 math2
scoreboard players remove in1 math2 1