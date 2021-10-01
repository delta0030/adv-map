scoreboard objectives add math11 dummy

scoreboard objectives add constant11 dummy
scoreboard players set #2 constant11 2
scoreboard players set #lcg constant11 1103515245

scoreboard players set in math11 1
scoreboard players set in1 math11 17000

execute unless score #lcg math11 matches ..0 unless score #lcg math11 matches 1.. run function mobs:executioner/rng/uuid_reset

function mobs:executioner/rng/range_lcg