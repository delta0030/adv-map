scoreboard players remove @s raycast 1

scoreboard players remove @s raycast_range 1
execute if block ~ ~ ~ air run tp @s ~ ~ ~
execute if score @s raycast_reflect matches 1.. unless block ~ ~ ~ air run function entities:bosses/the_lost_soul/attacks/triple_shot/fire/reflect

execute if entity @e[type=player,distance=..0.7,tag=!skull_dmg] run function entities:bosses/the_lost_soul/attacks/triple_shot/fire/hit

execute if score @s raycast_reflect matches ..0 unless block ~ ~ ~ air run kill @s
execute if score @s raycast_range matches ..0 run kill @s

execute unless score @s raycast matches ..-1 rotated as @s positioned ^ ^ ^0.1 run function entities:bosses/the_lost_soul/attacks/triple_shot/fire/main