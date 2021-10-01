function entities:bosses/globulous/rng/init/attack

execute if score out math1 matches 1 run function entities:bosses/globulous/attacks/attack1/boss_launch
#execute as @e[type=armor_stand,tag=boss_1_slam_1] if score out math1 matches 1 run function entities:bosses/globulous/attacks/attack1/pos
execute if score out math1 matches 2 run function entities:bosses/globulous/attacks/attack2/exploding_attack
execute as @e[type=slime,tag=boss_1] at @s if score out math1 matches 3 run function entities:bosses/globulous/summons/init

execute if entity @e[type=slime,tag=boss_1] run schedule function entities:bosses/globulous/attack_control 4s