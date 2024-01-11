summon silverfish ~ ~ ~ {DeathLootTable:"entities:entities/hostile/dun2/cave_leech",Silent:1b,Tags:["mdm2","mdm","new_mob","cave_leech"],Attributes:[{Name:"generic.movement_speed",Base:0.35}]}

scoreboard objectives add mob_max_health dummy
scoreboard objectives add mob_health dummy
execute as @e[tag=new_mob] run scoreboard players set @s mob_max_health 20
execute as @e[tag=new_mob] run scoreboard players set @s levelingPoints 15
execute as @e[tag=new_mob] run function entities:mobs/setup