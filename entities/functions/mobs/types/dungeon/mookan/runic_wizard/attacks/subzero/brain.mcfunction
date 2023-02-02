execute at @e[tag=mdm5_frozen] run particle dust 0.012 0.804 1.000 1 ^ ^ ^5 0.01 0.01 0.01 0 5
execute at @e[tag=mdm5_frozen] run particle dust 0.012 0.804 1.000 1 ^ ^ ^-5 0.01 0.01 0.01 0 5
execute at @e[tag=mdm5_frozen] run particle dust 0.012 0.804 1.000 1 ^5 ^ ^ 0.01 0.01 0.01 0 5
execute at @e[tag=mdm5_frozen] run particle dust 0.012 0.804 1.000 1 ^-5 ^ ^ 0.01 0.01 0.01 0 5
execute at @e[tag=mdm5_frozen] run particle minecraft:firework ^ ^ ^5 0.01 0.01 0.01 0 10
execute at @e[tag=mdm5_frozen] run particle minecraft:firework ^ ^ ^-5 0.01 0.01 0.01 0 10
execute at @e[tag=mdm5_frozen] run particle minecraft:firework ^5 ^ ^ 0.01 0.01 0.01 0 10
execute at @e[tag=mdm5_frozen] run particle minecraft:firework ^-5 ^ ^ 0.01 0.01 0.01 0 10

execute as @e[tag=mdm5_frozen] at @s run tp @s ~ ~ ~ ~5 ~

execute as @e[tag=mdm5_frocircle] at @s run tp @s ~ ~0.02 ~ ~5 ~
execute as @e[tag=mdm5_frocircle] at @s run particle minecraft:end_rod ^ ^ ^3
execute as @e[tag=mdm5_frocircle] at @s run particle minecraft:end_rod ^ ^ ^-3

execute if entity @e[tag=mdm5_timer1] run function entities:mobs/types/dungeon/mookan/runic_wizard/attacks/subzero/part1
execute if entity @e[tag=mdm5_timer2] run function entities:mobs/types/dungeon/mookan/runic_wizard/attacks/subzero/part2
execute if entity @e[tag=mdm5_timer3] run function entities:mobs/types/dungeon/mookan/runic_wizard/attacks/subzero/part3

execute if predicate entities:chance_2 run function entities:mobs/types/dungeon/mookan/runic_wizard/attacks/subzero/particle

execute if entity @e[tag=mdm5_frozen] run schedule function entities:mobs/types/dungeon/mookan/runic_wizard/attacks/subzero/brain 1t