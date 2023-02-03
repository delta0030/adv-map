# check for enough mana
scoreboard objectives add mana_req dummy
execute store result score @s mana_req run data get entity @s SelectedItem.tag.data.stats.mana_cost
scoreboard players operation @s mana_req -= @s player_mana

execute if entity @s[nbt={SelectedItem:{tag:{data:{group:1b}}}}] if score @s mana_req matches ..0 run function items:weapons/summoner/search/groups/group1

execute if score @s carrot_rc matches 1.. if score @s mana_req matches ..0 if score @s weapon_cooldown matches 0 store result score @s weapon_cooldown run data get entity @s SelectedItem.tag.data.stats.cooldown 1
execute if score @s carrot_rc matches 1.. if score @s mana_req matches ..0 run function player:stats/mana/remove

scoreboard objectives remove mana_req