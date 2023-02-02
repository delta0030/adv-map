# display particles and make projectiles appear around the boss
execute if score %seqCount sts_cannon matches 1.. at @e[type=armor_stand,tag=can_mark_1] run function entities:bosses/sorass_the_sinner/attacks/cannon/particle/display
execute if score %seqCount sts_cannon matches 1 as @e[type=armor_stand,tag=can_mark_1] run function entities:bosses/sorass_the_sinner/attacks/cannon/particle/cir
execute if score %timer sts_cannon matches 1 if score %seqCount sts_cannon matches 1 at @e[type=armor_stand,tag=can_mark_1] run function entities:bosses/sorass_the_sinner/attacks/cannon/animation/orb/pattern/1/low
execute if score %timer sts_cannon matches 0 if score %seqCount sts_cannon matches 1 run function entities:bosses/sorass_the_sinner/attacks/cannon/animation/orb/set/low

execute if score %seqCount sts_cannon matches 2.. at @e[type=armor_stand,tag=can_mark_2] run function entities:bosses/sorass_the_sinner/attacks/cannon/particle/display
execute if score %seqCount sts_cannon matches 2 as @e[type=armor_stand,tag=can_mark_2] run function entities:bosses/sorass_the_sinner/attacks/cannon/particle/cir
execute if score %timer sts_cannon matches 1 if score %seqCount sts_cannon matches 2 at @e[type=armor_stand,tag=can_mark_2] run function entities:bosses/sorass_the_sinner/attacks/cannon/animation/orb/pattern/1/mid
execute if score %timer sts_cannon matches 0 if score %seqCount sts_cannon matches 2 run function entities:bosses/sorass_the_sinner/attacks/cannon/animation/orb/set/mid

execute if score %seqCount sts_cannon matches 3.. at @e[type=armor_stand,tag=can_mark_3] run function entities:bosses/sorass_the_sinner/attacks/cannon/particle/display
execute if score %seqCount sts_cannon matches 3 as @e[type=armor_stand,tag=can_mark_3] run function entities:bosses/sorass_the_sinner/attacks/cannon/particle/cir
execute if score %timer sts_cannon matches 1 if score %seqCount sts_cannon matches 3 at @e[type=armor_stand,tag=can_mark_3] run function entities:bosses/sorass_the_sinner/attacks/cannon/animation/orb/pattern/1/high
execute if score %timer sts_cannon matches 0 if score %seqCount sts_cannon matches 3 run function entities:bosses/sorass_the_sinner/attacks/cannon/animation/orb/set/high

execute if score %seqCount sts_cannon matches 4.. at @e[type=armor_stand,tag=can_mark_4] run function entities:bosses/sorass_the_sinner/attacks/cannon/particle/display
execute if score %seqCount sts_cannon matches 4 as @e[type=armor_stand,tag=can_mark_4] run function entities:bosses/sorass_the_sinner/attacks/cannon/particle/cir
execute if score %timer sts_cannon matches 1 if score %seqCount sts_cannon matches 4 at @e[type=armor_stand,tag=can_mark_4] run function entities:bosses/sorass_the_sinner/attacks/cannon/animation/orb/pattern/1/low
execute if score %timer sts_cannon matches 0 if score %seqCount sts_cannon matches 4 run function entities:bosses/sorass_the_sinner/attacks/cannon/animation/orb/set/low

execute if score %seqCount sts_cannon matches 5.. at @e[type=armor_stand,tag=can_mark_5] run function entities:bosses/sorass_the_sinner/attacks/cannon/particle/display
execute if score %seqCount sts_cannon matches 5 as @e[type=armor_stand,tag=can_mark_5] run function entities:bosses/sorass_the_sinner/attacks/cannon/particle/cir
execute if score %timer sts_cannon matches 1 if score %seqCount sts_cannon matches 5 at @e[type=armor_stand,tag=can_mark_5] run function entities:bosses/sorass_the_sinner/attacks/cannon/animation/orb/pattern/1/mid
execute if score %timer sts_cannon matches 0 if score %seqCount sts_cannon matches 5 run function entities:bosses/sorass_the_sinner/attacks/cannon/animation/orb/set/mid

execute if score %seqCount sts_cannon matches 6.. at @e[type=armor_stand,tag=can_mark_6] run function entities:bosses/sorass_the_sinner/attacks/cannon/particle/display
execute if score %seqCount sts_cannon matches 6 as @e[type=armor_stand,tag=can_mark_6] run function entities:bosses/sorass_the_sinner/attacks/cannon/particle/cir
execute if score %timer sts_cannon matches 1 if score %seqCount sts_cannon matches 6 at @e[type=armor_stand,tag=can_mark_6] run function entities:bosses/sorass_the_sinner/attacks/cannon/animation/orb/pattern/1/high
execute if score %timer sts_cannon matches 0 if score %seqCount sts_cannon matches 6 run function entities:bosses/sorass_the_sinner/attacks/cannon/animation/orb/set/high

execute if score %seqCount sts_cannon matches 7.. at @e[type=armor_stand,tag=can_mark_7] run function entities:bosses/sorass_the_sinner/attacks/cannon/particle/display
execute if score %seqCount sts_cannon matches 7 as @e[type=armor_stand,tag=can_mark_7] run function entities:bosses/sorass_the_sinner/attacks/cannon/particle/cir
execute if score %timer sts_cannon matches 1 if score %seqCount sts_cannon matches 7 at @e[type=armor_stand,tag=can_mark_7] run function entities:bosses/sorass_the_sinner/attacks/cannon/animation/orb/pattern/1/low
execute if score %timer sts_cannon matches 0 if score %seqCount sts_cannon matches 7 run function entities:bosses/sorass_the_sinner/attacks/cannon/animation/orb/set/low

