execute as @e[type=stray,tag=boss_2] at @s run function entities:bosses/the_lost_soul/brain

execute if entity @e[type=stray,tag=boss_2] run schedule function entities:bosses/the_lost_soul/main 1t
execute unless entity @e[type=stray,tag=boss_2] run function entities:bosses/the_lost_soul/end