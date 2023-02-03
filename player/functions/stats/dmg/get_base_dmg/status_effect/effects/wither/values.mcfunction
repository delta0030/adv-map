scoreboard objectives add wither_time dummy
execute store result score %wither effect_mult run data get entity @s ActiveEffects[{Id:20b}].Amplifier 1
execute store result score @s wither_time run data get entity @s ActiveEffects[{Id:20b}].Duration 1

tag @s add withered