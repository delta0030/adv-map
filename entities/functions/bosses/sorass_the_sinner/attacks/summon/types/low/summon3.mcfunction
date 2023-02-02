execute as @a at @s run playsound minecraft:entity.zombie_villager.converted hostile @s ~ ~ ~ 0.25 0.5
summon husk ~ ~ ~ {DeathLootTable:"entities:entities/hostile/dun1/armored_zombie",Tags:["sts_sums","sts_sums3","new_mob","sts_sums_low"],ArmorItems:[{id:"minecraft:iron_boots",Count:1b,tag:{Unbreakable:1b}},{id:"minecraft:iron_leggings",Count:1b,tag:{Unbreakable:1b}},{id:"minecraft:iron_chestplate",Count:1b,tag:{Unbreakable:1b}},{id:"minecraft:iron_helmet",Count:1b,tag:{Unbreakable:1b}}],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F]}
scoreboard objectives add mob_max_health dummy
scoreboard objectives add mob_health dummy
execute as @e[tag=new_mob] run scoreboard players set @s mob_max_health 45
execute as @e[tag=new_mob] run function entities:mobs/setup