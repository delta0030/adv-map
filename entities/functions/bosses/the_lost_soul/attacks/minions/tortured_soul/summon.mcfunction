scoreboard players add @s tls_summon_count 1

summon vex ~ ~ ~ {CustomNameVisible:1b,DeathLootTable:"minecraft:empty",CustomName:'{"text":"Tortured Soul","color":"aqua"}',Tags:["tls_minion","tortured_soul","minion","new_mob"],Attributes:[{Name:"generic.follow_range",Base:50}]}
scoreboard players set @e[type=vex,tag=tls_minion,tag=new_mob] mob_max_health 50
execute as @e[type=vex,tag=tls_minion,tag=new_mob] run function entities:mobs/setup

execute unless score @s[tag=!phase3] tls_summon_count matches 3.. run function entities:bosses/the_lost_soul/attacks/minions/tortured_soul/summon
execute unless score @s[tag=phase3] tls_summon_count matches 5.. run function entities:bosses/the_lost_soul/attacks/minions/tortured_soul/summon