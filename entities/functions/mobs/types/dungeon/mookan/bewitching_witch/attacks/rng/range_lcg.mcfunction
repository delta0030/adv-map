scoreboard players add in1 math4 1
scoreboard players operation #range math4 = in1 math4
scoreboard players operation #range math4 -= in math4

scoreboard players operation #m1 math4 = #range math4
scoreboard players remove #m1 math4 1
function entities:mobs/types/dungeon/mookan/bewitching_witch/attacks/rng/private/next_int_lcg
scoreboard players operation out math4 += in math4

scoreboard players reset #m1 math4
scoreboard players remove in1 math4 1