scoreboard objectives add pos dummy

execute store result score %x1 pos run data get entity @e[tag=corner_1,limit=1] Pos[0] 100
execute store result score %x2 pos run data get entity @e[tag=corner_2,limit=1] Pos[0] 100
execute store result score %px pos run data get entity @s Pos[0] 100
execute store result score %z1 pos run data get entity @e[tag=corner_1,limit=1] Pos[2] 100
execute store result score %z2 pos run data get entity @e[tag=corner_2,limit=1] Pos[2] 100
execute store result score %pz pos run data get entity @s Pos[2] 100
scoreboard players set 1000 CONSTANTS 1000

# grabs player x pos as % of total x dist
scoreboard players operation %x2 pos -= %x1 pos
scoreboard players operation %px pos -= %x1 pos
scoreboard players operation %px pos *= 1000 CONSTANTS
scoreboard players operation %px pos /= %x2 pos

# grabs player x pos as % of total x dist
scoreboard players operation %z2 pos -= %z1 pos
scoreboard players operation %pz pos -= %z1 pos
scoreboard players operation %pz pos *= 1000 CONSTANTS
scoreboard players operation %pz pos /= %z2 pos

function ui:maps/locate_player/assign_unicode/init

scoreboard objectives remove pos