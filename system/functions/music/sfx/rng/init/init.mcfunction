scoreboard objectives add math7 dummy

scoreboard objectives add constant7 dummy
scoreboard players set #2 constant7 2
scoreboard players set #lcg constant7 1103515245

scoreboard players set in math7 1
scoreboard players set in1 math7 3

execute unless score #lcg math7 matches ..0 unless score #lcg math7 matches 1.. run function system:music/sfx/rng/uuid_reset

function system:music/sfx/rng/range_lcg