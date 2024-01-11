data merge entity @s {Radius:1.3f,RadiusPerTick:0f,Effects:[{Id:19b,Amplifier:1b,Duration:40,ShowParticles:1b}]}
tag @e[type=stray,tag=boss_2] add poison_active
playsound entity.generic.explode ambient @a ~ ~ ~

execute at @s run function entities:bosses/the_lost_soul/attacks/poison_clouds/effect/spawn

execute as @e[type=stray,tag=boss_2] run function entities:bosses/the_lost_soul/attacks/poison_clouds/effect/particles