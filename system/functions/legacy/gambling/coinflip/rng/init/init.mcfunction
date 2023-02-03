scoreboard objectives add math9 dummy

scoreboard objectives add constant9 dummy
scoreboard players set #2 constant9 2
scoreboard players set #lcg constant9 1103515245

scoreboard players set in math9 1
scoreboard players set in1 math9 10000

execute unless score #lcg math9 matches ..0 unless score #lcg math9 matches 1.. run function mechanics:gambling/coinflip/rng/uuid_reset

function mechanics:gambling/coinflip/rng/range_lcg