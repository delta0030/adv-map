# timer
execute if score %decay sts_calamity matches 1.. run scoreboard players remove %decay sts_calamity 1

# decaying circle
execute if score %decay sts_calamity matches 25..40 at @e[type=armor_stand,tag=center] run particle dust 0.431 0.000 0.000 1 ~ ~ ~ 1.25 0.25 1.25 0 50 normal
execute if score %decay sts_calamity matches 25..33 if predicate entities:chance_50 at @e[type=armor_stand,tag=center] run particle dust 0.761 0.486 0.075 1 ~ ~ ~ 1.25 0.25 1.25 0 35 normal
execute if score %decay sts_calamity matches 25 at @e[type=armor_stand,tag=center] run kill @e[type=armor_stand,tag=center2]
execute if score %decay sts_calamity matches 25 run function entities:bosses/sorass_the_sinner/attacks/calamity/summoning_circle/decay/2
execute if score %decay sts_calamity matches 12..25 at @e[type=armor_stand,tag=center] run particle dust 0.761 0.486 0.075 1 ~ ~ ~ 1 0.25 1 0 35 normal
execute if score %decay sts_calamity matches 12..15 if predicate entities:chance_50 at @e[type=armor_stand,tag=center] run particle dust 0.761 0.761 0.039 1 ~ ~ ~ 1 0.25 1 0 20 normal
execute if score %decay sts_calamity matches 12 at @e[type=armor_stand,tag=center] run kill @e[type=armor_stand,tag=center1]
execute if score %decay sts_calamity matches 12 as @e[type=armor_stand,tag=center] run function entities:bosses/sorass_the_sinner/attacks/calamity/summoning_circle/display/1/y
execute if score %decay sts_calamity matches 0..12 at @e[type=armor_stand,tag=center] run particle dust 0.761 0.761 0.039 1 ~ ~ ~ 0.5 0.25 0.5 0 20 normal
execute if score %decay sts_calamity matches 0 at @e[type=armor_stand,tag=center] run kill @e[type=armor_stand,tag=center]

# rotation
execute as @e[type=armor_stand,tag=center] at @s run tp @s ~ ~ ~ ~3 ~
execute as @e[type=armor_stand,tag=center1] at @s run tp @s ~ ~ ~ ~-2 ~
execute as @e[type=armor_stand,tag=center2] at @s run tp @s ~ ~ ~ ~1 ~

# loop
execute if entity @e[type=armor_stand,tag=cal_location] run schedule function entities:bosses/sorass_the_sinner/attacks/calamity/summoning_circle/decay/timer 1t