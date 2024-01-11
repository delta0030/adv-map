scoreboard players operation @s potion_cd_max = @s potion_sickness
execute store result score @s pot_cooldown_disp run scoreboard players operation @s potion_cd_max /= 20 CONSTANTS

###
###     Add in the item subtraction when a potion is used to the item drive
###


#execute as @s[nbt={SelectedItem:{tag:{lesser_healing_potion:1b}}},scores={potion_sickness=1..}] run item modify entity @s weapon.mainhand items:potions/lore/lesser/lesser_healing_potion
#execute as @s[nbt={SelectedItem:{tag:{lesser_healing_potion:1b}}},scores={potion_sickness=0}] run item modify entity @s weapon.mainhand items:potions/lore/lesser/done_lesser_healing_potion

#execute as @s[nbt={SelectedItem:{tag:{healing_potion:1b}}},scores={potion_sickness=1..}] run item modify entity @s weapon.mainhand items:potions/lore/normal/healing_potion
#execute as @s[nbt={SelectedItem:{tag:{healing_potion:1b}}},scores={potion_sickness=0}] run item modify entity @s weapon.mainhand items:potions/lore/normal/done_healing_potion

#execute as @s[nbt={SelectedItem:{tag:{greater_healing_potion:1b}}},scores={potion_sickness=1..}] run item modify entity @s weapon.mainhand items:potions/lore/greater/greater_healing_potion
#execute as @s[nbt={SelectedItem:{tag:{greater_healing_potion:1b}}},scores={potion_sickness=0}] run item modify entity @s weapon.mainhand items:potions/lore/greater/done_greater_healing_potion

#execute as @s[nbt={SelectedItem:{tag:{mystic_healing_potion:1b}}},scores={potion_sickness=1..}] run item modify entity @s weapon.mainhand items:potions/lore/mystic/mystic_healing_potion
#execute as @s[nbt={SelectedItem:{tag:{mystic_healing_potion:1b}}},scores={potion_sickness=0}] run item modify entity @s weapon.mainhand items:potions/lore/mystic/done_mystic_healing_potion

#execute as @s[nbt={SelectedItem:{tag:{pure_healing_potion:1b}}},scores={potion_sickness=1..}] run item modify entity @s weapon.mainhand items:potions/lore/pure/pure_healing_potion
#execute as @s[nbt={SelectedItem:{tag:{pure_healing_potion:1b}}},scores={potion_sickness=0}] run item modify entity @s weapon.mainhand items:potions/lore/pure/done_pure_healing_potion

