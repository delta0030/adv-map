summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["particle","new"]}
execute as @e[type=area_effect_cloud,tag=particle,tag=new] at @s run function entities:bosses/the_lost_soul/attacks/poison_clouds/effect/set_location

# 2.3 = sqrt(3*1.3^2), which is max dist
scoreboard objectives add particle_count dummy
execute store result score @s particle_count if entity @e[type=area_effect_cloud,tag=particle,distance=..2.3]

execute if score @s particle_count matches ..19 run function entities:bosses/the_lost_soul/attacks/poison_clouds/effect/spawn

scoreboard objectives remove particle_count