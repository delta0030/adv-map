playsound entity.generic.explode master @a ~ ~ ~ 4 1
particle explosion ~ ~ ~ 1 1 1 1 20
kill @s
execute as @e[type=fireball,tag=tls_fb,predicate=!entities:fireball_riding] run kill @s

execute as @a[distance=..0.6] run function entities:bosses/the_lost_soul/attacks/homing_fireball/dmg