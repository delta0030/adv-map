particle explosion_emitter ~ ~ ~ 0.5 0.5 0.5 0 1
playsound entity.dragon_fireball.explode hostile @a ~ ~ ~ 3 0.5
execute as @a at @s if entity @e[type=armor_stand,tag=hbbig,distance=..2.65] if score @s iframes matches 0 run function player:stats/dmg/get_base_dmg/sinner/hellfire_big
kill @s