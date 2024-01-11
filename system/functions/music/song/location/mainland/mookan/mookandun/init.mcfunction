execute as @a[scores={mookandun=1}] run scoreboard players set in1 math6 8
execute as @a[scores={mookandun=2}] run scoreboard players set in1 math6 9

function system:music/rng/range_lcg

execute as @a[scores={mookandun=1}] if score out math6 matches 1 run playsound ambient.mookandun.track1 music @s
execute as @a[scores={mookandun=1}] if score out math6 matches 2 run playsound ambient.mookandun.track2 music @s
execute as @a[scores={mookandun=1}] if score out math6 matches 3 run playsound ambient.mookandun.track3 music @s
execute as @a[scores={mookandun=1}] if score out math6 matches 4 run playsound ambient.mookandun.track4 music @s
execute as @a[scores={mookandun=1}] if score out math6 matches 5 run playsound ambient.mookandun.track5 music @s
execute as @a[scores={mookandun=1}] if score out math6 matches 6 run playsound ambient.mookandun.track6 music @s
execute as @a[scores={mookandun=1}] if score out math6 matches 7 run playsound ambient.mookandun.track7 music @s
execute as @a[scores={mookandun=1}] if score out math6 matches 8 run playsound ambient.mookandun.track8 music @s

execute as @a[scores={mookandun=2}] if score out math6 matches 1 run playsound ambient.mookandun.track1 music @s
execute as @a[scores={mookandun=2}] if score out math6 matches 2 run playsound ambient.mookandun.track2 music @s
execute as @a[scores={mookandun=2}] if score out math6 matches 3 run playsound ambient.mookandun.track3 music @s
execute as @a[scores={mookandun=2}] if score out math6 matches 4 run playsound ambient.mookandun.track4 music @s
execute as @a[scores={mookandun=2}] if score out math6 matches 5 run playsound ambient.mookandun.track5 music @s
execute as @a[scores={mookandun=2}] if score out math6 matches 6 run playsound ambient.mookandun.track6 music @s
execute as @a[scores={mookandun=2}] if score out math6 matches 7 run playsound ambient.mookandun.track7 music @s
execute as @a[scores={mookandun=2}] if score out math6 matches 8 run playsound ambient.mookandun.track8 music @s
execute as @a[scores={mookandun=2}] if score out math6 matches 9 run playsound ambient.mookandun.track9 music @s