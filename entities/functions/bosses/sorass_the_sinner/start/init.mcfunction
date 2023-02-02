#Boss and attributes
bossbar add sorass [{"translate":"space.0"},{"text":"\uE006","font":"entities"},{"text":"\uF811"},{"text":"\uE007","font":"entities"}]
bossbar set minecraft:sorass color green
bossbar set minecraft:sorass visible true
bossbar set minecraft:sorass players @a

# summon boss and arena center
execute at @e[type=armor_stand,tag=boss_3_center] run summon zombie_villager ~ ~ ~ {Fire:214483646,DeathLootTable:"minecraft:empty",Tags:["boss_3","new_mob","boss"],ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{display:{Name:'{"text":"Fancy magic hat","color":"light_purple","italic":false}'},CustomModelData:10000041,sora_hat:1b}}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F],VillagerData:{level:99,profession:"minecraft:cleric",type:"minecraft:swamp"},Offers:{}}
execute at @e[type=armor_stand,tag=boss_3_center] run summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["sts_fight_center"]}

# Crystal particles
execute at @e[type=zombie_villager,tag=boss_3] run summon armor_stand ~ ~3 ~ {Invisible:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Small:1b,Tags:["boss_3_crystal1","boss_3_crystal"]}
execute at @e[type=zombie_villager,tag=boss_3] run summon armor_stand ~ ~3 ~ {Invisible:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Small:1b,Tags:["boss_3_crystal2","boss_3_crystal"]}

# Visible crystal
execute at @e[type=zombie_villager,tag=boss_3] run summon armor_stand ~2 ~3 ~ {NoGravity:1b,Silent:1b,Small:1b,Invisible:1b,Tags:["boss_3_crystal1R","boss_3_crystal"],ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{display:{Name:'{"text":"Red Crystal","color":"red","bold":true,"italic":false}'},CustomModelData:10000042,Enchantments:[{}]}}]}
execute at @e[type=zombie_villager,tag=boss_3] run summon armor_stand ~-2 ~3 ~ {NoGravity:1b,Silent:1b,Small:1b,Invisible:1b,Tags:["boss_3_crystal2B","boss_3_crystal"],ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{display:{Name:'{"text":"Blue Crystal","color":"blue","bold":true,"italic":false}'},CustomModelData:10000043,Enchantments:[{}]}}]}

# health
scoreboard objectives add mob_max_health dummy
scoreboard objectives add mob_health dummy
execute as @e[tag=new_mob] run scoreboard players set @s mob_max_health 1125
execute as @e[tag=new_mob] run function entities:mobs/setup

scoreboard players operation @e[type=zombie_villager,tag=boss_3] mob_max_health *= %playercount HealthScale
execute as @e[type=zombie_villager,tag=boss_3] run scoreboard players operation @s mob_health = @s mob_max_health
execute as @e[type=zombie_villager,tag=boss_3] run scoreboard players add @s levelingPoints 1150

execute store result bossbar sorass max run scoreboard players get @e[type=zombie_villager,tag=boss_3,limit=1] mob_max_health

function entities:bosses/sorass_the_sinner/brain
function entities:bosses/sorass_the_sinner/attacks/brain