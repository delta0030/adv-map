effect give @a[tag=slime_bonus] speed 1 0 true
effect give @a[tag=slime_bonus] jump_boost 1 1 true

execute if entity @e[type=player,tag=slime_bonus] run schedule function items:gear/set_bonuses/slimy/apply 1t