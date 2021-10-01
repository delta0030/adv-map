scoreboard objectives add math3 dummy

scoreboard objectives add constant3 dummy
scoreboard players set #2 constant3 2
scoreboard players set #lcg constant3 1103515245

scoreboard players set in math3 1
scoreboard players set in1 math3 5

execute unless score #lcg math3 matches ..0 unless score #lcg math3 matches 1.. run function entities:mobs/types/dungeon/singwoods/guardian/rng2/uuid_reset

function entities:mobs/types/dungeon/singwoods/guardian/rng2/range_lcg