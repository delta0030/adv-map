summon armor_stand ~ ~ ~ {Tags:["tls_aim2","new"],NoGravity:1b,Small:1b,Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1959589289,-1185919035,-1911903036,-1162684279],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzdiOWRmZDI4MWRlYWVmMjYyOGFkNTg0MGQ0NWJjZGE0MzZkNjYyNjg0NzU4N2YzYWM3NjQ5OGE1MWM4NjEifX19"}]}}}}]}
tp @e[type=armor_stand,tag=tls_aim2,tag=new] ~ ~ ~ ~ ~
scoreboard players set @e[type=armor_stand,tag=tls_aim2,tag=new] raycast_range 800
scoreboard players set @e[type=armor_stand,tag=tls_aim2,tag=new] raycast_reflect 4

tag @e[type=armor_stand,tag=tls_aim2,tag=new] remove new