execute if score %seqCount sts_cannon matches 8.. at @e[type=armor_stand,tag=can_mark_8] run function entities:bosses/sorass_the_sinner/attacks/cannon/particle/display
execute if score %seqCount sts_cannon matches 8 as @e[type=armor_stand,tag=can_mark_8] run function entities:bosses/sorass_the_sinner/attacks/cannon/particle/cir
execute if score %timer sts_cannon matches 1 if score %seqCount sts_cannon matches 8 at @e[type=armor_stand,tag=can_mark_8] run function entities:bosses/sorass_the_sinner/attacks/cannon/animation/orb/pattern/1/mid
execute if score %timer sts_cannon matches 0 if score %seqCount sts_cannon matches 8 run function entities:bosses/sorass_the_sinner/attacks/cannon/animation/orb/set/mid

execute if score %seqCount sts_cannon matches 9.. at @e[type=armor_stand,tag=can_mark_9] run function entities:bosses/sorass_the_sinner/attacks/cannon/particle/display
execute if score %seqCount sts_cannon matches 9 as @e[type=armor_stand,tag=can_mark_9] run function entities:bosses/sorass_the_sinner/attacks/cannon/particle/cir
execute if score %timer sts_cannon matches 1 if score %seqCount sts_cannon matches 9 at @e[type=armor_stand,tag=can_mark_9] run function entities:bosses/sorass_the_sinner/attacks/cannon/animation/orb/pattern/1/high
execute if score %timer sts_cannon matches 0 if score %seqCount sts_cannon matches 9 run function entities:bosses/sorass_the_sinner/attacks/cannon/animation/orb/set/high

execute if score %seqCount sts_cannon matches 10.. at @e[type=armor_stand,tag=can_mark_10] run function entities:bosses/sorass_the_sinner/attacks/cannon/particle/display
execute if score %seqCount sts_cannon matches 10 as @e[type=armor_stand,tag=can_mark_10] run function entities:bosses/sorass_the_sinner/attacks/cannon/particle/cir
execute if score %timer sts_cannon matches 1 if score %seqCount sts_cannon matches 10 at @e[type=armor_stand,tag=can_mark_10] run function entities:bosses/sorass_the_sinner/attacks/cannon/animation/orb/pattern/1/low
execute if score %timer sts_cannon matches 0 if score %seqCount sts_cannon matches 10 run function entities:bosses/sorass_the_sinner/attacks/cannon/animation/orb/set/low

execute if score %seqCount sts_cannon matches 11.. at @e[type=armor_stand,tag=can_mark_11] run function entities:bosses/sorass_the_sinner/attacks/cannon/particle/display
execute if score %seqCount sts_cannon matches 11 as @e[type=armor_stand,tag=can_mark_11] run function entities:bosses/sorass_the_sinner/attacks/cannon/particle/cir
execute if score %timer sts_cannon matches 1 if score %seqCount sts_cannon matches 11 at @e[type=armor_stand,tag=can_mark_11] run function entities:bosses/sorass_the_sinner/attacks/cannon/animation/orb/pattern/1/mid
execute if score %timer sts_cannon matches 0 if score %seqCount sts_cannon matches 11 run function entities:bosses/sorass_the_sinner/attacks/cannon/animation/orb/set/mid

execute if score %seqCount sts_cannon matches 12.. at @e[type=armor_stand,tag=can_mark_12] run function entities:bosses/sorass_the_sinner/attacks/cannon/particle/display
execute if score %seqCount sts_cannon matches 12 as @e[type=armor_stand,tag=can_mark_12] run function entities:bosses/sorass_the_sinner/attacks/cannon/particle/cir
execute if score %timer sts_cannon matches 1 if score %seqCount sts_cannon matches 12 at @e[type=armor_stand,tag=can_mark_12] run function entities:bosses/sorass_the_sinner/attacks/cannon/animation/orb/pattern/1/high
execute if score %timer sts_cannon matches 0 if score %seqCount sts_cannon matches 12 run function entities:bosses/sorass_the_sinner/attacks/cannon/animation/orb/set/high

execute if score %seqCount sts_cannon matches 13.. at @e[type=armor_stand,tag=can_mark_13] run function entities:bosses/sorass_the_sinner/attacks/cannon/particle/display
execute if score %seqCount sts_cannon matches 13 as @e[type=armor_stand,tag=can_mark_13] run function entities:bosses/sorass_the_sinner/attacks/cannon/particle/cir
execute if score %timer sts_cannon matches 1 if score %seqCount sts_cannon matches 13 at @e[type=armor_stand,tag=can_mark_13] run function entities:bosses/sorass_the_sinner/attacks/cannon/animation/orb/pattern/1/low
execute if score %timer sts_cannon matches 0 if score %seqCount sts_cannon matches 13 run function entities:bosses/sorass_the_sinner/attacks/cannon/animation/orb/set/low

execute if score %seqCount sts_cannon matches 14.. at @e[type=armor_stand,tag=can_mark_14] run function entities:bosses/sorass_the_sinner/attacks/cannon/particle/display
execute if score %seqCount sts_cannon matches 14 as @e[type=armor_stand,tag=can_mark_14] run function entities:bosses/sorass_the_sinner/attacks/cannon/particle/cir
execute if score %timer sts_cannon matches 1 if score %seqCount sts_cannon matches 14 at @e[type=armor_stand,tag=can_mark_14] run function entities:bosses/sorass_the_sinner/attacks/cannon/animation/orb/pattern/1/mid
execute if score %timer sts_cannon matches 0 if score %seqCount sts_cannon matches 14 run function entities:bosses/sorass_the_sinner/attacks/cannon/animation/orb/set/mid
