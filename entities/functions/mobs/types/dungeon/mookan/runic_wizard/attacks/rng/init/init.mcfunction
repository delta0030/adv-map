scoreboard objectives add math5 dummy

scoreboard objectives add constant5 dummy
scoreboard players set #2 constant5 2
scoreboard players set #lcg constant5 1103515245

scoreboard players set in math5 1
scoreboard players set in1 math5 3

execute unless score #lcg math5 matches -2147483648..2147483647 run function entities:mobs/types/dungeon/mookan/runic_wizard/attacks/rng/uuid_reset

function entities:mobs/types/dungeon/mookan/runic_wizard/attacks/rng/range_lcg