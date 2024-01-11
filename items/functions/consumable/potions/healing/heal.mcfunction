scoreboard objectives add heal dummy
scoreboard objectives add potion_cd_max dummy
scoreboard players set %heal heal 0
scoreboard players set 20 CONSTANTS 20

scoreboard players set @s rt 1200

execute as @s at @s run playsound minecraft:entity.generic.drink player @s ~ ~ ~ 0.5 0.9

execute if entity @s[nbt={SelectedItem:{tag:{lesser_healing_potion:1b}}}] run scoreboard players set %heal heal 15
execute if entity @s[nbt={SelectedItem:{tag:{healing_potion:1b}}}] run scoreboard players set %heal heal 30
execute if entity @s[nbt={SelectedItem:{tag:{greater_healing_potion:1b}}}] run scoreboard players set %heal heal 75
execute if entity @s[nbt={SelectedItem:{tag:{mystic_healing_potion:1b}}}] run scoreboard players set %heal heal 125
execute if entity @s[nbt={SelectedItem:{tag:{pure_healing_potion:1b}}}] run scoreboard players set %heal heal 250

execute if entity @s[nbt={SelectedItem:{tag:{lesser_healing_potion:1b}}}] run scoreboard players remove @s lesser_healing1 1
execute if entity @s[nbt={SelectedItem:{tag:{healing_potion:1b}}}] run scoreboard players remove @s healing1 1
execute if entity @s[nbt={SelectedItem:{tag:{greater_healing_potion:1b}}}] run scoreboard players remove @s greater_healing1 1
execute if entity @s[nbt={SelectedItem:{tag:{mystic_healing_potion:1b}}}] run scoreboard players remove @s mystic_healing1 1
execute if entity @s[nbt={SelectedItem:{tag:{pure_healing_potion:1b}}}] run scoreboard players remove @s pure_healing1 1

scoreboard players operation @s player_hp += %heal heal
execute if score @s player_hp > @s player_max_hp run scoreboard players operation @s player_hp = @s player_max_hp

scoreboard objectives add pot_cooldown_disp dummy
scoreboard players set @s pot_cooldown_disp 0


execute store result score @s potion_sickness run data get entity @s SelectedItem.tag.data.stats.pot_sick
execute if score @s potion_sickness matches 1.. run tag @s add potcooldown
execute as @s[tag=potcooldown] run function items:consumable/potions/healing/cooldown_display

scoreboard players set @s rt 0
scoreboard objectives remove temprt
scoreboard players set @s carrot_rc 0
scoreboard objectives remove heal
