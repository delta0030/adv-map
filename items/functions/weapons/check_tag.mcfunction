execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{data:{class:2b}}}}] unless score @s weapon_cooldown matches 1.. run function items:weapons/ranged/search/search_init
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{data:{class:3b}}}}] unless score @s weapon_cooldown matches 1.. run function items:weapons/magic/search/search_init
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{data:{class:4b}}}}] unless score @s weapon_cooldown matches 1.. run function items:weapons/summoner/search/search_init

# leave this redundancy in, i dont know why and i shouldn't have to wonder why but the whole thing breaks without it
scoreboard players set @s carrot_rc 0