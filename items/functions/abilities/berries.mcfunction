execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{frost_berry:1b}}}] run tag @s add frostImm1
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{frost_berry:1b}}},tag=!frostImm] run clear @s minecraft:carrot_on_a_stick{frost_berry:1b} 1
execute if entity @s[tag=frostImm1] run tag @s add frostImm
execute if entity @s[tag=frostImm] run tag @s remove frostImm1

execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{fire_berry:1b}}}] run tag @s add fireImm1
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{fire_berry:1b}}},tag=!fireImm] run clear @s minecraft:carrot_on_a_stick{fire_berry:1b} 1
execute if entity @s[tag=fireImm1] run tag @s add fireImm
execute if entity @s[tag=fireImm] run tag @s remove fireImm1

scoreboard players set @a carrot_rc 0