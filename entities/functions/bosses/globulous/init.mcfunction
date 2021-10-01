#Boss and attributes
bossbar add globulous [{"translate":"space.0"},{"text":"\uE002","font":"entities"},{"text":"\uF811"},{"text":"\uE003","font":"entities"}]
bossbar set minecraft:globulous color green
bossbar set minecraft:globulous visible true
bossbar set minecraft:globulous players @a

# team
team add nopush "nopush"
team modify nopush collisionRule never

#Boss slam as
scoreboard objectives add boss_slam dummy
scoreboard players add @e[type=armor_stand,tag=boss_1_slam_1] boss_slam 0
scoreboard players add @e[type=armor_stand,tag=boss_1_slam_2] boss_slam 0
scoreboard players set @e[type=armor_stand,tag=boss_1_slam_1] boss_slam 0
scoreboard players set @e[type=armor_stand,tag=boss_1_slam_2] boss_slam 0

#Death detection
scoreboard objectives add boss_1 dummy
scoreboard players set @a boss_1 0
scoreboard players set %live boss_1 0
scoreboard objectives add boss_1_death dummy
scoreboard players set @a boss_1_death 0

#Music sequence
scoreboard objectives add boss_1_music dummy
scoreboard players set @a boss_1_music 0
scoreboard players set @a boss_1_music 1
scoreboard objectives add boss_1_music_T dummy
scoreboard players set @a boss_1_music_T 0
function entities:bosses/globulous/attacks/music/music1

#Summon glow color
team add Globulous
team modify Globulous color green

#Boss spawn
# be sure to change the spawn cooridnate when porting worlds
summon minecraft:slime 1608 127 -1017 {Health:200f,Size:12,Tags:["boss_1","new_mob"],CustomName:'{"text":"Globulous","color":"green","bold":false,"italic":false}',Attributes:[{Name:"generic.max_health",Base:200},{Name:"generic.follow_range",Base:500},{Name:"generic.movement_speed",Base:0.5},{Name:"generic.armor",Base:4}],Invulnerable:1b}

