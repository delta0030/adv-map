execute as @a[scores={boss_1_music=1}] at @s run playsound bosses.boss_1_part_1 hostile @s ~ ~ ~ 12.5 1
execute as @a[scores={boss_1_music=1}] at @s run scoreboard players set @a boss_1_music 2
title @a times 10 20 10
title @a title {"text":""}
title @a subtitle {"text":"High Octane - Hexecutable","color":"red"}
title @a times 0 0 0
schedule function entities:bosses/globulous/attacks/music/music2 429t