#            1       π (t)
#       y = --- sin (----)
#            2        40
#
#
#       y = r sin θ
#

# scoreboard creation
scoreboard objectives add bob dummy
scoreboard objectives add bob_time dummy
scoreboard objectives add bob_center dummy
scoreboard objectives add dy_old dummy
scoreboard objectives add trig_var dummy

# score setting
scoreboard players set 1 CONSTANTS 1
scoreboard players set 2 CONSTANTS 2
scoreboard players set 24 CONSTANTS 24
scoreboard players set 40 CONSTANTS 40
scoreboard players set 10000 CONSTANTS 10000
scoreboard players set 1800000 CONSTANTS 1800000

execute if score @s nnmath_trig matches -2147483648..2147483647 run scoreboard players operation @s dy_old = out nnmath_trig
execute unless score @s nnmath_trig matches -2147483648..2147483647 run scoreboard players set @s dy_old 0

scoreboard players operation @s bob = 1800000 CONSTANTS
scoreboard players operation @s bob *= @s bob_time
scoreboard players operation @s bob /= 40 CONSTANTS
scoreboard players operation in nnmath_trig = @s bob
function nnmath:trig/sin_et/exe

scoreboard players operation out nnmath_trig /= 24 CONSTANTS

execute store result score @s bob run data get entity @s Pos[1] 1000000
scoreboard players operation @s trig_var = out nnmath_trig
scoreboard players operation @s trig_var -= @s dy_old
scoreboard players operation @s bob += @s trig_var

execute store result entity @s Pos[1] double 0.000001 run scoreboard players get @s bob

scoreboard players add @s bob_time 1
execute if score @s bob_time matches 81.. run scoreboard players set @s bob_time 0

execute as @s at @s anchored eyes facing entity @p eyes positioned ^ ^ ^2 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.2 ~ ~