scoreboard players set %rot_max tls_pufferfish 120
summon armor_stand ~ ~1 ~ {Pose:{Head:[180f,0f,0f]},Invisible:1b,Invulnerable:1b,NoGravity:1b,Small:1b,Tags:["tls_puff_stand"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1704953634,-1843377011,-1207707982,1077900671],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmM3ZGVhZjJkN2U3MmYyMWZjYTNhOTk2OTQ0ODFhNjc0ZjUxODVjNDRjM2I4ZjUzYjBiNDkzMTBmZTYxNzY3ZCJ9fX0="}]}}}}]}
execute as @e[type=armor_stand,tag=tls_puff_stand,tag=!rotated] at @s rotated as @s run function entities:bosses/the_lost_soul/attacks/pufferfish/set_rotation

scoreboard players remove %count tls_pufferfish 1
execute if score %count tls_pufferfish matches 1.. run function entities:bosses/the_lost_soul/attacks/pufferfish/main