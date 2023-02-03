execute store result score @s mana_percent run data get entity @s Inventory[{Slot:103b}].tag.stats.mana_percent
execute store result score @s mana_reduction run data get entity @s Inventory[{Slot:103b}].tag.stats.mana_reduction

execute if entity @s[tag=sorass_bonus] run schedule function items:gear/set_bonuses/sorass/apply 1t