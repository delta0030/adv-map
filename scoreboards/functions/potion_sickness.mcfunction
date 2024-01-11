scoreboard objectives add potion_sickness dummy
scoreboard objectives add potion_cd_max dummy
execute if score @s potion_sickness matches 1.. run scoreboard players remove @s potion_sickness 1

execute if score @s potion_sickness matches 0 run scoreboard players set @s potion_cd_max 0