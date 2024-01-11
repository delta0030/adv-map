summon cave_spider ~ ~ ~ {DeathLootTable:"entities:entities/hostile/dun2/spider",Tags:["mdm1.1","mdm","new_mob","small_spider"],Attributes:[{Name:"generic.movement_speed",Base:0.26}]}
scoreboard objectives add mob_max_health dummy
scoreboard objectives add mob_health dummy
execute as @e[tag=new_mob] run scoreboard players set @s mob_max_health 35
execute as @e[tag=new_mob] run scoreboard players set @s levelingPoints 18
execute as @e[tag=new_mob] run function entities:mobs/setup