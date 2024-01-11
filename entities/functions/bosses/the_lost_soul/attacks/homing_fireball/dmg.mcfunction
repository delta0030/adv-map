scoreboard players set @s[type=player] base_dmg 25
scoreboard players set @s[type=stray,tag=boss_2,tag=phase2] base_dmg 20
scoreboard players set @s[type=stray,tag=boss_2,tag=phase4] base_dmg 25

execute if entity @s[type=player] run function player:stats/dmg/calc_dmg
execute if entity @s[type=player] run function player:stats/dmg/generic_dmg
execute if entity @s[type=stray,tag=boss_2] run function entities:dmg/magic/init