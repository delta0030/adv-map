execute at @s if entity @s[nbt={SelectedItem:{tag:{confusion:1b}}}] if score @s player_mana matches 20.. if score @s carrot_rc matches 1.. run function items:weapons/magic/confusion/init
