scoreboard players set in math -10
scoreboard players set in1 math 10

function math:rng/range
execute store result entity @s Motion[0] double 0.07 run scoreboard players get out math
function math:rng/range
execute store result entity @s Motion[2] double 0.07 run scoreboard players get out math

scoreboard players set in math 1
scoreboard players set in1 math 6

function math:rng/range
execute store result entity @s Motion[1] double 0.07 run scoreboard players get out math

tag @s add motion
# execute as @e[type=armor_stand,tag=!motion,limit=1] run function entities:bosses/sorass_the_sinner/attacks/ent_dagger/new