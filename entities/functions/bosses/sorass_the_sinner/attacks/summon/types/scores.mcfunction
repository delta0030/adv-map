execute as @e[type=armor_stand,tag=summon_marker1,scores={sts_summon_ypos=..-2}] at @s run function entities:bosses/sorass_the_sinner/attacks/summon/types/low/summon1
execute as @e[type=armor_stand,tag=summon_marker1,scores={sts_summon_ypos=-1..4}] at @s run function entities:bosses/sorass_the_sinner/attacks/summon/types/mid/summon1
execute as @e[type=armor_stand,tag=summon_marker1,scores={sts_summon_ypos=5..}] at @s run function entities:bosses/sorass_the_sinner/attacks/summon/types/high/summon1

execute as @e[type=armor_stand,tag=summon_marker2,scores={sts_summon_ypos=..-2}] at @s run function entities:bosses/sorass_the_sinner/attacks/summon/types/low/summon2
execute as @e[type=armor_stand,tag=summon_marker2,scores={sts_summon_ypos=-1..4}] at @s run function entities:bosses/sorass_the_sinner/attacks/summon/types/mid/summon2
execute as @e[type=armor_stand,tag=summon_marker2,scores={sts_summon_ypos=5..}] at @s run function entities:bosses/sorass_the_sinner/attacks/summon/types/high/summon2

execute as @e[type=armor_stand,tag=summon_marker3,scores={sts_summon_ypos=..-2}] at @s run function entities:bosses/sorass_the_sinner/attacks/summon/types/low/summon3
execute as @e[type=armor_stand,tag=summon_marker3,scores={sts_summon_ypos=-1..4}] at @s run function entities:bosses/sorass_the_sinner/attacks/summon/types/mid/summon3
execute as @e[type=armor_stand,tag=summon_marker3,scores={sts_summon_ypos=5..}] at @s run function entities:bosses/sorass_the_sinner/attacks/summon/types/high/summon3

execute as @e[type=armor_stand,tag=summon_marker4,scores={sts_summon_ypos=..-2}] at @s run function entities:bosses/sorass_the_sinner/attacks/summon/types/low/summon4
execute as @e[type=armor_stand,tag=summon_marker4,scores={sts_summon_ypos=-1..4}] at @s run function entities:bosses/sorass_the_sinner/attacks/summon/types/mid/summon4
execute as @e[type=armor_stand,tag=summon_marker4,scores={sts_summon_ypos=5..}] at @s run function entities:bosses/sorass_the_sinner/attacks/summon/types/high/summon4

execute as @e[type=armor_stand,tag=summon_marker5,scores={sts_summon_ypos=..-2}] at @s run function entities:bosses/sorass_the_sinner/attacks/summon/types/low/summon5
execute as @e[type=armor_stand,tag=summon_marker5,scores={sts_summon_ypos=-1..4}] at @s run function entities:bosses/sorass_the_sinner/attacks/summon/types/mid/summon5
execute as @e[type=armor_stand,tag=summon_marker5,scores={sts_summon_ypos=5..}] at @s run function entities:bosses/sorass_the_sinner/attacks/summon/types/high/summon5

schedule function entities:bosses/sorass_the_sinner/attacks/summon/clear 2t