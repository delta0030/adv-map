#effect
particle minecraft:explosion
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 12.5 0

#if it is above a block
execute as @e[type=armor_stand,tag=boss_1_boom] at @s unless block ~ ~-0.5 ~ air run function entities:bosses/globulous/attacks/attack2/clear