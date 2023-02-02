execute if entity @e[type=stray,tag=boss_2_clone] run scoreboard players set out math 0
execute if score out math matches 0..4 run function entities:bosses/the_lost_soul/attacks/dash/indicator
execute if score out math matches 5..7 run function entities:bosses/the_lost_soul/attacks/teleport/init
execute if score out math matches 8..10 unless entity @e[type=stray,tag=boss_2_clone] run function entities:bosses/the_lost_soul/attacks/clone/init