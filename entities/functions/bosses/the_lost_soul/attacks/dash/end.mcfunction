tp @e[tag=boss_2] ~ ~0.5 ~
playsound block.stone.break ambient @a ~ ~ ~ 1 1
effect clear @e[tag=boss_2] invisibility
execute as @e[tag=boss_2] run data modify entity @s NoAI set value 0b 
kill @s