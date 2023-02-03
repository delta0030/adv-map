execute if score @s gear_menu matches 1 run scoreboard players set @s gear_menu 0
execute if score @s gear_menu matches 9 run scoreboard players set @s gear_menu 0
execute if score @s gear_menu matches 17 run scoreboard players set @s gear_menu 0

execute unless score @s gear_menu matches 1 unless score @s gear_menu matches 9 unless score @s gear_menu matches 17 unless score @s gear_menu matches 25 run scoreboard players remove @s gear_menu 1