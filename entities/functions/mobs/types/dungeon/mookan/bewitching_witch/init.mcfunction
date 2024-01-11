summon witch ~ ~ ~ {DeathLootTable:"entities:entities/hostile/dun2/bewitching_witch",NoAI:1b,Health:100f,Attributes:[{Name:"generic.follow_range",Base:40}],Tags:["mdm4","mdm","new_mob","bewitching"],PersistenceRequired:1b}

scoreboard objectives add mdm4 dummy

execute as @e[tag=mdm4] if entity @a[distance=..25] run tag @a[distance=..25] add witch

execute as @a[tag=witch] run schedule function entities:mobs/types/dungeon/mookan/bewitching_witch/attacks/teleportation 4s
schedule function entities:mobs/types/dungeon/mookan/bewitching_witch/atk_rng 5s
execute as @a[tag=witch] run function entities:mobs/types/dungeon/mookan/bewitching_witch/brain

function entities:mobs/types/dungeon/mookan/bewitching_witch/attacks/rng/init/init

scoreboard objectives add mob_max_health dummy
scoreboard objectives add mob_health dummy
execute as @e[tag=new_mob] run scoreboard players set @s mob_max_health 80
execute as @e[tag=new_mob] run scoreboard players set @s levelingPoints 24
execute as @e[tag=new_mob] run function entities:mobs/setup