summon vex ~ ~ ~ {CustomNameVisible:0b,Health:100f,Tags:["swdm4"],Team:"swdm",CustomName:'{"text":"Singwoods Ghost","color":"aqua","italic":false}',Attributes:[{Name:"generic.max_health",Base:100},{Name:"generic.follow_range",Base:100}]}

scoreboard objectives add mob_max_health dummy
scoreboard objectives add mob_health dummy
execute as @e[tag=new_mob] run scoreboard players set @s mob_max_health 16
execute as @e[tag=new_mob] run function entities:mobs/setup

advancement revoke @s only entities:dungeon/singwoods/singwoods_ghost