# any lesser in the hotbar so the player doesnt have to hold the items for the lore to update
execute as @s[nbt={Inventory:[{Slot:0b,tag:{lesser_healing_potion:1b}}]},scores={potion_sickness=1..}] run item modify entity @s hotbar.0 items:potions/lore/lesser/lesser_healing_potion
execute as @s[nbt={Inventory:[{Slot:0b,tag:{lesser_healing_potion:1b}}]},scores={potion_sickness=0}] run item modify entity @s hotbar.0 items:potions/lore/lesser/done_lesser_healing_potion
execute as @s[nbt={Inventory:[{Slot:1b,tag:{lesser_healing_potion:1b}}]},scores={potion_sickness=1..}] run item modify entity @s hotbar.1 items:potions/lore/lesser/lesser_healing_potion
execute as @s[nbt={Inventory:[{Slot:1b,tag:{lesser_healing_potion:1b}}]},scores={potion_sickness=0}] run item modify entity @s hotbar.1 items:potions/lore/lesser/done_lesser_healing_potion
execute as @s[nbt={Inventory:[{Slot:2b,tag:{lesser_healing_potion:1b}}]},scores={potion_sickness=1..}] run item modify entity @s hotbar.2 items:potions/lore/lesser/lesser_healing_potion
execute as @s[nbt={Inventory:[{Slot:2b,tag:{lesser_healing_potion:1b}}]},scores={potion_sickness=0}] run item modify entity @s hotbar.2 items:potions/lore/lesser/done_lesser_healing_potion
execute as @s[nbt={Inventory:[{Slot:3b,tag:{lesser_healing_potion:1b}}]},scores={potion_sickness=1..}] run item modify entity @s hotbar.3 items:potions/lore/lesser/lesser_healing_potion
execute as @s[nbt={Inventory:[{Slot:3b,tag:{lesser_healing_potion:1b}}]},scores={potion_sickness=0}] run item modify entity @s hotbar.3 items:potions/lore/lesser/done_lesser_healing_potion
execute as @s[nbt={Inventory:[{Slot:4b,tag:{lesser_healing_potion:1b}}]},scores={potion_sickness=1..}] run item modify entity @s hotbar.4 items:potions/lore/lesser/lesser_healing_potion
execute as @s[nbt={Inventory:[{Slot:4b,tag:{lesser_healing_potion:1b}}]},scores={potion_sickness=0}] run item modify entity @s hotbar.4 items:potions/lore/lesser/done_lesser_healing_potion
execute as @s[nbt={Inventory:[{Slot:5b,tag:{lesser_healing_potion:1b}}]},scores={potion_sickness=1..}] run item modify entity @s hotbar.5 items:potions/lore/lesser/lesser_healing_potion
execute as @s[nbt={Inventory:[{Slot:5b,tag:{lesser_healing_potion:1b}}]},scores={potion_sickness=0}] run item modify entity @s hotbar.5 items:potions/lore/lesser/done_lesser_healing_potion
execute as @s[nbt={Inventory:[{Slot:6b,tag:{lesser_healing_potion:1b}}]},scores={potion_sickness=1..}] run item modify entity @s hotbar.6 items:potions/lore/lesser/lesser_healing_potion
execute as @s[nbt={Inventory:[{Slot:6b,tag:{lesser_healing_potion:1b}}]},scores={potion_sickness=0}] run item modify entity @s hotbar.6 items:potions/lore/lesser/done_lesser_healing_potion
execute as @s[nbt={Inventory:[{Slot:7b,tag:{lesser_healing_potion:1b}}]},scores={potion_sickness=1..}] run item modify entity @s hotbar.7 items:potions/lore/lesser/lesser_healing_potion
execute as @s[nbt={Inventory:[{Slot:7b,tag:{lesser_healing_potion:1b}}]},scores={potion_sickness=0}] run item modify entity @s hotbar.7 items:potions/lore/lesser/done_lesser_healing_potion
execute as @s[nbt={Inventory:[{Slot:8b,tag:{lesser_healing_potion:1b}}]},scores={potion_sickness=1..}] run item modify entity @s hotbar.8 items:potions/lore/lesser/lesser_healing_potion
execute as @s[nbt={Inventory:[{Slot:8b,tag:{lesser_healing_potion:1b}}]},scores={potion_sickness=0}] run item modify entity @s hotbar.8 items:potions/lore/lesser/done_lesser_healing_potion

