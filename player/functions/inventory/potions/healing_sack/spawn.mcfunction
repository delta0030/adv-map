summon minecraft:chest_minecart ~ ~1 ~ {Tags:["interface","unused","invisible_minecart"],Silent:1b,CustomDisplayTile:1b,DisplayState:{Name:"minecraft:air"}}

## spawn a marker with a unique id value
execute unless entity @e[type=marker,tag=ui,distance=..0.5] run summon marker 0 0 0 {Tags:["ui","unused"]}
scoreboard players add .global ui.id 1
scoreboard players operation @e[tag=unused] ui.id = .global ui.id
scoreboard players operation @s ui.id = .global ui.id

tag @e remove unused