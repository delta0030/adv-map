function entities:bosses/the_lost_soul/attacks/triple_shot/indicator/timer

scoreboard objectives add triple_timer dummy
scoreboard players add @s triple_timer 1

# stop indicator and fire after 1.5 seconds
execute if score @s triple_timer matches 10 run tag @s add fire

# indicator
execute unless entity @s[tag=fire] if score #time raycast matches 0 positioned ~ ~1 ~ run function entities:bosses/the_lost_soul/attacks/triple_shot/indicator/begin
execute unless entity @s[tag=fire] if score #time raycast matches 0 rotated ~-30 ~ positioned ~ ~1 ~ run function entities:bosses/the_lost_soul/attacks/triple_shot/indicator/begin
execute unless entity @s[tag=fire] if score #time raycast matches 0 rotated ~30 ~ positioned ~ ~1 ~ run function entities:bosses/the_lost_soul/attacks/triple_shot/indicator/begin

# fire skulls
scoreboard players set @e[type=armor_stand,tag=tls_aim2] raycast 20
execute if entity @s[tag=fire,tag=!fired] run function entities:bosses/the_lost_soul/attacks/triple_shot/fire/init
execute if entity @s[tag=fired] as @e[type=armor_stand,tag=tls_aim2] at @s rotated as @s run function entities:bosses/the_lost_soul/attacks/triple_shot/fire/main
execute if entity @s[tag=fired] unless entity @e[type=armor_stand,tag=tls_aim2] run function entities:bosses/the_lost_soul/attacks/triple_shot/fire/end
execute if score @s[tag=fired] triple_timer matches 29 run function entities:bosses/the_lost_soul/attacks/triple_shot/fire/end

tag @a[tag=skull_dmg] remove skull_dmg

execute if entity @s[tag=!fired] run particle dust 0 0.969 1 1 ~ ~ ~ 0.5 1.5 0.5 0.2 20 normal