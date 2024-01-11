scoreboard players set in math6 -7
scoreboard players set in1 math6 7

function entities:bosses/sorass_the_sinner/attacks/rng/init/init
execute store result entity @s Motion[0] double 0.07 run scoreboard players get out math6
function entities:bosses/sorass_the_sinner/attacks/rng/init/init
execute store result entity @s Motion[2] double 0.07 run scoreboard players get out math6

scoreboard players set in math6 1
scoreboard players set in1 math6 4

function entities:bosses/sorass_the_sinner/attacks/rng/init/init
execute store result entity @s Motion[1] double 0.07 run scoreboard players get out math6

tag @s add motion