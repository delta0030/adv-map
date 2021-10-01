particle dust 1 0 0 1 ~ ~ ~ 0 0 0 0 1 force

scoreboard players remove %range raycast 1
execute if score %reflect raycast matches 1.. unless block ^ ^ ^0.25 air run function entities:bosses/the_lost_soul/attacks/triple_shot/indicator/reflect
execute if score %range raycast matches 1.. positioned ^ ^ ^0.25 if block ~ ~ ~ air run function entities:bosses/the_lost_soul/attacks/triple_shot/indicator/raycast