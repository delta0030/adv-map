scoreboard objectives add effect_mult dummy
execute if entity @s[nbt={ActiveEffects:[{Id:19b}]},tag=!poisoned] run function player:stats/dmg/get_base_dmg/status_effect/effects/poison/values
execute if entity @s[nbt={ActiveEffects:[{Id:20b}]},tag=!withered] run function player:stats/dmg/get_base_dmg/status_effect/effects/wither/values
execute store result score @s effect_mult run scoreboard players operation %poison effect_mult += %wither effect_mult

tag @s add status_effect