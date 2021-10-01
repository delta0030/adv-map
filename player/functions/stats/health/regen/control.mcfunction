scoreboard objectives add rt dummy
execute unless score @s rt matches 1200.. run function player:stats/health/regen/check_motion
execute unless score @s player_hp = @s player_max_hp run function player:stats/health/regen/calc_regen
execute unless score @s rt matches 1200.. run function player:stats/health/regen/time/rt