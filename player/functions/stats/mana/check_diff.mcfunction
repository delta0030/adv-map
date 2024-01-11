scoreboard objectives add xpl_current dummy
scoreboard objectives add xpp_current dummy
scoreboard objectives add xpl_desired2 dummy

xp set @s 100 levels
xp set @s 741 points
scoreboard players set 741 CONSTANTS 741
scoreboard players set 1000 CONSTANTS 1000
execute store result score @s xpp_desired run scoreboard players operation @s mana_perc *= 741 CONSTANTS
scoreboard players operation @s xpp_desired /= 1000 CONSTANTS
scoreboard players operation @s xpp_desired -= 741 CONSTANTS

execute if score @s xpp_desired matches ..-1 run function player:stats/mana/update_xp/points/remove

execute store result score @s xpl_current run xp query @s levels

scoreboard players operation @s xpl_desired2 = @s xpl_desired
scoreboard players operation @s xpl_desired2 -= @s xpl_current

execute if score @s xpl_desired2 matches ..-1 run function player:stats/mana/update_xp/levels/remove
execute if score @s xpl_desired2 matches 1.. run function player:stats/mana/update_xp/levels/add