summon minecraft:slime ~ ~ ~ {Invulnerable:0b,Glowing:1b,CustomNameVisible:1b,FallDistance:0f,PersistenceRequired:1b,CanPickUpLoot:0b,Health:16f,Size:1,Tags:["new_mob","boss_1_summons"],CustomName:'{"text":"Slimy Servant","color":"green"}',Attributes:[{Name:"generic.max_health",Base:16},{Name:"generic.attack_damage",Base:1}]}

scoreboard objectives add mob_max_health dummy
scoreboard objectives add mob_health dummy
execute as @e[tag=new_mob] run scoreboard players set @s mob_max_health 16
execute as @e[tag=new_mob] run function entities:mobs/setup