# any normal in the hotbar
execute as @s[nbt={Inventory:[{Slot:0b,tag:{healing_potion:1b}}]},scores={potion_sickness=1..}] run item modify entity @s hotbar.0 items:potions/lore/normal/healing_potion
execute as @s[nbt={Inventory:[{Slot:0b,tag:{healing_potion:1b}}]},scores={potion_sickness=0}] run item modify entity @s hotbar.0 items:potions/lore/normal/done_healing_potion
execute as @s[nbt={Inventory:[{Slot:1b,tag:{healing_potion:1b}}]},scores={potion_sickness=1..}] run item modify entity @s hotbar.1 items:potions/lore/normal/healing_potion
execute as @s[nbt={Inventory:[{Slot:1b,tag:{healing_potion:1b}}]},scores={potion_sickness=0}] run item modify entity @s hotbar.1 items:potions/lore/normal/done_healing_potion
execute as @s[nbt={Inventory:[{Slot:2b,tag:{healing_potion:1b}}]},scores={potion_sickness=1..}] run item modify entity @s hotbar.2 items:potions/lore/normal/healing_potion
execute as @s[nbt={Inventory:[{Slot:2b,tag:{healing_potion:1b}}]},scores={potion_sickness=0}] run item modify entity @s hotbar.2 items:potions/lore/normal/done_healing_potion
execute as @s[nbt={Inventory:[{Slot:3b,tag:{healing_potion:1b}}]},scores={potion_sickness=1..}] run item modify entity @s hotbar.3 items:potions/lore/normal/healing_potion
execute as @s[nbt={Inventory:[{Slot:3b,tag:{healing_potion:1b}}]},scores={potion_sickness=0}] run item modify entity @s hotbar.3 items:potions/lore/normal/done_healing_potion
execute as @s[nbt={Inventory:[{Slot:4b,tag:{healing_potion:1b}}]},scores={potion_sickness=1..}] run item modify entity @s hotbar.4 items:potions/lore/normal/healing_potion
execute as @s[nbt={Inventory:[{Slot:4b,tag:{healing_potion:1b}}]},scores={potion_sickness=0}] run item modify entity @s hotbar.4 items:potions/lore/normal/done_healing_potion
execute as @s[nbt={Inventory:[{Slot:5b,tag:{healing_potion:1b}}]},scores={potion_sickness=1..}] run item modify entity @s hotbar.5 items:potions/lore/normal/healing_potion
execute as @s[nbt={Inventory:[{Slot:5b,tag:{healing_potion:1b}}]},scores={potion_sickness=0}] run item modify entity @s hotbar.5 items:potions/lore/normal/done_healing_potion
execute as @s[nbt={Inventory:[{Slot:6b,tag:{healing_potion:1b}}]},scores={potion_sickness=1..}] run item modify entity @s hotbar.6 items:potions/lore/normal/healing_potion
execute as @s[nbt={Inventory:[{Slot:6b,tag:{healing_potion:1b}}]},scores={potion_sickness=0}] run item modify entity @s hotbar.6 items:potions/lore/normal/done_healing_potion
execute as @s[nbt={Inventory:[{Slot:7b,tag:{healing_potion:1b}}]},scores={potion_sickness=1..}] run item modify entity @s hotbar.7 items:potions/lore/normal/healing_potion
execute as @s[nbt={Inventory:[{Slot:7b,tag:{healing_potion:1b}}]},scores={potion_sickness=0}] run item modify entity @s hotbar.7 items:potions/lore/normal/done_healing_potion
execute as @s[nbt={Inventory:[{Slot:8b,tag:{healing_potion:1b}}]},scores={potion_sickness=1..}] run item modify entity @s hotbar.8 items:potions/lore/normal/healing_potion
execute as @s[nbt={Inventory:[{Slot:8b,tag:{healing_potion:1b}}]},scores={potion_sickness=0}] run item modify entity @s hotbar.8 items:potions/lore/normal/done_healing_potion

