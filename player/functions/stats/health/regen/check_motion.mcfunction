scoreboard objectives add in_motion dummy
scoreboard players set @s in_motion 0

scoreboard objectives add X dummy
scoreboard objectives add Y dummy
scoreboard objectives add Z dummy
scoreboard objectives add X2 dummy
scoreboard objectives add Y2 dummy
scoreboard objectives add Z2 dummy

scoreboard objectives add X_old dummy
scoreboard objectives add Y_old dummy
scoreboard objectives add Z_old dummy

scoreboard objectives add X_diff dummy
scoreboard objectives add Y_diff dummy
scoreboard objectives add Z_diff dummy

scoreboard players operation @s X_old = @s X2
scoreboard players operation @s Y_old = @s Y2
scoreboard players operation @s Z_old = @s Z2

execute store result score @s X run data get entity @s Pos[0] 10000
execute store result score @s Y run data get entity @s Pos[1] 10000
execute store result score @s Z run data get entity @s Pos[2] 10000

scoreboard players operation @s X2 = @s X
scoreboard players operation @s Y2 = @s Y
scoreboard players operation @s Z2 = @s Z

execute store result score @s X_diff run scoreboard players operation @s X -= @s X_old
execute store result score @s Y_diff run scoreboard players operation @s Y -= @s Y_old
execute store result score @s Z_diff run scoreboard players operation @s Z -= @s Z_old

execute unless score @s X_diff matches 0 run scoreboard players add @s in_motion 1
execute unless score @s Y_diff matches 0 run scoreboard players add @s in_motion 1
execute unless score @s Z_diff matches 0 run scoreboard players add @s in_motion 1