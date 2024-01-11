summon vex ~ ~ ~ {Health:32f,Tags:["mdmG","ice_immunity","new_mob","ghost","mdm"],Attributes:[{Name:"generic.max_health",Base:40},{Name:"generic.follow_range",Base:100}]}
advancement revoke @s only entities:dungeon/mookan/mookan_ghost

scoreboard objectives add mob_max_health dummy
scoreboard objectives add mob_health dummy
execute as @e[tag=new_mob] run scoreboard players set @s mob_max_health 32
execute as @e[tag=new_mob] run function entities:mobs/setup