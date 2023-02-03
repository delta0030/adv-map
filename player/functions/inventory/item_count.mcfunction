execute as @a[nbt={SelectedItem:{id:"minecraft:rabbit_foot",tag:{wooden_arrow:1b}}}] run item modify entity @s weapon.mainhand items:arrow_count
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{lesser_healing_potion:1b}}}] run item modify entity @s weapon.mainhand items:potions/lesser_healing_potion
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{healing_potion:1b}}}] run item modify entity @s weapon.mainhand items:potions/healing_potion
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{greater_healing_potion:1b}}}] run item modify entity @s weapon.mainhand items:potions/greater_healing_potion
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{mystic_healing_potion:1b}}}] run item modify entity @s weapon.mainhand items:potions/mystic_healing_potion
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{pure_healing_potion:1b}}}] run item modify entity @s weapon.mainhand items:potions/pure_healing_potion
