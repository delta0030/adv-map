scoreboard objectives add swmb1 dummy
scoreboard players set %base swmb1 240
scoreboard players set %atkseq swmb1 240
scoreboard objectives add FireTime dummy
team add swmb1
team add entity
team join entity @e[type=vindicator,tag=swmb1]
team modify entity nametagVisibility never

bossbar add guardian {"text":"Guardian"}
bossbar set minecraft:guardian name {"text":"Guardian","color":"red"}
bossbar set minecraft:guardian color red
bossbar set minecraft:guardian visible true
bossbar set minecraft:guardian players @a
bossbar set minecraft:guardian max 100
function entities:mobs/types/dungeon/singwoods/guardian/summon
effect give @e[type=vindicator,tag=swmb1] fire_resistance 5 1 true
function entities:mobs/types/dungeon/singwoods/guardian/brain
function entities:mobs/types/dungeon/singwoods/guardian/rng/init/init
function entities:mobs/types/dungeon/singwoods/guardian/rng2/init/init
scoreboard players set out math3 0
setblock -150 56 -33 air replace

playsound minecraft:miniboss.singwoods.guardian master @s