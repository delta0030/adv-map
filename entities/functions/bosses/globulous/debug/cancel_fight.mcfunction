tp @e[type=slime] ~ ~-1000 ~
kill @e[type=slime,tag=boss_1]
kill @e[type=slime,tag=boss_1_summons]
kill @e[type=armor_stand,tag=boss_1_position]
kill @e[type=falling_block]
scoreboard players set @a boss_1 0
scoreboard players set @a boss_1_music 0
scoreboard players set @a boss_1_music_T 0
stopsound @a