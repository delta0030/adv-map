scoreboard objectives add math8 dummy

scoreboard objectives add constant8 dummy
scoreboard players set #2 constant8 2
scoreboard players set #lcg constant8 1103515245

scoreboard players set in math8 1
scoreboard players set in1 math8 3

execute unless score #lcg math8 matches ..0 unless score #lcg math8 matches 1.. run function system:music/sfx/wind/rng/uuid_reset

function system:music/sfx/wind/rng/range_lcg