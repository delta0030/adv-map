# slime staff
execute if entity @s[nbt={SelectedItem:{tag:{slime_staff:1b}}}] if score @s carrot_rc matches 1.. run function items:weapons/summoner/search/toggle/group1/slime_staff