# any greater in the hotbar
execute as @s[nbt={Inventory:[{Slot:0b,tag:{greater_healing_potion:1b}}]},scores={potion_sickness=1..}] run item modify entity @s hotbar.0 items:potions/lore/greater/greater_healing_potion
execute as @s[nbt={Inventory:[{Slot:0b,tag:{greater_healing_potion:1b}}]},scores={potion_sickness=0}] run item modify entity @s hotbar.0 items:potions/lore/greater/done_greater_healing_potion
execute as @s[nbt={Inventory:[{Slot:1b,tag:{greater_healing_potion:1b}}]},scores={potion_sickness=1..}] run item modify entity @s hotbar.1 items:potions/lore/greater/greater_healing_potion
execute as @s[nbt={Inventory:[{Slot:1b,tag:{greater_healing_potion:1b}}]},scores={potion_sickness=0}] run item modify entity @s hotbar.1 items:potions/lore/greater/done_greater_healing_potion
execute as @s[nbt={Inventory:[{Slot:2b,tag:{greater_healing_potion:1b}}]},scores={potion_sickness=1..}] run item modify entity @s hotbar.2 items:potions/lore/greater/greater_healing_potion
execute as @s[nbt={Inventory:[{Slot:2b,tag:{greater_healing_potion:1b}}]},scores={potion_sickness=0}] run item modify entity @s hotbar.2 items:potions/lore/greater/done_greater_healing_potion
execute as @s[nbt={Inventory:[{Slot:3b,tag:{greater_healing_potion:1b}}]},scores={potion_sickness=1..}] run item modify entity @s hotbar.3 items:potions/lore/greater/greater_healing_potion
execute as @s[nbt={Inventory:[{Slot:3b,tag:{greater_healing_potion:1b}}]},scores={potion_sickness=0}] run item modify entity @s hotbar.3 items:potions/lore/greater/done_greater_healing_potion
execute as @s[nbt={Inventory:[{Slot:4b,tag:{greater_healing_potion:1b}}]},scores={potion_sickness=1..}] run item modify entity @s hotbar.4 items:potions/lore/greater/greater_healing_potion
execute as @s[nbt={Inventory:[{Slot:4b,tag:{greater_healing_potion:1b}}]},scores={potion_sickness=0}] run item modify entity @s hotbar.4 items:potions/lore/greater/done_greater_healing_potion
execute as @s[nbt={Inventory:[{Slot:5b,tag:{greater_healing_potion:1b}}]},scores={potion_sickness=1..}] run item modify entity @s hotbar.5 items:potions/lore/greater/greater_healing_potion
execute as @s[nbt={Inventory:[{Slot:5b,tag:{greater_healing_potion:1b}}]},scores={potion_sickness=0}] run item modify entity @s hotbar.5 items:potions/lore/greater/done_greater_healing_potion
execute as @s[nbt={Inventory:[{Slot:6b,tag:{greater_healing_potion:1b}}]},scores={potion_sickness=1..}] run item modify entity @s hotbar.6 items:potions/lore/greater/greater_healing_potion
execute as @s[nbt={Inventory:[{Slot:6b,tag:{greater_healing_potion:1b}}]},scores={potion_sickness=0}] run item modify entity @s hotbar.6 items:potions/lore/greater/done_greater_healing_potion
execute as @s[nbt={Inventory:[{Slot:7b,tag:{greater_healing_potion:1b}}]},scores={potion_sickness=1..}] run item modify entity @s hotbar.7 items:potions/lore/greater/greater_healing_potion
execute as @s[nbt={Inventory:[{Slot:7b,tag:{greater_healing_potion:1b}}]},scores={potion_sickness=0}] run item modify entity @s hotbar.7 items:potions/lore/greater/done_greater_healing_potion
execute as @s[nbt={Inventory:[{Slot:8b,tag:{greater_healing_potion:1b}}]},scores={potion_sickness=1..}] run item modify entity @s hotbar.8 items:potions/lore/greater/greater_healing_potion
execute as @s[nbt={Inventory:[{Slot:8b,tag:{greater_healing_potion:1b}}]},scores={potion_sickness=0}] run item modify entity @s hotbar.8 items:potions/lore/greater/done_greater_healing_potion

