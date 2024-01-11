#scoreboard objectives add mana_req dummy
#execute store result score @s mana_req run data get entity @s SelectedItem.tag.data.stats.mana_cost
#scoreboard players operation @s mana_req -= @s player_mana

execute if entity @s[nbt={SelectedItem:{tag:{data:{group:1b}}}}] if score @s mana_req matches ..0 run function items:weapons/magic/search/groups/group1
execute if entity @s[nbt={SelectedItem:{tag:{data:{group:3b}}}}] if score @s mana_req matches ..0 run function items:weapons/magic/search/groups/group3
execute if entity @s[nbt={SelectedItem:{tag:{data:{group:5b}}}}] if score @s mana_req matches ..0 run function items:weapons/magic/search/groups/group5

execute if score @s carrot_rc matches 1.. if score @s mana_req matches ..0 if score @s weapon_cooldown matches 0 store result score @s weapon_cooldown run data get entity @s SelectedItem.tag.data.stats.cooldown 1
execute if score @s carrot_rc matches 1.. if score @s mana_req matches ..0 run function player:stats/mana/remove