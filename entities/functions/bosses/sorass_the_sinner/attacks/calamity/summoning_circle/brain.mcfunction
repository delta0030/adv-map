# timer updating
execute if score %level sts_calamity matches 0 run scoreboard players set %level sts_calamity 1
execute if score %level sts_calamity matches 0..6 if score %time sts_calamity matches 0 run scoreboard players set %time sts_calamity 21
execute if score %time sts_calamity matches 1.. run scoreboard players remove %time sts_calamity 1

# inner circle and orb visuals
execute if score %level sts_calamity matches 1..3 as @e[type=armor_stand,tag=center] at @s run function entities:bosses/sorass_the_sinner/attacks/calamity/summoning_circle/display/1/y
execute if score %level sts_calamity matches 4..5 as @e[type=armor_stand,tag=center] at @s run function entities:bosses/sorass_the_sinner/attacks/calamity/summoning_circle/display/1/o
execute if score %level sts_calamity matches 6 as @e[type=armor_stand,tag=center] at @s run function entities:bosses/sorass_the_sinner/attacks/calamity/summoning_circle/display/1/r
execute if score %level sts_calamity matches 1..3 as @e[type=armor_stand,tag=center] at @s run function entities:bosses/sorass_the_sinner/attacks/calamity/summon/1

# middle circle and orb visuals
execute if score %level sts_calamity matches 4..5 as @e[type=armor_stand,tag=center1] at @s run function entities:bosses/sorass_the_sinner/attacks/calamity/summoning_circle/display/2/o
execute if score %level sts_calamity matches 6 as @e[type=armor_stand,tag=center1] at @s run function entities:bosses/sorass_the_sinner/attacks/calamity/summoning_circle/display/2/r
execute if score %level sts_calamity matches 4..5 as @e[type=armor_stand,tag=center1] at @s run function entities:bosses/sorass_the_sinner/attacks/calamity/summon/2

# outer circle and orb visuals
execute if score %level sts_calamity matches 6 as @e[type=armor_stand,tag=center2] at @s run function entities:bosses/sorass_the_sinner/attacks/calamity/summoning_circle/display/3/r
execute if score %level sts_calamity matches 6 as @e[type=armor_stand,tag=center2] at @s run function entities:bosses/sorass_the_sinner/attacks/calamity/summon/3

# circle 1 scores
execute if score %level sts_calamity matches 1 if score %time sts_calamity matches 19 run scoreboard players set %level sts_calamity 2
execute if score %level sts_calamity matches 2 if score %time sts_calamity matches 19 at @e[type=armor_stand,tag=center] run playsound minecraft:block.amethyst_block.chime hostile @a ~ ~ ~ 1 2
execute if score %level sts_calamity matches 2 if score %time sts_calamity matches 19 at @e[type=armor_stand,tag=center] run playsound minecraft:block.amethyst_block.hit hostile @a ~ ~ ~ 1 0.75
execute if score %level sts_calamity matches 2 if score %time sts_calamity matches 19 at @e[type=armor_stand,tag=center] run playsound minecraft:entity.ender_eye.death hostile @a ~ ~ ~ 1 2
execute if score %level sts_calamity matches 2 if score %time sts_calamity matches 20 run scoreboard players set %level sts_calamity 3

# circle 2 scores
execute if score %level sts_calamity matches 3 if score %time sts_calamity matches 19 run scoreboard players set %level sts_calamity 4
execute if score %level sts_calamity matches 4 if score %time sts_calamity matches 19 at @e[type=armor_stand,tag=center] run playsound minecraft:block.amethyst_block.chime hostile @a ~ ~ ~ 1 1
execute if score %level sts_calamity matches 4 if score %time sts_calamity matches 19 at @e[type=armor_stand,tag=center] run playsound minecraft:block.amethyst_block.hit hostile @a ~ ~ ~ 1 0.65
execute if score %level sts_calamity matches 4 if score %time sts_calamity matches 19 at @e[type=armor_stand,tag=center] run playsound minecraft:entity.ender_eye.death hostile @a ~ ~ ~ 1 1.25
execute if score %level sts_calamity matches 4 if score %time sts_calamity matches 20 run scoreboard players set %level sts_calamity 5

# circle 3 scores
execute if score %level sts_calamity matches 5 if score %time sts_calamity matches 19 run scoreboard players set %level sts_calamity 6
execute if score %level sts_calamity matches 6 if score %time sts_calamity matches 19 at @e[type=armor_stand,tag=center] run playsound minecraft:block.amethyst_block.chime hostile @a ~ ~ ~ 1 0.5
execute if score %level sts_calamity matches 6 if score %time sts_calamity matches 19 at @e[type=armor_stand,tag=center] run playsound minecraft:block.amethyst_block.hit hostile @a ~ ~ ~ 1 0.5
execute if score %level sts_calamity matches 6 if score %time sts_calamity matches 19 at @e[type=armor_stand,tag=center] run playsound minecraft:entity.ender_eye.death hostile @a ~ ~ ~ 1 0.5
execute if score %level sts_calamity matches 6 if score %time sts_calamity matches 20 run scoreboard players set %level sts_calamity -5

execute as @e[type=minecraft:armor_stand,tag=center] at @s run tp @e[type=zombie_villager,tag=boss_3] ~ ~ ~

execute if score %level sts_calamity matches -5 run scoreboard players set %inatt sts_attacks 0
execute if score %level sts_calamity matches -5 as @e[type=zombie_villager,tag=boss_3] at @s run effect clear @s slowness
execute if score %level sts_calamity matches -5 at @e[type=armor_stand,tag=cal_cen] run playsound minecraft:block.respawn_anchor.set_spawn hostile @a ~ ~ ~ 2 0.5
execute if score %level sts_calamity matches -5 run function entities:bosses/sorass_the_sinner/attacks/calamity/summon/brain
execute if score %level sts_calamity matches -5 run function entities:bosses/sorass_the_sinner/attacks/calamity/summoning_circle/decay/init

# summoning circle rotation
execute as @e[type=armor_stand,tag=center] at @s run tp @s ~ ~ ~ ~3 ~
execute as @e[type=armor_stand,tag=center1] at @s run tp @s ~ ~ ~ ~-2 ~
execute as @e[type=armor_stand,tag=center2] at @s run tp @s ~ ~ ~ ~1 ~

execute as @e[type=armor_stand,tag=cal_location] at @s if block ~ ~-0.15 ~ #items:nonsolid run tp @s ~ ~-0.1 ~

# looping
execute if score %level sts_calamity matches 0..6 run schedule function entities:bosses/sorass_the_sinner/attacks/calamity/summoning_circle/brain 1t