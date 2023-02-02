kill @e[type=armor_stand,tag=cannon_marker]
kill @e[type=armor_stand,tag=orb_proj]
kill @e[type=armor_stand,tag=cannon_orb_marker]
kill @e[type=armor_stand,tag=sts_cannonProj]
scoreboard objectives remove sts_cannon
scoreboard objectives remove motion_lvl
scoreboard objectives remove motion_x1
scoreboard objectives remove motion_y1
scoreboard objectives remove motion_z1
scoreboard objectives remove motion_x2
scoreboard objectives remove motion_y2
scoreboard objectives remove motion_z2
scoreboard players set %inatt sts_attacks 0
scoreboard players set %cannon sts_attacks 0
execute if score %phase sts_phase matches 1..2 run scoreboard players set %attack sts_attack 60
execute if score %phase sts_phase matches 3 run scoreboard players set %attack sts_attack 30
effect clear @e[type=zombie_villager,tag=boss_3]