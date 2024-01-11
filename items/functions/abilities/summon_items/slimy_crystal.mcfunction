execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{slimyCrystal:1b}}}] run execute unless entity @e[type=slime,tag=boss_1] run function entities:bosses/globulous/init
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{slimyCrystal:1b}}}] run clear @s minecraft:carrot_on_a_stick{slimyCrystal:1b} 1

scoreboard players set @s carrot_rc 0