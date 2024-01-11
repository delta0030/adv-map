data modify entity @s NoAI set value 1b
effect give @s invisibility 2 1 true
execute at @s run tp @s ~ ~ ~ facing entity @p
execute at @s run summon armor_stand ~ ~ ~ {Tags:["tls_dash_stand","new"],Invisible:1b,Invulnerable:1b}
execute as @e[type=armor_stand,tag=tls_dash_stand,tag=new,limit=1] at @s run tp @s ~ ~ ~ facing entity @p
execute as @e[type=armor_stand,tag=tls_dash_stand,tag=new,limit=1] at @s run tp @s ~ ~-0.5 ~ ~ 0

execute at @e[tag=tls_fight_center] run tp @s ~ ~-6 ~
data modify entity @e[tag=tls_dash_stand,tag=new,limit=1] ArmorItems set value [{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1129223892,1500728179,-1180899834,-923763315],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDU4YWFmMTRmZjkwY2M3YWVlNjA0NDY5NjE5NTY4YmY5NWFhOGM3ZTI4ZDUwNTgxYmQ0MTQ5ZDEzOGZiOTc4NSJ9fX0="}]}}}}]
tag @e[type=armor_stand,tag=new,tag=tls_dash_stand] remove new

function entities:bosses/the_lost_soul/attacks/dash/loop
execute at @s run playsound entity.wither.shoot ambient @a ~ ~ ~ 1 1