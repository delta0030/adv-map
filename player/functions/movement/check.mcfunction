execute as @a[nbt={SelectedItem:{id:"minecraft:lead",tag:{soul_scarf:1b}}}] run tag @s add dash_unlocked
execute as @a[nbt=!{SelectedItem:{id:"minecraft:lead",tag:{soul_scarf:1b}}}] run tag @s remove dash_unlocked

execute as @a[tag=!dash_unlocked,tag=!start_cooldown,tag=!cooldown_active] run function player:movement/dash/reset

execute as @a[tag=double_jump] run function player:movement/double_jump/control

execute as @a[tag=dash_unlocked] run function player:movement/dash/control
execute as @a[tag=start_cooldown] run function player:movement/dash/control