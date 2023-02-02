execute as @e[type=zombie_villager,tag=boss_3] at @s run effect clear @s slowness
kill @e[type=armor_stand,tag=calamity]
scoreboard objectives remove sts_calamity
scoreboard players set %cal sts_attacks 0
scoreboard players set %inatt sts_attacks 0