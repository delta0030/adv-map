kill @s

# remove from dead player
tag @s remove ice_damage
scoreboard players set @s singwoodsdun 0
scoreboard players set @s mookandun 0
scoreboard players set @s anohdun 0
scoreboard players set @s coldbluffdun 0

scoreboard objectives add var_hp dummy
scoreboard objectives add rt dummy
scoreboard players set 2 CONSTANTS 2
scoreboard players operation @s var_hp = @s player_max_hp
scoreboard players operation @s var_hp /= 2 CONSTANTS
scoreboard players operation @s player_hp = @s var_hp

scoreboard players set @s rt 0

#scoreboard objectives remove var_hp