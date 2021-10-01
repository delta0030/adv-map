# enable ability to damage boss
tag @e[type=stray,tag=boss_2] add mob
execute as @e[type=stray,tag=boss_2] run data merge entity @s {NoGravity:0b,NoAI:0b}
function entities:bosses/the_lost_soul/main