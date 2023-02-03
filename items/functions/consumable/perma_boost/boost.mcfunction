scoreboard objectives add statInc dummy
scoreboard players set %health statInc 0

execute as @s[nbt={SelectedItem:{tag:{mysterious_sack:1b}}},tag=!mysSack] run scoreboard players set %health statInc 20

execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{mysterious_sack:1b}}}] run tag @s add mysSack1
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{mysterious_sack:1b}}},tag=!mysSack] run clear @s minecraft:carrot_on_a_stick{mysterious_sack:1b} 1
execute if entity @s[tag=mysSack1] run tag @s add mysSack
execute if entity @s[tag=mysSack] run tag @s remove mysSack1

scoreboard players operation @s player_max_hp += %health statInc

scoreboard players set @s carrot_rc 0
scoreboard objectives remove statInc