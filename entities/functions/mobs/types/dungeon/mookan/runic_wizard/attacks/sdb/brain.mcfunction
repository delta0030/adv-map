execute as @e[tag=mdm5_sdb] at @s anchored eyes facing entity @p eyes positioned ^ ^ ^2 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.18 ~ ~
execute at @e[tag=mdm5_sdb] run particle minecraft:squid_ink ^ ^1 ^ 0.1 0.1 0.1 0 10
execute at @e[tag=mdm5_sdb] run particle minecraft:smoke ^ ^1 ^ 0.1 0.1 0.1 0 10
execute as @e[tag=mdm5_sdb] at @s anchored eyes if entity @a[distance=..1] run function entities:mobs/types/dungeon/mookan/runic_wizard/attacks/sdb/kill
execute as @e[tag=mdm5_sdb] at @s anchored eyes unless block ^ ^ ^0.25 air run function entities:mobs/types/dungeon/mookan/runic_wizard/attacks/sdb/kill

execute if entity @e[tag=mdm5_sdb] run schedule function entities:mobs/types/dungeon/mookan/runic_wizard/attacks/sdb/brain 1t