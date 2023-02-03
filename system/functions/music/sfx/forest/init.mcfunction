scoreboard players set in math7 1
scoreboard players set in1 math7 5

function system:music/sfx/rng/range_lcg

execute if score %old math7 = out math7 run function system:music/sfx/rng/range_lcg

scoreboard players operation %old math7 = out math7

execute if score out math7 matches 1 run playsound ambient.sfx.forest.birb1 ambient @s ~ ~ ~ 1
execute if score out math7 matches 2 run playsound ambient.sfx.forest.birb2 ambient @s ~ ~ ~ 1
execute if score out math7 matches 3 run playsound ambient.sfx.forest.birb3 ambient @s ~ ~ ~ 1
execute if score out math7 matches 4 run playsound ambient.sfx.forest.birb4 ambient @s ~ ~ ~ 1
execute if score out math7 matches 5 run playsound ambient.sfx.forest.birb5 ambient @s ~ ~ ~ 1

scoreboard players set in math7 60
scoreboard players set in1 math7 100

function system:music/sfx/rng/range_lcg

scoreboard players operation %sfxdelay forestsfx = out math7