# <cosp*cost, cosp*sint, -sinp> * v = motion vector
scoreboard players set 5 CONSTANTS 5
scoreboard players set -1 CONSTANTS -1

# motion decay equation (parametric of circle)
scoreboard players operation in math = @s t
function math:trig/cos
# outputs 3 digits
scoreboard players operation @s orb_velocity = out math
# r = 5, adjust to change speed and distance
scoreboard players operation @s orb_velocity *= 5 CONSTANTS

# cost means cos(theta), not cos(t). Same for sint. my bad.
# x velocity
scoreboard players operation x orb_velocity = cosp math
scoreboard players operation x orb_velocity *= cost math
scoreboard players operation x orb_velocity *= @s orb_velocity

# y velocity
scoreboard players operation y orb_velocity = cosp math
scoreboard players operation y orb_velocity *= sint math
scoreboard players operation y orb_velocity *= -1 CONSTANTS
scoreboard players operation y orb_velocity *= @s orb_velocity

# z velocity
scoreboard players operation z orb_velocity = sinp math
scoreboard players operation z orb_velocity *= -1 CONSTANTS
scoreboard players operation z orb_velocity *= @s orb_velocity

execute store result entity @s Motion[0] double 0.0000000003 run scoreboard players get x orb_velocity
execute store result entity @s Motion[1] double 0.0000000003 run scoreboard players get y orb_velocity
execute store result entity @s Motion[2] double 0.00000003 run scoreboard players get z orb_velocity

scoreboard players add @s t 3