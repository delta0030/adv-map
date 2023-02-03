tag @s add started
tag @s add actionbar

function player:stats/scores/create_objectives
function player:stats/scores/set_scores

scoreboard players add %global player_id 1
scoreboard players operation @s player_id = %global player_id