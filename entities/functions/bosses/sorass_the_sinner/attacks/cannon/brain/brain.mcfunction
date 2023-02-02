# attack behavior based on phase
execute if score %seqCount sts_cannon < %seq sts_cannon if score %phase sts_phase matches 1 run function entities:bosses/sorass_the_sinner/attacks/cannon/brain/phase1
execute if score %seqCount sts_cannon < %seq sts_cannon if score %phase sts_phase matches 2 run function entities:bosses/sorass_the_sinner/attacks/cannon/brain/phase2
execute if score %seqCount sts_cannon < %seq sts_cannon if score %phase sts_phase matches 3 run function entities:bosses/sorass_the_sinner/attacks/cannon/brain/phase3

execute if score %seqCount sts_cannon = %seq sts_cannon run scoreboard players set %timer sts_cannon -1

# entity counting
execute store result score %x_var sts_cannon if entity @e[type=armor_stand,tag=orb_proj]
execute store result score %out sts_cannon run scoreboard players operation %x sts_cannon -= %x_var sts_cannon
scoreboard players operation %x sts_cannon = %seq sts_cannon
execute if score %out sts_cannon matches 1..5 run scoreboard players set %stop sts_cannon 0

function entities:bosses/sorass_the_sinner/attacks/cannon/particle/particle
execute if score %seqCount sts_cannon = %seq sts_cannon run function entities:bosses/sorass_the_sinner/attacks/cannon/animation/orb/pattern/movement
execute if score %seqCount sts_cannon = %seq sts_cannon at @e[type=zombie_villager,tag=boss_3] run function entities:bosses/sorass_the_sinner/attacks/cannon/particle/sphere

execute if score %out sts_cannon = %seq sts_cannon if score %stop sts_cannon matches 0 run function entities:bosses/sorass_the_sinner/attacks/cannon/launch/init

#execute as @e[type=minecraft:armor_stand,tag=sts_cannonProj] at @s if entity @e[type=minecraft:armor_stand,tag=can_mark,distance=..1.25] run data modify entity @s NoGravity set value 1b
execute as @e[type=armor_stand,tag=sts_cannonProj] at @s if entity @e[type=minecraft:armor_stand,tag=can_mark,distance=..1.25] run function entities:bosses/sorass_the_sinner/attacks/cannon/damage/init

execute as @e[type=armor_stand,tag=can_mark] at @s if block ~ ~-0.15 ~ #items:nonsolid run tp @s ~ ~-0.1 ~

execute if entity @e[type=armor_stand,tag=cannon_marker] run schedule function entities:bosses/sorass_the_sinner/attacks/cannon/brain/brain 1t
execute unless entity @e[type=armor_stand,tag=cannon_marker] run function entities:bosses/sorass_the_sinner/attacks/cannon/clear