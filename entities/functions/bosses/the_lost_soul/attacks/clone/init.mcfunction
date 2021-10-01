particle large_smoke ~ ~1 ~ 0.3 1 0.3 0 30 force
tp @s ~ ~ ~ facing entity @p

# create clone
summon stray ~ ~ ~ {Tags:["boss_2_clone","boss","new_mob"],CustomNameVisible:1b,CustomName:'{"text":"The Lost Soul","color":"aqua"}',DeathLootTable:"minecraft:empty",HandItems:[{},{}],Attributes:[{Name:"generic.follow_range",Base:100},{Name:"generic.movement_speed",Base:0.35}]}
execute as @e[type=stray,tag=boss_2_clone,tag=new_mob] run data modify entity @s Rotation set from entity @e[type=stray,tag=boss_2,limit=1] Rotation
scoreboard players set @e[type=stray,tag=boss_2_clone,tag=new_mob] mob_max_health 300
execute as @e[type=stray,tag=boss_2_clone,tag=new_mob] run function entities:mobs/setup
scoreboard players operation @e[type=stray,tag=boss_2_clone,tag=mob] mob_health = @s mob_health
scoreboard players operation %prev_hp tls_clone = @s mob_health
execute as @e[type=stray,tag=boss_2_clone,tag=mob] run function entities:health/display/init

# randomize tp direction
scoreboard objectives add tls_clone dummy
scoreboard players set %rng tls_clone 0
execute store success score %rng tls_clone if predicate entities:rng/rng50

execute if score %rng tls_clone matches 0 as @e[type=stray,tag=boss_2_clone] at @s run function entities:bosses/the_lost_soul/attacks/clone/left
execute if score %rng tls_clone matches 0 as @e[type=stray,tag=boss_2] at @s run function entities:bosses/the_lost_soul/attacks/clone/right

execute if score %rng tls_clone matches 1 as @e[type=stray,tag=boss_2] at @s run function entities:bosses/the_lost_soul/attacks/clone/left
execute if score %rng tls_clone matches 1 as @e[type=stray,tag=boss_2_clone] at @s run function entities:bosses/the_lost_soul/attacks/clone/right