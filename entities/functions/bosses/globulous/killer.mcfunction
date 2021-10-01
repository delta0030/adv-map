tp @e[type=slime,tag=!boss_1_summons] ~ ~-1000 ~
kill @e[type=slime,tag=!boss_1_summons]
kill @e[type=slime,tag=boss_1_dmg]
kill @e[type=armor_stand,tag=boss_1_boom]
kill @e[type=armor_stand,tag=boss_1_position]
kill @e[type=armor_stand,tag=boss_1_slam_2]

execute as @a[tag=boss1Fight] run scoreboard players set @s bossfight 0
execute as @a[tag=boss1Fight] at @s run tag @s remove boss1Fight