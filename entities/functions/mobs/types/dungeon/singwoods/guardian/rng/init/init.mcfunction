scoreboard objectives add math2 dummy

scoreboard objectives add constant2 dummy
scoreboard players set #2 constant2 2
scoreboard players set #lcg constant2 1103515245



execute unless score #lcg math2 matches ..0 unless score #lcg math2 matches 1.. run function entities:mobs/types/dungeon/singwoods/guardian/rng/uuid_reset

function entities:mobs/types/dungeon/singwoods/guardian/rng/range_lcg