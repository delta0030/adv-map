function player:stats/mana/regen/check_motion

execute if score @s in_motion matches 1.. run function player:stats/mana/regen/formula/motion_regen
execute if score @s in_motion matches 0 run function player:stats/mana/regen/formula/still_regen