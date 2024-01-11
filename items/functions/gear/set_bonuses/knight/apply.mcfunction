execute if score @s hp_stop matches 0 run scoreboard players operation @s health_bonus = @s player_max_hp
execute if score @s hp_stop matches 0 run scoreboard players operation @s health_bonus /= 10 CONSTANTS
execute if score @s hp_stop matches 0 run scoreboard players operation @s player_max_hp += @s health_bonus
execute unless entity @s[nbt={ActiveEffects:[{Id:2b}]}] if score @s hp_stop matches 0 run scoreboard players set @s rt 0
scoreboard players set @s hp_stop 1

effect give @s slowness 1 0 true

execute if entity @s[tag=knight_bonus] run schedule function items:gear/set_bonuses/knight/apply 1t