#This wouldve worked but sadly it does not in this instance
#execute as @a at @s store result score %forest biome run locatebiome minecraft:forest
#execute if score %forest biome matches ..2 run scoreboard players set %forest1 biome 1
#execute if score %forest biome matches 3.. run scoreboard players set %forest1 biome 0


setblock ~ 255 ~ chest
execute at @s store result score @s biome run loot insert ~ 255 ~ loot system:custom/biome
setblock ~ 255 ~ air

execute if score @s biome matches 4 run scoreboard players set %forest biome 1
execute unless score @s biome matches 4 run scoreboard players set %forest biome 0

execute if score @s biome matches 2 run scoreboard players set %desert biome 1
execute unless score @s biome matches 2 run scoreboard players set %desert biome 0

schedule function system:biome/contant_test 10t