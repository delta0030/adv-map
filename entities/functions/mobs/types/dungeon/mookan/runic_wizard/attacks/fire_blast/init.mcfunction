# makes scoreboards
scoreboard objectives add f_bounce dummy
scoreboard objectives add f_bTime dummy

# summons projectile and sound
execute as @e[type=skeleton,tag=mdm5] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["fire_bounce","mdm5_fire"],Small:1b,Invisible:1b,Invulnerable:1b}
execute as @e[type=skeleton,tag=mdm5] at @s run playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 5

# sets entity rotation to projectile
execute as @e[type=armor_stand,tag=fire_bounce] at @s run data modify entity @e[type=armor_stand,tag=fire_bounce,limit=1] Rotation set from entity @e[type=skeleton,tag=mdm5,limit=1] Rotation
execute as @e[type=armor_stand,tag=fire_bounce] at @s run tp @s ~ ~ ~ ~ ~-35

# init brain
execute as @e[type=armor_stand,tag=fire_bounce] at @s run function entities:mobs/types/dungeon/mookan/runic_wizard/attacks/fire_blast/brain