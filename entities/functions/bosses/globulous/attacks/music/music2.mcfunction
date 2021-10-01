execute as @a[scores={boss_1_music=2}] at @s run playsound bosses.boss_1_part_2 hostile @s ~ ~ ~ 12.5 1
execute as @a[scores={boss_1_music=2}] at @s run scoreboard players set @a boss_1_music 2

schedule function entities:bosses/globulous/attacks/music/music2 3258t