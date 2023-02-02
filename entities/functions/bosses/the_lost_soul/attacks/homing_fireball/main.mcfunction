execute as @e[type=armor_stand,tag=tls_fb_stand] at @s anchored eyes facing entity @p eyes positioned ^ ^ ^2 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.5 ~ ~
execute as @e[type=armor_stand,tag=tls_target_stand] at @s anchored eyes facing entity @e[type=stray,tag=boss_2] eyes positioned ^ ^ ^2 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.5 ~ ~

execute as @e[type=armor_stand,tag=tls_fb_stand] at @s anchored eyes if entity @a[distance=..0.6,scores={block_time=1..}] run function entities:bosses/the_lost_soul/attacks/homing_fireball/deflect
execute as @e[type=armor_stand,tag=tls_fb_stand] at @s anchored eyes if entity @a[distance=..0.6,scores={block_time=0}] run function entities:bosses/the_lost_soul/attacks/homing_fireball/explode
execute as @e[type=armor_stand,tag=tls_fb_stand] at @s anchored eyes unless block ^ ^ ^ air run function entities:bosses/the_lost_soul/attacks/homing_fireball/explode

execute as @e[type=armor_stand,tag=tls_target_stand] at @s anchored eyes if entity @e[type=stray,tag=boss_2,distance=..0.6] run function entities:bosses/the_lost_soul/attacks/homing_fireball/explode_boss
execute as @e[type=armor_stand,tag=tls_target_stand] at @s anchored eyes unless block ^ ^ ^ air run function entities:bosses/the_lost_soul/attacks/homing_fireball/explode

execute if entity @e[type=fireball,tag=tls_fb] run schedule function entities:bosses/the_lost_soul/attacks/homing_fireball/main 1t