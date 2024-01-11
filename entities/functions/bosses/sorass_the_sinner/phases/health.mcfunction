execute if score @e[type=zombie_villager,tag=boss_3,limit=1] mob_health <= @e[type=zombie_villager,tag=boss_3,limit=1] mob_max_health run scoreboard players add @e[type=zombie_villager,tag=boss_3] mob_health 3
execute if score @e[type=zombie_villager,tag=boss_3,limit=1] mob_health > @e[type=zombie_villager,tag=boss_3,limit=1] mob_max_health run scoreboard players operation @e[type=zombie_villager,tag=boss_3,limit=1] mob_health = @e[type=zombie_villager,tag=boss_3,limit=1] mob_max_health

execute as @e[type=armor_stand,tag=phase_3_marker] at @s run tp @s ~ ~ ~ facing entity @e[type=zombie_villager,tag=boss_3,limit=1] feet

execute if score %phase sts_phase matches -5 run schedule function entities:bosses/sorass_the_sinner/phases/health 1t

# have EOTB happen sometimes in phase 1, somewhat frequent in phase 2 and constant in phase 3