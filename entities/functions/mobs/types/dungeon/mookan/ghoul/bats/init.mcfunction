execute as @e[type=stray,tag=bob] at @s run summon bat ^ ^3 ^ {Silent:1b,NoAI:1b,Tags:["mdm","mdm3_sum"]}
execute as @e[type=stray,tag=bob] at @s run summon bat ^-2 ^ ^ {Silent:1b,NoAI:1b,Tags:["mdm","mdm3_sum"]}
execute as @e[type=stray,tag=bob] at @s run summon bat ^2 ^ ^ {Silent:1b,NoAI:1b,Tags:["mdm","mdm3_sum"]}

execute as @e[type=bat,tag=mdm3_sum] at @s run particle smoke ~ ~ ~ 0.3 0.3 0.3 0 30 force
playsound entity.bat.takeoff hostile @a ~ ~ ~ 1 1