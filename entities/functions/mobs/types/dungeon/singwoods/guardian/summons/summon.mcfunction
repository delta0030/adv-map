execute at @e[type=vindicator,tag=swmb1] unless entity @e[type=skeleton,tag=swmb1_sum1] if score %space1 swmb1_space matches 1 positioned ~1 ~ ~ run function entities:mobs/types/dungeon/singwoods/guardian/summons/spawn/melee_skeleton1
execute at @e[type=vindicator,tag=swmb1] unless entity @e[type=skeleton,tag=swmb1_sum2] if score %space4 swmb1_space matches 1 positioned ~-0.5 ~ ~-1 run function entities:mobs/types/dungeon/singwoods/guardian/summons/spawn/melee_skeleton2
execute at @e[type=vindicator,tag=swmb1] unless entity @e[type=skeleton,tag=swmb1_sum3] if score %space3 swmb1_space matches 1 positioned ~-0.5 ~ ~1 run function entities:mobs/types/dungeon/singwoods/guardian/summons/spawn/melee_skeleton3
execute at @e[type=vindicator,tag=swmb1] unless entity @e[type=zombie,tag=swmb1_sum4] if score %space2 swmb1_space matches 1 positioned ~0.5 ~ ~1 run function entities:mobs/types/dungeon/singwoods/guardian/summons/spawn/armored_zombie1
execute at @e[type=vindicator,tag=swmb1] unless entity @e[type=zombie,tag=swmb1_sum5] if score %space5 swmb1_space matches 1 positioned ~0.5 ~ ~-1 run function entities:mobs/types/dungeon/singwoods/guardian/summons/spawn/armored_zombie2

execute at @e[type=vindicator,tag=swmb1] unless entity @e[type=skeleton,tag=swmb1_sum1] if score %space1 swmb1_space matches 0 run function entities:mobs/types/dungeon/singwoods/guardian/summons/spawn/melee_skeleton1
execute at @e[type=vindicator,tag=swmb1] unless entity @e[type=skeleton,tag=swmb1_sum2] if score %space4 swmb1_space matches 0 run function entities:mobs/types/dungeon/singwoods/guardian/summons/spawn/melee_skeleton2
execute at @e[type=vindicator,tag=swmb1] unless entity @e[type=skeleton,tag=swmb1_sum3] if score %space3 swmb1_space matches 0 run function entities:mobs/types/dungeon/singwoods/guardian/summons/spawn/melee_skeleton3
execute at @e[type=vindicator,tag=swmb1] unless entity @e[type=zombie,tag=swmb1_sum4] if score %space2 swmb1_space matches 0 run function entities:mobs/types/dungeon/singwoods/guardian/summons/spawn/armored_zombie1
execute at @e[type=vindicator,tag=swmb1] unless entity @e[type=zombie,tag=swmb1_sum5] if score %space5 swmb1_space matches 0 run function entities:mobs/types/dungeon/singwoods/guardian/summons/spawn/armored_zombie2

scoreboard objectives remove swmb1_space