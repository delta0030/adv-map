scoreboard objectives add ss_timer dummy
scoreboard players add @s ss_timer 1

execute if score @s ss_timer matches 30..49 if predicate items:rng_30 run scoreboard players set @s ss_timer 0
execute if score @s ss_timer matches 50.. run scoreboard players set @s ss_timer 0