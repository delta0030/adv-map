execute as @a[distance=..0.7] run function entities:bosses/the_lost_soul/attacks/triple_shot/fire/dmg
particle crit ~ ~ ~ 1.5 1.5 1.5 0.3 60 force
execute at @s run playsound entity.skeleton.hurt master @a ~ ~ ~ 2 1
kill @s