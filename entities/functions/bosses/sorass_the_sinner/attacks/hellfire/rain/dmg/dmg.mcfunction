particle explosion ~ ~ ~ 0.1 0.1 0.1 0 1
playsound entity.generic.explode ambient @a ~ ~ ~ 2 0.5
execute as @a at @s if entity @e[type=armor_stand,tag=hellfire_bolt,distance=..0.65] if score @s iframes matches 0 run function player:stats/dmg/get_base_dmg/sinner/hellfire
kill @s