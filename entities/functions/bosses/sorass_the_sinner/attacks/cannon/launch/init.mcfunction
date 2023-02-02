#
#   Δx = x2 - x1
#   Δy = y2 - y1
#   Δz = z2 - z1
#
#   Δx / 2
#   Δy / 2
#   Δz / 2

scoreboard players set %stop sts_cannon 1

scoreboard objectives add motion_lvl dummy

scoreboard objectives add motion_x1 dummy
scoreboard objectives add motion_y1 dummy
scoreboard objectives add motion_z1 dummy

scoreboard objectives add motion_x2 dummy
scoreboard objectives add motion_y2 dummy
scoreboard objectives add motion_z2 dummy

scoreboard players set %launch sts_cannon 1

#execute if score %pattern sts_cannon matches 1 run function entities:bosses/sorass_the_sinner/attacks/cannon/launch/pattern/1/spawn/1
function entities:bosses/sorass_the_sinner/attacks/cannon/launch/pattern/brain