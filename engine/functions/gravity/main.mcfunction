# algorithm by emeraldfyr3 for 16w20a, adapted for 1.16+ by devs
scoreboard players operation @s gravity_var = @s gravity
execute unless score @s gravity_dcount matches -2147483648..2147483647 run scoreboard players set @s gravity_dcount 0

scoreboard players operation @s gravity_var *= 1000 CONSTANTS
execute if score @s gravity_ncount > @s gravity_var run function engine:gravity/conditionals/ncount
scoreboard players operation @s gravity_var /= 1000 CONSTANTS
data modify entity @s NoGravity set value 1b
execute if score @s gravity_dcount < @s gravity_ncount run function engine:gravity/conditionals/dcount
scoreboard players operation @s gravity_ncount += @s gravity_var

tag @e[type=!player,nbt={OnGround:1b}] add OnGround
tag @e[type=!player,nbt={OnGround:0b}] remove OnGround
execute as @e[type=!player,tag=OnGround] run data modify entity @s NoGravity set value 0b

execute as @e[type=!player,tag=!mob,tag=projectile] at @s unless block ~ ~-0.1 ~ #minecraft:nonsolid run kill @s