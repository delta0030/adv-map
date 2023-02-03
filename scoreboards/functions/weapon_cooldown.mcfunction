scoreboard objectives add weapon_cooldown dummy
scoreboard objectives add weapon_cd_max dummy
execute if score @s weapon_cooldown matches 1.. run scoreboard players remove @s weapon_cooldown 1

execute if score @s weapon_cooldown matches 0 run scoreboard players set @s weapon_cd_max 0