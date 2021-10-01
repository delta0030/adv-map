stopsound @a
scoreboard players set @a boss_1_music 3
playsound bosses.boss_1_part_3 hostile @s ~ ~ ~ 12.5 1
execute if score @p boss_1_music matches 3 run scoreboard players set @a boss_1_music 0