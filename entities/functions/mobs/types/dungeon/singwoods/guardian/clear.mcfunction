scoreboard objectives remove swmb1
scoreboard objectives remove FireTime
scoreboard objectives remove math2
scoreboard objectives remove math3
tag @a remove ice_damage
title @s clear
bossbar remove guardian
team remove swmb1
kill @e[type=armor_stand,tag=swmb1_circle]
kill @e[type=armor_stand,tag=swmb1_circle1]
kill @e[type=armor_stand,tag=swmb1_fire]
kill @e[type=armor_stand,tag=swmb1_frost]
kill @e[type=armor_stand,tag=swmb1_magic_atk]
stopsound @a
execute at @a[x=1298.5,y=24,z=-1186.5,distance=..25] run playsound minecraft:entity.evoker_fangs.attack hostile @a ~ ~ ~ 2 0
execute at @a[x=1298.5,y=24,z=-1186.5,distance=..40] run playsound miniboss.singwoods.guardend music @a
execute as @a[scores={singwoodsdun=1,bossfight=1}] run scoreboard players set @s bossfight 0