# better hitbox
execute as @e[type=slime,tag=boss_1,tag=!boss_1_dmg] at @s run summon slime ~ ~0.5 ~3 {Size:3,Team:"nopush",NoAI:1b,ActiveEffects:[{Id:14b,Amplifier:15b,Duration:999999,ShowParticles:0b}],Tags:["new_mob","boss_1_dmg","boss_1_dmg1"]}
execute as @e[type=slime,tag=boss_1,tag=!boss_1_dmg] at @s run summon slime ~ ~0.5 ~-3 {Size:3,Team:"nopush",NoAI:1b,ActiveEffects:[{Id:14b,Amplifier:15b,Duration:999999,ShowParticles:0b}],Tags:["new_mob","boss_1_dmg","boss_1_dmg2"]}
execute as @e[type=slime,tag=boss_1,tag=!boss_1_dmg] at @s run summon slime ~3 ~0.5 ~ {Size:3,Team:"nopush",NoAI:1b,ActiveEffects:[{Id:14b,Amplifier:15b,Duration:999999,ShowParticles:0b}],Tags:["new_mob","boss_1_dmg","boss_1_dmg3"]}
execute as @e[type=slime,tag=boss_1,tag=!boss_1_dmg] at @s run summon slime ~-3 ~0.5 ~ {Size:3,Team:"nopush",NoAI:1b,ActiveEffects:[{Id:14b,Amplifier:15b,Duration:999999,ShowParticles:0b}],Tags:["new_mob","boss_1_dmg","boss_1_dmg4"]}
execute as @e[type=slime,tag=boss_1,tag=!boss_1_dmg] at @s run summon slime ~3 ~0.5 ~2 {Size:3,Team:"nopush",NoAI:1b,ActiveEffects:[{Id:14b,Amplifier:15b,Duration:999999,ShowParticles:0b}],Tags:["new_mob","boss_1_dmg","boss_1_dmg5"]}
execute as @e[type=slime,tag=boss_1,tag=!boss_1_dmg] at @s run summon slime ~-3 ~0.5 ~2 {Size:3,Team:"nopush",NoAI:1b,ActiveEffects:[{Id:14b,Amplifier:15b,Duration:999999,ShowParticles:0b}],Tags:["new_mob","boss_1_dmg","boss_1_dmg6"]}
execute as @e[type=slime,tag=boss_1,tag=!boss_1_dmg] at @s run summon slime ~2 ~0.5 ~3 {Size:3,Team:"nopush",NoAI:1b,ActiveEffects:[{Id:14b,Amplifier:15b,Duration:999999,ShowParticles:0b}],Tags:["new_mob","boss_1_dmg","boss_1_dmg7"]}
execute as @e[type=slime,tag=boss_1,tag=!boss_1_dmg] at @s run summon slime ~2 ~0.5 ~-3 {Size:3,Team:"nopush",NoAI:1b,ActiveEffects:[{Id:14b,Amplifier:15b,Duration:999999,ShowParticles:0b}],Tags:["new_mob","boss_1_dmg","boss_1_dmg8"]}
execute as @e[type=slime,tag=boss_1,tag=!boss_1_dmg] at @s run summon slime ~3 ~0.5 ~-2 {Size:3,Team:"nopush",NoAI:1b,ActiveEffects:[{Id:14b,Amplifier:15b,Duration:999999,ShowParticles:0b}],Tags:["new_mob","boss_1_dmg","boss_1_dmg9"]}
execute as @e[type=slime,tag=boss_1,tag=!boss_1_dmg] at @s run summon slime ~-3 ~0.5 ~-2 {Size:3,Team:"nopush",NoAI:1b,ActiveEffects:[{Id:14b,Amplifier:15b,Duration:999999,ShowParticles:0b}],Tags:["new_mob","boss_1_dmg","boss_1_dmg10"]}
execute as @e[type=slime,tag=boss_1,tag=!boss_1_dmg] at @s run summon slime ~-2 ~0.5 ~3 {Size:3,Team:"nopush",NoAI:1b,ActiveEffects:[{Id:14b,Amplifier:15b,Duration:999999,ShowParticles:0b}],Tags:["new_mob","boss_1_dmg","boss_1_dmg11"]}
execute as @e[type=slime,tag=boss_1,tag=!boss_1_dmg] at @s run summon slime ~-2 ~0.5 ~-3 {Size:3,Team:"nopush",NoAI:1b,ActiveEffects:[{Id:14b,Amplifier:15b,Duration:999999,ShowParticles:0b}],Tags:["new_mob","boss_1_dmg","boss_1_dmg12"]}

scoreboard objectives add mob_max_health dummy
scoreboard objectives add mob_health dummy
execute as @e[tag=new_mob] run scoreboard players set @s mob_max_health 175
execute as @e[tag=new_mob] run function entities:mobs/setup

scoreboard players operation @e[type=slime,tag=boss_1] mob_max_health *= %playercount HealthScale
execute as @e[type=slime,tag=boss_1] run scoreboard players operation @s mob_health = @s mob_max_health
execute as @e[type=slime,tag=boss_1_dmg] run scoreboard players operation @s mob_health = @e[type=slime,tag=boss_1] mob_max_health

execute store result bossbar globulous max run scoreboard players get @e[type=slime,tag=boss_1,limit=1] mob_max_health

# if in fight

execute as @e[type=slime,tag=boss_1] at @s if entity @a[distance=..150] run tag @a[distance=..150] add boss1Fight
execute as @a[tag=boss1Fight] run scoreboard players set @s bossfight 1

# spawn slam
effect give @e[type=slime,tag=boss_1] resistance 2 50 true

execute at @e[type=slime,tag=boss_1] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Tags:["boss_1_slam_1"]}
execute at @e[type=armor_stand,tag=boss_1_slam_1] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Motion:[0.0,-7.0,0.0],Tags:["boss_1_slam_2"]}
kill @e[type=armor_stand,tag=boss_1_slam_1]

stopsound @a ambient

schedule function entities:bosses/globulous/attacks/attack1/slam_effect 14t

#Function scheduling with delay (future self no idea why there is a delay for the first two, but leaving it just in case)
schedule function entities:bosses/globulous/globulous_brain 2t
schedule function entities:bosses/globulous/death_summon 2t
schedule function entities:bosses/globulous/attack_control 6s

function entities:bosses/globulous/border/ring