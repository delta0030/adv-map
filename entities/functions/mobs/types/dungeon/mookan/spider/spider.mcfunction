summon spider ~ ~ ~ {DeathLootTable:"entities:entities/hostile/dun2/spider",Tags:["mdm1","mdm","new_mob","spider"],Attributes:[{Name:"generic.movement_speed",Base:0.2}]}

scoreboard objectives add mob_max_health dummy
scoreboard objectives add mob_health dummy
execute as @e[tag=new_mob] run scoreboard players set @s mob_max_health 40
execute as @e[tag=new_mob] run scoreboard players set @s levelingPoints 20
execute as @e[tag=new_mob] run function entities:mobs/setup
# add chance for a cave spider to spawn (wont cause poison) just to vary size