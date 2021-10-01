execute as @e[type=falling_block,nbt={BlockState:{Name:"minecraft:slime_block"}}] at @s unless block ~ ~-1 ~ air run kill @s
kill @e[type=slime,tag=!ss]
tp @e[type=slime,tag=!ss] ~ ~-1000 ~
scoreboard players set @a boss_1 0
scoreboard players set @a boss_1_music 0
scoreboard players set @a boss_1_music_T 0
bossbar remove globulous
execute as @a[tag=boss1Fight] run scoreboard players set @s bossfight 0
tag @a[tag=boss1Fight] remove boss1Fight

execute if entity @e[type=falling_block,nbt={BlockState:{Name:"minecraft:slime_block"}}] run schedule function entities:bosses/globulous/clear 1t