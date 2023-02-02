scoreboard objectives add FireTime dummy

function entities:mobs/types/dungeon/singwoods/guardian/fire_fountain/as_summon
function entities:mobs/types/dungeon/singwoods/guardian/fire_fountain/test
execute as @e[type=armor_stand,tag=!motion,tag=swmb1_fire,limit=1] run function entities:mobs/types/dungeon/singwoods/guardian/fire_fountain/new
function entities:mobs/types/dungeon/singwoods/guardian/fire_fountain/reset
execute as @e[type=vindicator,tag=swmb1] at @s run playsound minecraft:entity.blaze.shoot hostile @a[distance=..35] ~ ~ ~ 1 1
team modify swmb1 color red

scoreboard players add %time FireTime 1

execute unless score %time FireTime matches 14.. run tag @e[type=vindicator,tag=swmb1] add fire_init
execute if score %time FireTime matches 14.. run tag @e[type=vindicator,tag=swmb1] remove fire_init

execute unless score %time FireTime matches 14.. run effect give @e[type=vindicator,tag=swmb1] slowness 10000 150 true
execute if score %time FireTime matches 14.. run effect clear @e[type=vindicator,tag=swmb1]
#execute if score %time FireTime matches 14.. run team remove swmb1

#execute unless score %time FireTime matches 14.. run team add swmb1
#execute unless score %time FireTime matches 14.. run team join swmb1 @e[type=vindicator,tag=swmb1]
execute unless score %time FireTime matches 14.. run team modify swmb1 color red
execute unless score %time FireTime matches 14.. run effect give @e[type=vindicator,tag=swmb1] glowing 100000 1 true

#execute if entity @e[type=vindicator,tag=swmb1,tag=!fire_init] run team remove swmb1

execute unless score %time FireTime matches 14.. run schedule function entities:mobs/types/dungeon/singwoods/guardian/fire_fountain/init 10t

execute if score %time FireTime matches 14.. run scoreboard objectives remove FireTime
execute if score %time FireTime matches 14.. run team modify swmb1 color white
execute if score %time FireTime matches 14.. run kill @e[type=armor_stand,tag=swmb1_fire]