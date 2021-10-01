scoreboard objectives add jump_tag dummy
scoreboard players add @s jump_tag 1
execute at @s if entity @s[nbt={OnGround:1b}] unless block ~ ~-0.01 ~ #minecraft:nonsolid run tag @s remove jump_used