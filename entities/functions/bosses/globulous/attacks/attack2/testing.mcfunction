#When they land
execute as @e[type=armor_stand,tag=boss_1_boom] at @s unless block ~ ~-0.15 ~ air run function entities:bosses/globulous/attacks/attack2/explosion_effect

#effect on player
execute as @e[type=armor_stand,tag=boss_1_boom] at @s unless block ~ ~-0.5 ~ air as @a[distance=..6] run function player:stats/dmg/get_base_dmg/globulous/boom

execute if entity @e[type=slime,tag=boss_1] run schedule function entities:bosses/globulous/attacks/attack2/testing 1t