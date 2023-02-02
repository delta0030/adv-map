# if fireball still exists, don't spawn another one
execute if entity @e[type=fireball,tag=tls_fb] run scoreboard players set out math 0
execute if entity @e[type=stray,tag=boss_2_clone] run scoreboard players set out math 6

execute if score out math matches 0..1 run function entities:bosses/the_lost_soul/attacks/teleport/init
execute if score out math matches 2..3 unless entity @e[type=stray,tag=boss_2_clone] run function entities:bosses/the_lost_soul/attacks/clone/init
execute if score out math matches 4..5 run function entities:bosses/the_lost_soul/attacks/dash/indicator
execute if score out math matches 6..10 if score %switch1 tls_music matches 1 run function entities:bosses/the_lost_soul/attacks/homing_fireball/init
execute if entity @s[tag=!poison_active] run function entities:bosses/the_lost_soul/attacks/poison_clouds/init