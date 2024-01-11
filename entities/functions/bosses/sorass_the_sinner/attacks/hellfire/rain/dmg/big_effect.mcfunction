particle explosion_emitter ~ ~ ~ 0.5 0.5 0.5 0 1
playsound entity.dragon_fireball.explode hostile @a ~ ~ ~ 3 0.5
execute at @e[type=armor_stand,tag=hellfire_bolt,limit=1] if predicate entities:chance_50 run function entities:bosses/sorass_the_sinner/attacks/hellfire/rain/bolts/linger/init
execute as @a at @s if entity @e[type=armor_stand,tag=hbbig,distance=..3.65] if score @s iframes matches 0 run function player:stats/dmg/get_base_dmg/sinner/hellfire_big
kill @s