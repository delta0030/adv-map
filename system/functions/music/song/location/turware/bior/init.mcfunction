scoreboard players set in1 math6 6

function system:music/rng/range_lcg

execute if score out math6 matches 1 run playsound townmusic.bior.track1 music @s
execute if score out math6 matches 2 run playsound townmusic.bior.track2 music @s
execute if score out math6 matches 3 run playsound townmusic.bior.track3 music @s
execute if score out math6 matches 4 run playsound townmusic.bior.track4 music @s
execute if score out math6 matches 5 run playsound townmusic.bior.track5 music @s
execute if score out math6 matches 5 run scoreboard players add @s delay 15000
execute if score out math6 matches 6 run playsound townmusic.bior.track6 music @s
execute if score out math6 matches 6 run scoreboard players add @s delay 11000