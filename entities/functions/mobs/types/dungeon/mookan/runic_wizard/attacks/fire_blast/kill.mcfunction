# tests for players
execute as @e[type=armor_stand,tag=fire_bounce] at @s if entity @a[distance=..1] run tag @a[distance=..1] add fire_blast
execute as @a[tag=fire_blast] at @s run function player:stats/dmg/get_base_dmg/dungeon/mookan/runic_wizard/fire_blast

# plays sound and explosion particles
particle minecraft:flame ~ ~ ~ 0.1 0.1 0.1 0.5 100
playsound minecraft:block.fire.extinguish hostile @a ~ ~ ~ 5 2

# kills fire blast
kill @s