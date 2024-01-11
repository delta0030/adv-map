scoreboard objectives add math6 dummy

scoreboard objectives add constant6 dummy
scoreboard players set #2 constant6 2
scoreboard players set #lcg constant6 1103515245

scoreboard players set in math6 1
scoreboard players set in1 math6 3

execute unless score #lcg math6 matches ..0 unless score #lcg math6 matches 1.. run function system:music/rng/uuid_reset

function system:music/rng/range_lcg