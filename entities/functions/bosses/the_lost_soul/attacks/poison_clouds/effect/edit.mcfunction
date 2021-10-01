execute if score %timer tls_poison_count matches ..59 run particle soul ~ ~1 ~ 0.5 0.8 0.5 0.01 1 force
execute if score %timer tls_poison_count matches ..59 run playsound particle.soul_escape master @a ~ ~ ~ 1
execute if score %timer tls_poison_count matches 60 run data merge entity @s {Radius:1.3f,RadiusPerTick:0f,Effects:[{Id:19b,Amplifier:2b,Duration:40,ShowParticles:1b}]}
execute if score %timer tls_poison_count matches 60 run tag @e[type=stray,tag=boss_2] add poison_active

# clear old clouds
execute as @e[type=stray,tag=boss_2] if score %timer tls_poison_count = %max++ tls_timer run function entities:bosses/the_lost_soul/attacks/poison_clouds/clear