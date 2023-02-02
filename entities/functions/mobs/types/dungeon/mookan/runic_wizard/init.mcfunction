summon skeleton ~ ~ ~ {DeathLootTable:"entities:entities/hostile/dun2/runic_wizard",Tags:["mdm","mdm5","new_mob","runic_wiz"],HandItems:[{id:"minecraft:stick",Count:1b,tag:{display:{Name:'{"text":"Wand"}'}}},{}],ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1b}]}

execute as @e[type=skeleton,tag=mdm5] at @s if entity @a[distance=..25] run tag @a[distance=..25] add run_wiz

function entities:mobs/types/dungeon/mookan/runic_wizard/brain
execute as @a[tag=run_wiz] run schedule function entities:mobs/types/dungeon/mookan/runic_wizard/attacks/teleportation 6s
schedule function entities:mobs/types/dungeon/mookan/runic_wizard/atk_rng 7s

function entities:mobs/types/dungeon/mookan/runic_wizard/attacks/rng/init/init

scoreboard objectives add mob_max_health dummy
scoreboard objectives add mob_health dummy
execute as @e[tag=new_mob] run scoreboard players set @s mob_max_health 65
execute as @e[tag=new_mob] run scoreboard players set @s levelingPoints 25
execute as @e[tag=new_mob] run function entities:mobs/setup