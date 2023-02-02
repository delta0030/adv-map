execute if score out math3 matches 1 run function entities:mobs/types/dungeon/singwoods/guardian/fire_fountain/init
execute if score out math3 matches 4 run function entities:mobs/types/dungeon/singwoods/guardian/frost/indication
execute if score out math3 matches 2..3 run function entities:mobs/types/dungeon/singwoods/guardian/summons/init
execute if score out math3 matches 5 run function entities:mobs/types/dungeon/singwoods/guardian/stat_boost/init



# score of 1 = fire fountain
# score of 4 = frost atk
# score of 2, 3 are summon {necromancy[melee skeleton and armored zombie]}
# score of 5 will give the guardian a stat boost and will display indication particles/visible effects
# scheduled attacks will happen once every 12 seconds, 9 when boosted