execute as @e[type=witch,tag=mdm4] at @s run tp @s ~ ~ ~ facing entity @p feet

execute unless entity @e[tag=mdm4] run tag @a[tag=witch] remove witch
execute unless entity @e[tag=mdm4] run scoreboard objectives remove mdm4

execute store result score %live mdm4 if entity @e[type=skeleton,tag=mdm4_sum]

execute if entity @e[type=witch,tag=mdm4] run schedule function entities:mobs/types/dungeon/mookan/bewitching_witch/brain 1t