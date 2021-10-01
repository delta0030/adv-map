execute at @s[tag=!jump_used,nbt={OnGround:0b}] if block ~ ~-0.2 ~ #minecraft:nonsolid if score @s sneak matches 1.. run function player:movement/double_jump/jump_init
execute if entity @s[nbt={ActiveEffects:[{Id:25b,Amplifier:15b}]}] run function player:movement/double_jump/timer

execute if entity @s[tag=jump_used] run function player:movement/double_jump/clear_tag