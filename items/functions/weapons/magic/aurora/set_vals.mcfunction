scoreboard players set @s t 0
execute rotated as @p[tag=aurora_user] run tp @s ~ ~ ~ ~ ~
execute store result score @s phi run data get entity @s Rotation[1]
execute store result score @s theta run data get entity @s Rotation[0]

# get components of motion
scoreboard players operation in math = @s phi
function math:trig/cos
scoreboard players operation cosp math = out math

scoreboard players operation in math = @s theta
function math:trig/cos
scoreboard players operation cost math = out math

scoreboard players operation in math = @s theta
function math:trig/sin
scoreboard players operation sint math = out math

scoreboard players operation in math = @s phi
function math:trig/cos
scoreboard players operation sint math = out math

function items:weapons/magic/aurora/decay_buffer