execute as @a at @s run playsound minecraft:entity.zombie_villager.converted hostile @s ~ ~ ~ 0.25 1.25
summon zombie ~ ~ ~ {DeathLootTable:"entities:entities/hostile/dun1/armored_zombie",IsBaby:1b,Tags:["sts_sums","sts_sums3","new_mob","sts_sums_high","trogladyte"],ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1b}]}
scoreboard objectives add mob_max_health dummy
scoreboard objectives add mob_health dummy
execute as @e[tag=new_mob] run scoreboard players set @s mob_max_health 15
execute as @e[tag=new_mob] run function entities:mobs/setup