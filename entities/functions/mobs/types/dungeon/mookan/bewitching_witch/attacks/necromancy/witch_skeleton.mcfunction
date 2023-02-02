summon skeleton ~ ~ ~ {DeathLootTable:"entities:entities/hostile/dun2/witch_skeleton",Tags:["mdm","new_mob","mdm4_sum"],Attributes:[{Name:"generic.follow_range",Base:40}]}

scoreboard objectives add mob_max_health dummy
scoreboard objectives add mob_health dummy
execute as @e[tag=new_mob] run scoreboard players set @s mob_max_health 25
execute as @e[tag=new_mob] run function entities:mobs/setup