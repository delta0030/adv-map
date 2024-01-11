# hfl - hellfire linger
scoreboard objectives add sts_hfl_timer dummy

function entities:bosses/sorass_the_sinner/attacks/hellfire/rain/bolts/linger/summon
function entities:bosses/sorass_the_sinner/attacks/hellfire/rain/bolts/linger/test
execute as @e[type=armor_stand,tag=!motion,tag=hellfire_linger] at @s run function entities:bosses/sorass_the_sinner/attacks/hellfire/rain/bolts/linger/new
