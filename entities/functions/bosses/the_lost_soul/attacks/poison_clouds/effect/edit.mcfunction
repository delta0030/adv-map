execute if score %timer tls_poison_count matches ..59 run particle soul ~ ~1 ~ 0.5 0.8 0.5 0.01 1 force
execute if score %timer tls_poison_count matches ..59 run playsound particle.soul_escape master @a ~ ~ ~ 1
execute if score %timer tls_poison_count matches 60 run function entities:bosses/the_lost_soul/attacks/poison_clouds/effect/activate