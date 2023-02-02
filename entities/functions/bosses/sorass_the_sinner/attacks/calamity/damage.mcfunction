# deal damage here
execute at @e[type=armor_stand,tag=cal_cen] run playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 2 0.5
execute at @e[type=armor_stand,tag=cal_cen] run playsound minecraft:block.beacon.deactivate hostile @a ~ ~ ~ 2 0.5
execute at @e[type=armor_stand,tag=cal_cen] run playsound minecraft:block.furnace.fire_crackle hostile @a ~ ~ ~ 2 0.5
execute at @e[type=armor_stand,tag=cal_cen] run playsound minecraft:block.respawn_anchor.charge hostile @a ~ ~ ~ 2 2
execute at @e[type=armor_stand,tag=cal_cen] run playsound minecraft:block.respawn_anchor.deplete hostile @a ~ ~ ~ 2 0.5
execute at @e[type=armor_stand,tag=cal_cen] run playsound minecraft:item.crossbow.loading_end hostile @a ~ ~ ~ 2 0.5

execute as @a at @s if entity @e[type=armor_stand,tag=cal_cen,distance=..4] run function player:stats/dmg/get_base_dmg/sinner/calamity