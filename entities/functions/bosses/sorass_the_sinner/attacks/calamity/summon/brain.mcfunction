scoreboard players set %cal sts_attacks 1

# timer setting for specific phase
execute if score %calTime sts_calamity matches 0 run scoreboard players set %calTime sts_calamity 100
execute if score %calTime sts_calamity matches 1.. run scoreboard players remove %calTime sts_calamity 1

# calamity movement #
execute as @e[type=armor_stand,tag=cal_mov] at @s run tp @s ^ ^ ^0.2 facing entity @a[sort=nearest,limit=1]

# rotating slice
execute as @e[type=minecraft:armor_stand,tag=cal_cen] at @e[type=minecraft:armor_stand,tag=cal_mov] run tp @s ~ ~2 ~
execute as @e[type=armor_stand,tag=cal_cen] at @s run tp @s ~ ~ ~ ~2 45

# calamity visuals
execute at @e[type=armor_stand,tag=cal_cen] run function entities:bosses/sorass_the_sinner/attacks/calamity/summon/3
execute at @e[type=armor_stand,tag=cal_cen] run function entities:bosses/sorass_the_sinner/attacks/calamity/summon/slice
execute at @e[type=armor_stand,tag=cal_cen] run function entities:bosses/sorass_the_sinner/attacks/calamity/summon/slice1

# end when timer is up or player contact is met #

# player detection
execute as @a at @s if entity @e[type=armor_stand,tag=cal_cen,distance=..2.5] run function entities:bosses/sorass_the_sinner/attacks/calamity/end

# end time
execute if score %level sts_calamity matches -5 if score %calTime sts_calamity matches 0 run function entities:bosses/sorass_the_sinner/attacks/calamity/end

#looping
execute if score %level sts_calamity matches -5 run schedule function entities:bosses/sorass_the_sinner/attacks/calamity/summon/brain 1t