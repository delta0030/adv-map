execute if entity @s[nbt={SelectedItem:{tag:{fire_berry:1b}}}] if score @s carrot_rc matches 1.. run function items:abilities/berries
execute if entity @s[nbt={SelectedItem:{tag:{frost_berry:1b}}}] if score @s carrot_rc matches 1.. run function items:abilities/berries
execute if entity @s[nbt={SelectedItem:{tag:{healing_potion:1b}}}] if score @s carrot_rc matches 1.. unless score @s potion_sickness matches 1.. unless score @s player_hp = @s player_max_hp run function items:consumable/potions/healing/heal
execute if entity @s[nbt={SelectedItem:{tag:{mysterious_sack:1b}}}] if score @s carrot_rc matches 1.. run function items:consumable/perma_boost/boost