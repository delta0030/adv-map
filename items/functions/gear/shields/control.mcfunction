# look for right-click weapons in mainhand
scoreboard objectives add rc_check dummy
scoreboard players set @s rc_check 0
execute if entity @s[nbt={SelectedItem:{tag:{data:{class:2b}}}}] run scoreboard players set @s rc_check 1
execute if entity @s[nbt={SelectedItem:{tag:{data:{class:3b}}}}] run scoreboard players set @s rc_check 1
execute if entity @s[nbt={SelectedItem:{tag:{data:{class:4b}}}}] run scoreboard players set @s rc_check 1

execute if score @s[tag=shield_disabled] shield_cooldown matches 0 if score @s rc_check matches 0 run function items:gear/shields/restore
execute if score @s[tag=!shield_disabled] rc_check matches 1 run function items:gear/shields/disable

execute if entity @s[advancements={items:shield_use=true}] run function items:gear/shields/use
# i don't know why in hell this block time parameter needs to be a 2 instead of a 1. somehow an extra 1 is being added if block time hits the max value.
# i don't know how a 1 is added. i can't see why the 1 is added. but it is definitely, reliably, added. so guess what--just leave the stupid 2. it works.
execute if score @s[tag=!shield_disabled,advancements={items:shield_use=false}] block_time matches 2.. run function items:gear/shields/disable

advancement revoke @s only items:shield_use