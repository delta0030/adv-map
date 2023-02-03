scoreboard objectives add poison_time dummy
execute store result score %poison effect_mult run data get entity @s ActiveEffects[{Id:19b}].Amplifier 1
execute store result score @s poison_time run data get entity @s ActiveEffects[{Id:19b}].Duration 1
tag @s add poisoned