execute if score @s gear_menu matches 8 run scoreboard players set @s gear_menu 25
execute if score @s gear_menu matches 16 run scoreboard players set @s gear_menu 25
execute if score @s gear_menu matches 24 run scoreboard players set @s gear_menu 25

execute unless score @s gear_menu matches 8 unless score @s gear_menu matches 16 unless score @s gear_menu matches 24..25 run scoreboard players add @s gear_menu 1