scoreboard objectives add constant1 dummy
scoreboard players set #2 constant1 2
scoreboard players set #lcg constant1 1103515245

execute unless score #lcg math4 matches ..0 unless score #lcg math4 matches 1.. run function items:weapons/magic/tinder/rng/uuid_reset

function items:weapons/magic/tinder/rng/range_lcg