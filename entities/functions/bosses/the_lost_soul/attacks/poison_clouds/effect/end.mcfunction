kill @e[type=area_effect_cloud,tag=particle]
scoreboard objectives remove timer
tag @e[type=stray,tag=boss_2] remove poison_active

# clear clouds
schedule function entities:bosses/the_lost_soul/attacks/poison_clouds/clear 10t