# any mystic in the hotbar
execute as @s[nbt={Inventory:[{Slot:0b,tag:{mystic_healing_potion:1b}}]},scores={potion_sickness=1..}] run item modify entity @s hotbar.0 items:potions/lore/mystic/mystic_healing_potion
execute as @s[nbt={Inventory:[{Slot:0b,tag:{mystic_healing_potion:1b}}]},scores={potion_sickness=0}] run item modify entity @s hotbar.0 items:potions/lore/mystic/done_mystic_healing_potion
execute as @s[nbt={Inventory:[{Slot:1b,tag:{mystic_healing_potion:1b}}]},scores={potion_sickness=1..}] run item modify entity @s hotbar.1 items:potions/lore/mystic/mystic_healing_potion
execute as @s[nbt={Inventory:[{Slot:1b,tag:{mystic_healing_potion:1b}}]},scores={potion_sickness=0}] run item modify entity @s hotbar.1 items:potions/lore/mystic/done_mystic_healing_potion
execute as @s[nbt={Inventory:[{Slot:2b,tag:{mystic_healing_potion:1b}}]},scores={potion_sickness=1..}] run item modify entity @s hotbar.2 items:potions/lore/mystic/mystic_healing_potion
execute as @s[nbt={Inventory:[{Slot:2b,tag:{mystic_healing_potion:1b}}]},scores={potion_sickness=0}] run item modify entity @s hotbar.2 items:potions/lore/mystic/done_mystic_healing_potion
execute as @s[nbt={Inventory:[{Slot:3b,tag:{mystic_healing_potion:1b}}]},scores={potion_sickness=1..}] run item modify entity @s hotbar.3 items:potions/lore/mystic/mystic_healing_potion
execute as @s[nbt={Inventory:[{Slot:3b,tag:{mystic_healing_potion:1b}}]},scores={potion_sickness=0}] run item modify entity @s hotbar.3 items:potions/lore/mystic/done_mystic_healing_potion
execute as @s[nbt={Inventory:[{Slot:4b,tag:{mystic_healing_potion:1b}}]},scores={potion_sickness=1..}] run item modify entity @s hotbar.4 items:potions/lore/mystic/mystic_healing_potion
execute as @s[nbt={Inventory:[{Slot:4b,tag:{mystic_healing_potion:1b}}]},scores={potion_sickness=0}] run item modify entity @s hotbar.4 items:potions/lore/mystic/done_mystic_healing_potion
execute as @s[nbt={Inventory:[{Slot:5b,tag:{mystic_healing_potion:1b}}]},scores={potion_sickness=1..}] run item modify entity @s hotbar.5 items:potions/lore/mystic/mystic_healing_potion
execute as @s[nbt={Inventory:[{Slot:5b,tag:{mystic_healing_potion:1b}}]},scores={potion_sickness=0}] run item modify entity @s hotbar.5 items:potions/lore/mystic/done_mystic_healing_potion
execute as @s[nbt={Inventory:[{Slot:6b,tag:{mystic_healing_potion:1b}}]},scores={potion_sickness=1..}] run item modify entity @s hotbar.6 items:potions/lore/mystic/mystic_healing_potion
execute as @s[nbt={Inventory:[{Slot:6b,tag:{mystic_healing_potion:1b}}]},scores={potion_sickness=0}] run item modify entity @s hotbar.6 items:potions/lore/mystic/done_mystic_healing_potion
execute as @s[nbt={Inventory:[{Slot:7b,tag:{mystic_healing_potion:1b}}]},scores={potion_sickness=1..}] run item modify entity @s hotbar.7 items:potions/lore/mystic/mystic_healing_potion
execute as @s[nbt={Inventory:[{Slot:7b,tag:{mystic_healing_potion:1b}}]},scores={potion_sickness=0}] run item modify entity @s hotbar.7 items:potions/lore/mystic/done_mystic_healing_potion
execute as @s[nbt={Inventory:[{Slot:8b,tag:{mystic_healing_potion:1b}}]},scores={potion_sickness=1..}] run item modify entity @s hotbar.8 items:potions/lore/mystic/mystic_healing_potion
execute as @s[nbt={Inventory:[{Slot:8b,tag:{mystic_healing_potion:1b}}]},scores={potion_sickness=0}] run item modify entity @s hotbar.8 items:potions/lore/mystic/done_mystic_healing_potion

