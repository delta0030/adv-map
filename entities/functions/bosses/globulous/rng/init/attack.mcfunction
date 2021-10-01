scoreboard objectives add math1 dummy

scoreboard objectives add constant1 dummy
scoreboard players set #2 constant1 2
scoreboard players set #lcg constant1 1103515245

scoreboard players set in math1 1
scoreboard players set in1 math1 3

execute unless score #lcg math1 matches ..0 unless score #lcg math1 matches 1.. run function entities:bosses/globulous/rng/uuid_reset

function entities:bosses/globulous/rng/range_lcg