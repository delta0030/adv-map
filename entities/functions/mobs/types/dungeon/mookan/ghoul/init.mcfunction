summon stray ~ ~1 ~ {DeathLootTable:"entities:entities/hostile/dun2/ghoul",NoGravity:1b,Tags:["bob","mdm3","mdm","new_mob","ghoul"]}

execute as @e[type=stray,tag=bob] run function entities:mobs/types/dungeon/mookan/ghoul/brain

scoreboard objectives add mob_max_health dummy
scoreboard objectives add mob_health dummy
execute as @e[tag=new_mob] run scoreboard players set @s mob_max_health 35
execute as @e[tag=new_mob] run scoreboard players set @s levelingPoints 12
execute as @e[tag=new_mob] run function entities:mobs/setup