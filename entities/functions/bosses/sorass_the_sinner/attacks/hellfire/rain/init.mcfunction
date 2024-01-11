kill @e[type=armor_stand,tag=hellfire_particle]

execute at @e[type=armor_stand,tag=hellfire_center] run playsound minecraft:entity.ender_dragon.growl hostile @a ~ ~ ~ 10 0.5
execute at @e[type=armor_stand,tag=hellfire_center] run playsound minecraft:entity.allay.ambient_without_item hostile @a ~ ~ ~ 10 0.5
execute at @e[type=armor_stand,tag=hellfire_center] run playsound minecraft:block.end_gateway.spawn hostile @a ~ ~ ~ 10 0.5
execute at @e[type=armor_stand,tag=hellfire_center] run playsound minecraft:block.stone.hit hostile @a ~ ~ ~ 10 0.5
execute as @e[type=minecraft:armor_stand,tag=hellfire_center] at @s run particle flame ~ ~ ~ 1 1 1 1 1000 force

execute at @e[type=minecraft:armor_stand,tag=hellfire_center] run function entities:bosses/sorass_the_sinner/attacks/hellfire/rain/bolts/1
execute at @e[type=minecraft:armor_stand,tag=hellfire_center] run function entities:bosses/sorass_the_sinner/attacks/hellfire/rain/bolts/2
execute at @e[type=minecraft:armor_stand,tag=hellfire_center] run function entities:bosses/sorass_the_sinner/attacks/hellfire/rain/bolts/3
execute at @e[type=minecraft:armor_stand,tag=hellfire_center] run function entities:bosses/sorass_the_sinner/attacks/hellfire/rain/bolts/4
execute at @e[type=minecraft:armor_stand,tag=hellfire_center] run function entities:bosses/sorass_the_sinner/attacks/hellfire/rain/bolts/5
execute at @e[type=minecraft:armor_stand,tag=hellfire_center] run function entities:bosses/sorass_the_sinner/attacks/hellfire/rain/bolts/6

schedule function entities:bosses/sorass_the_sinner/attacks/hellfire/rain/spread 1t
schedule function entities:bosses/sorass_the_sinner/attacks/hellfire/rain/descent 1t