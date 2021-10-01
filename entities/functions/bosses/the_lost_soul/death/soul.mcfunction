scoreboard objectives add tls_death_timer dummy

execute as @e[type=armor_stand,tag=tls_death] at @s run tp @s ~ ~0.05 ~
execute as @e[type=armor_stand,tag=tls_death] at @s run particle dust 0.055 0.745 0.922 1 ~ ~1 ~ 0.1 0.1 0.1 0.01 100 force

execute as @e[type=armor_stand,tag=tls_death,scores={tls_death_timer=60}] at @s run stopsound @a master entity.ender_dragon.death
execute as @e[type=armor_stand,tag=tls_death,scores={tls_death_timer=60}] at @s run playsound entity.ender_dragon.shoot master @a[distance=..40] ~ ~ ~ 1 1
execute as @e[type=armor_stand,tag=tls_death,scores={tls_death_timer=60}] at @s run particle dust 0.055 0.745 0.922 1 ~ ~1 ~ 1 1 1 2 100 force
execute as @e[type=armor_stand,tag=tls_death,scores={tls_death_timer=60}] run kill @s

scoreboard players add @e[type=armor_stand,tag=tls_death] tls_death_timer 1
execute if entity @e[type=armor_stand,tag=tls_death] run schedule function entities:bosses/the_lost_soul/death/soul 1t

execute unless entity @e[type=armor_stand,tag=tls_death] run scoreboard objectives remove tls_death_timer