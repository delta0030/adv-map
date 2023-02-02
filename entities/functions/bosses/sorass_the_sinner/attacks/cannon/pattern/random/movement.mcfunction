execute at @e[type=zombie_villager,tag=boss_3] run spreadplayers ~ ~ 4 12 false @e[type=armor_stand,tag=can_mark]
tp @e[type=armor_stand,tag=can_mark_1] @p
execute as @e[type=armor_stand,tag=can_mark] at @s run tp @s ~ ~ ~ facing entity @e[type=zombie_villager,tag=boss_3,limit=1] eyes