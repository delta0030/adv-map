execute as @a[nbt={SelectedItem:{tag:{data:{type:1b}}}}] if score @s weapon_cooldown matches 1.. run scoreboard players set @s carrot_rc 0
execute as @a[nbt={SelectedItem:{tag:{data:{type:1b}}}}] run function items:weapons/check_tag
execute as @a[nbt={SelectedItem:{tag:{data:{type:0b}}}}] run function items:abilities/check_tag
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield"}]}] run function items:gear/shields/control