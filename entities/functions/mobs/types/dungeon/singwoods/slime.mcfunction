summon slime ~ ~ ~ {DeathLootTable:"entities:mobs/dungeon/singwoods/slime",CustomNameVisible:0b,Team:"swdm",CustomName:'{"text":"Slime","color":"white","italic":false}',Health:100f,Size:2,Tags:["swdm3","swdm"],Attributes:[{Name:"generic.max_health",Base:100}]}

scoreboard objectives add mob_max_health dummy
scoreboard objectives add mob_health dummy
execute as @e[tag=new_mob] run scoreboard players set @s mob_max_health 10
execute as @e[tag=new_mob] run function entities:mobs/setup