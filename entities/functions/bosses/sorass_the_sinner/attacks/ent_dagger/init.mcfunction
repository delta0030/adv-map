# projectile properties
function entities:bosses/sorass_the_sinner/attacks/ent_dagger/as_summon
function entities:bosses/sorass_the_sinner/attacks/ent_dagger/test
execute as @e[type=armor_stand,tag=!motion,tag=sts_ent,limit=1] run function entities:bosses/sorass_the_sinner/attacks/ent_dagger/new
function entities:bosses/sorass_the_sinner/attacks/ent_dagger/reset
# execute at @e[type=zombie_villager,tag=boss_3] run playsound minecraft:enchant.thorns.hit hostile @a ~ ~ ~ 1 1
execute at @e[type=zombie_villager,tag=boss_3] run playsound minecraft:entity.horse.step hostile @a ~ ~ ~ 1 1.2
execute at @e[type=zombie_villager,tag=boss_3] run playsound minecraft:entity.piglin_brute.step hostile @a ~ ~ ~ 1 1.2
execute at @e[type=zombie_villager,tag=boss_3] run playsound minecraft:entity.fox.spit hostile @a ~ ~ ~ 1 1.2

execute if score %ent sts_attacks matches 1.. if score %phase sts_phase matches 1..2 run schedule function entities:bosses/sorass_the_sinner/attacks/ent_dagger/init 4t
execute if score %ent sts_attacks matches 1.. if score %phase sts_phase matches 3 run schedule function entities:bosses/sorass_the_sinner/attacks/ent_dagger/init 2t

execute if score %ent sts_attacks matches 0 run scoreboard players set %inatt sts_attacks 0
execute if score %ent sts_attacks matches 0 run scoreboard players set %cal sts_attacks 0
execute if score %ent sts_attacks matches 0 if score %phase sts_phase matches 1..2 run scoreboard players add %attack sts_attacks 60
execute if score %ent sts_attacks matches 0 if score %phase sts_phase matches 3 run scoreboard players add %attack sts_attacks 30
execute if score %ent sts_attacks matches 0 run kill @e[type=armor_stand,tag=sts_ent]