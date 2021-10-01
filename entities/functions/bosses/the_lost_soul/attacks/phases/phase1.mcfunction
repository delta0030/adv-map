execute if entity @e[type=stray,tag=boss_2_clone] run scoreboard players set out math 0
execute if score out math matches 0..5 run function entities:bosses/the_lost_soul/attacks/teleport/init
execute if score out math matches 6..10 unless entity @e[type=stray,tag=boss_2_clone] run function entities:bosses/the_lost_soul/attacks/clone/init