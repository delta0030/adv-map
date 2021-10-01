scoreboard players add @s tls_summon_count 1

summon skeleton ~ ~ ~ {HandItems:[{id:"stone_sword"},{}],HandDropChances:[0.0f,0.0f],CustomNameVisible:1b,DeathLootTable:"minecraft:empty",CustomName:'{"text":"Ethereal Skeleton","color":"aqua"}',Tags:["tls_minion","ethereal_skeleton","minion","new_mob"],Attributes:[{Name:"generic.follow_range",Base:50}]}
scoreboard players set @e[type=skeleton,tag=tls_minion,tag=new_mob] mob_max_health 15
execute as @e[type=skeleton,tag=tls_minion,tag=new_mob] run function entities:mobs/setup

execute unless score @s tls_summon_count matches 2.. run function entities:bosses/the_lost_soul/attacks/minions/ethereal_skeleton/summon