effect clear @a[tag=sts_behind] levitation
kill @e[type=armor_stand,tag=sts_behind]
scoreboard objectives remove sts_behind
scoreboard objectives remove ptimer
scoreboard players set %inatt sts_attacks 0
scoreboard players set %look sts_attacks 0
execute if score %phase sts_phase matches 1..2 run scoreboard players set %attack sts_attacks 30
execute if score %phase sts_phase matches 3 run scoreboard players set %attack sts_attacks 10
tag @a[tag=sts_behind] remove sts_behind
