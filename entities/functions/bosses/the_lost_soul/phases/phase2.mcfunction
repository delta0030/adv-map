tag @s remove phase1
tag @s add phase2
scoreboard players set %phase tls_music 2
scoreboard players set %max tls_timer 120
data merge entity @s {Attributes:[{Name:"generic.movement_speed",Base:0.2}]}

#start poison immediately
function entities:bosses/the_lost_soul/attacks/poison_clouds/init
tag @s remove mob