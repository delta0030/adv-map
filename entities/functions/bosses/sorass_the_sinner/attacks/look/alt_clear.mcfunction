execute as @a at @s if entity @e[type=zombie_villager,tag=boss_3,distance=2..] run playsound minecraft:entity.allay.item_thrown hostile @s ~ ~ ~ 1.25 0.5
execute as @a at @s if entity @e[type=zombie_villager,tag=boss_3,distance=2..] run playsound minecraft:entity.generic.eat hostile @s ~ ~ ~ 0.75 0.5

function entities:bosses/sorass_the_sinner/attacks/look/clear