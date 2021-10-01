scoreboard objectives add math dummy
scoreboard players set in math 0
scoreboard players set in1 math 10
function rng:range

execute if entity @s[tag=phase1] run function entities:bosses/the_lost_soul/attacks/phases/phase1
execute if entity @s[tag=phase2] run function entities:bosses/the_lost_soul/attacks/phases/phase2
execute if entity @s[tag=phase2.5] run function entities:bosses/the_lost_soul/attacks/phases/phase3
execute if entity @s[tag=phase3] run function entities:bosses/the_lost_soul/attacks/phases/phase3
execute if entity @s[tag=phase4] run function entities:bosses/the_lost_soul/attacks/phases/phase4