execute at @e[type=armor_stand,tag=boss_1_slam_1] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Motion:[0.0,-7.0,0.0],Tags:["boss_1_slam_2"]}
kill @e[type=armor_stand,tag=boss_1_slam_1]

schedule function entities:bosses/globulous/attacks/attack1/slam_effect 10t

#execute unless score @e[type=player,limit=1] bossDist matches 2 run schedule function entities:bosses/globulous/attacks/attack1/slam_effect 10t
#execute unless score @e[type=player,limit=1] bossDist matches 2 as @e[type=slime,tag=boss_1] unless block ~ ~-2 ~ air run function entities:bosses/globulous/attacks/attack1/slam_effect