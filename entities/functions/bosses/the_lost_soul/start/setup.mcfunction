summon stray ~ ~ ~ {NoGravity:1b,NoAI:1b,CustomNameVisible:1b,CustomName:'{"text":"The Lost Soul","color":"aqua"}',DeathLootTable:"minecraft:empty",Tags:["new_mob","boss","boss_2"],HandItems:[{},{}],Attributes:[{Name:"generic.follow_range",Base:100},{Name:"generic.movement_speed",Base:0.35}]}

bossbar add lost_soul [{"translate":"space.0"},{"text":"\uE004","font":"entities"},{"text":"\uF811"},{"text":"\uE005","font":"entities"}]
bossbar set lost_soul color white
bossbar set lost_soul visible true

execute as @e[type=stray,tag=boss_2,tag=new_mob] at @s run function entities:bosses/the_lost_soul/start/setup2
execute as @e[type=stray,tag=boss_2] run function entities:health/display/init
scoreboard players operation %prev_hp tls_timer = @e[type=stray,tag=boss_2,limit=1] mob_health

scoreboard players set %max tls_timer 180