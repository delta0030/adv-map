#data modify entity @s NoGravity set value 1b
execute as @p at @s if entity @e[type=armor_stand,tag=sts_cannonProj,distance=..2.25] run function player:stats/dmg/get_base_dmg/sinner/cannon

execute at @s run particle minecraft:explosion ~ ~ ~ 0.75 0.75 0.75 0 5
execute at @s run particle minecraft:angry_villager ~ ~ ~ 0.75 0.75 0.75 0 5
execute at @s run particle minecraft:squid_ink ~ ~ ~ 0.75 0.75 0.75 0 5
execute at @s run particle minecraft:enchant ~ ~ ~ 0.75 0.75 0.75 0 50

schedule function entities:bosses/sorass_the_sinner/attacks/cannon/damage/buffer 2t

kill @e[type=armor_stand,tag=can_mark,distance=..1.25,sort=nearest,limit=1]
kill @s

execute as @a at @s run function entities:bosses/sorass_the_sinner/attacks/cannon/damage/sound