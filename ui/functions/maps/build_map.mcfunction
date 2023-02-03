data modify block ~ 0 ~ Text1 set value '[{"nbt":"Text1","block":"~ 0 ~","interpret":true},{"nbt":"temp[0]","storage":"map","interpret":true}]'
data remove storage map temp[0]

scoreboard objectives add list_len dummy
execute store result score @s list_len run data get storage map temp
execute if score @s list_len matches 1.. run function ui:maps/build_map
scoreboard objectives remove list_len