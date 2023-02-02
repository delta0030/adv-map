scoreboard objectives add math4 dummy

scoreboard objectives add constant4 dummy
scoreboard players set #2 constant4 2
scoreboard players set #lcg constant4 1103515245

scoreboard players set in math4 1
scoreboard players set in1 math4 5

execute unless score #lcg math4 matches ..0 unless score #lcg math4 matches 1.. run function entities:mobs/types/dungeon/mookan/bewitching_witch/attacks/rng/uuid_reset

function entities:mobs/types/dungeon/mookan/bewitching_witch/attacks/rng/range_lcg