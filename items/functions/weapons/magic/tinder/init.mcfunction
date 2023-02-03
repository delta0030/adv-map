execute positioned ^-0.2 ^1.4 ^0.8 run summon armor_stand ~ ~ ~ {Tags:["tinder_stand","new"],Small:1b,Invulnerable:1b,Invisible:1b}
execute positioned ^-0.2 ^1.4 ^0.8 run summon armor_stand ~ ~ ~ {Tags:["tinder_stand","new"],Small:1b,Invulnerable:1b,Invisible:1b}
execute positioned ^-0.2 ^1.4 ^0.8 run summon armor_stand ~ ~ ~ {Tags:["tinder_stand","new"],Small:1b,Invulnerable:1b,Invisible:1b}
execute positioned ^-0.2 ^1.4 ^0.8 run summon armor_stand ~ ~ ~ {Tags:["tinder_stand","new"],Small:1b,Invulnerable:1b,Invisible:1b}
execute positioned ^-0.2 ^1.4 ^0.8 run summon armor_stand ~ ~ ~ {Tags:["tinder_stand","new"],Small:1b,Invulnerable:1b,Invisible:1b}
tag @s add ember_shot

execute as @e[type=armor_stand,tag=tinder_stand,tag=new] store result entity @s Rotation[0] float 1 run data get entity @p[tag=ember_shot] Rotation[0]
execute as @e[type=armor_stand,tag=tinder_stand,tag=new] store result entity @s Rotation[1] float 1 run data get entity @p[tag=ember_shot] Rotation[1]
execute as @e[type=armor_stand,tag=tinder_stand,tag=new] run function items:weapons/magic/tinder/randomize_rotation
function items:weapons/magic/tinder/particles

execute store result score @s weapon_cooldown run data get entity @s SelectedItem.tag.data.stats.cooldown 1

execute as @e[type=armor_stand,tag=tinder_stand,tag=new] run tag @s remove new

playsound minecraft:entity.blaze.shoot master @s ~ ~ ~ 0.3 1.7

tag @s add magic_used
tag @s remove mana_delay_calculated

tag @s remove ember_shot