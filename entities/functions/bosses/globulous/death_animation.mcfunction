scoreboard players set @a boss_1 3
function entities:bosses/globulous/border/clear

#Explosion effect
execute at @e[type=minecraft:armor_stand,tag=boss_1_position] unless entity @e[type=slime,tag=boss_1] run particle minecraft:explosion_emitter

playsound minecraft:entity.slime.death hostile @a ~ ~ ~ 3 0.5

#Slime blocks
execute at @e[type=minecraft:armor_stand,tag=boss_1_position] unless entity @e[type=slime,tag=boss_1] run summon minecraft:falling_block ~ ~4 ~ {BlockState:{Name:"minecraft:slime_block"},Time:100,DropItem:0b,HurtEntities:0b,Motion:[0.0,0.5061,0.8]}
execute at @e[type=minecraft:armor_stand,tag=boss_1_position] unless entity @e[type=slime,tag=boss_1] run summon minecraft:falling_block ~ ~4 ~ {BlockState:{Name:"minecraft:slime_block"},Time:100,DropItem:0b,HurtEntities:0b,Motion:[0.7,0.904,0.3]}
execute at @e[type=minecraft:armor_stand,tag=boss_1_position] unless entity @e[type=slime,tag=boss_1] run summon minecraft:falling_block ~ ~4 ~ {BlockState:{Name:"minecraft:slime_block"},Time:100,DropItem:0b,HurtEntities:0b,Motion:[0.0,0.348,0.0]}
execute at @e[type=minecraft:armor_stand,tag=boss_1_position] unless entity @e[type=slime,tag=boss_1] run summon minecraft:falling_block ~ ~4 ~ {BlockState:{Name:"minecraft:slime_block"},Time:100,DropItem:0b,HurtEntities:0b,Motion:[0.530,0.798,0.1]}
execute at @e[type=minecraft:armor_stand,tag=boss_1_position] unless entity @e[type=slime,tag=boss_1] run summon minecraft:falling_block ~ ~4 ~ {BlockState:{Name:"minecraft:slime_block"},Time:100,DropItem:0b,HurtEntities:0b,Motion:[0.484,0.3,0.885]}
execute at @e[type=minecraft:armor_stand,tag=boss_1_position] unless entity @e[type=slime,tag=boss_1] run summon minecraft:falling_block ~ ~4 ~ {BlockState:{Name:"minecraft:slime_block"},Time:100,DropItem:0b,HurtEntities:0b,Motion:[0.512,0.1,0.0]}
execute at @e[type=minecraft:armor_stand,tag=boss_1_position] unless entity @e[type=slime,tag=boss_1] run summon minecraft:falling_block ~ ~4 ~ {BlockState:{Name:"minecraft:slime_block"},Time:100,DropItem:0b,HurtEntities:0b,Motion:[0.356,1.0,0.201]}
execute at @e[type=minecraft:armor_stand,tag=boss_1_position] unless entity @e[type=slime,tag=boss_1] run summon minecraft:falling_block ~ ~4 ~ {BlockState:{Name:"minecraft:slime_block"},Time:100,DropItem:0b,HurtEntities:0b,Motion:[0.0,0.71,0.655]}
execute at @e[type=minecraft:armor_stand,tag=boss_1_position] unless entity @e[type=slime,tag=boss_1] run summon minecraft:falling_block ~ ~4 ~ {BlockState:{Name:"minecraft:slime_block"},Time:100,DropItem:0b,HurtEntities:0b,Motion:[0.001,0.801,0.295]}
execute at @e[type=minecraft:armor_stand,tag=boss_1_position] unless entity @e[type=slime,tag=boss_1] run summon minecraft:falling_block ~ ~4 ~ {BlockState:{Name:"minecraft:slime_block"},Time:100,DropItem:0b,HurtEntities:0b,Motion:[0.023,0.832,0.256]}
execute at @e[type=minecraft:armor_stand,tag=boss_1_position] unless entity @e[type=slime,tag=boss_1] run summon minecraft:falling_block ~ ~4 ~ {BlockState:{Name:"minecraft:slime_block"},Time:100,DropItem:0b,HurtEntities:0b,Motion:[-0.597,0.127,-0.424]}
execute at @e[type=minecraft:armor_stand,tag=boss_1_position] unless entity @e[type=slime,tag=boss_1] run summon minecraft:falling_block ~ ~4 ~ {BlockState:{Name:"minecraft:slime_block"},Time:100,DropItem:0b,HurtEntities:0b,Motion:[0.0,0.9,-0.78]}
execute at @e[type=minecraft:armor_stand,tag=boss_1_position] unless entity @e[type=slime,tag=boss_1] run summon minecraft:falling_block ~ ~4 ~ {BlockState:{Name:"minecraft:slime_block"},Time:100,DropItem:0b,HurtEntities:0b,Motion:[-0.7,0.172,-0.640]}
execute at @e[type=minecraft:armor_stand,tag=boss_1_position] unless entity @e[type=slime,tag=boss_1] run summon minecraft:falling_block ~ ~4 ~ {BlockState:{Name:"minecraft:slime_block"},Time:100,DropItem:0b,HurtEntities:0b,Motion:[-0.604,0.583,0.0]}
execute at @e[type=minecraft:armor_stand,tag=boss_1_position] unless entity @e[type=slime,tag=boss_1] run summon minecraft:falling_block ~ ~4 ~ {BlockState:{Name:"minecraft:slime_block"},Time:100,DropItem:0b,HurtEntities:0b,Motion:[-0.112,0.883,-0.393]}
execute at @e[type=minecraft:armor_stand,tag=boss_1_position] unless entity @e[type=slime,tag=boss_1] run summon minecraft:falling_block ~ ~4 ~ {BlockState:{Name:"minecraft:slime_block"},Time:100,DropItem:0b,HurtEntities:0b,Motion:[-0.362,0.731,-0.447]}
execute at @e[type=minecraft:armor_stand,tag=boss_1_position] unless entity @e[type=slime,tag=boss_1] run summon minecraft:falling_block ~ ~4 ~ {BlockState:{Name:"minecraft:slime_block"},Time:100,DropItem:0b,HurtEntities:0b,Motion:[0.0,0.934,-0.523]}
execute at @e[type=minecraft:armor_stand,tag=boss_1_position] unless entity @e[type=slime,tag=boss_1] run summon minecraft:falling_block ~ ~4 ~ {BlockState:{Name:"minecraft:slime_block"},Time:100,DropItem:0b,HurtEntities:0b,Motion:[-0.959,0.113,0.775]}
execute at @e[type=minecraft:armor_stand,tag=boss_1_position] unless entity @e[type=slime,tag=boss_1] run summon minecraft:falling_block ~ ~4 ~ {BlockState:{Name:"minecraft:slime_block"},Time:100,DropItem:0b,HurtEntities:0b,Motion:[0.453,0.849,-0.277]}
execute at @e[type=minecraft:armor_stand,tag=boss_1_position] unless entity @e[type=slime,tag=boss_1] run summon minecraft:falling_block ~ ~4 ~ {BlockState:{Name:"minecraft:slime_block"},Time:100,DropItem:0b,HurtEntities:0b,Motion:[-0.372,0.743,0.570]}
execute at @e[type=minecraft:armor_stand,tag=boss_1_position] unless entity @e[type=slime,tag=boss_1] run summon minecraft:falling_block ~ ~4 ~ {BlockState:{Name:"minecraft:slime_block"},Time:100,DropItem:0b,HurtEntities:0b,Motion:[-0.476,0.734,-0.604]}
execute at @e[type=minecraft:armor_stand,tag=boss_1_position] unless entity @e[type=slime,tag=boss_1] run summon minecraft:falling_block ~ ~4 ~ {BlockState:{Name:"minecraft:slime_block"},Time:100,DropItem:0b,HurtEntities:0b,Motion:[0.583,0.289,-0.796]}
execute at @e[type=minecraft:armor_stand,tag=boss_1_position] unless entity @e[type=slime,tag=boss_1] run summon minecraft:falling_block ~ ~4 ~ {BlockState:{Name:"minecraft:slime_block"},Time:100,DropItem:0b,HurtEntities:0b,Motion:[-0.461,0.389,-0.733]}
execute at @e[type=minecraft:armor_stand,tag=boss_1_position] unless entity @e[type=slime,tag=boss_1] run summon minecraft:falling_block ~ ~4 ~ {BlockState:{Name:"minecraft:slime_block"},Time:100,DropItem:0b,HurtEntities:0b,Motion:[0.075,0.347,-0.283]}
execute at @e[type=minecraft:armor_stand,tag=boss_1_position] unless entity @e[type=slime,tag=boss_1] run summon minecraft:falling_block ~ ~4 ~ {BlockState:{Name:"minecraft:slime_block"},Time:100,DropItem:0b,HurtEntities:0b,Motion:[-0.544,0.128,0.379]}
execute at @e[type=minecraft:armor_stand,tag=boss_1_position] unless entity @e[type=slime,tag=boss_1] run summon minecraft:falling_block ~ ~4 ~ {BlockState:{Name:"minecraft:slime_block"},Time:100,DropItem:0b,HurtEntities:0b,Motion:[0.385,0.511,0.493]}
execute at @e[type=minecraft:armor_stand,tag=boss_1_position] unless entity @e[type=slime,tag=boss_1] run summon minecraft:falling_block ~ ~4 ~ {BlockState:{Name:"minecraft:slime_block"},Time:100,DropItem:0b,HurtEntities:0b,Motion:[-0.489,0.926,-0.543]}
execute at @e[type=minecraft:armor_stand,tag=boss_1_position] unless entity @e[type=slime,tag=boss_1] run summon minecraft:falling_block ~ ~4 ~ {BlockState:{Name:"minecraft:slime_block"},Time:100,DropItem:0b,HurtEntities:0b,Motion:[0.497,0.118,-0.233]}
execute at @e[type=minecraft:armor_stand,tag=boss_1_position] unless entity @e[type=slime,tag=boss_1] run summon minecraft:falling_block ~ ~4 ~ {BlockState:{Name:"minecraft:slime_block"},Time:100,DropItem:0b,HurtEntities:0b,Motion:[-0.203,0.431,-0.364]}
execute at @e[type=minecraft:armor_stand,tag=boss_1_position] unless entity @e[type=slime,tag=boss_1] run summon minecraft:falling_block ~ ~4 ~ {BlockState:{Name:"minecraft:slime_block"},Time:100,DropItem:0b,HurtEntities:0b,Motion:[-0.134,0.329,-0.058]}
execute at @e[type=minecraft:armor_stand,tag=boss_1_position] unless entity @e[type=slime,tag=boss_1] run summon minecraft:falling_block ~ ~4 ~ {BlockState:{Name:"minecraft:slime_block"},Time:100,DropItem:0b,HurtEntities:0b,Motion:[0.434,0.379,-0.205]}

#Loot table
execute as @e[type=minecraft:armor_stand,tag=boss_1_position] at @s run loot spawn ~ ~ ~ loot entities:entities/boss/gel_slime

kill @e[type=armor_stand,tag=boss_1_position]

#deleting functions
schedule function entities:bosses/globulous/killer 5s
function entities:bosses/globulous/attacks/music/music3
function entities:bosses/globulous/clear