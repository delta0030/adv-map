execute unless score %timer sts_behind matches -1 run scoreboard players add %timer sts_behind 1

execute as @a[tag=sts_behind,limit=1] at @s run tp @e[type=armor_stand,tag=sts_behind] ^ ^ ^-2
execute as @a[tag=sts_behind,limit=1] store result score %ypos sts_behind run data get entity @s Pos[1] 100
execute store result entity @e[type=armor_stand,tag=sts_behind,limit=1] Pos[1] double 0.01 run scoreboard players get %ypos sts_behind
execute as @e[type=armor_stand,tag=sts_behind] at @s unless block ~ ~ ~ air run tp @s ~ ~1 ~

execute if score %phase sts_phase matches 1..2 if score %timer sts_behind matches 10.. run function entities:bosses/sorass_the_sinner/attacks/look/indic/init
execute if score %phase sts_phase matches 3 if score %timer sts_behind matches 5.. run function entities:bosses/sorass_the_sinner/attacks/look/indic/init

execute if entity @e[type=armor_stand,tag=sts_behind] run schedule function entities:bosses/sorass_the_sinner/attacks/look/brain 1t