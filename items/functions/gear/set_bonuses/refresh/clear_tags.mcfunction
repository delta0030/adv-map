tag @a remove slime_bonus
tag @a remove knight_bonus
tag @a remove sorass_bonus

execute unless entity @a[tag=knight_bonus] run function items:gear/set_bonuses/knight/clear
execute unless entity @a[tag=sorass_bonus] run function items:gear/set_bonuses/sorass/clear