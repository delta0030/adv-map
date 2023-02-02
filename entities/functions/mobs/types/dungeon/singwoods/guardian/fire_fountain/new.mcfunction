scoreboard players set in math2 -18
scoreboard players set in1 math2 18

function entities:mobs/types/dungeon/singwoods/guardian/rng/range_lcg
execute store result entity @s Motion[0] double 0.07 run scoreboard players get out math2
function entities:mobs/types/dungeon/singwoods/guardian/rng/range_lcg
execute store result entity @s Motion[2] double 0.07 run scoreboard players get out math2

scoreboard players set in math2 1
scoreboard players set in1 math2 14

function entities:mobs/types/dungeon/singwoods/guardian/rng/range_lcg
execute store result entity @s Motion[1] double 0.07 run scoreboard players get out math2

tag @s add motion
execute as @e[type=armor_stand,tag=!motion,limit=1] run function entities:mobs/types/dungeon/singwoods/guardian/fire_fountain/new