# dash mechanic
execute as @a[nbt={SelectedItem:{id:"minecraft:lead",tag:{soul_scarf:1b}}},tag=!start_cooldown,tag=!dash_test] at @s run function player:movement/dash/init
execute as @a[nbt={SelectedItem:{id:"minecraft:lead",tag:{soul_scarf:1b}}}] as @e[type=area_effect_cloud,tag=player_dash_cloud,sort=nearest,limit=1] at @s run function player:movement/dash/main
execute as @a[tag=start_cooldown] run function player:movement/dash/cooldown/cooldown