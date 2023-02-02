scoreboard players add in1 math5 1
scoreboard players operation #range math5 = in1 math5
scoreboard players operation #range math5 -= in math5

scoreboard players operation #m1 math5 = #range math5
scoreboard players remove #m1 math5 1
function entities:mobs/types/dungeon/mookan/runic_wizard/attacks/rng/private/next_int_lcg
scoreboard players operation out math5 += in math5

scoreboard players reset #m1 math5
scoreboard players remove in1 math5 1