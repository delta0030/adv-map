execute at @e[type=slime,tag=boss_1] run particle dust 0.1 1 0 2 ~ ~ ~ 4 1 4 0 1000
execute as @a at @s if entity @e[type=slime,tag=boss_1,distance=..12] run function player:stats/dmg/get_base_dmg/globulous/slam
execute as @a at @s if entity @e[type=slime,tag=boss_1,distance=..12] run function player:stats/dmg/generic_dmg
execute as @a at @s if entity @e[type=slime,tag=boss_1,distance=..12] run effect give @s minecraft:slowness 3 2 true
playsound minecraft:block.anvil.break master @a ~ ~ ~ 1000 0
kill @e[type=armor_stand,tag=boss_1_marker]

function entities:bosses/globulous/attacks/attack1/as_kill