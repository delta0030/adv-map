# if a fireball still exists, don't spawn another one
execute if entity @e[type=fireball,tag=tls_fb] run scoreboard players set out math 3

function entities:bosses/the_lost_soul/attacks/teleport/init
execute if score out math matches 0..2 run function entities:bosses/the_lost_soul/attacks/homing_fireball/init
execute if score out math matches 3..10 run function entities:bosses/the_lost_soul/attacks/triple_shot/init

# run every attack cycle
execute if entity @s[tag=!poison_active] run function entities:bosses/the_lost_soul/attacks/poison_clouds/init
#function entities:bosses/the_lost_soul/attacks/minions/ethereal_skeleton/init