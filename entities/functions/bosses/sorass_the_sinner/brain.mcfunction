# updates bossbar to display boss health
bossbar set sorass players @a
execute as @e[type=zombie_villager,tag=boss_3] store result bossbar sorass max run scoreboard players get @s mob_max_health
execute as @e[type=zombie_villager,tag=boss_3] store result bossbar sorass value run scoreboard players get @s mob_health
execute unless entity @e[type=zombie_villager,tag=boss_3,limit=1] run bossbar set sorass visible false

# removes the fire immediately so there is no visual fire
execute as @e[type=zombie_villager,tag=boss_3] run data modify entity @s Fire set value 214483646 

# health check to determine correct phase
execute if score @e[type=zombie_villager,tag=boss_3,limit=1] mob_health > 742 CONSTANTS if score %phase sts_phase matches 0 run function entities:bosses/sorass_the_sinner/phases/p1
execute if score @e[type=zombie_villager,tag=boss_3,limit=1] mob_health <= 742 CONSTANTS if score %phase sts_phase matches 1 run function entities:bosses/sorass_the_sinner/phases/p2
execute if score @e[type=zombie_villager,tag=boss_3,limit=1] mob_health <= 371 CONSTANTS if score %phase sts_phase matches 2 run function entities:bosses/sorass_the_sinner/phases/p3tran

# particle trail during p3tran
execute if score %phase sts_phase matches -5 at @e[type=armor_stand,tag=phase_3_marker] run function entities:bosses/sorass_the_sinner/phases/particle_trail/raycast

# gives increasing speed during each new phase and fire res cause why not
execute if score %phase sts_phase matches 1 run effect give @e[type=zombie_villager,tag=boss_3] speed 10 1 true
execute if score %phase sts_phase matches 2 run effect give @e[type=zombie_villager,tag=boss_3] speed 10 2 true
execute if score %phase sts_phase matches 3 run effect give @e[type=zombie_villager,tag=boss_3] speed 10 3 true
execute if score %phase sts_phase matches 1 run effect give @e[tag=sts_sums] speed 10 2 true
execute if score %phase sts_phase matches 2 run effect give @e[tag=sts_sums] speed 10 3 true
execute if score %phase sts_phase matches 3 run effect give @e[tag=sts_sums] speed 10 4 true
execute as @e[type=zombie_villager,tag=boss_3] run effect give @s fire_resistance 100 1 true
execute as @e[type=zombie_villager,tag=boss_3] run effect give @s resistance 100 1 true
execute as @e[tag=sts_sums] run effect give @s fire_resistance 100 1 true

# music system
#function entities:bosses/sorass_the_sinner/music/brain

# extra particles for the floating crystals
execute as @e[type=armor_stand,tag=boss_3_crystal1] at @s run particle dust_color_transition 1.000 0.000 0.000 1 0.349 0.035 0.035 ^2 ^1 ^ 0.1 0.25 0.1 0 3 normal
execute as @e[type=armor_stand,tag=boss_3_crystal2] at @s run particle dust_color_transition 0.020 0.118 1.000 1 0.106 0.106 0.349 ^-2 ^1 ^ 0.1 0.25 0.1 0 3 normal

# crystal rotation
execute as @e[type=armor_stand,tag=boss_3_crystal1R] at @e[type=armor_stand,tag=boss_3_crystal1] run tp @s ^2 ^ ^ ~50 ~
execute as @e[type=armor_stand,tag=boss_3_crystal2B] at @e[type=armor_stand,tag=boss_3_crystal2] run tp @s ^-2 ^ ^ ~50 ~

# keep crystals centered above the boss and rotates
execute as @e[type=armor_stand,tag=boss_3_crystal,tag=!boss_3_crystal1R,tag=!boss_3_crystal2B] at @s positioned as @e[type=zombie_villager,tag=boss_3] run tp @s ~ ~3 ~ ~1 ~

# testing for phase 3 transition
execute if score %phase sts_phase matches -5 run tp @e[type=zombie_villager,tag=boss_3] @e[type=armor_stand,tag=boss_3_center,limit=1]
execute if score %phase sts_phase matches 3 run tp @e[type=zombie_villager,tag=boss_3] @e[type=armor_stand,tag=phase_3_marker,limit=1]
execute if entity @e[type=armor_stand,tag=phase_3_marker] if score %phase sts_phase matches 3 at @e[type=zombie_villager,tag=boss_3] run summon minecraft:lightning_bolt ~ ~-5 ~
execute if entity @e[type=armor_stand,tag=phase_3_marker] if score %phase sts_phase matches 3 at @e[type=zombie_villager,tag=boss_3] run summon minecraft:lightning_bolt ~ ~-5 ~
execute if entity @e[type=armor_stand,tag=phase_3_marker] if score %phase sts_phase matches 3 at @e[type=zombie_villager,tag=boss_3] run summon minecraft:lightning_bolt ~ ~-5 ~
execute if entity @e[type=armor_stand,tag=phase_3_marker] if score %phase sts_phase matches 3 at @e[type=zombie_villager,tag=boss_3] run summon minecraft:lightning_bolt ~ ~-5 ~
execute if score %phase sts_phase matches 3 run kill @e[type=armor_stand,tag=phase_3_marker]

# indication of where the boss will teleport when phase transition is done
execute if score %phase sts_phase matches -5 if predicate entities:chance_50 at @e[type=armor_stand,tag=phase_3_marker] run particle smoke ~ ~ ~ 0.25 0.75 0.25 0 10

# test to either end fight when boss dies or keep the brain looping
execute unless entity @e[type=zombie_villager,tag=boss_3] run function entities:bosses/sorass_the_sinner/death/end
execute if entity @e[type=zombie_villager,tag=boss_3] run schedule function entities:bosses/sorass_the_sinner/brain 1t