# any pure in the hotbar
execute as @s[nbt={Inventory:[{Slot:0b,tag:{pure_healing_potion:1b}}]},scores={potion_sickness=1..}] run item modify entity @s hotbar.0 items:potions/lore/pure/pure_healing_potion
execute as @s[nbt={Inventory:[{Slot:0b,tag:{pure_healing_potion:1b}}]},scores={potion_sickness=0}] run item modify entity @s hotbar.0 items:potions/lore/pure/done_pure_healing_potion
execute as @s[nbt={Inventory:[{Slot:1b,tag:{pure_healing_potion:1b}}]},scores={potion_sickness=1..}] run item modify entity @s hotbar.1 items:potions/lore/pure/pure_healing_potion
execute as @s[nbt={Inventory:[{Slot:1b,tag:{pure_healing_potion:1b}}]},scores={potion_sickness=0}] run item modify entity @s hotbar.1 items:potions/lore/pure/done_pure_healing_potion
execute as @s[nbt={Inventory:[{Slot:2b,tag:{pure_healing_potion:1b}}]},scores={potion_sickness=1..}] run item modify entity @s hotbar.2 items:potions/lore/pure/pure_healing_potion
execute as @s[nbt={Inventory:[{Slot:2b,tag:{pure_healing_potion:1b}}]},scores={potion_sickness=0}] run item modify entity @s hotbar.2 items:potions/lore/pure/done_pure_healing_potion
execute as @s[nbt={Inventory:[{Slot:3b,tag:{pure_healing_potion:1b}}]},scores={potion_sickness=1..}] run item modify entity @s hotbar.3 items:potions/lore/pure/pure_healing_potion
execute as @s[nbt={Inventory:[{Slot:3b,tag:{pure_healing_potion:1b}}]},scores={potion_sickness=0}] run item modify entity @s hotbar.3 items:potions/lore/pure/done_pure_healing_potion
execute as @s[nbt={Inventory:[{Slot:4b,tag:{pure_healing_potion:1b}}]},scores={potion_sickness=1..}] run item modify entity @s hotbar.4 items:potions/lore/pure/pure_healing_potion
execute as @s[nbt={Inventory:[{Slot:4b,tag:{pure_healing_potion:1b}}]},scores={potion_sickness=0}] run item modify entity @s hotbar.4 items:potions/lore/pure/done_pure_healing_potion
execute as @s[nbt={Inventory:[{Slot:5b,tag:{pure_healing_potion:1b}}]},scores={potion_sickness=1..}] run item modify entity @s hotbar.5 items:potions/lore/pure/pure_healing_potion
execute as @s[nbt={Inventory:[{Slot:5b,tag:{pure_healing_potion:1b}}]},scores={potion_sickness=0}] run item modify entity @s hotbar.5 items:potions/lore/pure/done_pure_healing_potion
execute as @s[nbt={Inventory:[{Slot:6b,tag:{pure_healing_potion:1b}}]},scores={potion_sickness=1..}] run item modify entity @s hotbar.6 items:potions/lore/pure/pure_healing_potion
execute as @s[nbt={Inventory:[{Slot:6b,tag:{pure_healing_potion:1b}}]},scores={potion_sickness=0}] run item modify entity @s hotbar.6 items:potions/lore/pure/done_pure_healing_potion
execute as @s[nbt={Inventory:[{Slot:7b,tag:{pure_healing_potion:1b}}]},scores={potion_sickness=1..}] run item modify entity @s hotbar.7 items:potions/lore/pure/pure_healing_potion
execute as @s[nbt={Inventory:[{Slot:7b,tag:{pure_healing_potion:1b}}]},scores={potion_sickness=0}] run item modify entity @s hotbar.7 items:potions/lore/pure/done_pure_healing_potion
execute as @s[nbt={Inventory:[{Slot:8b,tag:{pure_healing_potion:1b}}]},scores={potion_sickness=1..}] run item modify entity @s hotbar.8 items:potions/lore/pure/pure_healing_potion
execute as @s[nbt={Inventory:[{Slot:8b,tag:{pure_healing_potion:1b}}]},scores={potion_sickness=0}] run item modify entity @s hotbar.8 items:potions/lore/pure/done_pure_healing_potion

execute as @s[scores={potion_sickness=0}] run tag @s remove potcooldown