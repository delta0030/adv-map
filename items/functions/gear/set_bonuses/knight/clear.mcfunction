execute as @a[scores={hp_stop=1}] if score @s hp_stop matches 1 run scoreboard players operation @s player_max_hp -= @s health_bonus
execute as @a[tag=!knight_bonus] run scoreboard players set @s hp_stop 0