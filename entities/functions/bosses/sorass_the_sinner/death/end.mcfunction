weather clear
scoreboard objectives remove sts_music
scoreboard objectives remove sts_phase
scoreboard objectives remove boss_3_intro
scoreboard objectives remove sts_attacks
scoreboard objectives remove sts_tp
scoreboard objectives remove sts_calamity
scoreboard objectives remove sts_music
scoreboard objectives remove sts_bias
scoreboard objectives remove sts_cannon
scoreboard objectives remove motion_x1
scoreboard objectives remove motion_x2
scoreboard objectives remove motion_y1
scoreboard objectives remove motion_y2
scoreboard objectives remove motion_z1
scoreboard objectives remove motion_z2
scoreboard objectives remove motion_lvl
bossbar remove minecraft:sorass
stopsound @a music 
execute as @a at @s run playsound minecraft:bosses.boss_3.outro music @s ~ ~ ~
kill @e[type=armor_stand,tag=boss_3_center]
kill @e[type=armor_stand,tag=boss_3_particle]
kill @e[type=armor_stand,tag=boss_3_crystal]
kill @e[type=armor_stand,tag=phase_3_marker]
kill @e[type=armor_stand,tag=calamity]
kill @e[type=area_effect_cloud,tag=sts_fight_center]
kill @e[type=area_effect_cloud,tag=sts_tp_center]
kill @e[type=armor_stand,tag=hellfire_linger]
kill @e[type=armor_stand,tag=sts_cannonProj]
kill @e[type=armor_stand,tag=can_mark]
kill @e[type=armor_stand,tag=orb_proj]
function entities:bosses/sorass_the_sinner/attacks/hellfire/clear