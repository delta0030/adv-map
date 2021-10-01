team add frozen
team modify frozen color aqua
#execute if entity @e[type=!player,tag=!ice_immunity,distance=..7] run tag @e[type=!player,tag=!ice_immunity,distance=..7] add frozen
execute at @s as @e[type=!player,tag=!ice_immunity,distance=..7] run tag @s add frozen
execute at @s as @e[type=!player,tag=!ice_immunity,tag=frozen,distance=7..] run tag @s remove frozen
execute as @e[tag=frozen] run effect give @s slowness 5 3 true
execute as @e[tag=frozen] run effect give @s glowing 5 1 true
execute as @e[tag=frozen] at @s run particle dust 0.471 0.894 1.000 1 ~ ~ ~ 0.5 1 0.5 0 50 force
execute if score @s carrot_rc matches 1.. run scoreboard players set @s carrot_rc 0

execute at @s as @e[type=!player,tag=frozen] run playsound minecraft:entity.zombie_villager.cure master @a ~ ~ ~ 0.1 1
execute at @s unless entity @e[tag=frozen] run playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 0.1 2

scoreboard players set @s weapon_cooldown 150
scoreboard players remove @s player_mana 12

schedule function items:weapons/magic/freeze/clear 5s