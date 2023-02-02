execute unless entity @e[type=skeleton,tag=mdm5] as @a[tag=run_wiz] at @s run function entities:mobs/types/dungeon/mookan/runic_wizard/death

execute unless entity @e[type=skeleton,tag=mdm5] run tag @a[tag=run_wiz] remove run_wiz

execute if entity @e[type=skeleton,tag=mdm5] run schedule function entities:mobs/types/dungeon/mookan/runic_wizard/brain 1t