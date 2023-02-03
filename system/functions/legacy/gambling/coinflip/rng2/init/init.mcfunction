scoreboard objectives add math10 dummy

scoreboard objectives add constant10 dummy
scoreboard players set #2 constant10 2
scoreboard players set #lcg constant10 1103515245

scoreboard players set in math10 1
scoreboard players set in1 math10 2

execute unless score #lcg math10 matches ..0 unless score #lcg math10 matches 1.. run function mechanics:gambling/coinflip/rng2/uuid_reset

function mechanics:gambling/coinflip/rng2/range_lcg